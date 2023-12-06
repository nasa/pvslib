# Summary for `PVSioKeyVal`
Run started at 5:52:40 12/6/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **7**   | **7**    | **7**    | **0**  | **0.161 s**   |
|top|0|0|0|0|0.000|
|kv_index|4|4|4|0|0.151|
|kv_store|0|0|0|0|0.000|
|kv_io|3|3|3|0|0.010|
## Detailed Summary 
## `top`
No formula declaration found.
## `kv_index`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|kv_find_index_rec_TCC1|✅ proved - complete|shostak|0.016|
|kv_find_index_rec_TCC2|✅ proved - complete|shostak|0.061|
|kv_find_index_rec_TCC3|✅ proved - complete|shostak|0.064|
|kv_find_index_TCC1|✅ proved - complete|shostak|0.010|

## `kv_store`
No formula declaration found.
## `kv_io`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|kv_write_TCC1|✅ proved - complete|shostak|0.000|
|kv_download_TCC1|✅ proved - complete|shostak|0.010|
|kv_read_TCC1|✅ proved - complete|shostak|0.000|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Mac OS X (Intel)] (Nov 14, 2020 23:13)|
| Patch Version| n/a|
| Library Path| `/Users/mmoscato/nasa/pvslib/pvslib-gitlab/`<br/>`/Users/mmoscato/pvs/7.1.0-ix86-MacOSX-allegro/lib/`<br/>`/Users/mmoscato/nasa/pvslib/pvslib-gitlab/float/`<br/>`/Users/mmoscato/nasa/pvslib/pvslib-gitlab/pvsio_utils/`|
| Loaded Patches | `/Users/mmoscato/.pvs.lisp`<br/>`/Users/mmoscato/nasa/pvslib/pvslib-gitlab/.pvs.lisp`<br/>`/Users/mmoscato/nasa/pvslib/pvslib-gitlab/pvs-patches/patch-20231128-proveit-init.lisp`<br/>`/Users/mmoscato/nasa/pvslib/pvslib-gitlab/pvs-patches/patch-20231108-dp-check.lisp`<br/>`/Users/mmoscato/nasa/pvslib/pvslib-gitlab/pvs-patches/patch-20231107-forall-bindings.lisp`<br/>`/Users/mmoscato/nasa/pvslib/pvslib-gitlab/pvs-patches/patch-20230712-static-update.lisp`<br/>`/Users/mmoscato/nasa/pvslib/pvslib-gitlab/pvs-patches/patch-20230710-tcc-gen.lisp`<br/>`/Users/mmoscato/nasa/pvslib/pvslib-gitlab/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/Users/mmoscato/nasa/pvslib/pvslib-gitlab/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/Users/mmoscato/nasa/pvslib/pvslib-gitlab/pvs-patches/patch-20230707-defattach.lisp`<br/>`/Users/mmoscato/nasa/pvslib/pvslib-gitlab/pvs-patches/patch-20230706-extrategies.lisp`<br/>`/Users/mmoscato/nasa/pvslib/pvslib-gitlab/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/Users/mmoscato/nasa/pvslib/pvslib-gitlab/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/Users/mmoscato/nasa/pvslib/pvslib-gitlab/pvs-patches/patch-20220514-conversions.lisp`<br/>`/Users/mmoscato/nasa/pvslib/pvslib-gitlab/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/Users/mmoscato/nasa/pvslib/pvslib-gitlab/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/Users/mmoscato/nasa/pvslib/pvslib-gitlab/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/Users/mmoscato/nasa/pvslib/pvslib-gitlab/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/Users/mmoscato/nasa/pvslib/pvslib-gitlab/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/Users/mmoscato/nasa/pvslib/pvslib-gitlab/pvs-patches/patch-20210323-wish.lisp`<br/>`/Users/mmoscato/nasa/pvslib/pvslib-gitlab/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/Users/mmoscato/nasa/pvslib/pvslib-gitlab/pvs-patches/patch-20210225-cl2pvs.lisp`<br/>`/Users/mmoscato/pvs/7.1.0-ix86-MacOSX-allegro/pvs-patches/patch-20210715a.lisp`<br/>`/Users/mmoscato/pvs/7.1.0-ix86-MacOSX-allegro/pvs-patches/patch-20210715.lisp`<br/>`/Users/mmoscato/pvs/7.1.0-ix86-MacOSX-allegro/pvs-patches/patch-20210707.lisp`<br/>`/Users/mmoscato/pvs/7.1.0-ix86-MacOSX-allegro/pvs-patches/patch-20210706.lisp`<br/>`/Users/mmoscato/pvs/7.1.0-ix86-MacOSX-allegro/pvs-patches/patch-20210511.lisp`|
