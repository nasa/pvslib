;;****
;; Copyright (C) 2016, Michigan Technological University and Amer Tahat.
;; GNU LGPL information:
;; ---------------------
;; This code is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License
;; as published by the Free Software Foundation.This code is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; 
;; without even the impliedwarranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.
;;****


;;****
;; auxiliary step 1:  
;;****

(defstep simple-integral-inclusion ()   
          (then (lemma "Simple_Riemann_Soundness")(skosimp*)
                (ground)
                (invoke (inst -1 "%1" "%2" "%3" "%4")(? 1  "integral(lb(%1), ub(%1), %2) ## RiemannSum_R2I(lb(%1), ub(%1), %3, 2 ^ m!1, %4, %5, R)")))
            "A" " need to inst Eval")
;;****
;;auxiliary step 2: 
;;****

(defstep inst-Eval() (then (invoke (inst -1 "%5")
    (? 1
     "integral(lb(%1), ub(%1), %2) ## RiemannSum_R2I(lb(%1), ub(%1), %3, 2 ^ m!1, %4, %5, R)"))(postpone)) " combine this with simple-integral-inclusion""need to prove TCCs 1 and 2")

;;****
;;Combine step 1 and 2: 
;;
;;****

(defstep integral-inclusion-soundness ()
      (then (simple-integral-inclusion)
            (inst-Eval)) "This proves soundness" "need to prove two TCCs")

;;****
;; auxiliary step to help discharge the first TCCs. 
;;****

(defstep inclus-fun (lemma1) 
  (then
   (expand "F_Bound?")
   (skosimp*)
   (lemma lemma1)
   (inst?) 
   (assert)
   (typepred "x!1")
   (ground)
   (expand "##")
   (propax))
  "" "there exist an inclusion function")


(defstep inclus-ref (lemma) 
  (then
   (skosimp*)
   (lemma lemma)
   (inst? -1 :where 1)
   (if (= (length (bindings (extra-get-formula-from-fnum -1))) 3)
       (invoke (inst? -1 ("p" "%1") :where 1) (? 1 "F(%1)(%2)"))
     (skip))  ;; This if was added to accommodate riemann-numerical
   (assert)
   (inst? -1 :where 1)
   (inst? 1)
   (skosimp*)
   (inst -1 "x!1")
   (typepred "x!1")
   (expand "##")
   (propax))
  "" " ")

;;****
;; the auxiliary steps for cont-numerical-Riemann.
;;****

;;****
;;Major auxiliary step-very reusable: "continuous -> Integrable"
;;The parameter is a lemma for continuity which needs to be proved by the user previously.  
;;****



(defstep cont-Integ (lemma1)  
  (then (lemma "fundamental_indef[real]") 
        (skosimp*)
        (invoke (inst -1  "lb(%1)" "ub(%1)" "%2")(? 2 "integrable?(lb(%1), ub(%1), %2 )"))
        (assert)
        (let ((lemma-step (list 'lemma lemma1 )))         
          (then  lemma-step (propax)        
                 (assert)(expand 'connected? '1)(propax))))"" "")

(defstep conts-Integ (lemma1)  
  (then (lemma "fundamental_indef[real]") 
        (skosimp*)
        (invoke (inst -1  "%1" "%2" "%3") (! 1 1) (! 1 2) (! 1 3))  ; Changed for riemann-numerical
        (assert)
        (let ((lemma-step (list 'lemma lemma1 )))         
          (then  lemma-step (propax)        
                 (assert)(expand 'connected? '1)(propax))))"" "")




;;****
;;auxiliary step: discharge a TCSS: for using [real]
;;****
(defstep conts-integ-[real] (lemma1)  
(then
 (then (lemma "fundamental_indef[real]")
  (invoke (inst -1 "%1" "%2" "%3")
   (? 1 "integrable?[real](%1,%2,%3 )")))
 (let ((lemma-step (list 'lemma lemma1)))
   (then lemma-step (propax) (assert) (expand 'connected? '1)
    (propax)))
 (invoke (inst -1 "%1" "%2" "%3") (? 1 "integrable?[real](%1,%2,%3 )"))
 (expand "Integrable?" -1) (propax)) "" "")



;;****
;;Integ-integ-exp:auxiliary step. 
;;****

(defstep Integ-integ-exp () 
             (then (ground)
       (expand "Integrable?")
       (invoke (typepred "%1") (? (! 1 1) "lb(%1)"))  ; Changed for riemann-numerical
       (expand "StrictInterval?")
       (ground))"" "")



;;****
;;Integ-integ:auxiliary step to show Integ is integ.
;;****

(defstep Integ-integ () 
             (then  (invoke (case "Integrable?(lb(%1),ub(%1),%2)")
       (? 1 "integrable?(lb(%1), ub(%1), %2)"))     
        )"" "")


;;**********

;;****
;; Integ-intg:  Shows that if f is Integrable then it's integrable for cont-fun. 
;;****

 (defstep Integ-intg (lemma2) 
    (then (spread  
     (Integ-integ)
     ((Integ-integ-exp)(conts-Integ lemma2)))) "" "")


;;****
;; splt-tcs:auxiliary step.
;;****

(defstep splt-tcs ()(then (hide 2) (skosimp*) (expand "integ_inclus_fun?" 1) (split)) "" "")

;;*****
;; soundness1:Major auxiliary step to discharge the soundness tccs for continuous function.
;;*****
(defstep soundness1 (lemma1 lemma2)
  (spread
   (splt-tcs)
   ((then (conts-Integ lemma2) (inst? -1)(Integ-integ-exp))  ;; inst? added for riemann-numerical
    (inclus-ref$ lemma1)))
  ""
  "" )

;;*****
;; cont-soundness: to show soundness lemmas of the form integ(a,b,f) ## Riemann_R2I(,,,F,) where 
;; f is cont-function and F is its interval reflection. 
;;*****

( defstep cont-soundness (lemma1 lemma2) 
            (spread (integral-inclusion-soundness) ((inclus-fun lemma1)(soundness1 lemma1 lemma2)))"" "")



;;****
;;auxiliary mult-cont :helps to define prod-cont to show product of cont is cont(see below).
;;****
(defstep cont-mult ()
  (spread
   (then (lemma "prod_cont_fun")
         (invoke (inst -1 "%1" "%2") (? 1 "continuous?(%1*%2) "))
         (invoke (case "continuous?(%1) and continuous?(%2)")
                 (? 1 "continuous?(%1*%2)"))) 
   ((assert) (postpone))) """")

;;****
;;auxiliary lemma-conts-step :useful to show product of cont is cont(see below).
;;****

(defstep lemma-conts-step (lemma1) 
  ( let ( ( fun1-cont (list 'lemma lemma1))) 
          (then fun1-cont )) "" "" )

;;****
;;  Major auxiliary - very reusable step: product of conts functions is continuous. 
;;****

(defstep cont-prod (lemma1 lemma2 ) 
  (then (cont-mult)
        (assert)
        (spread (split)
                ((lemma-conts-step lemma1)
                 (lemma-conts-step lemma2)))) " " "" )


;;****
;; auxiliary eval-step
;;****
(defstep  eval-step () 
  (spread (invoke (case "%1  << %2") (! -1 2) (! 1 2))
          (
           (then 
            (lemma "Incl_Member")
            (invoke (inst -1 "%1" "%2") (! -2 1) (! -2 2))
            (assert)
            (invoke (inst -1 "%1") (! -3 1))
            (ground))
           (then (hide-all-but 1) (eval-formula)) ) ) "" "" )


;;*****
;; The Major strategy: (conts-numerical-Riemann) is a one line command proof-str 
;; It's developed to autoamte the proof of the exprs of the form integ(a,b,f) ## [A,B] --(*1) where 
;; f is cont-function which is inclusive. 
;; This proof strategy reduces significantly the proofs of lemmas of form (*1)
;; from about 1000 proof command to 1 line proof command. Yet at this stage the user still need to prove lemma 1,2 
;; for continuity and inclusion. Some auxiliary strategies have been developed -like prod-cont- 
;; to help the user. 
;; See examples_numerical_Riemann.pvs file. 
;;  
;;*****

(defstep conts-numerical-Riemann  (expr lemma1 lemma2 &rest exprs2)
  (try 
   (then 
    (then 
     (let ((lemma-step (list 'lemma "Simple_Riemann_Soundness" ))
           (inst-step (cons 'inst (cons -1 exprs2)))
           (inst-Eval (cons 'inst (cons -1 expr))))
       (then lemma-step 
             (spread inst-step 
                     ((then (assert) 
                            (spread inst-Eval
                                    ( (spread (eval-step)
                                              ((spread (conts-integ-[real] lemma2)
                                                       ((then (Integ-integ-exp)
                                                              (expand "connected?"))))))  ;; Added for riemann-numerical
                                     (inclus-fun lemma1))))
                      (soundness1 lemma1 lemma2)
                      (then (expand "StrictInterval?")
                            (ground)))))))
    (fail))
   (skip)
   (skip-msg " Use rational representations for the endpoints of the parameter [|a,b|]; if you have this already you may want to use more subdivisions; recommended: 14> m >=12,n>=2" t)) "nmerical integral inclusion" "")
