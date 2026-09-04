;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; -*- Mode: Lisp -*- ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; pvs-mcp.lisp -- Model Context Protocol (MCP) server for PVS
;; Exposes PVS JSON-RPC methods as MCP tools.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defpackage #:pvs-mcp
  (:use #:cl-user #:common-lisp)
  (:export #:start-mcp-stdio-server
           #:start-mcp-websocket-server
           #:stop-mcp-websocket-server
           #:run-mcp-tests))

(in-package :pvs-mcp)

;; Custom boolean 'false' representation for cl-json
(defclass json-false () ())
(defvar *json-false* (make-instance 'json-false))

(defmethod json:encode-json ((object json-false) &optional stream)
  (write-string "false" stream)
  nil)

;; Global variables for MCP websocket server
(defvar *mcp-websocket-server* nil)
(defvar *mcp-ws* nil)

(defun parse-lambda-list (lambda-list)
  "Parses a lambda list and returns two values:
   1. A list of required parameter symbols.
   2. A list of optional parameter symbols."
  (let (required optionals in-optional?)
    (dolist (item lambda-list)
      (cond
        ((eq item '&optional)
         (setf in-optional? t))
        ((member item '(&key &rest &aux &allow-other-keys))
         ;; If other lambda keywords are used, stop/skip
         nil)
        (t
         (let ((var (if (consp item) (car item) item)))
           (if in-optional?
               (push var optionals)
               (push var required))))))
    (values (nreverse required) (nreverse optionals))))

(defun lambda-list-parameters (lambda-list)
  "Returns a list of symbols of all parameters in lambda-list in order,
   ignoring lambda-list keywords."
  (let (params)
    (dolist (item lambda-list)
      (unless (member item '(&optional &key &rest &aux &allow-other-keys))
        (push (if (consp item) (car item) item) params)))
    (nreverse params)))

(defun map-mcp-args (lambda-list arguments-alist)
  "Maps client-supplied key-value arguments (alist) to sequential positional arguments in Lisp,
   preserving unsupplied trailing optional arguments so Lisp's default values are used."
  (let* ((params (lambda-list-parameters lambda-list))
         (mapped (mapcar (lambda (param)
                           (let* ((param-name (string-downcase (symbol-name param)))
                                  (entry (assoc param-name arguments-alist :test #'string-equal)))
                             (if entry
                                 (list param t (cdr entry))
                                 (list param nil nil))))
                         params))
         ;; Find position of last parameter that was actually supplied by the client
         (last-supplied-pos (or (position t mapped :key #'second :from-end t) -1))
         ;; Keep only up to that position
         (final-args (subseq mapped 0 (1+ last-supplied-pos))))
    (mapcar #'third final-args)))

(defun make-mcp-tool-schema (entry)
  "Constructs the MCP tool description for an entry of *pvs-request-methods*.
   An entry is of the form: (methodname pname args docstring)"
  (let* ((method-sym (car entry))
         (method-name (string-downcase (symbol-name method-sym)))
         (pname (nth 0 (cdr entry)))
         (args (nth 1 (cdr entry)))
         (docstring (nth 2 (cdr entry))))
    (declare (ignore pname))
    (multiple-value-bind (required optionals) (parse-lambda-list args)
      (let (properties required-names)
        (flet ((sanitize-name (name)
                 (let* ((clean (string-downcase name))
                        (result (make-array (length clean) :element-type 'character :fill-pointer 0)))
                   (dotimes (i (length clean))
                     (let ((ch (aref clean i)))
                       (if (or (alpha-char-p ch) (digit-char-p ch) (member ch '(#\_ #\. #\-)))
                           (vector-push ch result)
                           (vector-push #\_ result))))
                   (setf clean (subseq result 0 (min (length result) 64)))
                   clean)))
          ;; Process required arguments
          (dolist (req required)
            (let ((name (sanitize-name (symbol-name req))))
              (push name required-names)
              (push (cons name (pvs-jsonrpc::obj
                                `(("type" . "string")
                                  ("description" . ,(format nil "Required argument: ~a" name)))))
                    properties)))
          ;; Process optional arguments
          (dolist (opt optionals)
            (let* ((name (sanitize-name (symbol-name opt)))
                   (is-boolean (or (search "?" name)
                                   (search "dont" name)
                                   (search "empty" name)
                                   (search "force" name)))
                   (type (if is-boolean "boolean" "string")))
              (push (cons name (pvs-jsonrpc::obj
                                `(("type" . ,type)
                                  ("description" . ,(format nil "Optional argument: ~a" name)))))
                    properties))))
        (pvs-jsonrpc::obj
         `(("name" . ,method-name)
           ("description" . ,docstring)
           ("inputSchema" . ,(pvs-jsonrpc::obj
                              `(("type" . "object")
                                ("properties" . ,(pvs-jsonrpc::obj (nreverse properties)))
                                ,@(when required-names
                                    `(("required" . ,(pvs-jsonrpc::arr (nreverse required-names))))))))))))))

(defun handle-mcp-initialize (id params)
  (declare (ignore params))
  `(("jsonrpc" . "2.0")
    ("id" . ,id)
    ("result" . ,(pvs-jsonrpc::obj
                  `(("protocolVersion" . "2024-11-05")
                    ("capabilities" . ,(pvs-jsonrpc::obj
                                        `(("tools" . ,(pvs-jsonrpc::obj nil))
                                          ("resources" . ,(pvs-jsonrpc::obj nil)))))
                    ("serverInfo" . ,(pvs-jsonrpc::obj
                                      `(("name" . "pvs-mcp-server")
                                        ("version" . "8.2")))))))))

(defun extract-error-diagnostics (error-condition)
  "Extracts structured diagnostic information from a PVS error.
   Returns a plist with :message, :error-string, :file, :place, and optional :line and :column."
  (let* ((message (pvs:message error-condition))
         (error-string (ignore-errors (pvs::error-string error-condition)))
         (file-name (when (pvs:file-name error-condition)
                      (namestring (pvs:file-name error-condition))))
         (place (pvs:place error-condition))
         (line nil)
         (column nil))
    ;; Extract line and column from place if available
    (when place
      (setf line (ignore-errors (slot-value place 'pvs::line)))
      (setf column (ignore-errors (slot-value place 'pvs::column))))
    (list :message message
          :error-string error-string
          :file file-name
          :place place
          :line line
          :column column)))

(defun format-pvs-error-response (error-diagnostics)
  "Formats error diagnostics into an MCP tool result with multiple content blocks."
  (destructuring-bind (&key message error-string file place line column) error-diagnostics
    (declare (ignore place))
    (let* ((content-blocks nil))
      ;; Add error-string as the main message if available (this contains the detailed error)
      (when error-string
        (push (pvs-jsonrpc::obj `(("type" . "text")
                                   ("text" . ,error-string)))
              content-blocks))
      ;; Add message block (may be a short summary or the full error depending on PVS)
      (when message
        (push (pvs-jsonrpc::obj `(("type" . "text")
                                   ("text" . ,message)))
              content-blocks))
      ;; Add location and file information
      (let ((location-text
              (with-output-to-string (s)
                (when file
                  (format s "File: ~a~%" file))
                (when (or line column)
                  (format s "Location: ~@[line ~a~]~@[, column ~a~]~%" line column)))))
        (when (> (length location-text) 0)
          (push (pvs-jsonrpc::obj `(("type" . "text")
                                     ("text" . ,location-text)))
                content-blocks)))
      `(("content" . ,(pvs-jsonrpc::arr (nreverse content-blocks)))
        ("isError" . t)))))

(defun run-mcp-tool (tool-name arguments)
  "Executes the PVS tool and returns the MCP-compliant result."
  (handler-case
      (multiple-value-bind (reqfun reqsig)
          (pvs-jsonrpc::get-json-request-function tool-name)
        (if reqfun
            (let* ((final-args (map-mcp-args reqsig arguments))
                   (result (apply reqfun final-args)))
              (let ((text-result (if (stringp result)
                                     result
                                     (json:encode-json-to-string result))))
                `(("content" . ,(pvs-jsonrpc::arr
                                 (list (pvs-jsonrpc::obj
                                        `(("type" . "text")
                                          ("text" . ,text-result))))))
                  ("isError" . ,*json-false*))))
            `(("content" . ,(pvs-jsonrpc::arr
                             (list (pvs-jsonrpc::obj
                                    `(("type" . "text")
                                      ("text" . ,(format nil "Tool ~a not found" tool-name)))))))
              ("isError" . t))))
    (pvs:pvs-error (c)
      (format-pvs-error-response (extract-error-diagnostics c)))
    (error (c)
      `(("content" . ,(pvs-jsonrpc::arr
                       (list (pvs-jsonrpc::obj
                              `(("type" . "text")
                                ("text" . ,(format nil "Lisp Error: ~a" c)))))))
        ("isError" . t)))))

(defun split-string-on-char (string char)
  "Splits a string by character, returning a list of substrings."
  (let ((parts nil)
        (current-part (make-string-output-stream)))
    (dotimes (i (length string))
      (let ((c (aref string i)))
        (if (char= c char)
            (progn
              (let ((part (get-output-stream-string current-part)))
                (when (> (length part) 0)
                  (push part parts)))
              (setf current-part (make-string-output-stream)))
            (write-char c current-part))))
    (let ((part (get-output-stream-string current-part)))
      (when (> (length part) 0)
        (push part parts)))
    (nreverse parts)))

(defun get-pvs-manual-resources ()
  "Returns a list of available PVS manual resources from docs/mcp-manuals in library paths."
  (let ((all-resources nil)
        (seen-files (make-hash-table :test #'equal)))
    (when (boundp 'pvs::*pvs-library-path*)
      (dolist (lib-path (symbol-value 'pvs::*pvs-library-path*))
        (let* ((docs-mcp-dir (merge-pathnames "docs/mcp-manuals/" lib-path))
               (manual-files (when (probe-file docs-mcp-dir)
                              (directory (merge-pathnames "*.md" docs-mcp-dir)))))
          (dolist (file manual-files)
            (let ((name (pathname-name file)))
              (unless (gethash name seen-files)
                (setf (gethash name seen-files) t)
                (push (pvs-jsonrpc::obj
                       `(("uri" . ,(format nil "pvs://manual/~a" (string-downcase name)))
                         ("name" . ,(format nil "~a" (substitute #\Space #\- (string-capitalize name))))
                         ("description" . ,(format nil "PVS manual: ~a" name))
                         ("mimeType" . "text/markdown")))
                      all-resources)))))))
    (nreverse all-resources)))

(defun read-pvs-manual-resource (uri)
  "Reads a PVS manual resource by URI, searching in docs/mcp-manuals across library paths."
  (let* ((parts (split-string-on-char uri #\/))
         (manual-name (when (>= (length parts) 3) (nth 2 parts))))
    (when (and manual-name (boundp 'pvs::*pvs-library-path*))
      (dolist (lib-path (symbol-value 'pvs::*pvs-library-path*))
        (let* ((docs-mcp-dir (merge-pathnames "docs/mcp-manuals/" lib-path))
               (file-path (when (probe-file docs-mcp-dir)
                           (merge-pathnames (format nil "~a.md" manual-name) docs-mcp-dir))))
          (when (and file-path (probe-file file-path))
            (with-open-file (stream file-path :direction :input)
              (let ((content (make-string (file-length stream))))
                (read-sequence content stream)
                (return-from read-pvs-manual-resource content)))))))))

(defun handle-resources-list (id)
  "Handles resources/list MCP method."
  `(("jsonrpc" . "2.0")
    ("id" . ,id)
    ("result" . ,(pvs-jsonrpc::obj
                  `(("resources" . ,(pvs-jsonrpc::arr (get-pvs-manual-resources))))))))

(defun handle-resources-read (id params)
  "Handles resources/read MCP method."
  (let* ((uri (cdr (assoc "uri" params :test #'string=)))
         (content (read-pvs-manual-resource uri)))
    (if content
        `(("jsonrpc" . "2.0")
          ("id" . ,id)
          ("result" . ,(pvs-jsonrpc::obj
                        `(("contents" . ,(pvs-jsonrpc::arr
                                          (list (pvs-jsonrpc::obj
                                                 `(("uri" . ,uri)
                                                   ("mimeType" . "text/markdown")
                                                   ("text" . ,content))))))))))
        `(("jsonrpc" . "2.0")
          ("id" . ,id)
          ("error" . ,(pvs-jsonrpc::obj
                       `(("code" . -32602)
                         ("message" . ,(format nil "Resource not found: ~a" uri)))))))))

(defun process-mcp-message (msg)
  "Processes an incoming MCP JSON-RPC message."
  (let* ((method (cdr (assoc "method" msg :test #'string=)))
         (id (cdr (assoc "id" msg :test #'string=))))
    (cond
      ((string= method "initialize")
       (let ((params (cdr (assoc "params" msg :test #'string=))))
         (handle-mcp-initialize id params)))
      ((string= method "notifications/initialized")
       ;; No response needed for initialized notification
       nil)
      ((string= method "tools/list")
       `(("jsonrpc" . "2.0")
         ("id" . ,id)
         ("result" . ,(pvs-jsonrpc::obj
                       `(("tools" . ,(pvs-jsonrpc::arr (mapcar #'make-mcp-tool-schema pvs-jsonrpc::*pvs-request-methods*))))))))
      ((string= method "tools/call")
       (let* ((params (cdr (assoc "params" msg :test #'string=)))
              (tool-name (cdr (assoc "name" params :test #'string=)))
              (arguments (cdr (assoc "arguments" params :test #'string=)))
              (result (run-mcp-tool tool-name arguments)))
         `(("jsonrpc" . "2.0")
           ("id" . ,id)
           ("result" . ,(pvs-jsonrpc::obj result)))))
      ((string= method "resources/list")
       (handle-resources-list id))
      ((string= method "resources/read")
       (let ((params (cdr (assoc "params" msg :test #'string=))))
         (handle-resources-read id params)))
      (t
       (if id
           `(("jsonrpc" . "2.0")
             ("id" . ,id)
             ("error" . ,(pvs-jsonrpc::obj
                          `(("code" . -32601)
                            ("message" . ,(format nil "Method ~a not found" method))))))
           nil)))))

(defun start-mcp-stdio-server ()
  "Starts the MCP server using Standard Input/Output (stdio) transport.
   To avoid corrupting the JSON-RPC channel on stdout, all standard output streams
   are redirected to *error-output*, and JSON-RPC responses are explicitly written
   to a private handle of the original stdout."
  (let* ((real-stdout *standard-output*)
         (real-stdin *standard-input*)
         ;; Redirect all other standard output to standard error
         (*standard-output* *error-output*)
         (cl-json:*identifier-name-to-key* #'string-downcase))
    (loop
      (let ((line (read-line real-stdin nil :eof)))
        (when (eq line :eof)
          (return))
        (handler-case
            (let* ((msg (json:decode-json-from-string line))
                   (response (process-mcp-message msg)))
              (when response
                (write-string (json:encode-json-to-string response) real-stdout)
                (terpri real-stdout)
                (force-output real-stdout)))
          (error (c)
            ;; Log error to error-output (standard error) so we don't pollute real-stdout
            (format *error-output* "~&[MCP Error] ~a~%" c)
            (force-output *error-output*)))))))

(defun start-mcp-websocket-server (&key (port 23457))
  "Starts a Clack/Hunchentoot WebSocket server for the MCP protocol."
  (setq *mcp-websocket-server*
        (clack:clackup #'mcp-websocket-handler :server :hunchentoot :port port)))

(defun stop-mcp-websocket-server ()
  "Stops the WebSocket MCP server."
  (when *mcp-websocket-server*
    (clack:stop *mcp-websocket-server*)
    (setq *mcp-websocket-server* nil)))

(defun mcp-websocket-handler (env)
  "WebSocket server connection handler."
  (let ((ws (wsd:make-server env)))
    (wsd:on :open ws (lambda () (format t "~&[MCP WS] Connection opened~%")))
    (wsd:on :message ws (lambda (msg) (mcp-ws-message ws msg)))
    (wsd:on :close ws (lambda (&key code reason) (format t "~&[MCP WS] Connection closed (code: ~a, reason: ~a)~%" code reason)))
    (wsd:on :error ws (lambda (errmsg) (format t "~&[MCP WS] Error: ~a~%" errmsg)))
    (setq *mcp-ws* ws)
    (lambda (responder)
      (declare (ignore responder))
      (wsd:start-connection ws))))

(defun mcp-ws-message (ws message)
  "Processes incoming WebSocket message for MCP."
  (let ((msg-str (pvs:bytestring-to-string message))
        (cl-json:*identifier-name-to-key* #'string-downcase))
    (handler-case
        (let* ((msg (json:decode-json-from-string msg-str))
               (response (process-mcp-message msg)))
          (when response
            (wsd:send ws (json:encode-json-to-string response))))
      (error (c)
        (format t "~&[MCP WS Error] ~a~%" c)))))
