# Summary for `Sturm`
Run started at 22:42:23 9/19/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **350**   | **350**    | **350**    | **0**  | **7:17.066 s**   |
|top|0|0|0|0|0.000|
|compute_sturm|59|59|59|0|2:8.268|
|sturm|30|30|30|0|54.505|
|polynomial_division|12|12|12|0|16.328|
|number_sign_changes|35|35|35|0|24.819|
|gcd_coeff|39|39|39|0|9.334|
|remainder_sequence|31|31|31|0|15.637|
|polynomial_pseudo_divide|28|28|28|0|2:15.595|
|clear_denominators|35|35|35|0|7.411|
|sturmsquarefree|19|19|19|0|33.050|
|polylist|59|59|59|0|11.834|
|poly_strategy|3|3|3|0|0.285|
|strategies|0|0|0|0|0.000|
## Detailed Summary 
## `top`
No formula declaration found.
## `compute_sturm`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|finite_bij_real_remove_one|✅ proved - incomplete|shostak|0.423|
|finite_bij_real_remove_two|✅ proved - incomplete|shostak|0.639|
|computed_sturm_spec_TCC1|✅ proved - complete|shostak|0.090|
|computed_sturm_spec_TCC2|✅ proved - incomplete|shostak|0.080|
|computed_sturm_spec_TCC3|✅ proved - incomplete|shostak|0.159|
|computed_sturm_spec_TCC4|✅ proved - incomplete|shostak|0.260|
|computed_sturm_spec_TCC5|✅ proved - incomplete|shostak|0.231|
|computed_sturm_spec|✅ proved - incomplete|shostak|10.600|
|Eq_computed_remainder?_TCC1|✅ proved - complete|shostak|0.010|
|Eq_computed_remainder?_TCC2|✅ proved - complete|shostak|0.061|
|Eq_computed_remainder?_TCC3|✅ proved - complete|shostak|0.020|
|roots_closed_int_TCC1|✅ proved - incomplete|shostak|0.160|
|roots_closed_int_TCC2|✅ proved - incomplete|shostak|0.262|
|roots_closed_int_TCC3|✅ proved - incomplete|shostak|0.235|
|roots_closed_int_TCC4|✅ proved - incomplete|shostak|0.300|
|roots_closed_int_TCC5|✅ proved - incomplete|shostak|0.807|
|roots_closed_int_TCC6|✅ proved - incomplete|shostak|1.396|
|roots_closed_int_def_truetrue|✅ proved - incomplete|shostak|40.814|
|roots_closed_int_def_falsetrue|✅ proved - incomplete|shostak|19.659|
|roots_closed_int_def_truefalse|✅ proved - incomplete|shostak|20.981|
|roots_closed_int_def_falsefalse|✅ proved - incomplete|shostak|9.479|
|roots_closed_int_def|✅ proved - incomplete|shostak|0.389|
|number_roots_interval_TCC1|✅ proved - incomplete|shostak|0.139|
|number_roots_interval_TCC2|✅ proved - incomplete|shostak|0.330|
|number_roots_interval_def|✅ proved - incomplete|shostak|1.344|
|always_nonnegative_int_TCC1|✅ proved - incomplete|shostak|0.050|
|always_nonnegative_int_TCC2|✅ proved - incomplete|shostak|0.199|
|always_nonnegative_int_TCC3|✅ proved - incomplete|shostak|0.030|
|always_nonnegative_int_TCC4|✅ proved - incomplete|shostak|0.140|
|always_nonnegative_int_TCC5|✅ proved - incomplete|shostak|0.100|
|always_nonnegative_int_TCC6|✅ proved - incomplete|shostak|0.170|
|always_nonnegative_int_TCC7|✅ proved - incomplete|shostak|0.184|
|always_nonnegative_int_TCC8|✅ proved - incomplete|shostak|0.130|
|always_nonnegative_TCC1|✅ proved - incomplete|shostak|0.040|
|always_nonnegative_TCC2|✅ proved - complete|shostak|0.080|
|always_nonnegative_TCC3|✅ proved - incomplete|shostak|0.090|
|always_nonnegative_TCC4|✅ proved - incomplete|shostak|0.130|
|always_nonnegative_TCC5|✅ proved - incomplete|shostak|0.579|
|always_nonnegative_TCC6|✅ proved - incomplete|shostak|0.579|
|always_nonnegative_TCC7|✅ proved - incomplete|shostak|0.581|
|always_nonnegative_def|✅ proved - incomplete|shostak|4.706|
|rel_disjunction|✅ proved - complete|shostak|0.030|
|real_order_scal_pos|✅ proved - incomplete|shostak|0.610|
|real_order_scal_pos_0|✅ proved - incomplete|shostak|0.060|
|compute_poly_sat_TCC1|✅ proved - complete|shostak|0.030|
|compute_poly_sat_TCC2|✅ proved - complete|shostak|0.010|
|compute_poly_sat_TCC3|✅ proved - incomplete|shostak|0.141|
|compute_poly_sat_def|✅ proved - incomplete|shostak|3.692|
|compute_poly_sat_rational_TCC1|✅ proved - incomplete|shostak|0.072|
|compute_poly_sat_rational_def|✅ proved - incomplete|shostak|0.837|
|compute_poly_mono_basic_TCC1|✅ proved - complete|shostak|0.070|
|compute_poly_mono_basic_TCC2|✅ proved - incomplete|shostak|0.038|
|compute_poly_mono_basic_TCC3|✅ proved - complete|shostak|0.070|
|compute_poly_mono_basic_TCC4|✅ proved - incomplete|shostak|0.050|
|compute_poly_mono_basic_TCC5|✅ proved - complete|shostak|0.070|
|compute_poly_mono_basic_TCC6|✅ proved - incomplete|shostak|0.050|
|compute_poly_mono_basic_def|✅ proved - incomplete|shostak|3.580|
|poly_non_constant_real_int|✅ proved - incomplete|shostak|0.055|
|mono_def|✅ proved - incomplete|shostak|2.147|

## `sturm`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|constructed_sturm_sequence?_TCC1|✅ proved - complete|shostak|0.040|
|constructed_sturm_sequence?_TCC2|✅ proved - complete|shostak|0.080|
|constructed_sturm_sequence?_TCC3|✅ proved - complete|shostak|0.070|
|constructed_sturm_seq_repeated_root|✅ proved - incomplete|shostak|1.099|
|constructed_sturm_seq_repeated_root_mth|✅ proved - incomplete|shostak|4.257|
|constructed_sturm_seq_repeated_root_struct_TCC1|✅ proved - incomplete|shostak|0.698|
|constructed_sturm_seq_repeated_root_struct_TCC2|✅ proved - incomplete|shostak|0.914|
|constructed_sturm_seq_repeated_root_struct_TCC3|✅ proved - incomplete|shostak|1.326|
|constructed_sturm_seq_repeated_root_struct_TCC4|✅ proved - incomplete|shostak|1.318|
|constructed_sturm_seq_repeated_root_struct|✅ proved - incomplete|shostak|6.984|
|constructed_sturm_seq_first_signs_eq|✅ proved - incomplete|shostak|7.484|
|sturm_lem_no_roots|✅ proved - incomplete|shostak|0.984|
|constructed_sturm_lem_one_simple_root_TCC1|✅ proved - incomplete|shostak|0.247|
|constructed_sturm_lem_one_simple_root|✅ proved - incomplete|shostak|2.211|
|constructed_sturm_lem_one_multi_root_TCC1|✅ proved - incomplete|shostak|0.397|
|constructed_sturm_lem_one_multi_root|✅ proved - incomplete|shostak|6.371|
|constructed_sturm_lem_edge_root_TCC1|✅ proved - incomplete|shostak|0.241|
|constructed_sturm_lem_edge_root|✅ proved - incomplete|shostak|3.961|
|constructed_sturm_roots_between_enum_TCC1|✅ proved - incomplete|shostak|0.030|
|constructed_sturm_roots_between_enum_TCC2|✅ proved - incomplete|shostak|0.030|
|constructed_sturm_roots_between_enum|✅ proved - incomplete|shostak|1.702|
|constructed_sturm_lem_no_roots_full_TCC1|✅ proved - incomplete|shostak|0.187|
|constructed_sturm_lem_no_roots_full|✅ proved - incomplete|shostak|0.654|
|sturm_TCC1|✅ proved - incomplete|shostak|0.200|
|sturm|✅ proved - incomplete|shostak|8.786|
|sturm_unbounded_left_TCC1|✅ proved - incomplete|shostak|0.134|
|sturm_unbounded_left|✅ proved - incomplete|shostak|3.039|
|sturm_unbounded_right|✅ proved - incomplete|shostak|0.000|
|sturm_unbounded_TCC1|✅ proved - incomplete|shostak|0.084|
|sturm_unbounded|✅ proved - incomplete|shostak|0.977|

## `polynomial_division`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|poly_divide_TCC1|✅ proved - complete|shostak|0.140|
|poly_divide_TCC2|✅ proved - complete|shostak|0.009|
|poly_divide_TCC3|✅ proved - complete|shostak|0.030|
|poly_divide_TCC4|✅ proved - complete|shostak|0.080|
|poly_divide_TCC5|✅ proved - complete|shostak|0.090|
|poly_divide_TCC6|✅ proved - complete|shostak|0.229|
|poly_divide_TCC7|✅ proved - complete|shostak|0.240|
|poly_divide_TCC8|✅ proved - complete|shostak|0.031|
|poly_divide_TCC9|✅ proved - complete|shostak|0.170|
|poly_divide_def|✅ proved - incomplete|shostak|14.438|
|poly_divide_struct|✅ proved - complete|shostak|0.351|
|poly_divide_lengths|✅ proved - complete|shostak|0.520|

## `number_sign_changes`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|number_sign_changes_TCC1|✅ proved - complete|shostak|0.010|
|number_sign_changes_TCC2|✅ proved - complete|shostak|0.010|
|sign_changes_TCC1|✅ proved - complete|shostak|0.010|
|sign_changes_TCC2|✅ proved - complete|shostak|0.020|
|sign_changes_TCC3|✅ proved - incomplete|shostak|0.068|
|sign_changes_TCC4|✅ proved - incomplete|shostak|0.080|
|sign_changes_TCC5|✅ proved - incomplete|shostak|0.100|
|sign_changes_TCC6|✅ proved - incomplete|shostak|0.160|
|sign_changes_TCC7|✅ proved - incomplete|shostak|0.085|
|sign_changes_TCC8|✅ proved - incomplete|shostak|0.040|
|sign_changes_TCC9|✅ proved - incomplete|shostak|0.160|
|sign_changes_TCC10|✅ proved - incomplete|shostak|0.070|
|sign_changes_TCC11|✅ proved - incomplete|shostak|0.040|
|sign_changes_TCC12|✅ proved - incomplete|shostak|0.144|
|num_sign_changes_def_TCC1|✅ proved - complete|shostak|0.010|
|num_sign_changes_def|✅ proved - incomplete|shostak|0.030|
|number_sign_changes_lastnz_nonzero|✅ proved - incomplete|shostak|0.185|
|number_sign_changes_lastnz|✅ proved - incomplete|shostak|0.020|
|number_sign_changes_eq|✅ proved - incomplete|shostak|0.609|
|number_sign_changes_easy|✅ proved - incomplete|shostak|0.240|
|number_sign_changes_test1|✅ proved - incomplete|shostak|0.254|
|number_sign_changes_test2|✅ proved - incomplete|shostak|0.250|
|number_sign_changes_test3|✅ proved - incomplete|shostak|0.260|
|number_sign_changes_test4|✅ proved - incomplete|shostak|0.234|
|number_sign_changes_test5|✅ proved - incomplete|shostak|0.280|
|number_sign_changes_test6|✅ proved - incomplete|shostak|0.270|
|number_sign_changes_test7|✅ proved - incomplete|shostak|0.285|
|nsc_regular_swap_TCC1|✅ proved - incomplete|shostak|0.070|
|nsc_regular_swap|✅ proved - incomplete|shostak|4.963|
|nsc_edge_diff_TCC1|✅ proved - incomplete|shostak|0.048|
|nsc_edge_diff_TCC2|✅ proved - incomplete|shostak|0.080|
|nsc_edge_diff|✅ proved - incomplete|shostak|4.743|
|nsc_multiroot|✅ proved - incomplete|shostak|2.301|
|nsc_multiroot_full_TCC1|✅ proved - incomplete|shostak|0.060|
|nsc_multiroot_full|✅ proved - incomplete|shostak|8.630|

## `gcd_coeff`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|gcd_coeff_TCC1|✅ proved - incomplete|shostak|0.030|
|gcd_coeff_TCC2|✅ proved - incomplete|shostak|0.050|
|gcd_coeff_TCC3|✅ proved - incomplete|shostak|0.217|
|gcd_coeff_TCC4|✅ proved - incomplete|shostak|0.100|
|gcd_coeff_TCC5|✅ proved - incomplete|shostak|0.168|
|gcd_coeff_TCC6|✅ proved - incomplete|shostak|0.100|
|gcd_coeff_TCC7|✅ proved - incomplete|shostak|0.130|
|gcd_coeff_TCC8|✅ proved - incomplete|shostak|0.321|
|gcd_coeff_TCC9|✅ proved - incomplete|shostak|0.080|
|gcd_coeff_TCC10|✅ proved - incomplete|shostak|0.050|
|gcd_coeff_nonzero|✅ proved - incomplete|shostak|0.048|
|gcd_coeff_zero|✅ proved - incomplete|shostak|0.240|
|descalarize_list_TCC1|✅ proved - incomplete|shostak|0.030|
|descalarize_list_TCC2|✅ proved - incomplete|shostak|0.248|
|descalarize_list_TCC3|✅ proved - incomplete|shostak|0.072|
|descalarize_list_TCC4|✅ proved - incomplete|shostak|0.000|
|descalarize_list_TCC5|✅ proved - incomplete|shostak|0.134|
|descalarize_list_TCC6|✅ proved - incomplete|shostak|0.110|
|descalarize_list_TCC7|✅ proved - incomplete|shostak|0.460|
|primitize_list_TCC1|✅ proved - incomplete|shostak|0.040|
|primitize_list_def_TCC1|✅ proved - incomplete|shostak|0.050|
|primitize_list_def|✅ proved - incomplete|shostak|0.510|
|primitize_zero_list|✅ proved - incomplete|shostak|0.213|
|primitize_list_length|✅ proved - incomplete|shostak|0.040|
|nonzero_version_rec_TCC1|✅ proved - incomplete|shostak|0.125|
|nonzero_version_rec_TCC2|✅ proved - incomplete|shostak|0.020|
|nonzero_version_rec_TCC3|✅ proved - incomplete|shostak|0.040|
|nonzero_version_rec_TCC4|✅ proved - incomplete|shostak|0.070|
|nonzero_version_rec_TCC5|✅ proved - incomplete|shostak|0.050|
|nonzero_version_rec_TCC6|✅ proved - incomplete|shostak|0.851|
|nonzero_version_rec_length_nonzero|✅ proved - incomplete|shostak|0.532|
|nonzero_version_rec_def_TCC1|✅ proved - incomplete|shostak|0.060|
|nonzero_version_rec_def_TCC2|✅ proved - incomplete|shostak|0.093|
|nonzero_version_rec_def|✅ proved - incomplete|shostak|1.601|
|nonzero_version_def_TCC1|✅ proved - incomplete|shostak|0.100|
|nonzero_version_def_TCC2|✅ proved - incomplete|shostak|0.110|
|nonzero_version_def|✅ proved - incomplete|shostak|2.000|
|nonzero_version_length_nz_TCC1|✅ proved - incomplete|shostak|0.030|
|nonzero_version_length_nz|✅ proved - incomplete|shostak|0.211|

## `remainder_sequence`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|is_neg_remainder_list?_TCC1|✅ proved - complete|shostak|0.050|
|is_neg_remainder_list?_TCC2|✅ proved - complete|shostak|0.060|
|is_neg_remainder_list?_TCC3|✅ proved - incomplete|shostak|0.070|
|is_neg_remainder_list?_TCC4|✅ proved - complete|shostak|0.060|
|is_neg_remainder_list?_TCC5|✅ proved - incomplete|shostak|0.174|
|is_neg_remainder_list?_TCC6|✅ proved - incomplete|shostak|0.120|
|is_neg_remainder_list?_TCC7|✅ proved - incomplete|shostak|0.114|
|is_neg_remainder_list?_TCC8|✅ proved - incomplete|shostak|0.160|
|is_neg_remainder_list?_TCC9|✅ proved - incomplete|shostak|0.107|
|is_neg_remainder_list?_TCC10|✅ proved - incomplete|shostak|0.293|
|is_neg_remainder_list?_TCC11|✅ proved - incomplete|shostak|0.220|
|compute_remainder_seq_TCC1|✅ proved - incomplete|shostak|1.033|
|compute_remainder_seq_TCC2|✅ proved - incomplete|shostak|1.009|
|compute_remainder_seq_TCC3|✅ proved - incomplete|shostak|0.291|
|compute_remainder_seq_TCC4|✅ proved - incomplete|shostak|1.067|
|compute_remainder_seq_TCC5|✅ proved - incomplete|shostak|0.472|
|compute_remainder_seq_TCC6|✅ proved - incomplete|shostak|6.493|
|compute_remainder_seq_TCC7|✅ proved - incomplete|shostak|0.191|
|compute_remainder_seq_TCC8|✅ proved - incomplete|shostak|0.020|
|compute_remainder_seq_TCC9|✅ proved - incomplete|shostak|0.030|
|compute_remainder_seq_TCC10|✅ proved - incomplete|shostak|0.030|
|compute_remainder_seq_TCC11|✅ proved - incomplete|shostak|0.219|
|compute_remainder_seq_TCC12|✅ proved - incomplete|shostak|0.218|
|compute_remainder_seq_TCC13|✅ proved - incomplete|shostak|1.520|
|compute_remainder_seq_TCC14|✅ proved - incomplete|shostak|0.764|
|remainder_seq_TCC1|✅ proved - incomplete|shostak|0.415|
|sturm_chain_TCC1|✅ proved - complete|shostak|0.080|
|sturm_chain_TCC2|✅ proved - complete|shostak|0.010|
|remainder_seq_test_TCC1|✅ proved - complete|shostak|0.040|
|remainder_seq_test_TCC2|✅ proved - complete|shostak|0.080|
|remainder_seq_test|✅ proved - incomplete|shostak|0.227|

## `polynomial_pseudo_divide`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|pseudo_div_TCC1|✅ proved - complete|shostak|0.150|
|pseudo_div_TCC2|✅ proved - incomplete|shostak|0.260|
|pseudo_div_TCC3|✅ proved - incomplete|shostak|0.361|
|pseudo_div_TCC4|✅ proved - incomplete|shostak|0.400|
|pseudo_div_TCC5|✅ proved - incomplete|shostak|0.405|
|pseudo_div_TCC6|✅ proved - incomplete|shostak|0.429|
|pseudo_div_TCC7|✅ proved - incomplete|shostak|0.693|
|pseudo_div_TCC8|✅ proved - incomplete|shostak|0.673|
|pseudo_div_TCC9|✅ proved - incomplete|shostak|0.471|
|pseudo_div_TCC10|✅ proved - incomplete|shostak|0.473|
|pseudo_div_TCC11|✅ proved - incomplete|shostak|1.015|
|pseudo_div_TCC12|✅ proved - complete|shostak|0.040|
|pseudo_div_TCC13|✅ proved - complete|shostak|0.175|
|pseudo_div_lengths|✅ proved - incomplete|shostak|7.782|
|HHGGLEM|✅ proved - complete|shostak|0.705|
|pseudo_div_def_TCC1|✅ proved - incomplete|shostak|0.381|
|pseudo_div_def_TCC2|✅ proved - incomplete|shostak|0.967|
|pseudo_div_def|✅ proved - incomplete|shostak|1:35.348|
|poly_pseudo_remainder_def_TCC1|✅ proved - incomplete|shostak|0.270|
|poly_pseudo_remainder_def|✅ proved - incomplete|shostak|2.040|
|adjusted_remainder_TCC1|✅ proved - incomplete|shostak|0.538|
|adjusted_remainder_def_TCC1|✅ proved - incomplete|shostak|0.407|
|adjusted_remainder_def|✅ proved - incomplete|shostak|14.758|
|adjusted_remainder_length|✅ proved - incomplete|shostak|3.376|
|adjusted_remainder_length2|✅ proved - incomplete|shostak|3.368|
|adjusted_remainder_empty|✅ proved - incomplete|shostak|0.000|
|adjusted_remainder_test_TCC1|✅ proved - complete|shostak|0.060|
|adjusted_remainder_test|✅ proved - incomplete|shostak|0.050|

## `clear_denominators`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|posratpair_plus|✅ proved - complete|shostak|0.113|
|posratpair_div|✅ proved - complete|shostak|0.090|
|PosRatSet_nonempty|✅ proved - complete|shostak|0.130|
|PosRatSet_glb_posnat_TCC1|✅ proved - complete|shostak|0.179|
|PosRatSet_glb_posnat|✅ proved - complete|shostak|0.249|
|PosRatMeas_TCC1|✅ proved - complete|shostak|0.043|
|PosRatMeas_TCC2|✅ proved - complete|shostak|0.304|
|PosRatMeas_TCC3|✅ proved - complete|shostak|0.212|
|PosRatMeas_increasing|✅ proved - complete|shostak|0.823|
|PosRatMeas_glb_minus_posnat_TCC1|✅ proved - complete|shostak|0.030|
|PosRatMeas_glb_minus_posnat_TCC2|✅ proved - complete|shostak|0.205|
|PosRatMeas_glb_minus_posnat|✅ proved - complete|shostak|0.456|
|compute_posratpair_TCC1|✅ proved - complete|shostak|0.010|
|compute_posratpair_TCC2|✅ proved - complete|shostak|0.020|
|compute_posratpair_TCC3|✅ proved - complete|shostak|0.020|
|compute_posratpair_TCC4|✅ proved - complete|shostak|0.030|
|compute_posratpair_TCC5|✅ proved - complete|shostak|0.488|
|compute_posratpair_TCC6|✅ proved - complete|shostak|0.191|
|compute_posratpair_TCC7|✅ proved - complete|shostak|0.220|
|compute_posratpair_TCC8|✅ proved - complete|shostak|0.084|
|rat_poly_to_int_rec_TCC1|✅ proved - complete|shostak|0.020|
|rat_poly_to_int_rec_TCC2|✅ proved - complete|shostak|0.605|
|rat_poly_to_int_rec_TCC3|✅ proved - incomplete|shostak|0.488|
|rat_poly_to_int_rec_TCC4|✅ proved - complete|shostak|0.024|
|rat_poly_to_int_rec_TCC5|✅ proved - complete|shostak|0.020|
|rat_poly_to_int_rec_TCC6|✅ proved - complete|shostak|0.010|
|rat_poly_to_int_rec_TCC7|✅ proved - complete|shostak|0.120|
|rat_poly_to_int_rec_TCC8|✅ proved - complete|shostak|0.125|
|rat_poly_to_int_rec_TCC9|✅ proved - complete|shostak|0.355|
|rat_poly_to_int_rec_TCC10|✅ proved - complete|shostak|0.155|
|rat_poly_to_int_rec_TCC11|✅ proved - incomplete|shostak|1.254|
|rat_poly_to_int_rec_TCC12|✅ proved - complete|shostak|0.020|
|rat_poly_to_int_rec_TCC13|✅ proved - complete|shostak|0.010|
|rat_poly_to_int_TCC1|✅ proved - incomplete|shostak|0.188|
|rat_poly_to_int_TCC2|✅ proved - incomplete|shostak|0.120|

## `sturmsquarefree`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sturm_sequence?_TCC1|✅ proved - incomplete|shostak|0.151|
|sturm_sequence?_TCC2|✅ proved - incomplete|shostak|0.300|
|sturm_sequence_degree_1|✅ proved - incomplete|shostak|0.361|
|sturm_seq_repeated_root|✅ proved - incomplete|shostak|0.865|
|sturm_seq_last_nonzero|✅ proved - incomplete|shostak|0.330|
|sturm_seq_first_signs_eq|✅ proved - incomplete|shostak|7.345|
|sturm_lem_no_roots|✅ proved - incomplete|shostak|1.007|
|sturm_lem_one_root|✅ proved - incomplete|shostak|10.096|
|sturm_lem_edge_root|✅ proved - incomplete|shostak|4.383|
|roots_between_enum_TCC1|✅ proved - incomplete|shostak|0.281|
|roots_between_enum_TCC2|✅ proved - incomplete|shostak|0.280|
|roots_between_enum|✅ proved - incomplete|shostak|1.717|
|sturm_lem_no_roots_full|✅ proved - incomplete|shostak|0.693|
|sturm_square_free|✅ proved - incomplete|shostak|0.964|
|sturm_seq_square_free_TCC1|✅ proved - incomplete|shostak|0.030|
|sturm_seq_square_free_TCC2|✅ proved - incomplete|shostak|0.433|
|sturm_seq_square_free_TCC3|✅ proved - incomplete|shostak|0.110|
|sturm_seq_square_free_TCC4|✅ proved - incomplete|shostak|0.584|
|sturm_seq_square_free|✅ proved - incomplete|shostak|3.120|

## `polylist`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|eval_polylist_TCC1|✅ proved - incomplete|shostak|0.132|
|eval_polylist_TCC2|✅ proved - incomplete|shostak|0.120|
|eval_polylist_TCC3|✅ proved - incomplete|shostak|0.258|
|eval_polylist_TCC4|✅ proved - incomplete|shostak|0.140|
|eval_polylist_TCC5|✅ proved - incomplete|shostak|0.150|
|eval_polylist_times_x_TCC1|✅ proved - complete|shostak|0.010|
|eval_polylist_times_x_TCC2|✅ proved - complete|shostak|0.010|
|eval_polylist_times_x|✅ proved - incomplete|shostak|0.721|
|eval_polylist_remove_acc|✅ proved - incomplete|shostak|0.324|
|eval_polylist_test_TCC1|✅ proved - incomplete|shostak|0.070|
|eval_polylist_test_TCC2|✅ proved - complete|shostak|0.010|
|eval_polylist_test_TCC3|✅ proved - complete|shostak|0.000|
|eval_polylist_test|✅ proved - incomplete|shostak|0.140|
|polylist_TCC1|✅ proved - complete|shostak|0.010|
|pmonom_TCC1|✅ proved - complete|shostak|0.030|
|pmonom_TCC2|✅ proved - incomplete|shostak|0.114|
|pmonom_TCC3|✅ proved - complete|shostak|0.020|
|pmonom_TCC4|✅ proved - complete|shostak|0.010|
|pmonom_TCC5|✅ proved - incomplete|shostak|0.302|
|psum_TCC1|✅ proved - incomplete|shostak|0.602|
|psum_TCC2|✅ proved - incomplete|shostak|0.585|
|psum_TCC3|✅ proved - incomplete|shostak|0.070|
|psum_TCC4|✅ proved - incomplete|shostak|0.054|
|psum_TCC5|✅ proved - complete|shostak|0.070|
|psum_TCC6|✅ proved - incomplete|shostak|1.170|
|pscal_TCC1|✅ proved - incomplete|shostak|0.080|
|pscal_TCC2|✅ proved - incomplete|shostak|0.040|
|pscal_TCC3|✅ proved - complete|shostak|0.020|
|pscal_TCC4|✅ proved - incomplete|shostak|0.867|
|pprod_TCC1|✅ proved - incomplete|shostak|0.040|
|pprod_TCC2|✅ proved - incomplete|shostak|0.193|
|pprod_TCC3|✅ proved - incomplete|shostak|0.100|
|pprod_TCC4|✅ proved - incomplete|shostak|0.462|
|deg_rec_TCC1|✅ proved - incomplete|shostak|0.080|
|deg_rec_TCC2|✅ proved - incomplete|shostak|0.080|
|deg_rec_TCC3|✅ proved - incomplete|shostak|0.080|
|deg_rec_TCC4|✅ proved - incomplete|shostak|0.125|
|deg_rec_TCC5|✅ proved - incomplete|shostak|0.120|
|deg_rec_TCC6|✅ proved - incomplete|shostak|0.242|
|deg_rec_TCC7|✅ proved - incomplete|shostak|0.090|
|deg_rec_TCC8|✅ proved - incomplete|shostak|0.084|
|deg_rec_TCC9|✅ proved - incomplete|shostak|0.090|
|deg_rec_TCC10|✅ proved - incomplete|shostak|0.193|
|deg_TCC1|✅ proved - incomplete|shostak|0.090|
|deg_TCC2|✅ proved - incomplete|shostak|0.070|
|polylist_eval|✅ proved - incomplete|shostak|1.075|
|polylist_eval_deg|✅ proved - incomplete|shostak|0.491|
|polylist_const|✅ proved - incomplete|shostak|0.023|
|polylist_monom_TCC1|✅ proved - complete|shostak|0.010|
|polylist_monom|✅ proved - incomplete|shostak|0.020|
|polylist_prod|✅ proved - incomplete|shostak|0.935|
|polylist_scal|✅ proved - incomplete|shostak|0.020|
|polylist_sum|✅ proved - incomplete|shostak|0.010|
|polylist_minus|✅ proved - incomplete|shostak|0.104|
|polylist_pow_TCC1|✅ proved - incomplete|shostak|0.010|
|polylist_pow|✅ proved - incomplete|shostak|0.716|
|polylist_neg|✅ proved - incomplete|shostak|0.062|
|polylist_div|✅ proved - incomplete|shostak|0.080|
|polylist_sq|✅ proved - incomplete|shostak|0.010|

## `poly_strategy`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sturm_TCC1|✅ proved - incomplete|shostak|0.050|
|sturm_def_TCC1|✅ proved - incomplete|shostak|0.043|
|sturm_def|✅ proved - incomplete|shostak|0.192|

## `strategies`
No formula declaration found.## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib/pvsio_utils/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230712-static-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230710-tcc-gen.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230707-defattach.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230706-extrategies.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`|
