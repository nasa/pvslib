# Summary for `Sturm`
Run started at 15:32:25 9/1/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **350**   | **350**    | **350**    | **0**  | **7:26.106 s**   |
|top|0|0|0|0|0.000|
|compute_sturm|59|59|59|0|2:9.419|
|sturm|30|30|30|0|54.943|
|polynomial_division|12|12|12|0|16.680|
|number_sign_changes|35|35|35|0|25.164|
|gcd_coeff|39|39|39|0|9.426|
|remainder_sequence|31|31|31|0|15.915|
|polynomial_pseudo_divide|28|28|28|0|2:17.731|
|clear_denominators|35|35|35|0|7.495|
|sturmsquarefree|19|19|19|0|35.701|
|polylist|59|59|59|0|13.289|
|poly_strategy|3|3|3|0|0.343|
|strategies|0|0|0|0|0.000|
## Detailed Summary 
## `top`
No formula declaration found.
## `compute_sturm`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|finite_bij_real_remove_one|✅ proved - incomplete|shostak|0.424|
|finite_bij_real_remove_two|✅ proved - incomplete|shostak|0.653|
|computed_sturm_spec_TCC1|✅ proved - complete|shostak|0.080|
|computed_sturm_spec_TCC2|✅ proved - incomplete|shostak|0.090|
|computed_sturm_spec_TCC3|✅ proved - incomplete|shostak|0.169|
|computed_sturm_spec_TCC4|✅ proved - incomplete|shostak|0.260|
|computed_sturm_spec_TCC5|✅ proved - incomplete|shostak|0.241|
|computed_sturm_spec|✅ proved - incomplete|shostak|10.635|
|Eq_computed_remainder?_TCC1|✅ proved - complete|shostak|0.010|
|Eq_computed_remainder?_TCC2|✅ proved - complete|shostak|0.060|
|Eq_computed_remainder?_TCC3|✅ proved - complete|shostak|0.010|
|roots_closed_int_TCC1|✅ proved - incomplete|shostak|0.164|
|roots_closed_int_TCC2|✅ proved - incomplete|shostak|0.256|
|roots_closed_int_TCC3|✅ proved - incomplete|shostak|0.230|
|roots_closed_int_TCC4|✅ proved - incomplete|shostak|0.302|
|roots_closed_int_TCC5|✅ proved - incomplete|shostak|0.820|
|roots_closed_int_TCC6|✅ proved - incomplete|shostak|1.482|
|roots_closed_int_def_truetrue|✅ proved - incomplete|shostak|40.769|
|roots_closed_int_def_falsetrue|✅ proved - incomplete|shostak|20.157|
|roots_closed_int_def_truefalse|✅ proved - incomplete|shostak|21.143|
|roots_closed_int_def_falsefalse|✅ proved - incomplete|shostak|9.573|
|roots_closed_int_def|✅ proved - incomplete|shostak|0.389|
|number_roots_interval_TCC1|✅ proved - incomplete|shostak|0.148|
|number_roots_interval_TCC2|✅ proved - incomplete|shostak|0.327|
|number_roots_interval_def|✅ proved - incomplete|shostak|1.364|
|always_nonnegative_int_TCC1|✅ proved - incomplete|shostak|0.050|
|always_nonnegative_int_TCC2|✅ proved - incomplete|shostak|0.197|
|always_nonnegative_int_TCC3|✅ proved - incomplete|shostak|0.040|
|always_nonnegative_int_TCC4|✅ proved - incomplete|shostak|0.148|
|always_nonnegative_int_TCC5|✅ proved - incomplete|shostak|0.110|
|always_nonnegative_int_TCC6|✅ proved - incomplete|shostak|0.179|
|always_nonnegative_int_TCC7|✅ proved - incomplete|shostak|0.182|
|always_nonnegative_int_TCC8|✅ proved - incomplete|shostak|0.140|
|always_nonnegative_TCC1|✅ proved - incomplete|shostak|0.041|
|always_nonnegative_TCC2|✅ proved - complete|shostak|0.080|
|always_nonnegative_TCC3|✅ proved - incomplete|shostak|0.090|
|always_nonnegative_TCC4|✅ proved - incomplete|shostak|0.130|
|always_nonnegative_TCC5|✅ proved - incomplete|shostak|0.581|
|always_nonnegative_TCC6|✅ proved - incomplete|shostak|0.589|
|always_nonnegative_TCC7|✅ proved - incomplete|shostak|0.580|
|always_nonnegative_def|✅ proved - incomplete|shostak|4.761|
|rel_disjunction|✅ proved - complete|shostak|0.030|
|real_order_scal_pos|✅ proved - incomplete|shostak|0.610|
|real_order_scal_pos_0|✅ proved - incomplete|shostak|0.060|
|compute_poly_sat_TCC1|✅ proved - complete|shostak|0.030|
|compute_poly_sat_TCC2|✅ proved - complete|shostak|0.010|
|compute_poly_sat_TCC3|✅ proved - incomplete|shostak|0.136|
|compute_poly_sat_def|✅ proved - incomplete|shostak|3.722|
|compute_poly_sat_rational_TCC1|✅ proved - incomplete|shostak|0.070|
|compute_poly_sat_rational_def|✅ proved - incomplete|shostak|0.845|
|compute_poly_mono_basic_TCC1|✅ proved - complete|shostak|0.070|
|compute_poly_mono_basic_TCC2|✅ proved - incomplete|shostak|0.050|
|compute_poly_mono_basic_TCC3|✅ proved - complete|shostak|0.065|
|compute_poly_mono_basic_TCC4|✅ proved - incomplete|shostak|0.050|
|compute_poly_mono_basic_TCC5|✅ proved - complete|shostak|0.070|
|compute_poly_mono_basic_TCC6|✅ proved - incomplete|shostak|0.050|
|compute_poly_mono_basic_def|✅ proved - incomplete|shostak|3.655|
|poly_non_constant_real_int|✅ proved - incomplete|shostak|0.060|
|mono_def|✅ proved - incomplete|shostak|2.182|

## `sturm`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|constructed_sturm_sequence?_TCC1|✅ proved - complete|shostak|0.039|
|constructed_sturm_sequence?_TCC2|✅ proved - complete|shostak|0.080|
|constructed_sturm_sequence?_TCC3|✅ proved - complete|shostak|0.070|
|constructed_sturm_seq_repeated_root|✅ proved - incomplete|shostak|1.110|
|constructed_sturm_seq_repeated_root_mth|✅ proved - incomplete|shostak|4.271|
|constructed_sturm_seq_repeated_root_struct_TCC1|✅ proved - incomplete|shostak|0.707|
|constructed_sturm_seq_repeated_root_struct_TCC2|✅ proved - incomplete|shostak|0.928|
|constructed_sturm_seq_repeated_root_struct_TCC3|✅ proved - incomplete|shostak|1.336|
|constructed_sturm_seq_repeated_root_struct_TCC4|✅ proved - incomplete|shostak|1.335|
|constructed_sturm_seq_repeated_root_struct|✅ proved - incomplete|shostak|7.095|
|constructed_sturm_seq_first_signs_eq|✅ proved - incomplete|shostak|7.406|
|sturm_lem_no_roots|✅ proved - incomplete|shostak|0.986|
|constructed_sturm_lem_one_simple_root_TCC1|✅ proved - incomplete|shostak|0.236|
|constructed_sturm_lem_one_simple_root|✅ proved - incomplete|shostak|2.289|
|constructed_sturm_lem_one_multi_root_TCC1|✅ proved - incomplete|shostak|0.408|
|constructed_sturm_lem_one_multi_root|✅ proved - incomplete|shostak|6.432|
|constructed_sturm_lem_edge_root_TCC1|✅ proved - incomplete|shostak|0.247|
|constructed_sturm_lem_edge_root|✅ proved - incomplete|shostak|4.024|
|constructed_sturm_roots_between_enum_TCC1|✅ proved - incomplete|shostak|0.030|
|constructed_sturm_roots_between_enum_TCC2|✅ proved - incomplete|shostak|0.030|
|constructed_sturm_roots_between_enum|✅ proved - incomplete|shostak|1.709|
|constructed_sturm_lem_no_roots_full_TCC1|✅ proved - incomplete|shostak|0.180|
|constructed_sturm_lem_no_roots_full|✅ proved - incomplete|shostak|0.660|
|sturm_TCC1|✅ proved - incomplete|shostak|0.200|
|sturm|✅ proved - incomplete|shostak|8.909|
|sturm_unbounded_left_TCC1|✅ proved - incomplete|shostak|0.143|
|sturm_unbounded_left|✅ proved - incomplete|shostak|3.020|
|sturm_unbounded_right|✅ proved - incomplete|shostak|0.000|
|sturm_unbounded_TCC1|✅ proved - incomplete|shostak|0.082|
|sturm_unbounded|✅ proved - incomplete|shostak|0.981|

## `polynomial_division`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|poly_divide_TCC1|✅ proved - complete|shostak|0.130|
|poly_divide_TCC2|✅ proved - complete|shostak|0.010|
|poly_divide_TCC3|✅ proved - complete|shostak|0.028|
|poly_divide_TCC4|✅ proved - complete|shostak|0.090|
|poly_divide_TCC5|✅ proved - complete|shostak|0.080|
|poly_divide_TCC6|✅ proved - complete|shostak|0.238|
|poly_divide_TCC7|✅ proved - complete|shostak|0.240|
|poly_divide_TCC8|✅ proved - complete|shostak|0.030|
|poly_divide_TCC9|✅ proved - complete|shostak|0.170|
|poly_divide_def|✅ proved - incomplete|shostak|14.794|
|poly_divide_struct|✅ proved - complete|shostak|0.351|
|poly_divide_lengths|✅ proved - complete|shostak|0.519|

## `number_sign_changes`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|number_sign_changes_TCC1|✅ proved - complete|shostak|0.010|
|number_sign_changes_TCC2|✅ proved - complete|shostak|0.010|
|sign_changes_TCC1|✅ proved - complete|shostak|0.000|
|sign_changes_TCC2|✅ proved - complete|shostak|0.030|
|sign_changes_TCC3|✅ proved - incomplete|shostak|0.070|
|sign_changes_TCC4|✅ proved - incomplete|shostak|0.078|
|sign_changes_TCC5|✅ proved - incomplete|shostak|0.090|
|sign_changes_TCC6|✅ proved - incomplete|shostak|0.160|
|sign_changes_TCC7|✅ proved - incomplete|shostak|0.080|
|sign_changes_TCC8|✅ proved - incomplete|shostak|0.035|
|sign_changes_TCC9|✅ proved - incomplete|shostak|0.170|
|sign_changes_TCC10|✅ proved - incomplete|shostak|0.070|
|sign_changes_TCC11|✅ proved - incomplete|shostak|0.040|
|sign_changes_TCC12|✅ proved - incomplete|shostak|0.132|
|num_sign_changes_def_TCC1|✅ proved - complete|shostak|0.010|
|num_sign_changes_def|✅ proved - incomplete|shostak|0.030|
|number_sign_changes_lastnz_nonzero|✅ proved - incomplete|shostak|0.160|
|number_sign_changes_lastnz|✅ proved - incomplete|shostak|0.020|
|number_sign_changes_eq|✅ proved - incomplete|shostak|0.557|
|number_sign_changes_easy|✅ proved - incomplete|shostak|0.250|
|number_sign_changes_test1|✅ proved - incomplete|shostak|0.244|
|number_sign_changes_test2|✅ proved - incomplete|shostak|0.240|
|number_sign_changes_test3|✅ proved - incomplete|shostak|0.260|
|number_sign_changes_test4|✅ proved - incomplete|shostak|0.234|
|number_sign_changes_test5|✅ proved - incomplete|shostak|0.290|
|number_sign_changes_test6|✅ proved - incomplete|shostak|0.270|
|number_sign_changes_test7|✅ proved - incomplete|shostak|0.294|
|nsc_regular_swap_TCC1|✅ proved - incomplete|shostak|0.070|
|nsc_regular_swap|✅ proved - incomplete|shostak|5.013|
|nsc_edge_diff_TCC1|✅ proved - incomplete|shostak|0.050|
|nsc_edge_diff_TCC2|✅ proved - incomplete|shostak|0.086|
|nsc_edge_diff|✅ proved - incomplete|shostak|4.836|
|nsc_multiroot|✅ proved - incomplete|shostak|2.366|
|nsc_multiroot_full_TCC1|✅ proved - incomplete|shostak|0.060|
|nsc_multiroot_full|✅ proved - incomplete|shostak|8.849|

## `gcd_coeff`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|gcd_coeff_TCC1|✅ proved - incomplete|shostak|0.030|
|gcd_coeff_TCC2|✅ proved - incomplete|shostak|0.040|
|gcd_coeff_TCC3|✅ proved - incomplete|shostak|0.228|
|gcd_coeff_TCC4|✅ proved - incomplete|shostak|0.100|
|gcd_coeff_TCC5|✅ proved - incomplete|shostak|0.167|
|gcd_coeff_TCC6|✅ proved - incomplete|shostak|0.110|
|gcd_coeff_TCC7|✅ proved - incomplete|shostak|0.130|
|gcd_coeff_TCC8|✅ proved - incomplete|shostak|0.000|
|gcd_coeff_TCC9|✅ proved - incomplete|shostak|0.100|
|gcd_coeff_TCC10|✅ proved - incomplete|shostak|0.070|
|gcd_coeff_nonzero|✅ proved - incomplete|shostak|0.050|
|gcd_coeff_zero|✅ proved - incomplete|shostak|0.273|
|descalarize_list_TCC1|✅ proved - incomplete|shostak|0.030|
|descalarize_list_TCC2|✅ proved - incomplete|shostak|0.254|
|descalarize_list_TCC3|✅ proved - incomplete|shostak|0.083|
|descalarize_list_TCC4|✅ proved - incomplete|shostak|0.295|
|descalarize_list_TCC5|✅ proved - incomplete|shostak|0.107|
|descalarize_list_TCC6|✅ proved - incomplete|shostak|0.090|
|descalarize_list_TCC7|✅ proved - incomplete|shostak|0.439|
|primitize_list_TCC1|✅ proved - incomplete|shostak|0.050|
|primitize_list_def_TCC1|✅ proved - incomplete|shostak|0.050|
|primitize_list_def|✅ proved - incomplete|shostak|0.520|
|primitize_zero_list|✅ proved - incomplete|shostak|0.224|
|primitize_list_length|✅ proved - incomplete|shostak|0.040|
|nonzero_version_rec_TCC1|✅ proved - incomplete|shostak|0.124|
|nonzero_version_rec_TCC2|✅ proved - incomplete|shostak|0.020|
|nonzero_version_rec_TCC3|✅ proved - incomplete|shostak|0.040|
|nonzero_version_rec_TCC4|✅ proved - incomplete|shostak|0.060|
|nonzero_version_rec_TCC5|✅ proved - incomplete|shostak|0.060|
|nonzero_version_rec_TCC6|✅ proved - incomplete|shostak|0.861|
|nonzero_version_rec_length_nonzero|✅ proved - incomplete|shostak|0.551|
|nonzero_version_rec_def_TCC1|✅ proved - incomplete|shostak|0.060|
|nonzero_version_rec_def_TCC2|✅ proved - incomplete|shostak|0.090|
|nonzero_version_rec_def|✅ proved - incomplete|shostak|1.610|
|nonzero_version_def_TCC1|✅ proved - incomplete|shostak|0.098|
|nonzero_version_def_TCC2|✅ proved - incomplete|shostak|0.110|
|nonzero_version_def|✅ proved - incomplete|shostak|2.032|
|nonzero_version_length_nz_TCC1|✅ proved - incomplete|shostak|0.030|
|nonzero_version_length_nz|✅ proved - incomplete|shostak|0.200|

## `remainder_sequence`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|is_neg_remainder_list?_TCC1|✅ proved - complete|shostak|0.051|
|is_neg_remainder_list?_TCC2|✅ proved - complete|shostak|0.050|
|is_neg_remainder_list?_TCC3|✅ proved - incomplete|shostak|0.070|
|is_neg_remainder_list?_TCC4|✅ proved - complete|shostak|0.060|
|is_neg_remainder_list?_TCC5|✅ proved - incomplete|shostak|0.183|
|is_neg_remainder_list?_TCC6|✅ proved - incomplete|shostak|0.130|
|is_neg_remainder_list?_TCC7|✅ proved - incomplete|shostak|0.122|
|is_neg_remainder_list?_TCC8|✅ proved - incomplete|shostak|0.160|
|is_neg_remainder_list?_TCC9|✅ proved - incomplete|shostak|0.105|
|is_neg_remainder_list?_TCC10|✅ proved - incomplete|shostak|0.310|
|is_neg_remainder_list?_TCC11|✅ proved - incomplete|shostak|0.224|
|compute_remainder_seq_TCC1|✅ proved - incomplete|shostak|1.070|
|compute_remainder_seq_TCC2|✅ proved - incomplete|shostak|1.040|
|compute_remainder_seq_TCC3|✅ proved - incomplete|shostak|0.302|
|compute_remainder_seq_TCC4|✅ proved - incomplete|shostak|1.066|
|compute_remainder_seq_TCC5|✅ proved - incomplete|shostak|0.464|
|compute_remainder_seq_TCC6|✅ proved - incomplete|shostak|6.512|
|compute_remainder_seq_TCC7|✅ proved - incomplete|shostak|0.184|
|compute_remainder_seq_TCC8|✅ proved - incomplete|shostak|0.020|
|compute_remainder_seq_TCC9|✅ proved - incomplete|shostak|0.030|
|compute_remainder_seq_TCC10|✅ proved - incomplete|shostak|0.030|
|compute_remainder_seq_TCC11|✅ proved - incomplete|shostak|0.221|
|compute_remainder_seq_TCC12|✅ proved - incomplete|shostak|0.220|
|compute_remainder_seq_TCC13|✅ proved - incomplete|shostak|1.606|
|compute_remainder_seq_TCC14|✅ proved - incomplete|shostak|0.820|
|remainder_seq_TCC1|✅ proved - incomplete|shostak|0.421|
|sturm_chain_TCC1|✅ proved - complete|shostak|0.077|
|sturm_chain_TCC2|✅ proved - complete|shostak|0.010|
|remainder_seq_test_TCC1|✅ proved - complete|shostak|0.040|
|remainder_seq_test_TCC2|✅ proved - complete|shostak|0.080|
|remainder_seq_test|✅ proved - incomplete|shostak|0.237|

## `polynomial_pseudo_divide`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|pseudo_div_TCC1|✅ proved - complete|shostak|0.150|
|pseudo_div_TCC2|✅ proved - incomplete|shostak|0.260|
|pseudo_div_TCC3|✅ proved - incomplete|shostak|0.360|
|pseudo_div_TCC4|✅ proved - incomplete|shostak|0.421|
|pseudo_div_TCC5|✅ proved - incomplete|shostak|0.433|
|pseudo_div_TCC6|✅ proved - incomplete|shostak|0.470|
|pseudo_div_TCC7|✅ proved - incomplete|shostak|0.682|
|pseudo_div_TCC8|✅ proved - incomplete|shostak|0.652|
|pseudo_div_TCC9|✅ proved - incomplete|shostak|0.464|
|pseudo_div_TCC10|✅ proved - incomplete|shostak|0.472|
|pseudo_div_TCC11|✅ proved - incomplete|shostak|1.015|
|pseudo_div_TCC12|✅ proved - complete|shostak|0.030|
|pseudo_div_TCC13|✅ proved - complete|shostak|0.180|
|pseudo_div_lengths|✅ proved - incomplete|shostak|7.825|
|HHGGLEM|✅ proved - complete|shostak|0.704|
|pseudo_div_def_TCC1|✅ proved - incomplete|shostak|0.389|
|pseudo_div_def_TCC2|✅ proved - incomplete|shostak|0.960|
|pseudo_div_def|✅ proved - incomplete|shostak|1:36.996|
|poly_pseudo_remainder_def_TCC1|✅ proved - incomplete|shostak|0.355|
|poly_pseudo_remainder_def|✅ proved - incomplete|shostak|2.100|
|adjusted_remainder_TCC1|✅ proved - incomplete|shostak|0.548|
|adjusted_remainder_def_TCC1|✅ proved - incomplete|shostak|0.417|
|adjusted_remainder_def|✅ proved - incomplete|shostak|14.929|
|adjusted_remainder_length|✅ proved - incomplete|shostak|3.376|
|adjusted_remainder_length2|✅ proved - incomplete|shostak|3.443|
|adjusted_remainder_empty|✅ proved - incomplete|shostak|0.000|
|adjusted_remainder_test_TCC1|✅ proved - complete|shostak|0.060|
|adjusted_remainder_test|✅ proved - incomplete|shostak|0.040|

## `clear_denominators`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|posratpair_plus|✅ proved - complete|shostak|0.108|
|posratpair_div|✅ proved - complete|shostak|0.090|
|PosRatSet_nonempty|✅ proved - complete|shostak|0.140|
|PosRatSet_glb_posnat_TCC1|✅ proved - complete|shostak|0.180|
|PosRatSet_glb_posnat|✅ proved - complete|shostak|0.251|
|PosRatMeas_TCC1|✅ proved - complete|shostak|0.039|
|PosRatMeas_TCC2|✅ proved - complete|shostak|0.306|
|PosRatMeas_TCC3|✅ proved - complete|shostak|0.193|
|PosRatMeas_increasing|✅ proved - complete|shostak|0.833|
|PosRatMeas_glb_minus_posnat_TCC1|✅ proved - complete|shostak|0.030|
|PosRatMeas_glb_minus_posnat_TCC2|✅ proved - complete|shostak|0.215|
|PosRatMeas_glb_minus_posnat|✅ proved - complete|shostak|0.455|
|compute_posratpair_TCC1|✅ proved - complete|shostak|0.020|
|compute_posratpair_TCC2|✅ proved - complete|shostak|0.010|
|compute_posratpair_TCC3|✅ proved - complete|shostak|0.020|
|compute_posratpair_TCC4|✅ proved - complete|shostak|0.040|
|compute_posratpair_TCC5|✅ proved - complete|shostak|0.498|
|compute_posratpair_TCC6|✅ proved - complete|shostak|0.200|
|compute_posratpair_TCC7|✅ proved - complete|shostak|0.222|
|compute_posratpair_TCC8|✅ proved - complete|shostak|0.094|
|rat_poly_to_int_rec_TCC1|✅ proved - complete|shostak|0.020|
|rat_poly_to_int_rec_TCC2|✅ proved - complete|shostak|0.605|
|rat_poly_to_int_rec_TCC3|✅ proved - incomplete|shostak|0.497|
|rat_poly_to_int_rec_TCC4|✅ proved - complete|shostak|0.020|
|rat_poly_to_int_rec_TCC5|✅ proved - complete|shostak|0.025|
|rat_poly_to_int_rec_TCC6|✅ proved - complete|shostak|0.010|
|rat_poly_to_int_rec_TCC7|✅ proved - complete|shostak|0.130|
|rat_poly_to_int_rec_TCC8|✅ proved - complete|shostak|0.120|
|rat_poly_to_int_rec_TCC9|✅ proved - complete|shostak|0.360|
|rat_poly_to_int_rec_TCC10|✅ proved - complete|shostak|0.140|
|rat_poly_to_int_rec_TCC11|✅ proved - incomplete|shostak|1.284|
|rat_poly_to_int_rec_TCC12|✅ proved - complete|shostak|0.020|
|rat_poly_to_int_rec_TCC13|✅ proved - complete|shostak|0.010|
|rat_poly_to_int_TCC1|✅ proved - incomplete|shostak|0.190|
|rat_poly_to_int_TCC2|✅ proved - incomplete|shostak|0.120|

## `sturmsquarefree`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sturm_sequence?_TCC1|✅ proved - incomplete|shostak|0.150|
|sturm_sequence?_TCC2|✅ proved - incomplete|shostak|0.300|
|sturm_sequence_degree_1|✅ proved - incomplete|shostak|0.371|
|sturm_seq_repeated_root|✅ proved - incomplete|shostak|0.894|
|sturm_seq_last_nonzero|✅ proved - incomplete|shostak|0.319|
|sturm_seq_first_signs_eq|✅ proved - incomplete|shostak|7.413|
|sturm_lem_no_roots|✅ proved - incomplete|shostak|1.005|
|sturm_lem_one_root|✅ proved - incomplete|shostak|10.674|
|sturm_lem_edge_root|✅ proved - incomplete|shostak|5.007|
|roots_between_enum_TCC1|✅ proved - incomplete|shostak|0.310|
|roots_between_enum_TCC2|✅ proved - incomplete|shostak|0.300|
|roots_between_enum|✅ proved - incomplete|shostak|1.914|
|sturm_lem_no_roots_full|✅ proved - incomplete|shostak|0.761|
|sturm_square_free|✅ proved - incomplete|shostak|1.393|
|sturm_seq_square_free_TCC1|✅ proved - incomplete|shostak|0.047|
|sturm_seq_square_free_TCC2|✅ proved - incomplete|shostak|0.550|
|sturm_seq_square_free_TCC3|✅ proved - incomplete|shostak|0.140|
|sturm_seq_square_free_TCC4|✅ proved - incomplete|shostak|0.662|
|sturm_seq_square_free|✅ proved - incomplete|shostak|3.491|

## `polylist`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|eval_polylist_TCC1|✅ proved - incomplete|shostak|0.150|
|eval_polylist_TCC2|✅ proved - incomplete|shostak|0.137|
|eval_polylist_TCC3|✅ proved - incomplete|shostak|0.300|
|eval_polylist_TCC4|✅ proved - incomplete|shostak|0.146|
|eval_polylist_TCC5|✅ proved - incomplete|shostak|0.170|
|eval_polylist_times_x_TCC1|✅ proved - complete|shostak|0.010|
|eval_polylist_times_x_TCC2|✅ proved - complete|shostak|0.010|
|eval_polylist_times_x|✅ proved - incomplete|shostak|0.815|
|eval_polylist_remove_acc|✅ proved - incomplete|shostak|0.356|
|eval_polylist_test_TCC1|✅ proved - incomplete|shostak|0.080|
|eval_polylist_test_TCC2|✅ proved - complete|shostak|0.010|
|eval_polylist_test_TCC3|✅ proved - complete|shostak|0.010|
|eval_polylist_test|✅ proved - incomplete|shostak|0.160|
|polylist_TCC1|✅ proved - complete|shostak|0.010|
|pmonom_TCC1|✅ proved - complete|shostak|0.030|
|pmonom_TCC2|✅ proved - incomplete|shostak|0.132|
|pmonom_TCC3|✅ proved - complete|shostak|0.020|
|pmonom_TCC4|✅ proved - complete|shostak|0.010|
|pmonom_TCC5|✅ proved - incomplete|shostak|0.350|
|psum_TCC1|✅ proved - incomplete|shostak|0.681|
|psum_TCC2|✅ proved - incomplete|shostak|0.624|
|psum_TCC3|✅ proved - incomplete|shostak|0.080|
|psum_TCC4|✅ proved - incomplete|shostak|0.060|
|psum_TCC5|✅ proved - complete|shostak|0.080|
|psum_TCC6|✅ proved - incomplete|shostak|1.309|
|pscal_TCC1|✅ proved - incomplete|shostak|0.090|
|pscal_TCC2|✅ proved - incomplete|shostak|0.040|
|pscal_TCC3|✅ proved - complete|shostak|0.020|
|pscal_TCC4|✅ proved - incomplete|shostak|0.965|
|pprod_TCC1|✅ proved - incomplete|shostak|0.040|
|pprod_TCC2|✅ proved - incomplete|shostak|0.222|
|pprod_TCC3|✅ proved - incomplete|shostak|0.120|
|pprod_TCC4|✅ proved - incomplete|shostak|0.530|
|deg_rec_TCC1|✅ proved - incomplete|shostak|0.090|
|deg_rec_TCC2|✅ proved - incomplete|shostak|0.090|
|deg_rec_TCC3|✅ proved - incomplete|shostak|0.090|
|deg_rec_TCC4|✅ proved - incomplete|shostak|0.142|
|deg_rec_TCC5|✅ proved - incomplete|shostak|0.140|
|deg_rec_TCC6|✅ proved - incomplete|shostak|0.271|
|deg_rec_TCC7|✅ proved - incomplete|shostak|0.090|
|deg_rec_TCC8|✅ proved - incomplete|shostak|0.111|
|deg_rec_TCC9|✅ proved - incomplete|shostak|0.100|
|deg_rec_TCC10|✅ proved - incomplete|shostak|0.220|
|deg_TCC1|✅ proved - incomplete|shostak|0.102|
|deg_TCC2|✅ proved - incomplete|shostak|0.080|
|polylist_eval|✅ proved - incomplete|shostak|1.172|
|polylist_eval_deg|✅ proved - incomplete|shostak|0.560|
|polylist_const|✅ proved - incomplete|shostak|0.030|
|polylist_monom_TCC1|✅ proved - complete|shostak|0.010|
|polylist_monom|✅ proved - incomplete|shostak|0.023|
|polylist_prod|✅ proved - incomplete|shostak|1.034|
|polylist_scal|✅ proved - incomplete|shostak|0.020|
|polylist_sum|✅ proved - incomplete|shostak|0.010|
|polylist_minus|✅ proved - incomplete|shostak|0.123|
|polylist_pow_TCC1|✅ proved - incomplete|shostak|0.010|
|polylist_pow|✅ proved - incomplete|shostak|0.833|
|polylist_neg|✅ proved - incomplete|shostak|0.071|
|polylist_div|✅ proved - incomplete|shostak|0.090|
|polylist_sq|✅ proved - incomplete|shostak|0.010|

## `poly_strategy`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sturm_TCC1|✅ proved - incomplete|shostak|0.070|
|sturm_def_TCC1|✅ proved - incomplete|shostak|0.043|
|sturm_def|✅ proved - incomplete|shostak|0.230|

## `strategies`
No formula declaration found.## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib/pvsio_utils/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230712-static-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230710-tcc-gen.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230707-defattach.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230706-extrategies.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`|
