# Summary for `examples`
Run started at 11:24:45 9/2/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **26**   | **26**    | **26**    | **0**  | **4.701 s**   |
|top|0|0|0|0|0.000|
|primes|11|11|11|0|2.274|
|pvsio_examples|6|6|6|0|0.935|
|stdsys_examples|0|0|0|0|0.000|
|stdstr_examples|1|1|1|0|0.057|
|stdpvs_examples|2|2|2|0|0.010|
|stdmutable_examples|0|0|0|0|0.000|
|csv_utils_examples|1|1|1|0|0.050|
|csv_examples|5|5|5|0|1.375|
|kv_examples|0|0|0|0|0.000|
|prime_factorization_checker|0|0|0|0|0.000|
## Detailed Summary 
## `top`
No formula declaration found.
## `primes`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|prime?_TCC1|✅ proved - incomplete|shostak|0.116|
|prime_factorization_rec_TCC1|✅ proved - complete|shostak|0.010|
|prime_factorization_rec_TCC2|✅ proved - complete|shostak|0.020|
|prime_factorization_rec_TCC3|✅ proved - incomplete|shostak|0.084|
|prime_factorization_rec_TCC4|✅ proved - incomplete|shostak|0.132|
|prime_factorization_rec_TCC5|✅ proved - incomplete|shostak|0.375|
|prime_factorization_rec_TCC6|✅ proved - incomplete|shostak|0.610|
|prime_factorization_rec_TCC7|✅ proved - incomplete|shostak|0.294|
|prime_factorization_rec_TCC8|✅ proved - incomplete|shostak|0.311|
|prime_factorization_TCC1|✅ proved - complete|shostak|0.156|
|prime_factorization_TCC2|✅ proved - complete|shostak|0.166|

## `pvsio_examples`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|hello_you_TCC1|✅ proved - complete|shostak|0.385|
|cat_TCC1|✅ proved - complete|shostak|0.010|
|safe_quadratic_TCC1|✅ proved - incomplete|shostak|0.117|
|pp_rat_off_TCC1|✅ proved - complete|shostak|0.206|
|pp_rat_on_TCC1|✅ proved - complete|shostak|0.207|
|a_fact|✅ proved - complete|shostak|0.010|

## `stdsys_examples`
No formula declaration found.
## `stdstr_examples`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|ex0_TCC1|✅ proved - complete|shostak|0.057|

## `stdpvs_examples`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|ex_write_TCC1|✅ proved - complete|shostak|0.000|
|ex_read_TCC1|✅ proved - complete|shostak|0.010|

## `stdmutable_examples`
No formula declaration found.
## `csv_utils_examples`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|ex2_TCC1|✅ proved - complete|shostak|0.050|

## `csv_examples`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|NewDialect_TCC1|✅ proved - complete|shostak|0.045|
|ex4_TCC1|✅ proved - complete|shostak|0.000|
|ex4_TCC2|✅ proved - complete|shostak|0.090|
|ex4_TCC3|✅ proved - incomplete|shostak|0.359|
|ex4_TCC4|✅ proved - incomplete|shostak|0.881|

## `kv_examples`
No formula declaration found.
## `prime_factorization_checker`
No formula declaration found.## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib/pvsio_utils/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230712-static-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230710-tcc-gen.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230707-defattach.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230706-extrategies.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`|
