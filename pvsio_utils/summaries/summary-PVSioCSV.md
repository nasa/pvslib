# Summary for `PVSioCSV`
Run started at 5:52:32 12/6/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **43**   | **43**    | **43**    | **0**  | **2.890 s**   |
|top|0|0|0|0|0.000|
|csv_utils|6|6|6|0|0.279|
|csv_writer_def|1|1|1|0|0.048|
|csv_reader|31|31|31|0|2.344|
|csv_writer|3|3|3|0|0.136|
|csv_writerow|2|2|2|0|0.083|
## Detailed Summary 
## `top`
No formula declaration found.
## `csv_utils`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|strsplit_with_qchar_rec_TCC1|✅ proved - complete|shostak|0.031|
|strsplit_with_qchar_rec_TCC2|✅ proved - incomplete|shostak|0.013|
|strsplit_with_qchar_rec_TCC3|✅ proved - complete|shostak|0.090|
|strsplit_with_qchar_rec_TCC4|✅ proved - complete|shostak|0.073|
|strsplit_with_qchar_rec_TCC5|✅ proved - complete|shostak|0.036|
|strsplit_with_qchar_rec_TCC6|✅ proved - complete|shostak|0.036|

## `csv_writer_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|MSEXCEL_DIALECT_TCC1|✅ proved - complete|shostak|0.048|

## `csv_reader`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|CSVDataFromSpec_TCC1|✅ proved - complete|shostak|0.010|
|CSVDataFromSpec_TCC2|✅ proved - complete|shostak|0.211|
|getField_TCC1|✅ proved - complete|shostak|0.000|
|getField_TCC2|✅ proved - complete|shostak|0.036|
|csv_data_from_spec_field_bool|✅ proved - complete|shostak|0.074|
|csv_data_from_spec_field_bool_OR_null|✅ proved - complete|shostak|0.083|
|csv_data_from_spec_field_rat|✅ proved - complete|shostak|0.057|
|csv_data_from_spec_field_rat_OR_null|✅ proved - complete|shostak|0.066|
|csv_data_from_spec_field_dec|✅ proved - complete|shostak|0.068|
|csv_data_from_spec_field_dec_OR_null|✅ proved - complete|shostak|0.068|
|csv_data_from_spec_field_int|✅ proved - complete|shostak|0.056|
|csv_data_from_spec_field_int_OR_null|✅ proved - complete|shostak|0.068|
|csv_data_from_spec_field_str|✅ proved - complete|shostak|0.048|
|csv_data_from_spec_field_str_OR_null|✅ proved - complete|shostak|0.076|
|processCSVField_TCC1|✅ proved - complete|shostak|0.049|
|processCSVField_TCC2|✅ proved - complete|shostak|0.038|
|processCSVField_TCC3|✅ proved - complete|shostak|0.048|
|processCSVField_TCC4|✅ proved - complete|shostak|0.094|
|processCSVField_TCC5|✅ proved - complete|shostak|0.211|
|processCSVField_TCC6|✅ proved - complete|shostak|0.096|
|processCSVField_TCC7|✅ proved - complete|shostak|0.075|
|processCSVField_TCC8|✅ proved - complete|shostak|0.064|
|processCSVLine_TCC1|✅ proved - complete|shostak|0.046|
|processCSVLine_TCC2|✅ proved - complete|shostak|0.048|
|processCSVLine_TCC3|✅ proved - complete|shostak|0.028|
|processCSVLine_TCC4|✅ proved - complete|shostak|0.095|
|processCSVLine_TCC5|✅ proved - complete|shostak|0.076|
|processCSVLine_TCC6|✅ proved - complete|shostak|0.246|
|processCSVLine_TCC7|✅ proved - complete|shostak|0.017|
|readCSVRecordln_TCC1|✅ proved - incomplete|shostak|0.192|
|readCSV_TCC1|✅ proved - complete|shostak|0.000|

## `csv_writer`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|toString_TCC1|✅ proved - incomplete|shostak|0.010|
|writeCSV_TCC1|✅ proved - complete|shostak|0.007|
|writeCSV_TCC2|✅ proved - incomplete|shostak|0.119|

## `csv_writerow`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|write_rows_TCC1|✅ proved - complete|shostak|0.007|
|write_rows_TCC2|✅ proved - complete|shostak|0.076|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Mac OS X (Intel)] (Nov 14, 2020 23:13)|
| Patch Version| n/a|
| Library Path| `/Users/mmoscato/nasa/pvslib/pvslib-gitlab/`<br/>`/Users/mmoscato/pvs/7.1.0-ix86-MacOSX-allegro/lib/`<br/>`/Users/mmoscato/nasa/pvslib/pvslib-gitlab/float/`<br/>`/Users/mmoscato/nasa/pvslib/pvslib-gitlab/pvsio_utils/`|
| Loaded Patches | `/Users/mmoscato/.pvs.lisp`<br/>`/Users/mmoscato/nasa/pvslib/pvslib-gitlab/.pvs.lisp`<br/>`/Users/mmoscato/nasa/pvslib/pvslib-gitlab/pvs-patches/patch-20231128-proveit-init.lisp`<br/>`/Users/mmoscato/nasa/pvslib/pvslib-gitlab/pvs-patches/patch-20231108-dp-check.lisp`<br/>`/Users/mmoscato/nasa/pvslib/pvslib-gitlab/pvs-patches/patch-20231107-forall-bindings.lisp`<br/>`/Users/mmoscato/nasa/pvslib/pvslib-gitlab/pvs-patches/patch-20230712-static-update.lisp`<br/>`/Users/mmoscato/nasa/pvslib/pvslib-gitlab/pvs-patches/patch-20230710-tcc-gen.lisp`<br/>`/Users/mmoscato/nasa/pvslib/pvslib-gitlab/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/Users/mmoscato/nasa/pvslib/pvslib-gitlab/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/Users/mmoscato/nasa/pvslib/pvslib-gitlab/pvs-patches/patch-20230707-defattach.lisp`<br/>`/Users/mmoscato/nasa/pvslib/pvslib-gitlab/pvs-patches/patch-20230706-extrategies.lisp`<br/>`/Users/mmoscato/nasa/pvslib/pvslib-gitlab/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/Users/mmoscato/nasa/pvslib/pvslib-gitlab/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/Users/mmoscato/nasa/pvslib/pvslib-gitlab/pvs-patches/patch-20220514-conversions.lisp`<br/>`/Users/mmoscato/nasa/pvslib/pvslib-gitlab/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/Users/mmoscato/nasa/pvslib/pvslib-gitlab/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/Users/mmoscato/nasa/pvslib/pvslib-gitlab/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/Users/mmoscato/nasa/pvslib/pvslib-gitlab/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/Users/mmoscato/nasa/pvslib/pvslib-gitlab/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/Users/mmoscato/nasa/pvslib/pvslib-gitlab/pvs-patches/patch-20210323-wish.lisp`<br/>`/Users/mmoscato/nasa/pvslib/pvslib-gitlab/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/Users/mmoscato/nasa/pvslib/pvslib-gitlab/pvs-patches/patch-20210225-cl2pvs.lisp`<br/>`/Users/mmoscato/pvs/7.1.0-ix86-MacOSX-allegro/pvs-patches/patch-20210715a.lisp`<br/>`/Users/mmoscato/pvs/7.1.0-ix86-MacOSX-allegro/pvs-patches/patch-20210715.lisp`<br/>`/Users/mmoscato/pvs/7.1.0-ix86-MacOSX-allegro/pvs-patches/patch-20210707.lisp`<br/>`/Users/mmoscato/pvs/7.1.0-ix86-MacOSX-allegro/pvs-patches/patch-20210706.lisp`<br/>`/Users/mmoscato/pvs/7.1.0-ix86-MacOSX-allegro/pvs-patches/patch-20210511.lisp`|
