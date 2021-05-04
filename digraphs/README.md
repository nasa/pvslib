# Digraphs

Directed graphs: circuits, maximal subtrees, paths, DAGs.

## Highlights

* C. Blaudeau added a topological sort to the digraph library, defined
on computable acyclic digraphs. A couple of changes have been made to
split the paths.pvs and dag.pvs for the two definitions of
digraphs. The main theory `c_topological_sort` revolves around a visit
function that does a depth-first search of the graph, using a marking
system (none, temporary, permanent)

### Major theorems

| Theorem | Location | PVS Name | Contributors |
| --- | --- | --- | --- |


![dependency graph](./digraphs-zoomed.svg "Dependency Graph")

# Contributors
* Andreia Avelar Borges, University of Brasilia, Brazil
* Jon Sjogren, Department of Defense, USA
* [Kristin Rozier](http://ti.arc.nasa.gov/profile/kyrozier), NASA, USA
* [Ricky Butler](http://shemesh.larc.nasa.gov/people/rwb), NASA, USA
* [César Muñoz](http://shemesh.larc.nasa.gov/people/cam), NASA, USA
* [Mariano Moscato](https://www.nianet.org/directory/research-staff/mariano-moscato/), NIA & NASA, USA
* [Sam Owre](http://www.csl.sri.com/users/owre), SRI, USA
* Thomas Norris
* Clément Blaudeau, EPFL, Switzerland and Ecole Polytechnique, France 

## Maintainer
* [César Muñoz](http://shemesh.larc.nasa.gov/people/cam), NASA, USA

# Dependencies
![dependency graph](./digraphs.svg "Dependency Graph")
