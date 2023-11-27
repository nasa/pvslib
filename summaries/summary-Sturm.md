# Summary for `Sturm`
Run started at 18:47:53 11/24/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **350**   | **350**    | **350**    | **0**  | **4:50.072 s**   |
|top|0|0|0|0|0.000|
|compute_sturm|59|59|59|0|1:23.493|
|sturm|30|30|30|0|36.550|
|polynomial_division|12|12|12|0|8.748|
|number_sign_changes|35|35|35|0|15.911|
|gcd_coeff|39|39|39|0|5.775|
|remainder_sequence|31|31|31|0|7.571|
|polynomial_pseudo_divide|28|28|28|0|1:37.881|
|clear_denominators|35|35|35|0|4.780|
|sturmsquarefree|19|19|19|0|21.587|
|polylist|59|59|59|0|7.573|
|poly_strategy|3|3|3|0|0.203|
|strategies|0|0|0|0|0.000|
## Detailed Summary 
## `top`
No formula declaration found.
## `compute_sturm`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|finite_bij_real_remove_one|✅ proved - incomplete|shostak|0.266|
|finite_bij_real_remove_two|✅ proved - incomplete|shostak|0.432|
|computed_sturm_spec_TCC1|✅ proved - complete|shostak|0.060|
|computed_sturm_spec_TCC2|✅ proved - incomplete|shostak|0.057|
|computed_sturm_spec_TCC3|✅ proved - incomplete|shostak|0.100|
|computed_sturm_spec_TCC4|✅ proved - incomplete|shostak|0.158|
|computed_sturm_spec_TCC5|✅ proved - incomplete|shostak|0.170|
|computed_sturm_spec|✅ proved - incomplete|shostak|6.938|
|Eq_computed_remainder?_TCC1|✅ proved - complete|shostak|0.010|
|Eq_computed_remainder?_TCC2|✅ proved - complete|shostak|0.040|
|Eq_computed_remainder?_TCC3|✅ proved - complete|shostak|0.010|
|roots_closed_int_TCC1|✅ proved - incomplete|shostak|0.100|
|roots_closed_int_TCC2|✅ proved - incomplete|shostak|0.165|
|roots_closed_int_TCC3|✅ proved - incomplete|shostak|0.150|
|roots_closed_int_TCC4|✅ proved - incomplete|shostak|0.177|
|roots_closed_int_TCC5|✅ proved - incomplete|shostak|0.513|
|roots_closed_int_TCC6|✅ proved - incomplete|shostak|0.931|
|roots_closed_int_def_truetrue|✅ proved - incomplete|shostak|26.566|
|roots_closed_int_def_falsetrue|✅ proved - incomplete|shostak|12.519|
|roots_closed_int_def_truefalse|✅ proved - incomplete|shostak|15.701|
|roots_closed_int_def_falsefalse|✅ proved - incomplete|shostak|3.761|
|roots_closed_int_def|✅ proved - incomplete|shostak|0.240|
|number_roots_interval_TCC1|✅ proved - incomplete|shostak|0.080|
|number_roots_interval_TCC2|✅ proved - incomplete|shostak|0.200|
|number_roots_interval_def|✅ proved - incomplete|shostak|0.870|
|always_nonnegative_int_TCC1|✅ proved - incomplete|shostak|0.040|
|always_nonnegative_int_TCC2|✅ proved - incomplete|shostak|0.115|
|always_nonnegative_int_TCC3|✅ proved - incomplete|shostak|0.020|
|always_nonnegative_int_TCC4|✅ proved - incomplete|shostak|0.080|
|always_nonnegative_int_TCC5|✅ proved - incomplete|shostak|0.066|
|always_nonnegative_int_TCC6|✅ proved - incomplete|shostak|0.105|
|always_nonnegative_int_TCC7|✅ proved - incomplete|shostak|0.120|
|always_nonnegative_int_TCC8|✅ proved - incomplete|shostak|0.108|
|always_nonnegative_TCC1|✅ proved - incomplete|shostak|0.020|
|always_nonnegative_TCC2|✅ proved - complete|shostak|0.040|
|always_nonnegative_TCC3|✅ proved - incomplete|shostak|0.070|
|always_nonnegative_TCC4|✅ proved - incomplete|shostak|0.080|
|always_nonnegative_TCC5|✅ proved - incomplete|shostak|0.351|
|always_nonnegative_TCC6|✅ proved - incomplete|shostak|0.351|
|always_nonnegative_TCC7|✅ proved - incomplete|shostak|0.351|
|always_nonnegative_def|✅ proved - incomplete|shostak|2.928|
|rel_disjunction|✅ proved - complete|shostak|0.020|
|real_order_scal_pos|✅ proved - incomplete|shostak|0.385|
|real_order_scal_pos_0|✅ proved - incomplete|shostak|0.047|
|compute_poly_sat_TCC1|✅ proved - complete|shostak|0.010|
|compute_poly_sat_TCC2|✅ proved - complete|shostak|0.010|
|compute_poly_sat_TCC3|✅ proved - incomplete|shostak|0.090|
|compute_poly_sat_def|✅ proved - incomplete|shostak|2.367|
|compute_poly_sat_rational_TCC1|✅ proved - incomplete|shostak|0.040|
|compute_poly_sat_rational_def|✅ proved - incomplete|shostak|0.533|
|compute_poly_mono_basic_TCC1|✅ proved - complete|shostak|0.049|
|compute_poly_mono_basic_TCC2|✅ proved - incomplete|shostak|0.030|
|compute_poly_mono_basic_TCC3|✅ proved - complete|shostak|0.040|
|compute_poly_mono_basic_TCC4|✅ proved - incomplete|shostak|0.030|
|compute_poly_mono_basic_TCC5|✅ proved - complete|shostak|0.040|
|compute_poly_mono_basic_TCC6|✅ proved - incomplete|shostak|0.030|
|compute_poly_mono_basic_def|✅ proved - incomplete|shostak|4.673|
|poly_non_constant_real_int|✅ proved - incomplete|shostak|0.040|
|mono_def|✅ proved - incomplete|shostak|0.000|

## `sturm`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|constructed_sturm_sequence?_TCC1|✅ proved - complete|shostak|0.020|
|constructed_sturm_sequence?_TCC2|✅ proved - complete|shostak|0.050|
|constructed_sturm_sequence?_TCC3|✅ proved - complete|shostak|0.040|
|constructed_sturm_seq_repeated_root|✅ proved - incomplete|shostak|0.691|
|constructed_sturm_seq_repeated_root_mth|✅ proved - incomplete|shostak|2.723|
|constructed_sturm_seq_repeated_root_struct_TCC1|✅ proved - incomplete|shostak|0.436|
|constructed_sturm_seq_repeated_root_struct_TCC2|✅ proved - incomplete|shostak|0.599|
|constructed_sturm_seq_repeated_root_struct_TCC3|✅ proved - incomplete|shostak|0.828|
|constructed_sturm_seq_repeated_root_struct_TCC4|✅ proved - incomplete|shostak|0.820|
|constructed_sturm_seq_repeated_root_struct|✅ proved - incomplete|shostak|4.465|
|constructed_sturm_seq_first_signs_eq|✅ proved - incomplete|shostak|5.023|
|sturm_lem_no_roots|✅ proved - incomplete|shostak|0.694|
|constructed_sturm_lem_one_simple_root_TCC1|✅ proved - incomplete|shostak|0.153|
|constructed_sturm_lem_one_simple_root|✅ proved - incomplete|shostak|3.764|
|constructed_sturm_lem_one_multi_root_TCC1|✅ proved - incomplete|shostak|0.250|
|constructed_sturm_lem_one_multi_root|✅ proved - incomplete|shostak|1.993|
|constructed_sturm_lem_edge_root_TCC1|✅ proved - incomplete|shostak|0.159|
|constructed_sturm_lem_edge_root|✅ proved - incomplete|shostak|2.517|
|constructed_sturm_roots_between_enum_TCC1|✅ proved - incomplete|shostak|0.020|
|constructed_sturm_roots_between_enum_TCC2|✅ proved - incomplete|shostak|0.010|
|constructed_sturm_roots_between_enum|✅ proved - incomplete|shostak|1.103|
|constructed_sturm_lem_no_roots_full_TCC1|✅ proved - incomplete|shostak|0.110|
|constructed_sturm_lem_no_roots_full|✅ proved - incomplete|shostak|0.402|
|sturm_TCC1|✅ proved - incomplete|shostak|0.120|
|sturm|✅ proved - incomplete|shostak|5.644|
|sturm_unbounded_left_TCC1|✅ proved - incomplete|shostak|0.080|
|sturm_unbounded_left|✅ proved - incomplete|shostak|1.913|
|sturm_unbounded_right|✅ proved - incomplete|shostak|1.243|
|sturm_unbounded_TCC1|✅ proved - incomplete|shostak|0.050|
|sturm_unbounded|✅ proved - incomplete|shostak|0.630|

## `polynomial_division`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|poly_divide_TCC1|✅ proved - complete|shostak|0.080|
|poly_divide_TCC2|✅ proved - complete|shostak|0.010|
|poly_divide_TCC3|✅ proved - complete|shostak|0.020|
|poly_divide_TCC4|✅ proved - complete|shostak|0.050|
|poly_divide_TCC5|✅ proved - complete|shostak|0.050|
|poly_divide_TCC6|✅ proved - complete|shostak|0.139|
|poly_divide_TCC7|✅ proved - complete|shostak|0.150|
|poly_divide_TCC8|✅ proved - complete|shostak|0.020|
|poly_divide_TCC9|✅ proved - complete|shostak|0.100|
|poly_divide_def|✅ proved - incomplete|shostak|7.560|
|poly_divide_struct|✅ proved - complete|shostak|0.239|
|poly_divide_lengths|✅ proved - complete|shostak|0.330|

## `number_sign_changes`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|number_sign_changes_TCC1|✅ proved - complete|shostak|0.010|
|number_sign_changes_TCC2|✅ proved - complete|shostak|0.010|
|sign_changes_TCC1|✅ proved - complete|shostak|0.000|
|sign_changes_TCC2|✅ proved - complete|shostak|0.020|
|sign_changes_TCC3|✅ proved - incomplete|shostak|0.040|
|sign_changes_TCC4|✅ proved - incomplete|shostak|0.050|
|sign_changes_TCC5|✅ proved - incomplete|shostak|0.060|
|sign_changes_TCC6|✅ proved - incomplete|shostak|0.102|
|sign_changes_TCC7|✅ proved - incomplete|shostak|0.050|
|sign_changes_TCC8|✅ proved - incomplete|shostak|0.030|
|sign_changes_TCC9|✅ proved - incomplete|shostak|0.110|
|sign_changes_TCC10|✅ proved - incomplete|shostak|0.040|
|sign_changes_TCC11|✅ proved - incomplete|shostak|0.020|
|sign_changes_TCC12|✅ proved - incomplete|shostak|0.085|
|num_sign_changes_def_TCC1|✅ proved - complete|shostak|0.010|
|num_sign_changes_def|✅ proved - incomplete|shostak|0.020|
|number_sign_changes_lastnz_nonzero|✅ proved - incomplete|shostak|0.100|
|number_sign_changes_lastnz|✅ proved - incomplete|shostak|0.010|
|number_sign_changes_eq|✅ proved - incomplete|shostak|0.346|
|number_sign_changes_easy|✅ proved - incomplete|shostak|0.150|
|number_sign_changes_test1|✅ proved - incomplete|shostak|0.170|
|number_sign_changes_test2|✅ proved - incomplete|shostak|0.164|
|number_sign_changes_test3|✅ proved - incomplete|shostak|0.170|
|number_sign_changes_test4|✅ proved - incomplete|shostak|0.140|
|number_sign_changes_test5|✅ proved - incomplete|shostak|0.170|
|number_sign_changes_test6|✅ proved - incomplete|shostak|0.165|
|number_sign_changes_test7|✅ proved - incomplete|shostak|0.180|
|nsc_regular_swap_TCC1|✅ proved - incomplete|shostak|0.050|
|nsc_regular_swap|✅ proved - incomplete|shostak|3.129|
|nsc_edge_diff_TCC1|✅ proved - incomplete|shostak|0.030|
|nsc_edge_diff_TCC2|✅ proved - incomplete|shostak|0.050|
|nsc_edge_diff|✅ proved - incomplete|shostak|3.025|
|nsc_multiroot|✅ proved - incomplete|shostak|1.525|
|nsc_multiroot_full_TCC1|✅ proved - incomplete|shostak|0.040|
|nsc_multiroot_full|✅ proved - incomplete|shostak|5.640|

## `gcd_coeff`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|gcd_coeff_TCC1|✅ proved - incomplete|shostak|0.019|
|gcd_coeff_TCC2|✅ proved - incomplete|shostak|0.062|
|gcd_coeff_TCC3|✅ proved - incomplete|shostak|0.131|
|gcd_coeff_TCC4|✅ proved - incomplete|shostak|0.070|
|gcd_coeff_TCC5|✅ proved - incomplete|shostak|0.118|
|gcd_coeff_TCC6|✅ proved - incomplete|shostak|0.060|
|gcd_coeff_TCC7|✅ proved - incomplete|shostak|0.090|
|gcd_coeff_TCC8|✅ proved - incomplete|shostak|0.197|
|gcd_coeff_TCC9|✅ proved - incomplete|shostak|0.050|
|gcd_coeff_TCC10|✅ proved - incomplete|shostak|0.030|
|gcd_coeff_nonzero|✅ proved - incomplete|shostak|0.030|
|gcd_coeff_zero|✅ proved - incomplete|shostak|0.164|
|descalarize_list_TCC1|✅ proved - incomplete|shostak|0.020|
|descalarize_list_TCC2|✅ proved - incomplete|shostak|0.060|
|descalarize_list_TCC3|✅ proved - incomplete|shostak|0.016|
|descalarize_list_TCC4|✅ proved - incomplete|shostak|0.150|
|descalarize_list_TCC5|✅ proved - incomplete|shostak|0.060|
|descalarize_list_TCC6|✅ proved - incomplete|shostak|0.050|
|descalarize_list_TCC7|✅ proved - incomplete|shostak|0.255|
|primitize_list_TCC1|✅ proved - incomplete|shostak|0.030|
|primitize_list_def_TCC1|✅ proved - incomplete|shostak|0.035|
|primitize_list_def|✅ proved - incomplete|shostak|0.304|
|primitize_zero_list|✅ proved - incomplete|shostak|0.130|
|primitize_list_length|✅ proved - incomplete|shostak|0.020|
|nonzero_version_rec_TCC1|✅ proved - incomplete|shostak|0.075|
|nonzero_version_rec_TCC2|✅ proved - incomplete|shostak|0.020|
|nonzero_version_rec_TCC3|✅ proved - incomplete|shostak|0.020|
|nonzero_version_rec_TCC4|✅ proved - incomplete|shostak|0.040|
|nonzero_version_rec_TCC5|✅ proved - incomplete|shostak|0.040|
|nonzero_version_rec_TCC6|✅ proved - incomplete|shostak|0.508|
|nonzero_version_rec_length_nonzero|✅ proved - incomplete|shostak|0.323|
|nonzero_version_rec_def_TCC1|✅ proved - incomplete|shostak|0.040|
|nonzero_version_rec_def_TCC2|✅ proved - incomplete|shostak|0.055|
|nonzero_version_rec_def|✅ proved - incomplete|shostak|0.949|
|nonzero_version_def_TCC1|✅ proved - incomplete|shostak|0.060|
|nonzero_version_def_TCC2|✅ proved - incomplete|shostak|0.066|
|nonzero_version_def|✅ proved - incomplete|shostak|1.286|
|nonzero_version_length_nz_TCC1|✅ proved - incomplete|shostak|0.012|
|nonzero_version_length_nz|✅ proved - incomplete|shostak|0.130|

## `remainder_sequence`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|is_neg_remainder_list?_TCC1|✅ proved - complete|shostak|0.030|
|is_neg_remainder_list?_TCC2|✅ proved - complete|shostak|0.039|
|is_neg_remainder_list?_TCC3|✅ proved - incomplete|shostak|0.050|
|is_neg_remainder_list?_TCC4|✅ proved - complete|shostak|0.030|
|is_neg_remainder_list?_TCC5|✅ proved - incomplete|shostak|0.106|
|is_neg_remainder_list?_TCC6|✅ proved - incomplete|shostak|0.080|
|is_neg_remainder_list?_TCC7|✅ proved - incomplete|shostak|0.070|
|is_neg_remainder_list?_TCC8|✅ proved - incomplete|shostak|0.097|
|is_neg_remainder_list?_TCC9|✅ proved - incomplete|shostak|0.060|
|is_neg_remainder_list?_TCC10|✅ proved - incomplete|shostak|0.188|
|is_neg_remainder_list?_TCC11|✅ proved - incomplete|shostak|0.140|
|compute_remainder_seq_TCC1|✅ proved - incomplete|shostak|0.628|
|compute_remainder_seq_TCC2|✅ proved - incomplete|shostak|0.613|
|compute_remainder_seq_TCC3|✅ proved - incomplete|shostak|0.170|
|compute_remainder_seq_TCC4|✅ proved - incomplete|shostak|0.659|
|compute_remainder_seq_TCC5|✅ proved - incomplete|shostak|0.284|
|compute_remainder_seq_TCC6|✅ proved - incomplete|shostak|1.854|
|compute_remainder_seq_TCC7|✅ proved - incomplete|shostak|0.120|
|compute_remainder_seq_TCC8|✅ proved - incomplete|shostak|0.014|
|compute_remainder_seq_TCC9|✅ proved - incomplete|shostak|0.010|
|compute_remainder_seq_TCC10|✅ proved - incomplete|shostak|0.020|
|compute_remainder_seq_TCC11|✅ proved - incomplete|shostak|0.140|
|compute_remainder_seq_TCC12|✅ proved - incomplete|shostak|0.140|
|compute_remainder_seq_TCC13|✅ proved - incomplete|shostak|1.004|
|compute_remainder_seq_TCC14|✅ proved - incomplete|shostak|0.495|
|remainder_seq_TCC1|✅ proved - incomplete|shostak|0.260|
|sturm_chain_TCC1|✅ proved - complete|shostak|0.040|
|sturm_chain_TCC2|✅ proved - complete|shostak|0.010|
|remainder_seq_test_TCC1|✅ proved - complete|shostak|0.030|
|remainder_seq_test_TCC2|✅ proved - complete|shostak|0.040|
|remainder_seq_test|✅ proved - incomplete|shostak|0.150|

## `polynomial_pseudo_divide`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|pseudo_div_TCC1|✅ proved - complete|shostak|0.101|
|pseudo_div_TCC2|✅ proved - incomplete|shostak|0.160|
|pseudo_div_TCC3|✅ proved - incomplete|shostak|0.220|
|pseudo_div_TCC4|✅ proved - incomplete|shostak|0.240|
|pseudo_div_TCC5|✅ proved - incomplete|shostak|0.252|
|pseudo_div_TCC6|✅ proved - incomplete|shostak|0.301|
|pseudo_div_TCC7|✅ proved - incomplete|shostak|0.429|
|pseudo_div_TCC8|✅ proved - incomplete|shostak|0.404|
|pseudo_div_TCC9|✅ proved - incomplete|shostak|0.273|
|pseudo_div_TCC10|✅ proved - incomplete|shostak|0.314|
|pseudo_div_TCC11|✅ proved - incomplete|shostak|0.635|
|pseudo_div_TCC12|✅ proved - complete|shostak|0.020|
|pseudo_div_TCC13|✅ proved - complete|shostak|0.110|
|pseudo_div_lengths|✅ proved - incomplete|shostak|5.245|
|HHGGLEM|✅ proved - complete|shostak|0.416|
|pseudo_div_def_TCC1|✅ proved - incomplete|shostak|0.252|
|pseudo_div_def_TCC2|✅ proved - incomplete|shostak|0.601|
|pseudo_div_def|✅ proved - incomplete|shostak|1:12.582|
|poly_pseudo_remainder_def_TCC1|✅ proved - incomplete|shostak|0.170|
|poly_pseudo_remainder_def|✅ proved - incomplete|shostak|1.306|
|adjusted_remainder_TCC1|✅ proved - incomplete|shostak|0.338|
|adjusted_remainder_def_TCC1|✅ proved - incomplete|shostak|0.250|
|adjusted_remainder_def|✅ proved - incomplete|shostak|7.370|
|adjusted_remainder_length|✅ proved - incomplete|shostak|2.101|
|adjusted_remainder_length2|✅ proved - incomplete|shostak|2.155|
|adjusted_remainder_empty|✅ proved - incomplete|shostak|1.556|
|adjusted_remainder_test_TCC1|✅ proved - complete|shostak|0.040|
|adjusted_remainder_test|✅ proved - incomplete|shostak|0.040|

## `clear_denominators`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|posratpair_plus|✅ proved - complete|shostak|0.070|
|posratpair_div|✅ proved - complete|shostak|0.050|
|PosRatSet_nonempty|✅ proved - complete|shostak|0.090|
|PosRatSet_glb_posnat_TCC1|✅ proved - complete|shostak|0.104|
|PosRatSet_glb_posnat|✅ proved - complete|shostak|0.164|
|PosRatMeas_TCC1|✅ proved - complete|shostak|0.020|
|PosRatMeas_TCC2|✅ proved - complete|shostak|0.200|
|PosRatMeas_TCC3|✅ proved - complete|shostak|0.137|
|PosRatMeas_increasing|✅ proved - complete|shostak|0.525|
|PosRatMeas_glb_minus_posnat_TCC1|✅ proved - complete|shostak|0.020|
|PosRatMeas_glb_minus_posnat_TCC2|✅ proved - complete|shostak|0.134|
|PosRatMeas_glb_minus_posnat|✅ proved - complete|shostak|0.296|
|compute_posratpair_TCC1|✅ proved - complete|shostak|0.010|
|compute_posratpair_TCC2|✅ proved - complete|shostak|0.020|
|compute_posratpair_TCC3|✅ proved - complete|shostak|0.010|
|compute_posratpair_TCC4|✅ proved - complete|shostak|0.020|
|compute_posratpair_TCC5|✅ proved - complete|shostak|0.335|
|compute_posratpair_TCC6|✅ proved - complete|shostak|0.114|
|compute_posratpair_TCC7|✅ proved - complete|shostak|0.150|
|compute_posratpair_TCC8|✅ proved - complete|shostak|0.053|
|rat_poly_to_int_rec_TCC1|✅ proved - complete|shostak|0.010|
|rat_poly_to_int_rec_TCC2|✅ proved - complete|shostak|0.387|
|rat_poly_to_int_rec_TCC3|✅ proved - incomplete|shostak|0.337|
|rat_poly_to_int_rec_TCC4|✅ proved - complete|shostak|0.020|
|rat_poly_to_int_rec_TCC5|✅ proved - complete|shostak|0.010|
|rat_poly_to_int_rec_TCC6|✅ proved - complete|shostak|0.010|
|rat_poly_to_int_rec_TCC7|✅ proved - complete|shostak|0.080|
|rat_poly_to_int_rec_TCC8|✅ proved - complete|shostak|0.070|
|rat_poly_to_int_rec_TCC9|✅ proved - complete|shostak|0.229|
|rat_poly_to_int_rec_TCC10|✅ proved - complete|shostak|0.080|
|rat_poly_to_int_rec_TCC11|✅ proved - incomplete|shostak|0.816|
|rat_poly_to_int_rec_TCC12|✅ proved - complete|shostak|0.010|
|rat_poly_to_int_rec_TCC13|✅ proved - complete|shostak|0.010|
|rat_poly_to_int_TCC1|✅ proved - incomplete|shostak|0.110|
|rat_poly_to_int_TCC2|✅ proved - incomplete|shostak|0.079|

## `sturmsquarefree`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sturm_sequence?_TCC1|✅ proved - incomplete|shostak|0.090|
|sturm_sequence?_TCC2|✅ proved - incomplete|shostak|0.180|
|sturm_sequence_degree_1|✅ proved - incomplete|shostak|0.221|
|sturm_seq_repeated_root|✅ proved - incomplete|shostak|0.560|
|sturm_seq_last_nonzero|✅ proved - incomplete|shostak|0.219|
|sturm_seq_first_signs_eq|✅ proved - incomplete|shostak|4.954|
|sturm_lem_no_roots|✅ proved - incomplete|shostak|0.632|
|sturm_lem_one_root|✅ proved - incomplete|shostak|4.349|
|sturm_lem_edge_root|✅ proved - incomplete|shostak|2.821|
|roots_between_enum_TCC1|✅ proved - incomplete|shostak|0.176|
|roots_between_enum_TCC2|✅ proved - incomplete|shostak|0.170|
|roots_between_enum|✅ proved - incomplete|shostak|1.083|
|sturm_lem_no_roots_full|✅ proved - incomplete|shostak|0.440|
|sturm_square_free|✅ proved - incomplete|shostak|2.932|
|sturm_seq_square_free_TCC1|✅ proved - incomplete|shostak|0.020|
|sturm_seq_square_free_TCC2|✅ proved - incomplete|shostak|0.266|
|sturm_seq_square_free_TCC3|✅ proved - incomplete|shostak|0.070|
|sturm_seq_square_free_TCC4|✅ proved - incomplete|shostak|0.366|
|sturm_seq_square_free|✅ proved - incomplete|shostak|2.038|

## `polylist`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|eval_polylist_TCC1|✅ proved - incomplete|shostak|0.077|
|eval_polylist_TCC2|✅ proved - incomplete|shostak|0.070|
|eval_polylist_TCC3|✅ proved - incomplete|shostak|0.170|
|eval_polylist_TCC4|✅ proved - incomplete|shostak|0.084|
|eval_polylist_TCC5|✅ proved - incomplete|shostak|0.100|
|eval_polylist_times_x_TCC1|✅ proved - complete|shostak|0.000|
|eval_polylist_times_x_TCC2|✅ proved - complete|shostak|0.000|
|eval_polylist_times_x|✅ proved - incomplete|shostak|0.466|
|eval_polylist_remove_acc|✅ proved - incomplete|shostak|0.199|
|eval_polylist_test_TCC1|✅ proved - incomplete|shostak|0.040|
|eval_polylist_test_TCC2|✅ proved - complete|shostak|0.010|
|eval_polylist_test_TCC3|✅ proved - complete|shostak|0.000|
|eval_polylist_test|✅ proved - incomplete|shostak|0.090|
|polylist_TCC1|✅ proved - complete|shostak|0.010|
|pmonom_TCC1|✅ proved - complete|shostak|0.010|
|pmonom_TCC2|✅ proved - incomplete|shostak|0.080|
|pmonom_TCC3|✅ proved - complete|shostak|0.010|
|pmonom_TCC4|✅ proved - complete|shostak|0.010|
|pmonom_TCC5|✅ proved - incomplete|shostak|0.194|
|psum_TCC1|✅ proved - incomplete|shostak|0.403|
|psum_TCC2|✅ proved - incomplete|shostak|0.363|
|psum_TCC3|✅ proved - incomplete|shostak|0.040|
|psum_TCC4|✅ proved - incomplete|shostak|0.034|
|psum_TCC5|✅ proved - complete|shostak|0.050|
|psum_TCC6|✅ proved - incomplete|shostak|0.748|
|pscal_TCC1|✅ proved - incomplete|shostak|0.060|
|pscal_TCC2|✅ proved - incomplete|shostak|0.020|
|pscal_TCC3|✅ proved - complete|shostak|0.010|
|pscal_TCC4|✅ proved - incomplete|shostak|0.559|
|pprod_TCC1|✅ proved - incomplete|shostak|0.020|
|pprod_TCC2|✅ proved - incomplete|shostak|0.114|
|pprod_TCC3|✅ proved - incomplete|shostak|0.070|
|pprod_TCC4|✅ proved - incomplete|shostak|0.280|
|deg_rec_TCC1|✅ proved - incomplete|shostak|0.050|
|deg_rec_TCC2|✅ proved - incomplete|shostak|0.050|
|deg_rec_TCC3|✅ proved - incomplete|shostak|0.050|
|deg_rec_TCC4|✅ proved - incomplete|shostak|0.080|
|deg_rec_TCC5|✅ proved - incomplete|shostak|0.074|
|deg_rec_TCC6|✅ proved - incomplete|shostak|0.150|
|deg_rec_TCC7|✅ proved - incomplete|shostak|0.050|
|deg_rec_TCC8|✅ proved - incomplete|shostak|0.063|
|deg_rec_TCC9|✅ proved - incomplete|shostak|0.060|
|deg_rec_TCC10|✅ proved - incomplete|shostak|0.120|
|deg_TCC1|✅ proved - incomplete|shostak|0.054|
|deg_TCC2|✅ proved - incomplete|shostak|0.050|
|polylist_eval|✅ proved - incomplete|shostak|0.716|
|polylist_eval_deg|✅ proved - incomplete|shostak|0.312|
|polylist_const|✅ proved - incomplete|shostak|0.010|
|polylist_monom_TCC1|✅ proved - complete|shostak|0.010|
|polylist_monom|✅ proved - incomplete|shostak|0.015|
|polylist_prod|✅ proved - incomplete|shostak|0.613|
|polylist_scal|✅ proved - incomplete|shostak|0.013|
|polylist_sum|✅ proved - incomplete|shostak|0.010|
|polylist_minus|✅ proved - incomplete|shostak|0.070|
|polylist_pow_TCC1|✅ proved - incomplete|shostak|0.010|
|polylist_pow|✅ proved - incomplete|shostak|0.447|
|polylist_neg|✅ proved - incomplete|shostak|0.040|
|polylist_div|✅ proved - incomplete|shostak|0.050|
|polylist_sq|✅ proved - incomplete|shostak|0.015|

## `poly_strategy`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sturm_TCC1|✅ proved - incomplete|shostak|0.040|
|sturm_def_TCC1|✅ proved - incomplete|shostak|0.030|
|sturm_def|✅ proved - incomplete|shostak|0.133|

## `strategies`
No formula declaration found.## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Mac OS X (Intel)] (Nov 14, 2020 23:13)|
| Patch Version| n/a|
| Library Path| `/Applications/pvs-7.1.0/pvslib/`<br/>`/Applications/pvs-7.1.0/lib/`<br/>`/Applications/pvs-7.1.0/pvslib/float/`<br/>`/Applications/pvs-7.1.0/pvslib/pvsio_utils/`|
| Loaded Patches | `/Applications/pvs-7.1.0/pvslib/.pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230712-static-update.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230710-tcc-gen.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230707-defattach.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230706-extrategies.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210323-wish.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210225-cl2pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210715a.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210715.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210707.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210706.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210511.lisp`|
