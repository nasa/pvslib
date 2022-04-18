NASALib
=

NASALib is a continuing collaborative effort that has spanned over 3 decades,
to aid in research related to theorem proving  sponsored by NASA
(https://shemesh.larc.nasa.gov/fm/pvs/).
It consists of a collection of formal development (i.e.,
<i>libraries</i>) written in the Prototype Verification System
([PVS](http://pvs.csl.sri.com)), contributed by SRI, NASA,NIA, and the PVS community, and maintained by the
[NASA/NIA Formal Methods Team at LaRC](http://shemesh.larc.nasa.gov/fm).

# Release
The current version of NASALib is 7.1.0 (11/05/20) and requires [PVS 7.1](http://pvs.csl.sri.com/).

# Libraries

Currently, NASALib consists of 54 libraries, containing ~30K proven formulas.

| Library  | Description | 
| --- | --- | 
| [ACCoRD](./ACCoRD/README.md) | Framework for the analysis of air traffic conflict detection and resolution algorithms | 
| [affine_arith](./affine_arith/README.md) | Formalization of affine arithmetic and strategy for evaluating polynomial functions with variables on interval domains. |
| [algebra](./algebra/README.md) | Groups, monoids, rings, etc. |
| [analysis](./analysis/README.md) | Real analysis, limits, continuity, derivatives, integrals. |
| [ASP](./ASP/README.md) | Denotational semantics of Answer Set Programming. |
| [aviation](./aviation/README.md) | Support definitions and properties for aviation-related formalizations. |
| [Bernstein](./Bernstein/README.md) | Formalization of multivariate Bernstein polynomials. |
| [CCG](./CCG/README.md) | Formalization of diverse termination criteria. |
| [complex](./complex/README.md) | Complex numbers. |
| [complex_alt](./complex_alt/README.md) | Alternative formalization of complex numbers. |
| [complex_integration](./complex_integration/README.md) | Complex integration. |
| [co_structures](./co_structures/README.md) | Sequences of countable length defined as co-algebraic datatypes. |
| [digraphs](./digraphs/README.md) | Directed graphs: circuits, maximal subtrees, paths, DAGs. |
| [exact_real_arith](./exact_real_arith/README.md) | Exact real arithmetic including trig functions. |
| [examples](./examples/README.md) | Examples of application of the functionality provided by NASALib. |
| [extended_nnreal](./extended_nnreal/README.md) | Extended non-negative reals. |
| [fast_approx](./fast_approx/README.md) | Approximations of standard numerical functions. |
| [fault_tolerance](./fault_tolerance/README.md) | Fault tolerance protocols. |
| [float](./float/README.md) | Floating point numbers and arithmetic. |
| [graphs](./graphs/README.md) | Graph theory. |
| [interval_arith](./interval_arith/README.md) | Interval arithmetic and numerical approximations. Includes automated strategies numerical for computing numerical approximations and interval for checking satisfiability and validity of simply quantified real-valued formulas. This development includes a formalization of Allen interval temporal logic. |
| [ints](./ints/README.md) | Integer division, gcd, mod, prime factorization, min, max. |
| [lebesgue](./lebesgue/README.md) | Lebesgue integral with connection to Riemann Integral. |
| [linear_algebra](./linear_algebra/README.md) | Linear algebra. |
| [lnexp](./lnexp/README.md) |  Logarithm, exponential and hyperbolic functions. & Foundational definitions of logarithm, exponential and hyperbolic functions. |
| [LTL](./LTL/README.md) | Linear Temporal Logic |
| [matrices](./matrices/README.md) | Executable specification of MxN matrices. This library includes computation of inverse and basic matrix operations such as addition and multiplication. |
| [measure_integration](./measure_integration/README.md) | Sigma algebras, measures, Fubini-Tonelli Lemmas. |
| [MetiTarski](./MetiTarski/README.md) | Integration of MetiTarski, an automated theorem prover for real-valued functions. |
| [metric_space](./metric_space/README.md) | Domains with a distance metric, continuity and uniform continuity. |
| [numbers](./numbers/README.md) | Elementary number theory. |
| [orders](./orders/README.md) | Abstract orders, lattices, fix points. |
| [power](./power/README.md) | Generalized Power function (without ln/exp). |
| [probability](./probability/README.md) | Probability theory. |
| [PVS0](./PVS0/README.md) | Formalization of fundamental computability concepts. |
| [PVSioChecker](./PVSioChecker/README.md) | Animation of PVS specifications. |
| [reals](./reals/README.md) | Summations, sup, inf, sqrt over the reals, absolute value, etc. |
| [Riemann](./Riemann/README.md) |  Riemann integral. |
| [scott](./scott/README.md) | Scott topology. |
| [series](./series/README.md) | Power series, comparison test, ratio test, Taylor's theorem. |
| [sets_aux](./sets_aux/README.md) | Power sets, orders, cardinality over infinite sets. Includes functional and relational facts based on Axiom of Choice and refinement relations based on equivalence relations. |
| [shapes](./shapes/README.md) | 2D-Shapes: triangle, parallelogram, rectangle, circular segment |
| [sigma_set](./sigma_set/README.md) | Summations over countably infinite sets. |
| [sorting](./sorting/README.md) | Sorting algorithms. |
| [structures](./structures/README.md) | Bounded arrays, finite sequences, bags, and several other structures. |
| [Sturm](./Sturm/README.md) |  Formalization of Sturm's theorem for univariate polynomials. Includes strategies `sturm` and `mono-poly` for automatically proving univariate polynomial relations over a real interval. |
| [Tarski](./Tarski/README.md) | Formalization of Tarski's theorem for univariate polynomials. Includes strategy tarski for automatically proving systems of univariate polynomial relations on the real line. |
| [topology](./topology/README.md) | Continuity, homeomorphisms, connected and compact spaces, Borel sets/functions. |
| [trig](./trig/README.md) | Trigonometry: definitions, identities, approximations. |
| [TRS](./TRS/README.md) | Term rewrite systems and Robinson unification algorithm. |
| [TU_games](./TU_games/README.md) | Cooperative TU-games. |
| [vect_analysis](./vect_analysis/README.md) | Limits, continuity, and derivatives of vector functions. |
| [vectors](./vectors/README.md) | 2-D, 3-D, 4-D, and n-dimensional vectors. |
| [while](./while/README.md) | Semantics for the programming language While. |

## Dependencies

Check the [NASALib dependency graph](docs/all-theories.svg "Dependency Graph").

# Scripts

NASALib also provides a collection of scripts that automates several tasks.

* [`proveit`](./Scripts.md#proveit) (*) - Runs PVS in batch mode 
* [`provethem`](./Scripts.md#provethem) (*) - Runs `proveit` on several libraries 
* [`pvsio`](./Scripts.md#pvsio) (*) - Command-line utility to run the PVSio ground evaluator.
* [`prove-all`](./Scripts.md#prove-all) - Runs `proveit` on each library
  in NASALib by wrapping `provethem` in order to provide a specific kind of run. 
* [`cleanbin-all`](./Scripts.md#cleanbin-all) - Clean `.pvscontext` and binary files from PVS libraries.
* [`find-all`](./Scripts.md#find-all) - Searches strings matching a given regular expressions in PVS libraries.
* [`dependencygraph`](./Scripts.md#dependencygraph) - Generates a library dependency graph for libraries in the current directory.
* [`dependency-all`](./Scripts.md#d#dependency-all) - Generates the dependency graphs for the PVS libraries in the current folder.

Click [here](docs/Scripts.md) for more details on these scripts.

(*) Already included in the PVS 7.1 distribution.

# Getting NASALib

## Via VSCode-PVS (recommended for new PVS users)

NASALib (v7.0.1) is fully compatible with
[VSCode-PVS](http://github.com/nasa/vscode-pvs), a modern graphical
interface to PVS based on
[Visual Studio Code](https://code.visualstudio.com). The latest
version of NASALib can be installed from VSCode-PVS.

## Development Version

For PVS advanced users, the development version is available from [GitHub](https://github.com/nasa/pvslib). 
To clone the development version, type the following command inside directory where PVS 7.0 is installed. Henceforth, that directory will be referred to as `<pvsdir>`. In the following commands, the dollar sign 
represents the prompt of the operating system.

```shell
$ git clone http://github.com/nasa/pvslib nasalib 
```

The command above will put a copy of the library in the directory `<pvsdir>/nasalib`.

### Major Recent Changes

* **The library `groups` is now deprecated**. The `group` library was [integrated into `algebra`](../../commit/b48b961e205f2294883c85cddc271e42610204d7) . A symbolic link is still provided for backward compatibility, but its use is discouraged. Every mention to `groups` should be replaced by `algebra`.

* **The library `trig_fnd` is now deprecated**. It's still provided for backward compatibility, but it should be replaced by `trig`.  The new library `trig`, which used to be axiomatic, is now foundational. However, in contrast to `trig_fnd`, trigonometric definitions are based on infinite series, rather than integrals. This change considerably reduces the type-checking of theories involving trigonometric functions. The change from `trig_fnd` to `trig` should not have a major impact in your formal developments since names of definitions and lemmas are the same. However, theory importing may be slightly different.

* The PVS developments `TCASII`, `WellClear`,  and `DAIDALUS` are now [available](https://github.com/nasa/WellClear/tree/master/PVS) as part of the [GitHub WellClear distribution](https://github.com/nasa/WellClear). The PVS development `PRECiSA`  is now [available](https://github.com/nasa/PRECiSA/tree/master/PVS) as part of the [GitHub PRECiSA distribution](https://github.com/nasa/PRECiSA). The PVS development `PolyCARP`  is now [available](https://github.com/nasa/PolyCARP/tree/master/PVS) as part of the [GitHub PolyCARP distribution](https://github.com/nasa/PolyCARP).


# Manual Installation

The following instructions assume that NASALib is located in the directory `<pvsdir>/nasalib`.

## 1) Add this directory to the environment variable `PVS_LIBRARY_PATH`

If it does not exists, creates such variable and with the path of this directory as only content. It is usually very useful to have your shell systems creating this variable at startup. To this end, and depending upon your shell, you may want to add one of the following lines in your startup script.  For C shell (csh or tcsh), you may add this line in `~/.cshrc`:
```shell
setenv PVS_LIBRARY_PATH "<pvsdir>/nasalib"
```
For Borne shell (bash or sh), add this line in either `~/.bashrc` or `~/.profile`:
```shell
export PVS_LIBRARY_PATH="<pvsdir>/nasalib"
```

## 2) Additional steps to protect previous NASALib configurations (optional)

If you had a previous installation of NASALib, either remove the file `~/.pvs.lisp` or, if you have a special configuration in that file, remove the following line  
```lisp
(load "<pvsdir>/nasalib/pvs-patches.lisp") 
```
## 3) Install Scripts

Finally, go to the directory `<pvsdir>/nasalib` and run the following shell scripts (the dollar sign represents the prompt of the operating system).

The `install-scripts` command will update and install NASALib scripts as needed.
~~~shell
$ ./install-scripts
~~~

## Older Versions 
Older versions of NASALib are available from 
[http://shemesh.larc.nasa.gov/fm/ftp/larc/PVS-library](http://shemesh.larc.nasa.gov/fm/ftp/larc/PVS-library).

# Contributors

NASALib has grown over the years thanks to the contribution of several people, among them:

* [Aaron Dutle](http://shemesh.larc.nasa.gov/people/amd), NASA, USA
* Alfons Geser, HTWK Leipzig, Germany
* Amer Tahat, Michigan Technological University, USA
* Amy Isvik, Wartburg College, USA
* Ana Cristina Rocha Oliveira, University of Brasilia, Brazil
* André Galdino, Federal University of Goiás, Brazil
* Andreia Avelar Borges, University of Brasilia, Brazil
* Anthony Narkawicz, formerly at NASA, USA
* Ariane Alves Almeida, University of Brasilia, Brazil
* [Bruno Dutertre](http://www.csl.sri.com/users/bruno), SRI, USA
* Ben Di Vito, NASA (retired), USA
* [César Muñoz](http://shemesh.larc.nasa.gov/people/cam), formerly at NASA, USA
* Clément Blaudeau, EPFL, Switzerland and Ecole Polytechnique, France 
* Concepción Vidal, University of La Coruña, Spain
* David Griffioen,CWI, The Netherlands
* [David Lester](http://apt.cs.man.ac.uk/people/dlester), Manchester University, UK
* Dragan Stosic, Ireland
* [Érik Martin-Dorel](http://erik.martin-dorel.org/), U. Montpellier 2 & U. of Perpignan (formerly), France
* Esther Conrad, NASA, USA
* Felicidad Aguado, University of La Coruña, Spain
* Flavio L.C. de Moura, University of Brasilia, Brazil
* [Gilles Dowek](https://who.rocq.inria.fr/Gilles.Dowek/index-en.html), INRIA, France
* [George Hagen](http://shemesh.larc.nasa.gov/people/geh), NASA, USA
* Gilberto Perez, University of La Coruña, Spain
* Gregory Anderson, University of Texas at Austin, USA
* Hanne Gottliebsen, formerly at NIA, USA
* Heber Herencia-Zapana, formerly at  NIA, USA
* J. Tanner Slagel, NASA, USA
* Jerry James, Utah State University, USA
* [Jeff Maddalon](http://shemesh.larc.nasa.gov/people/jmm), NASA, USA
* Jon Sjogren, Department of Defense, USA
* John Siratt, formerly at University of Arkansas at Little Rock, USA
* Katherine Cordwell, CMU, USA
* Kristin Rozier, formerly at NASA, USA
* [Laura Titolo](https://lauratitolo.github.io/), NIA & NASA, USA
* [Lee Pike](http://corp.galois.com/lee-pike), formerly at Galois, USA
* [Marco A. Feliú](https://www.nianet.org/directory/research-staff/marco-feliu/), NIA, USA
* [Mariano Moscato](https://www.nianet.org/directory/research-staff/mariano-moscato/), NIA, USA
* [Mauricio Ayala-Rincón](http://www.mat.unb.br/~ayala), University of Brasilia, Brazil
* [Natarajan Shankar](http://www.csl.sri.com/users/shankar), SRI, USA
* Pablo Ascariz, formerly at University of La Coruña, Spain
* [Paul Miner](http://shemesh.larc.nasa.gov/people/psm), NASA, USA
* Pedro Cabalar, University of La Coruña, Spain
* Radu Siminiceanu, formerly at NIA, USA
* Ricky Butler, NASA (retired), USA
* [Silvie Boldo](https://www.lri.fr/~sboldo), INRIA, France
* [Sam Owre](http://www.csl.sri.com/users/owre), SRI, USA
* Thaynara de Lima, Federal University of Goiás, Brazil
* Thiago Mendonça Ferreira Ramos, University of Brasilia, Brazil
* Thomas Norris
* Víctor Carreño, NASA (retired), USA

If we have incorrectly attributed a PVS development or you have
contributed to NASALib and your name is not included here, please let
us know.

If you want to contribute please read this [guide](docs/DEVEL-GUIDE.md).

DISCLAIMER
--
NASALib is a collection of formal specifications most of
which have been in the public domain for several years. The Formal
Methods Team at NASA LaRC still
maintains these developments. For the developments originally made by
the Formal Methods Team, these
developments are considered fundamental research that do not
constitute software. Contributions made by others may have particular
licenses, which are listed in the file `top.pvs` in each
respective directory.  In case of doubt, please contact the developers
of each contribution, which are also listed in that file.

PVS patches, which are included in the directory `pvs-patches`, are part of the
PVS source code and they are covered by the PVS open source license.

Some proof strategies require third party research tools, e.g.,
MetiTarski and Z3. For convenience, they are included in this
repository with permission from their authors. Licenses for these
tools are also included as appropriate.

Enjoy it.

[The NASA/NIA Formal Methods Team at LaRC](http://shemesh.larc.nasa.gov/fm)

Contact: [Mariano Moscato](http://marianomoscato.github.io)
