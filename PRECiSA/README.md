PRECiSA (Program Round-off Error Certifier via Static Analysis)
==

[PRECiSA](https://shemesh.larc.nasa.gov/fm/PRECiSA) accepts as input functional expressions written in PVS format, e.g., [`cd2d_tau_double.pvs`](CD2D_tau/cd2d_tau_double.pvs) and generates a certificate of the round-off floating-point error in the form of a PVS theory and its proofs, e.g., [`cert_cd2d_tau_double.pvs`](CD2D_tau/cert_cd2d_tau_double.pvs). This certificate can be used to compute concrete error bounds, which are probably correct, e.g.,
[`clgen_cd2d_tau_double.pvs`](CD2D_tau/clgen_cd2d_tau_double.pvs).

The PVS utility `proveit` can be used to verify the PVS certificates:

```
$ proveit -sc CD2D_tau/clgen_cd2d_tau_double.pvs

```



