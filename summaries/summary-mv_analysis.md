# Summary for `mv_analysis`
Run started at 8:15:33 7/4/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **1015**   | **1015**    | **1015**    | **0**  | **7:49.823 s**   |
|top|0|0|0|0|0.000|
|domain_vec2real_def|0|0|0|0|0.000|
|vector_arithmetic|129|129|129|0|38.253|
|matrix_vector_multiplication|29|29|29|0|6.121|
|norms|70|70|70|0|29.490|
|cauchy_schwarz|10|10|10|0|2.179|
|subsequences|1|1|1|0|0.090|
|unconstrained_global_extrema|9|9|9|0|0.432|
|sum_vecs|25|25|25|0|4.098|
|norm_1_defs|3|3|3|0|0.201|
|norm_1_sequential_criterian|2|2|2|0|0.230|
|norm_1_bolzano_weierstrass|6|6|6|0|4.877|
|norm_1_extreme_value_theorem|14|14|14|0|4.177|
|norms_equiv|36|36|36|0|8.298|
|norms_equiv_general|1|1|1|0|0.060|
|vector_sequences|18|18|18|0|5.423|
|closed_bounded_domain|6|6|6|0|0.833|
|continuity_multivar|22|22|22|0|6.977|
|sequential_criterian|2|2|2|0|0.280|
|bolzano_weierstrass|6|6|6|0|0.865|
|extreme_value_theorem|1|1|1|0|0.350|
|unconstrained_local_extrema|9|9|9|0|1.476|
|fundamentals_constrained_optimization|50|50|50|0|8.349|
|topology_Rn|5|5|5|0|0.657|
|derivative_domain_multi|44|44|44|0|10.318|
|differentiable_def|7|7|7|0|0.696|
|init_partial_def|67|67|67|0|28.327|
|directional_deriv_def|64|64|64|0|31.834|
|partial_def|20|20|20|0|5.956|
|gradient_def|54|54|54|0|13.922|
|jacobian_def|11|11|11|0|1.849|
|continuous_derivatives|0|0|0|0|0.000|
|Taylor_Thrm_Multi|39|39|39|0|1:12.526|
|unconstrained_first_order_optimality|4|4|4|0|21.935|
|linear_programming|4|4|4|0|1.202|
|exist_solution_lp|5|5|5|0|4.649|
|Cauchy_seq|4|4|4|0|1.803|
|Vector_VectorN|18|18|18|0|6.913|
|Lipschitz_def|6|6|6|0|2.204|
|composition_function|1|1|1|0|0.315|
|max_function|7|7|7|0|2.256|
|mat_vec_mult|54|54|54|0|25.877|
|convergence_vec2vec|83|83|83|0|1:1.048|
|chain_rule_multi|41|41|41|0|35.694|
|lift_real_fun_def|19|19|19|0|15.514|
|bounded_def|9|9|9|0|1.269|
## Detailed Summary 
## `top`
No formula declaration found.
## `domain_vec2real_def`
No formula declaration found.
## `vector_arithmetic`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|wf_1|✅ proved - incomplete|shostak|0.202|
|zero_vec_TCC1|✅ proved - incomplete|shostak|0.050|
|zero_vec_TCC2|✅ proved - complete|shostak|0.059|
|zero_vec_TCC3|✅ proved - complete|shostak|0.040|
|zero_vec_TCC4|✅ proved - incomplete|shostak|0.090|
|zero_vec0_TCC1|✅ proved - complete|shostak|0.040|
|zero_vec0|✅ proved - incomplete|shostak|0.334|
|nth_zero_TCC1|✅ proved - incomplete|shostak|0.050|
|nth_zero|✅ proved - incomplete|shostak|0.172|
|zero_cdr_TCC1|✅ proved - incomplete|shostak|0.060|
|zero_cdr_TCC2|✅ proved - complete|shostak|0.040|
|zero_cdr|✅ proved - incomplete|shostak|0.217|
|every_zero|✅ proved - incomplete|shostak|0.189|
|constant_vec_TCC1|✅ proved - incomplete|shostak|0.110|
|e_TCC1|✅ proved - complete|shostak|0.060|
|e_TCC2|✅ proved - incomplete|shostak|0.094|
|e_TCC3|✅ proved - incomplete|shostak|0.090|
|e_cdr_TCC1|✅ proved - incomplete|shostak|0.060|
|e_cdr_TCC2|✅ proved - complete|shostak|0.060|
|e_cdr|✅ proved - incomplete|shostak|0.219|
|nth_e_TCC1|✅ proved - incomplete|shostak|0.060|
|nth_e_TCC2|✅ proved - incomplete|shostak|0.070|
|nth_e|✅ proved - incomplete|shostak|0.280|
|every_e|✅ proved - incomplete|shostak|0.121|
|e_not_zero|✅ proved - incomplete|shostak|0.222|
|test_zero1|✅ proved - incomplete|shostak|0.040|
|test_zero2|✅ proved - incomplete|shostak|0.040|
|test_e1|✅ proved - incomplete|shostak|0.060|
|test_e2|✅ proved - incomplete|shostak|0.040|
|test_e3|✅ proved - incomplete|shostak|0.050|
|test_constant_vec1|✅ proved - incomplete|shostak|0.040|
|test_constant_vec2|✅ proved - incomplete|shostak|0.133|
|greater?_TCC1|✅ proved - incomplete|shostak|0.040|
|greater?_TCC2|✅ proved - incomplete|shostak|0.060|
|greater?_TCC3|✅ proved - incomplete|shostak|0.040|
|greater?_TCC4|✅ proved - complete|shostak|0.052|
|greater_eq?_TCC1|✅ proved - incomplete|shostak|0.070|
|greater_eq?_TCC2|✅ proved - incomplete|shostak|0.070|
|greater_eq?_TCC3|✅ proved - complete|shostak|0.050|
|less?_TCC1|✅ proved - incomplete|shostak|0.060|
|less?_TCC2|✅ proved - incomplete|shostak|0.075|
|less?_TCC3|✅ proved - complete|shostak|0.050|
|less_eq?_TCC1|✅ proved - incomplete|shostak|0.070|
|less_eq?_TCC2|✅ proved - incomplete|shostak|0.070|
|less_eq?_TCC3|✅ proved - complete|shostak|0.050|
|g_1_TCC1|✅ proved - incomplete|shostak|0.050|
|g_1|✅ proved - incomplete|shostak|0.080|
|ge_1|✅ proved - incomplete|shostak|0.060|
|l_1|✅ proved - incomplete|shostak|0.091|
|cdr_scal_TCC1|✅ proved - incomplete|shostak|0.080|
|cdr_scal|✅ proved - incomplete|shostak|0.209|
|cdr_sub_TCC1|✅ proved - incomplete|shostak|0.257|
|cdr_sub|✅ proved - incomplete|shostak|0.399|
|cdr_add_TCC1|✅ proved - incomplete|shostak|0.210|
|cdr_add|✅ proved - incomplete|shostak|0.402|
|car_scal|✅ proved - incomplete|shostak|0.197|
|car_sub|✅ proved - incomplete|shostak|0.334|
|neg_1_scal|✅ proved - incomplete|shostak|0.220|
|add_commute|✅ proved - incomplete|shostak|0.305|
|sub_idx|✅ proved - incomplete|shostak|0.060|
|asso_1_scal|✅ proved - incomplete|shostak|0.194|
|scal_asso|✅ proved - incomplete|shostak|0.420|
|asso_v|✅ proved - incomplete|shostak|0.240|
|asso_dot|✅ proved - incomplete|shostak|0.301|
|asso_add|✅ proved - incomplete|shostak|0.549|
|asso_sub_commute|✅ proved - incomplete|shostak|1.556|
|scal_cancel|✅ proved - incomplete|shostak|0.685|
|add_zero|✅ proved - incomplete|shostak|0.775|
|zero_id|✅ proved - incomplete|shostak|0.216|
|scal_zero|✅ proved - incomplete|shostak|0.121|
|dot_zero|✅ proved - incomplete|shostak|0.188|
|zero_mult|✅ proved - incomplete|shostak|0.554|
|add_cancel|✅ proved - incomplete|shostak|0.666|
|sub_zero|✅ proved - incomplete|shostak|0.261|
|mult_zero|✅ proved - incomplete|shostak|0.219|
|add_zero_trick|✅ proved - incomplete|shostak|1.069|
|diff_zero|✅ proved - incomplete|shostak|1.257|
|add_zero_imp_eq|✅ proved - incomplete|shostak|0.554|
|one_idx|✅ proved - incomplete|shostak|0.140|
|zero_scal|✅ proved - incomplete|shostak|0.059|
|sub_self|✅ proved - incomplete|shostak|0.315|
|sub_sandwich|✅ proved - incomplete|shostak|0.331|
|sub_equal_id|✅ proved - incomplete|shostak|0.351|
|sub_equal_id1|✅ proved - incomplete|shostak|0.231|
|neg_1|✅ proved - incomplete|shostak|0.907|
|dist_1|✅ proved - incomplete|shostak|0.000|
|dist|✅ proved - incomplete|shostak|0.475|
|dist_scalar|✅ proved - incomplete|shostak|0.253|
|dist_scalar_sub|✅ proved - incomplete|shostak|0.822|
|dist_list|✅ proved - incomplete|shostak|0.753|
|nth_dist_TCC1|✅ proved - incomplete|shostak|0.069|
|nth_dist|✅ proved - incomplete|shostak|0.308|
|nth_sum_TCC1|✅ proved - incomplete|shostak|0.070|
|nth_sum_TCC2|✅ proved - incomplete|shostak|0.060|
|nth_sum|✅ proved - incomplete|shostak|0.624|
|nth_subtract_TCC1|✅ proved - incomplete|shostak|0.100|
|nth_subtract|✅ proved - incomplete|shostak|0.678|
|sub_dist|✅ proved - incomplete|shostak|0.434|
|dot_linear|✅ proved - incomplete|shostak|0.210|
|dot_short_TCC1|✅ proved - incomplete|shostak|0.191|
|dot_short_TCC2|✅ proved - incomplete|shostak|0.210|
|dot_short_TCC3|✅ proved - incomplete|shostak|0.100|
|dot_short_TCC4|✅ proved - complete|shostak|0.050|
|F_sum_TCC1|✅ proved - incomplete|shostak|0.090|
|F_sum_TCC2|✅ proved - incomplete|shostak|0.090|
|dot_short_is_sig|✅ proved - incomplete|shostak|0.299|
|F_shift|✅ proved - incomplete|shostak|0.280|
|F_sum_shift|✅ proved - incomplete|shostak|0.619|
|dot_is_sig|✅ proved - incomplete|shostak|1.161|
|dot_is_sig2|✅ proved - incomplete|shostak|0.882|
|dot_short_is_dot_TCC1|✅ proved - incomplete|shostak|0.200|
|dot_short_is_dot|✅ proved - incomplete|shostak|0.250|
|dot_is_sigma_TCC1|✅ proved - incomplete|shostak|0.060|
|dot_is_sigma|✅ proved - incomplete|shostak|0.230|
|dot_prod_zero|✅ proved - incomplete|shostak|0.091|
|dot_prod_e_TCC1|✅ proved - complete|shostak|0.040|
|dot_prod_e|✅ proved - incomplete|shostak|0.258|
|dot_equality|✅ proved - incomplete|shostak|0.567|
|dot_equality1|✅ proved - incomplete|shostak|0.883|
|dot_equality_e|✅ proved - incomplete|shostak|0.110|
|dot_scalar1|✅ proved - incomplete|shostak|0.296|
|dot_dist|✅ proved - incomplete|shostak|0.724|
|dot_dist_sub|✅ proved - incomplete|shostak|0.878|
|quad_cancel|✅ proved - incomplete|shostak|1.169|
|quad_cancel_plus|✅ proved - incomplete|shostak|0.110|
|quad_move|✅ proved - incomplete|shostak|2.910|
|quad_cancel_p_m|✅ proved - incomplete|shostak|0.482|
|quad_cancel_tail|✅ proved - incomplete|shostak|0.765|
|add_sub_zero|✅ proved - incomplete|shostak|0.140|

## `matrix_vector_multiplication`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|mult_TCC1|✅ proved - incomplete|shostak|0.120|
|mult_TCC2|✅ proved - incomplete|shostak|0.100|
|mult_length|✅ proved - incomplete|shostak|0.257|
|mult_TCC3|✅ proved - incomplete|shostak|0.060|
|mmult_nth_TCC1|✅ proved - incomplete|shostak|0.061|
|mmult_nth|✅ proved - incomplete|shostak|0.603|
|max_row_2_TCC1|✅ proved - incomplete|shostak|0.100|
|max_row_2_TCC2|✅ proved - incomplete|shostak|0.099|
|max_row_2|✅ proved - incomplete|shostak|0.783|
|max_row_2_TCC3|✅ proved - incomplete|shostak|0.090|
|max_row_2_TCC4|✅ proved - incomplete|shostak|0.090|
|mmult_inf_bound_TCC1|✅ proved - incomplete|shostak|0.060|
|mmult_inf_bound_TCC2|✅ proved - incomplete|shostak|0.070|
|mmult_inf_bound|✅ proved - incomplete|shostak|0.447|
|mmult_dist_TCC1|✅ proved - incomplete|shostak|0.070|
|mmult_dist|✅ proved - incomplete|shostak|0.912|
|mmult_scal_TCC1|✅ proved - incomplete|shostak|0.090|
|mmult_scal|✅ proved - incomplete|shostak|0.781|
|mmult_sub_dist_TCC1|✅ proved - incomplete|shostak|0.064|
|mmult_sub_dist|✅ proved - incomplete|shostak|0.201|
|eye_TCC1|✅ proved - complete|shostak|0.050|
|eye_TCC2|✅ proved - complete|shostak|0.050|
|eye_TCC3|✅ proved - complete|shostak|0.060|
|eye_TCC4|✅ proved - complete|shostak|0.046|
|mult_1|✅ proved - incomplete|shostak|0.060|
|eye_1|✅ proved - incomplete|shostak|0.050|
|eye_2|✅ proved - incomplete|shostak|0.708|
|eye_3|✅ proved - incomplete|shostak|0.000|
|mult_3|✅ proved - incomplete|shostak|0.039|

## `norms`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|norm?_TCC1|✅ proved - incomplete|shostak|0.050|
|norm?_TCC2|✅ proved - incomplete|shostak|0.130|
|norm?_TCC3|✅ proved - incomplete|shostak|0.268|
|norm?_TCC4|✅ proved - incomplete|shostak|0.060|
|max_TCC1|✅ proved - incomplete|shostak|0.070|
|max_TCC2|✅ proved - complete|shostak|0.046|
|max_nth|✅ proved - incomplete|shostak|0.260|
|entry_mult_TCC1|✅ proved - incomplete|shostak|0.080|
|entry_mult_TCC2|✅ proved - complete|shostak|0.090|
|abs_TCC1|✅ proved - incomplete|shostak|0.050|
|abs_TCC2|✅ proved - incomplete|shostak|0.073|
|abs_nth_TCC1|✅ proved - incomplete|shostak|0.050|
|abs_nth|✅ proved - incomplete|shostak|0.349|
|test_max_1|✅ proved - incomplete|shostak|0.050|
|test_abs_1|✅ proved - incomplete|shostak|0.040|
|test_sum|✅ proved - incomplete|shostak|0.040|
|test_entry_mult|✅ proved - incomplete|shostak|0.050|
|test_entry_mult_2|✅ proved - incomplete|shostak|0.040|
|abs_max_lists_TCC1|✅ proved - incomplete|shostak|0.085|
|abs_max_lists_TCC2|✅ proved - incomplete|shostak|0.250|
|abs_max_lists_TCC3|✅ proved - incomplete|shostak|0.080|
|abs_max_lists|✅ proved - incomplete|shostak|2.365|
|abs_pos|✅ proved - incomplete|shostak|0.234|
|abs_zero|✅ proved - incomplete|shostak|0.939|
|abs_max_triag_TCC1|✅ proved - incomplete|shostak|0.121|
|abs_max_triag_TCC2|✅ proved - incomplete|shostak|0.100|
|abs_max_triag_TCC3|✅ proved - incomplete|shostak|0.090|
|abs_max_triag|✅ proved - incomplete|shostak|10.402|
|sum_abs_pos|✅ proved - incomplete|shostak|0.288|
|sum_abs_lists|✅ proved - incomplete|shostak|0.851|
|sum_abs_zero|✅ proved - incomplete|shostak|0.753|
|sum_abs_triag|✅ proved - incomplete|shostak|2.482|
|norm_inf_TCC1|✅ proved - incomplete|shostak|0.219|
|norm_inf_TCC2|✅ proved - incomplete|shostak|0.278|
|norm_1_TCC1|✅ proved - incomplete|shostak|0.383|
|norm_1_TCC2|✅ proved - incomplete|shostak|0.228|
|norm_2sq_TCC1|✅ proved - incomplete|shostak|0.131|
|norm_2_TCC1|✅ proved - incomplete|shostak|0.000|
|norm_inf_recurse_TCC1|✅ proved - incomplete|shostak|0.080|
|norm_inf_recurse_TCC2|✅ proved - incomplete|shostak|0.070|
|norm_inf_recurse|✅ proved - incomplete|shostak|0.535|
|norm_one_recurse|✅ proved - incomplete|shostak|0.150|
|test_abs|✅ proved - incomplete|shostak|0.052|
|test_1|✅ proved - incomplete|shostak|0.040|
|test_2sq|✅ proved - incomplete|shostak|0.050|
|big_kahuna|✅ proved - incomplete|shostak|0.050|
|norm_inf_constant_TCC1|✅ proved - incomplete|shostak|0.050|
|norm_inf_constant|✅ proved - incomplete|shostak|0.352|
|norm_reflex_TCC1|✅ proved - incomplete|shostak|0.100|
|norm_reflex_TCC2|✅ proved - incomplete|shostak|0.091|
|norm_reflex|✅ proved - incomplete|shostak|0.299|
|reverse_triag_TCC1|✅ proved - incomplete|shostak|0.080|
|reverse_triag|✅ proved - incomplete|shostak|0.264|
|norm_inf_nth|✅ proved - incomplete|shostak|0.140|
|norm_inf_nth_m_TCC1|✅ proved - complete|shostak|0.040|
|norm_inf_nth_m|✅ proved - incomplete|shostak|0.070|
|norm_inf_nth_ineq|✅ proved - incomplete|shostak|0.459|
|norm_inf_nth_ineq_m|✅ proved - incomplete|shostak|0.061|
|norm_inf_canc_TCC1|✅ proved - incomplete|shostak|0.200|
|norm_inf_canc_TCC2|✅ proved - incomplete|shostak|0.091|
|norm_inf_canc|✅ proved - incomplete|shostak|0.080|
|norm_inf_e_TCC1|✅ proved - incomplete|shostak|0.060|
|norm_inf_e_TCC2|✅ proved - complete|shostak|0.040|
|norm_inf_e|✅ proved - incomplete|shostak|0.448|
|norm_inf_e_scal_TCC1|✅ proved - incomplete|shostak|0.061|
|norm_inf_e_scal|✅ proved - incomplete|shostak|0.120|
|dot_max_ineq|✅ proved - incomplete|shostak|1.474|
|dot_equality_delta_TCC1|✅ proved - incomplete|shostak|0.133|
|dot_equality_delta_TCC2|✅ proved - incomplete|shostak|0.130|
|dot_equality_delta|✅ proved - incomplete|shostak|1.545|

## `cauchy_schwarz`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|dot_non_neg|✅ proved - incomplete|shostak|0.130|
|dot_pos|✅ proved - incomplete|shostak|0.340|
|dot_linear_right|✅ proved - incomplete|shostak|0.190|
|dot_linear_left|✅ proved - incomplete|shostak|0.080|
|dot_spread|✅ proved - incomplete|shostak|0.630|
|almost_cauchy_schwarz_TCC1|✅ proved - incomplete|shostak|0.075|
|almost_cauchy_schwarz|✅ proved - incomplete|shostak|0.320|
|cauchy_schwarz_TCC1|✅ proved - incomplete|shostak|0.052|
|cauchy_schwarz_TCC2|✅ proved - incomplete|shostak|0.050|
|cauchy_schwarz|✅ proved - incomplete|shostak|0.312|

## `subsequences`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|increase_seq_fact|✅ proved - complete|shostak|0.090|

## `unconstrained_global_extrema`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|min_global_1a|✅ proved - incomplete|shostak|0.050|
|min_global_1b_TCC1|✅ proved - incomplete|shostak|0.041|
|min_global_1b_TCC2|✅ proved - incomplete|shostak|0.050|
|min_global_1b_TCC3|✅ proved - complete|shostak|0.050|
|min_global_1b|✅ proved - incomplete|shostak|0.040|
|min_global_1c|✅ proved - incomplete|shostak|0.040|
|min_global_2|✅ proved - incomplete|shostak|0.050|
|min_max_global_1|✅ proved - incomplete|shostak|0.050|
|min_max_global_2|✅ proved - incomplete|shostak|0.061|

## `sum_vecs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Sigmaa_TCC1|✅ proved - incomplete|shostak|0.070|
|Sigmaa_TCC2|✅ proved - incomplete|shostak|0.080|
|Sigmaa_TCC3|✅ proved - incomplete|shostak|0.090|
|Sigmaa_TCC4|✅ proved - incomplete|shostak|0.160|
|Sigmaa_TCC5|✅ proved - incomplete|shostak|0.096|
|Sigma_TCC1|✅ proved - incomplete|shostak|0.080|
|Sigma_TCC2|✅ proved - incomplete|shostak|0.050|
|Sigma_TCC3|✅ proved - incomplete|shostak|0.086|
|Sigma_TCC4|✅ proved - incomplete|shostak|0.170|
|Sigma_TCC5|✅ proved - incomplete|shostak|0.050|
|Standard_sum_TCC1|✅ proved - incomplete|shostak|0.050|
|Standard_sum_TCC2|✅ proved - incomplete|shostak|0.061|
|Standard_sum_TCC3|✅ proved - incomplete|shostak|0.050|
|Standard_sum_TCC4|✅ proved - incomplete|shostak|0.090|
|Standard_sum_TCC5|✅ proved - incomplete|shostak|0.367|
|Standard_sum_TCC6|✅ proved - incomplete|shostak|0.050|
|Standard_sum_TCC7|✅ proved - complete|shostak|0.050|
|Standard_sum_TCC8|✅ proved - incomplete|shostak|0.940|
|Standard_test_TCC1|✅ proved - incomplete|shostak|0.089|
|Standard_test|✅ proved - incomplete|shostak|0.420|
|Standard_id_TCC1|✅ proved - incomplete|shostak|0.060|
|Standard_id_TCC2|✅ proved - incomplete|shostak|0.060|
|Standard_id|✅ proved - incomplete|shostak|0.290|
|Li?_TCC1|✅ proved - incomplete|shostak|0.060|
|Li_test|✅ proved - incomplete|shostak|0.529|

## `norm_1_defs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|norm_1_contp?_TCC1|✅ proved - incomplete|shostak|0.071|
|norm_1_convergence?_TCC1|✅ proved - incomplete|shostak|0.080|
|norm_1_bounded?_TCC1|✅ proved - incomplete|shostak|0.050|

## `norm_1_sequential_criterian`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sequential_1|✅ proved - incomplete|shostak|0.230|
|sequential_2|✅ proved - incomplete|shostak|0.000|

## `norm_1_bolzano_weierstrass`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|B_W_m_TCC1|✅ proved - incomplete|shostak|0.060|
|B_W_m|✅ proved - incomplete|shostak|2.284|
|B_W_TCC1|✅ proved - incomplete|shostak|0.050|
|B_W|✅ proved - incomplete|shostak|0.070|
|B_W_m_le|✅ proved - incomplete|shostak|2.348|
|B_W_le|✅ proved - incomplete|shostak|0.065|

## `norm_1_extreme_value_theorem`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|unbound_fun_TCC1|✅ proved - incomplete|shostak|0.070|
|unbound_fun_TCC2|✅ proved - incomplete|shostak|0.080|
|unbound_fun_TCC3|✅ proved - complete|shostak|0.050|
|unbound_fun_TCC4|✅ proved - incomplete|shostak|0.223|
|cont_on_cb_bounded|✅ proved - incomplete|shostak|1.255|
|least_ub_on_cb_TCC1|✅ proved - incomplete|shostak|0.062|
|least_ub_on_cb|✅ proved - incomplete|shostak|0.093|
|greatest_lb_on_cb|✅ proved - incomplete|shostak|0.114|
|nonempty_bounded|✅ proved - incomplete|shostak|0.070|
|glb_approach_seq_TCC1|✅ proved - incomplete|shostak|0.087|
|glb_approach_seq_TCC2|✅ proved - incomplete|shostak|0.309|
|greatest_lb_subseq|✅ proved - incomplete|shostak|1.130|
|min_on_closed_bounded|✅ proved - incomplete|shostak|0.245|
|max_on_closed_bounded|✅ proved - incomplete|shostak|0.389|

## `norms_equiv`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|equiv?_TCC1|✅ proved - incomplete|shostak|0.090|
|equiv_m?_TCC1|✅ proved - incomplete|shostak|0.050|
|equiv_trans|✅ proved - incomplete|shostak|0.310|
|equiv_1norm_imp_equiv|✅ proved - incomplete|shostak|0.340|
|norm1_div_TCC1|✅ proved - incomplete|shostak|0.050|
|norm1_div_TCC2|✅ proved - incomplete|shostak|0.070|
|norm1_div_TCC3|✅ proved - incomplete|shostak|0.060|
|norm1_div_TCC4|✅ proved - incomplete|shostak|0.100|
|norm1_div|✅ proved - incomplete|shostak|0.210|
|equiv_unit_imp_equiv_TCC1|✅ proved - incomplete|shostak|0.080|
|equiv_unit_imp_equiv|✅ proved - incomplete|shostak|0.492|
|standard_norm_TCC1|✅ proved - incomplete|shostak|0.080|
|standard_norm_TCC2|✅ proved - incomplete|shostak|0.040|
|standard_norm_TCC3|✅ proved - incomplete|shostak|0.118|
|standard_norm_TCC4|✅ proved - incomplete|shostak|0.060|
|standard_norm_TCC5|✅ proved - incomplete|shostak|0.060|
|standard_norm|✅ proved - incomplete|shostak|0.767|
|max_e_exists_TCC1|✅ proved - incomplete|shostak|0.040|
|max_e_exists_TCC2|✅ proved - incomplete|shostak|0.000|
|max_e_exists|✅ proved - incomplete|shostak|0.278|
|max_e_TCC1|✅ proved - incomplete|shostak|0.060|
|max_e_TCC2|✅ proved - incomplete|shostak|0.100|
|max_e_TCC3|✅ proved - incomplete|shostak|0.171|
|standard_norm_ineq|✅ proved - incomplete|shostak|0.930|
|one_norm_sum|✅ proved - incomplete|shostak|1.093|
|standard_max_e_one_norm_TCC1|✅ proved - incomplete|shostak|0.073|
|standard_max_e_one_norm_TCC2|✅ proved - incomplete|shostak|0.050|
|standard_max_e_one_norm_TCC3|✅ proved - incomplete|shostak|0.110|
|standard_max_e_one_norm|✅ proved - incomplete|shostak|0.233|
|norm_to_max_e_one_norm|✅ proved - incomplete|shostak|0.155|
|unit_sphere_norm_1_closed_bounded|✅ proved - incomplete|shostak|0.389|
|norm_achieve_max_usn1_TCC1|✅ proved - incomplete|shostak|0.120|
|norm_achieve_max_usn1|✅ proved - incomplete|shostak|0.558|
|norm_achieve_min_usn1_TCC1|✅ proved - incomplete|shostak|0.120|
|norm_achieve_min_usn1|✅ proved - incomplete|shostak|0.563|
|equiv_norm|✅ proved - incomplete|shostak|0.278|

## `norms_equiv_general`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|equiv_norm_m|✅ proved - incomplete|shostak|0.060|

## `vector_sequences`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|convergence?_TCC1|✅ proved - incomplete|shostak|0.105|
|convergence_equiv_m|✅ proved - incomplete|shostak|0.232|
|convergence_equiv|✅ proved - incomplete|shostak|0.053|
|convergence?_TCC2|✅ proved - incomplete|shostak|0.100|
|convergence_zero?_TCC1|✅ proved - incomplete|shostak|0.230|
|convergence_unique_vec|✅ proved - incomplete|shostak|0.639|
|test_conv_TCC1|✅ proved - incomplete|shostak|0.080|
|test_conv|✅ proved - incomplete|shostak|0.849|
|convergence_unique_vec_seq|✅ proved - incomplete|shostak|0.090|
|unbounded?_TCC1|✅ proved - incomplete|shostak|0.081|
|unbounded_equiv|✅ proved - incomplete|shostak|0.201|
|unbounded?_TCC2|✅ proved - incomplete|shostak|0.050|
|nth_N_TCC1|✅ proved - incomplete|shostak|0.060|
|nth_N_TCC2|✅ proved - complete|shostak|0.040|
|nth_N|✅ proved - incomplete|shostak|0.707|
|converge_nth_TCC1|✅ proved - incomplete|shostak|0.070|
|converge_nth_TCC2|✅ proved - complete|shostak|0.040|
|converge_nth|✅ proved - incomplete|shostak|1.796|

## `closed_bounded_domain`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|closed_equiv|✅ proved - incomplete|shostak|0.343|
|closed_equiv1|✅ proved - incomplete|shostak|0.067|
|bounded_domain?_TCC1|✅ proved - incomplete|shostak|0.070|
|bounded_equiv|✅ proved - incomplete|shostak|0.193|
|bounded_equiv1|✅ proved - incomplete|shostak|0.050|
|open_neigh_domain?_TCC1|✅ proved - incomplete|shostak|0.110|

## `continuity_multivar`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|contp?_TCC1|✅ proved - incomplete|shostak|0.256|
|cont?_TCC1|✅ proved - incomplete|shostak|0.120|
|cont_pos_neigh_TCC1|✅ proved - incomplete|shostak|0.089|
|cont_pos_neigh|✅ proved - incomplete|shostak|1.052|
|cont_neg_neigh_TCC1|✅ proved - incomplete|shostak|0.090|
|cont_neg_neigh|✅ proved - incomplete|shostak|0.281|
|contp?_TCC2|✅ proved - incomplete|shostak|0.318|
|cont_inner_prod|✅ proved - incomplete|shostak|0.000|
|contp_norm_v2r|✅ proved - incomplete|shostak|0.294|
|contp_norms_v2v|✅ proved - incomplete|shostak|0.571|
|contp_norm_v2v|✅ proved - incomplete|shostak|0.348|
|contD_norm_v2r|✅ proved - incomplete|shostak|0.726|
|contD_norms_v2v|✅ proved - incomplete|shostak|0.154|
|contD_norm_v2v|✅ proved - incomplete|shostak|0.133|
|norm_cont_v2v_TCC1|✅ proved - incomplete|shostak|0.070|
|norm_cont_v2v|✅ proved - incomplete|shostak|0.141|
|cont_sum|✅ proved - incomplete|shostak|0.330|
|cont_const|✅ proved - incomplete|shostak|0.499|
|cont_lift_TCC1|✅ proved - incomplete|shostak|0.060|
|cont_lift_TCC2|✅ proved - incomplete|shostak|0.040|
|cont_lift_TCC3|✅ proved - incomplete|shostak|0.060|
|cont_lift|✅ proved - incomplete|shostak|1.345|

## `sequential_criterian`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sequential_criterian1|✅ proved - incomplete|shostak|0.207|
|sequentialcriterian2|✅ proved - incomplete|shostak|0.073|

## `bolzano_weierstrass`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|bolzano_weier_m_TCC1|✅ proved - incomplete|shostak|0.090|
|bolzano_weier_m|✅ proved - incomplete|shostak|0.292|
|bolzano_weier_TCC1|✅ proved - incomplete|shostak|0.080|
|bolzano_weier|✅ proved - incomplete|shostak|0.070|
|bolzano_weier_le_m|✅ proved - incomplete|shostak|0.270|
|bolzano_weier_le|✅ proved - incomplete|shostak|0.063|

## `extreme_value_theorem`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|extreme_value|✅ proved - incomplete|shostak|0.350|

## `unconstrained_local_extrema`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|is_loc_minimizer?_TCC1|✅ proved - incomplete|shostak|0.092|
|loc_minimizer_equiv|✅ proved - incomplete|shostak|0.304|
|loc_min_equiv|✅ proved - incomplete|shostak|0.318|
|loc_maximizer_equiv|✅ proved - incomplete|shostak|0.252|
|loc_max_equiv|✅ proved - incomplete|shostak|0.323|
|zero_loc_5_TCC1|✅ proved - incomplete|shostak|0.050|
|zero_loc_5_TCC2|✅ proved - complete|shostak|0.040|
|zero_loc_5_TCC3|✅ proved - complete|shostak|0.040|
|zero_loc_5|✅ proved - incomplete|shostak|0.057|

## `fundamentals_constrained_optimization`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|nth_TCC1|✅ proved - incomplete|shostak|0.060|
|car_TCC1|✅ proved - incomplete|shostak|0.050|
|car_v_TCC1|✅ proved - incomplete|shostak|0.050|
|cdr_TCC1|✅ proved - complete|shostak|0.040|
|cdr_TCC2|✅ proved - incomplete|shostak|0.109|
|append_TCC1|✅ proved - incomplete|shostak|0.199|
|constraint2vector_TCC1|✅ proved - complete|shostak|0.050|
|constraint2vector_TCC2|✅ proved - complete|shostak|0.050|
|constraint2vector_TCC3|✅ proved - complete|shostak|0.058|
|constraint2vector_TCC4|✅ proved - complete|shostak|0.040|
|constraint2vector_TCC5|✅ proved - incomplete|shostak|0.110|
|cons_f_TCC1|✅ proved - incomplete|shostak|0.100|
|listfuns2fun_TCC1|✅ proved - incomplete|shostak|0.053|
|listfuns2fun_TCC2|✅ proved - incomplete|shostak|0.080|
|listfuns_length|✅ proved - incomplete|shostak|0.130|
|filter_fun_TCC1|✅ proved - incomplete|shostak|0.258|
|filter_fun_filter|✅ proved - incomplete|shostak|0.000|
|filter_nth|✅ proved - incomplete|shostak|0.607|
|filter_2nth|✅ proved - incomplete|shostak|0.070|
|filter_nth2|✅ proved - incomplete|shostak|0.643|
|filter_2nth2|✅ proved - incomplete|shostak|0.080|
|c2v_nth_TCC1|✅ proved - incomplete|shostak|0.052|
|c2v_nth|✅ proved - incomplete|shostak|0.221|
|listfuns2fun_TCC3|✅ proved - incomplete|shostak|0.204|
|sat_eq_1|✅ proved - incomplete|shostak|0.311|
|sat_ineq_1_TCC1|✅ proved - incomplete|shostak|0.060|
|sat_ineq_1|✅ proved - incomplete|shostak|0.862|
|trivial_eq|✅ proved - incomplete|shostak|0.040|
|x_square_TCC1|✅ proved - complete|shostak|0.050|
|x_square_TCC2|✅ proved - incomplete|shostak|0.070|
|x_square_TCC3|✅ proved - incomplete|shostak|0.080|
|x_square_TCC4|✅ proved - incomplete|shostak|0.153|
|x_square_TCC5|✅ proved - incomplete|shostak|0.392|
|x_square_TCC6|✅ proved - incomplete|shostak|0.101|
|x_square|✅ proved - incomplete|shostak|0.540|
|is_loc_minimizer?_TCC1|✅ proved - incomplete|shostak|0.100|
|loc_minimizer_equiv|✅ proved - incomplete|shostak|0.303|
|loc_min_equiv|✅ proved - incomplete|shostak|0.259|
|loc_maximizer_equiv|✅ proved - incomplete|shostak|0.271|
|loc_max_equiv|✅ proved - incomplete|shostak|0.316|
|isolated_implies_strict|✅ proved - incomplete|shostak|0.326|
|active_ineq?_TCC1|✅ proved - incomplete|shostak|0.080|
|lst2real_TCC1|✅ proved - incomplete|shostak|0.060|
|lst2real|✅ proved - incomplete|shostak|0.273|
|countzeroidx_TCC1|✅ proved - incomplete|shostak|0.048|
|countzeroidx_TCC2|✅ proved - incomplete|shostak|0.040|
|countzeroidx_TCC3|✅ proved - incomplete|shostak|0.060|
|countzeroidx_TCC4|✅ proved - incomplete|shostak|0.112|
|countzeroidx_TCC5|✅ proved - incomplete|shostak|0.080|
|ex_idx|✅ proved - incomplete|shostak|0.048|

## `topology_Rn`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|OpenD?_TCC1|✅ proved - incomplete|shostak|0.110|
|OpenD_equiv|✅ proved - incomplete|shostak|0.329|
|Union_open|✅ proved - incomplete|shostak|0.108|
|convex_domain?_TCC1|✅ proved - incomplete|shostak|0.110|
|convex_implies_pc|✅ proved - incomplete|shostak|0.000|

## `derivative_domain_multi`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|deriv_domain?_TCC1|✅ proved - incomplete|shostak|0.110|
|deriv_domain?_TCC2|✅ proved - incomplete|shostak|0.110|
|deriv_domain_direction?_TCC1|✅ proved - incomplete|shostak|0.119|
|deriv_domain_partial?_TCC1|✅ proved - incomplete|shostak|0.070|
|dd_direction_partial|✅ proved - incomplete|shostak|0.096|
|dd_direction_partial_neg_TCC1|✅ proved - incomplete|shostak|0.080|
|dd_direction_partial_neg|✅ proved - incomplete|shostak|0.526|
|e_direction_e_partial|✅ proved - incomplete|shostak|0.108|
|deriv_domain_both_direction?_TCC1|✅ proved - incomplete|shostak|0.090|
|domain_connect?_TCC1|✅ proved - incomplete|shostak|0.100|
|open_implies_e_direction|✅ proved - incomplete|shostak|0.288|
|open_implies_e_partial|✅ proved - incomplete|shostak|0.040|
|d_con_ends|✅ proved - incomplete|shostak|0.397|
|dd_norm_equiv|✅ proved - incomplete|shostak|0.247|
|dd_directionv_implies_dd|✅ proved - incomplete|shostak|0.632|
|dd_all_direction_implies_dd_all_partial|✅ proved - incomplete|shostak|0.100|
|dd_direction_implies_dd_directionv|✅ proved - incomplete|shostak|0.034|
|dd_direction_implies_dd|✅ proved - incomplete|shostak|0.130|
|dd_all_partial_implies_dd|✅ proved - incomplete|shostak|1.146|
|dd_direction_implies_dd_e_direction|✅ proved - incomplete|shostak|0.080|
|dd_partial_implies_dd_e_direction|✅ proved - incomplete|shostak|0.090|
|dd_direction_implies_dd_e_partial|✅ proved - incomplete|shostak|0.040|
|dd_vdirection_implies_dd_partial|✅ proved - incomplete|shostak|0.090|
|dd_edirection_implies_dd_partial|✅ proved - incomplete|shostak|0.101|
|dd_epartial_implies_dd_partial|✅ proved - incomplete|shostak|0.090|
|dd_direction_implies_dd_partial|✅ proved - incomplete|shostak|0.090|
|dd_e_direction_implies_dd|✅ proved - incomplete|shostak|0.139|
|dd_partial_implies_dd|✅ proved - incomplete|shostak|0.628|
|dd_e_partial_implies_dd|✅ proved - incomplete|shostak|0.120|
|dd_partial_implies_scal_partial_TCC1|✅ proved - incomplete|shostak|0.091|
|dd_partial_implies_scal_partial|✅ proved - incomplete|shostak|1.298|
|dd_scal_partial_implies_partial_TCC1|✅ proved - incomplete|shostak|0.067|
|dd_scal_partial_implies_partial|✅ proved - incomplete|shostak|0.632|
|dd_zero|✅ proved - incomplete|shostak|0.143|
|dd_zero_partial|✅ proved - incomplete|shostak|0.142|
|domain_direction_scal_TCC1|✅ proved - incomplete|shostak|0.070|
|domain_direction_scal|✅ proved - incomplete|shostak|0.000|
|domain_direction_scal_real_TCC1|✅ proved - incomplete|shostak|0.099|
|domain_direction_scal_real|✅ proved - incomplete|shostak|0.201|
|del_neigh_all_mult?_TCC1|✅ proved - incomplete|shostak|0.098|
|del_neigh_all_mult?_TCC2|✅ proved - incomplete|shostak|0.100|
|del_neigh_norm_equiv|✅ proved - incomplete|shostak|0.221|
|del_neigh_all_lem_mutl|✅ proved - incomplete|shostak|1.122|
|domain_partial_p?_TCC1|✅ proved - incomplete|shostak|0.143|

## `differentiable_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|NQ_TCC1|✅ proved - incomplete|shostak|0.230|
|NQ_TCC2|✅ proved - incomplete|shostak|0.080|
|NQ_TCC3|✅ proved - incomplete|shostak|0.072|
|NQ_TCC4|✅ proved - incomplete|shostak|0.090|
|der_f_TCC1|✅ proved - incomplete|shostak|0.114|
|der_f_TCC2|✅ proved - incomplete|shostak|0.050|
|der_f_TCC3|✅ proved - incomplete|shostak|0.060|

## `init_partial_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|D_down_TCC1|✅ proved - incomplete|shostak|0.110|
|D_down_der_domain|✅ proved - incomplete|shostak|0.777|
|D_down_domain|✅ proved - incomplete|shostak|0.130|
|D_down_der_domain_unit|✅ proved - incomplete|shostak|1.857|
|D_down_domain_unit|✅ proved - incomplete|shostak|0.047|
|D_down_domain_unitc|✅ proved - incomplete|shostak|4.046|
|D_down_not_one|✅ proved - incomplete|shostak|0.454|
|D_down_not_one_unit|✅ proved - incomplete|shostak|0.359|
|D_down_not_one_unitc|✅ proved - incomplete|shostak|0.417|
|D_down_partial|✅ proved - incomplete|shostak|0.797|
|D_down_all_partial|✅ proved - incomplete|shostak|0.137|
|D_down_partial_not_one|✅ proved - incomplete|shostak|0.355|
|D_down_direction_not_one|✅ proved - incomplete|shostak|0.258|
|D_down_direction_deriv_domain|✅ proved - incomplete|shostak|0.160|
|init_partial?_TCC1|✅ proved - incomplete|shostak|0.120|
|init_partial?_TCC2|✅ proved - incomplete|shostak|0.050|
|init_partial?_TCC3|✅ proved - incomplete|shostak|0.041|
|diff_imp_init_partial_TCC1|✅ proved - incomplete|shostak|0.040|
|diff_imp_init_partial_TCC2|✅ proved - incomplete|shostak|0.120|
|diff_imp_init_partial|✅ proved - incomplete|shostak|0.000|
|diff_imp_init_partial1_TCC1|✅ proved - incomplete|shostak|0.140|
|diff_imp_init_partial1_TCC2|✅ proved - incomplete|shostak|0.134|
|diff_imp_init_partial1|✅ proved - incomplete|shostak|2.181|
|diff_imp_init_partial2_TCC1|✅ proved - incomplete|shostak|0.070|
|diff_imp_init_partial2|✅ proved - incomplete|shostak|2.155|
|init_partial_TCC1|✅ proved - incomplete|shostak|0.120|
|init_partial_zero_derivable_TCC1|✅ proved - incomplete|shostak|0.039|
|init_partial_zero_derivable|✅ proved - incomplete|shostak|0.336|
|init_partial_zero_TCC1|✅ proved - incomplete|shostak|0.047|
|init_partial_zero|✅ proved - incomplete|shostak|0.994|
|frech_diff_imp_init_partial_TCC1|✅ proved - incomplete|shostak|0.070|
|frech_diff_imp_init_partial|✅ proved - incomplete|shostak|0.072|
|init_partial_scal_TCC1|✅ proved - incomplete|shostak|0.339|
|init_partial_scal_TCC2|✅ proved - incomplete|shostak|0.056|
|init_partial_scal|✅ proved - incomplete|shostak|0.000|
|der_f_is_init_partial_TCC1|✅ proved - incomplete|shostak|0.066|
|der_f_is_init_partial_TCC2|✅ proved - incomplete|shostak|0.050|
|der_f_is_init_partial|✅ proved - incomplete|shostak|3.323|
|conv_NQ_is_init_partial_TCC1|✅ proved - incomplete|shostak|0.060|
|conv_NQ_is_init_partial|✅ proved - incomplete|shostak|2.417|
|der_f_is_init_partial1_TCC1|✅ proved - incomplete|shostak|0.050|
|der_f_is_init_partial1_TCC2|✅ proved - incomplete|shostak|0.068|
|der_f_is_init_partial1_TCC3|✅ proved - incomplete|shostak|0.120|
|der_f_is_init_partial1|✅ proved - incomplete|shostak|0.817|
|conv_NQ_is_init_partial1_TCC1|✅ proved - incomplete|shostak|0.063|
|conv_NQ_is_init_partial1_TCC2|✅ proved - incomplete|shostak|0.402|
|conv_NQ_is_init_partial1|✅ proved - incomplete|shostak|0.749|
|conv_NQ_unique|✅ proved - incomplete|shostak|0.141|
|der_f_unique_TCC1|✅ proved - incomplete|shostak|0.051|
|der_f_unique|✅ proved - incomplete|shostak|0.302|
|init_partial_scalar_TCC1|✅ proved - incomplete|shostak|0.081|
|init_partial_scalar_TCC2|✅ proved - incomplete|shostak|0.338|
|init_partial_scalar_TCC3|✅ proved - incomplete|shostak|0.052|
|init_partial_scalar|✅ proved - incomplete|shostak|0.282|
|init_partial_additive_TCC1|✅ proved - incomplete|shostak|0.110|
|init_partial_additive_TCC2|✅ proved - incomplete|shostak|0.080|
|init_partial_additive_TCC3|✅ proved - incomplete|shostak|0.070|
|init_partial_additive_TCC4|✅ proved - incomplete|shostak|0.111|
|init_partial_additive_TCC5|✅ proved - incomplete|shostak|0.070|
|init_partial_additive_TCC6|✅ proved - incomplete|shostak|0.072|
|init_partial_additive|✅ proved - incomplete|shostak|0.373|
|init_partial_linear_TCC1|✅ proved - incomplete|shostak|0.070|
|init_partial_linear_TCC2|✅ proved - incomplete|shostak|0.080|
|init_partial_linear_TCC3|✅ proved - incomplete|shostak|0.081|
|init_partial_linear_TCC4|✅ proved - incomplete|shostak|0.091|
|init_partial_linear_TCC5|✅ proved - incomplete|shostak|0.100|
|init_partial_linear|✅ proved - incomplete|shostak|0.559|

## `directional_deriv_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|D_downd_der_domain|✅ proved - incomplete|shostak|0.900|
|D_downd_domain|✅ proved - incomplete|shostak|0.110|
|D_downd_der_domain_unit|✅ proved - incomplete|shostak|2.046|
|D_downd_domain_unit|✅ proved - incomplete|shostak|0.058|
|D_downd_domain_unitc|✅ proved - incomplete|shostak|0.000|
|D_downd_not_one|✅ proved - incomplete|shostak|0.508|
|D_downd_not_one_unit|✅ proved - incomplete|shostak|0.386|
|D_downd_not_one_unitc|✅ proved - incomplete|shostak|0.439|
|D_downd_direction_not_one|✅ proved - incomplete|shostak|0.297|
|D_downd_direction_deriv_domain|✅ proved - incomplete|shostak|0.050|
|directional_deriv?_TCC1|✅ proved - incomplete|shostak|0.082|
|directional_deriv?_TCC2|✅ proved - incomplete|shostak|0.080|
|directional_deriv?_TCC3|✅ proved - incomplete|shostak|0.669|
|directional_deriv?_TCC4|✅ proved - incomplete|shostak|1.026|
|diff_imp_direction_TCC1|✅ proved - incomplete|shostak|0.040|
|diff_imp_direction_TCC2|✅ proved - incomplete|shostak|0.443|
|diff_imp_direction|✅ proved - incomplete|shostak|3.771|
|diff_imp_direction1_TCC1|✅ proved - incomplete|shostak|0.123|
|diff_imp_direction1|✅ proved - incomplete|shostak|2.169|
|directional_deriv_TCC1|✅ proved - incomplete|shostak|0.147|
|directional_deriv_TCC2|✅ proved - incomplete|shostak|0.621|
|direction_zero_derivable_TCC1|✅ proved - incomplete|shostak|0.040|
|direction_zero_derivable|✅ proved - incomplete|shostak|0.340|
|direction_zero_TCC1|✅ proved - incomplete|shostak|0.040|
|direction_zero|✅ proved - incomplete|shostak|1.034|
|diff_imp_direction2_TCC1|✅ proved - incomplete|shostak|0.140|
|diff_imp_direction2|✅ proved - incomplete|shostak|0.075|
|directional_deriv_scal_TCC1|✅ proved - incomplete|shostak|0.226|
|directional_deriv_scal_TCC2|✅ proved - incomplete|shostak|0.070|
|directional_deriv_scal_TCC3|✅ proved - incomplete|shostak|0.055|
|directional_deriv_scal|✅ proved - incomplete|shostak|0.000|
|der_f_is_direction_TCC1|✅ proved - incomplete|shostak|0.138|
|der_f_is_direction_TCC2|✅ proved - incomplete|shostak|0.066|
|der_f_is_direction|✅ proved - incomplete|shostak|3.144|
|der_f_is_direction1_TCC1|✅ proved - incomplete|shostak|0.040|
|der_f_is_direction1_TCC2|✅ proved - incomplete|shostak|0.367|
|der_f_is_direction1_TCC3|✅ proved - incomplete|shostak|0.067|
|der_f_is_direction1|✅ proved - incomplete|shostak|1.018|
|directional_deriv_scalar_TCC1|✅ proved - incomplete|shostak|0.069|
|directional_deriv_scalar_TCC2|✅ proved - incomplete|shostak|0.070|
|directional_deriv_scalar_TCC3|✅ proved - incomplete|shostak|0.056|
|directional_deriv_scalar_TCC4|✅ proved - incomplete|shostak|4.682|
|directional_deriv_scalar_TCC5|✅ proved - incomplete|shostak|0.078|
|directional_deriv_scalar|✅ proved - incomplete|shostak|0.312|
|directional_deriv_additive_TCC1|✅ proved - incomplete|shostak|0.103|
|directional_deriv_additive_TCC2|✅ proved - incomplete|shostak|0.210|
|directional_deriv_additive_TCC3|✅ proved - incomplete|shostak|0.080|
|directional_deriv_additive_TCC4|✅ proved - incomplete|shostak|0.091|
|directional_deriv_additive_TCC5|✅ proved - incomplete|shostak|0.091|
|directional_deriv_additive_TCC6|✅ proved - incomplete|shostak|0.104|
|directional_deriv_additive|✅ proved - incomplete|shostak|0.314|
|directional_deriv_linear_TCC1|✅ proved - incomplete|shostak|0.843|
|directional_deriv_linear_TCC2|✅ proved - incomplete|shostak|0.170|
|directional_deriv_linear_TCC3|✅ proved - incomplete|shostak|0.721|
|directional_deriv_linear_TCC4|✅ proved - incomplete|shostak|0.092|
|directional_deriv_linear_TCC5|✅ proved - incomplete|shostak|0.083|
|directional_deriv_linear_TCC6|✅ proved - incomplete|shostak|0.588|
|directional_deriv_linear_TCC7|✅ proved - incomplete|shostak|0.080|
|directional_deriv_linear|✅ proved - incomplete|shostak|0.000|
|directional_deriv_unique|✅ proved - incomplete|shostak|0.050|
|init_par_dir_derivable_TCC1|✅ proved - incomplete|shostak|0.407|
|init_par_dir_derivable|✅ proved - incomplete|shostak|0.479|
|init_par_dir_deriv_TCC1|✅ proved - incomplete|shostak|0.060|
|init_par_dir_deriv|✅ proved - incomplete|shostak|1.176|

## `partial_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|partial_TCC1|✅ proved - incomplete|shostak|0.757|
|F_partials_TCC1|✅ proved - incomplete|shostak|0.036|
|F_partials_TCC2|✅ proved - incomplete|shostak|0.260|
|F_partials_TCC3|✅ proved - incomplete|shostak|0.062|
|F_partials_TCC4|✅ proved - incomplete|shostak|0.100|
|F_partials_e_TCC1|✅ proved - incomplete|shostak|0.394|
|F_partials_e_TCC2|✅ proved - incomplete|shostak|0.092|
|F_partials_e|✅ proved - incomplete|shostak|0.183|
|directional_deriv_pre1_TCC1|✅ proved - incomplete|shostak|0.040|
|directional_deriv_pre1_TCC2|✅ proved - incomplete|shostak|0.164|
|directional_deriv_pre1_TCC3|✅ proved - incomplete|shostak|0.341|
|directional_deriv_pre1_TCC4|✅ proved - incomplete|shostak|0.238|
|directional_deriv_pre1_TCC5|✅ proved - incomplete|shostak|0.352|
|directional_deriv_pre1_TCC6|✅ proved - incomplete|shostak|0.143|
|directional_deriv_pre1_TCC7|✅ proved - incomplete|shostak|0.050|
|directional_deriv_pre1|✅ proved - incomplete|shostak|2.383|
|directional_deriv_sum_partials_TCC1|✅ proved - incomplete|shostak|0.070|
|directional_deriv_sum_partials_TCC2|✅ proved - incomplete|shostak|0.121|
|directional_deriv_sum_partials_TCC3|✅ proved - incomplete|shostak|0.050|
|directional_deriv_sum_partials|✅ proved - incomplete|shostak|0.120|

## `gradient_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|gradientp?_TCC1|✅ proved - incomplete|shostak|0.206|
|diffp_imp_gradp_TCC1|✅ proved - incomplete|shostak|0.040|
|diffp_imp_gradp|✅ proved - incomplete|shostak|0.106|
|diffD_imp_gradD_TCC1|✅ proved - incomplete|shostak|0.050|
|diffD_imp_gradD|✅ proved - incomplete|shostak|0.050|
|partials_TCC1|✅ proved - incomplete|shostak|0.180|
|partials_TCC2|✅ proved - complete|shostak|0.050|
|partials_TCC3|✅ proved - incomplete|shostak|0.137|
|partials_TCC4|✅ proved - incomplete|shostak|0.658|
|partials_TCC5|✅ proved - incomplete|shostak|0.158|
|partials_TCC6|✅ proved - incomplete|shostak|0.070|
|partials_TCC7|✅ proved - incomplete|shostak|0.562|
|partials_TCC8|✅ proved - incomplete|shostak|0.722|
|partials_TCC9|✅ proved - incomplete|shostak|0.194|
|partials_TCC10|✅ proved - incomplete|shostak|0.100|
|partials_TCC11|✅ proved - incomplete|shostak|0.576|
|partials_TCC12|✅ proved - incomplete|shostak|0.335|
|partials_TCC13|✅ proved - incomplete|shostak|0.181|
|partials_TCC14|✅ proved - incomplete|shostak|0.353|
|partials_length|✅ proved - incomplete|shostak|0.494|
|gradient_TCC1|✅ proved - incomplete|shostak|0.322|
|gradient_TCC2|✅ proved - incomplete|shostak|0.309|
|gradient_TCC3|✅ proved - incomplete|shostak|0.083|
|grad_nth_TCC1|✅ proved - incomplete|shostak|0.511|
|grad_nth_TCC2|✅ proved - incomplete|shostak|0.528|
|grad_nth|✅ proved - incomplete|shostak|0.080|
|directional_deriv_pre2_TCC1|✅ proved - incomplete|shostak|0.632|
|directional_deriv_pre2_TCC2|✅ proved - incomplete|shostak|0.303|
|directional_deriv_pre2_TCC3|✅ proved - incomplete|shostak|0.670|
|directional_deriv_pre2|✅ proved - incomplete|shostak|0.613|
|directional_deriv_is_grad_TCC1|✅ proved - incomplete|shostak|0.040|
|directional_deriv_is_grad_TCC2|✅ proved - incomplete|shostak|0.051|
|directional_deriv_is_grad_TCC3|✅ proved - incomplete|shostak|0.060|
|directional_deriv_is_grad_TCC4|✅ proved - incomplete|shostak|0.339|
|directional_deriv_is_grad_TCC5|✅ proved - incomplete|shostak|0.154|
|directional_deriv_is_grad|✅ proved - incomplete|shostak|0.282|
|directional_deriv_is_init_partial_TCC1|✅ proved - incomplete|shostak|0.050|
|directional_deriv_is_init_partial_TCC2|✅ proved - incomplete|shostak|0.412|
|directional_deriv_is_init_partial_TCC3|✅ proved - incomplete|shostak|0.050|
|directional_deriv_is_init_partial_TCC4|✅ proved - incomplete|shostak|0.072|
|directional_deriv_is_init_partial_TCC5|✅ proved - incomplete|shostak|0.409|
|directional_deriv_is_init_partial|✅ proved - incomplete|shostak|0.172|
|directional_deriv_is_e_partial_TCC1|✅ proved - incomplete|shostak|0.102|
|directional_deriv_is_e_partial|✅ proved - incomplete|shostak|0.323|
|der_f_gradient_dot_e|✅ proved - incomplete|shostak|0.100|
|der_f_is_grad_e|✅ proved - incomplete|shostak|0.181|
|der_f_gradient_dot_TCC1|✅ proved - incomplete|shostak|0.040|
|der_f_gradient_dot|✅ proved - incomplete|shostak|0.079|
|der_f_is_grad_TCC1|✅ proved - incomplete|shostak|0.040|
|der_f_is_grad|✅ proved - incomplete|shostak|0.575|
|grad_append|✅ proved - incomplete|shostak|0.559|
|grad_filter|✅ proved - incomplete|shostak|0.175|
|grad_active|✅ proved - incomplete|shostak|0.249|
|active_grad|✅ proved - incomplete|shostak|0.135|

## `jacobian_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|jacobian_car|✅ proved - incomplete|shostak|0.082|
|jacobian_cdr_TCC1|✅ proved - incomplete|shostak|0.320|
|jacobian_cdr|✅ proved - incomplete|shostak|0.130|
|jac_2_grad|✅ proved - incomplete|shostak|0.090|
|jacobian_TCC1|✅ proved - incomplete|shostak|0.099|
|jacobian_TCC2|✅ proved - incomplete|shostak|0.220|
|jacobian_TCC3|✅ proved - incomplete|shostak|0.060|
|jacobian_TCC4|✅ proved - incomplete|shostak|0.363|
|jacobian_TCC5|✅ proved - incomplete|shostak|0.070|
|jacobian_TCC6|✅ proved - incomplete|shostak|0.194|
|jacobian_TCC7|✅ proved - incomplete|shostak|0.221|

## `continuous_derivatives`
No formula declaration found.
## `Taylor_Thrm_Multi`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|g_thm_TCC1|✅ proved - incomplete|shostak|0.362|
|g_thm_TCC2|✅ proved - incomplete|shostak|0.090|
|g_thm_TCC3|✅ proved - incomplete|shostak|1.069|
|g_thm_TCC4|✅ proved - incomplete|shostak|0.000|
|g_thm_TCC5|✅ proved - incomplete|shostak|0.691|
|g_thm|✅ proved - incomplete|shostak|13.280|
|g_thm_connect_TCC1|✅ proved - incomplete|shostak|0.080|
|g_thm_connect_TCC2|✅ proved - incomplete|shostak|1.079|
|g_thm_connect_TCC3|✅ proved - incomplete|shostak|2.124|
|g_thm_connect_TCC4|✅ proved - incomplete|shostak|0.697|
|g_thm_connect|✅ proved - incomplete|shostak|0.000|
|g_thm_connect_unit_TCC1|✅ proved - incomplete|shostak|0.100|
|g_thm_connect_unit_TCC2|✅ proved - incomplete|shostak|0.090|
|g_thm_connect_unit|✅ proved - incomplete|shostak|32.437|
|g_thm_dif_TCC1|✅ proved - incomplete|shostak|0.040|
|g_thm_dif_TCC2|✅ proved - incomplete|shostak|1.277|
|g_thm_dif_TCC3|✅ proved - incomplete|shostak|0.070|
|g_thm_dif|✅ proved - incomplete|shostak|0.000|
|g_thm_dif_connect_TCC1|✅ proved - incomplete|shostak|0.070|
|g_thm_dif_connect_TCC2|✅ proved - incomplete|shostak|0.270|
|g_thm_dif_connect_TCC3|✅ proved - incomplete|shostak|0.060|
|g_thm_dif_connect|✅ proved - incomplete|shostak|0.000|
|g_thm_dif_connect_unit_TCC1|✅ proved - incomplete|shostak|0.063|
|g_thm_dif_connect_unit|✅ proved - incomplete|shostak|0.000|
|g_thm_grad_TCC1|✅ proved - incomplete|shostak|0.159|
|g_thm_grad_TCC2|✅ proved - incomplete|shostak|0.070|
|g_thm_grad_TCC3|✅ proved - incomplete|shostak|0.070|
|g_thm_grad|✅ proved - incomplete|shostak|8.961|
|g_thm_grad_connect_TCC1|✅ proved - incomplete|shostak|0.140|
|g_thm_grad_connect_TCC2|✅ proved - incomplete|shostak|0.049|
|g_thm_grad_connect_TCC3|✅ proved - incomplete|shostak|0.060|
|g_thm_grad_connect|✅ proved - incomplete|shostak|0.809|
|g_thm_grad_connect_unit|✅ proved - incomplete|shostak|0.624|
|Taylors1_TCC1|✅ proved - incomplete|shostak|0.143|
|Taylors1_TCC2|✅ proved - incomplete|shostak|0.050|
|Taylors1_TCC3|✅ proved - incomplete|shostak|0.101|
|Taylors1|✅ proved - incomplete|shostak|0.000|
|Taylors_thm|✅ proved - incomplete|shostak|3.665|
|Taylors_Thm|✅ proved - incomplete|shostak|3.676|

## `unconstrained_first_order_optimality`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|first_order_nec_TCC1|✅ proved - incomplete|shostak|0.050|
|first_order_nec_TCC2|✅ proved - incomplete|shostak|0.070|
|first_order_nec_TCC3|✅ proved - incomplete|shostak|0.052|
|first_order_nec|✅ proved - incomplete|shostak|21.763|

## `linear_programming`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|lp_1_TCC1|✅ proved - complete|shostak|0.040|
|lp_1_TCC2|✅ proved - incomplete|shostak|0.338|
|lp_1_TCC3|✅ proved - complete|shostak|0.040|
|lp_1|✅ proved - incomplete|shostak|0.784|

## `exist_solution_lp`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|norm_program?_TCC1|✅ proved - incomplete|shostak|0.100|
|convergence_in_solution_set_TCC1|✅ proved - incomplete|shostak|0.110|
|convergence_in_solution_set_TCC2|✅ proved - incomplete|shostak|0.108|
|convergence_in_solution_set|✅ proved - incomplete|shostak|2.281|
|existance_np_1|✅ proved - incomplete|shostak|2.050|

## `Cauchy_seq`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy?_TCC1|✅ proved - incomplete|shostak|0.209|
|cauchy_equiv|✅ proved - incomplete|shostak|1.096|
|cauchy_V_Vn|✅ proved - incomplete|shostak|0.328|
|cauchy_convergence|✅ proved - incomplete|shostak|0.170|

## `Vector_VectorN`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Vn_2_V_TCC1|✅ proved - incomplete|shostak|0.054|
|V_2_Vn_TCC1|✅ proved - complete|shostak|0.050|
|V_2_Vn_TCC2|✅ proved - incomplete|shostak|0.090|
|V_2_Vn_TCC3|✅ proved - complete|shostak|0.040|
|V_2_Vn_TCC4|✅ proved - complete|shostak|0.060|
|V_2_Vn_TCC5|✅ proved - complete|shostak|0.050|
|V_2_Vn_TCC6|✅ proved - complete|shostak|0.038|
|V_2_Vn_TCC7|✅ proved - incomplete|shostak|0.220|
|Vn_V|✅ proved - incomplete|shostak|0.000|
|V_Vn|✅ proved - incomplete|shostak|0.514|
|Vn_V_seq|✅ proved - incomplete|shostak|0.099|
|V_Vn_seq|✅ proved - incomplete|shostak|0.090|
|d2_sigma_TCC1|✅ proved - complete|shostak|0.050|
|d2_sigma_TCC2|✅ proved - incomplete|shostak|0.425|
|d2_sigma|✅ proved - incomplete|shostak|1.529|
|norm2_d2_TCC1|✅ proved - incomplete|shostak|0.367|
|norm2_d2|✅ proved - incomplete|shostak|2.858|
|convergence_V_Vn|✅ proved - incomplete|shostak|0.379|

## `Lipschitz_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|LipD?_TCC1|✅ proved - incomplete|shostak|0.110|
|LipD?_TCC2|✅ proved - incomplete|shostak|0.120|
|Lip_cont_v2f|✅ proved - incomplete|shostak|0.435|
|Lip_cont_v2v|✅ proved - incomplete|shostak|0.414|
|Lip_norm_v2f|✅ proved - incomplete|shostak|0.437|
|Lip_norm_v2v|✅ proved - incomplete|shostak|0.688|

## `composition_function`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cont_comp|✅ proved - incomplete|shostak|0.315|

## `max_function`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|max_gen_TCC1|✅ proved - complete|shostak|0.110|
|max_TCC1|✅ proved - incomplete|shostak|0.173|
|max_plus_TCC1|✅ proved - incomplete|shostak|0.275|
|max_plus|✅ proved - incomplete|shostak|0.259|
|max_ineq|✅ proved - incomplete|shostak|0.110|
|max_const_TCC1|✅ proved - incomplete|shostak|1.061|
|max_const|✅ proved - incomplete|shostak|0.268|

## `mat_vec_mult`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|MN_full|✅ proved - incomplete|shostak|0.150|
|MN_rc|✅ proved - incomplete|shostak|0.277|
|entry_extensionality|✅ proved - incomplete|shostak|0.000|
|row_extensionality|✅ proved - incomplete|shostak|0.229|
|column_extensionality|✅ proved - incomplete|shostak|0.188|
|cdr_columns|✅ proved - incomplete|shostak|0.330|
|cdr_columns_full|✅ proved - incomplete|shostak|0.210|
|matvec_TCC1|✅ proved - incomplete|shostak|0.083|
|matvec_TCC2|✅ proved - incomplete|shostak|0.110|
|matvec_TCC3|✅ proved - incomplete|shostak|0.090|
|matvec_TCC4|✅ proved - incomplete|shostak|0.216|
|matvec_TCC5|✅ proved - complete|shostak|0.060|
|matvec_TCC6|✅ proved - incomplete|shostak|0.120|
|times_TCC1|✅ proved - incomplete|shostak|0.139|
|matv_test_TCC1|✅ proved - incomplete|shostak|0.240|
|matv_test|✅ proved - incomplete|shostak|0.080|
|matv_nth_TCC1|✅ proved - incomplete|shostak|0.110|
|matv_nth|✅ proved - incomplete|shostak|1.255|
|max_a_TCC1|✅ proved - incomplete|shostak|0.090|
|max_a_TCC2|✅ proved - incomplete|shostak|0.135|
|max_a_TCC3|✅ proved - incomplete|shostak|0.110|
|max_a_TCC4|✅ proved - incomplete|shostak|0.070|
|max_a_TCC5|✅ proved - incomplete|shostak|0.139|
|max_a_TCC6|✅ proved - incomplete|shostak|0.120|
|max_a_max_TCC1|✅ proved - incomplete|shostak|0.090|
|max_a_max_TCC2|✅ proved - incomplete|shostak|0.131|
|max_a_max|✅ proved - incomplete|shostak|1.246|
|max_a_row_TCC1|✅ proved - incomplete|shostak|0.090|
|max_a_row_TCC2|✅ proved - incomplete|shostak|0.050|
|max_a_row|✅ proved - incomplete|shostak|1.084|
|matv_norm_inf_TCC1|✅ proved - incomplete|shostak|0.360|
|matv_norm_inf_TCC2|✅ proved - incomplete|shostak|0.211|
|matv_norm_inf_TCC3|✅ proved - incomplete|shostak|0.100|
|matv_norm_inf_TCC4|✅ proved - incomplete|shostak|0.050|
|matv_norm_inf|✅ proved - incomplete|shostak|0.408|
|vec2mat_TCC1|✅ proved - incomplete|shostak|0.085|
|vec2mat_TCC2|✅ proved - incomplete|shostak|0.050|
|vec2mat_TCC3|✅ proved - incomplete|shostak|0.110|
|vec2mat_TCC4|✅ proved - incomplete|shostak|0.534|
|vec2mat_id|✅ proved - incomplete|shostak|0.190|
|matv_matmat|✅ proved - incomplete|shostak|0.000|
|vec2mat_mult|✅ proved - incomplete|shostak|8.491|
|matv_dist_sum_TCC1|✅ proved - incomplete|shostak|0.072|
|matv_dist_sum|✅ proved - incomplete|shostak|2.761|
|matv_dist_scal_TCC1|✅ proved - incomplete|shostak|0.100|
|matv_dist_scal|✅ proved - incomplete|shostak|1.419|
|matv_dist_sub_TCC1|✅ proved - incomplete|shostak|0.210|
|matv_dist_sub|✅ proved - incomplete|shostak|0.217|
|matv_asso_TCC1|✅ proved - incomplete|shostak|0.173|
|matv_asso_TCC2|✅ proved - incomplete|shostak|0.190|
|matv_asso|✅ proved - incomplete|shostak|0.000|
|matv_add_zero_TCC1|✅ proved - incomplete|shostak|0.229|
|matv_add_zero|✅ proved - incomplete|shostak|1.967|
|matv_zerovec|✅ proved - incomplete|shostak|0.708|

## `convergence_vec2vec`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|nth_TCC1|✅ proved - incomplete|shostak|0.080|
|cdr_TCC1|✅ proved - complete|shostak|0.040|
|cdr_TCC2|✅ proved - incomplete|shostak|0.070|
|cdr_TCC3|✅ proved - incomplete|shostak|0.124|
|NQ_TCC1|✅ proved - incomplete|shostak|0.439|
|NQ_TCC2|✅ proved - incomplete|shostak|0.070|
|NQ_TCC3|✅ proved - incomplete|shostak|0.090|
|NQ_TCC4|✅ proved - incomplete|shostak|0.271|
|NQ_TCC5|✅ proved - incomplete|shostak|0.100|
|NQ_TCC6|✅ proved - incomplete|shostak|0.090|
|diff_nth_cdr_TCC1|✅ proved - incomplete|shostak|0.227|
|diff_nth_cdr|✅ proved - incomplete|shostak|0.220|
|every_mat|✅ proved - incomplete|shostak|0.514|
|pre_der_TCC1|✅ proved - incomplete|shostak|0.180|
|pre_der_TCC2|✅ proved - incomplete|shostak|0.685|
|pre_der_TCC3|✅ proved - incomplete|shostak|0.310|
|pre_der_TCC4|✅ proved - incomplete|shostak|0.189|
|pre_der_TCC5|✅ proved - incomplete|shostak|0.060|
|pre_der_TCC6|✅ proved - incomplete|shostak|0.232|
|pre_der_TCC7|✅ proved - incomplete|shostak|0.211|
|pre_der_TCC8|✅ proved - incomplete|shostak|0.200|
|pre_der_TCC9|✅ proved - incomplete|shostak|0.441|
|pre_der_TCC10|✅ proved - incomplete|shostak|0.321|
|pre_der_TCC11|✅ proved - incomplete|shostak|0.190|
|pre_der_TCC12|✅ proved - incomplete|shostak|0.822|
|pre_der_TCC13|✅ proved - incomplete|shostak|0.128|
|pre_der_TCC14|✅ proved - incomplete|shostak|0.190|
|pre_der_TCC15|✅ proved - incomplete|shostak|0.817|
|pre_der_TCC16|✅ proved - incomplete|shostak|0.250|
|pre_der_TCC17|✅ proved - incomplete|shostak|0.291|
|pre_der_TCC18|✅ proved - incomplete|shostak|0.212|
|pre_der_TCC19|✅ proved - incomplete|shostak|0.463|
|pre_der_TCC20|✅ proved - incomplete|shostak|0.419|
|pre_der_nth_TCC1|✅ proved - incomplete|shostak|0.349|
|pre_der_nth_TCC2|✅ proved - incomplete|shostak|0.825|
|pre_der_nth|✅ proved - incomplete|shostak|5.507|
|pre_der_nth_grad_TCC1|✅ proved - incomplete|shostak|0.052|
|pre_der_nth_grad_TCC2|✅ proved - incomplete|shostak|0.060|
|pre_der_nth_grad_TCC3|✅ proved - incomplete|shostak|0.428|
|pre_der_nth_grad_TCC4|✅ proved - incomplete|shostak|0.846|
|pre_der_nth_grad_TCC5|✅ proved - incomplete|shostak|0.480|
|pre_der_nth_grad|✅ proved - incomplete|shostak|0.215|
|pre_der_nth_p_TCC1|✅ proved - incomplete|shostak|0.248|
|pre_der_nth_p_TCC2|✅ proved - incomplete|shostak|0.784|
|pre_der_nth_p|✅ proved - incomplete|shostak|0.876|
|del_ch_TCC1|✅ proved - incomplete|shostak|0.123|
|del_ch_TCC2|✅ proved - incomplete|shostak|0.124|
|del_ch_p_TCC1|✅ proved - incomplete|shostak|0.120|
|del_ch_p_TCC2|✅ proved - incomplete|shostak|0.122|
|del_nth_TCC1|✅ proved - incomplete|shostak|0.582|
|del_nth|✅ proved - incomplete|shostak|3.263|
|del_nth_p_TCC1|✅ proved - incomplete|shostak|0.120|
|del_nth_p|✅ proved - incomplete|shostak|2.965|
|derivable_nth_mat|✅ proved - incomplete|shostak|0.071|
|derivable_nth_mat_point|✅ proved - incomplete|shostak|8.668|
|der_f_TCC1|✅ proved - incomplete|shostak|0.070|
|der_f_TCC2|✅ proved - incomplete|shostak|0.000|
|der_f_TCC3|✅ proved - incomplete|shostak|0.070|
|der_f_TCC4|✅ proved - incomplete|shostak|5.925|
|conv_zero_nth_TCC1|✅ proved - incomplete|shostak|0.180|
|conv_zero_nth_TCC2|✅ proved - incomplete|shostak|0.620|
|conv_zero_nth|✅ proved - incomplete|shostak|2.814|
|der_f_unique_TCC1|✅ proved - incomplete|shostak|0.068|
|der_f_unique_TCC2|✅ proved - incomplete|shostak|0.080|
|der_f_unique|✅ proved - incomplete|shostak|0.314|
|pre_diff_cont_TCC1|✅ proved - incomplete|shostak|0.327|
|pre_diff_cont_TCC2|✅ proved - incomplete|shostak|0.513|
|pre_diff_cont_TCC3|✅ proved - incomplete|shostak|0.547|
|pre_diff_cont_TCC4|✅ proved - incomplete|shostak|0.359|
|pre_diff_cont|✅ proved - incomplete|shostak|2.548|
|diff_cont|✅ proved - incomplete|shostak|2.870|
|der?_TCC1|✅ proved - incomplete|shostak|0.989|
|pre_der_der_p_TCC1|✅ proved - incomplete|shostak|0.070|
|pre_der_der_p|✅ proved - incomplete|shostak|0.000|
|der_nth_mat_point_TCC1|✅ proved - incomplete|shostak|0.058|
|der_nth_mat_point_TCC2|✅ proved - incomplete|shostak|0.536|
|der_nth_mat_point_TCC3|✅ proved - incomplete|shostak|0.070|
|der_nth_mat_point|✅ proved - incomplete|shostak|0.216|
|derivable_subtype_TCC1|✅ proved - incomplete|shostak|0.070|
|derivable_subtype_TCC2|✅ proved - incomplete|shostak|5.284|
|derivable_subtype|✅ proved - incomplete|shostak|0.218|
|der_subtype_TCC1|✅ proved - incomplete|shostak|0.060|
|der_subtype|✅ proved - incomplete|shostak|0.398|

## `chain_rule_multi`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|pre_chain_addzero_triag_TCC1|✅ proved - incomplete|shostak|0.340|
|pre_chain_addzero_triag_TCC2|✅ proved - incomplete|shostak|0.071|
|pre_chain_addzero_triag_TCC3|✅ proved - incomplete|shostak|0.080|
|pre_chain_addzero_triag_TCC4|✅ proved - incomplete|shostak|0.485|
|pre_chain_addzero_triag_TCC5|✅ proved - incomplete|shostak|0.866|
|pre_chain_addzero_triag_TCC6|✅ proved - incomplete|shostak|0.140|
|pre_chain_addzero_triag_TCC7|✅ proved - incomplete|shostak|0.200|
|pre_chain_addzero_triag_TCC8|✅ proved - incomplete|shostak|0.556|
|pre_chain_addzero_triag_TCC9|✅ proved - incomplete|shostak|0.141|
|pre_chain_addzero_triag_TCC10|✅ proved - incomplete|shostak|0.271|
|pre_chain_addzero_triag_TCC11|✅ proved - incomplete|shostak|0.757|
|pre_chain_addzero_triag_TCC12|✅ proved - incomplete|shostak|0.540|
|pre_chain_addzero_triag|✅ proved - incomplete|shostak|2.565|
|pre_chain_bound_TCC1|✅ proved - incomplete|shostak|0.050|
|pre_chain_bound_TCC2|✅ proved - incomplete|shostak|0.396|
|pre_chain_bound|✅ proved - incomplete|shostak|1.300|
|g_diff_Meps2_bound_TCC1|✅ proved - incomplete|shostak|0.000|
|g_diff_Meps2_bound_TCC2|✅ proved - incomplete|shostak|0.071|
|g_diff_Meps2_bound_TCC3|✅ proved - incomplete|shostak|0.140|
|g_diff_Meps2_bound_TCC4|✅ proved - incomplete|shostak|0.146|
|g_diff_Meps2_bound_TCC5|✅ proved - incomplete|shostak|0.406|
|g_diff_Meps2_bound_TCC6|✅ proved - incomplete|shostak|0.101|
|g_diff_Meps2_bound|✅ proved - incomplete|shostak|1.270|
|f_diff_Meps2_bound|✅ proved - incomplete|shostak|6.175|
|chain_rule_multi_TCC1|✅ proved - incomplete|shostak|0.050|
|chain_rule_multi|✅ proved - incomplete|shostak|5.288|
|chain_rule_multi_subdom_TCC1|✅ proved - incomplete|shostak|0.072|
|chain_rule_multi_subdom_TCC2|✅ proved - incomplete|shostak|0.070|
|chain_rule_multi_subdom_TCC3|✅ proved - incomplete|shostak|0.054|
|chain_rule_multi_subdom|✅ proved - incomplete|shostak|5.038|
|chain_rule_multi_der_TCC1|✅ proved - incomplete|shostak|0.455|
|chain_rule_multi_der_TCC2|✅ proved - incomplete|shostak|0.060|
|chain_rule_multi_der|✅ proved - incomplete|shostak|0.000|
|chain_rule_multi_der_subdom_TCC1|✅ proved - incomplete|shostak|0.435|
|chain_rule_multi_der_subdom_TCC2|✅ proved - incomplete|shostak|0.062|
|chain_rule_multi_der_subdom|✅ proved - incomplete|shostak|4.518|
|chain_rule_multi_der_is_TCC1|✅ proved - incomplete|shostak|0.080|
|chain_rule_multi_der_is_TCC2|✅ proved - incomplete|shostak|0.072|
|chain_rule_multi_der_is_TCC3|✅ proved - incomplete|shostak|0.442|
|chain_rule_multi_der_is|✅ proved - incomplete|shostak|0.952|
|chain_rule_multi_der_is_subdom|✅ proved - incomplete|shostak|0.979|

## `lift_real_fun_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|lift_rd_TCC1|✅ proved - incomplete|shostak|0.050|
|dd_lift_dd|✅ proved - incomplete|shostak|0.832|
|lift_re_TCC1|✅ proved - incomplete|shostak|0.050|
|lift_re_TCC2|✅ proved - incomplete|shostak|0.040|
|lift_diff_TCC1|✅ proved - complete|shostak|0.045|
|lift_diff_TCC2|✅ proved - complete|shostak|0.150|
|lift_diff_TCC3|✅ proved - incomplete|shostak|0.040|
|lift_diff_TCC4|✅ proved - incomplete|shostak|0.040|
|lift_diff|✅ proved - incomplete|shostak|2.333|
|lift_der_TCC1|✅ proved - incomplete|shostak|0.052|
|lift_der|✅ proved - incomplete|shostak|5.530|
|liftr_TCC1|✅ proved - incomplete|shostak|0.040|
|lift_diff_right|✅ proved - incomplete|shostak|2.628|
|lift_der_right_TCC1|✅ proved - incomplete|shostak|0.054|
|lift_der_right_TCC2|✅ proved - incomplete|shostak|0.080|
|lift_der_right|✅ proved - incomplete|shostak|2.476|
|same_on_D_same_diff|✅ proved - incomplete|shostak|0.342|
|same_on_D_same_der_TCC1|✅ proved - incomplete|shostak|0.073|
|same_on_D_same_der|✅ proved - incomplete|shostak|0.659|

## `bounded_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|ua_u|✅ proved - complete|shostak|0.062|
|ub_u|✅ proved - complete|shostak|0.070|
|u_uaob|✅ proved - complete|shostak|0.141|
|ua_u_op|✅ proved - incomplete|shostak|0.080|
|ub_u_op|✅ proved - incomplete|shostak|0.087|
|u_uaob_op|✅ proved - incomplete|shostak|0.092|
|unbounded_below_no_glob_minimizer|✅ proved - incomplete|shostak|0.160|
|unbounded_above_no_glob_maximizer|✅ proved - incomplete|shostak|0.148|
|unbounded_no_glob_minimizer_maximizer|✅ proved - incomplete|shostak|0.429|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib//float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-pvsio-fix.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210219-extratregies.lisp`|
