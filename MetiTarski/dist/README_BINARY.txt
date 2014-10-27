Welcome to MetiTarski! Suggestions and bug reports are welcomed.

Please consult the README.txt file for details of running MetiTarski, this README_BINARY.txt file contains extra details pertinent to setting up the precompiled binary version of the program.

INSTALLING THE PRECOMPILED BINARY OF METITARSKI

The tar ball should contain the following files

README_SETUP.txt - this file
metit - the binary version of MetiTarski
libpolyml.so.3 - the Poly/ML library needed to run metit
libgmp.so.3 - GMP library needed to run metit
z3 - a binary of z3 for non-commercial use (see README.txt)
TreeLimitedRun - a binary file used my the runmetit.pl script (see README.txt)

and two directories

scripts - various perl scripts described in README.txt
tptp - containing the Axiom and Problem files in two sub-directories (see README.txt for more detail)

For metit to run environment variables need to be set. This is probably best done in a login file such as .bashrc.

Assuming that the tar ball has been expanded into a single directory a suitable environment variable can be set to point to this:

export METITARSKI= full path of the directory where the files have been placed

For the libpolyml.so.3 and libgmp.so.3 files to be found the environment variable LD_LIBARY_PATH needs to be extended to point at the directory. (On some systems, such as early versions of Ubuntu it may be necessary to add the path to a configuration file which is placed in directory /etc/ld.so.conf.d. The configuration file then is activated using ldconfig. These commands may require the use of sudo to have the right permissions. See below for more details.)

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$METITARSKI

It is also useful to extend the PATH environment variable to point to where metit is (this will also be needed to locate TreeLimitedRun when running the perl script runmetit.pl) :

export PATH=$PATH:$METITARSKI

For Z3 to be found the environment variable Z3_NONLIN (see README.txt) needs to be set (NB this
must contain the full path to the Z3 binary):

export Z3_NONLIN=$METITARSKI/z3

Finally, to save using --tptp in the metit command line the environment variable TPTP can be set (this allows the Axiom files to be found)

export TPTP=$METITARSKI/tptp

SETTING A LINK TO THE PERL SCRIPTS

To run the perl script runmetit.pl a symbolic link should be used rather than copying the file as it needs to access other scripts within the scripts subdirectory.

e.g. (from the problem file directory)

ln -s $METITARSKI/scripts/runmetit.pl ./runmetit.pl

Alternatively, the PATH environment variable can be further extended to point at the scripts directory

export PATH=$PATH:$METITARSKI/scripts


INSTALLING ON EARLIER VERSIONS OF UBUNTU

Some versions of Ubuntu and other Debian based Linux operating system use configuration files rather than LD_LIBRARY_PATH.  The user must in this case place the full path to the MetiTarski directory (i.e. the directory containing the library files used by MetiTarski - libpolyml.so.3 and libgmp.so.3) into a txt file named MetiTarski.conf (for instance).

The text file should be created in the directory /etc/ld.so.conf.d

The configuration is then activated with the command ldconfig.

Super user privileges may be required so the command sudo should be used. An example series of commands are:

cd /etc/ld.so.conf.d

sudo emacs metit.conf

(add the full path to the file metit.conf and save and exit)

sudo ldconfig


========================
Cambridge, February 2013
