[PVS Library](http://shemesh.larc.nasa.gov/fm/ftp/larc/PVS-library)
=

The NASA PVS Library is a
[collection](http://shemesh.larc.nasa.gov/fm/ftp/larc/PVS-library/library.html)
 of formal [PVS](http://pvs.csl.sri.com) developments
maintained by the [NASA
Langley Formal Methods Team](http://shemesh.larc.nasa.gov/fm). The NASA PVS library is part of the
  [research on theorem proving](http://shemesh.larc.nasa.gov/fm/fm-pvs.html) sponsored by [NASA
  Langley](http://www.nasa.gov/centers/langley/home).

The current version of the library is NASA PVS Library 6.0.10 (xx/xx/xx)
and requires [PVS 6.0](http://pvs.csl.sri.com/download.shtml). The
following instructions assume that PVS 6.0 is installed in the directory
`<pvsdir>`, i.e., in the instructions below replace `<pvsdir>` by the
absolute path where PVS is installed.

Getting the Development Version
-
For PVS advanced users, the development version of the NASA PVS Library is available from
[GitHub](https://github.com/nasa/pvslib). To clone the development
version, type the following command from the directory `<pvsdir>`
(the dollar sign represents the prompt of the operating system).

~~~
$ git clone http://github.com/nasa/pvslib nasalib
~~~

The command above will put a copy of the library in the directory
`<pvsdir>/nasalib`.

This version of the NASA PVS Library includes
[Hypatheon](http://shemesh.larc.nasa.gov/people/bld/hypatheon.html).
Hypatheon is a database utility that provides a capability for indexing PVS theories and making
them searchable via a GUI client.

Recent Changes
-
**The library `trig_fnd` is now deprecated**. It's still provided for
backward compatibility, but it should be replaced by `trig`.  The new
library `trig`, which used to be axiomatic, is now
foundational. However, in contrast to `trig_fnd`, trigonometric
definitions are based on infinite series, rather than integrals. This
change considerably reduces the type-checking of theories involving
trigonometric functions. The change from `trig_fnd` to `trig` should
not have a major impact in your formal developments since names of
definitions and lemmas are the same. However, theory importing may be
slightly different.

The PVS developments `TCASII`, `WellClear`,  and `DAIDALUS` are now
[available](https://github.com/nasa/WellClear/tree/master/PVS) as part
of the
[GitHub WellClear distribution](https://github.com/nasa/WellClear). The PVS development `PRECiSA`  is now
[available](https://github.com/nasa/PRECiSA/tree/master/PVS) as part
of the [GitHub PRECiSA distribution](https://github.com/nasa/PRECiSA). The PVS development `PolyCARP`  is now
[available](https://github.com/nasa/PolyCARP/tree/master/PVS) as part
of the [GitHub PolyCARP distribution](https://github.com/nasa/PolyCARP).

Getting the Most Stable Version
-
The most stable version of the NASA Library is available from the
NASA PVS Library
[web site](http://shemesh.larc.nasa.gov/fm/ftp/larc/PVS-library).  It
comes in 3 sizes: basic, classic, and full. All the distribution files
include the same PVS specification and proof files. They differ in the binary files, which are only included in
the classic and full distributions. The full distribution also includes
pre-installed versions of [Z3](http://z3.codeplex.com) and
[MetiTarski](http://www.cl.cam.ac.uk/~lp15/papers/Arith).


Installing the NASA PVS Library
-
The following instructions assume that the NASA PVS Library is located
in the directory `<pvsdir>/nasalib`. First, set
the environment variable `PVS_LIBRARY_PATH` such that it point to this
directory. Depending upon your shell, put one of the following lines
in your startup script.  In C shell (csh or tcsh), put this line in `~/.cshrc`:

~~~
setenv PVS_LIBRARY_PATH "<pvsdir>/nasalib"
~~~

In Borne shell (bash or sh), put this line in either `~/.bashrc` or `~/.profile`:

~~~
export PVS_LIBRARY_PATH="<pvsdir>/nasalib"
~~~

If you had a previous installation of the NASA PVS Library, either
remove the file `~/.pvs.lisp` or, if you have a special configuration
in that file, remove the following line  

~~~
(load "<pvsdir>/nasalib/pvs-patches.lisp")
~~~

Finally, go to the directory `<pvsdir>/nasalib` and run the shell
script (the dollar sign represents the prompt of the operating system).

~~~
$ ./install-scripts
$ ./fetch-hypatheon-db
~~~

The former command installs an updated version of `pvsio` and `proveit`.
The later command fetches an updated version
of the NASA PVS Library database to be used by Hypatheon.

For more information visit the [installation](http://shemesh.larc.nasa.gov/fm/ftp/larc/PVS-library/installation.html)
page.

A Note on Library Terminology
-
For various reasons, the term "PVS library" has undergone some
evolution. The original meaning is a named
collection of related PVS theories all residing within a single
directory. Recent usage refers to the "NASA PVS Library"
as a "collection of formal developments," where each
"formal development" is realized by a collection of
theories. This newer usage places "Library" at a higher level.
Hypatheon, though, was developed with the original library meaning
and has retained that terminology.
Please be mindful that two variants of the term exist.
In the following, we distinguish the newer usage using capitalization.
Elsewhere, context should suffice to discern which meaning applies.

Some Pesky Bugs in Recent Versions of Emacs
-
In recent versions of Emacs, a type-checking error in PVS may result in the Emacs error
```
error in process filter: let: ‘recenter’ing a window that does not display current-buffer.
```
After this error, it is necessary to reset PVS. To fix this error, the lines 403 and and 575 in `<pvsdir>/emacs/emacs-src/pvs-ilisp.el` should be commented out, i.e., they should read
```
		    ;; (recenter -1)
```
and
```
	;; (recenter '(nil))
```
respectively.

As of Emacs 26.1 (C-h N : view-emacs-news shows the recent changes),
the `default-major-mode` variable was removed. This variable occurs in
2 places in
`emacs/emacs-src/pvs-ilisp.el`. Because of this, PVS displays the
following error
```
error in process filter: Symbol's value as variable is void: default-major-mode
```

To fix this error,  add
```
 (defvar default-major-mode nil)
```
to your `~/.emacs` or `~/.pvsemacs` file.

Enjoy it.

[The NASA Langley Formal Methods Team](http://shemesh.larc.nasa.gov/fm)
