# Summary for `mv_analysis`
Run started at 22:41:37 9/1/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **1015**   | **1015**    | **1015**    | **0**  | **8:46.649 s**   |
|top|0|0|0|0|0.000|
|domain_vec2real_def|0|0|0|0|0.000|
|vector_arithmetic|129|129|129|0|38.880|
|matrix_vector_multiplication|29|29|29|0|7.412|
|norms|70|70|70|0|26.281|
|cauchy_schwarz|10|10|10|0|2.388|
|subsequences|1|1|1|0|0.090|
|unconstrained_global_extrema|9|9|9|0|0.442|
|sum_vecs|25|25|25|0|4.365|
|norm_1_defs|3|3|3|0|0.208|
|norm_1_sequential_criterian|2|2|2|0|0.340|
|norm_1_bolzano_weierstrass|6|6|6|0|5.254|
|norm_1_extreme_value_theorem|14|14|14|0|4.510|
|norms_equiv|36|36|36|0|9.304|
|norms_equiv_general|1|1|1|0|0.060|
|vector_sequences|18|18|18|0|4.029|
|closed_bounded_domain|6|6|6|0|0.913|
|continuity_multivar|22|22|22|0|8.850|
|sequential_criterian|2|2|2|0|0.300|
|bolzano_weierstrass|6|6|6|0|0.922|
|extreme_value_theorem|1|1|1|0|0.372|
|unconstrained_local_extrema|9|9|9|0|1.585|
|fundamentals_constrained_optimization|50|50|50|0|9.030|
|topology_Rn|5|5|5|0|4.127|
|derivative_domain_multi|44|44|44|0|12.008|
|differentiable_def|7|7|7|0|0.765|
|init_partial_def|67|67|67|0|34.414|
|directional_deriv_def|64|64|64|0|36.364|
|partial_def|20|20|20|0|6.823|
|gradient_def|54|54|54|0|15.222|
|jacobian_def|11|11|11|0|2.097|
|continuous_derivatives|0|0|0|0|0.000|
|Taylor_Thrm_Multi|39|39|39|0|1:21.868|
|unconstrained_first_order_optimality|4|4|4|0|25.292|
|linear_programming|4|4|4|0|1.344|
|exist_solution_lp|5|5|5|0|5.085|
|Cauchy_seq|4|4|4|0|1.951|
|Vector_VectorN|18|18|18|0|8.002|
|Lipschitz_def|6|6|6|0|1.960|
|composition_function|1|1|1|0|0.340|
|max_function|7|7|7|0|2.464|
|mat_vec_mult|54|54|54|0|31.637|
|convergence_vec2vec|83|83|83|0|1:12.050|
|chain_rule_multi|41|41|41|0|38.963|
|lift_real_fun_def|19|19|19|0|16.921|
|bounded_def|9|9|9|0|1.417|
## Detailed Summary 
## `top`
No formula declaration found.
## `domain_vec2real_def`
No formula declaration found.
## `vector_arithmetic`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|wf_1|✅ proved - incomplete|shostak|0.200|
|zero_vec_TCC1|✅ proved - incomplete|shostak|0.050|
|zero_vec_TCC2|✅ proved - complete|shostak|0.050|
|zero_vec_TCC3|✅ proved - complete|shostak|0.040|
|zero_vec_TCC4|✅ proved - incomplete|shostak|0.102|
|zero_vec0_TCC1|✅ proved - complete|shostak|0.050|
|zero_vec0|✅ proved - incomplete|shostak|0.330|
|nth_zero_TCC1|✅ proved - incomplete|shostak|0.060|
|nth_zero|✅ proved - incomplete|shostak|0.172|
|zero_cdr_TCC1|✅ proved - incomplete|shostak|0.050|
|zero_cdr_TCC2|✅ proved - complete|shostak|0.040|
|zero_cdr|✅ proved - incomplete|shostak|0.212|
|every_zero|✅ proved - incomplete|shostak|0.182|
|constant_vec_TCC1|✅ proved - incomplete|shostak|0.100|
|e_TCC1|✅ proved - complete|shostak|0.060|
|e_TCC2|✅ proved - incomplete|shostak|0.100|
|e_TCC3|✅ proved - incomplete|shostak|0.100|
|e_cdr_TCC1|✅ proved - incomplete|shostak|0.060|
|e_cdr_TCC2|✅ proved - complete|shostak|0.060|
|e_cdr|✅ proved - incomplete|shostak|0.208|
|nth_e_TCC1|✅ proved - incomplete|shostak|0.060|
|nth_e_TCC2|✅ proved - incomplete|shostak|0.060|
|nth_e|✅ proved - incomplete|shostak|0.269|
|every_e|✅ proved - incomplete|shostak|0.129|
|e_not_zero|✅ proved - incomplete|shostak|0.220|
|test_zero1|✅ proved - incomplete|shostak|0.048|
|test_zero2|✅ proved - incomplete|shostak|0.040|
|test_e1|✅ proved - incomplete|shostak|0.050|
|test_e2|✅ proved - incomplete|shostak|0.050|
|test_e3|✅ proved - incomplete|shostak|0.040|
|test_constant_vec1|✅ proved - incomplete|shostak|0.050|
|test_constant_vec2|✅ proved - incomplete|shostak|0.120|
|greater?_TCC1|✅ proved - incomplete|shostak|0.043|
|greater?_TCC2|✅ proved - incomplete|shostak|0.070|
|greater?_TCC3|✅ proved - incomplete|shostak|0.040|
|greater?_TCC4|✅ proved - complete|shostak|0.060|
|greater_eq?_TCC1|✅ proved - incomplete|shostak|0.060|
|greater_eq?_TCC2|✅ proved - incomplete|shostak|0.070|
|greater_eq?_TCC3|✅ proved - complete|shostak|0.050|
|less?_TCC1|✅ proved - incomplete|shostak|0.071|
|less?_TCC2|✅ proved - incomplete|shostak|0.060|
|less?_TCC3|✅ proved - complete|shostak|0.050|
|less_eq?_TCC1|✅ proved - incomplete|shostak|0.070|
|less_eq?_TCC2|✅ proved - incomplete|shostak|0.060|
|less_eq?_TCC3|✅ proved - complete|shostak|0.050|
|g_1_TCC1|✅ proved - incomplete|shostak|0.040|
|g_1|✅ proved - incomplete|shostak|0.071|
|ge_1|✅ proved - incomplete|shostak|0.060|
|l_1|✅ proved - incomplete|shostak|0.090|
|cdr_scal_TCC1|✅ proved - incomplete|shostak|0.090|
|cdr_scal|✅ proved - incomplete|shostak|0.194|
|cdr_sub_TCC1|✅ proved - incomplete|shostak|0.248|
|cdr_sub|✅ proved - incomplete|shostak|0.369|
|cdr_add_TCC1|✅ proved - incomplete|shostak|0.210|
|cdr_add|✅ proved - incomplete|shostak|0.401|
|car_scal|✅ proved - incomplete|shostak|0.180|
|car_sub|✅ proved - incomplete|shostak|0.321|
|neg_1_scal|✅ proved - incomplete|shostak|0.220|
|add_commute|✅ proved - incomplete|shostak|0.282|
|sub_idx|✅ proved - incomplete|shostak|0.060|
|asso_1_scal|✅ proved - incomplete|shostak|0.183|
|scal_asso|✅ proved - incomplete|shostak|0.423|
|asso_v|✅ proved - incomplete|shostak|0.220|
|asso_dot|✅ proved - incomplete|shostak|0.283|
|asso_add|✅ proved - incomplete|shostak|0.543|
|asso_sub_commute|✅ proved - incomplete|shostak|1.467|
|scal_cancel|✅ proved - incomplete|shostak|0.670|
|add_zero|✅ proved - incomplete|shostak|0.767|
|zero_id|✅ proved - incomplete|shostak|0.190|
|scal_zero|✅ proved - incomplete|shostak|0.110|
|dot_zero|✅ proved - incomplete|shostak|0.188|
|zero_mult|✅ proved - incomplete|shostak|0.533|
|add_cancel|✅ proved - incomplete|shostak|0.634|
|sub_zero|✅ proved - incomplete|shostak|0.250|
|mult_zero|✅ proved - incomplete|shostak|0.212|
|add_zero_trick|✅ proved - incomplete|shostak|0.982|
|diff_zero|✅ proved - incomplete|shostak|1.191|
|add_zero_imp_eq|✅ proved - incomplete|shostak|0.532|
|one_idx|✅ proved - incomplete|shostak|0.135|
|zero_scal|✅ proved - incomplete|shostak|0.060|
|sub_self|✅ proved - incomplete|shostak|0.299|
|sub_sandwich|✅ proved - incomplete|shostak|0.312|
|sub_equal_id|✅ proved - incomplete|shostak|0.351|
|sub_equal_id1|✅ proved - incomplete|shostak|0.223|
|neg_1|✅ proved - incomplete|shostak|0.824|
|dist_1|✅ proved - incomplete|shostak|1.227|
|dist|✅ proved - incomplete|shostak|0.454|
|dist_scalar|✅ proved - incomplete|shostak|0.223|
|dist_scalar_sub|✅ proved - incomplete|shostak|0.766|
|dist_list|✅ proved - incomplete|shostak|0.733|
|nth_dist_TCC1|✅ proved - incomplete|shostak|0.070|
|nth_dist|✅ proved - incomplete|shostak|0.293|
|nth_sum_TCC1|✅ proved - incomplete|shostak|0.060|
|nth_sum_TCC2|✅ proved - incomplete|shostak|0.063|
|nth_sum|✅ proved - incomplete|shostak|0.000|
|nth_subtract_TCC1|✅ proved - incomplete|shostak|0.130|
|nth_subtract|✅ proved - incomplete|shostak|0.784|
|sub_dist|✅ proved - incomplete|shostak|0.448|
|dot_linear|✅ proved - incomplete|shostak|0.211|
|dot_short_TCC1|✅ proved - incomplete|shostak|0.200|
|dot_short_TCC2|✅ proved - incomplete|shostak|0.213|
|dot_short_TCC3|✅ proved - incomplete|shostak|0.110|
|dot_short_TCC4|✅ proved - complete|shostak|0.060|
|F_sum_TCC1|✅ proved - incomplete|shostak|0.090|
|F_sum_TCC2|✅ proved - incomplete|shostak|0.100|
|dot_short_is_sig|✅ proved - incomplete|shostak|0.322|
|F_shift|✅ proved - incomplete|shostak|0.300|
|F_sum_shift|✅ proved - incomplete|shostak|0.660|
|dot_is_sig|✅ proved - incomplete|shostak|1.204|
|dot_is_sig2|✅ proved - incomplete|shostak|0.924|
|dot_short_is_dot_TCC1|✅ proved - incomplete|shostak|0.200|
|dot_short_is_dot|✅ proved - incomplete|shostak|0.250|
|dot_is_sigma_TCC1|✅ proved - incomplete|shostak|0.070|
|dot_is_sigma|✅ proved - incomplete|shostak|0.230|
|dot_prod_zero|✅ proved - incomplete|shostak|0.100|
|dot_prod_e_TCC1|✅ proved - complete|shostak|0.040|
|dot_prod_e|✅ proved - incomplete|shostak|0.268|
|dot_equality|✅ proved - incomplete|shostak|0.572|
|dot_equality1|✅ proved - incomplete|shostak|0.890|
|dot_equality_e|✅ proved - incomplete|shostak|0.120|
|dot_scalar1|✅ proved - incomplete|shostak|0.292|
|dot_dist|✅ proved - incomplete|shostak|0.754|
|dot_dist_sub|✅ proved - incomplete|shostak|0.918|
|quad_cancel|✅ proved - incomplete|shostak|1.267|
|quad_cancel_plus|✅ proved - incomplete|shostak|0.130|
|quad_move|✅ proved - incomplete|shostak|3.142|
|quad_cancel_p_m|✅ proved - incomplete|shostak|0.489|
|quad_cancel_tail|✅ proved - incomplete|shostak|0.829|
|add_sub_zero|✅ proved - incomplete|shostak|0.140|

## `matrix_vector_multiplication`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|mult_TCC1|✅ proved - incomplete|shostak|0.130|
|mult_TCC2|✅ proved - incomplete|shostak|0.104|
|mult_length|✅ proved - incomplete|shostak|0.270|
|mult_TCC3|✅ proved - incomplete|shostak|0.060|
|mmult_nth_TCC1|✅ proved - incomplete|shostak|0.077|
|mmult_nth|✅ proved - incomplete|shostak|0.625|
|max_row_2_TCC1|✅ proved - incomplete|shostak|0.100|
|max_row_2_TCC2|✅ proved - incomplete|shostak|0.110|
|max_row_2|✅ proved - incomplete|shostak|0.810|
|max_row_2_TCC3|✅ proved - incomplete|shostak|0.108|
|max_row_2_TCC4|✅ proved - incomplete|shostak|0.100|
|mmult_inf_bound_TCC1|✅ proved - incomplete|shostak|0.060|
|mmult_inf_bound_TCC2|✅ proved - incomplete|shostak|0.080|
|mmult_inf_bound|✅ proved - incomplete|shostak|0.484|
|mmult_dist_TCC1|✅ proved - incomplete|shostak|0.072|
|mmult_dist|✅ proved - incomplete|shostak|1.007|
|mmult_scal_TCC1|✅ proved - incomplete|shostak|0.100|
|mmult_scal|✅ proved - incomplete|shostak|0.816|
|mmult_sub_dist_TCC1|✅ proved - incomplete|shostak|0.070|
|mmult_sub_dist|✅ proved - incomplete|shostak|0.212|
|eye_TCC1|✅ proved - complete|shostak|0.060|
|eye_TCC2|✅ proved - complete|shostak|0.050|
|eye_TCC3|✅ proved - complete|shostak|0.060|
|eye_TCC4|✅ proved - complete|shostak|0.053|
|mult_1|✅ proved - incomplete|shostak|0.060|
|eye_1|✅ proved - incomplete|shostak|0.050|
|eye_2|✅ proved - incomplete|shostak|0.716|
|eye_3|✅ proved - incomplete|shostak|0.928|
|mult_3|✅ proved - incomplete|shostak|0.040|

## `norms`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|norm?_TCC1|✅ proved - incomplete|shostak|0.060|
|norm?_TCC2|✅ proved - incomplete|shostak|0.140|
|norm?_TCC3|✅ proved - incomplete|shostak|0.280|
|norm?_TCC4|✅ proved - incomplete|shostak|0.060|
|max_TCC1|✅ proved - incomplete|shostak|0.080|
|max_TCC2|✅ proved - complete|shostak|0.060|
|max_nth|✅ proved - incomplete|shostak|0.280|
|entry_mult_TCC1|✅ proved - incomplete|shostak|0.100|
|entry_mult_TCC2|✅ proved - complete|shostak|0.100|
|abs_TCC1|✅ proved - incomplete|shostak|0.060|
|abs_TCC2|✅ proved - incomplete|shostak|0.060|
|abs_nth_TCC1|✅ proved - incomplete|shostak|0.070|
|abs_nth|✅ proved - incomplete|shostak|0.383|
|test_max_1|✅ proved - incomplete|shostak|0.050|
|test_abs_1|✅ proved - incomplete|shostak|0.050|
|test_sum|✅ proved - incomplete|shostak|0.050|
|test_entry_mult|✅ proved - incomplete|shostak|0.050|
|test_entry_mult_2|✅ proved - incomplete|shostak|0.040|
|abs_max_lists_TCC1|✅ proved - incomplete|shostak|0.080|
|abs_max_lists_TCC2|✅ proved - incomplete|shostak|0.258|
|abs_max_lists_TCC3|✅ proved - incomplete|shostak|0.090|
|abs_max_lists|✅ proved - incomplete|shostak|2.490|
|abs_pos|✅ proved - incomplete|shostak|0.260|
|abs_zero|✅ proved - incomplete|shostak|1.027|
|abs_max_triag_TCC1|✅ proved - incomplete|shostak|0.140|
|abs_max_triag_TCC2|✅ proved - incomplete|shostak|0.121|
|abs_max_triag_TCC3|✅ proved - incomplete|shostak|0.110|
|abs_max_triag|✅ proved - incomplete|shostak|5.686|
|sum_abs_pos|✅ proved - incomplete|shostak|0.323|
|sum_abs_lists|✅ proved - incomplete|shostak|0.919|
|sum_abs_zero|✅ proved - incomplete|shostak|0.814|
|sum_abs_triag|✅ proved - incomplete|shostak|2.792|
|norm_inf_TCC1|✅ proved - incomplete|shostak|0.252|
|norm_inf_TCC2|✅ proved - incomplete|shostak|0.305|
|norm_1_TCC1|✅ proved - incomplete|shostak|0.406|
|norm_1_TCC2|✅ proved - incomplete|shostak|0.242|
|norm_2sq_TCC1|✅ proved - incomplete|shostak|0.140|
|norm_2_TCC1|✅ proved - incomplete|shostak|1.406|
|norm_inf_recurse_TCC1|✅ proved - incomplete|shostak|0.090|
|norm_inf_recurse_TCC2|✅ proved - incomplete|shostak|0.080|
|norm_inf_recurse|✅ proved - incomplete|shostak|0.586|
|norm_one_recurse|✅ proved - incomplete|shostak|0.171|
|test_abs|✅ proved - incomplete|shostak|0.050|
|test_1|✅ proved - incomplete|shostak|0.040|
|test_2sq|✅ proved - incomplete|shostak|0.050|
|big_kahuna|✅ proved - incomplete|shostak|0.050|
|norm_inf_constant_TCC1|✅ proved - incomplete|shostak|0.050|
|norm_inf_constant|✅ proved - incomplete|shostak|0.374|
|norm_reflex_TCC1|✅ proved - incomplete|shostak|0.100|
|norm_reflex_TCC2|✅ proved - incomplete|shostak|0.100|
|norm_reflex|✅ proved - incomplete|shostak|0.322|
|reverse_triag_TCC1|✅ proved - incomplete|shostak|0.090|
|reverse_triag|✅ proved - incomplete|shostak|0.293|
|norm_inf_nth|✅ proved - incomplete|shostak|0.152|
|norm_inf_nth_m_TCC1|✅ proved - complete|shostak|0.050|
|norm_inf_nth_m|✅ proved - incomplete|shostak|0.070|
|norm_inf_nth_ineq|✅ proved - incomplete|shostak|0.506|
|norm_inf_nth_ineq_m|✅ proved - incomplete|shostak|0.070|
|norm_inf_canc_TCC1|✅ proved - incomplete|shostak|0.223|
|norm_inf_canc_TCC2|✅ proved - incomplete|shostak|0.100|
|norm_inf_canc|✅ proved - incomplete|shostak|0.090|
|norm_inf_e_TCC1|✅ proved - incomplete|shostak|0.060|
|norm_inf_e_TCC2|✅ proved - complete|shostak|0.040|
|norm_inf_e|✅ proved - incomplete|shostak|0.484|
|norm_inf_e_scal_TCC1|✅ proved - incomplete|shostak|0.070|
|norm_inf_e_scal|✅ proved - incomplete|shostak|0.123|
|dot_max_ineq|✅ proved - incomplete|shostak|0.000|
|dot_equality_delta_TCC1|✅ proved - incomplete|shostak|0.142|
|dot_equality_delta_TCC2|✅ proved - incomplete|shostak|0.140|
|dot_equality_delta|✅ proved - incomplete|shostak|1.681|

## `cauchy_schwarz`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|dot_non_neg|✅ proved - incomplete|shostak|0.150|
|dot_pos|✅ proved - incomplete|shostak|0.361|
|dot_linear_right|✅ proved - incomplete|shostak|0.200|
|dot_linear_left|✅ proved - incomplete|shostak|0.092|
|dot_spread|✅ proved - incomplete|shostak|0.686|
|almost_cauchy_schwarz_TCC1|✅ proved - incomplete|shostak|0.082|
|almost_cauchy_schwarz|✅ proved - incomplete|shostak|0.366|
|cauchy_schwarz_TCC1|✅ proved - incomplete|shostak|0.060|
|cauchy_schwarz_TCC2|✅ proved - incomplete|shostak|0.050|
|cauchy_schwarz|✅ proved - incomplete|shostak|0.341|

## `subsequences`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|increase_seq_fact|✅ proved - complete|shostak|0.090|

## `unconstrained_global_extrema`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|min_global_1a|✅ proved - incomplete|shostak|0.050|
|min_global_1b_TCC1|✅ proved - incomplete|shostak|0.040|
|min_global_1b_TCC2|✅ proved - incomplete|shostak|0.050|
|min_global_1b_TCC3|✅ proved - complete|shostak|0.040|
|min_global_1b|✅ proved - incomplete|shostak|0.042|
|min_global_1c|✅ proved - incomplete|shostak|0.050|
|min_global_2|✅ proved - incomplete|shostak|0.050|
|min_max_global_1|✅ proved - incomplete|shostak|0.050|
|min_max_global_2|✅ proved - incomplete|shostak|0.070|

## `sum_vecs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Sigmaa_TCC1|✅ proved - incomplete|shostak|0.062|
|Sigmaa_TCC2|✅ proved - incomplete|shostak|0.080|
|Sigmaa_TCC3|✅ proved - incomplete|shostak|0.100|
|Sigmaa_TCC4|✅ proved - incomplete|shostak|0.170|
|Sigmaa_TCC5|✅ proved - incomplete|shostak|0.102|
|Sigma_TCC1|✅ proved - incomplete|shostak|0.080|
|Sigma_TCC2|✅ proved - incomplete|shostak|0.060|
|Sigma_TCC3|✅ proved - incomplete|shostak|0.090|
|Sigma_TCC4|✅ proved - incomplete|shostak|0.182|
|Sigma_TCC5|✅ proved - incomplete|shostak|0.050|
|Standard_sum_TCC1|✅ proved - incomplete|shostak|0.050|
|Standard_sum_TCC2|✅ proved - incomplete|shostak|0.053|
|Standard_sum_TCC3|✅ proved - incomplete|shostak|0.060|
|Standard_sum_TCC4|✅ proved - incomplete|shostak|0.090|
|Standard_sum_TCC5|✅ proved - incomplete|shostak|0.407|
|Standard_sum_TCC6|✅ proved - incomplete|shostak|0.060|
|Standard_sum_TCC7|✅ proved - complete|shostak|0.040|
|Standard_sum_TCC8|✅ proved - incomplete|shostak|1.049|
|Standard_test_TCC1|✅ proved - incomplete|shostak|0.090|
|Standard_test|✅ proved - incomplete|shostak|0.430|
|Standard_id_TCC1|✅ proved - incomplete|shostak|0.060|
|Standard_id_TCC2|✅ proved - incomplete|shostak|0.050|
|Standard_id|✅ proved - incomplete|shostak|0.320|
|Li?_TCC1|✅ proved - incomplete|shostak|0.060|
|Li_test|✅ proved - incomplete|shostak|0.570|

## `norm_1_defs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|norm_1_contp?_TCC1|✅ proved - incomplete|shostak|0.068|
|norm_1_convergence?_TCC1|✅ proved - incomplete|shostak|0.080|
|norm_1_bounded?_TCC1|✅ proved - incomplete|shostak|0.060|

## `norm_1_sequential_criterian`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sequential_1|✅ proved - incomplete|shostak|0.260|
|sequential_2|✅ proved - incomplete|shostak|0.080|

## `norm_1_bolzano_weierstrass`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|B_W_m_TCC1|✅ proved - incomplete|shostak|0.060|
|B_W_m|✅ proved - incomplete|shostak|2.484|
|B_W_TCC1|✅ proved - incomplete|shostak|0.060|
|B_W|✅ proved - incomplete|shostak|0.069|
|B_W_m_le|✅ proved - incomplete|shostak|2.501|
|B_W_le|✅ proved - incomplete|shostak|0.080|

## `norm_1_extreme_value_theorem`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|unbound_fun_TCC1|✅ proved - incomplete|shostak|0.070|
|unbound_fun_TCC2|✅ proved - incomplete|shostak|0.100|
|unbound_fun_TCC3|✅ proved - complete|shostak|0.060|
|unbound_fun_TCC4|✅ proved - incomplete|shostak|0.260|
|cont_on_cb_bounded|✅ proved - incomplete|shostak|1.494|
|least_ub_on_cb_TCC1|✅ proved - incomplete|shostak|0.067|
|least_ub_on_cb|✅ proved - incomplete|shostak|0.110|
|greatest_lb_on_cb|✅ proved - incomplete|shostak|0.123|
|nonempty_bounded|✅ proved - incomplete|shostak|0.088|
|glb_approach_seq_TCC1|✅ proved - incomplete|shostak|0.100|
|glb_approach_seq_TCC2|✅ proved - incomplete|shostak|0.000|
|greatest_lb_subseq|✅ proved - incomplete|shostak|1.338|
|min_on_closed_bounded|✅ proved - incomplete|shostak|0.266|
|max_on_closed_bounded|✅ proved - incomplete|shostak|0.434|

## `norms_equiv`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|equiv?_TCC1|✅ proved - incomplete|shostak|0.090|
|equiv_m?_TCC1|✅ proved - incomplete|shostak|0.055|
|equiv_trans|✅ proved - incomplete|shostak|0.355|
|equiv_1norm_imp_equiv|✅ proved - incomplete|shostak|0.398|
|norm1_div_TCC1|✅ proved - incomplete|shostak|0.050|
|norm1_div_TCC2|✅ proved - incomplete|shostak|0.070|
|norm1_div_TCC3|✅ proved - incomplete|shostak|0.070|
|norm1_div_TCC4|✅ proved - incomplete|shostak|0.110|
|norm1_div|✅ proved - incomplete|shostak|0.252|
|equiv_unit_imp_equiv_TCC1|✅ proved - incomplete|shostak|0.090|
|equiv_unit_imp_equiv|✅ proved - incomplete|shostak|0.551|
|standard_norm_TCC1|✅ proved - incomplete|shostak|0.082|
|standard_norm_TCC2|✅ proved - incomplete|shostak|0.050|
|standard_norm_TCC3|✅ proved - incomplete|shostak|0.120|
|standard_norm_TCC4|✅ proved - incomplete|shostak|0.070|
|standard_norm_TCC5|✅ proved - incomplete|shostak|0.064|
|standard_norm|✅ proved - incomplete|shostak|0.869|
|max_e_exists_TCC1|✅ proved - incomplete|shostak|0.050|
|max_e_exists_TCC2|✅ proved - incomplete|shostak|0.100|
|max_e_exists|✅ proved - incomplete|shostak|0.316|
|max_e_TCC1|✅ proved - incomplete|shostak|0.060|
|max_e_TCC2|✅ proved - incomplete|shostak|0.109|
|max_e_TCC3|✅ proved - incomplete|shostak|0.200|
|standard_norm_ineq|✅ proved - incomplete|shostak|1.030|
|one_norm_sum|✅ proved - incomplete|shostak|1.192|
|standard_max_e_one_norm_TCC1|✅ proved - incomplete|shostak|0.080|
|standard_max_e_one_norm_TCC2|✅ proved - incomplete|shostak|0.050|
|standard_max_e_one_norm_TCC3|✅ proved - incomplete|shostak|0.125|
|standard_max_e_one_norm|✅ proved - incomplete|shostak|0.250|
|norm_to_max_e_one_norm|✅ proved - incomplete|shostak|0.161|
|unit_sphere_norm_1_closed_bounded|✅ proved - incomplete|shostak|0.431|
|norm_achieve_max_usn1_TCC1|✅ proved - incomplete|shostak|0.130|
|norm_achieve_max_usn1|✅ proved - incomplete|shostak|0.613|
|norm_achieve_min_usn1_TCC1|✅ proved - incomplete|shostak|0.130|
|norm_achieve_min_usn1|✅ proved - incomplete|shostak|0.614|
|equiv_norm|✅ proved - incomplete|shostak|0.317|

## `norms_equiv_general`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|equiv_norm_m|✅ proved - incomplete|shostak|0.060|

## `vector_sequences`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|convergence?_TCC1|✅ proved - incomplete|shostak|0.110|
|convergence_equiv_m|✅ proved - incomplete|shostak|0.263|
|convergence_equiv|✅ proved - incomplete|shostak|0.052|
|convergence?_TCC2|✅ proved - incomplete|shostak|0.110|
|convergence_zero?_TCC1|✅ proved - incomplete|shostak|0.248|
|convergence_unique_vec|✅ proved - incomplete|shostak|0.730|
|test_conv_TCC1|✅ proved - incomplete|shostak|0.080|
|test_conv|✅ proved - incomplete|shostak|0.957|
|convergence_unique_vec_seq|✅ proved - incomplete|shostak|0.100|
|unbounded?_TCC1|✅ proved - incomplete|shostak|0.090|
|unbounded_equiv|✅ proved - incomplete|shostak|0.219|
|unbounded?_TCC2|✅ proved - incomplete|shostak|0.060|
|nth_N_TCC1|✅ proved - incomplete|shostak|0.080|
|nth_N_TCC2|✅ proved - complete|shostak|0.040|
|nth_N|✅ proved - incomplete|shostak|0.780|
|converge_nth_TCC1|✅ proved - incomplete|shostak|0.070|
|converge_nth_TCC2|✅ proved - complete|shostak|0.040|
|converge_nth|✅ proved - incomplete|shostak|0.000|

## `closed_bounded_domain`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|closed_equiv|✅ proved - incomplete|shostak|0.362|
|closed_equiv1|✅ proved - incomplete|shostak|0.070|
|bounded_domain?_TCC1|✅ proved - incomplete|shostak|0.080|
|bounded_equiv|✅ proved - incomplete|shostak|0.223|
|bounded_equiv1|✅ proved - incomplete|shostak|0.060|
|open_neigh_domain?_TCC1|✅ proved - incomplete|shostak|0.118|

## `continuity_multivar`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|contp?_TCC1|✅ proved - incomplete|shostak|0.290|
|cont?_TCC1|✅ proved - incomplete|shostak|0.140|
|cont_pos_neigh_TCC1|✅ proved - incomplete|shostak|0.100|
|cont_pos_neigh|✅ proved - incomplete|shostak|1.140|
|cont_neg_neigh_TCC1|✅ proved - incomplete|shostak|0.092|
|cont_neg_neigh|✅ proved - incomplete|shostak|0.320|
|contp?_TCC2|✅ proved - incomplete|shostak|0.361|
|cont_inner_prod|✅ proved - incomplete|shostak|1.167|
|contp_norm_v2r|✅ proved - incomplete|shostak|0.332|
|contp_norms_v2v|✅ proved - incomplete|shostak|0.637|
|contp_norm_v2v|✅ proved - incomplete|shostak|0.381|
|contD_norm_v2r|✅ proved - incomplete|shostak|0.788|
|contD_norms_v2v|✅ proved - incomplete|shostak|0.155|
|contD_norm_v2v|✅ proved - incomplete|shostak|0.152|
|norm_cont_v2v_TCC1|✅ proved - incomplete|shostak|0.080|
|norm_cont_v2v|✅ proved - incomplete|shostak|0.156|
|cont_sum|✅ proved - incomplete|shostak|0.369|
|cont_const|✅ proved - incomplete|shostak|0.569|
|cont_lift_TCC1|✅ proved - incomplete|shostak|0.050|
|cont_lift_TCC2|✅ proved - incomplete|shostak|0.050|
|cont_lift_TCC3|✅ proved - incomplete|shostak|0.060|
|cont_lift|✅ proved - incomplete|shostak|1.461|

## `sequential_criterian`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sequential_criterian1|✅ proved - incomplete|shostak|0.217|
|sequentialcriterian2|✅ proved - incomplete|shostak|0.083|

## `bolzano_weierstrass`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|bolzano_weier_m_TCC1|✅ proved - incomplete|shostak|0.090|
|bolzano_weier_m|✅ proved - incomplete|shostak|0.315|
|bolzano_weier_TCC1|✅ proved - incomplete|shostak|0.090|
|bolzano_weier|✅ proved - incomplete|shostak|0.069|
|bolzano_weier_le_m|✅ proved - incomplete|shostak|0.289|
|bolzano_weier_le|✅ proved - incomplete|shostak|0.069|

## `extreme_value_theorem`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|extreme_value|✅ proved - incomplete|shostak|0.372|

## `unconstrained_local_extrema`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|is_loc_minimizer?_TCC1|✅ proved - incomplete|shostak|0.100|
|loc_minimizer_equiv|✅ proved - incomplete|shostak|0.333|
|loc_min_equiv|✅ proved - incomplete|shostak|0.348|
|loc_maximizer_equiv|✅ proved - incomplete|shostak|0.270|
|loc_max_equiv|✅ proved - incomplete|shostak|0.334|
|zero_loc_5_TCC1|✅ proved - incomplete|shostak|0.050|
|zero_loc_5_TCC2|✅ proved - complete|shostak|0.040|
|zero_loc_5_TCC3|✅ proved - complete|shostak|0.050|
|zero_loc_5|✅ proved - incomplete|shostak|0.060|

## `fundamentals_constrained_optimization`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|nth_TCC1|✅ proved - incomplete|shostak|0.074|
|car_TCC1|✅ proved - incomplete|shostak|0.050|
|car_v_TCC1|✅ proved - incomplete|shostak|0.050|
|cdr_TCC1|✅ proved - complete|shostak|0.040|
|cdr_TCC2|✅ proved - incomplete|shostak|0.120|
|append_TCC1|✅ proved - incomplete|shostak|0.236|
|constraint2vector_TCC1|✅ proved - complete|shostak|0.060|
|constraint2vector_TCC2|✅ proved - complete|shostak|0.050|
|constraint2vector_TCC3|✅ proved - complete|shostak|0.060|
|constraint2vector_TCC4|✅ proved - complete|shostak|0.050|
|constraint2vector_TCC5|✅ proved - incomplete|shostak|0.120|
|cons_f_TCC1|✅ proved - incomplete|shostak|0.103|
|listfuns2fun_TCC1|✅ proved - incomplete|shostak|0.060|
|listfuns2fun_TCC2|✅ proved - incomplete|shostak|0.080|
|listfuns_length|✅ proved - incomplete|shostak|0.131|
|filter_fun_TCC1|✅ proved - incomplete|shostak|0.290|
|filter_fun_filter|✅ proved - incomplete|shostak|0.000|
|filter_nth|✅ proved - incomplete|shostak|0.676|
|filter_2nth|✅ proved - incomplete|shostak|0.080|
|filter_nth2|✅ proved - incomplete|shostak|0.714|
|filter_2nth2|✅ proved - incomplete|shostak|0.081|
|c2v_nth_TCC1|✅ proved - incomplete|shostak|0.060|
|c2v_nth|✅ proved - incomplete|shostak|0.243|
|listfuns2fun_TCC3|✅ proved - incomplete|shostak|0.222|
|sat_eq_1|✅ proved - incomplete|shostak|0.345|
|sat_ineq_1_TCC1|✅ proved - incomplete|shostak|0.070|
|sat_ineq_1|✅ proved - incomplete|shostak|0.944|
|trivial_eq|✅ proved - incomplete|shostak|0.050|
|x_square_TCC1|✅ proved - complete|shostak|0.043|
|x_square_TCC2|✅ proved - incomplete|shostak|0.080|
|x_square_TCC3|✅ proved - incomplete|shostak|0.080|
|x_square_TCC4|✅ proved - incomplete|shostak|0.158|
|x_square_TCC5|✅ proved - incomplete|shostak|0.374|
|x_square_TCC6|✅ proved - incomplete|shostak|0.120|
|x_square|✅ proved - incomplete|shostak|0.563|
|is_loc_minimizer?_TCC1|✅ proved - incomplete|shostak|0.110|
|loc_minimizer_equiv|✅ proved - incomplete|shostak|0.320|
|loc_min_equiv|✅ proved - incomplete|shostak|0.289|
|loc_maximizer_equiv|✅ proved - incomplete|shostak|0.289|
|loc_max_equiv|✅ proved - incomplete|shostak|0.332|
|isolated_implies_strict|✅ proved - incomplete|shostak|0.353|
|active_ineq?_TCC1|✅ proved - incomplete|shostak|0.090|
|lst2real_TCC1|✅ proved - incomplete|shostak|0.063|
|lst2real|✅ proved - incomplete|shostak|0.294|
|countzeroidx_TCC1|✅ proved - incomplete|shostak|0.051|
|countzeroidx_TCC2|✅ proved - incomplete|shostak|0.050|
|countzeroidx_TCC3|✅ proved - incomplete|shostak|0.050|
|countzeroidx_TCC4|✅ proved - incomplete|shostak|0.130|
|countzeroidx_TCC5|✅ proved - incomplete|shostak|0.072|
|ex_idx|✅ proved - incomplete|shostak|0.060|

## `topology_Rn`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|OpenD?_TCC1|✅ proved - incomplete|shostak|0.100|
|OpenD_equiv|✅ proved - incomplete|shostak|0.341|
|Union_open|✅ proved - incomplete|shostak|0.111|
|convex_domain?_TCC1|✅ proved - incomplete|shostak|0.110|
|convex_implies_pc|✅ proved - incomplete|shostak|3.465|

## `derivative_domain_multi`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|deriv_domain?_TCC1|✅ proved - incomplete|shostak|0.120|
|deriv_domain?_TCC2|✅ proved - incomplete|shostak|0.120|
|deriv_domain_direction?_TCC1|✅ proved - incomplete|shostak|0.130|
|deriv_domain_partial?_TCC1|✅ proved - incomplete|shostak|0.080|
|dd_direction_partial|✅ proved - incomplete|shostak|0.113|
|dd_direction_partial_neg_TCC1|✅ proved - incomplete|shostak|0.080|
|dd_direction_partial_neg|✅ proved - incomplete|shostak|0.000|
|e_direction_e_partial|✅ proved - incomplete|shostak|0.140|
|deriv_domain_both_direction?_TCC1|✅ proved - incomplete|shostak|0.140|
|domain_connect?_TCC1|✅ proved - incomplete|shostak|0.129|
|open_implies_e_direction|✅ proved - incomplete|shostak|0.351|
|open_implies_e_partial|✅ proved - incomplete|shostak|0.050|
|d_con_ends|✅ proved - incomplete|shostak|0.432|
|dd_norm_equiv|✅ proved - incomplete|shostak|0.281|
|dd_directionv_implies_dd|✅ proved - incomplete|shostak|0.890|
|dd_all_direction_implies_dd_all_partial|✅ proved - incomplete|shostak|0.110|
|dd_direction_implies_dd_directionv|✅ proved - incomplete|shostak|0.050|
|dd_direction_implies_dd|✅ proved - incomplete|shostak|0.142|
|dd_all_partial_implies_dd|✅ proved - incomplete|shostak|1.319|
|dd_direction_implies_dd_e_direction|✅ proved - incomplete|shostak|0.100|
|dd_partial_implies_dd_e_direction|✅ proved - incomplete|shostak|0.090|
|dd_direction_implies_dd_e_partial|✅ proved - incomplete|shostak|0.052|
|dd_vdirection_implies_dd_partial|✅ proved - incomplete|shostak|0.100|
|dd_edirection_implies_dd_partial|✅ proved - incomplete|shostak|0.110|
|dd_epartial_implies_dd_partial|✅ proved - incomplete|shostak|0.100|
|dd_direction_implies_dd_partial|✅ proved - incomplete|shostak|0.101|
|dd_e_direction_implies_dd|✅ proved - incomplete|shostak|0.170|
|dd_partial_implies_dd|✅ proved - incomplete|shostak|0.706|
|dd_e_partial_implies_dd|✅ proved - incomplete|shostak|0.140|
|dd_partial_implies_scal_partial_TCC1|✅ proved - incomplete|shostak|0.110|
|dd_partial_implies_scal_partial|✅ proved - incomplete|shostak|1.388|
|dd_scal_partial_implies_partial_TCC1|✅ proved - incomplete|shostak|0.070|
|dd_scal_partial_implies_partial|✅ proved - incomplete|shostak|0.573|
|dd_zero|✅ proved - incomplete|shostak|0.150|
|dd_zero_partial|✅ proved - incomplete|shostak|0.160|
|domain_direction_scal_TCC1|✅ proved - incomplete|shostak|0.080|
|domain_direction_scal|✅ proved - incomplete|shostak|0.905|
|domain_direction_scal_real_TCC1|✅ proved - incomplete|shostak|0.120|
|domain_direction_scal_real|✅ proved - incomplete|shostak|0.220|
|del_neigh_all_mult?_TCC1|✅ proved - incomplete|shostak|0.110|
|del_neigh_all_mult?_TCC2|✅ proved - incomplete|shostak|0.111|
|del_neigh_norm_equiv|✅ proved - incomplete|shostak|0.240|
|del_neigh_all_lem_mutl|✅ proved - incomplete|shostak|1.276|
|domain_partial_p?_TCC1|✅ proved - incomplete|shostak|0.149|

## `differentiable_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|NQ_TCC1|✅ proved - incomplete|shostak|0.250|
|NQ_TCC2|✅ proved - incomplete|shostak|0.080|
|NQ_TCC3|✅ proved - incomplete|shostak|0.075|
|NQ_TCC4|✅ proved - incomplete|shostak|0.110|
|der_f_TCC1|✅ proved - incomplete|shostak|0.130|
|der_f_TCC2|✅ proved - incomplete|shostak|0.050|
|der_f_TCC3|✅ proved - incomplete|shostak|0.070|

## `init_partial_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|D_down_TCC1|✅ proved - incomplete|shostak|0.120|
|D_down_der_domain|✅ proved - incomplete|shostak|0.810|
|D_down_domain|✅ proved - incomplete|shostak|0.139|
|D_down_der_domain_unit|✅ proved - incomplete|shostak|1.971|
|D_down_domain_unit|✅ proved - incomplete|shostak|0.056|
|D_down_domain_unitc|✅ proved - incomplete|shostak|4.234|
|D_down_not_one|✅ proved - incomplete|shostak|0.000|
|D_down_not_one_unit|✅ proved - incomplete|shostak|0.417|
|D_down_not_one_unitc|✅ proved - incomplete|shostak|0.460|
|D_down_partial|✅ proved - incomplete|shostak|0.847|
|D_down_all_partial|✅ proved - incomplete|shostak|0.140|
|D_down_partial_not_one|✅ proved - incomplete|shostak|0.377|
|D_down_direction_not_one|✅ proved - incomplete|shostak|0.279|
|D_down_direction_deriv_domain|✅ proved - incomplete|shostak|0.170|
|init_partial?_TCC1|✅ proved - incomplete|shostak|0.122|
|init_partial?_TCC2|✅ proved - incomplete|shostak|0.050|
|init_partial?_TCC3|✅ proved - incomplete|shostak|0.040|
|diff_imp_init_partial_TCC1|✅ proved - incomplete|shostak|0.050|
|diff_imp_init_partial_TCC2|✅ proved - incomplete|shostak|0.123|
|diff_imp_init_partial|✅ proved - incomplete|shostak|3.616|
|diff_imp_init_partial1_TCC1|✅ proved - incomplete|shostak|0.140|
|diff_imp_init_partial1_TCC2|✅ proved - incomplete|shostak|0.147|
|diff_imp_init_partial1|✅ proved - incomplete|shostak|2.371|
|diff_imp_init_partial2_TCC1|✅ proved - incomplete|shostak|0.061|
|diff_imp_init_partial2|✅ proved - incomplete|shostak|2.353|
|init_partial_TCC1|✅ proved - incomplete|shostak|0.120|
|init_partial_zero_derivable_TCC1|✅ proved - incomplete|shostak|0.043|
|init_partial_zero_derivable|✅ proved - incomplete|shostak|0.371|
|init_partial_zero_TCC1|✅ proved - incomplete|shostak|0.050|
|init_partial_zero|✅ proved - incomplete|shostak|0.000|
|frech_diff_imp_init_partial_TCC1|✅ proved - incomplete|shostak|0.077|
|frech_diff_imp_init_partial|✅ proved - incomplete|shostak|0.080|
|init_partial_scal_TCC1|✅ proved - incomplete|shostak|0.356|
|init_partial_scal_TCC2|✅ proved - incomplete|shostak|0.063|
|init_partial_scal|✅ proved - incomplete|shostak|1.862|
|der_f_is_init_partial_TCC1|✅ proved - incomplete|shostak|0.070|
|der_f_is_init_partial_TCC2|✅ proved - incomplete|shostak|0.060|
|der_f_is_init_partial|✅ proved - incomplete|shostak|3.642|
|conv_NQ_is_init_partial_TCC1|✅ proved - incomplete|shostak|0.062|
|conv_NQ_is_init_partial|✅ proved - incomplete|shostak|2.638|
|der_f_is_init_partial1_TCC1|✅ proved - incomplete|shostak|0.050|
|der_f_is_init_partial1_TCC2|✅ proved - incomplete|shostak|0.080|
|der_f_is_init_partial1_TCC3|✅ proved - incomplete|shostak|0.130|
|der_f_is_init_partial1|✅ proved - incomplete|shostak|0.882|
|conv_NQ_is_init_partial1_TCC1|✅ proved - incomplete|shostak|0.070|
|conv_NQ_is_init_partial1_TCC2|✅ proved - incomplete|shostak|0.439|
|conv_NQ_is_init_partial1|✅ proved - incomplete|shostak|0.819|
|conv_NQ_unique|✅ proved - incomplete|shostak|0.141|
|der_f_unique_TCC1|✅ proved - incomplete|shostak|0.050|
|der_f_unique|✅ proved - incomplete|shostak|0.327|
|init_partial_scalar_TCC1|✅ proved - incomplete|shostak|0.080|
|init_partial_scalar_TCC2|✅ proved - incomplete|shostak|0.351|
|init_partial_scalar_TCC3|✅ proved - incomplete|shostak|0.063|
|init_partial_scalar|✅ proved - incomplete|shostak|0.311|
|init_partial_additive_TCC1|✅ proved - incomplete|shostak|0.120|
|init_partial_additive_TCC2|✅ proved - incomplete|shostak|0.082|
|init_partial_additive_TCC3|✅ proved - incomplete|shostak|0.070|
|init_partial_additive_TCC4|✅ proved - incomplete|shostak|0.122|
|init_partial_additive_TCC5|✅ proved - incomplete|shostak|0.070|
|init_partial_additive_TCC6|✅ proved - incomplete|shostak|0.070|
|init_partial_additive|✅ proved - incomplete|shostak|0.412|
|init_partial_linear_TCC1|✅ proved - incomplete|shostak|0.080|
|init_partial_linear_TCC2|✅ proved - incomplete|shostak|0.082|
|init_partial_linear_TCC3|✅ proved - incomplete|shostak|0.080|
|init_partial_linear_TCC4|✅ proved - incomplete|shostak|0.102|
|init_partial_linear_TCC5|✅ proved - incomplete|shostak|0.111|
|init_partial_linear|✅ proved - incomplete|shostak|0.633|

## `directional_deriv_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|D_downd_der_domain|✅ proved - incomplete|shostak|1.019|
|D_downd_domain|✅ proved - incomplete|shostak|0.140|
|D_downd_der_domain_unit|✅ proved - incomplete|shostak|2.174|
|D_downd_domain_unit|✅ proved - incomplete|shostak|0.080|
|D_downd_domain_unitc|✅ proved - incomplete|shostak|0.000|
|D_downd_not_one|✅ proved - incomplete|shostak|0.688|
|D_downd_not_one_unit|✅ proved - incomplete|shostak|0.428|
|D_downd_not_one_unitc|✅ proved - incomplete|shostak|0.469|
|D_downd_direction_not_one|✅ proved - incomplete|shostak|0.311|
|D_downd_direction_deriv_domain|✅ proved - incomplete|shostak|0.046|
|directional_deriv?_TCC1|✅ proved - incomplete|shostak|0.080|
|directional_deriv?_TCC2|✅ proved - incomplete|shostak|0.090|
|directional_deriv?_TCC3|✅ proved - incomplete|shostak|0.691|
|directional_deriv?_TCC4|✅ proved - incomplete|shostak|1.090|
|diff_imp_direction_TCC1|✅ proved - incomplete|shostak|0.050|
|diff_imp_direction_TCC2|✅ proved - incomplete|shostak|0.459|
|diff_imp_direction|✅ proved - incomplete|shostak|4.139|
|diff_imp_direction1_TCC1|✅ proved - incomplete|shostak|0.140|
|diff_imp_direction1|✅ proved - incomplete|shostak|2.343|
|directional_deriv_TCC1|✅ proved - incomplete|shostak|0.150|
|directional_deriv_TCC2|✅ proved - incomplete|shostak|0.680|
|direction_zero_derivable_TCC1|✅ proved - incomplete|shostak|0.040|
|direction_zero_derivable|✅ proved - incomplete|shostak|0.380|
|direction_zero_TCC1|✅ proved - incomplete|shostak|0.050|
|direction_zero|✅ proved - incomplete|shostak|1.150|
|diff_imp_direction2_TCC1|✅ proved - incomplete|shostak|0.150|
|diff_imp_direction2|✅ proved - incomplete|shostak|0.070|
|directional_deriv_scal_TCC1|✅ proved - incomplete|shostak|0.246|
|directional_deriv_scal_TCC2|✅ proved - incomplete|shostak|0.060|
|directional_deriv_scal_TCC3|✅ proved - incomplete|shostak|0.060|
|directional_deriv_scal|✅ proved - incomplete|shostak|1.995|
|der_f_is_direction_TCC1|✅ proved - incomplete|shostak|0.150|
|der_f_is_direction_TCC2|✅ proved - incomplete|shostak|0.066|
|der_f_is_direction|✅ proved - incomplete|shostak|3.435|
|der_f_is_direction1_TCC1|✅ proved - incomplete|shostak|0.052|
|der_f_is_direction1_TCC2|✅ proved - incomplete|shostak|0.390|
|der_f_is_direction1_TCC3|✅ proved - incomplete|shostak|0.075|
|der_f_is_direction1|✅ proved - incomplete|shostak|1.132|
|directional_deriv_scalar_TCC1|✅ proved - incomplete|shostak|0.070|
|directional_deriv_scalar_TCC2|✅ proved - incomplete|shostak|0.070|
|directional_deriv_scalar_TCC3|✅ proved - incomplete|shostak|0.070|
|directional_deriv_scalar_TCC4|✅ proved - incomplete|shostak|4.684|
|directional_deriv_scalar_TCC5|✅ proved - incomplete|shostak|0.096|
|directional_deriv_scalar|✅ proved - incomplete|shostak|0.351|
|directional_deriv_additive_TCC1|✅ proved - incomplete|shostak|0.120|
|directional_deriv_additive_TCC2|✅ proved - incomplete|shostak|0.214|
|directional_deriv_additive_TCC3|✅ proved - incomplete|shostak|0.080|
|directional_deriv_additive_TCC4|✅ proved - incomplete|shostak|0.111|
|directional_deriv_additive_TCC5|✅ proved - incomplete|shostak|0.102|
|directional_deriv_additive_TCC6|✅ proved - incomplete|shostak|0.113|
|directional_deriv_additive|✅ proved - incomplete|shostak|0.344|
|directional_deriv_linear_TCC1|✅ proved - incomplete|shostak|0.931|
|directional_deriv_linear_TCC2|✅ proved - incomplete|shostak|0.182|
|directional_deriv_linear_TCC3|✅ proved - incomplete|shostak|0.799|
|directional_deriv_linear_TCC4|✅ proved - incomplete|shostak|0.090|
|directional_deriv_linear_TCC5|✅ proved - incomplete|shostak|0.082|
|directional_deriv_linear_TCC6|✅ proved - incomplete|shostak|0.642|
|directional_deriv_linear_TCC7|✅ proved - incomplete|shostak|0.102|
|directional_deriv_linear|✅ proved - incomplete|shostak|0.000|
|directional_deriv_unique|✅ proved - incomplete|shostak|0.060|
|init_par_dir_derivable_TCC1|✅ proved - incomplete|shostak|0.442|
|init_par_dir_derivable|✅ proved - incomplete|shostak|0.523|
|init_par_dir_deriv_TCC1|✅ proved - incomplete|shostak|0.060|
|init_par_dir_deriv|✅ proved - incomplete|shostak|1.258|

## `partial_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|partial_TCC1|✅ proved - incomplete|shostak|0.822|
|F_partials_TCC1|✅ proved - incomplete|shostak|0.040|
|F_partials_TCC2|✅ proved - incomplete|shostak|0.277|
|F_partials_TCC3|✅ proved - incomplete|shostak|0.070|
|F_partials_TCC4|✅ proved - incomplete|shostak|0.098|
|F_partials_e_TCC1|✅ proved - incomplete|shostak|0.421|
|F_partials_e_TCC2|✅ proved - incomplete|shostak|0.143|
|F_partials_e|✅ proved - incomplete|shostak|0.248|
|directional_deriv_pre1_TCC1|✅ proved - incomplete|shostak|0.060|
|directional_deriv_pre1_TCC2|✅ proved - incomplete|shostak|0.238|
|directional_deriv_pre1_TCC3|✅ proved - incomplete|shostak|0.370|
|directional_deriv_pre1_TCC4|✅ proved - incomplete|shostak|0.230|
|directional_deriv_pre1_TCC5|✅ proved - incomplete|shostak|0.373|
|directional_deriv_pre1_TCC6|✅ proved - incomplete|shostak|0.168|
|directional_deriv_pre1_TCC7|✅ proved - incomplete|shostak|0.050|
|directional_deriv_pre1|✅ proved - incomplete|shostak|2.821|
|directional_deriv_sum_partials_TCC1|✅ proved - incomplete|shostak|0.079|
|directional_deriv_sum_partials_TCC2|✅ proved - incomplete|shostak|0.130|
|directional_deriv_sum_partials_TCC3|✅ proved - incomplete|shostak|0.055|
|directional_deriv_sum_partials|✅ proved - incomplete|shostak|0.130|

## `gradient_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|gradientp?_TCC1|✅ proved - incomplete|shostak|0.235|
|diffp_imp_gradp_TCC1|✅ proved - incomplete|shostak|0.050|
|diffp_imp_gradp|✅ proved - incomplete|shostak|0.118|
|diffD_imp_gradD_TCC1|✅ proved - incomplete|shostak|0.040|
|diffD_imp_gradD|✅ proved - incomplete|shostak|0.060|
|partials_TCC1|✅ proved - incomplete|shostak|0.202|
|partials_TCC2|✅ proved - complete|shostak|0.050|
|partials_TCC3|✅ proved - incomplete|shostak|0.150|
|partials_TCC4|✅ proved - incomplete|shostak|0.723|
|partials_TCC5|✅ proved - incomplete|shostak|0.182|
|partials_TCC6|✅ proved - incomplete|shostak|0.080|
|partials_TCC7|✅ proved - incomplete|shostak|0.611|
|partials_TCC8|✅ proved - incomplete|shostak|0.736|
|partials_TCC9|✅ proved - incomplete|shostak|0.190|
|partials_TCC10|✅ proved - incomplete|shostak|0.108|
|partials_TCC11|✅ proved - incomplete|shostak|0.634|
|partials_TCC12|✅ proved - incomplete|shostak|0.361|
|partials_TCC13|✅ proved - incomplete|shostak|0.191|
|partials_TCC14|✅ proved - incomplete|shostak|0.382|
|partials_length|✅ proved - incomplete|shostak|0.533|
|gradient_TCC1|✅ proved - incomplete|shostak|0.350|
|gradient_TCC2|✅ proved - incomplete|shostak|0.351|
|gradient_TCC3|✅ proved - incomplete|shostak|0.102|
|grad_nth_TCC1|✅ proved - incomplete|shostak|0.549|
|grad_nth_TCC2|✅ proved - incomplete|shostak|0.572|
|grad_nth|✅ proved - incomplete|shostak|0.100|
|directional_deriv_pre2_TCC1|✅ proved - incomplete|shostak|0.693|
|directional_deriv_pre2_TCC2|✅ proved - incomplete|shostak|0.351|
|directional_deriv_pre2_TCC3|✅ proved - incomplete|shostak|0.740|
|directional_deriv_pre2|✅ proved - incomplete|shostak|0.681|
|directional_deriv_is_grad_TCC1|✅ proved - incomplete|shostak|0.050|
|directional_deriv_is_grad_TCC2|✅ proved - incomplete|shostak|0.060|
|directional_deriv_is_grad_TCC3|✅ proved - incomplete|shostak|0.054|
|directional_deriv_is_grad_TCC4|✅ proved - incomplete|shostak|0.378|
|directional_deriv_is_grad_TCC5|✅ proved - incomplete|shostak|0.161|
|directional_deriv_is_grad|✅ proved - incomplete|shostak|0.310|
|directional_deriv_is_init_partial_TCC1|✅ proved - incomplete|shostak|0.050|
|directional_deriv_is_init_partial_TCC2|✅ proved - incomplete|shostak|0.441|
|directional_deriv_is_init_partial_TCC3|✅ proved - incomplete|shostak|0.062|
|directional_deriv_is_init_partial_TCC4|✅ proved - incomplete|shostak|0.080|
|directional_deriv_is_init_partial_TCC5|✅ proved - incomplete|shostak|0.431|
|directional_deriv_is_init_partial|✅ proved - incomplete|shostak|0.191|
|directional_deriv_is_e_partial_TCC1|✅ proved - incomplete|shostak|0.102|
|directional_deriv_is_e_partial|✅ proved - incomplete|shostak|0.342|
|der_f_gradient_dot_e|✅ proved - incomplete|shostak|0.110|
|der_f_is_grad_e|✅ proved - incomplete|shostak|0.191|
|der_f_gradient_dot_TCC1|✅ proved - incomplete|shostak|0.050|
|der_f_gradient_dot|✅ proved - incomplete|shostak|0.091|
|der_f_is_grad_TCC1|✅ proved - incomplete|shostak|0.050|
|der_f_is_grad|✅ proved - incomplete|shostak|0.621|
|grad_append|✅ proved - incomplete|shostak|0.620|
|grad_filter|✅ proved - incomplete|shostak|0.189|
|grad_active|✅ proved - incomplete|shostak|0.263|
|active_grad|✅ proved - incomplete|shostak|0.200|

## `jacobian_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|jacobian_car|✅ proved - incomplete|shostak|0.130|
|jacobian_cdr_TCC1|✅ proved - incomplete|shostak|0.428|
|jacobian_cdr|✅ proved - incomplete|shostak|0.179|
|jac_2_grad|✅ proved - incomplete|shostak|0.090|
|jacobian_TCC1|✅ proved - incomplete|shostak|0.091|
|jacobian_TCC2|✅ proved - incomplete|shostak|0.218|
|jacobian_TCC3|✅ proved - incomplete|shostak|0.060|
|jacobian_TCC4|✅ proved - incomplete|shostak|0.387|
|jacobian_TCC5|✅ proved - incomplete|shostak|0.082|
|jacobian_TCC6|✅ proved - incomplete|shostak|0.200|
|jacobian_TCC7|✅ proved - incomplete|shostak|0.232|

## `continuous_derivatives`
No formula declaration found.
## `Taylor_Thrm_Multi`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|g_thm_TCC1|✅ proved - incomplete|shostak|0.410|
|g_thm_TCC2|✅ proved - incomplete|shostak|0.100|
|g_thm_TCC3|✅ proved - incomplete|shostak|1.191|
|g_thm_TCC4|✅ proved - incomplete|shostak|0.748|
|g_thm_TCC5|✅ proved - incomplete|shostak|0.769|
|g_thm|✅ proved - incomplete|shostak|7.233|
|g_thm_connect_TCC1|✅ proved - incomplete|shostak|0.090|
|g_thm_connect_TCC2|✅ proved - incomplete|shostak|1.229|
|g_thm_connect_TCC3|✅ proved - incomplete|shostak|2.216|
|g_thm_connect_TCC4|✅ proved - incomplete|shostak|0.782|
|g_thm_connect|✅ proved - incomplete|shostak|5.137|
|g_thm_connect_unit_TCC1|✅ proved - incomplete|shostak|0.111|
|g_thm_connect_unit_TCC2|✅ proved - incomplete|shostak|0.100|
|g_thm_connect_unit|✅ proved - incomplete|shostak|28.309|
|g_thm_dif_TCC1|✅ proved - incomplete|shostak|0.040|
|g_thm_dif_TCC2|✅ proved - incomplete|shostak|1.425|
|g_thm_dif_TCC3|✅ proved - incomplete|shostak|0.070|
|g_thm_dif|✅ proved - incomplete|shostak|3.522|
|g_thm_dif_connect_TCC1|✅ proved - incomplete|shostak|0.070|
|g_thm_dif_connect_TCC2|✅ proved - incomplete|shostak|0.288|
|g_thm_dif_connect_TCC3|✅ proved - incomplete|shostak|0.070|
|g_thm_dif_connect|✅ proved - incomplete|shostak|0.000|
|g_thm_dif_connect_unit_TCC1|✅ proved - incomplete|shostak|0.070|
|g_thm_dif_connect_unit|✅ proved - incomplete|shostak|8.498|
|g_thm_grad_TCC1|✅ proved - incomplete|shostak|0.160|
|g_thm_grad_TCC2|✅ proved - incomplete|shostak|0.061|
|g_thm_grad_TCC3|✅ proved - incomplete|shostak|0.060|
|g_thm_grad|✅ proved - incomplete|shostak|9.182|
|g_thm_grad_connect_TCC1|✅ proved - incomplete|shostak|0.159|
|g_thm_grad_connect_TCC2|✅ proved - incomplete|shostak|0.060|
|g_thm_grad_connect_TCC3|✅ proved - incomplete|shostak|0.070|
|g_thm_grad_connect|✅ proved - incomplete|shostak|0.856|
|g_thm_grad_connect_unit|✅ proved - incomplete|shostak|0.655|
|Taylors1_TCC1|✅ proved - incomplete|shostak|0.160|
|Taylors1_TCC2|✅ proved - incomplete|shostak|0.060|
|Taylors1_TCC3|✅ proved - incomplete|shostak|0.107|
|Taylors1|✅ proved - incomplete|shostak|3.898|
|Taylors_thm|✅ proved - incomplete|shostak|0.000|
|Taylors_Thm|✅ proved - incomplete|shostak|3.902|

## `unconstrained_first_order_optimality`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|first_order_nec_TCC1|✅ proved - incomplete|shostak|0.050|
|first_order_nec_TCC2|✅ proved - incomplete|shostak|0.090|
|first_order_nec_TCC3|✅ proved - incomplete|shostak|0.050|
|first_order_nec|✅ proved - incomplete|shostak|25.102|

## `linear_programming`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|lp_1_TCC1|✅ proved - complete|shostak|0.050|
|lp_1_TCC2|✅ proved - incomplete|shostak|0.400|
|lp_1_TCC3|✅ proved - complete|shostak|0.040|
|lp_1|✅ proved - incomplete|shostak|0.854|

## `exist_solution_lp`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|norm_program?_TCC1|✅ proved - incomplete|shostak|0.100|
|convergence_in_solution_set_TCC1|✅ proved - incomplete|shostak|0.116|
|convergence_in_solution_set_TCC2|✅ proved - incomplete|shostak|0.130|
|convergence_in_solution_set|✅ proved - incomplete|shostak|2.493|
|existance_np_1|✅ proved - incomplete|shostak|2.246|

## `Cauchy_seq`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy?_TCC1|✅ proved - incomplete|shostak|0.220|
|cauchy_equiv|✅ proved - incomplete|shostak|1.191|
|cauchy_V_Vn|✅ proved - incomplete|shostak|0.356|
|cauchy_convergence|✅ proved - incomplete|shostak|0.184|

## `Vector_VectorN`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Vn_2_V_TCC1|✅ proved - incomplete|shostak|0.060|
|V_2_Vn_TCC1|✅ proved - complete|shostak|0.040|
|V_2_Vn_TCC2|✅ proved - incomplete|shostak|0.094|
|V_2_Vn_TCC3|✅ proved - complete|shostak|0.050|
|V_2_Vn_TCC4|✅ proved - complete|shostak|0.070|
|V_2_Vn_TCC5|✅ proved - complete|shostak|0.040|
|V_2_Vn_TCC6|✅ proved - complete|shostak|0.040|
|V_2_Vn_TCC7|✅ proved - incomplete|shostak|0.256|
|Vn_V|✅ proved - incomplete|shostak|0.497|
|V_Vn|✅ proved - incomplete|shostak|0.566|
|Vn_V_seq|✅ proved - incomplete|shostak|0.100|
|V_Vn_seq|✅ proved - incomplete|shostak|0.090|
|d2_sigma_TCC1|✅ proved - complete|shostak|0.050|
|d2_sigma_TCC2|✅ proved - incomplete|shostak|0.464|
|d2_sigma|✅ proved - incomplete|shostak|1.674|
|norm2_d2_TCC1|✅ proved - incomplete|shostak|0.392|
|norm2_d2|✅ proved - incomplete|shostak|3.109|
|convergence_V_Vn|✅ proved - incomplete|shostak|0.410|

## `Lipschitz_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|LipD?_TCC1|✅ proved - incomplete|shostak|0.125|
|LipD?_TCC2|✅ proved - incomplete|shostak|0.140|
|Lip_cont_v2f|✅ proved - incomplete|shostak|0.000|
|Lip_cont_v2v|✅ proved - incomplete|shostak|0.453|
|Lip_norm_v2f|✅ proved - incomplete|shostak|0.490|
|Lip_norm_v2v|✅ proved - incomplete|shostak|0.752|

## `composition_function`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cont_comp|✅ proved - incomplete|shostak|0.340|

## `max_function`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|max_gen_TCC1|✅ proved - complete|shostak|0.120|
|max_TCC1|✅ proved - incomplete|shostak|0.200|
|max_plus_TCC1|✅ proved - incomplete|shostak|0.301|
|max_plus|✅ proved - incomplete|shostak|0.288|
|max_ineq|✅ proved - incomplete|shostak|0.124|
|max_const_TCC1|✅ proved - incomplete|shostak|1.139|
|max_const|✅ proved - incomplete|shostak|0.292|

## `mat_vec_mult`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|MN_full|✅ proved - incomplete|shostak|0.160|
|MN_rc|✅ proved - incomplete|shostak|0.304|
|entry_extensionality|✅ proved - incomplete|shostak|1.744|
|row_extensionality|✅ proved - incomplete|shostak|0.239|
|column_extensionality|✅ proved - incomplete|shostak|0.219|
|cdr_columns|✅ proved - incomplete|shostak|0.367|
|cdr_columns_full|✅ proved - incomplete|shostak|0.220|
|matvec_TCC1|✅ proved - incomplete|shostak|0.086|
|matvec_TCC2|✅ proved - incomplete|shostak|0.110|
|matvec_TCC3|✅ proved - incomplete|shostak|0.110|
|matvec_TCC4|✅ proved - incomplete|shostak|0.236|
|matvec_TCC5|✅ proved - complete|shostak|0.060|
|matvec_TCC6|✅ proved - incomplete|shostak|0.140|
|times_TCC1|✅ proved - incomplete|shostak|0.140|
|matv_test_TCC1|✅ proved - incomplete|shostak|0.260|
|matv_test|✅ proved - incomplete|shostak|0.088|
|matv_nth_TCC1|✅ proved - incomplete|shostak|0.120|
|matv_nth|✅ proved - incomplete|shostak|1.369|
|max_a_TCC1|✅ proved - incomplete|shostak|0.090|
|max_a_TCC2|✅ proved - incomplete|shostak|0.150|
|max_a_TCC3|✅ proved - incomplete|shostak|0.120|
|max_a_TCC4|✅ proved - incomplete|shostak|0.080|
|max_a_TCC5|✅ proved - incomplete|shostak|0.140|
|max_a_TCC6|✅ proved - incomplete|shostak|0.130|
|max_a_max_TCC1|✅ proved - incomplete|shostak|0.095|
|max_a_max_TCC2|✅ proved - incomplete|shostak|0.150|
|max_a_max|✅ proved - incomplete|shostak|0.000|
|max_a_row_TCC1|✅ proved - incomplete|shostak|0.100|
|max_a_row_TCC2|✅ proved - incomplete|shostak|0.050|
|max_a_row|✅ proved - incomplete|shostak|1.209|
|matv_norm_inf_TCC1|✅ proved - incomplete|shostak|0.385|
|matv_norm_inf_TCC2|✅ proved - incomplete|shostak|0.230|
|matv_norm_inf_TCC3|✅ proved - incomplete|shostak|0.110|
|matv_norm_inf_TCC4|✅ proved - incomplete|shostak|0.050|
|matv_norm_inf|✅ proved - incomplete|shostak|0.436|
|vec2mat_TCC1|✅ proved - incomplete|shostak|0.104|
|vec2mat_TCC2|✅ proved - incomplete|shostak|0.050|
|vec2mat_TCC3|✅ proved - incomplete|shostak|0.120|
|vec2mat_TCC4|✅ proved - incomplete|shostak|0.584|
|vec2mat_id|✅ proved - incomplete|shostak|0.206|
|matv_matmat|✅ proved - incomplete|shostak|3.983|
|vec2mat_mult|✅ proved - incomplete|shostak|9.193|
|matv_dist_sum_TCC1|✅ proved - incomplete|shostak|0.085|
|matv_dist_sum|✅ proved - incomplete|shostak|3.119|
|matv_dist_scal_TCC1|✅ proved - incomplete|shostak|0.110|
|matv_dist_scal|✅ proved - incomplete|shostak|0.000|
|matv_dist_sub_TCC1|✅ proved - incomplete|shostak|0.230|
|matv_dist_sub|✅ proved - incomplete|shostak|0.230|
|matv_asso_TCC1|✅ proved - incomplete|shostak|0.170|
|matv_asso_TCC2|✅ proved - incomplete|shostak|0.205|
|matv_asso|✅ proved - incomplete|shostak|0.529|
|matv_add_zero_TCC1|✅ proved - incomplete|shostak|0.260|
|matv_add_zero|✅ proved - incomplete|shostak|2.177|
|matv_zerovec|✅ proved - incomplete|shostak|0.785|

## `convergence_vec2vec`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|nth_TCC1|✅ proved - incomplete|shostak|0.080|
|cdr_TCC1|✅ proved - complete|shostak|0.040|
|cdr_TCC2|✅ proved - incomplete|shostak|0.070|
|cdr_TCC3|✅ proved - incomplete|shostak|0.140|
|NQ_TCC1|✅ proved - incomplete|shostak|0.484|
|NQ_TCC2|✅ proved - incomplete|shostak|0.070|
|NQ_TCC3|✅ proved - incomplete|shostak|0.097|
|NQ_TCC4|✅ proved - incomplete|shostak|0.290|
|NQ_TCC5|✅ proved - incomplete|shostak|0.110|
|NQ_TCC6|✅ proved - incomplete|shostak|0.095|
|diff_nth_cdr_TCC1|✅ proved - incomplete|shostak|0.240|
|diff_nth_cdr|✅ proved - incomplete|shostak|0.250|
|every_mat|✅ proved - incomplete|shostak|0.577|
|pre_der_TCC1|✅ proved - incomplete|shostak|0.190|
|pre_der_TCC2|✅ proved - incomplete|shostak|0.742|
|pre_der_TCC3|✅ proved - incomplete|shostak|0.320|
|pre_der_TCC4|✅ proved - incomplete|shostak|0.187|
|pre_der_TCC5|✅ proved - incomplete|shostak|0.070|
|pre_der_TCC6|✅ proved - incomplete|shostak|0.250|
|pre_der_TCC7|✅ proved - incomplete|shostak|0.240|
|pre_der_TCC8|✅ proved - incomplete|shostak|0.210|
|pre_der_TCC9|✅ proved - incomplete|shostak|0.479|
|pre_der_TCC10|✅ proved - incomplete|shostak|0.360|
|pre_der_TCC11|✅ proved - incomplete|shostak|0.203|
|pre_der_TCC12|✅ proved - incomplete|shostak|0.897|
|pre_der_TCC13|✅ proved - incomplete|shostak|0.141|
|pre_der_TCC14|✅ proved - incomplete|shostak|0.190|
|pre_der_TCC15|✅ proved - incomplete|shostak|0.854|
|pre_der_TCC16|✅ proved - incomplete|shostak|0.249|
|pre_der_TCC17|✅ proved - incomplete|shostak|0.313|
|pre_der_TCC18|✅ proved - incomplete|shostak|0.210|
|pre_der_TCC19|✅ proved - incomplete|shostak|0.471|
|pre_der_TCC20|✅ proved - incomplete|shostak|0.451|
|pre_der_nth_TCC1|✅ proved - incomplete|shostak|0.341|
|pre_der_nth_TCC2|✅ proved - incomplete|shostak|0.869|
|pre_der_nth|✅ proved - incomplete|shostak|5.524|
|pre_der_nth_grad_TCC1|✅ proved - incomplete|shostak|0.049|
|pre_der_nth_grad_TCC2|✅ proved - incomplete|shostak|0.060|
|pre_der_nth_grad_TCC3|✅ proved - incomplete|shostak|0.459|
|pre_der_nth_grad_TCC4|✅ proved - incomplete|shostak|0.917|
|pre_der_nth_grad_TCC5|✅ proved - incomplete|shostak|0.515|
|pre_der_nth_grad|✅ proved - incomplete|shostak|0.240|
|pre_der_nth_p_TCC1|✅ proved - incomplete|shostak|0.250|
|pre_der_nth_p_TCC2|✅ proved - incomplete|shostak|0.830|
|pre_der_nth_p|✅ proved - incomplete|shostak|0.934|
|del_ch_TCC1|✅ proved - incomplete|shostak|0.120|
|del_ch_TCC2|✅ proved - incomplete|shostak|0.121|
|del_ch_p_TCC1|✅ proved - incomplete|shostak|0.120|
|del_ch_p_TCC2|✅ proved - incomplete|shostak|0.132|
|del_nth_TCC1|✅ proved - incomplete|shostak|0.630|
|del_nth|✅ proved - incomplete|shostak|3.500|
|del_nth_p_TCC1|✅ proved - incomplete|shostak|0.131|
|del_nth_p|✅ proved - incomplete|shostak|0.000|
|derivable_nth_mat|✅ proved - incomplete|shostak|8.988|
|derivable_nth_mat_point|✅ proved - incomplete|shostak|9.690|
|der_f_TCC1|✅ proved - incomplete|shostak|0.070|
|der_f_TCC2|✅ proved - incomplete|shostak|0.000|
|der_f_TCC3|✅ proved - incomplete|shostak|0.081|
|der_f_TCC4|✅ proved - incomplete|shostak|6.574|
|conv_zero_nth_TCC1|✅ proved - incomplete|shostak|0.180|
|conv_zero_nth_TCC2|✅ proved - incomplete|shostak|0.683|
|conv_zero_nth|✅ proved - incomplete|shostak|3.109|
|der_f_unique_TCC1|✅ proved - incomplete|shostak|0.060|
|der_f_unique_TCC2|✅ proved - incomplete|shostak|0.087|
|der_f_unique|✅ proved - incomplete|shostak|0.325|
|pre_diff_cont_TCC1|✅ proved - incomplete|shostak|0.347|
|pre_diff_cont_TCC2|✅ proved - incomplete|shostak|0.574|
|pre_diff_cont_TCC3|✅ proved - incomplete|shostak|0.650|
|pre_diff_cont_TCC4|✅ proved - incomplete|shostak|0.366|
|pre_diff_cont|✅ proved - incomplete|shostak|2.813|
|diff_cont|✅ proved - incomplete|shostak|2.935|
|der?_TCC1|✅ proved - incomplete|shostak|1.099|
|pre_der_der_p_TCC1|✅ proved - incomplete|shostak|0.076|
|pre_der_der_p|✅ proved - incomplete|shostak|0.498|
|der_nth_mat_point_TCC1|✅ proved - incomplete|shostak|0.060|
|der_nth_mat_point_TCC2|✅ proved - incomplete|shostak|0.571|
|der_nth_mat_point_TCC3|✅ proved - incomplete|shostak|0.068|
|der_nth_mat_point|✅ proved - incomplete|shostak|0.220|
|derivable_subtype_TCC1|✅ proved - incomplete|shostak|0.068|
|derivable_subtype_TCC2|✅ proved - incomplete|shostak|5.813|
|derivable_subtype|✅ proved - incomplete|shostak|0.240|
|der_subtype_TCC1|✅ proved - incomplete|shostak|0.058|
|der_subtype|✅ proved - incomplete|shostak|0.435|

## `chain_rule_multi`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|pre_chain_addzero_triag_TCC1|✅ proved - incomplete|shostak|0.390|
|pre_chain_addzero_triag_TCC2|✅ proved - incomplete|shostak|0.062|
|pre_chain_addzero_triag_TCC3|✅ proved - incomplete|shostak|0.080|
|pre_chain_addzero_triag_TCC4|✅ proved - incomplete|shostak|0.528|
|pre_chain_addzero_triag_TCC5|✅ proved - incomplete|shostak|0.960|
|pre_chain_addzero_triag_TCC6|✅ proved - incomplete|shostak|0.160|
|pre_chain_addzero_triag_TCC7|✅ proved - incomplete|shostak|0.240|
|pre_chain_addzero_triag_TCC8|✅ proved - incomplete|shostak|0.609|
|pre_chain_addzero_triag_TCC9|✅ proved - incomplete|shostak|0.140|
|pre_chain_addzero_triag_TCC10|✅ proved - incomplete|shostak|0.300|
|pre_chain_addzero_triag_TCC11|✅ proved - incomplete|shostak|0.839|
|pre_chain_addzero_triag_TCC12|✅ proved - incomplete|shostak|0.591|
|pre_chain_addzero_triag|✅ proved - incomplete|shostak|2.833|
|pre_chain_bound_TCC1|✅ proved - incomplete|shostak|0.053|
|pre_chain_bound_TCC2|✅ proved - incomplete|shostak|0.470|
|pre_chain_bound|✅ proved - incomplete|shostak|1.515|
|g_diff_Meps2_bound_TCC1|✅ proved - incomplete|shostak|0.486|
|g_diff_Meps2_bound_TCC2|✅ proved - incomplete|shostak|0.080|
|g_diff_Meps2_bound_TCC3|✅ proved - incomplete|shostak|0.142|
|g_diff_Meps2_bound_TCC4|✅ proved - incomplete|shostak|0.160|
|g_diff_Meps2_bound_TCC5|✅ proved - incomplete|shostak|0.425|
|g_diff_Meps2_bound_TCC6|✅ proved - incomplete|shostak|0.110|
|g_diff_Meps2_bound|✅ proved - incomplete|shostak|1.412|
|f_diff_Meps2_bound|✅ proved - incomplete|shostak|0.525|
|chain_rule_multi_TCC1|✅ proved - incomplete|shostak|0.052|
|chain_rule_multi|✅ proved - incomplete|shostak|5.836|
|chain_rule_multi_subdom_TCC1|✅ proved - incomplete|shostak|0.060|
|chain_rule_multi_subdom_TCC2|✅ proved - incomplete|shostak|0.067|
|chain_rule_multi_subdom_TCC3|✅ proved - incomplete|shostak|0.070|
|chain_rule_multi_subdom|✅ proved - incomplete|shostak|5.655|
|chain_rule_multi_der_TCC1|✅ proved - incomplete|shostak|0.496|
|chain_rule_multi_der_TCC2|✅ proved - incomplete|shostak|0.070|
|chain_rule_multi_der|✅ proved - incomplete|shostak|5.273|
|chain_rule_multi_der_subdom_TCC1|✅ proved - incomplete|shostak|0.484|
|chain_rule_multi_der_subdom_TCC2|✅ proved - incomplete|shostak|0.060|
|chain_rule_multi_der_subdom|✅ proved - incomplete|shostak|4.964|
|chain_rule_multi_der_is_TCC1|✅ proved - incomplete|shostak|0.080|
|chain_rule_multi_der_is_TCC2|✅ proved - incomplete|shostak|0.070|
|chain_rule_multi_der_is_TCC3|✅ proved - incomplete|shostak|0.500|
|chain_rule_multi_der_is|✅ proved - incomplete|shostak|1.048|
|chain_rule_multi_der_is_subdom|✅ proved - incomplete|shostak|1.068|

## `lift_real_fun_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|lift_rd_TCC1|✅ proved - incomplete|shostak|0.060|
|dd_lift_dd|✅ proved - incomplete|shostak|0.929|
|lift_re_TCC1|✅ proved - incomplete|shostak|0.050|
|lift_re_TCC2|✅ proved - incomplete|shostak|0.050|
|lift_diff_TCC1|✅ proved - complete|shostak|0.040|
|lift_diff_TCC2|✅ proved - complete|shostak|0.170|
|lift_diff_TCC3|✅ proved - incomplete|shostak|0.040|
|lift_diff_TCC4|✅ proved - incomplete|shostak|0.050|
|lift_diff|✅ proved - incomplete|shostak|5.090|
|lift_der_TCC1|✅ proved - incomplete|shostak|0.060|
|lift_der|✅ proved - incomplete|shostak|6.122|
|liftr_TCC1|✅ proved - incomplete|shostak|0.050|
|lift_diff_right|✅ proved - incomplete|shostak|0.000|
|lift_der_right_TCC1|✅ proved - incomplete|shostak|0.070|
|lift_der_right_TCC2|✅ proved - incomplete|shostak|0.090|
|lift_der_right|✅ proved - incomplete|shostak|2.852|
|same_on_D_same_diff|✅ proved - incomplete|shostak|0.380|
|same_on_D_same_der_TCC1|✅ proved - incomplete|shostak|0.080|
|same_on_D_same_der|✅ proved - incomplete|shostak|0.738|

## `bounded_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|ua_u|✅ proved - complete|shostak|0.060|
|ub_u|✅ proved - complete|shostak|0.076|
|u_uaob|✅ proved - complete|shostak|0.160|
|ua_u_op|✅ proved - incomplete|shostak|0.089|
|ub_u_op|✅ proved - incomplete|shostak|0.100|
|u_uaob_op|✅ proved - incomplete|shostak|0.097|
|unbounded_below_no_glob_minimizer|✅ proved - incomplete|shostak|0.180|
|unbounded_above_no_glob_maximizer|✅ proved - incomplete|shostak|0.166|
|unbounded_no_glob_minimizer_maximizer|✅ proved - incomplete|shostak|0.489|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib/pvsio_utils/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230712-static-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230710-tcc-gen.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230707-defattach.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230706-extrategies.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`|
