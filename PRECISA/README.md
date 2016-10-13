PRECISA (PVS Round-off Error Certifier vIa Static Analysis)
==

This directory contains the PVS code of the examples presented in the paper  [_Formally Certified Round-Off Error Analysis of Floating-Point Functions_](https://shemesh.larc.nasa.gov/people/cam/publications/precisa-draft.pdf). [PRECISA](https://shemesh.larc.nasa.gov/fm/PRECISA) accepts as input functional expressions written in PVS format, e.g., [`fluctuat.pvs`](Fluctuat/fluctuat.pvs) and generates a certificate of the round-off floating-point error in the form of a PVS theory and its proofs, e.g., [`cert_fluctuat.pvs`](Fluctuat/cert_fluctuat.pvs). This certificate can be used to compute concrete error bounds, which are probably correct, e.g.,
[`cbound_fluctuat.pvs`](Fluctuat/cbound_fluctuat.pvs).

The PVS utility `proveit` can be used to verify the PVS certificates:

```
$ proveit -sc Fluctuat/cert_fluctuat.pvs

Removing Fluctuat/.pvscontext Fluctuat/pvsbin/ Fluctuat/cert_fluctuat.summary Fluctuat/cert_fluctuat.log
Processing Fluctuat/cert_fluctuat.pvs. Writing output to file Fluctuat/cert_fluctuat.summary
Saving theory dependencies in directory pvsbin
 Proof summary for theory cert_fluctuat
    Theory totals: 3 formulas, 3 attempted, 3 succeeded (7.68 s)
Grand Totals: 3 proofs, 3 attempted, 3 succeeded (7.68 s)
```



