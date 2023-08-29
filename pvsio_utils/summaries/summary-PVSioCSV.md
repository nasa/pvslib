# Summary for `PVSioCSV`
Run started at 22:53:0 8/28/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **43**   | **43**    | **43**    | **0**  | **4.230 s**   |
|top|0|0|0|0|0.000|
|csv_utils|6|6|6|0|0.441|
|csv_writer_def|1|1|1|0|0.040|
|csv_reader|31|31|31|0|3.430|
|csv_writer|3|3|3|0|0.196|
|csv_writerow|2|2|2|0|0.123|
## Detailed Summary 
## `top`
No formula declaration found.
## `csv_utils`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|strsplit_with_qchar_rec_TCC1|✅ proved - complete|shostak|0.051|
|strsplit_with_qchar_rec_TCC2|✅ proved - incomplete|shostak|0.022|
|strsplit_with_qchar_rec_TCC3|✅ proved - complete|shostak|0.145|
|strsplit_with_qchar_rec_TCC4|✅ proved - complete|shostak|0.112|
|strsplit_with_qchar_rec_TCC5|✅ proved - complete|shostak|0.056|
|strsplit_with_qchar_rec_TCC6|✅ proved - complete|shostak|0.055|

## `csv_writer_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|MSEXCEL_DIALECT_TCC1|✅ proved - complete|shostak|0.040|

## `csv_reader`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|CSVDataFromSpec_TCC1|✅ proved - complete|shostak|0.010|
|CSVDataFromSpec_TCC2|✅ proved - complete|shostak|0.307|
|getField_TCC1|✅ proved - complete|shostak|0.010|
|getField_TCC2|✅ proved - complete|shostak|0.044|
|csv_data_from_spec_field_bool|✅ proved - complete|shostak|0.093|
|csv_data_from_spec_field_bool_OR_null|✅ proved - complete|shostak|0.129|
|csv_data_from_spec_field_rat|✅ proved - complete|shostak|0.083|
|csv_data_from_spec_field_rat_OR_null|✅ proved - complete|shostak|0.097|
|csv_data_from_spec_field_dec|✅ proved - complete|shostak|0.088|
|csv_data_from_spec_field_dec_OR_null|✅ proved - complete|shostak|0.096|
|csv_data_from_spec_field_int|✅ proved - complete|shostak|0.088|
|csv_data_from_spec_field_int_OR_null|✅ proved - complete|shostak|0.098|
|csv_data_from_spec_field_str|✅ proved - complete|shostak|0.068|
|csv_data_from_spec_field_str_OR_null|✅ proved - complete|shostak|0.088|
|processCSVField_TCC1|✅ proved - complete|shostak|0.078|
|processCSVField_TCC2|✅ proved - complete|shostak|0.058|
|processCSVField_TCC3|✅ proved - complete|shostak|0.076|
|processCSVField_TCC4|✅ proved - complete|shostak|0.143|
|processCSVField_TCC5|✅ proved - complete|shostak|0.320|
|processCSVField_TCC6|✅ proved - complete|shostak|0.155|
|processCSVField_TCC7|✅ proved - complete|shostak|0.114|
|processCSVField_TCC8|✅ proved - complete|shostak|0.095|
|processCSVLine_TCC1|✅ proved - complete|shostak|0.065|
|processCSVLine_TCC2|✅ proved - complete|shostak|0.068|
|processCSVLine_TCC3|✅ proved - complete|shostak|0.048|
|processCSVLine_TCC4|✅ proved - complete|shostak|0.123|
|processCSVLine_TCC5|✅ proved - complete|shostak|0.116|
|processCSVLine_TCC6|✅ proved - complete|shostak|0.364|
|processCSVLine_TCC7|✅ proved - complete|shostak|0.017|
|readCSVRecordln_TCC1|✅ proved - incomplete|shostak|0.284|
|readCSV_TCC1|✅ proved - complete|shostak|0.007|

## `csv_writer`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|toString_TCC1|✅ proved - incomplete|shostak|0.010|
|writeCSV_TCC1|✅ proved - complete|shostak|0.010|
|writeCSV_TCC2|✅ proved - incomplete|shostak|0.176|

## `csv_writerow`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|write_rows_TCC1|✅ proved - complete|shostak|0.017|
|write_rows_TCC2|✅ proved - complete|shostak|0.106|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/PVS-7.1/nasalib/pvsio_utils/`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/float/`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/`<br/>`/home/cmunoz/local/PVS-7.1/lib/`|
| Loaded Patches | `/home/cmunoz/.pvs.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20230712-static-update.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20230710-tcc-gen.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20230707-defattach.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20230706-extrategies.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`|
