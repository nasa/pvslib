# Summary for `mv_analysis`
Run started at 7:23:50 7/8/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **1015**   | **1015**    | **1015**    | **0**  | **8:15.744 s**   |
|top|0|0|0|0|0.000|
|domain_vec2real_def|0|0|0|0|0.000|
|vector_arithmetic|129|129|129|0|37.057|
|matrix_vector_multiplication|29|29|29|0|6.625|
|norms|70|70|70|0|23.097|
|cauchy_schwarz|10|10|10|0|2.069|
|subsequences|1|1|1|0|0.080|
|unconstrained_global_extrema|9|9|9|0|0.412|
|sum_vecs|25|25|25|0|3.968|
|norm_1_defs|3|3|3|0|0.180|
|norm_1_sequential_criterian|2|2|2|0|0.276|
|norm_1_bolzano_weierstrass|6|6|6|0|4.634|
|norm_1_extreme_value_theorem|14|14|14|0|3.690|
|norms_equiv|36|36|36|0|8.015|
|norms_equiv_general|1|1|1|0|0.050|
|vector_sequences|18|18|18|0|3.477|
|closed_bounded_domain|6|6|6|0|0.786|
|continuity_multivar|22|22|22|0|7.706|
|sequential_criterian|2|2|2|0|0.272|
|bolzano_weierstrass|6|6|6|0|0.801|
|extreme_value_theorem|1|1|1|0|0.329|
|unconstrained_local_extrema|9|9|9|0|1.386|
|fundamentals_constrained_optimization|50|50|50|0|7.903|
|topology_Rn|5|5|5|0|0.585|
|derivative_domain_multi|44|44|44|0|9.515|
|differentiable_def|7|7|7|0|0.686|
|init_partial_def|67|67|67|0|30.275|
|directional_deriv_def|64|64|64|0|35.182|
|partial_def|20|20|20|0|5.711|
|gradient_def|54|54|54|0|13.457|
|jacobian_def|11|11|11|0|1.742|
|continuous_derivatives|0|0|0|0|0.000|
|Taylor_Thrm_Multi|39|39|39|0|1:23.460|
|unconstrained_first_order_optimality|4|4|4|0|25.354|
|linear_programming|4|4|4|0|1.169|
|exist_solution_lp|5|5|5|0|4.472|
|Cauchy_seq|4|4|4|0|1.713|
|Vector_VectorN|18|18|18|0|7.084|
|Lipschitz_def|6|6|6|0|1.688|
|composition_function|1|1|1|0|0.291|
|max_function|7|7|7|0|2.173|
|mat_vec_mult|54|54|54|0|28.840|
|convergence_vec2vec|83|83|83|0|1:16.747|
|chain_rule_multi|41|41|41|0|33.933|
|lift_real_fun_def|19|19|19|0|17.612|
|bounded_def|9|9|9|0|1.242|
## Detailed Summary 
## `top`
No formula declaration found.
## `domain_vec2real_def`
No formula declaration found.
## `vector_arithmetic`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|wf_1|✅ proved - incomplete|shostak|0.194|
|zero_vec_TCC1|✅ proved - incomplete|shostak|0.050|
|zero_vec_TCC2|✅ proved - complete|shostak|0.050|
|zero_vec_TCC3|✅ proved - complete|shostak|0.040|
|zero_vec_TCC4|✅ proved - incomplete|shostak|0.100|
|zero_vec0_TCC1|✅ proved - complete|shostak|0.040|
|zero_vec0|✅ proved - incomplete|shostak|0.340|
|nth_zero_TCC1|✅ proved - incomplete|shostak|0.049|
|nth_zero|✅ proved - incomplete|shostak|0.180|
|zero_cdr_TCC1|✅ proved - incomplete|shostak|0.045|
|zero_cdr_TCC2|✅ proved - complete|shostak|0.030|
|zero_cdr|✅ proved - incomplete|shostak|0.220|
|every_zero|✅ proved - incomplete|shostak|0.170|
|constant_vec_TCC1|✅ proved - incomplete|shostak|0.100|
|e_TCC1|✅ proved - complete|shostak|0.060|
|e_TCC2|✅ proved - incomplete|shostak|0.090|
|e_TCC3|✅ proved - incomplete|shostak|0.090|
|e_cdr_TCC1|✅ proved - incomplete|shostak|0.060|
|e_cdr_TCC2|✅ proved - complete|shostak|0.060|
|e_cdr|✅ proved - incomplete|shostak|0.202|
|nth_e_TCC1|✅ proved - incomplete|shostak|0.061|
|nth_e_TCC2|✅ proved - incomplete|shostak|0.060|
|nth_e|✅ proved - incomplete|shostak|0.284|
|every_e|✅ proved - incomplete|shostak|0.118|
|e_not_zero|✅ proved - incomplete|shostak|0.220|
|test_zero1|✅ proved - incomplete|shostak|0.040|
|test_zero2|✅ proved - incomplete|shostak|0.030|
|test_e1|✅ proved - incomplete|shostak|0.050|
|test_e2|✅ proved - incomplete|shostak|0.050|
|test_e3|✅ proved - incomplete|shostak|0.041|
|test_constant_vec1|✅ proved - incomplete|shostak|0.040|
|test_constant_vec2|✅ proved - incomplete|shostak|0.120|
|greater?_TCC1|✅ proved - incomplete|shostak|0.030|
|greater?_TCC2|✅ proved - incomplete|shostak|0.060|
|greater?_TCC3|✅ proved - incomplete|shostak|0.050|
|greater?_TCC4|✅ proved - complete|shostak|0.060|
|greater_eq?_TCC1|✅ proved - incomplete|shostak|0.061|
|greater_eq?_TCC2|✅ proved - incomplete|shostak|0.070|
|greater_eq?_TCC3|✅ proved - complete|shostak|0.050|
|less?_TCC1|✅ proved - incomplete|shostak|0.070|
|less?_TCC2|✅ proved - incomplete|shostak|0.070|
|less?_TCC3|✅ proved - complete|shostak|0.050|
|less_eq?_TCC1|✅ proved - incomplete|shostak|0.070|
|less_eq?_TCC2|✅ proved - incomplete|shostak|0.060|
|less_eq?_TCC3|✅ proved - complete|shostak|0.060|
|g_1_TCC1|✅ proved - incomplete|shostak|0.040|
|g_1|✅ proved - incomplete|shostak|0.081|
|ge_1|✅ proved - incomplete|shostak|0.050|
|l_1|✅ proved - incomplete|shostak|0.090|
|cdr_scal_TCC1|✅ proved - incomplete|shostak|0.090|
|cdr_scal|✅ proved - incomplete|shostak|0.200|
|cdr_sub_TCC1|✅ proved - incomplete|shostak|0.259|
|cdr_sub|✅ proved - incomplete|shostak|0.389|
|cdr_add_TCC1|✅ proved - incomplete|shostak|0.210|
|cdr_add|✅ proved - incomplete|shostak|0.393|
|car_scal|✅ proved - incomplete|shostak|0.190|
|car_sub|✅ proved - incomplete|shostak|0.319|
|neg_1_scal|✅ proved - incomplete|shostak|0.226|
|add_commute|✅ proved - incomplete|shostak|0.302|
|sub_idx|✅ proved - incomplete|shostak|0.050|
|asso_1_scal|✅ proved - incomplete|shostak|0.194|
|scal_asso|✅ proved - incomplete|shostak|0.424|
|asso_v|✅ proved - incomplete|shostak|0.230|
|asso_dot|✅ proved - incomplete|shostak|0.287|
|asso_add|✅ proved - incomplete|shostak|0.532|
|asso_sub_commute|✅ proved - incomplete|shostak|1.544|
|scal_cancel|✅ proved - incomplete|shostak|0.661|
|add_zero|✅ proved - incomplete|shostak|0.743|
|zero_id|✅ proved - incomplete|shostak|0.200|
|scal_zero|✅ proved - incomplete|shostak|0.111|
|dot_zero|✅ proved - incomplete|shostak|0.181|
|zero_mult|✅ proved - incomplete|shostak|0.529|
|add_cancel|✅ proved - incomplete|shostak|0.000|
|sub_zero|✅ proved - incomplete|shostak|0.255|
|mult_zero|✅ proved - incomplete|shostak|0.224|
|add_zero_trick|✅ proved - incomplete|shostak|1.009|
|diff_zero|✅ proved - incomplete|shostak|1.195|
|add_zero_imp_eq|✅ proved - incomplete|shostak|0.523|
|one_idx|✅ proved - incomplete|shostak|0.130|
|zero_scal|✅ proved - incomplete|shostak|0.050|
|sub_self|✅ proved - incomplete|shostak|0.317|
|sub_sandwich|✅ proved - incomplete|shostak|0.336|
|sub_equal_id|✅ proved - incomplete|shostak|0.347|
|sub_equal_id1|✅ proved - incomplete|shostak|0.226|
|neg_1|✅ proved - incomplete|shostak|0.861|
|dist_1|✅ proved - incomplete|shostak|1.261|
|dist|✅ proved - incomplete|shostak|0.447|
|dist_scalar|✅ proved - incomplete|shostak|0.237|
|dist_scalar_sub|✅ proved - incomplete|shostak|0.798|
|dist_list|✅ proved - incomplete|shostak|0.725|
|nth_dist_TCC1|✅ proved - incomplete|shostak|0.070|
|nth_dist|✅ proved - incomplete|shostak|0.294|
|nth_sum_TCC1|✅ proved - incomplete|shostak|0.060|
|nth_sum_TCC2|✅ proved - incomplete|shostak|0.060|
|nth_sum|✅ proved - incomplete|shostak|0.611|
|nth_subtract_TCC1|✅ proved - incomplete|shostak|0.090|
|nth_subtract|✅ proved - incomplete|shostak|0.666|
|sub_dist|✅ proved - incomplete|shostak|0.413|
|dot_linear|✅ proved - incomplete|shostak|0.203|
|dot_short_TCC1|✅ proved - incomplete|shostak|0.190|
|dot_short_TCC2|✅ proved - incomplete|shostak|0.196|
|dot_short_TCC3|✅ proved - incomplete|shostak|0.100|
|dot_short_TCC4|✅ proved - complete|shostak|0.050|
|F_sum_TCC1|✅ proved - incomplete|shostak|0.090|
|F_sum_TCC2|✅ proved - incomplete|shostak|0.090|
|dot_short_is_sig|✅ proved - incomplete|shostak|0.282|
|F_shift|✅ proved - incomplete|shostak|0.291|
|F_sum_shift|✅ proved - incomplete|shostak|0.601|
|dot_is_sig|✅ proved - incomplete|shostak|1.132|
|dot_is_sig2|✅ proved - incomplete|shostak|0.868|
|dot_short_is_dot_TCC1|✅ proved - incomplete|shostak|0.180|
|dot_short_is_dot|✅ proved - incomplete|shostak|0.231|
|dot_is_sigma_TCC1|✅ proved - incomplete|shostak|0.050|
|dot_is_sigma|✅ proved - incomplete|shostak|0.225|
|dot_prod_zero|✅ proved - incomplete|shostak|0.090|
|dot_prod_e_TCC1|✅ proved - complete|shostak|0.038|
|dot_prod_e|✅ proved - incomplete|shostak|0.243|
|dot_equality|✅ proved - incomplete|shostak|0.543|
|dot_equality1|✅ proved - incomplete|shostak|0.849|
|dot_equality_e|✅ proved - incomplete|shostak|0.100|
|dot_scalar1|✅ proved - incomplete|shostak|0.279|
|dot_dist|✅ proved - incomplete|shostak|0.000|
|dot_dist_sub|✅ proved - incomplete|shostak|0.861|
|quad_cancel|✅ proved - incomplete|shostak|1.144|
|quad_cancel_plus|✅ proved - incomplete|shostak|0.120|
|quad_move|✅ proved - incomplete|shostak|2.922|
|quad_cancel_p_m|✅ proved - incomplete|shostak|0.465|
|quad_cancel_tail|✅ proved - incomplete|shostak|0.729|
|add_sub_zero|✅ proved - incomplete|shostak|0.120|

## `matrix_vector_multiplication`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|mult_TCC1|✅ proved - incomplete|shostak|0.100|
|mult_TCC2|✅ proved - incomplete|shostak|0.100|
|mult_length|✅ proved - incomplete|shostak|0.237|
|mult_TCC3|✅ proved - incomplete|shostak|0.050|
|mmult_nth_TCC1|✅ proved - incomplete|shostak|0.060|
|mmult_nth|✅ proved - incomplete|shostak|0.569|
|max_row_2_TCC1|✅ proved - incomplete|shostak|0.090|
|max_row_2_TCC2|✅ proved - incomplete|shostak|0.096|
|max_row_2|✅ proved - incomplete|shostak|0.735|
|max_row_2_TCC3|✅ proved - incomplete|shostak|0.090|
|max_row_2_TCC4|✅ proved - incomplete|shostak|0.093|
|mmult_inf_bound_TCC1|✅ proved - incomplete|shostak|0.060|
|mmult_inf_bound_TCC2|✅ proved - incomplete|shostak|0.073|
|mmult_inf_bound|✅ proved - incomplete|shostak|0.424|
|mmult_dist_TCC1|✅ proved - incomplete|shostak|0.063|
|mmult_dist|✅ proved - incomplete|shostak|0.865|
|mmult_scal_TCC1|✅ proved - incomplete|shostak|0.088|
|mmult_scal|✅ proved - incomplete|shostak|0.722|
|mmult_sub_dist_TCC1|✅ proved - incomplete|shostak|0.064|
|mmult_sub_dist|✅ proved - incomplete|shostak|0.193|
|eye_TCC1|✅ proved - complete|shostak|0.040|
|eye_TCC2|✅ proved - complete|shostak|0.050|
|eye_TCC3|✅ proved - complete|shostak|0.050|
|eye_TCC4|✅ proved - complete|shostak|0.050|
|mult_1|✅ proved - incomplete|shostak|0.054|
|eye_1|✅ proved - incomplete|shostak|0.040|
|eye_2|✅ proved - incomplete|shostak|0.667|
|eye_3|✅ proved - incomplete|shostak|0.861|
|mult_3|✅ proved - incomplete|shostak|0.041|

## `norms`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|norm?_TCC1|✅ proved - incomplete|shostak|0.060|
|norm?_TCC2|✅ proved - incomplete|shostak|0.120|
|norm?_TCC3|✅ proved - incomplete|shostak|0.252|
|norm?_TCC4|✅ proved - incomplete|shostak|0.060|
|max_TCC1|✅ proved - incomplete|shostak|0.070|
|max_TCC2|✅ proved - complete|shostak|0.050|
|max_nth|✅ proved - incomplete|shostak|0.261|
|entry_mult_TCC1|✅ proved - incomplete|shostak|0.080|
|entry_mult_TCC2|✅ proved - complete|shostak|0.090|
|abs_TCC1|✅ proved - incomplete|shostak|0.050|
|abs_TCC2|✅ proved - incomplete|shostak|0.060|
|abs_nth_TCC1|✅ proved - incomplete|shostak|0.054|
|abs_nth|✅ proved - incomplete|shostak|0.351|
|test_max_1|✅ proved - incomplete|shostak|0.050|
|test_abs_1|✅ proved - incomplete|shostak|0.050|
|test_sum|✅ proved - incomplete|shostak|0.040|
|test_entry_mult|✅ proved - incomplete|shostak|0.050|
|test_entry_mult_2|✅ proved - incomplete|shostak|0.040|
|abs_max_lists_TCC1|✅ proved - incomplete|shostak|0.082|
|abs_max_lists_TCC2|✅ proved - incomplete|shostak|0.242|
|abs_max_lists_TCC3|✅ proved - incomplete|shostak|0.080|
|abs_max_lists|✅ proved - incomplete|shostak|2.263|
|abs_pos|✅ proved - incomplete|shostak|0.222|
|abs_zero|✅ proved - incomplete|shostak|0.935|
|abs_max_triag_TCC1|✅ proved - incomplete|shostak|0.120|
|abs_max_triag_TCC2|✅ proved - incomplete|shostak|0.110|
|abs_max_triag_TCC3|✅ proved - incomplete|shostak|0.092|
|abs_max_triag|✅ proved - incomplete|shostak|4.938|
|sum_abs_pos|✅ proved - incomplete|shostak|0.284|
|sum_abs_lists|✅ proved - incomplete|shostak|0.791|
|sum_abs_zero|✅ proved - incomplete|shostak|0.726|
|sum_abs_triag|✅ proved - incomplete|shostak|2.466|
|norm_inf_TCC1|✅ proved - incomplete|shostak|0.222|
|norm_inf_TCC2|✅ proved - incomplete|shostak|0.249|
|norm_1_TCC1|✅ proved - incomplete|shostak|0.370|
|norm_1_TCC2|✅ proved - incomplete|shostak|0.212|
|norm_2sq_TCC1|✅ proved - incomplete|shostak|0.130|
|norm_2_TCC1|✅ proved - incomplete|shostak|1.226|
|norm_inf_recurse_TCC1|✅ proved - incomplete|shostak|0.080|
|norm_inf_recurse_TCC2|✅ proved - incomplete|shostak|0.060|
|norm_inf_recurse|✅ proved - incomplete|shostak|0.510|
|norm_one_recurse|✅ proved - incomplete|shostak|0.137|
|test_abs|✅ proved - incomplete|shostak|0.040|
|test_1|✅ proved - incomplete|shostak|0.040|
|test_2sq|✅ proved - incomplete|shostak|0.040|
|big_kahuna|✅ proved - incomplete|shostak|0.050|
|norm_inf_constant_TCC1|✅ proved - incomplete|shostak|0.050|
|norm_inf_constant|✅ proved - incomplete|shostak|0.331|
|norm_reflex_TCC1|✅ proved - incomplete|shostak|0.081|
|norm_reflex_TCC2|✅ proved - incomplete|shostak|0.080|
|norm_reflex|✅ proved - incomplete|shostak|0.274|
|reverse_triag_TCC1|✅ proved - incomplete|shostak|0.082|
|reverse_triag|✅ proved - incomplete|shostak|0.252|
|norm_inf_nth|✅ proved - incomplete|shostak|0.130|
|norm_inf_nth_m_TCC1|✅ proved - complete|shostak|0.040|
|norm_inf_nth_m|✅ proved - incomplete|shostak|0.065|
|norm_inf_nth_ineq|✅ proved - incomplete|shostak|0.440|
|norm_inf_nth_ineq_m|✅ proved - incomplete|shostak|0.060|
|norm_inf_canc_TCC1|✅ proved - incomplete|shostak|0.191|
|norm_inf_canc_TCC2|✅ proved - incomplete|shostak|0.090|
|norm_inf_canc|✅ proved - incomplete|shostak|0.080|
|norm_inf_e_TCC1|✅ proved - incomplete|shostak|0.050|
|norm_inf_e_TCC2|✅ proved - complete|shostak|0.040|
|norm_inf_e|✅ proved - incomplete|shostak|0.422|
|norm_inf_e_scal_TCC1|✅ proved - incomplete|shostak|0.060|
|norm_inf_e_scal|✅ proved - incomplete|shostak|0.110|
|dot_max_ineq|✅ proved - incomplete|shostak|1.417|
|dot_equality_delta_TCC1|✅ proved - incomplete|shostak|0.120|
|dot_equality_delta_TCC2|✅ proved - incomplete|shostak|0.127|
|dot_equality_delta|✅ proved - incomplete|shostak|0.000|

## `cauchy_schwarz`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|dot_non_neg|✅ proved - incomplete|shostak|0.120|
|dot_pos|✅ proved - incomplete|shostak|0.320|
|dot_linear_right|✅ proved - incomplete|shostak|0.186|
|dot_linear_left|✅ proved - incomplete|shostak|0.070|
|dot_spread|✅ proved - incomplete|shostak|0.610|
|almost_cauchy_schwarz_TCC1|✅ proved - incomplete|shostak|0.074|
|almost_cauchy_schwarz|✅ proved - incomplete|shostak|0.307|
|cauchy_schwarz_TCC1|✅ proved - incomplete|shostak|0.050|
|cauchy_schwarz_TCC2|✅ proved - incomplete|shostak|0.040|
|cauchy_schwarz|✅ proved - incomplete|shostak|0.292|

## `subsequences`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|increase_seq_fact|✅ proved - complete|shostak|0.080|

## `unconstrained_global_extrema`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|min_global_1a|✅ proved - incomplete|shostak|0.050|
|min_global_1b_TCC1|✅ proved - incomplete|shostak|0.040|
|min_global_1b_TCC2|✅ proved - incomplete|shostak|0.050|
|min_global_1b_TCC3|✅ proved - complete|shostak|0.040|
|min_global_1b|✅ proved - incomplete|shostak|0.042|
|min_global_1c|✅ proved - incomplete|shostak|0.040|
|min_global_2|✅ proved - incomplete|shostak|0.040|
|min_max_global_1|✅ proved - incomplete|shostak|0.040|
|min_max_global_2|✅ proved - incomplete|shostak|0.070|

## `sum_vecs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Sigmaa_TCC1|✅ proved - incomplete|shostak|0.070|
|Sigmaa_TCC2|✅ proved - incomplete|shostak|0.060|
|Sigmaa_TCC3|✅ proved - incomplete|shostak|0.092|
|Sigmaa_TCC4|✅ proved - incomplete|shostak|0.150|
|Sigmaa_TCC5|✅ proved - incomplete|shostak|0.090|
|Sigma_TCC1|✅ proved - incomplete|shostak|0.080|
|Sigma_TCC2|✅ proved - incomplete|shostak|0.052|
|Sigma_TCC3|✅ proved - incomplete|shostak|0.090|
|Sigma_TCC4|✅ proved - incomplete|shostak|0.160|
|Sigma_TCC5|✅ proved - incomplete|shostak|0.059|
|Standard_sum_TCC1|✅ proved - incomplete|shostak|0.050|
|Standard_sum_TCC2|✅ proved - incomplete|shostak|0.050|
|Standard_sum_TCC3|✅ proved - incomplete|shostak|0.060|
|Standard_sum_TCC4|✅ proved - incomplete|shostak|0.080|
|Standard_sum_TCC5|✅ proved - incomplete|shostak|0.370|
|Standard_sum_TCC6|✅ proved - incomplete|shostak|0.050|
|Standard_sum_TCC7|✅ proved - complete|shostak|0.040|
|Standard_sum_TCC8|✅ proved - incomplete|shostak|0.907|
|Standard_test_TCC1|✅ proved - incomplete|shostak|0.080|
|Standard_test|✅ proved - incomplete|shostak|0.411|
|Standard_id_TCC1|✅ proved - incomplete|shostak|0.060|
|Standard_id_TCC2|✅ proved - incomplete|shostak|0.050|
|Standard_id|✅ proved - incomplete|shostak|0.284|
|Li?_TCC1|✅ proved - incomplete|shostak|0.060|
|Li_test|✅ proved - incomplete|shostak|0.513|

## `norm_1_defs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|norm_1_contp?_TCC1|✅ proved - incomplete|shostak|0.060|
|norm_1_convergence?_TCC1|✅ proved - incomplete|shostak|0.070|
|norm_1_bounded?_TCC1|✅ proved - incomplete|shostak|0.050|

## `norm_1_sequential_criterian`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sequential_1|✅ proved - incomplete|shostak|0.214|
|sequential_2|✅ proved - incomplete|shostak|0.062|

## `norm_1_bolzano_weierstrass`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|B_W_m_TCC1|✅ proved - incomplete|shostak|0.060|
|B_W_m|✅ proved - incomplete|shostak|2.195|
|B_W_TCC1|✅ proved - incomplete|shostak|0.040|
|B_W|✅ proved - incomplete|shostak|0.060|
|B_W_m_le|✅ proved - incomplete|shostak|2.209|
|B_W_le|✅ proved - incomplete|shostak|0.070|

## `norm_1_extreme_value_theorem`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|unbound_fun_TCC1|✅ proved - incomplete|shostak|0.050|
|unbound_fun_TCC2|✅ proved - incomplete|shostak|0.082|
|unbound_fun_TCC3|✅ proved - complete|shostak|0.040|
|unbound_fun_TCC4|✅ proved - incomplete|shostak|0.213|
|cont_on_cb_bounded|✅ proved - incomplete|shostak|1.210|
|least_ub_on_cb_TCC1|✅ proved - incomplete|shostak|0.060|
|least_ub_on_cb|✅ proved - incomplete|shostak|0.091|
|greatest_lb_on_cb|✅ proved - incomplete|shostak|0.100|
|nonempty_bounded|✅ proved - incomplete|shostak|0.070|
|glb_approach_seq_TCC1|✅ proved - incomplete|shostak|0.081|
|glb_approach_seq_TCC2|✅ proved - incomplete|shostak|0.000|
|greatest_lb_subseq|✅ proved - incomplete|shostak|1.089|
|min_on_closed_bounded|✅ proved - incomplete|shostak|0.232|
|max_on_closed_bounded|✅ proved - incomplete|shostak|0.372|

## `norms_equiv`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|equiv?_TCC1|✅ proved - incomplete|shostak|0.080|
|equiv_m?_TCC1|✅ proved - incomplete|shostak|0.050|
|equiv_trans|✅ proved - incomplete|shostak|0.295|
|equiv_1norm_imp_equiv|✅ proved - incomplete|shostak|0.333|
|norm1_div_TCC1|✅ proved - incomplete|shostak|0.050|
|norm1_div_TCC2|✅ proved - incomplete|shostak|0.051|
|norm1_div_TCC3|✅ proved - incomplete|shostak|0.060|
|norm1_div_TCC4|✅ proved - incomplete|shostak|0.090|
|norm1_div|✅ proved - incomplete|shostak|0.210|
|equiv_unit_imp_equiv_TCC1|✅ proved - incomplete|shostak|0.080|
|equiv_unit_imp_equiv|✅ proved - incomplete|shostak|0.479|
|standard_norm_TCC1|✅ proved - incomplete|shostak|0.083|
|standard_norm_TCC2|✅ proved - incomplete|shostak|0.040|
|standard_norm_TCC3|✅ proved - incomplete|shostak|0.100|
|standard_norm_TCC4|✅ proved - incomplete|shostak|0.060|
|standard_norm_TCC5|✅ proved - incomplete|shostak|0.055|
|standard_norm|✅ proved - incomplete|shostak|0.752|
|max_e_exists_TCC1|✅ proved - incomplete|shostak|0.040|
|max_e_exists_TCC2|✅ proved - incomplete|shostak|0.087|
|max_e_exists|✅ proved - incomplete|shostak|0.280|
|max_e_TCC1|✅ proved - incomplete|shostak|0.049|
|max_e_TCC2|✅ proved - incomplete|shostak|0.100|
|max_e_TCC3|✅ proved - incomplete|shostak|0.170|
|standard_norm_ineq|✅ proved - incomplete|shostak|0.880|
|one_norm_sum|✅ proved - incomplete|shostak|1.042|
|standard_max_e_one_norm_TCC1|✅ proved - incomplete|shostak|0.070|
|standard_max_e_one_norm_TCC2|✅ proved - incomplete|shostak|0.030|
|standard_max_e_one_norm_TCC3|✅ proved - incomplete|shostak|0.102|
|standard_max_e_one_norm|✅ proved - incomplete|shostak|0.222|
|norm_to_max_e_one_norm|✅ proved - incomplete|shostak|0.140|
|unit_sphere_norm_1_closed_bounded|✅ proved - incomplete|shostak|0.374|
|norm_achieve_max_usn1_TCC1|✅ proved - incomplete|shostak|0.110|
|norm_achieve_max_usn1|✅ proved - incomplete|shostak|0.538|
|norm_achieve_min_usn1_TCC1|✅ proved - incomplete|shostak|0.112|
|norm_achieve_min_usn1|✅ proved - incomplete|shostak|0.527|
|equiv_norm|✅ proved - incomplete|shostak|0.274|

## `norms_equiv_general`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|equiv_norm_m|✅ proved - incomplete|shostak|0.050|

## `vector_sequences`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|convergence?_TCC1|✅ proved - incomplete|shostak|0.090|
|convergence_equiv_m|✅ proved - incomplete|shostak|0.226|
|convergence_equiv|✅ proved - incomplete|shostak|0.050|
|convergence?_TCC2|✅ proved - incomplete|shostak|0.100|
|convergence_zero?_TCC1|✅ proved - incomplete|shostak|0.213|
|convergence_unique_vec|✅ proved - incomplete|shostak|0.621|
|test_conv_TCC1|✅ proved - incomplete|shostak|0.080|
|test_conv|✅ proved - incomplete|shostak|0.802|
|convergence_unique_vec_seq|✅ proved - incomplete|shostak|0.080|
|unbounded?_TCC1|✅ proved - incomplete|shostak|0.080|
|unbounded_equiv|✅ proved - incomplete|shostak|0.190|
|unbounded?_TCC2|✅ proved - incomplete|shostak|0.052|
|nth_N_TCC1|✅ proved - incomplete|shostak|0.070|
|nth_N_TCC2|✅ proved - complete|shostak|0.040|
|nth_N|✅ proved - incomplete|shostak|0.683|
|converge_nth_TCC1|✅ proved - incomplete|shostak|0.060|
|converge_nth_TCC2|✅ proved - complete|shostak|0.040|
|converge_nth|✅ proved - incomplete|shostak|0.000|

## `closed_bounded_domain`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|closed_equiv|✅ proved - incomplete|shostak|0.315|
|closed_equiv1|✅ proved - incomplete|shostak|0.060|
|bounded_domain?_TCC1|✅ proved - incomplete|shostak|0.071|
|bounded_equiv|✅ proved - incomplete|shostak|0.189|
|bounded_equiv1|✅ proved - incomplete|shostak|0.040|
|open_neigh_domain?_TCC1|✅ proved - incomplete|shostak|0.111|

## `continuity_multivar`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|contp?_TCC1|✅ proved - incomplete|shostak|0.242|
|cont?_TCC1|✅ proved - incomplete|shostak|0.110|
|cont_pos_neigh_TCC1|✅ proved - incomplete|shostak|0.090|
|cont_pos_neigh|✅ proved - incomplete|shostak|0.998|
|cont_neg_neigh_TCC1|✅ proved - incomplete|shostak|0.079|
|cont_neg_neigh|✅ proved - incomplete|shostak|0.272|
|contp?_TCC2|✅ proved - incomplete|shostak|0.309|
|cont_inner_prod|✅ proved - incomplete|shostak|1.030|
|contp_norm_v2r|✅ proved - incomplete|shostak|0.288|
|contp_norms_v2v|✅ proved - incomplete|shostak|0.549|
|contp_norm_v2v|✅ proved - incomplete|shostak|0.340|
|contD_norm_v2r|✅ proved - incomplete|shostak|0.688|
|contD_norms_v2v|✅ proved - incomplete|shostak|0.136|
|contD_norm_v2v|✅ proved - incomplete|shostak|0.131|
|norm_cont_v2v_TCC1|✅ proved - incomplete|shostak|0.070|
|norm_cont_v2v|✅ proved - incomplete|shostak|0.141|
|cont_sum|✅ proved - incomplete|shostak|0.312|
|cont_const|✅ proved - incomplete|shostak|0.494|
|cont_lift_TCC1|✅ proved - incomplete|shostak|0.050|
|cont_lift_TCC2|✅ proved - incomplete|shostak|0.040|
|cont_lift_TCC3|✅ proved - incomplete|shostak|0.040|
|cont_lift|✅ proved - incomplete|shostak|1.297|

## `sequential_criterian`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sequential_criterian1|✅ proved - incomplete|shostak|0.202|
|sequentialcriterian2|✅ proved - incomplete|shostak|0.070|

## `bolzano_weierstrass`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|bolzano_weier_m_TCC1|✅ proved - incomplete|shostak|0.080|
|bolzano_weier_m|✅ proved - incomplete|shostak|0.271|
|bolzano_weier_TCC1|✅ proved - incomplete|shostak|0.079|
|bolzano_weier|✅ proved - incomplete|shostak|0.060|
|bolzano_weier_le_m|✅ proved - incomplete|shostak|0.251|
|bolzano_weier_le|✅ proved - incomplete|shostak|0.060|

## `extreme_value_theorem`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|extreme_value|✅ proved - incomplete|shostak|0.329|

## `unconstrained_local_extrema`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|is_loc_minimizer?_TCC1|✅ proved - incomplete|shostak|0.096|
|loc_minimizer_equiv|✅ proved - incomplete|shostak|0.280|
|loc_min_equiv|✅ proved - incomplete|shostak|0.302|
|loc_maximizer_equiv|✅ proved - incomplete|shostak|0.237|
|loc_max_equiv|✅ proved - incomplete|shostak|0.296|
|zero_loc_5_TCC1|✅ proved - incomplete|shostak|0.045|
|zero_loc_5_TCC2|✅ proved - complete|shostak|0.040|
|zero_loc_5_TCC3|✅ proved - complete|shostak|0.040|
|zero_loc_5|✅ proved - incomplete|shostak|0.050|

## `fundamentals_constrained_optimization`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|nth_TCC1|✅ proved - incomplete|shostak|0.060|
|car_TCC1|✅ proved - incomplete|shostak|0.040|
|car_v_TCC1|✅ proved - incomplete|shostak|0.040|
|cdr_TCC1|✅ proved - complete|shostak|0.030|
|cdr_TCC2|✅ proved - incomplete|shostak|0.104|
|append_TCC1|✅ proved - incomplete|shostak|0.204|
|constraint2vector_TCC1|✅ proved - complete|shostak|0.050|
|constraint2vector_TCC2|✅ proved - complete|shostak|0.040|
|constraint2vector_TCC3|✅ proved - complete|shostak|0.050|
|constraint2vector_TCC4|✅ proved - complete|shostak|0.050|
|constraint2vector_TCC5|✅ proved - incomplete|shostak|0.104|
|cons_f_TCC1|✅ proved - incomplete|shostak|0.080|
|listfuns2fun_TCC1|✅ proved - incomplete|shostak|0.060|
|listfuns2fun_TCC2|✅ proved - incomplete|shostak|0.060|
|listfuns_length|✅ proved - incomplete|shostak|0.120|
|filter_fun_TCC1|✅ proved - incomplete|shostak|0.246|
|filter_fun_filter|✅ proved - incomplete|shostak|0.000|
|filter_nth|✅ proved - incomplete|shostak|0.602|
|filter_2nth|✅ proved - incomplete|shostak|0.061|
|filter_nth2|✅ proved - incomplete|shostak|0.619|
|filter_2nth2|✅ proved - incomplete|shostak|0.073|
|c2v_nth_TCC1|✅ proved - incomplete|shostak|0.050|
|c2v_nth|✅ proved - incomplete|shostak|0.207|
|listfuns2fun_TCC3|✅ proved - incomplete|shostak|0.180|
|sat_eq_1|✅ proved - incomplete|shostak|0.296|
|sat_ineq_1_TCC1|✅ proved - incomplete|shostak|0.060|
|sat_ineq_1|✅ proved - incomplete|shostak|0.829|
|trivial_eq|✅ proved - incomplete|shostak|0.040|
|x_square_TCC1|✅ proved - complete|shostak|0.040|
|x_square_TCC2|✅ proved - incomplete|shostak|0.070|
|x_square_TCC3|✅ proved - incomplete|shostak|0.079|
|x_square_TCC4|✅ proved - incomplete|shostak|0.145|
|x_square_TCC5|✅ proved - incomplete|shostak|0.354|
|x_square_TCC6|✅ proved - incomplete|shostak|0.110|
|x_square|✅ proved - incomplete|shostak|0.507|
|is_loc_minimizer?_TCC1|✅ proved - incomplete|shostak|0.100|
|loc_minimizer_equiv|✅ proved - incomplete|shostak|0.286|
|loc_min_equiv|✅ proved - incomplete|shostak|0.249|
|loc_maximizer_equiv|✅ proved - incomplete|shostak|0.252|
|loc_max_equiv|✅ proved - incomplete|shostak|0.296|
|isolated_implies_strict|✅ proved - incomplete|shostak|0.305|
|active_ineq?_TCC1|✅ proved - incomplete|shostak|0.080|
|lst2real_TCC1|✅ proved - incomplete|shostak|0.054|
|lst2real|✅ proved - incomplete|shostak|0.255|
|countzeroidx_TCC1|✅ proved - incomplete|shostak|0.050|
|countzeroidx_TCC2|✅ proved - incomplete|shostak|0.040|
|countzeroidx_TCC3|✅ proved - incomplete|shostak|0.042|
|countzeroidx_TCC4|✅ proved - incomplete|shostak|0.110|
|countzeroidx_TCC5|✅ proved - incomplete|shostak|0.074|
|ex_idx|✅ proved - incomplete|shostak|0.050|

## `topology_Rn`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|OpenD?_TCC1|✅ proved - incomplete|shostak|0.090|
|OpenD_equiv|✅ proved - incomplete|shostak|0.295|
|Union_open|✅ proved - incomplete|shostak|0.100|
|convex_domain?_TCC1|✅ proved - incomplete|shostak|0.100|
|convex_implies_pc|✅ proved - incomplete|shostak|0.000|

## `derivative_domain_multi`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|deriv_domain?_TCC1|✅ proved - incomplete|shostak|0.100|
|deriv_domain?_TCC2|✅ proved - incomplete|shostak|0.102|
|deriv_domain_direction?_TCC1|✅ proved - incomplete|shostak|0.100|
|deriv_domain_partial?_TCC1|✅ proved - incomplete|shostak|0.075|
|dd_direction_partial|✅ proved - incomplete|shostak|0.090|
|dd_direction_partial_neg_TCC1|✅ proved - incomplete|shostak|0.070|
|dd_direction_partial_neg|✅ proved - incomplete|shostak|0.504|
|e_direction_e_partial|✅ proved - incomplete|shostak|0.104|
|deriv_domain_both_direction?_TCC1|✅ proved - incomplete|shostak|0.090|
|domain_connect?_TCC1|✅ proved - incomplete|shostak|0.100|
|open_implies_e_direction|✅ proved - incomplete|shostak|0.284|
|open_implies_e_partial|✅ proved - incomplete|shostak|0.040|
|d_con_ends|✅ proved - incomplete|shostak|0.375|
|dd_norm_equiv|✅ proved - incomplete|shostak|0.232|
|dd_directionv_implies_dd|✅ proved - incomplete|shostak|0.607|
|dd_all_direction_implies_dd_all_partial|✅ proved - incomplete|shostak|0.080|
|dd_direction_implies_dd_directionv|✅ proved - incomplete|shostak|0.040|
|dd_direction_implies_dd|✅ proved - incomplete|shostak|0.112|
|dd_all_partial_implies_dd|✅ proved - incomplete|shostak|1.138|
|dd_direction_implies_dd_e_direction|✅ proved - incomplete|shostak|0.070|
|dd_partial_implies_dd_e_direction|✅ proved - incomplete|shostak|0.070|
|dd_direction_implies_dd_e_partial|✅ proved - incomplete|shostak|0.040|
|dd_vdirection_implies_dd_partial|✅ proved - incomplete|shostak|0.082|
|dd_edirection_implies_dd_partial|✅ proved - incomplete|shostak|0.090|
|dd_epartial_implies_dd_partial|✅ proved - incomplete|shostak|0.090|
|dd_direction_implies_dd_partial|✅ proved - incomplete|shostak|0.092|
|dd_e_direction_implies_dd|✅ proved - incomplete|shostak|0.130|
|dd_partial_implies_dd|✅ proved - incomplete|shostak|0.607|
|dd_e_partial_implies_dd|✅ proved - incomplete|shostak|0.120|
|dd_partial_implies_scal_partial_TCC1|✅ proved - incomplete|shostak|0.102|
|dd_partial_implies_scal_partial|✅ proved - incomplete|shostak|1.231|
|dd_scal_partial_implies_partial_TCC1|✅ proved - incomplete|shostak|0.060|
|dd_scal_partial_implies_partial|✅ proved - incomplete|shostak|0.506|
|dd_zero|✅ proved - incomplete|shostak|0.132|
|dd_zero_partial|✅ proved - incomplete|shostak|0.130|
|domain_direction_scal_TCC1|✅ proved - incomplete|shostak|0.075|
|domain_direction_scal|✅ proved - incomplete|shostak|0.817|
|domain_direction_scal_real_TCC1|✅ proved - incomplete|shostak|0.110|
|domain_direction_scal_real|✅ proved - incomplete|shostak|0.194|
|del_neigh_all_mult?_TCC1|✅ proved - incomplete|shostak|0.092|
|del_neigh_all_mult?_TCC2|✅ proved - incomplete|shostak|0.090|
|del_neigh_norm_equiv|✅ proved - incomplete|shostak|0.212|
|del_neigh_all_lem_mutl|✅ proved - incomplete|shostak|0.000|
|domain_partial_p?_TCC1|✅ proved - incomplete|shostak|0.130|

## `differentiable_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|NQ_TCC1|✅ proved - incomplete|shostak|0.230|
|NQ_TCC2|✅ proved - incomplete|shostak|0.070|
|NQ_TCC3|✅ proved - incomplete|shostak|0.070|
|NQ_TCC4|✅ proved - incomplete|shostak|0.090|
|der_f_TCC1|✅ proved - incomplete|shostak|0.122|
|der_f_TCC2|✅ proved - incomplete|shostak|0.050|
|der_f_TCC3|✅ proved - incomplete|shostak|0.054|

## `init_partial_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|D_down_TCC1|✅ proved - incomplete|shostak|0.110|
|D_down_der_domain|✅ proved - incomplete|shostak|0.765|
|D_down_domain|✅ proved - incomplete|shostak|0.121|
|D_down_der_domain_unit|✅ proved - incomplete|shostak|1.869|
|D_down_domain_unit|✅ proved - incomplete|shostak|0.040|
|D_down_domain_unitc|✅ proved - incomplete|shostak|4.021|
|D_down_not_one|✅ proved - incomplete|shostak|0.449|
|D_down_not_one_unit|✅ proved - incomplete|shostak|0.348|
|D_down_not_one_unitc|✅ proved - incomplete|shostak|0.401|
|D_down_partial|✅ proved - incomplete|shostak|0.796|
|D_down_all_partial|✅ proved - incomplete|shostak|0.131|
|D_down_partial_not_one|✅ proved - incomplete|shostak|0.340|
|D_down_direction_not_one|✅ proved - incomplete|shostak|0.252|
|D_down_direction_deriv_domain|✅ proved - incomplete|shostak|0.150|
|init_partial?_TCC1|✅ proved - incomplete|shostak|0.114|
|init_partial?_TCC2|✅ proved - incomplete|shostak|0.040|
|init_partial?_TCC3|✅ proved - incomplete|shostak|0.040|
|diff_imp_init_partial_TCC1|✅ proved - incomplete|shostak|0.040|
|diff_imp_init_partial_TCC2|✅ proved - incomplete|shostak|0.123|
|diff_imp_init_partial|✅ proved - incomplete|shostak|3.257|
|diff_imp_init_partial1_TCC1|✅ proved - incomplete|shostak|0.140|
|diff_imp_init_partial1_TCC2|✅ proved - incomplete|shostak|0.127|
|diff_imp_init_partial1|✅ proved - incomplete|shostak|2.122|
|diff_imp_init_partial2_TCC1|✅ proved - incomplete|shostak|0.060|
|diff_imp_init_partial2|✅ proved - incomplete|shostak|0.000|
|init_partial_TCC1|✅ proved - incomplete|shostak|0.111|
|init_partial_zero_derivable_TCC1|✅ proved - incomplete|shostak|0.040|
|init_partial_zero_derivable|✅ proved - incomplete|shostak|0.319|
|init_partial_zero_TCC1|✅ proved - incomplete|shostak|0.040|
|init_partial_zero|✅ proved - incomplete|shostak|0.969|
|frech_diff_imp_init_partial_TCC1|✅ proved - incomplete|shostak|0.060|
|frech_diff_imp_init_partial|✅ proved - incomplete|shostak|0.060|
|init_partial_scal_TCC1|✅ proved - incomplete|shostak|0.332|
|init_partial_scal_TCC2|✅ proved - incomplete|shostak|0.050|
|init_partial_scal|✅ proved - incomplete|shostak|1.649|
|der_f_is_init_partial_TCC1|✅ proved - incomplete|shostak|0.060|
|der_f_is_init_partial_TCC2|✅ proved - incomplete|shostak|0.059|
|der_f_is_init_partial|✅ proved - incomplete|shostak|3.198|
|conv_NQ_is_init_partial_TCC1|✅ proved - incomplete|shostak|0.050|
|conv_NQ_is_init_partial|✅ proved - incomplete|shostak|2.345|
|der_f_is_init_partial1_TCC1|✅ proved - incomplete|shostak|0.040|
|der_f_is_init_partial1_TCC2|✅ proved - incomplete|shostak|0.061|
|der_f_is_init_partial1_TCC3|✅ proved - incomplete|shostak|0.120|
|der_f_is_init_partial1|✅ proved - incomplete|shostak|0.794|
|conv_NQ_is_init_partial1_TCC1|✅ proved - incomplete|shostak|0.060|
|conv_NQ_is_init_partial1_TCC2|✅ proved - incomplete|shostak|0.401|
|conv_NQ_is_init_partial1|✅ proved - incomplete|shostak|0.721|
|conv_NQ_unique|✅ proved - incomplete|shostak|0.126|
|der_f_unique_TCC1|✅ proved - incomplete|shostak|0.040|
|der_f_unique|✅ proved - incomplete|shostak|0.282|
|init_partial_scalar_TCC1|✅ proved - incomplete|shostak|0.070|
|init_partial_scalar_TCC2|✅ proved - incomplete|shostak|0.304|
|init_partial_scalar_TCC3|✅ proved - incomplete|shostak|0.060|
|init_partial_scalar|✅ proved - incomplete|shostak|0.274|
|init_partial_additive_TCC1|✅ proved - incomplete|shostak|0.100|
|init_partial_additive_TCC2|✅ proved - incomplete|shostak|0.073|
|init_partial_additive_TCC3|✅ proved - incomplete|shostak|0.070|
|init_partial_additive_TCC4|✅ proved - incomplete|shostak|0.102|
|init_partial_additive_TCC5|✅ proved - incomplete|shostak|0.060|
|init_partial_additive_TCC6|✅ proved - incomplete|shostak|0.060|
|init_partial_additive|✅ proved - incomplete|shostak|0.346|
|init_partial_linear_TCC1|✅ proved - incomplete|shostak|0.063|
|init_partial_linear_TCC2|✅ proved - incomplete|shostak|0.070|
|init_partial_linear_TCC3|✅ proved - incomplete|shostak|0.070|
|init_partial_linear_TCC4|✅ proved - incomplete|shostak|0.080|
|init_partial_linear_TCC5|✅ proved - incomplete|shostak|0.103|
|init_partial_linear|✅ proved - incomplete|shostak|0.527|

## `directional_deriv_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|D_downd_der_domain|✅ proved - incomplete|shostak|0.872|
|D_downd_domain|✅ proved - incomplete|shostak|0.124|
|D_downd_der_domain_unit|✅ proved - incomplete|shostak|0.000|
|D_downd_domain_unit|✅ proved - incomplete|shostak|0.050|
|D_downd_domain_unitc|✅ proved - incomplete|shostak|4.369|
|D_downd_not_one|✅ proved - incomplete|shostak|0.490|
|D_downd_not_one_unit|✅ proved - incomplete|shostak|0.376|
|D_downd_not_one_unitc|✅ proved - incomplete|shostak|0.409|
|D_downd_direction_not_one|✅ proved - incomplete|shostak|0.280|
|D_downd_direction_deriv_domain|✅ proved - incomplete|shostak|0.044|
|directional_deriv?_TCC1|✅ proved - incomplete|shostak|0.070|
|directional_deriv?_TCC2|✅ proved - incomplete|shostak|0.080|
|directional_deriv?_TCC3|✅ proved - incomplete|shostak|0.638|
|directional_deriv?_TCC4|✅ proved - incomplete|shostak|0.992|
|diff_imp_direction_TCC1|✅ proved - incomplete|shostak|0.050|
|diff_imp_direction_TCC2|✅ proved - incomplete|shostak|0.433|
|diff_imp_direction|✅ proved - incomplete|shostak|3.610|
|diff_imp_direction1_TCC1|✅ proved - incomplete|shostak|0.135|
|diff_imp_direction1|✅ proved - incomplete|shostak|2.104|
|directional_deriv_TCC1|✅ proved - incomplete|shostak|0.140|
|directional_deriv_TCC2|✅ proved - incomplete|shostak|0.617|
|direction_zero_derivable_TCC1|✅ proved - incomplete|shostak|0.030|
|direction_zero_derivable|✅ proved - incomplete|shostak|0.330|
|direction_zero_TCC1|✅ proved - incomplete|shostak|0.050|
|direction_zero|✅ proved - incomplete|shostak|1.016|
|diff_imp_direction2_TCC1|✅ proved - incomplete|shostak|0.120|
|diff_imp_direction2|✅ proved - incomplete|shostak|0.067|
|directional_deriv_scal_TCC1|✅ proved - incomplete|shostak|0.210|
|directional_deriv_scal_TCC2|✅ proved - incomplete|shostak|0.064|
|directional_deriv_scal_TCC3|✅ proved - incomplete|shostak|0.050|
|directional_deriv_scal|✅ proved - incomplete|shostak|0.000|
|der_f_is_direction_TCC1|✅ proved - incomplete|shostak|0.132|
|der_f_is_direction_TCC2|✅ proved - incomplete|shostak|0.064|
|der_f_is_direction|✅ proved - incomplete|shostak|3.053|
|der_f_is_direction1_TCC1|✅ proved - incomplete|shostak|0.040|
|der_f_is_direction1_TCC2|✅ proved - incomplete|shostak|0.362|
|der_f_is_direction1_TCC3|✅ proved - incomplete|shostak|0.057|
|der_f_is_direction1|✅ proved - incomplete|shostak|0.996|
|directional_deriv_scalar_TCC1|✅ proved - incomplete|shostak|0.060|
|directional_deriv_scalar_TCC2|✅ proved - incomplete|shostak|0.070|
|directional_deriv_scalar_TCC3|✅ proved - incomplete|shostak|0.060|
|directional_deriv_scalar_TCC4|✅ proved - incomplete|shostak|4.735|
|directional_deriv_scalar_TCC5|✅ proved - incomplete|shostak|0.087|
|directional_deriv_scalar|✅ proved - incomplete|shostak|0.303|
|directional_deriv_additive_TCC1|✅ proved - incomplete|shostak|0.105|
|directional_deriv_additive_TCC2|✅ proved - incomplete|shostak|0.190|
|directional_deriv_additive_TCC3|✅ proved - incomplete|shostak|0.072|
|directional_deriv_additive_TCC4|✅ proved - incomplete|shostak|0.090|
|directional_deriv_additive_TCC5|✅ proved - incomplete|shostak|0.091|
|directional_deriv_additive_TCC6|✅ proved - incomplete|shostak|0.104|
|directional_deriv_additive|✅ proved - incomplete|shostak|0.297|
|directional_deriv_linear_TCC1|✅ proved - incomplete|shostak|0.813|
|directional_deriv_linear_TCC2|✅ proved - incomplete|shostak|0.170|
|directional_deriv_linear_TCC3|✅ proved - incomplete|shostak|0.693|
|directional_deriv_linear_TCC4|✅ proved - incomplete|shostak|0.096|
|directional_deriv_linear_TCC5|✅ proved - incomplete|shostak|0.070|
|directional_deriv_linear_TCC6|✅ proved - incomplete|shostak|0.593|
|directional_deriv_linear_TCC7|✅ proved - incomplete|shostak|0.083|
|directional_deriv_linear|✅ proved - incomplete|shostak|2.918|
|directional_deriv_unique|✅ proved - incomplete|shostak|0.050|
|init_par_dir_derivable_TCC1|✅ proved - incomplete|shostak|0.395|
|init_par_dir_derivable|✅ proved - incomplete|shostak|0.463|
|init_par_dir_deriv_TCC1|✅ proved - incomplete|shostak|0.050|
|init_par_dir_deriv|✅ proved - incomplete|shostak|0.000|

## `partial_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|partial_TCC1|✅ proved - incomplete|shostak|0.740|
|F_partials_TCC1|✅ proved - incomplete|shostak|0.040|
|F_partials_TCC2|✅ proved - incomplete|shostak|0.254|
|F_partials_TCC3|✅ proved - incomplete|shostak|0.054|
|F_partials_TCC4|✅ proved - incomplete|shostak|0.090|
|F_partials_e_TCC1|✅ proved - incomplete|shostak|0.383|
|F_partials_e_TCC2|✅ proved - incomplete|shostak|0.090|
|F_partials_e|✅ proved - incomplete|shostak|0.164|
|directional_deriv_pre1_TCC1|✅ proved - incomplete|shostak|0.040|
|directional_deriv_pre1_TCC2|✅ proved - incomplete|shostak|0.164|
|directional_deriv_pre1_TCC3|✅ proved - incomplete|shostak|0.301|
|directional_deriv_pre1_TCC4|✅ proved - incomplete|shostak|0.223|
|directional_deriv_pre1_TCC5|✅ proved - incomplete|shostak|0.320|
|directional_deriv_pre1_TCC6|✅ proved - incomplete|shostak|0.141|
|directional_deriv_pre1_TCC7|✅ proved - incomplete|shostak|0.050|
|directional_deriv_pre1|✅ proved - incomplete|shostak|2.321|
|directional_deriv_sum_partials_TCC1|✅ proved - incomplete|shostak|0.060|
|directional_deriv_sum_partials_TCC2|✅ proved - incomplete|shostak|0.120|
|directional_deriv_sum_partials_TCC3|✅ proved - incomplete|shostak|0.046|
|directional_deriv_sum_partials|✅ proved - incomplete|shostak|0.110|

## `gradient_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|gradientp?_TCC1|✅ proved - incomplete|shostak|0.217|
|diffp_imp_gradp_TCC1|✅ proved - incomplete|shostak|0.043|
|diffp_imp_gradp|✅ proved - incomplete|shostak|0.100|
|diffD_imp_gradD_TCC1|✅ proved - incomplete|shostak|0.030|
|diffD_imp_gradD|✅ proved - incomplete|shostak|0.045|
|partials_TCC1|✅ proved - incomplete|shostak|0.170|
|partials_TCC2|✅ proved - complete|shostak|0.050|
|partials_TCC3|✅ proved - incomplete|shostak|0.133|
|partials_TCC4|✅ proved - incomplete|shostak|0.655|
|partials_TCC5|✅ proved - incomplete|shostak|0.153|
|partials_TCC6|✅ proved - incomplete|shostak|0.070|
|partials_TCC7|✅ proved - incomplete|shostak|0.535|
|partials_TCC8|✅ proved - incomplete|shostak|0.686|
|partials_TCC9|✅ proved - incomplete|shostak|0.177|
|partials_TCC10|✅ proved - incomplete|shostak|0.100|
|partials_TCC11|✅ proved - incomplete|shostak|0.573|
|partials_TCC12|✅ proved - incomplete|shostak|0.322|
|partials_TCC13|✅ proved - incomplete|shostak|0.170|
|partials_TCC14|✅ proved - incomplete|shostak|0.334|
|partials_length|✅ proved - incomplete|shostak|0.485|
|gradient_TCC1|✅ proved - incomplete|shostak|0.312|
|gradient_TCC2|✅ proved - incomplete|shostak|0.323|
|gradient_TCC3|✅ proved - incomplete|shostak|0.080|
|grad_nth_TCC1|✅ proved - incomplete|shostak|0.503|
|grad_nth_TCC2|✅ proved - incomplete|shostak|0.521|
|grad_nth|✅ proved - incomplete|shostak|0.080|
|directional_deriv_pre2_TCC1|✅ proved - incomplete|shostak|0.615|
|directional_deriv_pre2_TCC2|✅ proved - incomplete|shostak|0.310|
|directional_deriv_pre2_TCC3|✅ proved - incomplete|shostak|0.663|
|directional_deriv_pre2|✅ proved - incomplete|shostak|0.569|
|directional_deriv_is_grad_TCC1|✅ proved - incomplete|shostak|0.043|
|directional_deriv_is_grad_TCC2|✅ proved - incomplete|shostak|0.050|
|directional_deriv_is_grad_TCC3|✅ proved - incomplete|shostak|0.050|
|directional_deriv_is_grad_TCC4|✅ proved - incomplete|shostak|0.335|
|directional_deriv_is_grad_TCC5|✅ proved - incomplete|shostak|0.152|
|directional_deriv_is_grad|✅ proved - incomplete|shostak|0.273|
|directional_deriv_is_init_partial_TCC1|✅ proved - incomplete|shostak|0.043|
|directional_deriv_is_init_partial_TCC2|✅ proved - incomplete|shostak|0.380|
|directional_deriv_is_init_partial_TCC3|✅ proved - incomplete|shostak|0.050|
|directional_deriv_is_init_partial_TCC4|✅ proved - incomplete|shostak|0.060|
|directional_deriv_is_init_partial_TCC5|✅ proved - incomplete|shostak|0.383|
|directional_deriv_is_init_partial|✅ proved - incomplete|shostak|0.172|
|directional_deriv_is_e_partial_TCC1|✅ proved - incomplete|shostak|0.092|
|directional_deriv_is_e_partial|✅ proved - incomplete|shostak|0.292|
|der_f_gradient_dot_e|✅ proved - incomplete|shostak|0.093|
|der_f_is_grad_e|✅ proved - incomplete|shostak|0.172|
|der_f_gradient_dot_TCC1|✅ proved - incomplete|shostak|0.040|
|der_f_gradient_dot|✅ proved - incomplete|shostak|0.091|
|der_f_is_grad_TCC1|✅ proved - incomplete|shostak|0.030|
|der_f_is_grad|✅ proved - incomplete|shostak|0.556|
|grad_append|✅ proved - incomplete|shostak|0.538|
|grad_filter|✅ proved - incomplete|shostak|0.169|
|grad_active|✅ proved - incomplete|shostak|0.232|
|active_grad|✅ proved - incomplete|shostak|0.137|

## `jacobian_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|jacobian_car|✅ proved - incomplete|shostak|0.080|
|jacobian_cdr_TCC1|✅ proved - incomplete|shostak|0.310|
|jacobian_cdr|✅ proved - incomplete|shostak|0.121|
|jac_2_grad|✅ proved - incomplete|shostak|0.080|
|jacobian_TCC1|✅ proved - incomplete|shostak|0.082|
|jacobian_TCC2|✅ proved - incomplete|shostak|0.201|
|jacobian_TCC3|✅ proved - incomplete|shostak|0.050|
|jacobian_TCC4|✅ proved - incomplete|shostak|0.355|
|jacobian_TCC5|✅ proved - incomplete|shostak|0.060|
|jacobian_TCC6|✅ proved - incomplete|shostak|0.191|
|jacobian_TCC7|✅ proved - incomplete|shostak|0.212|

## `continuous_derivatives`
No formula declaration found.
## `Taylor_Thrm_Multi`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|g_thm_TCC1|✅ proved - incomplete|shostak|0.363|
|g_thm_TCC2|✅ proved - incomplete|shostak|0.080|
|g_thm_TCC3|✅ proved - incomplete|shostak|1.041|
|g_thm_TCC4|✅ proved - incomplete|shostak|0.678|
|g_thm_TCC5|✅ proved - incomplete|shostak|0.675|
|g_thm|✅ proved - incomplete|shostak|8.107|
|g_thm_connect_TCC1|✅ proved - incomplete|shostak|0.083|
|g_thm_connect_TCC2|✅ proved - incomplete|shostak|1.066|
|g_thm_connect_TCC3|✅ proved - incomplete|shostak|2.209|
|g_thm_connect_TCC4|✅ proved - incomplete|shostak|0.685|
|g_thm_connect|✅ proved - incomplete|shostak|4.909|
|g_thm_connect_unit_TCC1|✅ proved - incomplete|shostak|0.082|
|g_thm_connect_unit_TCC2|✅ proved - incomplete|shostak|0.080|
|g_thm_connect_unit|✅ proved - incomplete|shostak|29.982|
|g_thm_dif_TCC1|✅ proved - incomplete|shostak|0.040|
|g_thm_dif_TCC2|✅ proved - incomplete|shostak|1.270|
|g_thm_dif_TCC3|✅ proved - incomplete|shostak|0.060|
|g_thm_dif|✅ proved - incomplete|shostak|3.373|
|g_thm_dif_connect_TCC1|✅ proved - incomplete|shostak|0.060|
|g_thm_dif_connect_TCC2|✅ proved - incomplete|shostak|0.255|
|g_thm_dif_connect_TCC3|✅ proved - incomplete|shostak|0.060|
|g_thm_dif_connect|✅ proved - incomplete|shostak|0.000|
|g_thm_dif_connect_unit_TCC1|✅ proved - incomplete|shostak|0.062|
|g_thm_dif_connect_unit|✅ proved - incomplete|shostak|15.201|
|g_thm_grad_TCC1|✅ proved - incomplete|shostak|0.148|
|g_thm_grad_TCC2|✅ proved - incomplete|shostak|0.050|
|g_thm_grad_TCC3|✅ proved - incomplete|shostak|0.058|
|g_thm_grad|✅ proved - incomplete|shostak|3.621|
|g_thm_grad_connect_TCC1|✅ proved - incomplete|shostak|0.140|
|g_thm_grad_connect_TCC2|✅ proved - incomplete|shostak|0.050|
|g_thm_grad_connect_TCC3|✅ proved - incomplete|shostak|0.071|
|g_thm_grad_connect|✅ proved - incomplete|shostak|0.774|
|g_thm_grad_connect_unit|✅ proved - incomplete|shostak|0.602|
|Taylors1_TCC1|✅ proved - incomplete|shostak|0.152|
|Taylors1_TCC2|✅ proved - incomplete|shostak|0.056|
|Taylors1_TCC3|✅ proved - incomplete|shostak|0.090|
|Taylors1|✅ proved - incomplete|shostak|3.613|
|Taylors_thm|✅ proved - incomplete|shostak|3.614|
|Taylors_Thm|✅ proved - incomplete|shostak|0.000|

## `unconstrained_first_order_optimality`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|first_order_nec_TCC1|✅ proved - incomplete|shostak|0.043|
|first_order_nec_TCC2|✅ proved - incomplete|shostak|0.070|
|first_order_nec_TCC3|✅ proved - incomplete|shostak|0.050|
|first_order_nec|✅ proved - incomplete|shostak|25.191|

## `linear_programming`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|lp_1_TCC1|✅ proved - complete|shostak|0.040|
|lp_1_TCC2|✅ proved - incomplete|shostak|0.310|
|lp_1_TCC3|✅ proved - complete|shostak|0.040|
|lp_1|✅ proved - incomplete|shostak|0.779|

## `exist_solution_lp`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|norm_program?_TCC1|✅ proved - incomplete|shostak|0.083|
|convergence_in_solution_set_TCC1|✅ proved - incomplete|shostak|0.100|
|convergence_in_solution_set_TCC2|✅ proved - incomplete|shostak|0.110|
|convergence_in_solution_set|✅ proved - incomplete|shostak|2.199|
|existance_np_1|✅ proved - incomplete|shostak|1.980|

## `Cauchy_seq`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy?_TCC1|✅ proved - incomplete|shostak|0.188|
|cauchy_equiv|✅ proved - incomplete|shostak|1.052|
|cauchy_V_Vn|✅ proved - incomplete|shostak|0.318|
|cauchy_convergence|✅ proved - incomplete|shostak|0.155|

## `Vector_VectorN`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Vn_2_V_TCC1|✅ proved - incomplete|shostak|0.050|
|V_2_Vn_TCC1|✅ proved - complete|shostak|0.040|
|V_2_Vn_TCC2|✅ proved - incomplete|shostak|0.086|
|V_2_Vn_TCC3|✅ proved - complete|shostak|0.040|
|V_2_Vn_TCC4|✅ proved - complete|shostak|0.050|
|V_2_Vn_TCC5|✅ proved - complete|shostak|0.040|
|V_2_Vn_TCC6|✅ proved - complete|shostak|0.040|
|V_2_Vn_TCC7|✅ proved - incomplete|shostak|0.228|
|Vn_V|✅ proved - incomplete|shostak|0.429|
|V_Vn|✅ proved - incomplete|shostak|0.501|
|Vn_V_seq|✅ proved - incomplete|shostak|0.091|
|V_Vn_seq|✅ proved - incomplete|shostak|0.090|
|d2_sigma_TCC1|✅ proved - complete|shostak|0.040|
|d2_sigma_TCC2|✅ proved - incomplete|shostak|0.408|
|d2_sigma|✅ proved - incomplete|shostak|1.494|
|norm2_d2_TCC1|✅ proved - incomplete|shostak|0.351|
|norm2_d2|✅ proved - incomplete|shostak|2.759|
|convergence_V_Vn|✅ proved - incomplete|shostak|0.347|

## `Lipschitz_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|LipD?_TCC1|✅ proved - incomplete|shostak|0.100|
|LipD?_TCC2|✅ proved - incomplete|shostak|0.118|
|Lip_cont_v2f|✅ proved - incomplete|shostak|0.000|
|Lip_cont_v2v|✅ proved - incomplete|shostak|0.403|
|Lip_norm_v2f|✅ proved - incomplete|shostak|0.424|
|Lip_norm_v2v|✅ proved - incomplete|shostak|0.643|

## `composition_function`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cont_comp|✅ proved - incomplete|shostak|0.291|

## `max_function`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|max_gen_TCC1|✅ proved - complete|shostak|0.100|
|max_TCC1|✅ proved - incomplete|shostak|0.162|
|max_plus_TCC1|✅ proved - incomplete|shostak|0.261|
|max_plus|✅ proved - incomplete|shostak|0.240|
|max_ineq|✅ proved - incomplete|shostak|0.109|
|max_const_TCC1|✅ proved - incomplete|shostak|1.038|
|max_const|✅ proved - incomplete|shostak|0.263|

## `mat_vec_mult`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|MN_full|✅ proved - incomplete|shostak|0.134|
|MN_rc|✅ proved - incomplete|shostak|0.273|
|entry_extensionality|✅ proved - incomplete|shostak|1.556|
|row_extensionality|✅ proved - incomplete|shostak|0.230|
|column_extensionality|✅ proved - incomplete|shostak|0.189|
|cdr_columns|✅ proved - incomplete|shostak|0.318|
|cdr_columns_full|✅ proved - incomplete|shostak|0.189|
|matvec_TCC1|✅ proved - incomplete|shostak|0.080|
|matvec_TCC2|✅ proved - incomplete|shostak|0.100|
|matvec_TCC3|✅ proved - incomplete|shostak|0.092|
|matvec_TCC4|✅ proved - incomplete|shostak|0.210|
|matvec_TCC5|✅ proved - complete|shostak|0.060|
|matvec_TCC6|✅ proved - incomplete|shostak|0.110|
|times_TCC1|✅ proved - incomplete|shostak|0.127|
|matv_test_TCC1|✅ proved - incomplete|shostak|0.230|
|matv_test|✅ proved - incomplete|shostak|0.080|
|matv_nth_TCC1|✅ proved - incomplete|shostak|0.098|
|matv_nth|✅ proved - incomplete|shostak|1.209|
|max_a_TCC1|✅ proved - incomplete|shostak|0.070|
|max_a_TCC2|✅ proved - incomplete|shostak|0.120|
|max_a_TCC3|✅ proved - incomplete|shostak|0.100|
|max_a_TCC4|✅ proved - incomplete|shostak|0.074|
|max_a_TCC5|✅ proved - incomplete|shostak|0.120|
|max_a_TCC6|✅ proved - incomplete|shostak|0.110|
|max_a_max_TCC1|✅ proved - incomplete|shostak|0.000|
|max_a_max_TCC2|✅ proved - incomplete|shostak|0.140|
|max_a_max|✅ proved - incomplete|shostak|1.200|
|max_a_row_TCC1|✅ proved - incomplete|shostak|0.090|
|max_a_row_TCC2|✅ proved - incomplete|shostak|0.050|
|max_a_row|✅ proved - incomplete|shostak|1.047|
|matv_norm_inf_TCC1|✅ proved - incomplete|shostak|0.355|
|matv_norm_inf_TCC2|✅ proved - incomplete|shostak|0.203|
|matv_norm_inf_TCC3|✅ proved - incomplete|shostak|0.090|
|matv_norm_inf_TCC4|✅ proved - incomplete|shostak|0.040|
|matv_norm_inf|✅ proved - incomplete|shostak|0.388|
|vec2mat_TCC1|✅ proved - incomplete|shostak|0.090|
|vec2mat_TCC2|✅ proved - incomplete|shostak|0.045|
|vec2mat_TCC3|✅ proved - incomplete|shostak|0.100|
|vec2mat_TCC4|✅ proved - incomplete|shostak|0.516|
|vec2mat_id|✅ proved - incomplete|shostak|0.190|
|matv_matmat|✅ proved - incomplete|shostak|3.616|
|vec2mat_mult|✅ proved - incomplete|shostak|8.344|
|matv_dist_sum_TCC1|✅ proved - incomplete|shostak|0.070|
|matv_dist_sum|✅ proved - incomplete|shostak|0.000|
|matv_dist_scal_TCC1|✅ proved - incomplete|shostak|0.100|
|matv_dist_scal|✅ proved - incomplete|shostak|1.793|
|matv_dist_sub_TCC1|✅ proved - incomplete|shostak|0.240|
|matv_dist_sub|✅ proved - incomplete|shostak|0.250|
|matv_asso_TCC1|✅ proved - incomplete|shostak|0.192|
|matv_asso_TCC2|✅ proved - incomplete|shostak|0.210|
|matv_asso|✅ proved - incomplete|shostak|0.532|
|matv_add_zero_TCC1|✅ proved - incomplete|shostak|0.231|
|matv_add_zero|✅ proved - incomplete|shostak|2.076|
|matv_zerovec|✅ proved - incomplete|shostak|0.763|

## `convergence_vec2vec`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|nth_TCC1|✅ proved - incomplete|shostak|0.080|
|cdr_TCC1|✅ proved - complete|shostak|0.040|
|cdr_TCC2|✅ proved - incomplete|shostak|0.066|
|cdr_TCC3|✅ proved - incomplete|shostak|0.130|
|NQ_TCC1|✅ proved - incomplete|shostak|0.448|
|NQ_TCC2|✅ proved - incomplete|shostak|0.080|
|NQ_TCC3|✅ proved - incomplete|shostak|0.087|
|NQ_TCC4|✅ proved - incomplete|shostak|0.260|
|NQ_TCC5|✅ proved - incomplete|shostak|0.097|
|NQ_TCC6|✅ proved - incomplete|shostak|0.090|
|diff_nth_cdr_TCC1|✅ proved - incomplete|shostak|0.240|
|diff_nth_cdr|✅ proved - incomplete|shostak|0.251|
|every_mat|✅ proved - incomplete|shostak|0.537|
|pre_der_TCC1|✅ proved - incomplete|shostak|0.180|
|pre_der_TCC2|✅ proved - incomplete|shostak|0.748|
|pre_der_TCC3|✅ proved - incomplete|shostak|0.330|
|pre_der_TCC4|✅ proved - incomplete|shostak|0.217|
|pre_der_TCC5|✅ proved - incomplete|shostak|0.060|
|pre_der_TCC6|✅ proved - incomplete|shostak|0.230|
|pre_der_TCC7|✅ proved - incomplete|shostak|0.221|
|pre_der_TCC8|✅ proved - incomplete|shostak|0.200|
|pre_der_TCC9|✅ proved - incomplete|shostak|0.423|
|pre_der_TCC10|✅ proved - incomplete|shostak|0.332|
|pre_der_TCC11|✅ proved - incomplete|shostak|0.190|
|pre_der_TCC12|✅ proved - incomplete|shostak|0.878|
|pre_der_TCC13|✅ proved - incomplete|shostak|0.130|
|pre_der_TCC14|✅ proved - incomplete|shostak|0.199|
|pre_der_TCC15|✅ proved - incomplete|shostak|0.855|
|pre_der_TCC16|✅ proved - incomplete|shostak|0.242|
|pre_der_TCC17|✅ proved - incomplete|shostak|0.300|
|pre_der_TCC18|✅ proved - incomplete|shostak|0.210|
|pre_der_TCC19|✅ proved - incomplete|shostak|0.481|
|pre_der_TCC20|✅ proved - incomplete|shostak|0.451|
|pre_der_nth_TCC1|✅ proved - incomplete|shostak|0.378|
|pre_der_nth_TCC2|✅ proved - incomplete|shostak|0.780|
|pre_der_nth|✅ proved - incomplete|shostak|5.799|
|pre_der_nth_grad_TCC1|✅ proved - incomplete|shostak|0.050|
|pre_der_nth_grad_TCC2|✅ proved - incomplete|shostak|0.057|
|pre_der_nth_grad_TCC3|✅ proved - incomplete|shostak|0.440|
|pre_der_nth_grad_TCC4|✅ proved - incomplete|shostak|0.894|
|pre_der_nth_grad_TCC5|✅ proved - incomplete|shostak|0.556|
|pre_der_nth_grad|✅ proved - incomplete|shostak|0.240|
|pre_der_nth_p_TCC1|✅ proved - incomplete|shostak|0.269|
|pre_der_nth_p_TCC2|✅ proved - incomplete|shostak|0.841|
|pre_der_nth_p|✅ proved - incomplete|shostak|0.888|
|del_ch_TCC1|✅ proved - incomplete|shostak|0.000|
|del_ch_TCC2|✅ proved - incomplete|shostak|0.110|
|del_ch_p_TCC1|✅ proved - incomplete|shostak|0.112|
|del_ch_p_TCC2|✅ proved - incomplete|shostak|0.114|
|del_nth_TCC1|✅ proved - incomplete|shostak|0.628|
|del_nth|✅ proved - incomplete|shostak|3.641|
|del_nth_p_TCC1|✅ proved - incomplete|shostak|0.136|
|del_nth_p|✅ proved - incomplete|shostak|3.175|
|derivable_nth_mat|✅ proved - incomplete|shostak|8.811|
|derivable_nth_mat_point|✅ proved - incomplete|shostak|3.775|
|der_f_TCC1|✅ proved - incomplete|shostak|0.074|
|der_f_TCC2|✅ proved - incomplete|shostak|6.197|
|der_f_TCC3|✅ proved - incomplete|shostak|0.070|
|der_f_TCC4|✅ proved - incomplete|shostak|6.352|
|conv_zero_nth_TCC1|✅ proved - incomplete|shostak|0.190|
|conv_zero_nth_TCC2|✅ proved - incomplete|shostak|0.631|
|conv_zero_nth|✅ proved - incomplete|shostak|2.898|
|der_f_unique_TCC1|✅ proved - incomplete|shostak|0.067|
|der_f_unique_TCC2|✅ proved - incomplete|shostak|0.090|
|der_f_unique|✅ proved - incomplete|shostak|0.321|
|pre_diff_cont_TCC1|✅ proved - incomplete|shostak|0.354|
|pre_diff_cont_TCC2|✅ proved - incomplete|shostak|0.522|
|pre_diff_cont_TCC3|✅ proved - incomplete|shostak|0.589|
|pre_diff_cont_TCC4|✅ proved - incomplete|shostak|0.350|
|pre_diff_cont|✅ proved - incomplete|shostak|2.627|
|diff_cont|✅ proved - incomplete|shostak|0.000|
|der?_TCC1|✅ proved - incomplete|shostak|1.091|
|pre_der_der_p_TCC1|✅ proved - incomplete|shostak|0.070|
|pre_der_der_p|✅ proved - incomplete|shostak|6.194|
|der_nth_mat_point_TCC1|✅ proved - incomplete|shostak|0.060|
|der_nth_mat_point_TCC2|✅ proved - incomplete|shostak|0.561|
|der_nth_mat_point_TCC3|✅ proved - incomplete|shostak|0.060|
|der_nth_mat_point|✅ proved - incomplete|shostak|0.211|
|derivable_subtype_TCC1|✅ proved - incomplete|shostak|0.060|
|derivable_subtype_TCC2|✅ proved - incomplete|shostak|5.444|
|derivable_subtype|✅ proved - incomplete|shostak|0.220|
|der_subtype_TCC1|✅ proved - incomplete|shostak|0.060|
|der_subtype|✅ proved - incomplete|shostak|0.407|

## `chain_rule_multi`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|pre_chain_addzero_triag_TCC1|✅ proved - incomplete|shostak|0.345|
|pre_chain_addzero_triag_TCC2|✅ proved - incomplete|shostak|0.060|
|pre_chain_addzero_triag_TCC3|✅ proved - incomplete|shostak|0.076|
|pre_chain_addzero_triag_TCC4|✅ proved - incomplete|shostak|0.492|
|pre_chain_addzero_triag_TCC5|✅ proved - incomplete|shostak|0.912|
|pre_chain_addzero_triag_TCC6|✅ proved - incomplete|shostak|0.141|
|pre_chain_addzero_triag_TCC7|✅ proved - incomplete|shostak|0.209|
|pre_chain_addzero_triag_TCC8|✅ proved - incomplete|shostak|0.578|
|pre_chain_addzero_triag_TCC9|✅ proved - incomplete|shostak|0.141|
|pre_chain_addzero_triag_TCC10|✅ proved - incomplete|shostak|0.281|
|pre_chain_addzero_triag_TCC11|✅ proved - incomplete|shostak|0.786|
|pre_chain_addzero_triag_TCC12|✅ proved - incomplete|shostak|0.607|
|pre_chain_addzero_triag|✅ proved - incomplete|shostak|0.000|
|pre_chain_bound_TCC1|✅ proved - incomplete|shostak|0.050|
|pre_chain_bound_TCC2|✅ proved - incomplete|shostak|0.454|
|pre_chain_bound|✅ proved - incomplete|shostak|1.500|
|g_diff_Meps2_bound_TCC1|✅ proved - incomplete|shostak|0.515|
|g_diff_Meps2_bound_TCC2|✅ proved - incomplete|shostak|0.076|
|g_diff_Meps2_bound_TCC3|✅ proved - incomplete|shostak|0.150|
|g_diff_Meps2_bound_TCC4|✅ proved - incomplete|shostak|0.159|
|g_diff_Meps2_bound_TCC5|✅ proved - incomplete|shostak|0.439|
|g_diff_Meps2_bound_TCC6|✅ proved - incomplete|shostak|0.090|
|g_diff_Meps2_bound|✅ proved - incomplete|shostak|1.264|
|f_diff_Meps2_bound|✅ proved - incomplete|shostak|6.145|
|chain_rule_multi_TCC1|✅ proved - incomplete|shostak|0.050|
|chain_rule_multi|✅ proved - incomplete|shostak|5.202|
|chain_rule_multi_subdom_TCC1|✅ proved - incomplete|shostak|0.060|
|chain_rule_multi_subdom_TCC2|✅ proved - incomplete|shostak|0.060|
|chain_rule_multi_subdom_TCC3|✅ proved - incomplete|shostak|0.052|
|chain_rule_multi_subdom|✅ proved - incomplete|shostak|4.929|
|chain_rule_multi_der_TCC1|✅ proved - incomplete|shostak|0.440|
|chain_rule_multi_der_TCC2|✅ proved - incomplete|shostak|0.057|
|chain_rule_multi_der|✅ proved - incomplete|shostak|4.693|
|chain_rule_multi_der_subdom_TCC1|✅ proved - incomplete|shostak|0.425|
|chain_rule_multi_der_subdom_TCC2|✅ proved - incomplete|shostak|0.050|
|chain_rule_multi_der_subdom|✅ proved - incomplete|shostak|0.000|
|chain_rule_multi_der_is_TCC1|✅ proved - incomplete|shostak|0.070|
|chain_rule_multi_der_is_TCC2|✅ proved - incomplete|shostak|0.055|
|chain_rule_multi_der_is_TCC3|✅ proved - incomplete|shostak|0.430|
|chain_rule_multi_der_is|✅ proved - incomplete|shostak|0.944|
|chain_rule_multi_der_is_subdom|✅ proved - incomplete|shostak|0.946|

## `lift_real_fun_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|lift_rd_TCC1|✅ proved - incomplete|shostak|0.052|
|dd_lift_dd|✅ proved - incomplete|shostak|0.810|
|lift_re_TCC1|✅ proved - incomplete|shostak|0.040|
|lift_re_TCC2|✅ proved - incomplete|shostak|0.030|
|lift_diff_TCC1|✅ proved - complete|shostak|0.040|
|lift_diff_TCC2|✅ proved - complete|shostak|0.146|
|lift_diff_TCC3|✅ proved - incomplete|shostak|0.040|
|lift_diff_TCC4|✅ proved - incomplete|shostak|0.040|
|lift_diff|✅ proved - incomplete|shostak|10.084|
|lift_der_TCC1|✅ proved - incomplete|shostak|0.050|
|lift_der|✅ proved - incomplete|shostak|0.000|
|liftr_TCC1|✅ proved - incomplete|shostak|0.040|
|lift_diff_right|✅ proved - incomplete|shostak|2.590|
|lift_der_right_TCC1|✅ proved - incomplete|shostak|0.060|
|lift_der_right_TCC2|✅ proved - incomplete|shostak|0.082|
|lift_der_right|✅ proved - incomplete|shostak|2.449|
|same_on_D_same_diff|✅ proved - incomplete|shostak|0.329|
|same_on_D_same_der_TCC1|✅ proved - incomplete|shostak|0.070|
|same_on_D_same_der|✅ proved - incomplete|shostak|0.660|

## `bounded_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|ua_u|✅ proved - complete|shostak|0.060|
|ub_u|✅ proved - complete|shostak|0.064|
|u_uaob|✅ proved - complete|shostak|0.140|
|ua_u_op|✅ proved - incomplete|shostak|0.071|
|ub_u_op|✅ proved - incomplete|shostak|0.090|
|u_uaob_op|✅ proved - incomplete|shostak|0.087|
|unbounded_below_no_glob_minimizer|✅ proved - incomplete|shostak|0.158|
|unbounded_above_no_glob_maximizer|✅ proved - incomplete|shostak|0.150|
|unbounded_no_glob_minimizer_maximizer|✅ proved - incomplete|shostak|0.422|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib//float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-pvsio-fix.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210219-extratregies.lisp`|
