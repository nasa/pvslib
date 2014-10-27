Welcome to MetiTarski! Suggestions and bug reports are welcomed.

INSTALLING A DECISION PROCEDURE (EADM)

To run, MetiTarski requires an external algebraic decision method (EADM).
MetiTarski supports three such tools:

 - QEPCAD B version 1.69 (released 16-03-2012) or later, available at
	http://www.cs.usna.edu/~qepcad/B/QEPCAD.html
    Instructions for building QEPCAD are available from the website above.

 - Mathematica version 8.0 or later. This is a commercial product.

 - Z3 version 4.0 or later, which can be obtained from http://z3.codeplex.com/.

 * MetiTarski requires that certain environment variables be set up for these tools.

   - For QEPCAD B: Environment variable $qe must point to the qesource subdirectory
     of the QEPCAD B installation, so that $qe/bin/qepcad is the QEPCAD B binary.

   - For Mathematica: Environment variable $MATH_KERNEL must point to the binary for the
     console-mode Mathematica interface. This file is called
     	- MathKernel      (on Mac OS X)
     	- MathKernel.exe  (on Windows)
     	- math            (on Linux)

   - For Z3: Environment variable $Z3_NONLIN must point to the Z3 binary.

The default is Z3, which is available in binary form and is free to non-commercial users.
QEPCAD is also free, but must be built from sources. QEPCAD is best for univariate
problems, and it is the only decision method that works for existential problems.
Mathematica is available in many institutions under a site license, and is very good
for problems involving three or four variables.

BUILDING METITARSKI

To build MetiTarski, first install Poly/ML version 5.5 (released September 2012) or later.

The Makefile for MetiTarski may require modification to work on your system.
(Tips on how to make the Makefile portable are requested!)
  - The variable POLYDIR is used to locate Poly/ML and its libraries.
    It can be left null if they have been installed in the standard main directories.

AXIOM AND PROBLEM FILES

Before preparing your own problems, please look at the many examples we supply.
They will give you an impression of the sort of problem MetiTarski can solve.
MetiTarski can include relevant axiom files automatically (using the
option --autoInclude). Better results can be obtained if you select the axiom files
yourself, omitting those that aren't strictly necessary. But this requires
some experience and skill.

Directory tptp contains many axiom and problem files. The problem files use the
"include" directive to insert axioms relevant to the functions mentioned in
those problems. Here is an example:

include('Axioms/general.ax').

The pathname mentioned by such a directive is looked up relative
to a base directory, which can be specified to MetiTarski using the --tptp
command line option. If that option is not used, the base directory is obtained
from the current setting of the TPTP environment variable.  However, if a
pathname starts with the "/" character, then it is regarded as absolute and no
base directory is used. If an included file is not found, then MetiTarski will
terminate with an error message.

To run MetiTarski on an individual problem, use the binary executable, metit.
here is an example:

	 metit --verbose 0 --show proof --tptp .. atan-problem-15.tptp

Here we see three options being given. The first suppresses all prover output
apart from the final result.  The second requests the prover to display the final proof.
The default value of "verbose" is 1, whilst 2 and 3 present more detail. The third option
specifies the TPTP directory.  The last item on the command line is the filename
containing the problem; you may put a series of file names here and the problems
will be attempted sequentially.

Version 1.4 introduced experimental, limited support for problems involving
existential quantification. In the supplied set of problems, the existential
ones have names beginning with the letter X. Suggestions for more interesting
problems are welcome! These can only be solved using QEPCAD as the EADM.

COMMAND LINE OPTIONS

Options to specify the EADM:

The default algebraic decision method is Z3 with "Strategy 1"
    (for a description, see http://www.cl.cam.ac.uk/~lp15/papers/Arith/cicm2012.pdf)

To specify a different decision method, use one of the following options:

--z3
      Use plain Z3 (instead of the default "Strategy 1")
-m or --mathematica
      Use Mathematica as the external algebraic decision method.
--qepcad
      Use QEPCAD as the external algebraic decision method.
--nsatz_eadm
      Use MetiTarski's built-in decision method (Real Nullstellensatz unsatisfiability)
      before calling the external one.  You must also explicitly give one of the options
      --z3, --mathematica or --qepcad.  A good combination: --nsatz_eadm -m

Other command-line options control MetiTarski's operation and heuristics. The following
options are the most important. The backtracking and case-splitting settings can
make the difference between success and failure, and unfortunately there's no
obvious way to choose the best ones for a given problem. Most of the numerical
parameters below are only for advanced users.

Basic options:

-p or --show proof
      A proof (if found) will be produced on the standard output.
--time <integer>
      limits the processor time used in the proof attempt (default 600 seconds)
--autoInclude, --autoIncludeExtended, --autoIncludeSuperExtended
      includes axiom files automatically
      (with extended or extra extended accuracy, respectively)
-t or --verbose <0..4>
      specifies the degree of verbosity for the proof search
      The default is 1, which displays information about CPU usage:
      a "." for every 10 secs of Metis time; a "+" for every 10 secs of RCF time.

More advanced heuristic settings:

--backtracking off/on (default on)
      switches backtracking on (which is the default) or off.
--cases off
      switches off case splitting.
--cases m
      If backtracking is on, then m is the maximum size of the split stack (default 100);
      if backtracking is off, then m is the maximum number of splits (default 3000).
--cases m+n
      m is as above, while n sets the weight factor for non-SOS clauses in tenths.
      Thus a value of n of 10 is neutral (the factor is 1.0 and the weight is unchanged).
--proj_ord off/on (default on)
      enables/disables automatic selection of a projection ordering for QEPCAD, which
      can have a great impact on multivariate problems.
--maxalg <positive integer>
      sets the maximum size of an algebraic clause To be retained as part of the context
      in QEPCAD calls. A value of 50 or 75 may benefit some problems that have two or
      three variables, while a few problems require at least 500. The default is 100.
--rerun off/on (default on)
      controls whether to try again (with maxalg = 1001) after running out of clauses,
      instead of just giving up.
--paramodulation off/on (default on)
      disables/enables the paramodulation rule.
--maxweight <positive integer>
      sets the maximum weight of a retained clause, default 1000 * (.5 + .5 * SOS_factor).
      Smaller values save memory but may cause MetiTarski to quit prematurely because
      it has run out of clauses. The maximum weight observed in any proof is 1007.
--tptp <dir>
      specifies the TPTP installation directory
--tstp
      generates standard TSTP proofs (no infixes, etc.), for use with TSTP analysis tools
--full
      includes variable instantiations in proofs
-q or --quiet
      no output: indicates provability with return value

PERL SCRIPTS

Directory scripts contains Perl scripts that are useful for generating and running
problem sets: runmetit and addaxioms.

MetiTarski can be given a list of problem files on the command line, but the
Perl script runmetit provides more flexibility.  It is especially useful when
many problems are to be attempted, each for a limited time.  It delivers a
logfile of results.  Here, we use runmetit to run MetiTarski on a directory of
problems.

	runmetit.pl --time 10 --proofs --tptp $HOME/metit-1.2/tptp

Here is a summary of the most common options. Others are documented in the script itself.

--time limits the processor time in seconds. It is not especially accurate.

--proofs produces proofs as new files, in a directory entitled Proofs-Metit-yyyy-mm-dd.

--threads (default 2) specifies the maximum number of threads to be used in parallel.
  (Too many threads may crash your machine! Your Mathematica licence may forbid
   multiple threads.)

--options "..." passes the given option string to MetiTarski.

A log file summarising the outcomes for all the problems will be stored in a file entitled
STATUS-Metit-yyyy-mm-dd.

The script runmetit.pl uses the command gtimeout (from the package GNU
coreutils) to kill jobs that have not terminated after a reasonable amount of
elapsed time. This only happens if gtimeout Is installed on your system.

The addaxioms script expands "include" directives at the source level in a set
of problem files, creating a directory of problem files in which each occurrence
of "include" has been replaced by the corresponding axioms. It can be useful for
debugging, perhaps to eliminate axioms that you believe to be irrelevant in the
hope of obtaining proof. The TPTP base directory is identified, as usual, by the
--tptp option if it is provided and otherwise by the TPTP environment variable.

For example, one way to generate a directory of expanded problems is to visit
the tptp directory and type the command

	addaxioms.pl --in Problems --outdir TestDir --tptp .

You can add further axiom files to all problems by naming them in this command.

INPUT SYNTAX AND PROBLEM PREPARATION

Problem syntax uses TPTP format extended with infix notation for arithmetic formulas.
Decimal notation is accepted: a decimal such as .23 abbreviates the fraction 23/100.
To express a floating point number, write an expression such as 1.8*10^-18.
Parsing is done using ML-YACC. Please note some quirks of the grammar:

1. A cnf line introduces a clause, which MUST be enclosed within a pair of parentheses
   even if it consists of a single literal. Example:
   	cnf(sqrt_squared, axiom, (X < 0 | sqrt(X)*sqrt(X) = X)).

2. The syntax for formulas only allows parentheses around a non-trivial formula.
    In particular, (p(x)) and ((x=y)) are forbidden.

The natural logarithm is written as ln. In contrast, the common logarithm (base
10) is written as log.  It is defined in the axiom file log.ax.
Note that many problem files with "log" in their name refer to the natural logarithm.

A special syntax for intervals is available.
	t : (a,b)
This formula is logically equivalent to the conjunction a < t & t < b. Here, t, a and b
are all terms. Membership in a closed interval is written
	t : (=a,b=)
The brackets can also be mixed. For example, X : (=0,1) means 0 <= X & X < 1.

The approximations for the sine and cosine functions become extremely inaccurate
once their argument exceeds 6 in absolute value. Proofs concerning those
functions outside of this range will almost certainly fail. For many
applications, a proof can be obtained by generalising the problem to eliminate the
sine and cosine functions in favour of new variables subject of the constraint
X^2 + Y^2 = 1. Note that a separate pair of variables is necessary for each
different argument of those functions. We provide extended approximations as well,
but the arguments of sin and cos must still be strictly limited. The comments in
the axiom files give specific information concerning accuracy.

Unfortunately, the decision procedure is hyper-exponential in the number of
variables, and MetiTarski is unlikely to be useful for problems containing more
than five variables.  A few nine-variable theorems have been proved.

MetiTarski can seldom prove equalities.  Inequalities can only be exact at the point
around which the power series of the relevant function has been expanded, typically
0 or 1.

INTERPRETING THE OUTPUT

By default, MetiTarski produces very little output, only a "ticker" indication
of processor time used. You can suppress even this output, or produce traces
in various levels of detail, using the --verbose option mentioned above.
Detailed traces are not easy to interpret, even by experts.

When it terminates, MetiTarski prints a few statistics, including the processor
time used. The proof is displayed if you requested this. There should also be a
status line summarising the outcome. Naturally you want status Theorem, but
other possibilities are Timeout and GaveUp, the latter meaning that MetiTarski
ran out of clauses to process. Because MetiTarski is incomplete, we cannot
conclude anything from its failure to prove a theorem. This can happen because
you have not included necessary axioms, because the theorem is too difficult to
prove, or because it is simply not amenable to the methods used by MetiTarski.

You can improve MetiTarski's performance by including only necessary axiom files
(for example, don't include upper bounds if they aren't needed, which often is
clear by inspection). Also, if you are trying to solve an engineering problem,
writing decimal numbers to 10 significant figures will create extra work for
MetiTarski to deliver an accuracy that can have no practical use. The necessary
tolerances should be determined by your application, and in most cases you
should not need more than three significant figures. (Note that a standard
resistor is only accurate to 10%.)

You will naturally want to try MetiTarski on your own problems, after converting them
to MetiTarski syntax and inserting the necessary "include" directives. Use the
supplied problems as examples. Please share any new problems, whether
MetiTarski can solve them or not.

Lawrence C Paulson
Computer Laboratory, University of Cambridge
February 2013
