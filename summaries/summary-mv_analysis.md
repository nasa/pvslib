# Summary for `mv_analysis`
Run started at 3:45:53 11/25/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **1015**   | **1015**    | **1015**    | **0**  | **5:34.937 s**   |
|top|0|0|0|0|0.000|
|domain_vec2real_def|0|0|0|0|0.000|
|vector_arithmetic|129|129|129|0|25.091|
|matrix_vector_multiplication|29|29|29|0|4.587|
|norms|70|70|70|0|20.164|
|cauchy_schwarz|10|10|10|0|1.481|
|subsequences|1|1|1|0|0.050|
|unconstrained_global_extrema|9|9|9|0|0.277|
|sum_vecs|25|25|25|0|2.723|
|norm_1_defs|3|3|3|0|0.140|
|norm_1_sequential_criterian|2|2|2|0|0.193|
|norm_1_bolzano_weierstrass|6|6|6|0|1.646|
|norm_1_extreme_value_theorem|14|14|14|0|2.851|
|norms_equiv|36|36|36|0|5.740|
|norms_equiv_general|1|1|1|0|0.040|
|vector_sequences|18|18|18|0|2.454|
|closed_bounded_domain|6|6|6|0|0.558|
|continuity_multivar|22|22|22|0|5.431|
|sequential_criterian|2|2|2|0|0.180|
|bolzano_weierstrass|6|6|6|0|0.570|
|extreme_value_theorem|1|1|1|0|0.222|
|unconstrained_local_extrema|9|9|9|0|0.974|
|fundamentals_constrained_optimization|50|50|50|0|6.859|
|topology_Rn|5|5|5|0|0.401|
|derivative_domain_multi|44|44|44|0|7.530|
|differentiable_def|7|7|7|0|0.482|
|init_partial_def|67|67|67|0|19.460|
|directional_deriv_def|64|64|64|0|21.213|
|partial_def|20|20|20|0|3.963|
|gradient_def|54|54|54|0|9.197|
|jacobian_def|11|11|11|0|1.150|
|continuous_derivatives|0|0|0|0|0.000|
|Taylor_Thrm_Multi|39|39|39|0|56.473|
|unconstrained_first_order_optimality|4|4|4|0|15.005|
|linear_programming|4|4|4|0|0.819|
|exist_solution_lp|5|5|5|0|3.377|
|Cauchy_seq|4|4|4|0|1.318|
|Vector_VectorN|18|18|18|0|5.176|
|Lipschitz_def|6|6|6|0|1.258|
|composition_function|1|1|1|0|0.220|
|max_function|7|7|7|0|1.603|
|mat_vec_mult|54|54|54|0|18.606|
|convergence_vec2vec|83|83|83|0|45.259|
|chain_rule_multi|41|41|41|0|26.501|
|lift_real_fun_def|19|19|19|0|12.764|
|bounded_def|9|9|9|0|0.931|
## Detailed Summary 
## `top`
No formula declaration found.
## `domain_vec2real_def`
No formula declaration found.
## `vector_arithmetic`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|wf_1|✅ proved - incomplete|shostak|0.120|
|zero_vec_TCC1|✅ proved - incomplete|shostak|0.030|
|zero_vec_TCC2|✅ proved - complete|shostak|0.040|
|zero_vec_TCC3|✅ proved - complete|shostak|0.020|
|zero_vec_TCC4|✅ proved - incomplete|shostak|0.060|
|zero_vec0_TCC1|✅ proved - complete|shostak|0.030|
|zero_vec0|✅ proved - incomplete|shostak|0.218|
|nth_zero_TCC1|✅ proved - incomplete|shostak|0.040|
|nth_zero|✅ proved - incomplete|shostak|0.103|
|zero_cdr_TCC1|✅ proved - incomplete|shostak|0.030|
|zero_cdr_TCC2|✅ proved - complete|shostak|0.032|
|zero_cdr|✅ proved - incomplete|shostak|0.130|
|every_zero|✅ proved - incomplete|shostak|0.119|
|constant_vec_TCC1|✅ proved - incomplete|shostak|0.070|
|e_TCC1|✅ proved - complete|shostak|0.030|
|e_TCC2|✅ proved - incomplete|shostak|0.064|
|e_TCC3|✅ proved - incomplete|shostak|0.060|
|e_cdr_TCC1|✅ proved - incomplete|shostak|0.040|
|e_cdr_TCC2|✅ proved - complete|shostak|0.040|
|e_cdr|✅ proved - incomplete|shostak|0.126|
|nth_e_TCC1|✅ proved - incomplete|shostak|0.045|
|nth_e_TCC2|✅ proved - incomplete|shostak|0.040|
|nth_e|✅ proved - incomplete|shostak|0.175|
|every_e|✅ proved - incomplete|shostak|0.075|
|e_not_zero|✅ proved - incomplete|shostak|0.146|
|test_zero1|✅ proved - incomplete|shostak|0.030|
|test_zero2|✅ proved - incomplete|shostak|0.020|
|test_e1|✅ proved - incomplete|shostak|0.040|
|test_e2|✅ proved - incomplete|shostak|0.030|
|test_e3|✅ proved - incomplete|shostak|0.030|
|test_constant_vec1|✅ proved - incomplete|shostak|0.020|
|test_constant_vec2|✅ proved - incomplete|shostak|0.086|
|greater?_TCC1|✅ proved - incomplete|shostak|0.020|
|greater?_TCC2|✅ proved - incomplete|shostak|0.040|
|greater?_TCC3|✅ proved - incomplete|shostak|0.030|
|greater?_TCC4|✅ proved - complete|shostak|0.030|
|greater_eq?_TCC1|✅ proved - incomplete|shostak|0.040|
|greater_eq?_TCC2|✅ proved - incomplete|shostak|0.050|
|greater_eq?_TCC3|✅ proved - complete|shostak|0.027|
|less?_TCC1|✅ proved - incomplete|shostak|0.050|
|less?_TCC2|✅ proved - incomplete|shostak|0.040|
|less?_TCC3|✅ proved - complete|shostak|0.040|
|less_eq?_TCC1|✅ proved - incomplete|shostak|0.040|
|less_eq?_TCC2|✅ proved - incomplete|shostak|0.040|
|less_eq?_TCC3|✅ proved - complete|shostak|0.040|
|g_1_TCC1|✅ proved - incomplete|shostak|0.030|
|g_1|✅ proved - incomplete|shostak|0.050|
|ge_1|✅ proved - incomplete|shostak|0.030|
|l_1|✅ proved - incomplete|shostak|0.060|
|cdr_scal_TCC1|✅ proved - incomplete|shostak|0.070|
|cdr_scal|✅ proved - incomplete|shostak|0.141|
|cdr_sub_TCC1|✅ proved - incomplete|shostak|0.163|
|cdr_sub|✅ proved - incomplete|shostak|0.255|
|cdr_add_TCC1|✅ proved - incomplete|shostak|0.150|
|cdr_add|✅ proved - incomplete|shostak|0.250|
|car_scal|✅ proved - incomplete|shostak|0.120|
|car_sub|✅ proved - incomplete|shostak|0.205|
|neg_1_scal|✅ proved - incomplete|shostak|0.137|
|add_commute|✅ proved - incomplete|shostak|0.185|
|sub_idx|✅ proved - incomplete|shostak|0.040|
|asso_1_scal|✅ proved - incomplete|shostak|0.124|
|scal_asso|✅ proved - incomplete|shostak|0.268|
|asso_v|✅ proved - incomplete|shostak|0.157|
|asso_dot|✅ proved - incomplete|shostak|0.186|
|asso_add|✅ proved - incomplete|shostak|0.346|
|asso_sub_commute|✅ proved - incomplete|shostak|1.007|
|scal_cancel|✅ proved - incomplete|shostak|0.439|
|add_zero|✅ proved - incomplete|shostak|0.491|
|zero_id|✅ proved - incomplete|shostak|0.120|
|scal_zero|✅ proved - incomplete|shostak|0.070|
|dot_zero|✅ proved - incomplete|shostak|0.116|
|zero_mult|✅ proved - incomplete|shostak|0.348|
|add_cancel|✅ proved - incomplete|shostak|0.408|
|sub_zero|✅ proved - incomplete|shostak|0.160|
|mult_zero|✅ proved - incomplete|shostak|0.136|
|add_zero_trick|✅ proved - incomplete|shostak|0.667|
|diff_zero|✅ proved - incomplete|shostak|0.791|
|add_zero_imp_eq|✅ proved - incomplete|shostak|0.342|
|one_idx|✅ proved - incomplete|shostak|0.084|
|zero_scal|✅ proved - incomplete|shostak|0.040|
|sub_self|✅ proved - incomplete|shostak|0.202|
|sub_sandwich|✅ proved - incomplete|shostak|0.211|
|sub_equal_id|✅ proved - incomplete|shostak|0.233|
|sub_equal_id1|✅ proved - incomplete|shostak|0.000|
|neg_1|✅ proved - incomplete|shostak|0.557|
|dist_1|✅ proved - incomplete|shostak|0.825|
|dist|✅ proved - incomplete|shostak|0.290|
|dist_scalar|✅ proved - incomplete|shostak|0.161|
|dist_scalar_sub|✅ proved - incomplete|shostak|0.517|
|dist_list|✅ proved - incomplete|shostak|0.472|
|nth_dist_TCC1|✅ proved - incomplete|shostak|0.040|
|nth_dist|✅ proved - incomplete|shostak|0.194|
|nth_sum_TCC1|✅ proved - incomplete|shostak|0.040|
|nth_sum_TCC2|✅ proved - incomplete|shostak|0.040|
|nth_sum|✅ proved - incomplete|shostak|0.398|
|nth_subtract_TCC1|✅ proved - incomplete|shostak|0.060|
|nth_subtract|✅ proved - incomplete|shostak|0.432|
|sub_dist|✅ proved - incomplete|shostak|0.271|
|dot_linear|✅ proved - incomplete|shostak|0.126|
|dot_short_TCC1|✅ proved - incomplete|shostak|0.120|
|dot_short_TCC2|✅ proved - incomplete|shostak|0.131|
|dot_short_TCC3|✅ proved - incomplete|shostak|0.070|
|dot_short_TCC4|✅ proved - complete|shostak|0.030|
|F_sum_TCC1|✅ proved - incomplete|shostak|0.060|
|F_sum_TCC2|✅ proved - incomplete|shostak|0.050|
|dot_short_is_sig|✅ proved - incomplete|shostak|0.203|
|F_shift|✅ proved - incomplete|shostak|0.181|
|F_sum_shift|✅ proved - incomplete|shostak|0.401|
|dot_is_sig|✅ proved - incomplete|shostak|0.739|
|dot_is_sig2|✅ proved - incomplete|shostak|0.559|
|dot_short_is_dot_TCC1|✅ proved - incomplete|shostak|0.120|
|dot_short_is_dot|✅ proved - incomplete|shostak|0.152|
|dot_is_sigma_TCC1|✅ proved - incomplete|shostak|0.040|
|dot_is_sigma|✅ proved - incomplete|shostak|0.142|
|dot_prod_zero|✅ proved - incomplete|shostak|0.050|
|dot_prod_e_TCC1|✅ proved - complete|shostak|0.020|
|dot_prod_e|✅ proved - incomplete|shostak|0.160|
|dot_equality|✅ proved - incomplete|shostak|0.361|
|dot_equality1|✅ proved - incomplete|shostak|0.562|
|dot_equality_e|✅ proved - incomplete|shostak|0.080|
|dot_scalar1|✅ proved - incomplete|shostak|0.204|
|dot_dist|✅ proved - incomplete|shostak|0.475|
|dot_dist_sub|✅ proved - incomplete|shostak|0.560|
|quad_cancel|✅ proved - incomplete|shostak|0.774|
|quad_cancel_plus|✅ proved - incomplete|shostak|0.080|
|quad_move|✅ proved - incomplete|shostak|1.988|
|quad_cancel_p_m|✅ proved - incomplete|shostak|0.311|
|quad_cancel_tail|✅ proved - incomplete|shostak|0.500|
|add_sub_zero|✅ proved - incomplete|shostak|0.087|

## `matrix_vector_multiplication`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|mult_TCC1|✅ proved - incomplete|shostak|0.080|
|mult_TCC2|✅ proved - incomplete|shostak|0.070|
|mult_length|✅ proved - incomplete|shostak|0.160|
|mult_TCC3|✅ proved - incomplete|shostak|0.040|
|mmult_nth_TCC1|✅ proved - incomplete|shostak|0.050|
|mmult_nth|✅ proved - incomplete|shostak|0.406|
|max_row_2_TCC1|✅ proved - incomplete|shostak|0.060|
|max_row_2_TCC2|✅ proved - incomplete|shostak|0.060|
|max_row_2|✅ proved - incomplete|shostak|0.501|
|max_row_2_TCC3|✅ proved - incomplete|shostak|0.053|
|max_row_2_TCC4|✅ proved - incomplete|shostak|0.060|
|mmult_inf_bound_TCC1|✅ proved - incomplete|shostak|0.040|
|mmult_inf_bound_TCC2|✅ proved - incomplete|shostak|0.050|
|mmult_inf_bound|✅ proved - incomplete|shostak|0.285|
|mmult_dist_TCC1|✅ proved - incomplete|shostak|0.040|
|mmult_dist|✅ proved - incomplete|shostak|0.588|
|mmult_scal_TCC1|✅ proved - incomplete|shostak|0.060|
|mmult_scal|✅ proved - incomplete|shostak|0.496|
|mmult_sub_dist_TCC1|✅ proved - incomplete|shostak|0.044|
|mmult_sub_dist|✅ proved - incomplete|shostak|0.130|
|eye_TCC1|✅ proved - complete|shostak|0.032|
|eye_TCC2|✅ proved - complete|shostak|0.030|
|eye_TCC3|✅ proved - complete|shostak|0.030|
|eye_TCC4|✅ proved - complete|shostak|0.040|
|mult_1|✅ proved - incomplete|shostak|0.030|
|eye_1|✅ proved - incomplete|shostak|0.040|
|eye_2|✅ proved - incomplete|shostak|0.471|
|eye_3|✅ proved - incomplete|shostak|0.611|
|mult_3|✅ proved - incomplete|shostak|0.030|

## `norms`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|norm?_TCC1|✅ proved - incomplete|shostak|0.030|
|norm?_TCC2|✅ proved - incomplete|shostak|0.090|
|norm?_TCC3|✅ proved - incomplete|shostak|0.180|
|norm?_TCC4|✅ proved - incomplete|shostak|0.040|
|max_TCC1|✅ proved - incomplete|shostak|0.050|
|max_TCC2|✅ proved - complete|shostak|0.030|
|max_nth|✅ proved - incomplete|shostak|0.000|
|entry_mult_TCC1|✅ proved - incomplete|shostak|0.060|
|entry_mult_TCC2|✅ proved - complete|shostak|0.060|
|abs_TCC1|✅ proved - incomplete|shostak|0.034|
|abs_TCC2|✅ proved - incomplete|shostak|0.030|
|abs_nth_TCC1|✅ proved - incomplete|shostak|0.040|
|abs_nth|✅ proved - incomplete|shostak|0.241|
|test_max_1|✅ proved - incomplete|shostak|0.030|
|test_abs_1|✅ proved - incomplete|shostak|0.030|
|test_sum|✅ proved - incomplete|shostak|0.030|
|test_entry_mult|✅ proved - incomplete|shostak|0.040|
|test_entry_mult_2|✅ proved - incomplete|shostak|0.030|
|abs_max_lists_TCC1|✅ proved - incomplete|shostak|0.050|
|abs_max_lists_TCC2|✅ proved - incomplete|shostak|0.171|
|abs_max_lists_TCC3|✅ proved - incomplete|shostak|0.060|
|abs_max_lists|✅ proved - incomplete|shostak|1.567|
|abs_pos|✅ proved - incomplete|shostak|0.161|
|abs_zero|✅ proved - incomplete|shostak|0.655|
|abs_max_triag_TCC1|✅ proved - incomplete|shostak|0.080|
|abs_max_triag_TCC2|✅ proved - incomplete|shostak|0.070|
|abs_max_triag_TCC3|✅ proved - incomplete|shostak|0.070|
|abs_max_triag|✅ proved - incomplete|shostak|7.383|
|sum_abs_pos|✅ proved - incomplete|shostak|0.198|
|sum_abs_lists|✅ proved - incomplete|shostak|0.569|
|sum_abs_zero|✅ proved - incomplete|shostak|0.500|
|sum_abs_triag|✅ proved - incomplete|shostak|1.758|
|norm_inf_TCC1|✅ proved - incomplete|shostak|0.158|
|norm_inf_TCC2|✅ proved - incomplete|shostak|0.180|
|norm_1_TCC1|✅ proved - incomplete|shostak|0.250|
|norm_1_TCC2|✅ proved - incomplete|shostak|0.151|
|norm_2sq_TCC1|✅ proved - incomplete|shostak|0.080|
|norm_2_TCC1|✅ proved - incomplete|shostak|0.000|
|norm_inf_recurse_TCC1|✅ proved - incomplete|shostak|0.062|
|norm_inf_recurse_TCC2|✅ proved - incomplete|shostak|0.050|
|norm_inf_recurse|✅ proved - incomplete|shostak|0.388|
|norm_one_recurse|✅ proved - incomplete|shostak|0.108|
|test_abs|✅ proved - incomplete|shostak|0.030|
|test_1|✅ proved - incomplete|shostak|0.020|
|test_2sq|✅ proved - incomplete|shostak|0.020|
|big_kahuna|✅ proved - incomplete|shostak|0.030|
|norm_inf_constant_TCC1|✅ proved - incomplete|shostak|0.030|
|norm_inf_constant|✅ proved - incomplete|shostak|0.234|
|norm_reflex_TCC1|✅ proved - incomplete|shostak|0.066|
|norm_reflex_TCC2|✅ proved - incomplete|shostak|0.060|
|norm_reflex|✅ proved - incomplete|shostak|0.196|
|reverse_triag_TCC1|✅ proved - incomplete|shostak|0.050|
|reverse_triag|✅ proved - incomplete|shostak|0.187|
|norm_inf_nth|✅ proved - incomplete|shostak|0.087|
|norm_inf_nth_m_TCC1|✅ proved - complete|shostak|0.030|
|norm_inf_nth_m|✅ proved - incomplete|shostak|0.040|
|norm_inf_nth_ineq|✅ proved - incomplete|shostak|0.316|
|norm_inf_nth_ineq_m|✅ proved - incomplete|shostak|0.040|
|norm_inf_canc_TCC1|✅ proved - incomplete|shostak|0.137|
|norm_inf_canc_TCC2|✅ proved - incomplete|shostak|0.060|
|norm_inf_canc|✅ proved - incomplete|shostak|0.057|
|norm_inf_e_TCC1|✅ proved - incomplete|shostak|0.040|
|norm_inf_e_TCC2|✅ proved - complete|shostak|0.020|
|norm_inf_e|✅ proved - incomplete|shostak|0.303|
|norm_inf_e_scal_TCC1|✅ proved - incomplete|shostak|0.040|
|norm_inf_e_scal|✅ proved - incomplete|shostak|0.080|
|dot_max_ineq|✅ proved - incomplete|shostak|1.003|
|dot_equality_delta_TCC1|✅ proved - incomplete|shostak|0.080|
|dot_equality_delta_TCC2|✅ proved - incomplete|shostak|0.093|
|dot_equality_delta|✅ proved - incomplete|shostak|1.051|

## `cauchy_schwarz`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|dot_non_neg|✅ proved - incomplete|shostak|0.090|
|dot_pos|✅ proved - incomplete|shostak|0.222|
|dot_linear_right|✅ proved - incomplete|shostak|0.123|
|dot_linear_left|✅ proved - incomplete|shostak|0.050|
|dot_spread|✅ proved - incomplete|shostak|0.427|
|almost_cauchy_schwarz_TCC1|✅ proved - incomplete|shostak|0.056|
|almost_cauchy_schwarz|✅ proved - incomplete|shostak|0.230|
|cauchy_schwarz_TCC1|✅ proved - incomplete|shostak|0.040|
|cauchy_schwarz_TCC2|✅ proved - incomplete|shostak|0.030|
|cauchy_schwarz|✅ proved - incomplete|shostak|0.213|

## `subsequences`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|increase_seq_fact|✅ proved - complete|shostak|0.050|

## `unconstrained_global_extrema`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|min_global_1a|✅ proved - incomplete|shostak|0.030|
|min_global_1b_TCC1|✅ proved - incomplete|shostak|0.020|
|min_global_1b_TCC2|✅ proved - incomplete|shostak|0.040|
|min_global_1b_TCC3|✅ proved - complete|shostak|0.027|
|min_global_1b|✅ proved - incomplete|shostak|0.020|
|min_global_1c|✅ proved - incomplete|shostak|0.030|
|min_global_2|✅ proved - incomplete|shostak|0.030|
|min_max_global_1|✅ proved - incomplete|shostak|0.030|
|min_max_global_2|✅ proved - incomplete|shostak|0.050|

## `sum_vecs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Sigmaa_TCC1|✅ proved - incomplete|shostak|0.036|
|Sigmaa_TCC2|✅ proved - incomplete|shostak|0.050|
|Sigmaa_TCC3|✅ proved - incomplete|shostak|0.060|
|Sigmaa_TCC4|✅ proved - incomplete|shostak|0.115|
|Sigmaa_TCC5|✅ proved - incomplete|shostak|0.060|
|Sigma_TCC1|✅ proved - incomplete|shostak|0.050|
|Sigma_TCC2|✅ proved - incomplete|shostak|0.040|
|Sigma_TCC3|✅ proved - incomplete|shostak|0.066|
|Sigma_TCC4|✅ proved - incomplete|shostak|0.110|
|Sigma_TCC5|✅ proved - incomplete|shostak|0.039|
|Standard_sum_TCC1|✅ proved - incomplete|shostak|0.030|
|Standard_sum_TCC2|✅ proved - incomplete|shostak|0.040|
|Standard_sum_TCC3|✅ proved - incomplete|shostak|0.030|
|Standard_sum_TCC4|✅ proved - incomplete|shostak|0.060|
|Standard_sum_TCC5|✅ proved - incomplete|shostak|0.251|
|Standard_sum_TCC6|✅ proved - incomplete|shostak|0.040|
|Standard_sum_TCC7|✅ proved - complete|shostak|0.020|
|Standard_sum_TCC8|✅ proved - incomplete|shostak|0.644|
|Standard_test_TCC1|✅ proved - incomplete|shostak|0.050|
|Standard_test|✅ proved - incomplete|shostak|0.262|
|Standard_id_TCC1|✅ proved - incomplete|shostak|0.030|
|Standard_id_TCC2|✅ proved - incomplete|shostak|0.040|
|Standard_id|✅ proved - incomplete|shostak|0.191|
|Li?_TCC1|✅ proved - incomplete|shostak|0.030|
|Li_test|✅ proved - incomplete|shostak|0.379|

## `norm_1_defs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|norm_1_contp?_TCC1|✅ proved - incomplete|shostak|0.050|
|norm_1_convergence?_TCC1|✅ proved - incomplete|shostak|0.060|
|norm_1_bounded?_TCC1|✅ proved - incomplete|shostak|0.030|

## `norm_1_sequential_criterian`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sequential_1|✅ proved - incomplete|shostak|0.153|
|sequential_2|✅ proved - incomplete|shostak|0.040|

## `norm_1_bolzano_weierstrass`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|B_W_m_TCC1|✅ proved - incomplete|shostak|0.040|
|B_W_m|✅ proved - incomplete|shostak|1.496|
|B_W_TCC1|✅ proved - incomplete|shostak|0.030|
|B_W|✅ proved - incomplete|shostak|0.040|
|B_W_m_le|✅ proved - incomplete|shostak|0.000|
|B_W_le|✅ proved - incomplete|shostak|0.040|

## `norm_1_extreme_value_theorem`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|unbound_fun_TCC1|✅ proved - incomplete|shostak|0.030|
|unbound_fun_TCC2|✅ proved - incomplete|shostak|0.061|
|unbound_fun_TCC3|✅ proved - complete|shostak|0.030|
|unbound_fun_TCC4|✅ proved - incomplete|shostak|0.170|
|cont_on_cb_bounded|✅ proved - incomplete|shostak|0.862|
|least_ub_on_cb_TCC1|✅ proved - incomplete|shostak|0.040|
|least_ub_on_cb|✅ proved - incomplete|shostak|0.066|
|greatest_lb_on_cb|✅ proved - incomplete|shostak|0.075|
|nonempty_bounded|✅ proved - incomplete|shostak|0.050|
|glb_approach_seq_TCC1|✅ proved - incomplete|shostak|0.061|
|glb_approach_seq_TCC2|✅ proved - incomplete|shostak|0.204|
|greatest_lb_subseq|✅ proved - incomplete|shostak|0.775|
|min_on_closed_bounded|✅ proved - incomplete|shostak|0.172|
|max_on_closed_bounded|✅ proved - incomplete|shostak|0.255|

## `norms_equiv`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|equiv?_TCC1|✅ proved - incomplete|shostak|0.060|
|equiv_m?_TCC1|✅ proved - incomplete|shostak|0.030|
|equiv_trans|✅ proved - incomplete|shostak|0.216|
|equiv_1norm_imp_equiv|✅ proved - incomplete|shostak|0.248|
|norm1_div_TCC1|✅ proved - incomplete|shostak|0.040|
|norm1_div_TCC2|✅ proved - incomplete|shostak|0.040|
|norm1_div_TCC3|✅ proved - incomplete|shostak|0.040|
|norm1_div_TCC4|✅ proved - incomplete|shostak|0.066|
|norm1_div|✅ proved - incomplete|shostak|0.160|
|equiv_unit_imp_equiv_TCC1|✅ proved - incomplete|shostak|0.060|
|equiv_unit_imp_equiv|✅ proved - incomplete|shostak|0.385|
|standard_norm_TCC1|✅ proved - incomplete|shostak|0.050|
|standard_norm_TCC2|✅ proved - incomplete|shostak|0.030|
|standard_norm_TCC3|✅ proved - incomplete|shostak|0.077|
|standard_norm_TCC4|✅ proved - incomplete|shostak|0.040|
|standard_norm_TCC5|✅ proved - incomplete|shostak|0.040|
|standard_norm|✅ proved - incomplete|shostak|0.536|
|max_e_exists_TCC1|✅ proved - incomplete|shostak|0.030|
|max_e_exists_TCC2|✅ proved - incomplete|shostak|0.060|
|max_e_exists|✅ proved - incomplete|shostak|0.192|
|max_e_TCC1|✅ proved - incomplete|shostak|0.040|
|max_e_TCC2|✅ proved - incomplete|shostak|0.060|
|max_e_TCC3|✅ proved - incomplete|shostak|0.127|
|standard_norm_ineq|✅ proved - incomplete|shostak|0.629|
|one_norm_sum|✅ proved - incomplete|shostak|0.720|
|standard_max_e_one_norm_TCC1|✅ proved - incomplete|shostak|0.050|
|standard_max_e_one_norm_TCC2|✅ proved - incomplete|shostak|0.030|
|standard_max_e_one_norm_TCC3|✅ proved - incomplete|shostak|0.075|
|standard_max_e_one_norm|✅ proved - incomplete|shostak|0.160|
|norm_to_max_e_one_norm|✅ proved - incomplete|shostak|0.097|
|unit_sphere_norm_1_closed_bounded|✅ proved - incomplete|shostak|0.256|
|norm_achieve_max_usn1_TCC1|✅ proved - incomplete|shostak|0.076|
|norm_achieve_max_usn1|✅ proved - incomplete|shostak|0.371|
|norm_achieve_min_usn1_TCC1|✅ proved - incomplete|shostak|0.076|
|norm_achieve_min_usn1|✅ proved - incomplete|shostak|0.382|
|equiv_norm|✅ proved - incomplete|shostak|0.191|

## `norms_equiv_general`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|equiv_norm_m|✅ proved - incomplete|shostak|0.040|

## `vector_sequences`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|convergence?_TCC1|✅ proved - incomplete|shostak|0.067|
|convergence_equiv_m|✅ proved - incomplete|shostak|0.157|
|convergence_equiv|✅ proved - incomplete|shostak|0.030|
|convergence?_TCC2|✅ proved - incomplete|shostak|0.070|
|convergence_zero?_TCC1|✅ proved - incomplete|shostak|0.160|
|convergence_unique_vec|✅ proved - incomplete|shostak|0.442|
|test_conv_TCC1|✅ proved - incomplete|shostak|0.061|
|test_conv|✅ proved - incomplete|shostak|0.582|
|convergence_unique_vec_seq|✅ proved - incomplete|shostak|0.060|
|unbounded?_TCC1|✅ proved - incomplete|shostak|0.050|
|unbounded_equiv|✅ proved - incomplete|shostak|0.133|
|unbounded?_TCC2|✅ proved - incomplete|shostak|0.043|
|nth_N_TCC1|✅ proved - incomplete|shostak|0.040|
|nth_N_TCC2|✅ proved - complete|shostak|0.030|
|nth_N|✅ proved - incomplete|shostak|0.469|
|converge_nth_TCC1|✅ proved - incomplete|shostak|0.040|
|converge_nth_TCC2|✅ proved - complete|shostak|0.020|
|converge_nth|✅ proved - incomplete|shostak|0.000|

## `closed_bounded_domain`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|closed_equiv|✅ proved - incomplete|shostak|0.226|
|closed_equiv1|✅ proved - incomplete|shostak|0.038|
|bounded_domain?_TCC1|✅ proved - incomplete|shostak|0.050|
|bounded_equiv|✅ proved - incomplete|shostak|0.140|
|bounded_equiv1|✅ proved - incomplete|shostak|0.024|
|open_neigh_domain?_TCC1|✅ proved - incomplete|shostak|0.080|

## `continuity_multivar`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|contp?_TCC1|✅ proved - incomplete|shostak|0.165|
|cont?_TCC1|✅ proved - incomplete|shostak|0.090|
|cont_pos_neigh_TCC1|✅ proved - incomplete|shostak|0.056|
|cont_pos_neigh|✅ proved - incomplete|shostak|0.706|
|cont_neg_neigh_TCC1|✅ proved - incomplete|shostak|0.060|
|cont_neg_neigh|✅ proved - incomplete|shostak|0.189|
|contp?_TCC2|✅ proved - incomplete|shostak|0.210|
|cont_inner_prod|✅ proved - incomplete|shostak|0.722|
|contp_norm_v2r|✅ proved - incomplete|shostak|0.205|
|contp_norms_v2v|✅ proved - incomplete|shostak|0.399|
|contp_norm_v2v|✅ proved - incomplete|shostak|0.232|
|contD_norm_v2r|✅ proved - incomplete|shostak|0.493|
|contD_norms_v2v|✅ proved - incomplete|shostak|0.107|
|contD_norm_v2v|✅ proved - incomplete|shostak|0.090|
|norm_cont_v2v_TCC1|✅ proved - incomplete|shostak|0.048|
|norm_cont_v2v|✅ proved - incomplete|shostak|0.100|
|cont_sum|✅ proved - incomplete|shostak|0.212|
|cont_const|✅ proved - incomplete|shostak|0.342|
|cont_lift_TCC1|✅ proved - incomplete|shostak|0.030|
|cont_lift_TCC2|✅ proved - incomplete|shostak|0.030|
|cont_lift_TCC3|✅ proved - incomplete|shostak|0.040|
|cont_lift|✅ proved - incomplete|shostak|0.905|

## `sequential_criterian`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sequential_criterian1|✅ proved - incomplete|shostak|0.130|
|sequentialcriterian2|✅ proved - incomplete|shostak|0.050|

## `bolzano_weierstrass`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|bolzano_weier_m_TCC1|✅ proved - incomplete|shostak|0.060|
|bolzano_weier_m|✅ proved - incomplete|shostak|0.195|
|bolzano_weier_TCC1|✅ proved - incomplete|shostak|0.050|
|bolzano_weier|✅ proved - incomplete|shostak|0.047|
|bolzano_weier_le_m|✅ proved - incomplete|shostak|0.173|
|bolzano_weier_le|✅ proved - incomplete|shostak|0.045|

## `extreme_value_theorem`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|extreme_value|✅ proved - incomplete|shostak|0.222|

## `unconstrained_local_extrema`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|is_loc_minimizer?_TCC1|✅ proved - incomplete|shostak|0.066|
|loc_minimizer_equiv|✅ proved - incomplete|shostak|0.195|
|loc_min_equiv|✅ proved - incomplete|shostak|0.212|
|loc_maximizer_equiv|✅ proved - incomplete|shostak|0.170|
|loc_max_equiv|✅ proved - incomplete|shostak|0.213|
|zero_loc_5_TCC1|✅ proved - incomplete|shostak|0.030|
|zero_loc_5_TCC2|✅ proved - complete|shostak|0.020|
|zero_loc_5_TCC3|✅ proved - complete|shostak|0.030|
|zero_loc_5|✅ proved - incomplete|shostak|0.038|

## `fundamentals_constrained_optimization`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|nth_TCC1|✅ proved - incomplete|shostak|0.040|
|car_TCC1|✅ proved - incomplete|shostak|0.040|
|car_v_TCC1|✅ proved - incomplete|shostak|0.030|
|cdr_TCC1|✅ proved - complete|shostak|0.020|
|cdr_TCC2|✅ proved - incomplete|shostak|0.077|
|append_TCC1|✅ proved - incomplete|shostak|0.140|
|constraint2vector_TCC1|✅ proved - complete|shostak|0.040|
|constraint2vector_TCC2|✅ proved - complete|shostak|0.030|
|constraint2vector_TCC3|✅ proved - complete|shostak|0.030|
|constraint2vector_TCC4|✅ proved - complete|shostak|0.040|
|constraint2vector_TCC5|✅ proved - incomplete|shostak|0.100|
|cons_f_TCC1|✅ proved - incomplete|shostak|0.066|
|listfuns2fun_TCC1|✅ proved - incomplete|shostak|0.030|
|listfuns2fun_TCC2|✅ proved - incomplete|shostak|0.050|
|listfuns_length|✅ proved - incomplete|shostak|0.000|
|filter_fun_TCC1|✅ proved - incomplete|shostak|0.170|
|filter_fun_filter|✅ proved - incomplete|shostak|1.333|
|filter_nth|✅ proved - incomplete|shostak|0.488|
|filter_2nth|✅ proved - incomplete|shostak|0.197|
|filter_nth2|✅ proved - incomplete|shostak|0.451|
|filter_2nth2|✅ proved - incomplete|shostak|0.050|
|c2v_nth_TCC1|✅ proved - incomplete|shostak|0.040|
|c2v_nth|✅ proved - incomplete|shostak|0.158|
|listfuns2fun_TCC3|✅ proved - incomplete|shostak|0.146|
|sat_eq_1|✅ proved - incomplete|shostak|0.233|
|sat_ineq_1_TCC1|✅ proved - incomplete|shostak|0.040|
|sat_ineq_1|✅ proved - incomplete|shostak|0.612|
|trivial_eq|✅ proved - incomplete|shostak|0.030|
|x_square_TCC1|✅ proved - complete|shostak|0.030|
|x_square_TCC2|✅ proved - incomplete|shostak|0.045|
|x_square_TCC3|✅ proved - incomplete|shostak|0.050|
|x_square_TCC4|✅ proved - incomplete|shostak|0.075|
|x_square_TCC5|✅ proved - incomplete|shostak|0.070|
|x_square_TCC6|✅ proved - incomplete|shostak|0.070|
|x_square|✅ proved - incomplete|shostak|0.313|
|is_loc_minimizer?_TCC1|✅ proved - incomplete|shostak|0.062|
|loc_minimizer_equiv|✅ proved - incomplete|shostak|0.201|
|loc_min_equiv|✅ proved - incomplete|shostak|0.170|
|loc_maximizer_equiv|✅ proved - incomplete|shostak|0.176|
|loc_max_equiv|✅ proved - incomplete|shostak|0.212|
|isolated_implies_strict|✅ proved - incomplete|shostak|0.211|
|active_ineq?_TCC1|✅ proved - incomplete|shostak|0.050|
|lst2real_TCC1|✅ proved - incomplete|shostak|0.030|
|lst2real|✅ proved - incomplete|shostak|0.173|
|countzeroidx_TCC1|✅ proved - incomplete|shostak|0.030|
|countzeroidx_TCC2|✅ proved - incomplete|shostak|0.030|
|countzeroidx_TCC3|✅ proved - incomplete|shostak|0.030|
|countzeroidx_TCC4|✅ proved - incomplete|shostak|0.070|
|countzeroidx_TCC5|✅ proved - incomplete|shostak|0.050|
|ex_idx|✅ proved - incomplete|shostak|0.030|

## `topology_Rn`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|OpenD?_TCC1|✅ proved - incomplete|shostak|0.060|
|OpenD_equiv|✅ proved - incomplete|shostak|0.202|
|Union_open|✅ proved - incomplete|shostak|0.074|
|convex_domain?_TCC1|✅ proved - incomplete|shostak|0.065|
|convex_implies_pc|✅ proved - incomplete|shostak|0.000|

## `derivative_domain_multi`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|deriv_domain?_TCC1|✅ proved - incomplete|shostak|0.070|
|deriv_domain?_TCC2|✅ proved - incomplete|shostak|0.070|
|deriv_domain_direction?_TCC1|✅ proved - incomplete|shostak|0.073|
|deriv_domain_partial?_TCC1|✅ proved - incomplete|shostak|0.050|
|dd_direction_partial|✅ proved - incomplete|shostak|0.069|
|dd_direction_partial_neg_TCC1|✅ proved - incomplete|shostak|0.050|
|dd_direction_partial_neg|✅ proved - incomplete|shostak|0.339|
|e_direction_e_partial|✅ proved - incomplete|shostak|0.060|
|deriv_domain_both_direction?_TCC1|✅ proved - incomplete|shostak|0.056|
|domain_connect?_TCC1|✅ proved - incomplete|shostak|0.070|
|open_implies_e_direction|✅ proved - incomplete|shostak|0.186|
|open_implies_e_partial|✅ proved - incomplete|shostak|0.040|
|d_con_ends|✅ proved - incomplete|shostak|0.271|
|dd_norm_equiv|✅ proved - incomplete|shostak|0.166|
|dd_directionv_implies_dd|✅ proved - incomplete|shostak|0.416|
|dd_all_direction_implies_dd_all_partial|✅ proved - incomplete|shostak|0.050|
|dd_direction_implies_dd_directionv|✅ proved - incomplete|shostak|0.027|
|dd_direction_implies_dd|✅ proved - incomplete|shostak|0.080|
|dd_all_partial_implies_dd|✅ proved - incomplete|shostak|0.799|
|dd_direction_implies_dd_e_direction|✅ proved - incomplete|shostak|0.060|
|dd_partial_implies_dd_e_direction|✅ proved - incomplete|shostak|0.062|
|dd_direction_implies_dd_e_partial|✅ proved - incomplete|shostak|0.030|
|dd_vdirection_implies_dd_partial|✅ proved - incomplete|shostak|0.060|
|dd_edirection_implies_dd_partial|✅ proved - incomplete|shostak|0.070|
|dd_epartial_implies_dd_partial|✅ proved - incomplete|shostak|0.062|
|dd_direction_implies_dd_partial|✅ proved - incomplete|shostak|0.060|
|dd_e_direction_implies_dd|✅ proved - incomplete|shostak|0.100|
|dd_partial_implies_dd|✅ proved - incomplete|shostak|0.463|
|dd_e_partial_implies_dd|✅ proved - incomplete|shostak|0.090|
|dd_partial_implies_scal_partial_TCC1|✅ proved - incomplete|shostak|0.072|
|dd_partial_implies_scal_partial|✅ proved - incomplete|shostak|0.881|
|dd_scal_partial_implies_partial_TCC1|✅ proved - incomplete|shostak|0.040|
|dd_scal_partial_implies_partial|✅ proved - incomplete|shostak|0.340|
|dd_zero|✅ proved - incomplete|shostak|0.090|
|dd_zero_partial|✅ proved - incomplete|shostak|0.086|
|domain_direction_scal_TCC1|✅ proved - incomplete|shostak|0.050|
|domain_direction_scal|✅ proved - incomplete|shostak|0.558|
|domain_direction_scal_real_TCC1|✅ proved - incomplete|shostak|0.070|
|domain_direction_scal_real|✅ proved - incomplete|shostak|0.143|
|del_neigh_all_mult?_TCC1|✅ proved - incomplete|shostak|0.060|
|del_neigh_all_mult?_TCC2|✅ proved - incomplete|shostak|0.073|
|del_neigh_norm_equiv|✅ proved - incomplete|shostak|0.152|
|del_neigh_all_lem_mutl|✅ proved - incomplete|shostak|0.822|
|domain_partial_p?_TCC1|✅ proved - incomplete|shostak|0.094|

## `differentiable_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|NQ_TCC1|✅ proved - incomplete|shostak|0.160|
|NQ_TCC2|✅ proved - incomplete|shostak|0.050|
|NQ_TCC3|✅ proved - incomplete|shostak|0.050|
|NQ_TCC4|✅ proved - incomplete|shostak|0.060|
|der_f_TCC1|✅ proved - incomplete|shostak|0.090|
|der_f_TCC2|✅ proved - incomplete|shostak|0.032|
|der_f_TCC3|✅ proved - incomplete|shostak|0.040|

## `init_partial_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|D_down_TCC1|✅ proved - incomplete|shostak|0.070|
|D_down_der_domain|✅ proved - incomplete|shostak|0.484|
|D_down_domain|✅ proved - incomplete|shostak|0.090|
|D_down_der_domain_unit|✅ proved - incomplete|shostak|0.000|
|D_down_domain_unit|✅ proved - incomplete|shostak|0.053|
|D_down_domain_unitc|✅ proved - incomplete|shostak|2.544|
|D_down_not_one|✅ proved - incomplete|shostak|0.299|
|D_down_not_one_unit|✅ proved - incomplete|shostak|0.236|
|D_down_not_one_unitc|✅ proved - incomplete|shostak|0.275|
|D_down_partial|✅ proved - incomplete|shostak|0.510|
|D_down_all_partial|✅ proved - incomplete|shostak|0.080|
|D_down_partial_not_one|✅ proved - incomplete|shostak|0.228|
|D_down_direction_not_one|✅ proved - incomplete|shostak|0.174|
|D_down_direction_deriv_domain|✅ proved - incomplete|shostak|0.100|
|init_partial?_TCC1|✅ proved - incomplete|shostak|0.115|
|init_partial?_TCC2|✅ proved - incomplete|shostak|0.030|
|init_partial?_TCC3|✅ proved - incomplete|shostak|0.020|
|diff_imp_init_partial_TCC1|✅ proved - incomplete|shostak|0.030|
|diff_imp_init_partial_TCC2|✅ proved - incomplete|shostak|0.080|
|diff_imp_init_partial|✅ proved - incomplete|shostak|2.246|
|diff_imp_init_partial1_TCC1|✅ proved - incomplete|shostak|0.090|
|diff_imp_init_partial1_TCC2|✅ proved - incomplete|shostak|0.081|
|diff_imp_init_partial1|✅ proved - incomplete|shostak|0.000|
|diff_imp_init_partial2_TCC1|✅ proved - incomplete|shostak|0.040|
|diff_imp_init_partial2|✅ proved - incomplete|shostak|1.466|
|init_partial_TCC1|✅ proved - incomplete|shostak|0.080|
|init_partial_zero_derivable_TCC1|✅ proved - incomplete|shostak|0.020|
|init_partial_zero_derivable|✅ proved - incomplete|shostak|0.230|
|init_partial_zero_TCC1|✅ proved - incomplete|shostak|0.038|
|init_partial_zero|✅ proved - incomplete|shostak|0.662|
|frech_diff_imp_init_partial_TCC1|✅ proved - incomplete|shostak|0.050|
|frech_diff_imp_init_partial|✅ proved - incomplete|shostak|0.050|
|init_partial_scal_TCC1|✅ proved - incomplete|shostak|0.217|
|init_partial_scal_TCC2|✅ proved - incomplete|shostak|0.031|
|init_partial_scal|✅ proved - incomplete|shostak|1.168|
|der_f_is_init_partial_TCC1|✅ proved - incomplete|shostak|0.041|
|der_f_is_init_partial_TCC2|✅ proved - incomplete|shostak|0.030|
|der_f_is_init_partial|✅ proved - incomplete|shostak|2.241|
|conv_NQ_is_init_partial_TCC1|✅ proved - incomplete|shostak|0.043|
|conv_NQ_is_init_partial|✅ proved - incomplete|shostak|1.643|
|der_f_is_init_partial1_TCC1|✅ proved - incomplete|shostak|0.030|
|der_f_is_init_partial1_TCC2|✅ proved - incomplete|shostak|0.050|
|der_f_is_init_partial1_TCC3|✅ proved - incomplete|shostak|0.080|
|der_f_is_init_partial1|✅ proved - incomplete|shostak|0.552|
|conv_NQ_is_init_partial1_TCC1|✅ proved - incomplete|shostak|0.040|
|conv_NQ_is_init_partial1_TCC2|✅ proved - incomplete|shostak|0.266|
|conv_NQ_is_init_partial1|✅ proved - incomplete|shostak|0.501|
|conv_NQ_unique|✅ proved - incomplete|shostak|0.098|
|der_f_unique_TCC1|✅ proved - incomplete|shostak|0.030|
|der_f_unique|✅ proved - incomplete|shostak|0.200|
|init_partial_scalar_TCC1|✅ proved - incomplete|shostak|0.050|
|init_partial_scalar_TCC2|✅ proved - incomplete|shostak|0.212|
|init_partial_scalar_TCC3|✅ proved - incomplete|shostak|0.044|
|init_partial_scalar|✅ proved - incomplete|shostak|0.186|
|init_partial_additive_TCC1|✅ proved - incomplete|shostak|0.070|
|init_partial_additive_TCC2|✅ proved - incomplete|shostak|0.056|
|init_partial_additive_TCC3|✅ proved - incomplete|shostak|0.050|
|init_partial_additive_TCC4|✅ proved - incomplete|shostak|0.076|
|init_partial_additive_TCC5|✅ proved - incomplete|shostak|0.040|
|init_partial_additive_TCC6|✅ proved - incomplete|shostak|0.036|
|init_partial_additive|✅ proved - incomplete|shostak|0.252|
|init_partial_linear_TCC1|✅ proved - incomplete|shostak|0.050|
|init_partial_linear_TCC2|✅ proved - incomplete|shostak|0.047|
|init_partial_linear_TCC3|✅ proved - incomplete|shostak|0.050|
|init_partial_linear_TCC4|✅ proved - incomplete|shostak|0.066|
|init_partial_linear_TCC5|✅ proved - incomplete|shostak|0.066|
|init_partial_linear|✅ proved - incomplete|shostak|0.377|

## `directional_deriv_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|D_downd_der_domain|✅ proved - incomplete|shostak|0.605|
|D_downd_domain|✅ proved - incomplete|shostak|0.090|
|D_downd_der_domain_unit|✅ proved - incomplete|shostak|1.242|
|D_downd_domain_unit|✅ proved - incomplete|shostak|0.034|
|D_downd_domain_unitc|✅ proved - incomplete|shostak|0.000|
|D_downd_not_one|✅ proved - incomplete|shostak|0.325|
|D_downd_not_one_unit|✅ proved - incomplete|shostak|0.249|
|D_downd_not_one_unitc|✅ proved - incomplete|shostak|0.280|
|D_downd_direction_not_one|✅ proved - incomplete|shostak|0.190|
|D_downd_direction_deriv_domain|✅ proved - incomplete|shostak|0.029|
|directional_deriv?_TCC1|✅ proved - incomplete|shostak|0.050|
|directional_deriv?_TCC2|✅ proved - incomplete|shostak|0.060|
|directional_deriv?_TCC3|✅ proved - incomplete|shostak|0.414|
|directional_deriv?_TCC4|✅ proved - incomplete|shostak|0.668|
|diff_imp_direction_TCC1|✅ proved - incomplete|shostak|0.030|
|diff_imp_direction_TCC2|✅ proved - incomplete|shostak|0.280|
|diff_imp_direction|✅ proved - incomplete|shostak|2.563|
|diff_imp_direction1_TCC1|✅ proved - incomplete|shostak|0.091|
|diff_imp_direction1|✅ proved - incomplete|shostak|1.473|
|directional_deriv_TCC1|✅ proved - incomplete|shostak|0.092|
|directional_deriv_TCC2|✅ proved - incomplete|shostak|0.416|
|direction_zero_derivable_TCC1|✅ proved - incomplete|shostak|0.030|
|direction_zero_derivable|✅ proved - incomplete|shostak|0.230|
|direction_zero_TCC1|✅ proved - incomplete|shostak|0.026|
|direction_zero|✅ proved - incomplete|shostak|0.709|
|diff_imp_direction2_TCC1|✅ proved - incomplete|shostak|0.090|
|diff_imp_direction2|✅ proved - incomplete|shostak|0.050|
|directional_deriv_scal_TCC1|✅ proved - incomplete|shostak|0.150|
|directional_deriv_scal_TCC2|✅ proved - incomplete|shostak|0.041|
|directional_deriv_scal_TCC3|✅ proved - incomplete|shostak|0.030|
|directional_deriv_scal|✅ proved - incomplete|shostak|1.242|
|der_f_is_direction_TCC1|✅ proved - incomplete|shostak|0.081|
|der_f_is_direction_TCC2|✅ proved - incomplete|shostak|0.030|
|der_f_is_direction|✅ proved - incomplete|shostak|2.155|
|der_f_is_direction1_TCC1|✅ proved - incomplete|shostak|0.030|
|der_f_is_direction1_TCC2|✅ proved - incomplete|shostak|0.230|
|der_f_is_direction1_TCC3|✅ proved - incomplete|shostak|0.040|
|der_f_is_direction1|✅ proved - incomplete|shostak|0.688|
|directional_deriv_scalar_TCC1|✅ proved - incomplete|shostak|0.040|
|directional_deriv_scalar_TCC2|✅ proved - incomplete|shostak|0.049|
|directional_deriv_scalar_TCC3|✅ proved - incomplete|shostak|0.040|
|directional_deriv_scalar_TCC4|✅ proved - incomplete|shostak|0.000|
|directional_deriv_scalar_TCC5|✅ proved - incomplete|shostak|0.055|
|directional_deriv_scalar|✅ proved - incomplete|shostak|0.215|
|directional_deriv_additive_TCC1|✅ proved - incomplete|shostak|0.070|
|directional_deriv_additive_TCC2|✅ proved - incomplete|shostak|0.127|
|directional_deriv_additive_TCC3|✅ proved - incomplete|shostak|0.050|
|directional_deriv_additive_TCC4|✅ proved - incomplete|shostak|0.066|
|directional_deriv_additive_TCC5|✅ proved - incomplete|shostak|0.067|
|directional_deriv_additive_TCC6|✅ proved - incomplete|shostak|0.070|
|directional_deriv_additive|✅ proved - incomplete|shostak|0.213|
|directional_deriv_linear_TCC1|✅ proved - incomplete|shostak|0.571|
|directional_deriv_linear_TCC2|✅ proved - incomplete|shostak|0.110|
|directional_deriv_linear_TCC3|✅ proved - incomplete|shostak|0.480|
|directional_deriv_linear_TCC4|✅ proved - incomplete|shostak|0.060|
|directional_deriv_linear_TCC5|✅ proved - incomplete|shostak|0.051|
|directional_deriv_linear_TCC6|✅ proved - incomplete|shostak|0.389|
|directional_deriv_linear_TCC7|✅ proved - incomplete|shostak|0.064|
|directional_deriv_linear|✅ proved - incomplete|shostak|1.968|
|directional_deriv_unique|✅ proved - incomplete|shostak|0.040|
|init_par_dir_derivable_TCC1|✅ proved - incomplete|shostak|0.267|
|init_par_dir_derivable|✅ proved - incomplete|shostak|0.307|
|init_par_dir_deriv_TCC1|✅ proved - incomplete|shostak|0.035|
|init_par_dir_deriv|✅ proved - incomplete|shostak|0.776|

## `partial_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|partial_TCC1|✅ proved - incomplete|shostak|0.495|
|F_partials_TCC1|✅ proved - incomplete|shostak|0.027|
|F_partials_TCC2|✅ proved - incomplete|shostak|0.180|
|F_partials_TCC3|✅ proved - incomplete|shostak|0.040|
|F_partials_TCC4|✅ proved - incomplete|shostak|0.060|
|F_partials_e_TCC1|✅ proved - incomplete|shostak|0.250|
|F_partials_e_TCC2|✅ proved - incomplete|shostak|0.060|
|F_partials_e|✅ proved - incomplete|shostak|0.117|
|directional_deriv_pre1_TCC1|✅ proved - incomplete|shostak|0.026|
|directional_deriv_pre1_TCC2|✅ proved - incomplete|shostak|0.120|
|directional_deriv_pre1_TCC3|✅ proved - incomplete|shostak|0.206|
|directional_deriv_pre1_TCC4|✅ proved - incomplete|shostak|0.146|
|directional_deriv_pre1_TCC5|✅ proved - incomplete|shostak|0.224|
|directional_deriv_pre1_TCC6|✅ proved - incomplete|shostak|0.096|
|directional_deriv_pre1_TCC7|✅ proved - incomplete|shostak|0.040|
|directional_deriv_pre1|✅ proved - incomplete|shostak|1.644|
|directional_deriv_sum_partials_TCC1|✅ proved - incomplete|shostak|0.040|
|directional_deriv_sum_partials_TCC2|✅ proved - incomplete|shostak|0.082|
|directional_deriv_sum_partials_TCC3|✅ proved - incomplete|shostak|0.030|
|directional_deriv_sum_partials|✅ proved - incomplete|shostak|0.080|

## `gradient_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|gradientp?_TCC1|✅ proved - incomplete|shostak|0.139|
|diffp_imp_gradp_TCC1|✅ proved - incomplete|shostak|0.030|
|diffp_imp_gradp|✅ proved - incomplete|shostak|0.068|
|diffD_imp_gradD_TCC1|✅ proved - incomplete|shostak|0.030|
|diffD_imp_gradD|✅ proved - incomplete|shostak|0.030|
|partials_TCC1|✅ proved - incomplete|shostak|0.114|
|partials_TCC2|✅ proved - complete|shostak|0.030|
|partials_TCC3|✅ proved - incomplete|shostak|0.090|
|partials_TCC4|✅ proved - incomplete|shostak|0.437|
|partials_TCC5|✅ proved - incomplete|shostak|0.106|
|partials_TCC6|✅ proved - incomplete|shostak|0.050|
|partials_TCC7|✅ proved - incomplete|shostak|0.360|
|partials_TCC8|✅ proved - incomplete|shostak|0.474|
|partials_TCC9|✅ proved - incomplete|shostak|0.106|
|partials_TCC10|✅ proved - incomplete|shostak|0.060|
|partials_TCC11|✅ proved - incomplete|shostak|0.390|
|partials_TCC12|✅ proved - incomplete|shostak|0.215|
|partials_TCC13|✅ proved - incomplete|shostak|0.115|
|partials_TCC14|✅ proved - incomplete|shostak|0.226|
|partials_length|✅ proved - incomplete|shostak|0.322|
|gradient_TCC1|✅ proved - incomplete|shostak|0.215|
|gradient_TCC2|✅ proved - incomplete|shostak|0.206|
|gradient_TCC3|✅ proved - incomplete|shostak|0.066|
|grad_nth_TCC1|✅ proved - incomplete|shostak|0.334|
|grad_nth_TCC2|✅ proved - incomplete|shostak|0.350|
|grad_nth|✅ proved - incomplete|shostak|0.060|
|directional_deriv_pre2_TCC1|✅ proved - incomplete|shostak|0.420|
|directional_deriv_pre2_TCC2|✅ proved - incomplete|shostak|0.216|
|directional_deriv_pre2_TCC3|✅ proved - incomplete|shostak|0.440|
|directional_deriv_pre2|✅ proved - incomplete|shostak|0.412|
|directional_deriv_is_grad_TCC1|✅ proved - incomplete|shostak|0.030|
|directional_deriv_is_grad_TCC2|✅ proved - incomplete|shostak|0.029|
|directional_deriv_is_grad_TCC3|✅ proved - incomplete|shostak|0.040|
|directional_deriv_is_grad_TCC4|✅ proved - incomplete|shostak|0.231|
|directional_deriv_is_grad_TCC5|✅ proved - incomplete|shostak|0.106|
|directional_deriv_is_grad|✅ proved - incomplete|shostak|0.186|
|directional_deriv_is_init_partial_TCC1|✅ proved - incomplete|shostak|0.026|
|directional_deriv_is_init_partial_TCC2|✅ proved - incomplete|shostak|0.265|
|directional_deriv_is_init_partial_TCC3|✅ proved - incomplete|shostak|0.030|
|directional_deriv_is_init_partial_TCC4|✅ proved - incomplete|shostak|0.040|
|directional_deriv_is_init_partial_TCC5|✅ proved - incomplete|shostak|0.260|
|directional_deriv_is_init_partial|✅ proved - incomplete|shostak|0.110|
|directional_deriv_is_e_partial_TCC1|✅ proved - incomplete|shostak|0.075|
|directional_deriv_is_e_partial|✅ proved - incomplete|shostak|0.211|
|der_f_gradient_dot_e|✅ proved - incomplete|shostak|0.066|
|der_f_is_grad_e|✅ proved - incomplete|shostak|0.120|
|der_f_gradient_dot_TCC1|✅ proved - incomplete|shostak|0.030|
|der_f_gradient_dot|✅ proved - incomplete|shostak|0.056|
|der_f_is_grad_TCC1|✅ proved - incomplete|shostak|0.030|
|der_f_is_grad|✅ proved - incomplete|shostak|0.385|
|grad_append|✅ proved - incomplete|shostak|0.381|
|grad_filter|✅ proved - incomplete|shostak|0.109|
|grad_active|✅ proved - incomplete|shostak|0.170|
|active_grad|✅ proved - incomplete|shostak|0.100|

## `jacobian_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|jacobian_car|✅ proved - incomplete|shostak|0.053|
|jacobian_cdr_TCC1|✅ proved - incomplete|shostak|0.200|
|jacobian_cdr|✅ proved - incomplete|shostak|0.092|
|jac_2_grad|✅ proved - incomplete|shostak|0.060|
|jacobian_TCC1|✅ proved - incomplete|shostak|0.056|
|jacobian_TCC2|✅ proved - incomplete|shostak|0.138|
|jacobian_TCC3|✅ proved - incomplete|shostak|0.030|
|jacobian_TCC4|✅ proved - incomplete|shostak|0.227|
|jacobian_TCC5|✅ proved - incomplete|shostak|0.040|
|jacobian_TCC6|✅ proved - incomplete|shostak|0.120|
|jacobian_TCC7|✅ proved - incomplete|shostak|0.134|

## `continuous_derivatives`
No formula declaration found.
## `Taylor_Thrm_Multi`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|g_thm_TCC1|✅ proved - incomplete|shostak|0.255|
|g_thm_TCC2|✅ proved - incomplete|shostak|0.060|
|g_thm_TCC3|✅ proved - incomplete|shostak|0.779|
|g_thm_TCC4|✅ proved - incomplete|shostak|0.000|
|g_thm_TCC5|✅ proved - incomplete|shostak|0.471|
|g_thm|✅ proved - incomplete|shostak|7.695|
|g_thm_connect_TCC1|✅ proved - incomplete|shostak|0.060|
|g_thm_connect_TCC2|✅ proved - incomplete|shostak|0.751|
|g_thm_connect_TCC3|✅ proved - incomplete|shostak|1.297|
|g_thm_connect_TCC4|✅ proved - incomplete|shostak|0.476|
|g_thm_connect|✅ proved - incomplete|shostak|0.000|
|g_thm_connect_unit_TCC1|✅ proved - incomplete|shostak|0.065|
|g_thm_connect_unit_TCC2|✅ proved - incomplete|shostak|0.060|
|g_thm_connect_unit|✅ proved - incomplete|shostak|19.447|
|g_thm_dif_TCC1|✅ proved - incomplete|shostak|0.030|
|g_thm_dif_TCC2|✅ proved - incomplete|shostak|0.874|
|g_thm_dif_TCC3|✅ proved - incomplete|shostak|0.050|
|g_thm_dif|✅ proved - incomplete|shostak|1.982|
|g_thm_dif_connect_TCC1|✅ proved - incomplete|shostak|0.043|
|g_thm_dif_connect_TCC2|✅ proved - incomplete|shostak|0.181|
|g_thm_dif_connect_TCC3|✅ proved - incomplete|shostak|0.040|
|g_thm_dif_connect|✅ proved - incomplete|shostak|0.000|
|g_thm_dif_connect_unit_TCC1|✅ proved - incomplete|shostak|0.040|
|g_thm_dif_connect_unit|✅ proved - incomplete|shostak|9.517|
|g_thm_grad_TCC1|✅ proved - incomplete|shostak|0.110|
|g_thm_grad_TCC2|✅ proved - incomplete|shostak|0.040|
|g_thm_grad_TCC3|✅ proved - incomplete|shostak|0.040|
|g_thm_grad|✅ proved - incomplete|shostak|5.560|
|g_thm_grad_connect_TCC1|✅ proved - incomplete|shostak|0.100|
|g_thm_grad_connect_TCC2|✅ proved - incomplete|shostak|0.044|
|g_thm_grad_connect_TCC3|✅ proved - incomplete|shostak|0.040|
|g_thm_grad_connect|✅ proved - incomplete|shostak|0.568|
|g_thm_grad_connect_unit|✅ proved - incomplete|shostak|0.430|
|Taylors1_TCC1|✅ proved - incomplete|shostak|0.100|
|Taylors1_TCC2|✅ proved - incomplete|shostak|0.039|
|Taylors1_TCC3|✅ proved - incomplete|shostak|0.060|
|Taylors1|✅ proved - incomplete|shostak|2.611|
|Taylors_thm|✅ proved - incomplete|shostak|0.000|
|Taylors_Thm|✅ proved - incomplete|shostak|2.558|

## `unconstrained_first_order_optimality`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|first_order_nec_TCC1|✅ proved - incomplete|shostak|0.030|
|first_order_nec_TCC2|✅ proved - incomplete|shostak|0.050|
|first_order_nec_TCC3|✅ proved - incomplete|shostak|0.030|
|first_order_nec|✅ proved - incomplete|shostak|14.895|

## `linear_programming`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|lp_1_TCC1|✅ proved - complete|shostak|0.030|
|lp_1_TCC2|✅ proved - incomplete|shostak|0.230|
|lp_1_TCC3|✅ proved - complete|shostak|0.030|
|lp_1|✅ proved - incomplete|shostak|0.529|

## `exist_solution_lp`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|norm_program?_TCC1|✅ proved - incomplete|shostak|0.060|
|convergence_in_solution_set_TCC1|✅ proved - incomplete|shostak|0.080|
|convergence_in_solution_set_TCC2|✅ proved - incomplete|shostak|0.080|
|convergence_in_solution_set|✅ proved - incomplete|shostak|1.678|
|existance_np_1|✅ proved - incomplete|shostak|1.479|

## `Cauchy_seq`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy?_TCC1|✅ proved - incomplete|shostak|0.137|
|cauchy_equiv|✅ proved - incomplete|shostak|0.822|
|cauchy_V_Vn|✅ proved - incomplete|shostak|0.239|
|cauchy_convergence|✅ proved - incomplete|shostak|0.120|

## `Vector_VectorN`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Vn_2_V_TCC1|✅ proved - incomplete|shostak|0.030|
|V_2_Vn_TCC1|✅ proved - complete|shostak|0.030|
|V_2_Vn_TCC2|✅ proved - incomplete|shostak|0.060|
|V_2_Vn_TCC3|✅ proved - complete|shostak|0.030|
|V_2_Vn_TCC4|✅ proved - complete|shostak|0.040|
|V_2_Vn_TCC5|✅ proved - complete|shostak|0.030|
|V_2_Vn_TCC6|✅ proved - complete|shostak|0.030|
|V_2_Vn_TCC7|✅ proved - incomplete|shostak|0.153|
|Vn_V|✅ proved - incomplete|shostak|0.323|
|V_Vn|✅ proved - incomplete|shostak|0.393|
|Vn_V_seq|✅ proved - incomplete|shostak|0.070|
|V_Vn_seq|✅ proved - incomplete|shostak|0.060|
|d2_sigma_TCC1|✅ proved - complete|shostak|0.035|
|d2_sigma_TCC2|✅ proved - incomplete|shostak|0.304|
|d2_sigma|✅ proved - incomplete|shostak|1.057|
|norm2_d2_TCC1|✅ proved - incomplete|shostak|0.257|
|norm2_d2|✅ proved - incomplete|shostak|2.014|
|convergence_V_Vn|✅ proved - incomplete|shostak|0.260|

## `Lipschitz_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|LipD?_TCC1|✅ proved - incomplete|shostak|0.081|
|LipD?_TCC2|✅ proved - incomplete|shostak|0.090|
|Lip_cont_v2f|✅ proved - incomplete|shostak|0.000|
|Lip_cont_v2v|✅ proved - incomplete|shostak|0.295|
|Lip_norm_v2f|✅ proved - incomplete|shostak|0.322|
|Lip_norm_v2v|✅ proved - incomplete|shostak|0.470|

## `composition_function`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cont_comp|✅ proved - incomplete|shostak|0.220|

## `max_function`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|max_gen_TCC1|✅ proved - complete|shostak|0.104|
|max_TCC1|✅ proved - incomplete|shostak|0.125|
|max_plus_TCC1|✅ proved - incomplete|shostak|0.185|
|max_plus|✅ proved - incomplete|shostak|0.180|
|max_ineq|✅ proved - incomplete|shostak|0.081|
|max_const_TCC1|✅ proved - incomplete|shostak|0.727|
|max_const|✅ proved - incomplete|shostak|0.201|

## `mat_vec_mult`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|MN_full|✅ proved - incomplete|shostak|0.100|
|MN_rc|✅ proved - incomplete|shostak|0.203|
|entry_extensionality|✅ proved - incomplete|shostak|1.131|
|row_extensionality|✅ proved - incomplete|shostak|0.160|
|column_extensionality|✅ proved - incomplete|shostak|0.140|
|cdr_columns|✅ proved - incomplete|shostak|0.236|
|cdr_columns_full|✅ proved - incomplete|shostak|0.150|
|matvec_TCC1|✅ proved - incomplete|shostak|0.052|
|matvec_TCC2|✅ proved - incomplete|shostak|0.070|
|matvec_TCC3|✅ proved - incomplete|shostak|0.070|
|matvec_TCC4|✅ proved - incomplete|shostak|0.149|
|matvec_TCC5|✅ proved - complete|shostak|0.040|
|matvec_TCC6|✅ proved - incomplete|shostak|0.080|
|times_TCC1|✅ proved - incomplete|shostak|0.090|
|matv_test_TCC1|✅ proved - incomplete|shostak|0.170|
|matv_test|✅ proved - incomplete|shostak|0.050|
|matv_nth_TCC1|✅ proved - incomplete|shostak|0.080|
|matv_nth|✅ proved - incomplete|shostak|0.890|
|max_a_TCC1|✅ proved - incomplete|shostak|0.060|
|max_a_TCC2|✅ proved - incomplete|shostak|0.090|
|max_a_TCC3|✅ proved - incomplete|shostak|0.075|
|max_a_TCC4|✅ proved - incomplete|shostak|0.050|
|max_a_TCC5|✅ proved - incomplete|shostak|0.090|
|max_a_TCC6|✅ proved - incomplete|shostak|0.080|
|max_a_max_TCC1|✅ proved - incomplete|shostak|0.058|
|max_a_max_TCC2|✅ proved - incomplete|shostak|0.090|
|max_a_max|✅ proved - incomplete|shostak|0.878|
|max_a_row_TCC1|✅ proved - incomplete|shostak|0.060|
|max_a_row_TCC2|✅ proved - incomplete|shostak|0.040|
|max_a_row|✅ proved - incomplete|shostak|0.784|
|matv_norm_inf_TCC1|✅ proved - incomplete|shostak|0.264|
|matv_norm_inf_TCC2|✅ proved - incomplete|shostak|0.150|
|matv_norm_inf_TCC3|✅ proved - incomplete|shostak|0.072|
|matv_norm_inf_TCC4|✅ proved - incomplete|shostak|0.030|
|matv_norm_inf|✅ proved - incomplete|shostak|0.292|
|vec2mat_TCC1|✅ proved - incomplete|shostak|0.060|
|vec2mat_TCC2|✅ proved - incomplete|shostak|0.030|
|vec2mat_TCC3|✅ proved - incomplete|shostak|0.070|
|vec2mat_TCC4|✅ proved - incomplete|shostak|0.385|
|vec2mat_id|✅ proved - incomplete|shostak|0.150|
|matv_matmat|✅ proved - incomplete|shostak|2.657|
|vec2mat_mult|✅ proved - incomplete|shostak|2.056|
|matv_dist_sum_TCC1|✅ proved - incomplete|shostak|0.060|
|matv_dist_sum|✅ proved - incomplete|shostak|2.026|
|matv_dist_scal_TCC1|✅ proved - incomplete|shostak|0.060|
|matv_dist_scal|✅ proved - incomplete|shostak|1.003|
|matv_dist_sub_TCC1|✅ proved - incomplete|shostak|0.140|
|matv_dist_sub|✅ proved - incomplete|shostak|0.147|
|matv_asso_TCC1|✅ proved - incomplete|shostak|0.119|
|matv_asso_TCC2|✅ proved - incomplete|shostak|0.130|
|matv_asso|✅ proved - incomplete|shostak|0.343|
|matv_add_zero_TCC1|✅ proved - incomplete|shostak|0.161|
|matv_add_zero|✅ proved - incomplete|shostak|1.469|
|matv_zerovec|✅ proved - incomplete|shostak|0.516|

## `convergence_vec2vec`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|nth_TCC1|✅ proved - incomplete|shostak|0.050|
|cdr_TCC1|✅ proved - complete|shostak|0.020|
|cdr_TCC2|✅ proved - incomplete|shostak|0.050|
|cdr_TCC3|✅ proved - incomplete|shostak|0.080|
|NQ_TCC1|✅ proved - incomplete|shostak|0.304|
|NQ_TCC2|✅ proved - incomplete|shostak|0.045|
|NQ_TCC3|✅ proved - incomplete|shostak|0.060|
|NQ_TCC4|✅ proved - incomplete|shostak|0.193|
|NQ_TCC5|✅ proved - incomplete|shostak|0.060|
|NQ_TCC6|✅ proved - incomplete|shostak|0.000|
|diff_nth_cdr_TCC1|✅ proved - incomplete|shostak|0.190|
|diff_nth_cdr|✅ proved - incomplete|shostak|0.160|
|every_mat|✅ proved - incomplete|shostak|0.363|
|pre_der_TCC1|✅ proved - incomplete|shostak|0.120|
|pre_der_TCC2|✅ proved - incomplete|shostak|0.467|
|pre_der_TCC3|✅ proved - incomplete|shostak|0.204|
|pre_der_TCC4|✅ proved - incomplete|shostak|0.120|
|pre_der_TCC5|✅ proved - incomplete|shostak|0.036|
|pre_der_TCC6|✅ proved - incomplete|shostak|0.150|
|pre_der_TCC7|✅ proved - incomplete|shostak|0.164|
|pre_der_TCC8|✅ proved - incomplete|shostak|0.130|
|pre_der_TCC9|✅ proved - incomplete|shostak|0.325|
|pre_der_TCC10|✅ proved - incomplete|shostak|0.226|
|pre_der_TCC11|✅ proved - incomplete|shostak|0.130|
|pre_der_TCC12|✅ proved - incomplete|shostak|0.567|
|pre_der_TCC13|✅ proved - incomplete|shostak|0.090|
|pre_der_TCC14|✅ proved - incomplete|shostak|0.120|
|pre_der_TCC15|✅ proved - incomplete|shostak|0.549|
|pre_der_TCC16|✅ proved - incomplete|shostak|0.160|
|pre_der_TCC17|✅ proved - incomplete|shostak|0.205|
|pre_der_TCC18|✅ proved - incomplete|shostak|0.136|
|pre_der_TCC19|✅ proved - incomplete|shostak|0.315|
|pre_der_TCC20|✅ proved - incomplete|shostak|0.290|
|pre_der_nth_TCC1|✅ proved - incomplete|shostak|0.223|
|pre_der_nth_TCC2|✅ proved - incomplete|shostak|0.549|
|pre_der_nth|✅ proved - incomplete|shostak|3.302|
|pre_der_nth_grad_TCC1|✅ proved - incomplete|shostak|0.030|
|pre_der_nth_grad_TCC2|✅ proved - incomplete|shostak|0.036|
|pre_der_nth_grad_TCC3|✅ proved - incomplete|shostak|0.302|
|pre_der_nth_grad_TCC4|✅ proved - incomplete|shostak|0.586|
|pre_der_nth_grad_TCC5|✅ proved - incomplete|shostak|0.335|
|pre_der_nth_grad|✅ proved - incomplete|shostak|0.160|
|pre_der_nth_p_TCC1|✅ proved - incomplete|shostak|0.165|
|pre_der_nth_p_TCC2|✅ proved - incomplete|shostak|0.539|
|pre_der_nth_p|✅ proved - incomplete|shostak|0.613|
|del_ch_TCC1|✅ proved - incomplete|shostak|0.080|
|del_ch_TCC2|✅ proved - incomplete|shostak|0.081|
|del_ch_p_TCC1|✅ proved - incomplete|shostak|0.080|
|del_ch_p_TCC2|✅ proved - incomplete|shostak|0.083|
|del_nth_TCC1|✅ proved - incomplete|shostak|0.399|
|del_nth|✅ proved - incomplete|shostak|2.217|
|del_nth_p_TCC1|✅ proved - incomplete|shostak|0.090|
|del_nth_p|✅ proved - incomplete|shostak|2.036|
|derivable_nth_mat|✅ proved - incomplete|shostak|1.929|
|derivable_nth_mat_point|✅ proved - incomplete|shostak|6.527|
|der_f_TCC1|✅ proved - incomplete|shostak|0.045|
|der_f_TCC2|✅ proved - incomplete|shostak|4.089|
|der_f_TCC3|✅ proved - incomplete|shostak|0.050|
|der_f_TCC4|✅ proved - incomplete|shostak|0.505|
|conv_zero_nth_TCC1|✅ proved - incomplete|shostak|0.124|
|conv_zero_nth_TCC2|✅ proved - incomplete|shostak|0.446|
|conv_zero_nth|✅ proved - incomplete|shostak|2.065|
|der_f_unique_TCC1|✅ proved - incomplete|shostak|0.040|
|der_f_unique_TCC2|✅ proved - incomplete|shostak|0.060|
|der_f_unique|✅ proved - incomplete|shostak|0.223|
|pre_diff_cont_TCC1|✅ proved - incomplete|shostak|0.219|
|pre_diff_cont_TCC2|✅ proved - incomplete|shostak|0.359|
|pre_diff_cont_TCC3|✅ proved - incomplete|shostak|0.373|
|pre_diff_cont_TCC4|✅ proved - incomplete|shostak|0.234|
|pre_diff_cont|✅ proved - incomplete|shostak|1.863|
|diff_cont|✅ proved - incomplete|shostak|1.747|
|der?_TCC1|✅ proved - incomplete|shostak|0.698|
|pre_der_der_p_TCC1|✅ proved - incomplete|shostak|0.052|
|pre_der_der_p|✅ proved - incomplete|shostak|4.488|
|der_nth_mat_point_TCC1|✅ proved - incomplete|shostak|0.030|
|der_nth_mat_point_TCC2|✅ proved - incomplete|shostak|0.400|
|der_nth_mat_point_TCC3|✅ proved - incomplete|shostak|0.045|
|der_nth_mat_point|✅ proved - incomplete|shostak|0.140|
|derivable_subtype_TCC1|✅ proved - incomplete|shostak|0.036|
|derivable_subtype_TCC2|✅ proved - incomplete|shostak|0.000|
|derivable_subtype|✅ proved - incomplete|shostak|0.153|
|der_subtype_TCC1|✅ proved - incomplete|shostak|0.040|
|der_subtype|✅ proved - incomplete|shostak|0.294|

## `chain_rule_multi`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|pre_chain_addzero_triag_TCC1|✅ proved - incomplete|shostak|0.235|
|pre_chain_addzero_triag_TCC2|✅ proved - incomplete|shostak|0.040|
|pre_chain_addzero_triag_TCC3|✅ proved - incomplete|shostak|0.060|
|pre_chain_addzero_triag_TCC4|✅ proved - incomplete|shostak|0.339|
|pre_chain_addzero_triag_TCC5|✅ proved - incomplete|shostak|0.625|
|pre_chain_addzero_triag_TCC6|✅ proved - incomplete|shostak|0.095|
|pre_chain_addzero_triag_TCC7|✅ proved - incomplete|shostak|0.140|
|pre_chain_addzero_triag_TCC8|✅ proved - incomplete|shostak|0.393|
|pre_chain_addzero_triag_TCC9|✅ proved - incomplete|shostak|0.090|
|pre_chain_addzero_triag_TCC10|✅ proved - incomplete|shostak|0.190|
|pre_chain_addzero_triag_TCC11|✅ proved - incomplete|shostak|0.547|
|pre_chain_addzero_triag_TCC12|✅ proved - incomplete|shostak|0.385|
|pre_chain_addzero_triag|✅ proved - incomplete|shostak|1.918|
|pre_chain_bound_TCC1|✅ proved - incomplete|shostak|0.030|
|pre_chain_bound_TCC2|✅ proved - incomplete|shostak|0.294|
|pre_chain_bound|✅ proved - incomplete|shostak|0.952|
|g_diff_Meps2_bound_TCC1|✅ proved - incomplete|shostak|0.305|
|g_diff_Meps2_bound_TCC2|✅ proved - incomplete|shostak|0.051|
|g_diff_Meps2_bound_TCC3|✅ proved - incomplete|shostak|0.090|
|g_diff_Meps2_bound_TCC4|✅ proved - incomplete|shostak|0.100|
|g_diff_Meps2_bound_TCC5|✅ proved - incomplete|shostak|0.278|
|g_diff_Meps2_bound_TCC6|✅ proved - incomplete|shostak|0.065|
|g_diff_Meps2_bound|✅ proved - incomplete|shostak|0.920|
|f_diff_Meps2_bound|✅ proved - incomplete|shostak|4.576|
|chain_rule_multi_TCC1|✅ proved - incomplete|shostak|0.038|
|chain_rule_multi|✅ proved - incomplete|shostak|3.998|
|chain_rule_multi_subdom_TCC1|✅ proved - incomplete|shostak|0.060|
|chain_rule_multi_subdom_TCC2|✅ proved - incomplete|shostak|0.050|
|chain_rule_multi_subdom_TCC3|✅ proved - incomplete|shostak|0.050|
|chain_rule_multi_subdom|✅ proved - incomplete|shostak|3.723|
|chain_rule_multi_der_TCC1|✅ proved - incomplete|shostak|0.329|
|chain_rule_multi_der_TCC2|✅ proved - incomplete|shostak|0.040|
|chain_rule_multi_der|✅ proved - incomplete|shostak|0.000|
|chain_rule_multi_der_subdom_TCC1|✅ proved - incomplete|shostak|0.315|
|chain_rule_multi_der_subdom_TCC2|✅ proved - incomplete|shostak|0.029|
|chain_rule_multi_der_subdom|✅ proved - incomplete|shostak|3.306|
|chain_rule_multi_der_is_TCC1|✅ proved - incomplete|shostak|0.050|
|chain_rule_multi_der_is_TCC2|✅ proved - incomplete|shostak|0.042|
|chain_rule_multi_der_is_TCC3|✅ proved - incomplete|shostak|0.310|
|chain_rule_multi_der_is|✅ proved - incomplete|shostak|0.733|
|chain_rule_multi_der_is_subdom|✅ proved - incomplete|shostak|0.710|

## `lift_real_fun_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|lift_rd_TCC1|✅ proved - incomplete|shostak|0.030|
|dd_lift_dd|✅ proved - incomplete|shostak|0.591|
|lift_re_TCC1|✅ proved - incomplete|shostak|0.030|
|lift_re_TCC2|✅ proved - incomplete|shostak|0.030|
|lift_diff_TCC1|✅ proved - complete|shostak|0.020|
|lift_diff_TCC2|✅ proved - complete|shostak|0.100|
|lift_diff_TCC3|✅ proved - incomplete|shostak|0.030|
|lift_diff_TCC4|✅ proved - incomplete|shostak|0.030|
|lift_diff|✅ proved - incomplete|shostak|3.286|
|lift_der_TCC1|✅ proved - incomplete|shostak|0.030|
|lift_der|✅ proved - incomplete|shostak|3.970|
|liftr_TCC1|✅ proved - incomplete|shostak|0.030|
|lift_diff_right|✅ proved - incomplete|shostak|1.904|
|lift_der_right_TCC1|✅ proved - incomplete|shostak|0.049|
|lift_der_right_TCC2|✅ proved - incomplete|shostak|0.050|
|lift_der_right|✅ proved - incomplete|shostak|1.819|
|same_on_D_same_diff|✅ proved - incomplete|shostak|0.240|
|same_on_D_same_der_TCC1|✅ proved - incomplete|shostak|0.048|
|same_on_D_same_der|✅ proved - incomplete|shostak|0.477|

## `bounded_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|ua_u|✅ proved - complete|shostak|0.040|
|ub_u|✅ proved - complete|shostak|0.052|
|u_uaob|✅ proved - complete|shostak|0.100|
|ua_u_op|✅ proved - incomplete|shostak|0.055|
|ub_u_op|✅ proved - incomplete|shostak|0.060|
|u_uaob_op|✅ proved - incomplete|shostak|0.069|
|unbounded_below_no_glob_minimizer|✅ proved - incomplete|shostak|0.120|
|unbounded_above_no_glob_maximizer|✅ proved - incomplete|shostak|0.119|
|unbounded_no_glob_minimizer_maximizer|✅ proved - incomplete|shostak|0.316|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Mac OS X (Intel)] (Nov 14, 2020 23:13)|
| Patch Version| n/a|
| Library Path| `/Applications/pvs-7.1.0/pvslib/`<br/>`/Applications/pvs-7.1.0/lib/`<br/>`/Applications/pvs-7.1.0/pvslib/float/`<br/>`/Applications/pvs-7.1.0/pvslib/pvsio_utils/`|
| Loaded Patches | `/Applications/pvs-7.1.0/pvslib/.pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230712-static-update.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230710-tcc-gen.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230707-defattach.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230706-extrategies.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210323-wish.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210225-cl2pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210715a.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210715.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210707.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210706.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210511.lisp`|
