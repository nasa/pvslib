# Summary for `pvsio_utils/PVSioCSV`
Run started at 0:17:31 9/20/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **43**   | **43**    | **43**    | **0**  | **4.407 s**   |
|top|0|0|0|0|0.000|
|csv_utils|6|6|6|0|0.569|
|csv_writer_def|1|1|1|0|0.067|
|csv_reader|31|31|31|0|3.451|
|csv_writer|3|3|3|0|0.198|
|csv_writerow|2|2|2|0|0.122|
## Detailed Summary 
## `top`
No formula declaration found.
## `csv_utils`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|strsplit_with_qchar_rec_TCC1|✅ proved - complete|shostak|0.086|
|strsplit_with_qchar_rec_TCC2|✅ proved - incomplete|shostak|0.026|
|strsplit_with_qchar_rec_TCC3|✅ proved - complete|shostak|0.183|
|strsplit_with_qchar_rec_TCC4|✅ proved - complete|shostak|0.133|
|strsplit_with_qchar_rec_TCC5|✅ proved - complete|shostak|0.074|
|strsplit_with_qchar_rec_TCC6|✅ proved - complete|shostak|0.067|

## `csv_writer_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|MSEXCEL_DIALECT_TCC1|✅ proved - complete|shostak|0.067|

## `csv_reader`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|CSVDataFromSpec_TCC1|✅ proved - complete|shostak|0.000|
|CSVDataFromSpec_TCC2|✅ proved - complete|shostak|0.341|
|getField_TCC1|✅ proved - complete|shostak|0.010|
|getField_TCC2|✅ proved - complete|shostak|0.045|
|csv_data_from_spec_field_bool|✅ proved - complete|shostak|0.096|
|csv_data_from_spec_field_bool_OR_null|✅ proved - complete|shostak|0.104|
|csv_data_from_spec_field_rat|✅ proved - complete|shostak|0.087|
|csv_data_from_spec_field_rat_OR_null|✅ proved - complete|shostak|0.107|
|csv_data_from_spec_field_dec|✅ proved - complete|shostak|0.086|
|csv_data_from_spec_field_dec_OR_null|✅ proved - complete|shostak|0.107|
|csv_data_from_spec_field_int|✅ proved - complete|shostak|0.079|
|csv_data_from_spec_field_int_OR_null|✅ proved - complete|shostak|0.098|
|csv_data_from_spec_field_str|✅ proved - complete|shostak|0.078|
|csv_data_from_spec_field_str_OR_null|✅ proved - complete|shostak|0.098|
|processCSVField_TCC1|✅ proved - complete|shostak|0.068|
|processCSVField_TCC2|✅ proved - complete|shostak|0.058|
|processCSVField_TCC3|✅ proved - complete|shostak|0.068|
|processCSVField_TCC4|✅ proved - complete|shostak|0.132|
|processCSVField_TCC5|✅ proved - complete|shostak|0.322|
|processCSVField_TCC6|✅ proved - complete|shostak|0.154|
|processCSVField_TCC7|✅ proved - complete|shostak|0.107|
|processCSVField_TCC8|✅ proved - complete|shostak|0.097|
|processCSVLine_TCC1|✅ proved - complete|shostak|0.074|
|processCSVLine_TCC2|✅ proved - complete|shostak|0.058|
|processCSVLine_TCC3|✅ proved - complete|shostak|0.058|
|processCSVLine_TCC4|✅ proved - complete|shostak|0.125|
|processCSVLine_TCC5|✅ proved - complete|shostak|0.114|
|processCSVLine_TCC6|✅ proved - complete|shostak|0.370|
|processCSVLine_TCC7|✅ proved - complete|shostak|0.016|
|readCSVRecordln_TCC1|✅ proved - incomplete|shostak|0.288|
|readCSV_TCC1|✅ proved - complete|shostak|0.006|

## `csv_writer`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|toString_TCC1|✅ proved - incomplete|shostak|0.010|
|writeCSV_TCC1|✅ proved - complete|shostak|0.010|
|writeCSV_TCC2|✅ proved - incomplete|shostak|0.178|

## `csv_writerow`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|write_rows_TCC1|✅ proved - complete|shostak|0.020|
|write_rows_TCC2|✅ proved - complete|shostak|0.102|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib/pvsio_utils/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230712-static-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230710-tcc-gen.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230707-defattach.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230706-extrategies.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`|
