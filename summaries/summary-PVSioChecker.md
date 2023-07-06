# Summary for `PVSioChecker`
Run started at 3:2:14 7/4/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **38**   | **38**    | **38**    | **0**  | **4.850 s**   |
|top|0|0|0|0|0.000|
|time_fun|1|1|1|0|0.060|
|pathname|1|1|1|0|0.018|
|pvsio_checker|13|13|13|0|2.136|
|is_prime|1|1|1|0|0.010|
|prime_check|0|0|0|0|0.000|
|str_util|0|0|0|0|0.000|
|csv_writer|1|1|1|0|0.050|
|csv_writerow|0|0|0|0|0.000|
|csv_reader|21|21|21|0|2.576|
## Detailed Summary 
## `top`
No formula declaration found.
## `time_fun`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|hms_TCC1|✅ proved - complete|shostak|0.060|

## `pathname`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|pathname_dir_TCC1|✅ proved - complete|shostak|0.018|

## `pvsio_checker`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|print_etc_TCC1|✅ proved - incomplete|shostak|0.090|
|check_list_it_TCC1|✅ proved - complete|shostak|0.016|
|check_list_it_TCC2|✅ proved - complete|shostak|0.040|
|check_list_it_TCC3|✅ proved - complete|shostak|0.030|
|check_list_it_TCC4|✅ proved - complete|shostak|0.031|
|check_list_it_TCC5|✅ proved - complete|shostak|0.030|
|check_list_it_TCC6|✅ proved - complete|shostak|0.020|
|check_list_it_TCC7|✅ proved - complete|shostak|0.693|
|check_list_it_TCC8|✅ proved - complete|shostak|0.659|
|check_list_it_TCC9|✅ proved - complete|shostak|0.379|
|check_list_it_TCC10|✅ proved - complete|shostak|0.030|
|check_list_it_TCC11|✅ proved - complete|shostak|0.018|
|check_list_it_TCC12|✅ proved - complete|shostak|0.100|

## `is_prime`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|is_prime?_TCC1|✅ proved - complete|shostak|0.010|

## `prime_check`
No formula declaration found.
## `str_util`
No formula declaration found.
## `csv_writer`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|MSEXCEL_DIALECT_TCC1|✅ proved - complete|shostak|0.050|

## `csv_writerow`
No formula declaration found.
## `csv_reader`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|CSVDataFromSpec_TCC1|✅ proved - complete|shostak|0.025|
|CSVDataFromSpec_TCC2|✅ proved - complete|shostak|0.020|
|CSVDataFromSpec_TCC3|✅ proved - complete|shostak|0.016|
|CSVDataFromSpec_TCC4|✅ proved - complete|shostak|0.615|
|getField_TCC1|✅ proved - complete|shostak|0.010|
|getField_TCC2|✅ proved - complete|shostak|0.086|
|csv_data_from_spec_field_rat|✅ proved - complete|shostak|0.060|
|csv_data_from_spec_field_int|✅ proved - complete|shostak|0.066|
|csv_data_from_spec_field_str|✅ proved - complete|shostak|0.050|
|processCSVLine_TCC1|✅ proved - complete|shostak|0.057|
|processCSVLine_TCC2|✅ proved - complete|shostak|0.040|
|processCSVLine_TCC3|✅ proved - complete|shostak|0.037|
|processCSVLine_TCC4|✅ proved - complete|shostak|0.107|
|processCSVLine_TCC5|✅ proved - complete|shostak|0.097|
|processCSVLine_TCC6|✅ proved - complete|shostak|0.704|
|processCSVLine_TCC7|✅ proved - complete|shostak|0.020|
|readCSVRecord_TCC1|✅ proved - complete|shostak|0.146|
|ex1_TCC1|✅ proved - complete|shostak|0.040|
|ex1_TCC2|✅ proved - complete|shostak|0.097|
|ex1_TCC3|✅ proved - complete|shostak|0.146|
|ex1_TCC4|✅ proved - complete|shostak|0.137|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib//float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-pvsio-fix.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210219-extratregies.lisp`|
