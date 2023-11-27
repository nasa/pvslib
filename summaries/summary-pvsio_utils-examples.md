# Summary for `pvsio_utils/examples`
Run started at 19:51:1 11/24/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **26**   | **26**    | **26**    | **0**  | **3.013 s**   |
|top|0|0|0|0|0.000|
|primes|11|11|11|0|1.448|
|pvsio_examples|6|6|6|0|0.603|
|stdsys_examples|0|0|0|0|0.000|
|stdstr_examples|1|1|1|0|0.040|
|stdpvs_examples|2|2|2|0|0.010|
|stdmutable_examples|0|0|0|0|0.000|
|csv_utils_examples|1|1|1|0|0.026|
|csv_examples|5|5|5|0|0.886|
|kv_examples|0|0|0|0|0.000|
|prime_factorization_checker|0|0|0|0|0.000|
## Detailed Summary 
## `top`
No formula declaration found.
## `primes`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|prime?_TCC1|✅ proved - incomplete|shostak|0.061|
|prime_factorization_rec_TCC1|✅ proved - complete|shostak|0.010|
|prime_factorization_rec_TCC2|✅ proved - complete|shostak|0.010|
|prime_factorization_rec_TCC3|✅ proved - incomplete|shostak|0.060|
|prime_factorization_rec_TCC4|✅ proved - incomplete|shostak|0.095|
|prime_factorization_rec_TCC5|✅ proved - incomplete|shostak|0.230|
|prime_factorization_rec_TCC6|✅ proved - incomplete|shostak|0.400|
|prime_factorization_rec_TCC7|✅ proved - incomplete|shostak|0.192|
|prime_factorization_rec_TCC8|✅ proved - incomplete|shostak|0.197|
|prime_factorization_TCC1|✅ proved - complete|shostak|0.097|
|prime_factorization_TCC2|✅ proved - complete|shostak|0.096|

## `pvsio_examples`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|hello_you_TCC1|✅ proved - complete|shostak|0.243|
|cat_TCC1|✅ proved - complete|shostak|0.010|
|safe_quadratic_TCC1|✅ proved - incomplete|shostak|0.067|
|pp_rat_off_TCC1|✅ proved - complete|shostak|0.146|
|pp_rat_on_TCC1|✅ proved - complete|shostak|0.137|
|a_fact|✅ proved - complete|shostak|0.000|

## `stdsys_examples`
No formula declaration found.
## `stdstr_examples`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|ex0_TCC1|✅ proved - complete|shostak|0.040|

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
|ex2_TCC1|✅ proved - complete|shostak|0.026|

## `csv_examples`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|NewDialect_TCC1|✅ proved - complete|shostak|0.030|
|ex4_TCC1|✅ proved - complete|shostak|0.010|
|ex4_TCC2|✅ proved - complete|shostak|0.050|
|ex4_TCC3|✅ proved - incomplete|shostak|0.229|
|ex4_TCC4|✅ proved - incomplete|shostak|0.567|

## `kv_examples`
No formula declaration found.
## `prime_factorization_checker`
No formula declaration found.## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Mac OS X (Intel)] (Nov 14, 2020 23:13)|
| Patch Version| n/a|
| Library Path| `/Applications/pvs-7.1.0/pvslib/`<br/>`/Applications/pvs-7.1.0/lib/`<br/>`/Applications/pvs-7.1.0/pvslib/float/`<br/>`/Applications/pvs-7.1.0/pvslib/pvsio_utils/`|
| Loaded Patches | `/Applications/pvs-7.1.0/pvslib/.pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230712-static-update.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230710-tcc-gen.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230707-defattach.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230706-extrategies.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210323-wish.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210225-cl2pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210715a.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210715.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210707.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210706.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210511.lisp`|
