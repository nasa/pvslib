# Summary for `pvsio_utils/PVSioCSV`
Run started at 19:50:50 11/24/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **43**   | **43**    | **43**    | **0**  | **2.808 s**   |
|top|0|0|0|0|0.000|
|csv_utils|6|6|6|0|0.284|
|csv_writer_def|1|1|1|0|0.028|
|csv_reader|31|31|31|0|2.281|
|csv_writer|3|3|3|0|0.129|
|csv_writerow|2|2|2|0|0.086|
## Detailed Summary 
## `top`
No formula declaration found.
## `csv_utils`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|strsplit_with_qchar_rec_TCC1|✅ proved - complete|shostak|0.032|
|strsplit_with_qchar_rec_TCC2|✅ proved - incomplete|shostak|0.013|
|strsplit_with_qchar_rec_TCC3|✅ proved - complete|shostak|0.100|
|strsplit_with_qchar_rec_TCC4|✅ proved - complete|shostak|0.065|
|strsplit_with_qchar_rec_TCC5|✅ proved - complete|shostak|0.046|
|strsplit_with_qchar_rec_TCC6|✅ proved - complete|shostak|0.028|

## `csv_writer_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|MSEXCEL_DIALECT_TCC1|✅ proved - complete|shostak|0.028|

## `csv_reader`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|CSVDataFromSpec_TCC1|✅ proved - complete|shostak|0.010|
|CSVDataFromSpec_TCC2|✅ proved - complete|shostak|0.204|
|getField_TCC1|✅ proved - complete|shostak|0.000|
|getField_TCC2|✅ proved - complete|shostak|0.036|
|csv_data_from_spec_field_bool|✅ proved - complete|shostak|0.056|
|csv_data_from_spec_field_bool_OR_null|✅ proved - complete|shostak|0.081|
|csv_data_from_spec_field_rat|✅ proved - complete|shostak|0.057|
|csv_data_from_spec_field_rat_OR_null|✅ proved - complete|shostak|0.067|
|csv_data_from_spec_field_dec|✅ proved - complete|shostak|0.057|
|csv_data_from_spec_field_dec_OR_null|✅ proved - complete|shostak|0.068|
|csv_data_from_spec_field_int|✅ proved - complete|shostak|0.048|
|csv_data_from_spec_field_int_OR_null|✅ proved - complete|shostak|0.068|
|csv_data_from_spec_field_str|✅ proved - complete|shostak|0.048|
|csv_data_from_spec_field_str_OR_null|✅ proved - complete|shostak|0.068|
|processCSVField_TCC1|✅ proved - complete|shostak|0.049|
|processCSVField_TCC2|✅ proved - complete|shostak|0.048|
|processCSVField_TCC3|✅ proved - complete|shostak|0.038|
|processCSVField_TCC4|✅ proved - complete|shostak|0.086|
|processCSVField_TCC5|✅ proved - complete|shostak|0.210|
|processCSVField_TCC6|✅ proved - complete|shostak|0.098|
|processCSVField_TCC7|✅ proved - complete|shostak|0.075|
|processCSVField_TCC8|✅ proved - complete|shostak|0.076|
|processCSVLine_TCC1|✅ proved - complete|shostak|0.045|
|processCSVLine_TCC2|✅ proved - complete|shostak|0.038|
|processCSVLine_TCC3|✅ proved - complete|shostak|0.030|
|processCSVLine_TCC4|✅ proved - complete|shostak|0.089|
|processCSVLine_TCC5|✅ proved - complete|shostak|0.076|
|processCSVLine_TCC6|✅ proved - complete|shostak|0.238|
|processCSVLine_TCC7|✅ proved - complete|shostak|0.017|
|readCSVRecordln_TCC1|✅ proved - incomplete|shostak|0.190|
|readCSV_TCC1|✅ proved - complete|shostak|0.010|

## `csv_writer`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|toString_TCC1|✅ proved - incomplete|shostak|0.000|
|writeCSV_TCC1|✅ proved - complete|shostak|0.010|
|writeCSV_TCC2|✅ proved - incomplete|shostak|0.119|

## `csv_writerow`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|write_rows_TCC1|✅ proved - complete|shostak|0.010|
|write_rows_TCC2|✅ proved - complete|shostak|0.076|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Mac OS X (Intel)] (Nov 14, 2020 23:13)|
| Patch Version| n/a|
| Library Path| `/Applications/pvs-7.1.0/pvslib/`<br/>`/Applications/pvs-7.1.0/lib/`<br/>`/Applications/pvs-7.1.0/pvslib/float/`<br/>`/Applications/pvs-7.1.0/pvslib/pvsio_utils/`|
| Loaded Patches | `/Applications/pvs-7.1.0/pvslib/.pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230712-static-update.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230710-tcc-gen.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230707-defattach.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230706-extrategies.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210323-wish.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210225-cl2pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210715a.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210715.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210707.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210706.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210511.lisp`|
