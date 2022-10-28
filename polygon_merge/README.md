# Polygon Merge Algorithm

Verification of an algorithm to merge polygons A and B into C. Shows that every point in A or B is in C, and every point in C is in A or B or one of the *holes*.

Main contributions:
* functions to *inject* vertices where edges from A and B intersect (see `vertex_injection.pvs`)
* properties to relate the injected polygons to the originals (see `injection_props.pvs`)
* formalization of the algorithm (see `polygon_merge.pvs`)
* definitions and properties of *wedges*, regions that partially surround vertices (see `vertex_wedges.pvs`)
* results toward showing the merge output is a valid simple polygon (see `merge_well_formed.pvs`)
* results showing the merge edges return to the starting vertex (see `merged_polygon_closed.pvs`)
* further properties needed to establish proper merging (see `merge_props.pvs`)
* the two top-level requirements (see `main_results.pvs`)
* [NFM21 paper](https://link.springer.com/chapter/10.1007/978-3-030-76384-8_6)
* See the file `nfm21-polymerge.pdf` for presentation excerpts.

## Highlights

### Major theorems

| Theorem | Location | PVS Name | Contributors |
| --- | --- | --- | --- |

# Contributors
* [Ben Di Vito](https://www.dependablecomputing.com/about), Dependable Computing, USA
* [Ben Hocking](https://www.dependablecomputing.com/about), Dependable Computing, USA

## Maintainer
* [Ben Hocking](https://www.dependablecomputing.com/about), Dependable Computing, USA

# Dependencies
![dependency graph](./theory_dependencies.pdf "Dependency Graph")
