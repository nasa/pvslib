# Summary for `Sturm`
Run started at 0:35:2 7/8/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **350**   | **350**    | **350**    | **0**  | **6:45.222 s**   |
|top|0|0|0|0|0.000|
|compute_sturm|59|59|59|0|2:5.025|
|sturm|30|30|30|0|52.147|
|polynomial_division|12|12|12|0|15.159|
|number_sign_changes|35|35|35|0|20.377|
|gcd_coeff|39|39|39|0|8.783|
|remainder_sequence|31|31|31|0|14.756|
|polynomial_pseudo_divide|28|28|28|0|2:0.852|
|clear_denominators|35|35|35|0|6.900|
|sturmsquarefree|19|19|19|0|30.013|
|polylist|59|59|59|0|10.914|
|poly_strategy|3|3|3|0|0.296|
|strategies|0|0|0|0|0.000|
## Detailed Summary 
## `top`
No formula declaration found.
## `compute_sturm`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|finite_bij_real_remove_one|✅ proved - incomplete|shostak|0.410|
|finite_bij_real_remove_two|✅ proved - incomplete|shostak|0.611|
|computed_sturm_spec_TCC1|✅ proved - complete|shostak|0.080|
|computed_sturm_spec_TCC2|✅ proved - incomplete|shostak|0.080|
|computed_sturm_spec_TCC3|✅ proved - incomplete|shostak|0.163|
|computed_sturm_spec_TCC4|✅ proved - incomplete|shostak|0.262|
|computed_sturm_spec_TCC5|✅ proved - incomplete|shostak|0.232|
|computed_sturm_spec|✅ proved - incomplete|shostak|10.379|
|Eq_computed_remainder?_TCC1|✅ proved - complete|shostak|0.020|
|Eq_computed_remainder?_TCC2|✅ proved - complete|shostak|0.070|
|Eq_computed_remainder?_TCC3|✅ proved - complete|shostak|0.010|
|roots_closed_int_TCC1|✅ proved - incomplete|shostak|0.159|
|roots_closed_int_TCC2|✅ proved - incomplete|shostak|0.239|
|roots_closed_int_TCC3|✅ proved - incomplete|shostak|0.226|
|roots_closed_int_TCC4|✅ proved - incomplete|shostak|0.298|
|roots_closed_int_TCC5|✅ proved - incomplete|shostak|0.811|
|roots_closed_int_TCC6|✅ proved - incomplete|shostak|1.420|
|roots_closed_int_def_truetrue|✅ proved - incomplete|shostak|39.620|
|roots_closed_int_def_falsetrue|✅ proved - incomplete|shostak|18.274|
|roots_closed_int_def_truefalse|✅ proved - incomplete|shostak|19.580|
|roots_closed_int_def_falsefalse|✅ proved - incomplete|shostak|8.842|
|roots_closed_int_def|✅ proved - incomplete|shostak|0.375|
|number_roots_interval_TCC1|✅ proved - incomplete|shostak|0.140|
|number_roots_interval_TCC2|✅ proved - incomplete|shostak|0.303|
|number_roots_interval_def|✅ proved - incomplete|shostak|1.280|
|always_nonnegative_int_TCC1|✅ proved - incomplete|shostak|0.050|
|always_nonnegative_int_TCC2|✅ proved - incomplete|shostak|0.191|
|always_nonnegative_int_TCC3|✅ proved - incomplete|shostak|0.030|
|always_nonnegative_int_TCC4|✅ proved - incomplete|shostak|0.133|
|always_nonnegative_int_TCC5|✅ proved - incomplete|shostak|0.095|
|always_nonnegative_int_TCC6|✅ proved - incomplete|shostak|0.146|
|always_nonnegative_int_TCC7|✅ proved - incomplete|shostak|0.172|
|always_nonnegative_int_TCC8|✅ proved - incomplete|shostak|0.113|
|always_nonnegative_TCC1|✅ proved - incomplete|shostak|0.040|
|always_nonnegative_TCC2|✅ proved - complete|shostak|0.070|
|always_nonnegative_TCC3|✅ proved - incomplete|shostak|0.070|
|always_nonnegative_TCC4|✅ proved - incomplete|shostak|0.133|
|always_nonnegative_TCC5|✅ proved - incomplete|shostak|0.519|
|always_nonnegative_TCC6|✅ proved - incomplete|shostak|0.521|
|always_nonnegative_TCC7|✅ proved - incomplete|shostak|0.521|
|always_nonnegative_def|✅ proved - incomplete|shostak|4.344|
|rel_disjunction|✅ proved - complete|shostak|0.020|
|real_order_scal_pos|✅ proved - incomplete|shostak|0.567|
|real_order_scal_pos_0|✅ proved - incomplete|shostak|0.050|
|compute_poly_sat_TCC1|✅ proved - complete|shostak|0.020|
|compute_poly_sat_TCC2|✅ proved - complete|shostak|0.010|
|compute_poly_sat_TCC3|✅ proved - incomplete|shostak|0.135|
|compute_poly_sat_def|✅ proved - incomplete|shostak|3.496|
|compute_poly_sat_rational_TCC1|✅ proved - incomplete|shostak|0.000|
|compute_poly_sat_rational_def|✅ proved - incomplete|shostak|0.812|
|compute_poly_mono_basic_TCC1|✅ proved - complete|shostak|0.060|
|compute_poly_mono_basic_TCC2|✅ proved - incomplete|shostak|0.042|
|compute_poly_mono_basic_TCC3|✅ proved - complete|shostak|0.060|
|compute_poly_mono_basic_TCC4|✅ proved - incomplete|shostak|0.050|
|compute_poly_mono_basic_TCC5|✅ proved - complete|shostak|0.060|
|compute_poly_mono_basic_TCC6|✅ proved - incomplete|shostak|0.050|
|compute_poly_mono_basic_def|✅ proved - incomplete|shostak|6.482|
|poly_non_constant_real_int|✅ proved - incomplete|shostak|0.060|
|mono_def|✅ proved - incomplete|shostak|2.019|

## `sturm`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|constructed_sturm_sequence?_TCC1|✅ proved - complete|shostak|0.030|
|constructed_sturm_sequence?_TCC2|✅ proved - complete|shostak|0.081|
|constructed_sturm_sequence?_TCC3|✅ proved - complete|shostak|0.070|
|constructed_sturm_seq_repeated_root|✅ proved - incomplete|shostak|1.026|
|constructed_sturm_seq_repeated_root_mth|✅ proved - incomplete|shostak|3.984|
|constructed_sturm_seq_repeated_root_struct_TCC1|✅ proved - incomplete|shostak|0.676|
|constructed_sturm_seq_repeated_root_struct_TCC2|✅ proved - incomplete|shostak|0.886|
|constructed_sturm_seq_repeated_root_struct_TCC3|✅ proved - incomplete|shostak|1.295|
|constructed_sturm_seq_repeated_root_struct_TCC4|✅ proved - incomplete|shostak|1.301|
|constructed_sturm_seq_repeated_root_struct|✅ proved - incomplete|shostak|6.587|
|constructed_sturm_seq_first_signs_eq|✅ proved - incomplete|shostak|6.851|
|sturm_lem_no_roots|✅ proved - incomplete|shostak|0.894|
|constructed_sturm_lem_one_simple_root_TCC1|✅ proved - incomplete|shostak|0.000|
|constructed_sturm_lem_one_simple_root|✅ proved - incomplete|shostak|5.345|
|constructed_sturm_lem_one_multi_root_TCC1|✅ proved - incomplete|shostak|0.382|
|constructed_sturm_lem_one_multi_root|✅ proved - incomplete|shostak|5.896|
|constructed_sturm_lem_edge_root_TCC1|✅ proved - incomplete|shostak|0.240|
|constructed_sturm_lem_edge_root|✅ proved - incomplete|shostak|3.675|
|constructed_sturm_roots_between_enum_TCC1|✅ proved - incomplete|shostak|0.030|
|constructed_sturm_roots_between_enum_TCC2|✅ proved - incomplete|shostak|0.030|
|constructed_sturm_roots_between_enum|✅ proved - incomplete|shostak|1.612|
|constructed_sturm_lem_no_roots_full_TCC1|✅ proved - incomplete|shostak|0.183|
|constructed_sturm_lem_no_roots_full|✅ proved - incomplete|shostak|0.582|
|sturm_TCC1|✅ proved - incomplete|shostak|0.193|
|sturm|✅ proved - incomplete|shostak|4.711|
|sturm_unbounded_left_TCC1|✅ proved - incomplete|shostak|0.140|
|sturm_unbounded_left|✅ proved - incomplete|shostak|2.738|
|sturm_unbounded_right|✅ proved - incomplete|shostak|1.749|
|sturm_unbounded_TCC1|✅ proved - incomplete|shostak|0.080|
|sturm_unbounded|✅ proved - incomplete|shostak|0.880|

## `polynomial_division`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|poly_divide_TCC1|✅ proved - complete|shostak|0.128|
|poly_divide_TCC2|✅ proved - complete|shostak|0.010|
|poly_divide_TCC3|✅ proved - complete|shostak|0.020|
|poly_divide_TCC4|✅ proved - complete|shostak|0.090|
|poly_divide_TCC5|✅ proved - complete|shostak|0.079|
|poly_divide_TCC6|✅ proved - complete|shostak|0.220|
|poly_divide_TCC7|✅ proved - complete|shostak|0.231|
|poly_divide_TCC8|✅ proved - complete|shostak|0.033|
|poly_divide_TCC9|✅ proved - complete|shostak|0.160|
|poly_divide_def|✅ proved - incomplete|shostak|13.399|
|poly_divide_struct|✅ proved - complete|shostak|0.311|
|poly_divide_lengths|✅ proved - complete|shostak|0.478|

## `number_sign_changes`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|number_sign_changes_TCC1|✅ proved - complete|shostak|0.020|
|number_sign_changes_TCC2|✅ proved - complete|shostak|0.010|
|sign_changes_TCC1|✅ proved - complete|shostak|0.000|
|sign_changes_TCC2|✅ proved - complete|shostak|0.030|
|sign_changes_TCC3|✅ proved - incomplete|shostak|0.061|
|sign_changes_TCC4|✅ proved - incomplete|shostak|0.080|
|sign_changes_TCC5|✅ proved - incomplete|shostak|0.080|
|sign_changes_TCC6|✅ proved - incomplete|shostak|0.140|
|sign_changes_TCC7|✅ proved - incomplete|shostak|0.080|
|sign_changes_TCC8|✅ proved - incomplete|shostak|0.030|
|sign_changes_TCC9|✅ proved - incomplete|shostak|0.149|
|sign_changes_TCC10|✅ proved - incomplete|shostak|0.070|
|sign_changes_TCC11|✅ proved - incomplete|shostak|0.030|
|sign_changes_TCC12|✅ proved - incomplete|shostak|0.127|
|num_sign_changes_def_TCC1|✅ proved - complete|shostak|0.010|
|num_sign_changes_def|✅ proved - incomplete|shostak|0.020|
|number_sign_changes_lastnz_nonzero|✅ proved - incomplete|shostak|0.141|
|number_sign_changes_lastnz|✅ proved - incomplete|shostak|0.020|
|number_sign_changes_eq|✅ proved - incomplete|shostak|0.505|
|number_sign_changes_easy|✅ proved - incomplete|shostak|0.223|
|number_sign_changes_test1|✅ proved - incomplete|shostak|0.223|
|number_sign_changes_test2|✅ proved - incomplete|shostak|0.210|
|number_sign_changes_test3|✅ proved - incomplete|shostak|0.230|
|number_sign_changes_test4|✅ proved - incomplete|shostak|0.215|
|number_sign_changes_test5|✅ proved - incomplete|shostak|0.280|
|number_sign_changes_test6|✅ proved - incomplete|shostak|0.244|
|number_sign_changes_test7|✅ proved - incomplete|shostak|0.270|
|nsc_regular_swap_TCC1|✅ proved - incomplete|shostak|0.080|
|nsc_regular_swap|✅ proved - incomplete|shostak|4.476|
|nsc_edge_diff_TCC1|✅ proved - incomplete|shostak|0.043|
|nsc_edge_diff_TCC2|✅ proved - incomplete|shostak|0.090|
|nsc_edge_diff|✅ proved - incomplete|shostak|4.344|
|nsc_multiroot|✅ proved - incomplete|shostak|0.000|
|nsc_multiroot_full_TCC1|✅ proved - incomplete|shostak|0.055|
|nsc_multiroot_full|✅ proved - incomplete|shostak|7.791|

## `gcd_coeff`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|gcd_coeff_TCC1|✅ proved - incomplete|shostak|0.020|
|gcd_coeff_TCC2|✅ proved - incomplete|shostak|0.042|
|gcd_coeff_TCC3|✅ proved - incomplete|shostak|0.200|
|gcd_coeff_TCC4|✅ proved - incomplete|shostak|0.098|
|gcd_coeff_TCC5|✅ proved - incomplete|shostak|0.150|
|gcd_coeff_TCC6|✅ proved - incomplete|shostak|0.088|
|gcd_coeff_TCC7|✅ proved - incomplete|shostak|0.130|
|gcd_coeff_TCC8|✅ proved - incomplete|shostak|0.296|
|gcd_coeff_TCC9|✅ proved - incomplete|shostak|0.080|
|gcd_coeff_TCC10|✅ proved - incomplete|shostak|0.050|
|gcd_coeff_nonzero|✅ proved - incomplete|shostak|0.035|
|gcd_coeff_zero|✅ proved - incomplete|shostak|0.233|
|descalarize_list_TCC1|✅ proved - incomplete|shostak|0.030|
|descalarize_list_TCC2|✅ proved - incomplete|shostak|0.239|
|descalarize_list_TCC3|✅ proved - incomplete|shostak|0.072|
|descalarize_list_TCC4|✅ proved - incomplete|shostak|0.272|
|descalarize_list_TCC5|✅ proved - incomplete|shostak|0.090|
|descalarize_list_TCC6|✅ proved - incomplete|shostak|0.085|
|descalarize_list_TCC7|✅ proved - incomplete|shostak|0.381|
|primitize_list_TCC1|✅ proved - incomplete|shostak|0.050|
|primitize_list_def_TCC1|✅ proved - incomplete|shostak|0.045|
|primitize_list_def|✅ proved - incomplete|shostak|0.450|
|primitize_zero_list|✅ proved - incomplete|shostak|0.194|
|primitize_list_length|✅ proved - incomplete|shostak|0.035|
|nonzero_version_rec_TCC1|✅ proved - incomplete|shostak|0.120|
|nonzero_version_rec_TCC2|✅ proved - incomplete|shostak|0.020|
|nonzero_version_rec_TCC3|✅ proved - incomplete|shostak|0.040|
|nonzero_version_rec_TCC4|✅ proved - incomplete|shostak|0.065|
|nonzero_version_rec_TCC5|✅ proved - incomplete|shostak|0.050|
|nonzero_version_rec_TCC6|✅ proved - incomplete|shostak|0.772|
|nonzero_version_rec_length_nonzero|✅ proved - incomplete|shostak|0.492|
|nonzero_version_rec_def_TCC1|✅ proved - incomplete|shostak|0.060|
|nonzero_version_rec_def_TCC2|✅ proved - incomplete|shostak|0.088|
|nonzero_version_rec_def|✅ proved - incomplete|shostak|1.462|
|nonzero_version_def_TCC1|✅ proved - incomplete|shostak|0.090|
|nonzero_version_def_TCC2|✅ proved - incomplete|shostak|0.096|
|nonzero_version_def|✅ proved - incomplete|shostak|1.851|
|nonzero_version_length_nz_TCC1|✅ proved - incomplete|shostak|0.030|
|nonzero_version_length_nz|✅ proved - incomplete|shostak|0.182|

## `remainder_sequence`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|is_neg_remainder_list?_TCC1|✅ proved - complete|shostak|0.050|
|is_neg_remainder_list?_TCC2|✅ proved - complete|shostak|0.054|
|is_neg_remainder_list?_TCC3|✅ proved - incomplete|shostak|0.070|
|is_neg_remainder_list?_TCC4|✅ proved - complete|shostak|0.057|
|is_neg_remainder_list?_TCC5|✅ proved - incomplete|shostak|0.164|
|is_neg_remainder_list?_TCC6|✅ proved - incomplete|shostak|0.110|
|is_neg_remainder_list?_TCC7|✅ proved - incomplete|shostak|0.107|
|is_neg_remainder_list?_TCC8|✅ proved - incomplete|shostak|0.150|
|is_neg_remainder_list?_TCC9|✅ proved - incomplete|shostak|0.103|
|is_neg_remainder_list?_TCC10|✅ proved - incomplete|shostak|0.274|
|is_neg_remainder_list?_TCC11|✅ proved - incomplete|shostak|0.205|
|compute_remainder_seq_TCC1|✅ proved - incomplete|shostak|0.961|
|compute_remainder_seq_TCC2|✅ proved - incomplete|shostak|0.958|
|compute_remainder_seq_TCC3|✅ proved - incomplete|shostak|0.290|
|compute_remainder_seq_TCC4|✅ proved - incomplete|shostak|1.027|
|compute_remainder_seq_TCC5|✅ proved - incomplete|shostak|0.452|
|compute_remainder_seq_TCC6|✅ proved - incomplete|shostak|6.051|
|compute_remainder_seq_TCC7|✅ proved - incomplete|shostak|0.190|
|compute_remainder_seq_TCC8|✅ proved - incomplete|shostak|0.024|
|compute_remainder_seq_TCC9|✅ proved - incomplete|shostak|0.020|
|compute_remainder_seq_TCC10|✅ proved - incomplete|shostak|0.030|
|compute_remainder_seq_TCC11|✅ proved - incomplete|shostak|0.212|
|compute_remainder_seq_TCC12|✅ proved - incomplete|shostak|0.210|
|compute_remainder_seq_TCC13|✅ proved - incomplete|shostak|1.421|
|compute_remainder_seq_TCC14|✅ proved - incomplete|shostak|0.724|
|remainder_seq_TCC1|✅ proved - incomplete|shostak|0.409|
|sturm_chain_TCC1|✅ proved - complete|shostak|0.070|
|sturm_chain_TCC2|✅ proved - complete|shostak|0.010|
|remainder_seq_test_TCC1|✅ proved - complete|shostak|0.040|
|remainder_seq_test_TCC2|✅ proved - complete|shostak|0.071|
|remainder_seq_test|✅ proved - incomplete|shostak|0.242|

## `polynomial_pseudo_divide`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|pseudo_div_TCC1|✅ proved - complete|shostak|0.150|
|pseudo_div_TCC2|✅ proved - incomplete|shostak|0.253|
|pseudo_div_TCC3|✅ proved - incomplete|shostak|0.352|
|pseudo_div_TCC4|✅ proved - incomplete|shostak|0.372|
|pseudo_div_TCC5|✅ proved - incomplete|shostak|0.367|
|pseudo_div_TCC6|✅ proved - incomplete|shostak|0.423|
|pseudo_div_TCC7|✅ proved - incomplete|shostak|0.656|
|pseudo_div_TCC8|✅ proved - incomplete|shostak|0.636|
|pseudo_div_TCC9|✅ proved - incomplete|shostak|0.453|
|pseudo_div_TCC10|✅ proved - incomplete|shostak|0.448|
|pseudo_div_TCC11|✅ proved - incomplete|shostak|0.972|
|pseudo_div_TCC12|✅ proved - complete|shostak|0.030|
|pseudo_div_TCC13|✅ proved - complete|shostak|0.160|
|pseudo_div_lengths|✅ proved - incomplete|shostak|3.988|
|HHGGLEM|✅ proved - complete|shostak|0.637|
|pseudo_div_def_TCC1|✅ proved - incomplete|shostak|0.365|
|pseudo_div_def_TCC2|✅ proved - incomplete|shostak|0.849|
|pseudo_div_def|✅ proved - incomplete|shostak|1:27.778|
|poly_pseudo_remainder_def_TCC1|✅ proved - incomplete|shostak|0.264|
|poly_pseudo_remainder_def|✅ proved - incomplete|shostak|1.892|
|adjusted_remainder_TCC1|✅ proved - incomplete|shostak|0.481|
|adjusted_remainder_def_TCC1|✅ proved - incomplete|shostak|0.383|
|adjusted_remainder_def|✅ proved - incomplete|shostak|10.469|
|adjusted_remainder_length|✅ proved - incomplete|shostak|3.070|
|adjusted_remainder_length2|✅ proved - incomplete|shostak|3.043|
|adjusted_remainder_empty|✅ proved - incomplete|shostak|2.262|
|adjusted_remainder_test_TCC1|✅ proved - complete|shostak|0.060|
|adjusted_remainder_test|✅ proved - incomplete|shostak|0.039|

## `clear_denominators`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|posratpair_plus|✅ proved - complete|shostak|0.090|
|posratpair_div|✅ proved - complete|shostak|0.080|
|PosRatSet_nonempty|✅ proved - complete|shostak|0.118|
|PosRatSet_glb_posnat_TCC1|✅ proved - complete|shostak|0.158|
|PosRatSet_glb_posnat|✅ proved - complete|shostak|0.231|
|PosRatMeas_TCC1|✅ proved - complete|shostak|0.025|
|PosRatMeas_TCC2|✅ proved - complete|shostak|0.276|
|PosRatMeas_TCC3|✅ proved - complete|shostak|0.200|
|PosRatMeas_increasing|✅ proved - complete|shostak|0.779|
|PosRatMeas_glb_minus_posnat_TCC1|✅ proved - complete|shostak|0.032|
|PosRatMeas_glb_minus_posnat_TCC2|✅ proved - complete|shostak|0.183|
|PosRatMeas_glb_minus_posnat|✅ proved - complete|shostak|0.418|
|compute_posratpair_TCC1|✅ proved - complete|shostak|0.010|
|compute_posratpair_TCC2|✅ proved - complete|shostak|0.020|
|compute_posratpair_TCC3|✅ proved - complete|shostak|0.020|
|compute_posratpair_TCC4|✅ proved - complete|shostak|0.030|
|compute_posratpair_TCC5|✅ proved - complete|shostak|0.456|
|compute_posratpair_TCC6|✅ proved - complete|shostak|0.174|
|compute_posratpair_TCC7|✅ proved - complete|shostak|0.195|
|compute_posratpair_TCC8|✅ proved - complete|shostak|0.090|
|rat_poly_to_int_rec_TCC1|✅ proved - complete|shostak|0.010|
|rat_poly_to_int_rec_TCC2|✅ proved - complete|shostak|0.559|
|rat_poly_to_int_rec_TCC3|✅ proved - incomplete|shostak|0.465|
|rat_poly_to_int_rec_TCC4|✅ proved - complete|shostak|0.025|
|rat_poly_to_int_rec_TCC5|✅ proved - complete|shostak|0.020|
|rat_poly_to_int_rec_TCC6|✅ proved - complete|shostak|0.010|
|rat_poly_to_int_rec_TCC7|✅ proved - complete|shostak|0.110|
|rat_poly_to_int_rec_TCC8|✅ proved - complete|shostak|0.122|
|rat_poly_to_int_rec_TCC9|✅ proved - complete|shostak|0.350|
|rat_poly_to_int_rec_TCC10|✅ proved - complete|shostak|0.135|
|rat_poly_to_int_rec_TCC11|✅ proved - incomplete|shostak|1.188|
|rat_poly_to_int_rec_TCC12|✅ proved - complete|shostak|0.020|
|rat_poly_to_int_rec_TCC13|✅ proved - complete|shostak|0.010|
|rat_poly_to_int_TCC1|✅ proved - incomplete|shostak|0.181|
|rat_poly_to_int_TCC2|✅ proved - incomplete|shostak|0.110|

## `sturmsquarefree`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sturm_sequence?_TCC1|✅ proved - incomplete|shostak|0.131|
|sturm_sequence?_TCC2|✅ proved - incomplete|shostak|0.279|
|sturm_sequence_degree_1|✅ proved - incomplete|shostak|0.321|
|sturm_seq_repeated_root|✅ proved - incomplete|shostak|0.798|
|sturm_seq_last_nonzero|✅ proved - incomplete|shostak|0.289|
|sturm_seq_first_signs_eq|✅ proved - incomplete|shostak|6.805|
|sturm_lem_no_roots|✅ proved - incomplete|shostak|0.909|
|sturm_lem_one_root|✅ proved - incomplete|shostak|5.912|
|sturm_lem_edge_root|✅ proved - incomplete|shostak|3.937|
|roots_between_enum_TCC1|✅ proved - incomplete|shostak|0.242|
|roots_between_enum_TCC2|✅ proved - incomplete|shostak|0.260|
|roots_between_enum|✅ proved - incomplete|shostak|1.548|
|sturm_lem_no_roots_full|✅ proved - incomplete|shostak|0.603|
|sturm_square_free|✅ proved - incomplete|shostak|4.043|
|sturm_seq_square_free_TCC1|✅ proved - incomplete|shostak|0.030|
|sturm_seq_square_free_TCC2|✅ proved - incomplete|shostak|0.387|
|sturm_seq_square_free_TCC3|✅ proved - incomplete|shostak|0.114|
|sturm_seq_square_free_TCC4|✅ proved - incomplete|shostak|0.513|
|sturm_seq_square_free|✅ proved - incomplete|shostak|2.892|

## `polylist`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|eval_polylist_TCC1|✅ proved - incomplete|shostak|0.130|
|eval_polylist_TCC2|✅ proved - incomplete|shostak|0.110|
|eval_polylist_TCC3|✅ proved - incomplete|shostak|0.241|
|eval_polylist_TCC4|✅ proved - incomplete|shostak|0.120|
|eval_polylist_TCC5|✅ proved - incomplete|shostak|0.140|
|eval_polylist_times_x_TCC1|✅ proved - complete|shostak|0.010|
|eval_polylist_times_x_TCC2|✅ proved - complete|shostak|0.010|
|eval_polylist_times_x|✅ proved - incomplete|shostak|0.663|
|eval_polylist_remove_acc|✅ proved - incomplete|shostak|0.293|
|eval_polylist_test_TCC1|✅ proved - incomplete|shostak|0.060|
|eval_polylist_test_TCC2|✅ proved - complete|shostak|0.010|
|eval_polylist_test_TCC3|✅ proved - complete|shostak|0.000|
|eval_polylist_test|✅ proved - incomplete|shostak|0.120|
|polylist_TCC1|✅ proved - complete|shostak|0.010|
|pmonom_TCC1|✅ proved - complete|shostak|0.020|
|pmonom_TCC2|✅ proved - incomplete|shostak|0.114|
|pmonom_TCC3|✅ proved - complete|shostak|0.020|
|pmonom_TCC4|✅ proved - complete|shostak|0.000|
|pmonom_TCC5|✅ proved - incomplete|shostak|0.273|
|psum_TCC1|✅ proved - incomplete|shostak|0.565|
|psum_TCC2|✅ proved - incomplete|shostak|0.518|
|psum_TCC3|✅ proved - incomplete|shostak|0.064|
|psum_TCC4|✅ proved - incomplete|shostak|0.050|
|psum_TCC5|✅ proved - complete|shostak|0.060|
|psum_TCC6|✅ proved - incomplete|shostak|1.105|
|pscal_TCC1|✅ proved - incomplete|shostak|0.070|
|pscal_TCC2|✅ proved - incomplete|shostak|0.035|
|pscal_TCC3|✅ proved - complete|shostak|0.020|
|pscal_TCC4|✅ proved - incomplete|shostak|0.795|
|pprod_TCC1|✅ proved - incomplete|shostak|0.043|
|pprod_TCC2|✅ proved - incomplete|shostak|0.180|
|pprod_TCC3|✅ proved - incomplete|shostak|0.104|
|pprod_TCC4|✅ proved - incomplete|shostak|0.423|
|deg_rec_TCC1|✅ proved - incomplete|shostak|0.070|
|deg_rec_TCC2|✅ proved - incomplete|shostak|0.080|
|deg_rec_TCC3|✅ proved - incomplete|shostak|0.070|
|deg_rec_TCC4|✅ proved - incomplete|shostak|0.112|
|deg_rec_TCC5|✅ proved - incomplete|shostak|0.110|
|deg_rec_TCC6|✅ proved - incomplete|shostak|0.204|
|deg_rec_TCC7|✅ proved - incomplete|shostak|0.083|
|deg_rec_TCC8|✅ proved - incomplete|shostak|0.080|
|deg_rec_TCC9|✅ proved - incomplete|shostak|0.083|
|deg_rec_TCC10|✅ proved - incomplete|shostak|0.170|
|deg_TCC1|✅ proved - incomplete|shostak|0.083|
|deg_TCC2|✅ proved - incomplete|shostak|0.060|
|polylist_eval|✅ proved - incomplete|shostak|0.969|
|polylist_eval_deg|✅ proved - incomplete|shostak|0.443|
|polylist_const|✅ proved - incomplete|shostak|0.020|
|polylist_monom_TCC1|✅ proved - complete|shostak|0.010|
|polylist_monom|✅ proved - incomplete|shostak|0.020|
|polylist_prod|✅ proved - incomplete|shostak|0.905|
|polylist_scal|✅ proved - incomplete|shostak|0.020|
|polylist_sum|✅ proved - incomplete|shostak|0.015|
|polylist_minus|✅ proved - incomplete|shostak|0.100|
|polylist_pow_TCC1|✅ proved - incomplete|shostak|0.010|
|polylist_pow|✅ proved - incomplete|shostak|0.678|
|polylist_neg|✅ proved - incomplete|shostak|0.063|
|polylist_div|✅ proved - incomplete|shostak|0.070|
|polylist_sq|✅ proved - incomplete|shostak|0.010|

## `poly_strategy`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sturm_TCC1|✅ proved - incomplete|shostak|0.063|
|sturm_def_TCC1|✅ proved - incomplete|shostak|0.040|
|sturm_def|✅ proved - incomplete|shostak|0.193|

## `strategies`
No formula declaration found.## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib//float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-pvsio-fix.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210219-extratregies.lisp`|
