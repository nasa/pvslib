# Line Segments

Properties of and operations on line segments. Used to support the formalizations in library `polygons`.

Main contributions:
* an extension of vectors@vectors_2D that includes many properties of 2D cross products (see `vectors_cross_2d.pvs`)
* sin and cos expressed as cross and dot products along with properties (see `vectors_2d_trig.pvs`)
* definitions for lists (sequences) of points to be used as vertices (see `vertex_list.pvs`)
* elementary functions on line segments (see `segments_2d.pvs`)
* properties of line segments, including overlaps (see `segments_2d_props.pvs`)
* trig-based properties of line segments (see `segments_2d_trig.pvs`)
* properties of crossings between lines containing segments (see `perp_crossings.pvs`)
* definitions for when a point lies between (in an angular sense) two rays emanating from a common point (see `between_rays.pvs`)
* proof that the shortest distance between two non-intersecting segments occurs at an endpoint (see `nearest_segment_points.pvs`)
    * Also see figures in file `endpoint_nearest_point_between_segments.pdf`.
* sequences of endpoints derived from connected segment sequences (see `segment_endpoint_sequences.pvs`)
* sequences of *miter points* derived from connected segment sequences (see `miter_point_sequences.pvs`)

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
