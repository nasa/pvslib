# Summary for `TU_Games`
Run started at 6:34:18 7/8/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **24**   | **24**    | **24**    | **0**  | **1.517 s**   |
|top|0|0|0|0|0.000|
|players_set|0|0|0|0|0.000|
|coalition_fun|7|7|7|0|0.337|
|imputations|3|3|3|0|0.126|
|tu_game|14|14|14|0|1.054|
## Detailed Summary 
## `top`
No formula declaration found.
## `players_set`
No formula declaration found.
## `coalition_fun`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|coalition_fun_TCC1|✅ proved - complete|shostak|0.018|
|subsets_are_finite|✅ proved - complete|shostak|0.095|
|tot_S_0|✅ proved - incomplete|shostak|0.036|
|tot_distrib|✅ proved - incomplete|shostak|0.044|
|tot_mult_const|✅ proved - incomplete|shostak|0.006|
|tot_distrib_sub|✅ proved - incomplete|shostak|0.071|
|tot_div_const|✅ proved - incomplete|shostak|0.067|

## `imputations`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|subset_core_I|✅ proved - incomplete|shostak|0.035|
|subset_I_PI|✅ proved - incomplete|shostak|0.043|
|subset_PI_FP|✅ proved - incomplete|shostak|0.048|

## `tu_game`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|solution_concept_TCC1|✅ proved - incomplete|shostak|0.045|
|a_test|✅ proved - incomplete|shostak|0.009|
|test_param|✅ proved - incomplete|shostak|0.000|
|tau_v_TCC1|✅ proved - complete|shostak|0.026|
|tau_x_TCC1|✅ proved - complete|shostak|0.105|
|bstar_TCC1|✅ proved - incomplete|shostak|0.028|
|affinestar_TCC1|✅ proved - incomplete|shostak|0.092|
|interch_impl_desir|✅ proved - complete|shostak|0.045|
|interch_is_sym|✅ proved - complete|shostak|0.046|
|DES_implies_ETP|✅ proved - incomplete|shostak|0.029|
|SIVA_implies_NE|✅ proved - incomplete|shostak|0.016|
|PO_core|✅ proved - incomplete|shostak|0.038|
|affine_bij|✅ proved - complete|shostak|0.075|
|COV_core|✅ proved - incomplete|shostak|0.500|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib//float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-pvsio-fix.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210219-extratregies.lisp`|
