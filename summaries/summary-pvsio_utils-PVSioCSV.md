# Summary for `pvsio_utils/PVSioCSV`
Run started at 12:5:28 8/22/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **42**   | **42**    | **42**    | **0**  | **4.220 s**   |
|top|0|0|0|0|0.000|
|csv_util|6|6|6|0|0.425|
|csv_writer_def|1|1|1|0|0.049|
|csv_reader|30|30|30|0|3.427|
|csv_writer|3|3|3|0|0.195|
|csv_writerow|2|2|2|0|0.124|
## Detailed Summary 
## `top`
No formula declaration found.
## `csv_util`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|strsplit_with_qchar_rec_TCC1|✅ proved - complete|shostak|0.050|
|strsplit_with_qchar_rec_TCC2|✅ proved - incomplete|shostak|0.012|
|strsplit_with_qchar_rec_TCC3|✅ proved - complete|shostak|0.137|
|strsplit_with_qchar_rec_TCC4|✅ proved - complete|shostak|0.112|
|strsplit_with_qchar_rec_TCC5|✅ proved - complete|shostak|0.056|
|strsplit_with_qchar_rec_TCC6|✅ proved - complete|shostak|0.058|

## `csv_writer_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|MSEXCEL_DIALECT_TCC1|✅ proved - complete|shostak|0.049|

## `csv_reader`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|CSVDataFromSpec_TCC1|✅ proved - complete|shostak|0.000|
|CSVDataFromSpec_TCC2|✅ proved - complete|shostak|0.316|
|getField_TCC1|✅ proved - complete|shostak|0.010|
|getField_TCC2|✅ proved - complete|shostak|0.046|
|csv_data_from_spec_field_bool|✅ proved - complete|shostak|0.097|
|csv_data_from_spec_field_bool_OR_null|✅ proved - complete|shostak|0.102|
|csv_data_from_spec_field_rat|✅ proved - complete|shostak|0.077|
|csv_data_from_spec_field_rat_OR_null|✅ proved - complete|shostak|0.096|
|csv_data_from_spec_field_dec|✅ proved - complete|shostak|0.088|
|csv_data_from_spec_field_dec_OR_null|✅ proved - complete|shostak|0.110|
|csv_data_from_spec_field_int|✅ proved - complete|shostak|0.085|
|csv_data_from_spec_field_int_OR_null|✅ proved - complete|shostak|0.098|
|csv_data_from_spec_field_str|✅ proved - complete|shostak|0.068|
|csv_data_from_spec_field_str_OR_null|✅ proved - complete|shostak|0.097|
|processCSVField_TCC1|✅ proved - complete|shostak|0.078|
|processCSVField_TCC2|✅ proved - complete|shostak|0.058|
|processCSVField_TCC3|✅ proved - complete|shostak|0.066|
|processCSVField_TCC4|✅ proved - complete|shostak|0.144|
|processCSVField_TCC5|✅ proved - complete|shostak|0.320|
|processCSVField_TCC6|✅ proved - complete|shostak|0.164|
|processCSVField_TCC7|✅ proved - complete|shostak|0.115|
|processCSVField_TCC8|✅ proved - complete|shostak|0.098|
|processCSVLine_TCC1|✅ proved - complete|shostak|0.064|
|processCSVLine_TCC2|✅ proved - complete|shostak|0.066|
|processCSVLine_TCC3|✅ proved - complete|shostak|0.048|
|processCSVLine_TCC4|✅ proved - complete|shostak|0.126|
|processCSVLine_TCC5|✅ proved - complete|shostak|0.124|
|processCSVLine_TCC6|✅ proved - complete|shostak|0.355|
|processCSVLine_TCC7|✅ proved - complete|shostak|0.027|
|readCSVRecordln_TCC1|✅ proved - incomplete|shostak|0.284|

## `csv_writer`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|toString_TCC1|✅ proved - incomplete|shostak|0.000|
|writeCSV_TCC1|✅ proved - complete|shostak|0.020|
|writeCSV_TCC2|✅ proved - incomplete|shostak|0.175|

## `csv_writerow`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|write_rows_TCC1|✅ proved - complete|shostak|0.020|
|write_rows_TCC2|✅ proved - complete|shostak|0.104|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/PVS-7.1/nasalib/pvsio_utils/`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/float/`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/`<br/>`/home/cmunoz/local/PVS-7.1/lib/`|
| Loaded Patches | `/home/cmunoz/.pvs.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20230712-static-update.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20230710-tcc-gen.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20230707-defattach.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20230706-extrategies.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`|
