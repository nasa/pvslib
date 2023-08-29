# Summary for `examples`
Run started at 21:51:10 8/27/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **21**   | **21**    | **21**    | **0**  | **4.015 s**   |
|top|0|0|0|0|0.000|
|primes|11|11|11|0|2.191|
|pvsio_examples|4|4|4|0|0.485|
|stdsys_examples|0|0|0|0|0.000|
|stdstr_examples|1|1|1|0|0.056|
|stdmutable_examples|0|0|0|0|0.000|
|csv_utils_examples|1|1|1|0|0.046|
|csv_examples|4|4|4|0|1.237|
|prime_factorization_checker|0|0|0|0|0.000|
## Detailed Summary 
## `top`
No formula declaration found.
## `primes`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|prime?_TCC1|✅ proved - incomplete|shostak|0.103|
|prime_factorization_rec_TCC1|✅ proved - complete|shostak|0.010|
|prime_factorization_rec_TCC2|✅ proved - complete|shostak|0.025|
|prime_factorization_rec_TCC3|✅ proved - incomplete|shostak|0.085|
|prime_factorization_rec_TCC4|✅ proved - incomplete|shostak|0.145|
|prime_factorization_rec_TCC5|✅ proved - incomplete|shostak|0.355|
|prime_factorization_rec_TCC6|✅ proved - incomplete|shostak|0.577|
|prime_factorization_rec_TCC7|✅ proved - incomplete|shostak|0.303|
|prime_factorization_rec_TCC8|✅ proved - incomplete|shostak|0.288|
|prime_factorization_TCC1|✅ proved - complete|shostak|0.155|
|prime_factorization_TCC2|✅ proved - complete|shostak|0.145|

## `pvsio_examples`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|hello_you_TCC1|✅ proved - complete|shostak|0.363|
|cat_TCC1|✅ proved - complete|shostak|0.007|
|safe_quadratic_TCC1|✅ proved - incomplete|shostak|0.108|
|a_fact|✅ proved - complete|shostak|0.007|

## `stdsys_examples`
No formula declaration found.
## `stdstr_examples`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|ex0_TCC1|✅ proved - complete|shostak|0.056|

## `stdmutable_examples`
No formula declaration found.
## `csv_utils_examples`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|ex2_TCC1|✅ proved - complete|shostak|0.046|

## `csv_examples`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|NewDialect_TCC1|✅ proved - complete|shostak|0.040|
|ex4_TCC1|✅ proved - complete|shostak|0.077|
|ex4_TCC2|✅ proved - incomplete|shostak|0.328|
|ex4_TCC3|✅ proved - incomplete|shostak|0.792|

## `prime_factorization_checker`
No formula declaration found.## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/PVS-7.1/nasalib/pvsio_utils/`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/float/`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/`<br/>`/home/cmunoz/local/PVS-7.1/lib/`|
| Loaded Patches | `/home/cmunoz/.pvs.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20230712-static-update.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20230710-tcc-gen.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20230707-defattach.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20230706-extrategies.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`|
