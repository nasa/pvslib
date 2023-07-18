# Summary for `PVSioChecker`
Run started at 23:19:51 7/17/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **74**   | **74**    | **74**    | **0**  | **7.932 s**   |
|top|0|0|0|0|0.000|
|is_prime|1|1|1|0|0.024|
|time_fun|1|1|1|0|0.032|
|time_exec|0|0|0|0|0.000|
|time_examples|0|0|0|0|0.000|
|pathname|1|1|1|0|0.020|
|pathname_examples|0|0|0|0|0.000|
|str_util|14|14|14|0|0.682|
|str_util_examples|1|1|1|0|0.040|
|std_syscall|0|0|0|0|0.000|
|std_syscall_examples|0|0|0|0|0.000|
|std_gvars_names|3|3|3|0|0.067|
|std_gvars|0|0|0|0|0.000|
|gvars_examples|0|0|0|0|0.000|
|pvsio_checker|13|13|13|0|1.955|
|prime_check|0|0|0|0|0.000|
|csv_writer_def|1|1|1|0|0.040|
|csv_reader|30|30|30|0|3.407|
|csv_writer|3|3|3|0|0.201|
|csv_writerow|2|2|2|0|0.136|
|csv_examples|4|4|4|0|1.328|
## Detailed Summary 
## `top`
No formula declaration found.
## `is_prime`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|is_prime?_TCC1|✅ proved - complete|shostak|0.024|

## `time_fun`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|hms_TCC1|✅ proved - complete|shostak|0.032|

## `time_exec`
No formula declaration found.
## `time_examples`
No formula declaration found.
## `pathname`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|pathname_dir_TCC1|✅ proved - complete|shostak|0.020|

## `pathname_examples`
No formula declaration found.
## `str_util`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|right_quotedstring?_TCC1|✅ proved - complete|shostak|0.030|
|quotedstring?_TCC1|✅ proved - complete|shostak|0.034|
|unquote_string_TCC1|✅ proved - complete|shostak|0.040|
|str_split_with_qchar_rec_TCC1|✅ proved - complete|shostak|0.023|
|str_split_with_qchar_rec_TCC2|✅ proved - complete|shostak|0.086|
|str_split_with_qchar_rec_TCC3|✅ proved - complete|shostak|0.121|
|str_split_with_qchar_rec_TCC4|✅ proved - complete|shostak|0.106|
|str_split_with_qchar_rec_TCC5|✅ proved - complete|shostak|0.066|
|str_split_with_qchar_rec_TCC6|✅ proved - complete|shostak|0.048|
|print_rat_TCC1|✅ proved - complete|shostak|0.020|
|charcode_j|✅ proved - complete|shostak|0.008|
|doublequote_j|✅ proved - complete|shostak|0.010|
|singlequote_j|✅ proved - complete|shostak|0.050|
|backquote_j|✅ proved - complete|shostak|0.040|

## `str_util_examples`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|ex2_TCC1|✅ proved - complete|shostak|0.040|

## `std_syscall`
No formula declaration found.
## `std_syscall_examples`
No formula declaration found.
## `std_gvars_names`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|defined_gvars_types_TCC1|✅ proved - complete|shostak|0.027|
|defined_gvars_types_TCC2|✅ proved - complete|shostak|0.030|
|defined_gvars_types_TCC3|✅ proved - complete|shostak|0.010|

## `std_gvars`
No formula declaration found.
## `gvars_examples`
No formula declaration found.
## `pvsio_checker`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|print_etc_TCC1|✅ proved - incomplete|shostak|0.098|
|check_list_it_TCC1|✅ proved - complete|shostak|0.020|
|check_list_it_TCC2|✅ proved - complete|shostak|0.017|
|check_list_it_TCC3|✅ proved - complete|shostak|0.020|
|check_list_it_TCC4|✅ proved - complete|shostak|0.020|
|check_list_it_TCC5|✅ proved - complete|shostak|0.020|
|check_list_it_TCC6|✅ proved - complete|shostak|0.017|
|check_list_it_TCC7|✅ proved - complete|shostak|0.648|
|check_list_it_TCC8|✅ proved - complete|shostak|0.614|
|check_list_it_TCC9|✅ proved - complete|shostak|0.345|
|check_list_it_TCC10|✅ proved - complete|shostak|0.028|
|check_list_it_TCC11|✅ proved - complete|shostak|0.020|
|check_list_it_TCC12|✅ proved - complete|shostak|0.088|

## `prime_check`
No formula declaration found.
## `csv_writer_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|MSEXCEL_DIALECT_TCC1|✅ proved - complete|shostak|0.040|

## `csv_reader`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|CSVDataFromSpec_TCC1|✅ proved - complete|shostak|0.010|
|CSVDataFromSpec_TCC2|✅ proved - complete|shostak|0.293|
|getField_TCC1|✅ proved - complete|shostak|0.016|
|getField_TCC2|✅ proved - complete|shostak|0.050|
|csv_data_from_spec_field_bool|✅ proved - complete|shostak|0.096|
|csv_data_from_spec_field_bool_OR_null|✅ proved - complete|shostak|0.110|
|csv_data_from_spec_field_rat|✅ proved - complete|shostak|0.086|
|csv_data_from_spec_field_rat_OR_null|✅ proved - complete|shostak|0.107|
|csv_data_from_spec_field_dec|✅ proved - complete|shostak|0.080|
|csv_data_from_spec_field_dec_OR_null|✅ proved - complete|shostak|0.106|
|csv_data_from_spec_field_int|✅ proved - complete|shostak|0.087|
|csv_data_from_spec_field_int_OR_null|✅ proved - complete|shostak|0.100|
|csv_data_from_spec_field_str|✅ proved - complete|shostak|0.078|
|csv_data_from_spec_field_str_OR_null|✅ proved - complete|shostak|0.097|
|processCSVField_TCC1|✅ proved - complete|shostak|0.080|
|processCSVField_TCC2|✅ proved - complete|shostak|0.058|
|processCSVField_TCC3|✅ proved - complete|shostak|0.068|
|processCSVField_TCC4|✅ proved - complete|shostak|0.137|
|processCSVField_TCC5|✅ proved - complete|shostak|0.324|
|processCSVField_TCC6|✅ proved - complete|shostak|0.147|
|processCSVField_TCC7|✅ proved - complete|shostak|0.117|
|processCSVField_TCC8|✅ proved - complete|shostak|0.107|
|processCSVLine_TCC1|✅ proved - complete|shostak|0.067|
|processCSVLine_TCC2|✅ proved - complete|shostak|0.060|
|processCSVLine_TCC3|✅ proved - complete|shostak|0.067|
|processCSVLine_TCC4|✅ proved - complete|shostak|0.138|
|processCSVLine_TCC5|✅ proved - complete|shostak|0.127|
|processCSVLine_TCC6|✅ proved - complete|shostak|0.381|
|processCSVLine_TCC7|✅ proved - complete|shostak|0.027|
|readCSVRecordln_TCC1|✅ proved - complete|shostak|0.186|

## `csv_writer`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|toString_TCC1|✅ proved - complete|shostak|0.020|
|writeCSV_TCC1|✅ proved - complete|shostak|0.016|
|writeCSV_TCC2|✅ proved - complete|shostak|0.165|

## `csv_writerow`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|write_rows_TCC1|✅ proved - complete|shostak|0.020|
|write_rows_TCC2|✅ proved - complete|shostak|0.116|

## `csv_examples`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|NewDialect_TCC1|✅ proved - complete|shostak|0.040|
|ex2c_TCC1|✅ proved - complete|shostak|0.066|
|ex2c_TCC2|✅ proved - complete|shostak|0.421|
|ex2c_TCC3|✅ proved - complete|shostak|0.801|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib/float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230712-static-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230707-defattach.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210219-extratregies.lisp`|
