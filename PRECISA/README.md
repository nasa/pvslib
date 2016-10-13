PRECISA (PVS Round-off Error Certifier vIa Static Analysis)
==

This directory contains the PVS code of the examples presented in the paper  [_Formally Certified Round-Off Error Analysis of Floating-Point Functions_](https://shemesh.larc.nasa.gov/people/cam/publications/precisa-draft.pdf). [PRECISA](https://shemesh.larc.nasa.gov/fm/PRECISA) accepts as input functional expressions written in PVS format, e.g., [`fluctuat.pvs`](Fluctuat/fluctuat.pvs) and generates a certificate of the round-off floating-point error in the form of a PVS theory and its proofs, e.g., [`cert_fluctuat.pvs`](Fluctuat/cert_fluctuat.pvs). This certificate can be used to compute concrete error bounds, which are probably correct, e.g.,
[`cbound_fluctuat.pvs`](Fluctuat/cbound_fluctuat.pvs).

The PVS utility `proveit` can be used to verify the PVS certificates:

```
$ proveit -sc Fluctuat/cert_fluctuat.pvs
```



