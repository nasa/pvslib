[NASA PVS Library](http://shemesh.larc.nasa.gov/fm/ftp/larc/PVS-library)
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

In Borne shell (bash or sh), put this line in either `~/.bashrc or ~/.profile`:

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
~~~

For more information visit the [installation](http://shemesh.larc.nasa.gov/fm/ftp/larc/PVS-library/installation.html)
page.


Enjoy it.

[The NASA Langley Formal Methods Team](http://shemesh.larc.nasa.gov/fm)

