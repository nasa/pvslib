# Summary for `PVSioKeyVal`
Run started at 17:56:19 8/30/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **7**   | **7**    | **7**    | **0**  | **0.217 s**   |
|top|0|0|0|0|0.000|
|kv_index|4|4|4|0|0.207|
|kv_store|0|0|0|0|0.000|
|kv_io|3|3|3|0|0.010|
## Detailed Summary 
## `top`
No formula declaration found.
## `kv_index`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|kv_find_index_rec_TCC1|✅ proved - complete|shostak|0.017|
|kv_find_index_rec_TCC2|✅ proved - complete|shostak|0.081|
|kv_find_index_rec_TCC3|✅ proved - complete|shostak|0.089|
|kv_find_index_TCC1|✅ proved - complete|shostak|0.020|

## `kv_store`
No formula declaration found.
## `kv_io`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|kv_write_TCC1|✅ proved - complete|shostak|0.010|
|kv_download_TCC1|✅ proved - complete|shostak|0.000|
|kv_read_TCC1|✅ proved - complete|shostak|0.000|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/PVS-7.1/nasalib/pvsio_utils/`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/float/`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/`<br/>`/home/cmunoz/local/PVS-7.1/lib/`|
| Loaded Patches | `/home/cmunoz/.pvs.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20230712-static-update.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20230710-tcc-gen.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20230707-defattach.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20230706-extrategies.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`|
