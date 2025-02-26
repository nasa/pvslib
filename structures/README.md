# Structures

This library provides definitions and properties on diverse data structures.

## Highlights

### Major theorems
| Theorem | Location | PVS Name | Contributors |
| --- | --- | --- | --- |
| Shroeder Bernstein | `structures@Shroeder_Bernstein` | `Shroeder_Bernstein` | J Tanner Slagel |


### Strategies

This library provides the strategy `simplify-nth` that simplifies
expressions of the form 
`nth((:a0,...,an:),k)` to `ak` when `k <=n`. For more information,
type `(help simplify-nth)` in the theorem prover. 

To enable this strategy, please import `structures@strategies`.

![dependency graph](./structures-zoomed.svg "Dependency Graph")

## Contributors
* [César Muñoz](http://shemesh.larc.nasa.gov/people/cam), NASA, USA
* David Griffioen,CWI, The Netherlands
* Kristin Rozier, formerly at NASA, USA
* Lee Pike, formely at NASA, USA
* Ricky Butler, formerly at NASA, USA
* Mariano Moscato, AMA @ NASA, USA
* [Aaron Dutle](http://shemesh.larc.nasa.gov/people/amd), NASA, USA
* Sam Owre, formerly at SRI, USA

## Maintainer
* [César Muñoz](http://shemesh.larc.nasa.gov/people/cam), NASA, USA

## External Dependencies
![dependency graph](./structures.svg "Dependency Graph")

