[NASA PVS Library](http://shemesh.larc.nasa.gov/fm/ftp/larc/PVS-library)
=

Installation Notes - NASA PVS Library 6.0.9 (11/10/14)
-

These instructions assume that PVS 6.0 is installed in the directory
`<pvsdir>`, i.e., in the instructions below replace `<pvsdir>` by the
absolute path where PVS is installed.

Put the NASA PVS Library in the subdirectory `<pvsdir>/nasalib` and set
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

Finally, go to the directory `<pvsdir>/nasalib` and run the shell script

~~~
<pvsdir>/nasalib$./install-scripts
~~~

For more information visit the [installation](http://shemesh.larc.nasa.gov/fm/ftp/larc/PVS-library/installation.html)
page.
For PVS advanced users, the development version of the NASA PVS Library is available from
[GitHub](https://github.com/nasa/pvslib).

Enjoy it.

[The NASA Langley Formal Methods Team](http://shemesh.larc.nasa.gov/fm)

