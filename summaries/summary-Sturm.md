# Summary for `Sturm`
Run started at 1:33:16 7/4/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **350**   | **350**    | **350**    | **0**  | **6:31.614 s**   |
|top|0|0|0|0|0.000|
|compute_sturm|59|59|59|0|1:57.271|
|sturm|30|30|30|0|48.663|
|polynomial_division|12|12|12|0|14.931|
|number_sign_changes|35|35|35|0|22.015|
|gcd_coeff|39|39|39|0|8.419|
|remainder_sequence|31|31|31|0|14.523|
|polynomial_pseudo_divide|28|28|28|0|1:59.736|
|clear_denominators|35|35|35|0|5.943|
|sturmsquarefree|19|19|19|0|29.040|
|polylist|59|59|59|0|10.799|
|poly_strategy|3|3|3|0|0.274|
|strategies|0|0|0|0|0.000|
## Detailed Summary 
## `top`
No formula declaration found.
## `compute_sturm`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|finite_bij_real_remove_one|✅ proved - incomplete|shostak|0.423|
|finite_bij_real_remove_two|✅ proved - incomplete|shostak|0.606|
|computed_sturm_spec_TCC1|✅ proved - complete|shostak|0.083|
|computed_sturm_spec_TCC2|✅ proved - incomplete|shostak|0.080|
|computed_sturm_spec_TCC3|✅ proved - incomplete|shostak|0.140|
|computed_sturm_spec_TCC4|✅ proved - incomplete|shostak|0.252|
|computed_sturm_spec_TCC5|✅ proved - incomplete|shostak|0.220|
|computed_sturm_spec|✅ proved - incomplete|shostak|10.168|
|Eq_computed_remainder?_TCC1|✅ proved - complete|shostak|0.010|
|Eq_computed_remainder?_TCC2|✅ proved - complete|shostak|0.070|
|Eq_computed_remainder?_TCC3|✅ proved - complete|shostak|0.020|
|roots_closed_int_TCC1|✅ proved - incomplete|shostak|0.151|
|roots_closed_int_TCC2|✅ proved - incomplete|shostak|0.240|
|roots_closed_int_TCC3|✅ proved - incomplete|shostak|0.217|
|roots_closed_int_TCC4|✅ proved - incomplete|shostak|0.287|
|roots_closed_int_TCC5|✅ proved - incomplete|shostak|0.781|
|roots_closed_int_TCC6|✅ proved - incomplete|shostak|1.383|
|roots_closed_int_def_truetrue|✅ proved - incomplete|shostak|37.723|
|roots_closed_int_def_falsetrue|✅ proved - incomplete|shostak|18.073|
|roots_closed_int_def_truefalse|✅ proved - incomplete|shostak|18.502|
|roots_closed_int_def_falsefalse|✅ proved - incomplete|shostak|8.804|
|roots_closed_int_def|✅ proved - incomplete|shostak|0.359|
|number_roots_interval_TCC1|✅ proved - incomplete|shostak|0.137|
|number_roots_interval_TCC2|✅ proved - incomplete|shostak|0.296|
|number_roots_interval_def|✅ proved - incomplete|shostak|1.240|
|always_nonnegative_int_TCC1|✅ proved - incomplete|shostak|0.060|
|always_nonnegative_int_TCC2|✅ proved - incomplete|shostak|0.177|
|always_nonnegative_int_TCC3|✅ proved - incomplete|shostak|0.030|
|always_nonnegative_int_TCC4|✅ proved - incomplete|shostak|0.140|
|always_nonnegative_int_TCC5|✅ proved - incomplete|shostak|0.091|
|always_nonnegative_int_TCC6|✅ proved - incomplete|shostak|0.151|
|always_nonnegative_int_TCC7|✅ proved - incomplete|shostak|0.171|
|always_nonnegative_int_TCC8|✅ proved - incomplete|shostak|0.130|
|always_nonnegative_TCC1|✅ proved - incomplete|shostak|0.040|
|always_nonnegative_TCC2|✅ proved - complete|shostak|0.073|
|always_nonnegative_TCC3|✅ proved - incomplete|shostak|0.070|
|always_nonnegative_TCC4|✅ proved - incomplete|shostak|0.130|
|always_nonnegative_TCC5|✅ proved - incomplete|shostak|0.511|
|always_nonnegative_TCC6|✅ proved - incomplete|shostak|0.508|
|always_nonnegative_TCC7|✅ proved - incomplete|shostak|0.510|
|always_nonnegative_def|✅ proved - incomplete|shostak|4.294|
|rel_disjunction|✅ proved - complete|shostak|0.030|
|real_order_scal_pos|✅ proved - incomplete|shostak|0.558|
|real_order_scal_pos_0|✅ proved - incomplete|shostak|0.065|
|compute_poly_sat_TCC1|✅ proved - complete|shostak|0.020|
|compute_poly_sat_TCC2|✅ proved - complete|shostak|0.010|
|compute_poly_sat_TCC3|✅ proved - incomplete|shostak|0.140|
|compute_poly_sat_def|✅ proved - incomplete|shostak|3.429|
|compute_poly_sat_rational_TCC1|✅ proved - incomplete|shostak|0.060|
|compute_poly_sat_rational_def|✅ proved - incomplete|shostak|0.775|
|compute_poly_mono_basic_TCC1|✅ proved - complete|shostak|0.060|
|compute_poly_mono_basic_TCC2|✅ proved - incomplete|shostak|0.040|
|compute_poly_mono_basic_TCC3|✅ proved - complete|shostak|0.060|
|compute_poly_mono_basic_TCC4|✅ proved - incomplete|shostak|0.050|
|compute_poly_mono_basic_TCC5|✅ proved - complete|shostak|0.060|
|compute_poly_mono_basic_TCC6|✅ proved - incomplete|shostak|0.049|
|compute_poly_mono_basic_def|✅ proved - incomplete|shostak|2.447|
|poly_non_constant_real_int|✅ proved - incomplete|shostak|0.046|
|mono_def|✅ proved - incomplete|shostak|2.021|

## `sturm`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|constructed_sturm_sequence?_TCC1|✅ proved - complete|shostak|0.030|
|constructed_sturm_sequence?_TCC2|✅ proved - complete|shostak|0.080|
|constructed_sturm_sequence?_TCC3|✅ proved - complete|shostak|0.069|
|constructed_sturm_seq_repeated_root|✅ proved - incomplete|shostak|1.012|
|constructed_sturm_seq_repeated_root_mth|✅ proved - incomplete|shostak|3.941|
|constructed_sturm_seq_repeated_root_struct_TCC1|✅ proved - incomplete|shostak|0.666|
|constructed_sturm_seq_repeated_root_struct_TCC2|✅ proved - incomplete|shostak|0.864|
|constructed_sturm_seq_repeated_root_struct_TCC3|✅ proved - incomplete|shostak|1.225|
|constructed_sturm_seq_repeated_root_struct_TCC4|✅ proved - incomplete|shostak|1.259|
|constructed_sturm_seq_repeated_root_struct|✅ proved - incomplete|shostak|6.447|
|constructed_sturm_seq_first_signs_eq|✅ proved - incomplete|shostak|6.737|
|sturm_lem_no_roots|✅ proved - incomplete|shostak|0.887|
|constructed_sturm_lem_one_simple_root_TCC1|✅ proved - incomplete|shostak|0.236|
|constructed_sturm_lem_one_simple_root|✅ proved - incomplete|shostak|1.106|
|constructed_sturm_lem_one_multi_root_TCC1|✅ proved - incomplete|shostak|0.358|
|constructed_sturm_lem_one_multi_root|✅ proved - incomplete|shostak|5.793|
|constructed_sturm_lem_edge_root_TCC1|✅ proved - incomplete|shostak|0.230|
|constructed_sturm_lem_edge_root|✅ proved - incomplete|shostak|3.552|
|constructed_sturm_roots_between_enum_TCC1|✅ proved - incomplete|shostak|0.020|
|constructed_sturm_roots_between_enum_TCC2|✅ proved - incomplete|shostak|0.020|
|constructed_sturm_roots_between_enum|✅ proved - incomplete|shostak|1.582|
|constructed_sturm_lem_no_roots_full_TCC1|✅ proved - incomplete|shostak|0.170|
|constructed_sturm_lem_no_roots_full|✅ proved - incomplete|shostak|0.583|
|sturm_TCC1|✅ proved - incomplete|shostak|0.190|
|sturm|✅ proved - incomplete|shostak|7.767|
|sturm_unbounded_left_TCC1|✅ proved - incomplete|shostak|0.130|
|sturm_unbounded_left|✅ proved - incomplete|shostak|2.749|
|sturm_unbounded_right|✅ proved - incomplete|shostak|0.000|
|sturm_unbounded_TCC1|✅ proved - incomplete|shostak|0.080|
|sturm_unbounded|✅ proved - incomplete|shostak|0.880|

## `polynomial_division`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|poly_divide_TCC1|✅ proved - complete|shostak|0.120|
|poly_divide_TCC2|✅ proved - complete|shostak|0.010|
|poly_divide_TCC3|✅ proved - complete|shostak|0.030|
|poly_divide_TCC4|✅ proved - complete|shostak|0.080|
|poly_divide_TCC5|✅ proved - complete|shostak|0.070|
|poly_divide_TCC6|✅ proved - complete|shostak|0.219|
|poly_divide_TCC7|✅ proved - complete|shostak|0.229|
|poly_divide_TCC8|✅ proved - complete|shostak|0.030|
|poly_divide_TCC9|✅ proved - complete|shostak|0.150|
|poly_divide_def|✅ proved - incomplete|shostak|13.193|
|poly_divide_struct|✅ proved - complete|shostak|0.319|
|poly_divide_lengths|✅ proved - complete|shostak|0.481|

## `number_sign_changes`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|number_sign_changes_TCC1|✅ proved - complete|shostak|0.020|
|number_sign_changes_TCC2|✅ proved - complete|shostak|0.000|
|sign_changes_TCC1|✅ proved - complete|shostak|0.010|
|sign_changes_TCC2|✅ proved - complete|shostak|0.020|
|sign_changes_TCC3|✅ proved - incomplete|shostak|0.069|
|sign_changes_TCC4|✅ proved - incomplete|shostak|0.070|
|sign_changes_TCC5|✅ proved - incomplete|shostak|0.090|
|sign_changes_TCC6|✅ proved - incomplete|shostak|0.133|
|sign_changes_TCC7|✅ proved - incomplete|shostak|0.080|
|sign_changes_TCC8|✅ proved - incomplete|shostak|0.040|
|sign_changes_TCC9|✅ proved - incomplete|shostak|0.140|
|sign_changes_TCC10|✅ proved - incomplete|shostak|0.060|
|sign_changes_TCC11|✅ proved - incomplete|shostak|0.035|
|sign_changes_TCC12|✅ proved - incomplete|shostak|0.120|
|num_sign_changes_def_TCC1|✅ proved - complete|shostak|0.010|
|num_sign_changes_def|✅ proved - incomplete|shostak|0.030|
|number_sign_changes_lastnz_nonzero|✅ proved - incomplete|shostak|0.137|
|number_sign_changes_lastnz|✅ proved - incomplete|shostak|0.020|
|number_sign_changes_eq|✅ proved - incomplete|shostak|0.499|
|number_sign_changes_easy|✅ proved - incomplete|shostak|0.220|
|number_sign_changes_test1|✅ proved - incomplete|shostak|0.215|
|number_sign_changes_test2|✅ proved - incomplete|shostak|0.200|
|number_sign_changes_test3|✅ proved - incomplete|shostak|0.234|
|number_sign_changes_test4|✅ proved - incomplete|shostak|0.210|
|number_sign_changes_test5|✅ proved - incomplete|shostak|0.250|
|number_sign_changes_test6|✅ proved - incomplete|shostak|0.238|
|number_sign_changes_test7|✅ proved - incomplete|shostak|0.250|
|nsc_regular_swap_TCC1|✅ proved - incomplete|shostak|0.070|
|nsc_regular_swap|✅ proved - incomplete|shostak|4.366|
|nsc_edge_diff_TCC1|✅ proved - incomplete|shostak|0.038|
|nsc_edge_diff_TCC2|✅ proved - incomplete|shostak|0.080|
|nsc_edge_diff|✅ proved - incomplete|shostak|4.214|
|nsc_multiroot|✅ proved - incomplete|shostak|2.111|
|nsc_multiroot_full_TCC1|✅ proved - incomplete|shostak|0.050|
|nsc_multiroot_full|✅ proved - incomplete|shostak|7.686|

## `gcd_coeff`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|gcd_coeff_TCC1|✅ proved - incomplete|shostak|0.030|
|gcd_coeff_TCC2|✅ proved - incomplete|shostak|0.040|
|gcd_coeff_TCC3|✅ proved - incomplete|shostak|0.198|
|gcd_coeff_TCC4|✅ proved - incomplete|shostak|0.090|
|gcd_coeff_TCC5|✅ proved - incomplete|shostak|0.149|
|gcd_coeff_TCC6|✅ proved - incomplete|shostak|0.090|
|gcd_coeff_TCC7|✅ proved - incomplete|shostak|0.120|
|gcd_coeff_TCC8|✅ proved - incomplete|shostak|0.287|
|gcd_coeff_TCC9|✅ proved - incomplete|shostak|0.070|
|gcd_coeff_TCC10|✅ proved - incomplete|shostak|0.050|
|gcd_coeff_nonzero|✅ proved - incomplete|shostak|0.040|
|gcd_coeff_zero|✅ proved - incomplete|shostak|0.219|
|descalarize_list_TCC1|✅ proved - incomplete|shostak|0.030|
|descalarize_list_TCC2|✅ proved - incomplete|shostak|0.000|
|descalarize_list_TCC3|✅ proved - incomplete|shostak|0.074|
|descalarize_list_TCC4|✅ proved - incomplete|shostak|0.266|
|descalarize_list_TCC5|✅ proved - incomplete|shostak|0.096|
|descalarize_list_TCC6|✅ proved - incomplete|shostak|0.080|
|descalarize_list_TCC7|✅ proved - incomplete|shostak|0.370|
|primitize_list_TCC1|✅ proved - incomplete|shostak|0.050|
|primitize_list_def_TCC1|✅ proved - incomplete|shostak|0.050|
|primitize_list_def|✅ proved - incomplete|shostak|0.450|
|primitize_zero_list|✅ proved - incomplete|shostak|0.188|
|primitize_list_length|✅ proved - incomplete|shostak|0.030|
|nonzero_version_rec_TCC1|✅ proved - incomplete|shostak|0.125|
|nonzero_version_rec_TCC2|✅ proved - incomplete|shostak|0.020|
|nonzero_version_rec_TCC3|✅ proved - incomplete|shostak|0.030|
|nonzero_version_rec_TCC4|✅ proved - incomplete|shostak|0.060|
|nonzero_version_rec_TCC5|✅ proved - incomplete|shostak|0.060|
|nonzero_version_rec_TCC6|✅ proved - incomplete|shostak|0.758|
|nonzero_version_rec_length_nonzero|✅ proved - incomplete|shostak|0.485|
|nonzero_version_rec_def_TCC1|✅ proved - incomplete|shostak|0.060|
|nonzero_version_rec_def_TCC2|✅ proved - incomplete|shostak|0.080|
|nonzero_version_rec_def|✅ proved - incomplete|shostak|1.456|
|nonzero_version_def_TCC1|✅ proved - incomplete|shostak|0.090|
|nonzero_version_def_TCC2|✅ proved - incomplete|shostak|0.100|
|nonzero_version_def|✅ proved - incomplete|shostak|1.818|
|nonzero_version_length_nz_TCC1|✅ proved - incomplete|shostak|0.020|
|nonzero_version_length_nz|✅ proved - incomplete|shostak|0.190|

## `remainder_sequence`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|is_neg_remainder_list?_TCC1|✅ proved - complete|shostak|0.053|
|is_neg_remainder_list?_TCC2|✅ proved - complete|shostak|0.060|
|is_neg_remainder_list?_TCC3|✅ proved - incomplete|shostak|0.070|
|is_neg_remainder_list?_TCC4|✅ proved - complete|shostak|0.061|
|is_neg_remainder_list?_TCC5|✅ proved - incomplete|shostak|0.170|
|is_neg_remainder_list?_TCC6|✅ proved - incomplete|shostak|0.116|
|is_neg_remainder_list?_TCC7|✅ proved - incomplete|shostak|0.100|
|is_neg_remainder_list?_TCC8|✅ proved - incomplete|shostak|0.145|
|is_neg_remainder_list?_TCC9|✅ proved - incomplete|shostak|0.090|
|is_neg_remainder_list?_TCC10|✅ proved - incomplete|shostak|0.279|
|is_neg_remainder_list?_TCC11|✅ proved - incomplete|shostak|0.214|
|compute_remainder_seq_TCC1|✅ proved - incomplete|shostak|0.970|
|compute_remainder_seq_TCC2|✅ proved - incomplete|shostak|0.950|
|compute_remainder_seq_TCC3|✅ proved - incomplete|shostak|0.280|
|compute_remainder_seq_TCC4|✅ proved - incomplete|shostak|1.022|
|compute_remainder_seq_TCC5|✅ proved - incomplete|shostak|0.454|
|compute_remainder_seq_TCC6|✅ proved - incomplete|shostak|5.905|
|compute_remainder_seq_TCC7|✅ proved - incomplete|shostak|0.180|
|compute_remainder_seq_TCC8|✅ proved - incomplete|shostak|0.013|
|compute_remainder_seq_TCC9|✅ proved - incomplete|shostak|0.030|
|compute_remainder_seq_TCC10|✅ proved - incomplete|shostak|0.030|
|compute_remainder_seq_TCC11|✅ proved - incomplete|shostak|0.215|
|compute_remainder_seq_TCC12|✅ proved - incomplete|shostak|0.205|
|compute_remainder_seq_TCC13|✅ proved - incomplete|shostak|1.390|
|compute_remainder_seq_TCC14|✅ proved - incomplete|shostak|0.708|
|remainder_seq_TCC1|✅ proved - incomplete|shostak|0.392|
|sturm_chain_TCC1|✅ proved - complete|shostak|0.070|
|sturm_chain_TCC2|✅ proved - complete|shostak|0.010|
|remainder_seq_test_TCC1|✅ proved - complete|shostak|0.041|
|remainder_seq_test_TCC2|✅ proved - complete|shostak|0.070|
|remainder_seq_test|✅ proved - incomplete|shostak|0.230|

## `polynomial_pseudo_divide`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|pseudo_div_TCC1|✅ proved - complete|shostak|0.138|
|pseudo_div_TCC2|✅ proved - incomplete|shostak|0.250|
|pseudo_div_TCC3|✅ proved - incomplete|shostak|0.352|
|pseudo_div_TCC4|✅ proved - incomplete|shostak|0.362|
|pseudo_div_TCC5|✅ proved - incomplete|shostak|0.362|
|pseudo_div_TCC6|✅ proved - incomplete|shostak|0.406|
|pseudo_div_TCC7|✅ proved - incomplete|shostak|0.636|
|pseudo_div_TCC8|✅ proved - incomplete|shostak|0.611|
|pseudo_div_TCC9|✅ proved - incomplete|shostak|0.443|
|pseudo_div_TCC10|✅ proved - incomplete|shostak|0.444|
|pseudo_div_TCC11|✅ proved - incomplete|shostak|0.955|
|pseudo_div_TCC12|✅ proved - complete|shostak|0.030|
|pseudo_div_TCC13|✅ proved - complete|shostak|0.160|
|pseudo_div_lengths|✅ proved - incomplete|shostak|6.974|
|HHGGLEM|✅ proved - complete|shostak|0.647|
|pseudo_div_def_TCC1|✅ proved - incomplete|shostak|0.383|
|pseudo_div_def_TCC2|✅ proved - incomplete|shostak|0.866|
|pseudo_div_def|✅ proved - incomplete|shostak|1:20.912|
|poly_pseudo_remainder_def_TCC1|✅ proved - incomplete|shostak|0.260|
|poly_pseudo_remainder_def|✅ proved - incomplete|shostak|1.845|
|adjusted_remainder_TCC1|✅ proved - incomplete|shostak|0.478|
|adjusted_remainder_def_TCC1|✅ proved - incomplete|shostak|0.379|
|adjusted_remainder_def|✅ proved - incomplete|shostak|13.320|
|adjusted_remainder_length|✅ proved - incomplete|shostak|3.082|
|adjusted_remainder_length2|✅ proved - incomplete|shostak|3.094|
|adjusted_remainder_empty|✅ proved - incomplete|shostak|2.247|
|adjusted_remainder_test_TCC1|✅ proved - complete|shostak|0.060|
|adjusted_remainder_test|✅ proved - incomplete|shostak|0.040|

## `clear_denominators`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|posratpair_plus|✅ proved - complete|shostak|0.100|
|posratpair_div|✅ proved - complete|shostak|0.065|
|PosRatSet_nonempty|✅ proved - complete|shostak|0.120|
|PosRatSet_glb_posnat_TCC1|✅ proved - complete|shostak|0.154|
|PosRatSet_glb_posnat|✅ proved - complete|shostak|0.224|
|PosRatMeas_TCC1|✅ proved - complete|shostak|0.030|
|PosRatMeas_TCC2|✅ proved - complete|shostak|0.265|
|PosRatMeas_TCC3|✅ proved - complete|shostak|0.180|
|PosRatMeas_increasing|✅ proved - complete|shostak|0.000|
|PosRatMeas_glb_minus_posnat_TCC1|✅ proved - complete|shostak|0.030|
|PosRatMeas_glb_minus_posnat_TCC2|✅ proved - complete|shostak|0.180|
|PosRatMeas_glb_minus_posnat|✅ proved - complete|shostak|0.410|
|compute_posratpair_TCC1|✅ proved - complete|shostak|0.010|
|compute_posratpair_TCC2|✅ proved - complete|shostak|0.020|
|compute_posratpair_TCC3|✅ proved - complete|shostak|0.010|
|compute_posratpair_TCC4|✅ proved - complete|shostak|0.030|
|compute_posratpair_TCC5|✅ proved - complete|shostak|0.441|
|compute_posratpair_TCC6|✅ proved - complete|shostak|0.170|
|compute_posratpair_TCC7|✅ proved - complete|shostak|0.193|
|compute_posratpair_TCC8|✅ proved - complete|shostak|0.080|
|rat_poly_to_int_rec_TCC1|✅ proved - complete|shostak|0.015|
|rat_poly_to_int_rec_TCC2|✅ proved - complete|shostak|0.555|
|rat_poly_to_int_rec_TCC3|✅ proved - incomplete|shostak|0.458|
|rat_poly_to_int_rec_TCC4|✅ proved - complete|shostak|0.030|
|rat_poly_to_int_rec_TCC5|✅ proved - complete|shostak|0.020|
|rat_poly_to_int_rec_TCC6|✅ proved - complete|shostak|0.000|
|rat_poly_to_int_rec_TCC7|✅ proved - complete|shostak|0.116|
|rat_poly_to_int_rec_TCC8|✅ proved - complete|shostak|0.110|
|rat_poly_to_int_rec_TCC9|✅ proved - complete|shostak|0.330|
|rat_poly_to_int_rec_TCC10|✅ proved - complete|shostak|0.130|
|rat_poly_to_int_rec_TCC11|✅ proved - incomplete|shostak|1.166|
|rat_poly_to_int_rec_TCC12|✅ proved - complete|shostak|0.020|
|rat_poly_to_int_rec_TCC13|✅ proved - complete|shostak|0.010|
|rat_poly_to_int_TCC1|✅ proved - incomplete|shostak|0.171|
|rat_poly_to_int_TCC2|✅ proved - incomplete|shostak|0.100|

## `sturmsquarefree`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sturm_sequence?_TCC1|✅ proved - incomplete|shostak|0.120|
|sturm_sequence?_TCC2|✅ proved - incomplete|shostak|0.270|
|sturm_sequence_degree_1|✅ proved - incomplete|shostak|0.313|
|sturm_seq_repeated_root|✅ proved - incomplete|shostak|0.788|
|sturm_seq_last_nonzero|✅ proved - incomplete|shostak|0.297|
|sturm_seq_first_signs_eq|✅ proved - incomplete|shostak|6.716|
|sturm_lem_no_roots|✅ proved - incomplete|shostak|0.897|
|sturm_lem_one_root|✅ proved - incomplete|shostak|9.167|
|sturm_lem_edge_root|✅ proved - incomplete|shostak|3.924|
|roots_between_enum_TCC1|✅ proved - incomplete|shostak|0.246|
|roots_between_enum_TCC2|✅ proved - incomplete|shostak|0.240|
|roots_between_enum|✅ proved - incomplete|shostak|1.560|
|sturm_lem_no_roots_full|✅ proved - incomplete|shostak|0.607|
|sturm_square_free|✅ proved - incomplete|shostak|0.000|
|sturm_seq_square_free_TCC1|✅ proved - incomplete|shostak|0.030|
|sturm_seq_square_free_TCC2|✅ proved - incomplete|shostak|0.385|
|sturm_seq_square_free_TCC3|✅ proved - incomplete|shostak|0.110|
|sturm_seq_square_free_TCC4|✅ proved - incomplete|shostak|0.517|
|sturm_seq_square_free|✅ proved - incomplete|shostak|2.853|

## `polylist`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|eval_polylist_TCC1|✅ proved - incomplete|shostak|0.125|
|eval_polylist_TCC2|✅ proved - incomplete|shostak|0.120|
|eval_polylist_TCC3|✅ proved - incomplete|shostak|0.232|
|eval_polylist_TCC4|✅ proved - incomplete|shostak|0.130|
|eval_polylist_TCC5|✅ proved - incomplete|shostak|0.130|
|eval_polylist_times_x_TCC1|✅ proved - complete|shostak|0.010|
|eval_polylist_times_x_TCC2|✅ proved - complete|shostak|0.010|
|eval_polylist_times_x|✅ proved - incomplete|shostak|0.634|
|eval_polylist_remove_acc|✅ proved - incomplete|shostak|0.297|
|eval_polylist_test_TCC1|✅ proved - incomplete|shostak|0.060|
|eval_polylist_test_TCC2|✅ proved - complete|shostak|0.000|
|eval_polylist_test_TCC3|✅ proved - complete|shostak|0.010|
|eval_polylist_test|✅ proved - incomplete|shostak|0.120|
|polylist_TCC1|✅ proved - complete|shostak|0.000|
|pmonom_TCC1|✅ proved - complete|shostak|0.030|
|pmonom_TCC2|✅ proved - incomplete|shostak|0.103|
|pmonom_TCC3|✅ proved - complete|shostak|0.020|
|pmonom_TCC4|✅ proved - complete|shostak|0.010|
|pmonom_TCC5|✅ proved - incomplete|shostak|0.274|
|psum_TCC1|✅ proved - incomplete|shostak|0.582|
|psum_TCC2|✅ proved - incomplete|shostak|0.506|
|psum_TCC3|✅ proved - incomplete|shostak|0.060|
|psum_TCC4|✅ proved - incomplete|shostak|0.045|
|psum_TCC5|✅ proved - complete|shostak|0.070|
|psum_TCC6|✅ proved - incomplete|shostak|1.091|
|pscal_TCC1|✅ proved - incomplete|shostak|0.070|
|pscal_TCC2|✅ proved - incomplete|shostak|0.030|
|pscal_TCC3|✅ proved - complete|shostak|0.020|
|pscal_TCC4|✅ proved - incomplete|shostak|0.797|
|pprod_TCC1|✅ proved - incomplete|shostak|0.030|
|pprod_TCC2|✅ proved - incomplete|shostak|0.174|
|pprod_TCC3|✅ proved - incomplete|shostak|0.100|
|pprod_TCC4|✅ proved - incomplete|shostak|0.423|
|deg_rec_TCC1|✅ proved - incomplete|shostak|0.070|
|deg_rec_TCC2|✅ proved - incomplete|shostak|0.070|
|deg_rec_TCC3|✅ proved - incomplete|shostak|0.080|
|deg_rec_TCC4|✅ proved - incomplete|shostak|0.104|
|deg_rec_TCC5|✅ proved - incomplete|shostak|0.110|
|deg_rec_TCC6|✅ proved - incomplete|shostak|0.222|
|deg_rec_TCC7|✅ proved - incomplete|shostak|0.080|
|deg_rec_TCC8|✅ proved - incomplete|shostak|0.084|
|deg_rec_TCC9|✅ proved - incomplete|shostak|0.080|
|deg_rec_TCC10|✅ proved - incomplete|shostak|0.170|
|deg_TCC1|✅ proved - incomplete|shostak|0.084|
|deg_TCC2|✅ proved - incomplete|shostak|0.070|
|polylist_eval|✅ proved - incomplete|shostak|0.967|
|polylist_eval_deg|✅ proved - incomplete|shostak|0.432|
|polylist_const|✅ proved - incomplete|shostak|0.030|
|polylist_monom_TCC1|✅ proved - complete|shostak|0.005|
|polylist_monom|✅ proved - incomplete|shostak|0.020|
|polylist_prod|✅ proved - incomplete|shostak|0.865|
|polylist_scal|✅ proved - incomplete|shostak|0.010|
|polylist_sum|✅ proved - incomplete|shostak|0.010|
|polylist_minus|✅ proved - incomplete|shostak|0.094|
|polylist_pow_TCC1|✅ proved - incomplete|shostak|0.020|
|polylist_pow|✅ proved - incomplete|shostak|0.655|
|polylist_neg|✅ proved - incomplete|shostak|0.070|
|polylist_div|✅ proved - incomplete|shostak|0.074|
|polylist_sq|✅ proved - incomplete|shostak|0.010|

## `poly_strategy`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sturm_TCC1|✅ proved - incomplete|shostak|0.050|
|sturm_def_TCC1|✅ proved - incomplete|shostak|0.040|
|sturm_def|✅ proved - incomplete|shostak|0.184|

## `strategies`
No formula declaration found.## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib//float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-pvsio-fix.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210219-extratregies.lisp`|
