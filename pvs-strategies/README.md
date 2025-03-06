# Strategies

NASALib provides several proof producing strategies and oracles. 

## Proof Producing Strategies in NASALib

| Strategy | Description | Requirements | More Information |
| --- | --- | --- | --- |
|`affine`, `aa-numerical` | Evaluation of multivariate polynomials with variables on interval domains | `affine_arith@strategies` | [Affine](https://shemesh.larc.nasa.gov/fm/pvs/Affine/)|
|`bernstein` | Multivariate polynomial global optimization using Bernstein polynomials | `Bernstein@strategies` | [Bernstein](https://shemesh.larc.nasa.gov/fm/pvs/Bernstein/)|
|`interval`, `numerical` | Reasoning about real-valued expression using interval arithmetic | `interval_arith@strategies` | [Interval](https://shemesh.larc.nasa.gov/fm/pvs/Interval/)|
|`era_numerical` | Evaluation of real-valued expressions using exact real arithmetic | `exact_real_arith@strategies` | [examples](https://github.com/nasa/pvslib/blob/master/exact_real_arith/examples/era_examples.pvs) |
|`riemann` | Numerical integration | `Riemann@strategies` | [examples](https://github.com/nasa/pvslib/blob/master/Riemann/examples/riemann_examples.pvs) |
|`simplify-nth` | Simplification of expressions of the form `nth((:a0,...,an:),k)` to `ak` when `k <=n`| | |
|`sturm`| Reasoning about univariate polynomial relations over a real interval | `Sturm@strategies` | [Sturm](https://shemesh.larc.nasa.gov/fm/pvs/Sturm/)|
|`tarski`|  Proving systems of univariate polynomial relations on the real line  | `Sturm@strategies` | [Tarski](https://shemesh.larc.nasa.gov/fm/pvs/Tarski/)|

## Oracles in NASALib
| Oracle | Description | Requirements | More Information |
| --- | --- | --- | --- |
|`metit` | Oracle for real-valued functions | | [MetiTarski](https://shemesh.larc.nasa.gov/fm/pvs/MetiTarski/)|

## Strategy Packages Included in PVS
| Strategy Package | Description | 
| --- | --- | 
| [Manip](https://shemesh.larc.nasa.gov/fm/pvs/Manip/) |  Strategies aimed at algebraic simplification of real-valued expressions, including syntax-matching and extended reference notations|
| [Field](https://shemesh.larc.nasa.gov/fm/pvs/Field/) | Strategies for simplifications and algebraic manipulations in the closed field of real numbers|
| [Extrategies](https://shemesh.larc.nasa.gov/fm/pvs/Extrategies/) | Strategy combinators and Lisp functions for writing and debugging PVS strategies|

## Contributors
* [César Muñoz](http://shemesh.larc.nasa.gov/people/cam), NASA, USA
* Mariano Moscato, AMA @ NASA, USA
* Ben di Vito, formerly at NASA, USA

## Maintainer
* [César Muñoz](http://shemesh.larc.nasa.gov/people/cam), NASA, USA
