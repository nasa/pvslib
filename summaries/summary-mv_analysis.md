# Summary for `mv_analysis`
Run started at 5:23:11 9/20/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **1015**   | **1015**    | **1015**    | **0**  | **8:37.806 s**   |
|top|0|0|0|0|0.000|
|domain_vec2real_def|0|0|0|0|0.000|
|vector_arithmetic|129|129|129|0|37.992|
|matrix_vector_multiplication|29|29|29|0|7.292|
|norms|70|70|70|0|25.748|
|cauchy_schwarz|10|10|10|0|2.346|
|subsequences|1|1|1|0|0.080|
|unconstrained_global_extrema|9|9|9|0|0.452|
|sum_vecs|25|25|25|0|4.321|
|norm_1_defs|3|3|3|0|0.210|
|norm_1_sequential_criterian|2|2|2|0|0.321|
|norm_1_bolzano_weierstrass|6|6|6|0|5.154|
|norm_1_extreme_value_theorem|14|14|14|0|4.496|
|norms_equiv|36|36|36|0|8.922|
|norms_equiv_general|1|1|1|0|0.060|
|vector_sequences|18|18|18|0|5.908|
|closed_bounded_domain|6|6|6|0|0.879|
|continuity_multivar|22|22|22|0|7.640|
|sequential_criterian|2|2|2|0|0.300|
|bolzano_weierstrass|6|6|6|0|0.883|
|extreme_value_theorem|1|1|1|0|0.362|
|unconstrained_local_extrema|9|9|9|0|1.582|
|fundamentals_constrained_optimization|50|50|50|0|10.315|
|topology_Rn|5|5|5|0|4.068|
|derivative_domain_multi|44|44|44|0|10.614|
|differentiable_def|7|7|7|0|0.751|
|init_partial_def|67|67|67|0|29.548|
|directional_deriv_def|64|64|64|0|37.835|
|partial_def|20|20|20|0|6.349|
|gradient_def|54|54|54|0|14.877|
|jacobian_def|11|11|11|0|1.929|
|continuous_derivatives|0|0|0|0|0.000|
|Taylor_Thrm_Multi|39|39|39|0|1:20.605|
|unconstrained_first_order_optimality|4|4|4|0|24.666|
|linear_programming|4|4|4|0|1.286|
|exist_solution_lp|5|5|5|0|5.024|
|Cauchy_seq|4|4|4|0|1.936|
|Vector_VectorN|18|18|18|0|7.938|
|Lipschitz_def|6|6|6|0|1.921|
|composition_function|1|1|1|0|0.328|
|max_function|7|7|7|0|2.407|
|mat_vec_mult|54|54|54|0|32.844|
|convergence_vec2vec|83|83|83|0|1:7.830|
|chain_rule_multi|41|41|41|0|39.158|
|lift_real_fun_def|19|19|19|0|19.207|
|bounded_def|9|9|9|0|1.422|
## Detailed Summary 
## `top`
No formula declaration found.
## `domain_vec2real_def`
No formula declaration found.
## `vector_arithmetic`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|wf_1|✅ proved - incomplete|shostak|0.179|
|zero_vec_TCC1|✅ proved - incomplete|shostak|0.060|
|zero_vec_TCC2|✅ proved - complete|shostak|0.050|
|zero_vec_TCC3|✅ proved - complete|shostak|0.040|
|zero_vec_TCC4|✅ proved - incomplete|shostak|0.100|
|zero_vec0_TCC1|✅ proved - complete|shostak|0.040|
|zero_vec0|✅ proved - incomplete|shostak|0.333|
|nth_zero_TCC1|✅ proved - incomplete|shostak|0.060|
|nth_zero|✅ proved - incomplete|shostak|0.160|
|zero_cdr_TCC1|✅ proved - incomplete|shostak|0.050|
|zero_cdr_TCC2|✅ proved - complete|shostak|0.040|
|zero_cdr|✅ proved - incomplete|shostak|0.208|
|every_zero|✅ proved - incomplete|shostak|0.177|
|constant_vec_TCC1|✅ proved - incomplete|shostak|0.100|
|e_TCC1|✅ proved - complete|shostak|0.060|
|e_TCC2|✅ proved - incomplete|shostak|0.100|
|e_TCC3|✅ proved - incomplete|shostak|0.100|
|e_cdr_TCC1|✅ proved - incomplete|shostak|0.060|
|e_cdr_TCC2|✅ proved - complete|shostak|0.057|
|e_cdr|✅ proved - incomplete|shostak|0.200|
|nth_e_TCC1|✅ proved - incomplete|shostak|0.060|
|nth_e_TCC2|✅ proved - incomplete|shostak|0.067|
|nth_e|✅ proved - incomplete|shostak|0.266|
|every_e|✅ proved - incomplete|shostak|0.130|
|e_not_zero|✅ proved - incomplete|shostak|0.216|
|test_zero1|✅ proved - incomplete|shostak|0.050|
|test_zero2|✅ proved - incomplete|shostak|0.040|
|test_e1|✅ proved - incomplete|shostak|0.050|
|test_e2|✅ proved - incomplete|shostak|0.040|
|test_e3|✅ proved - incomplete|shostak|0.050|
|test_constant_vec1|✅ proved - incomplete|shostak|0.040|
|test_constant_vec2|✅ proved - incomplete|shostak|0.120|
|greater?_TCC1|✅ proved - incomplete|shostak|0.039|
|greater?_TCC2|✅ proved - incomplete|shostak|0.070|
|greater?_TCC3|✅ proved - incomplete|shostak|0.040|
|greater?_TCC4|✅ proved - complete|shostak|0.060|
|greater_eq?_TCC1|✅ proved - incomplete|shostak|0.060|
|greater_eq?_TCC2|✅ proved - incomplete|shostak|0.070|
|greater_eq?_TCC3|✅ proved - complete|shostak|0.050|
|less?_TCC1|✅ proved - incomplete|shostak|0.060|
|less?_TCC2|✅ proved - incomplete|shostak|0.070|
|less?_TCC3|✅ proved - complete|shostak|0.050|
|less_eq?_TCC1|✅ proved - incomplete|shostak|0.060|
|less_eq?_TCC2|✅ proved - incomplete|shostak|0.070|
|less_eq?_TCC3|✅ proved - complete|shostak|0.050|
|g_1_TCC1|✅ proved - incomplete|shostak|0.040|
|g_1|✅ proved - incomplete|shostak|0.080|
|ge_1|✅ proved - incomplete|shostak|0.050|
|l_1|✅ proved - incomplete|shostak|0.090|
|cdr_scal_TCC1|✅ proved - incomplete|shostak|0.081|
|cdr_scal|✅ proved - incomplete|shostak|0.190|
|cdr_sub_TCC1|✅ proved - incomplete|shostak|0.247|
|cdr_sub|✅ proved - incomplete|shostak|0.365|
|cdr_add_TCC1|✅ proved - incomplete|shostak|0.210|
|cdr_add|✅ proved - incomplete|shostak|0.377|
|car_scal|✅ proved - incomplete|shostak|0.188|
|car_sub|✅ proved - incomplete|shostak|0.301|
|neg_1_scal|✅ proved - incomplete|shostak|0.221|
|add_commute|✅ proved - incomplete|shostak|0.273|
|sub_idx|✅ proved - incomplete|shostak|0.060|
|asso_1_scal|✅ proved - incomplete|shostak|0.183|
|scal_asso|✅ proved - incomplete|shostak|0.415|
|asso_v|✅ proved - incomplete|shostak|0.230|
|asso_dot|✅ proved - incomplete|shostak|0.273|
|asso_add|✅ proved - incomplete|shostak|0.525|
|asso_sub_commute|✅ proved - incomplete|shostak|1.452|
|scal_cancel|✅ proved - incomplete|shostak|0.651|
|add_zero|✅ proved - incomplete|shostak|0.735|
|zero_id|✅ proved - incomplete|shostak|0.189|
|scal_zero|✅ proved - incomplete|shostak|0.110|
|dot_zero|✅ proved - incomplete|shostak|0.183|
|zero_mult|✅ proved - incomplete|shostak|0.517|
|add_cancel|✅ proved - incomplete|shostak|0.614|
|sub_zero|✅ proved - incomplete|shostak|0.251|
|mult_zero|✅ proved - incomplete|shostak|0.202|
|add_zero_trick|✅ proved - incomplete|shostak|0.977|
|diff_zero|✅ proved - incomplete|shostak|1.170|
|add_zero_imp_eq|✅ proved - incomplete|shostak|0.000|
|one_idx|✅ proved - incomplete|shostak|0.190|
|zero_scal|✅ proved - incomplete|shostak|0.070|
|sub_self|✅ proved - incomplete|shostak|0.340|
|sub_sandwich|✅ proved - incomplete|shostak|0.349|
|sub_equal_id|✅ proved - incomplete|shostak|0.369|
|sub_equal_id1|✅ proved - incomplete|shostak|0.244|
|neg_1|✅ proved - incomplete|shostak|0.878|
|dist_1|✅ proved - incomplete|shostak|1.298|
|dist|✅ proved - incomplete|shostak|0.466|
|dist_scalar|✅ proved - incomplete|shostak|0.248|
|dist_scalar_sub|✅ proved - incomplete|shostak|0.830|
|dist_list|✅ proved - incomplete|shostak|0.752|
|nth_dist_TCC1|✅ proved - incomplete|shostak|0.060|
|nth_dist|✅ proved - incomplete|shostak|0.317|
|nth_sum_TCC1|✅ proved - incomplete|shostak|0.070|
|nth_sum_TCC2|✅ proved - incomplete|shostak|0.070|
|nth_sum|✅ proved - incomplete|shostak|0.634|
|nth_subtract_TCC1|✅ proved - incomplete|shostak|0.090|
|nth_subtract|✅ proved - incomplete|shostak|0.687|
|sub_dist|✅ proved - incomplete|shostak|0.431|
|dot_linear|✅ proved - incomplete|shostak|0.212|
|dot_short_TCC1|✅ proved - incomplete|shostak|0.196|
|dot_short_TCC2|✅ proved - incomplete|shostak|0.210|
|dot_short_TCC3|✅ proved - incomplete|shostak|0.100|
|dot_short_TCC4|✅ proved - complete|shostak|0.050|
|F_sum_TCC1|✅ proved - incomplete|shostak|0.100|
|F_sum_TCC2|✅ proved - incomplete|shostak|0.092|
|dot_short_is_sig|✅ proved - incomplete|shostak|0.310|
|F_shift|✅ proved - incomplete|shostak|0.300|
|F_sum_shift|✅ proved - incomplete|shostak|0.640|
|dot_is_sig|✅ proved - incomplete|shostak|1.184|
|dot_is_sig2|✅ proved - incomplete|shostak|0.904|
|dot_short_is_dot_TCC1|✅ proved - incomplete|shostak|0.200|
|dot_short_is_dot|✅ proved - incomplete|shostak|0.249|
|dot_is_sigma_TCC1|✅ proved - incomplete|shostak|0.060|
|dot_is_sigma|✅ proved - incomplete|shostak|0.236|
|dot_prod_zero|✅ proved - incomplete|shostak|0.090|
|dot_prod_e_TCC1|✅ proved - complete|shostak|0.040|
|dot_prod_e|✅ proved - incomplete|shostak|0.260|
|dot_equality|✅ proved - incomplete|shostak|0.563|
|dot_equality1|✅ proved - incomplete|shostak|0.898|
|dot_equality_e|✅ proved - incomplete|shostak|0.110|
|dot_scalar1|✅ proved - incomplete|shostak|0.288|
|dot_dist|✅ proved - incomplete|shostak|0.752|
|dot_dist_sub|✅ proved - incomplete|shostak|0.902|
|quad_cancel|✅ proved - incomplete|shostak|1.248|
|quad_cancel_plus|✅ proved - incomplete|shostak|0.120|
|quad_move|✅ proved - incomplete|shostak|3.122|
|quad_cancel_p_m|✅ proved - incomplete|shostak|0.491|
|quad_cancel_tail|✅ proved - incomplete|shostak|0.000|
|add_sub_zero|✅ proved - incomplete|shostak|0.170|

## `matrix_vector_multiplication`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|mult_TCC1|✅ proved - incomplete|shostak|0.160|
|mult_TCC2|✅ proved - incomplete|shostak|0.130|
|mult_length|✅ proved - incomplete|shostak|0.262|
|mult_TCC3|✅ proved - incomplete|shostak|0.060|
|mmult_nth_TCC1|✅ proved - incomplete|shostak|0.073|
|mmult_nth|✅ proved - incomplete|shostak|0.631|
|max_row_2_TCC1|✅ proved - incomplete|shostak|0.100|
|max_row_2_TCC2|✅ proved - incomplete|shostak|0.103|
|max_row_2|✅ proved - incomplete|shostak|0.806|
|max_row_2_TCC3|✅ proved - incomplete|shostak|0.090|
|max_row_2_TCC4|✅ proved - incomplete|shostak|0.101|
|mmult_inf_bound_TCC1|✅ proved - incomplete|shostak|0.070|
|mmult_inf_bound_TCC2|✅ proved - incomplete|shostak|0.080|
|mmult_inf_bound|✅ proved - incomplete|shostak|0.468|
|mmult_dist_TCC1|✅ proved - incomplete|shostak|0.080|
|mmult_dist|✅ proved - incomplete|shostak|0.946|
|mmult_scal_TCC1|✅ proved - incomplete|shostak|0.090|
|mmult_scal|✅ proved - incomplete|shostak|0.789|
|mmult_sub_dist_TCC1|✅ proved - incomplete|shostak|0.076|
|mmult_sub_dist|✅ proved - incomplete|shostak|0.205|
|eye_TCC1|✅ proved - complete|shostak|0.050|
|eye_TCC2|✅ proved - complete|shostak|0.050|
|eye_TCC3|✅ proved - complete|shostak|0.060|
|eye_TCC4|✅ proved - complete|shostak|0.060|
|mult_1|✅ proved - incomplete|shostak|0.060|
|eye_1|✅ proved - incomplete|shostak|0.056|
|eye_2|✅ proved - incomplete|shostak|0.709|
|eye_3|✅ proved - incomplete|shostak|0.887|
|mult_3|✅ proved - incomplete|shostak|0.040|

## `norms`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|norm?_TCC1|✅ proved - incomplete|shostak|0.060|
|norm?_TCC2|✅ proved - incomplete|shostak|0.140|
|norm?_TCC3|✅ proved - incomplete|shostak|0.280|
|norm?_TCC4|✅ proved - incomplete|shostak|0.065|
|max_TCC1|✅ proved - incomplete|shostak|0.080|
|max_TCC2|✅ proved - complete|shostak|0.050|
|max_nth|✅ proved - incomplete|shostak|0.280|
|entry_mult_TCC1|✅ proved - incomplete|shostak|0.097|
|entry_mult_TCC2|✅ proved - complete|shostak|0.100|
|abs_TCC1|✅ proved - incomplete|shostak|0.050|
|abs_TCC2|✅ proved - incomplete|shostak|0.060|
|abs_nth_TCC1|✅ proved - incomplete|shostak|0.070|
|abs_nth|✅ proved - incomplete|shostak|0.379|
|test_max_1|✅ proved - incomplete|shostak|0.050|
|test_abs_1|✅ proved - incomplete|shostak|0.050|
|test_sum|✅ proved - incomplete|shostak|0.042|
|test_entry_mult|✅ proved - incomplete|shostak|0.050|
|test_entry_mult_2|✅ proved - incomplete|shostak|0.040|
|abs_max_lists_TCC1|✅ proved - incomplete|shostak|0.090|
|abs_max_lists_TCC2|✅ proved - incomplete|shostak|0.283|
|abs_max_lists_TCC3|✅ proved - incomplete|shostak|0.090|
|abs_max_lists|✅ proved - incomplete|shostak|2.459|
|abs_pos|✅ proved - incomplete|shostak|0.267|
|abs_zero|✅ proved - incomplete|shostak|1.006|
|abs_max_triag_TCC1|✅ proved - incomplete|shostak|0.130|
|abs_max_triag_TCC2|✅ proved - incomplete|shostak|0.120|
|abs_max_triag_TCC3|✅ proved - incomplete|shostak|0.103|
|abs_max_triag|✅ proved - incomplete|shostak|5.557|
|sum_abs_pos|✅ proved - incomplete|shostak|0.310|
|sum_abs_lists|✅ proved - incomplete|shostak|0.879|
|sum_abs_zero|✅ proved - incomplete|shostak|0.795|
|sum_abs_triag|✅ proved - incomplete|shostak|2.759|
|norm_inf_TCC1|✅ proved - incomplete|shostak|0.253|
|norm_inf_TCC2|✅ proved - incomplete|shostak|0.290|
|norm_1_TCC1|✅ proved - incomplete|shostak|0.409|
|norm_1_TCC2|✅ proved - incomplete|shostak|0.234|
|norm_2sq_TCC1|✅ proved - incomplete|shostak|0.135|
|norm_2_TCC1|✅ proved - incomplete|shostak|1.375|
|norm_inf_recurse_TCC1|✅ proved - incomplete|shostak|0.090|
|norm_inf_recurse_TCC2|✅ proved - incomplete|shostak|0.072|
|norm_inf_recurse|✅ proved - incomplete|shostak|0.567|
|norm_one_recurse|✅ proved - incomplete|shostak|0.167|
|test_abs|✅ proved - incomplete|shostak|0.050|
|test_1|✅ proved - incomplete|shostak|0.040|
|test_2sq|✅ proved - incomplete|shostak|0.050|
|big_kahuna|✅ proved - incomplete|shostak|0.060|
|norm_inf_constant_TCC1|✅ proved - incomplete|shostak|0.050|
|norm_inf_constant|✅ proved - incomplete|shostak|0.360|
|norm_reflex_TCC1|✅ proved - incomplete|shostak|0.102|
|norm_reflex_TCC2|✅ proved - incomplete|shostak|0.110|
|norm_reflex|✅ proved - incomplete|shostak|0.312|
|reverse_triag_TCC1|✅ proved - incomplete|shostak|0.093|
|reverse_triag|✅ proved - incomplete|shostak|0.291|
|norm_inf_nth|✅ proved - incomplete|shostak|0.150|
|norm_inf_nth_m_TCC1|✅ proved - complete|shostak|0.040|
|norm_inf_nth_m|✅ proved - incomplete|shostak|0.077|
|norm_inf_nth_ineq|✅ proved - incomplete|shostak|0.510|
|norm_inf_nth_ineq_m|✅ proved - incomplete|shostak|0.070|
|norm_inf_canc_TCC1|✅ proved - incomplete|shostak|0.211|
|norm_inf_canc_TCC2|✅ proved - incomplete|shostak|0.100|
|norm_inf_canc|✅ proved - incomplete|shostak|0.080|
|norm_inf_e_TCC1|✅ proved - incomplete|shostak|0.050|
|norm_inf_e_TCC2|✅ proved - complete|shostak|0.040|
|norm_inf_e|✅ proved - incomplete|shostak|0.472|
|norm_inf_e_scal_TCC1|✅ proved - incomplete|shostak|0.070|
|norm_inf_e_scal|✅ proved - incomplete|shostak|0.124|
|dot_max_ineq|✅ proved - incomplete|shostak|1.578|
|dot_equality_delta_TCC1|✅ proved - incomplete|shostak|0.140|
|dot_equality_delta_TCC2|✅ proved - incomplete|shostak|0.135|
|dot_equality_delta|✅ proved - incomplete|shostak|0.000|

## `cauchy_schwarz`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|dot_non_neg|✅ proved - incomplete|shostak|0.140|
|dot_pos|✅ proved - incomplete|shostak|0.370|
|dot_linear_right|✅ proved - incomplete|shostak|0.200|
|dot_linear_left|✅ proved - incomplete|shostak|0.079|
|dot_spread|✅ proved - incomplete|shostak|0.688|
|almost_cauchy_schwarz_TCC1|✅ proved - incomplete|shostak|0.080|
|almost_cauchy_schwarz|✅ proved - incomplete|shostak|0.356|
|cauchy_schwarz_TCC1|✅ proved - incomplete|shostak|0.050|
|cauchy_schwarz_TCC2|✅ proved - incomplete|shostak|0.060|
|cauchy_schwarz|✅ proved - incomplete|shostak|0.323|

## `subsequences`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|increase_seq_fact|✅ proved - complete|shostak|0.080|

## `unconstrained_global_extrema`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|min_global_1a|✅ proved - incomplete|shostak|0.052|
|min_global_1b_TCC1|✅ proved - incomplete|shostak|0.040|
|min_global_1b_TCC2|✅ proved - incomplete|shostak|0.060|
|min_global_1b_TCC3|✅ proved - complete|shostak|0.040|
|min_global_1b|✅ proved - incomplete|shostak|0.040|
|min_global_1c|✅ proved - incomplete|shostak|0.050|
|min_global_2|✅ proved - incomplete|shostak|0.050|
|min_max_global_1|✅ proved - incomplete|shostak|0.050|
|min_max_global_2|✅ proved - incomplete|shostak|0.070|

## `sum_vecs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Sigmaa_TCC1|✅ proved - incomplete|shostak|0.061|
|Sigmaa_TCC2|✅ proved - incomplete|shostak|0.070|
|Sigmaa_TCC3|✅ proved - incomplete|shostak|0.100|
|Sigmaa_TCC4|✅ proved - incomplete|shostak|0.180|
|Sigmaa_TCC5|✅ proved - incomplete|shostak|0.091|
|Sigma_TCC1|✅ proved - incomplete|shostak|0.080|
|Sigma_TCC2|✅ proved - incomplete|shostak|0.050|
|Sigma_TCC3|✅ proved - incomplete|shostak|0.090|
|Sigma_TCC4|✅ proved - incomplete|shostak|0.191|
|Sigma_TCC5|✅ proved - incomplete|shostak|0.050|
|Standard_sum_TCC1|✅ proved - incomplete|shostak|0.060|
|Standard_sum_TCC2|✅ proved - incomplete|shostak|0.050|
|Standard_sum_TCC3|✅ proved - incomplete|shostak|0.060|
|Standard_sum_TCC4|✅ proved - incomplete|shostak|0.090|
|Standard_sum_TCC5|✅ proved - incomplete|shostak|0.410|
|Standard_sum_TCC6|✅ proved - incomplete|shostak|0.058|
|Standard_sum_TCC7|✅ proved - complete|shostak|0.040|
|Standard_sum_TCC8|✅ proved - incomplete|shostak|1.038|
|Standard_test_TCC1|✅ proved - incomplete|shostak|0.090|
|Standard_test|✅ proved - incomplete|shostak|0.420|
|Standard_id_TCC1|✅ proved - incomplete|shostak|0.060|
|Standard_id_TCC2|✅ proved - incomplete|shostak|0.060|
|Standard_id|✅ proved - incomplete|shostak|0.302|
|Li?_TCC1|✅ proved - incomplete|shostak|0.060|
|Li_test|✅ proved - incomplete|shostak|0.560|

## `norm_1_defs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|norm_1_contp?_TCC1|✅ proved - incomplete|shostak|0.070|
|norm_1_convergence?_TCC1|✅ proved - incomplete|shostak|0.080|
|norm_1_bounded?_TCC1|✅ proved - incomplete|shostak|0.060|

## `norm_1_sequential_criterian`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sequential_1|✅ proved - incomplete|shostak|0.251|
|sequential_2|✅ proved - incomplete|shostak|0.070|

## `norm_1_bolzano_weierstrass`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|B_W_m_TCC1|✅ proved - incomplete|shostak|0.060|
|B_W_m|✅ proved - incomplete|shostak|2.427|
|B_W_TCC1|✅ proved - incomplete|shostak|0.052|
|B_W|✅ proved - incomplete|shostak|0.080|
|B_W_m_le|✅ proved - incomplete|shostak|2.462|
|B_W_le|✅ proved - incomplete|shostak|0.073|

## `norm_1_extreme_value_theorem`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|unbound_fun_TCC1|✅ proved - incomplete|shostak|0.060|
|unbound_fun_TCC2|✅ proved - incomplete|shostak|0.090|
|unbound_fun_TCC3|✅ proved - complete|shostak|0.050|
|unbound_fun_TCC4|✅ proved - incomplete|shostak|0.246|
|cont_on_cb_bounded|✅ proved - incomplete|shostak|1.380|
|least_ub_on_cb_TCC1|✅ proved - incomplete|shostak|0.060|
|least_ub_on_cb|✅ proved - incomplete|shostak|0.105|
|greatest_lb_on_cb|✅ proved - incomplete|shostak|0.112|
|nonempty_bounded|✅ proved - incomplete|shostak|0.080|
|glb_approach_seq_TCC1|✅ proved - incomplete|shostak|0.092|
|glb_approach_seq_TCC2|✅ proved - incomplete|shostak|0.317|
|greatest_lb_subseq|✅ proved - incomplete|shostak|1.212|
|min_on_closed_bounded|✅ proved - incomplete|shostak|0.260|
|max_on_closed_bounded|✅ proved - incomplete|shostak|0.432|

## `norms_equiv`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|equiv?_TCC1|✅ proved - incomplete|shostak|0.100|
|equiv_m?_TCC1|✅ proved - incomplete|shostak|0.050|
|equiv_trans|✅ proved - incomplete|shostak|0.000|
|equiv_1norm_imp_equiv|✅ proved - incomplete|shostak|0.470|
|norm1_div_TCC1|✅ proved - incomplete|shostak|0.060|
|norm1_div_TCC2|✅ proved - incomplete|shostak|0.060|
|norm1_div_TCC3|✅ proved - incomplete|shostak|0.070|
|norm1_div_TCC4|✅ proved - incomplete|shostak|0.120|
|norm1_div|✅ proved - incomplete|shostak|0.243|
|equiv_unit_imp_equiv_TCC1|✅ proved - incomplete|shostak|0.090|
|equiv_unit_imp_equiv|✅ proved - incomplete|shostak|0.560|
|standard_norm_TCC1|✅ proved - incomplete|shostak|0.090|
|standard_norm_TCC2|✅ proved - incomplete|shostak|0.050|
|standard_norm_TCC3|✅ proved - incomplete|shostak|0.114|
|standard_norm_TCC4|✅ proved - incomplete|shostak|0.070|
|standard_norm_TCC5|✅ proved - incomplete|shostak|0.060|
|standard_norm|✅ proved - incomplete|shostak|0.864|
|max_e_exists_TCC1|✅ proved - incomplete|shostak|0.050|
|max_e_exists_TCC2|✅ proved - incomplete|shostak|0.100|
|max_e_exists|✅ proved - incomplete|shostak|0.314|
|max_e_TCC1|✅ proved - incomplete|shostak|0.062|
|max_e_TCC2|✅ proved - incomplete|shostak|0.100|
|max_e_TCC3|✅ proved - incomplete|shostak|0.186|
|standard_norm_ineq|✅ proved - incomplete|shostak|1.001|
|one_norm_sum|✅ proved - incomplete|shostak|1.170|
|standard_max_e_one_norm_TCC1|✅ proved - incomplete|shostak|0.080|
|standard_max_e_one_norm_TCC2|✅ proved - incomplete|shostak|0.040|
|standard_max_e_one_norm_TCC3|✅ proved - incomplete|shostak|0.130|
|standard_max_e_one_norm|✅ proved - incomplete|shostak|0.247|
|norm_to_max_e_one_norm|✅ proved - incomplete|shostak|0.166|
|unit_sphere_norm_1_closed_bounded|✅ proved - incomplete|shostak|0.423|
|norm_achieve_max_usn1_TCC1|✅ proved - incomplete|shostak|0.130|
|norm_achieve_max_usn1|✅ proved - incomplete|shostak|0.605|
|norm_achieve_min_usn1_TCC1|✅ proved - incomplete|shostak|0.131|
|norm_achieve_min_usn1|✅ proved - incomplete|shostak|0.604|
|equiv_norm|✅ proved - incomplete|shostak|0.312|

## `norms_equiv_general`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|equiv_norm_m|✅ proved - incomplete|shostak|0.060|

## `vector_sequences`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|convergence?_TCC1|✅ proved - incomplete|shostak|0.103|
|convergence_equiv_m|✅ proved - incomplete|shostak|0.253|
|convergence_equiv|✅ proved - incomplete|shostak|0.050|
|convergence?_TCC2|✅ proved - incomplete|shostak|0.107|
|convergence_zero?_TCC1|✅ proved - incomplete|shostak|0.250|
|convergence_unique_vec|✅ proved - incomplete|shostak|0.709|
|test_conv_TCC1|✅ proved - incomplete|shostak|0.080|
|test_conv|✅ proved - incomplete|shostak|0.931|
|convergence_unique_vec_seq|✅ proved - incomplete|shostak|0.098|
|unbounded?_TCC1|✅ proved - incomplete|shostak|0.090|
|unbounded_equiv|✅ proved - incomplete|shostak|0.212|
|unbounded?_TCC2|✅ proved - incomplete|shostak|0.060|
|nth_N_TCC1|✅ proved - incomplete|shostak|0.070|
|nth_N_TCC2|✅ proved - complete|shostak|0.040|
|nth_N|✅ proved - incomplete|shostak|0.753|
|converge_nth_TCC1|✅ proved - incomplete|shostak|0.070|
|converge_nth_TCC2|✅ proved - complete|shostak|0.040|
|converge_nth|✅ proved - incomplete|shostak|1.992|

## `closed_bounded_domain`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|closed_equiv|✅ proved - incomplete|shostak|0.351|
|closed_equiv1|✅ proved - incomplete|shostak|0.070|
|bounded_domain?_TCC1|✅ proved - incomplete|shostak|0.080|
|bounded_equiv|✅ proved - incomplete|shostak|0.206|
|bounded_equiv1|✅ proved - incomplete|shostak|0.052|
|open_neigh_domain?_TCC1|✅ proved - incomplete|shostak|0.120|

## `continuity_multivar`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|contp?_TCC1|✅ proved - incomplete|shostak|0.281|
|cont?_TCC1|✅ proved - incomplete|shostak|0.130|
|cont_pos_neigh_TCC1|✅ proved - incomplete|shostak|0.091|
|cont_pos_neigh|✅ proved - incomplete|shostak|0.000|
|cont_neg_neigh_TCC1|✅ proved - incomplete|shostak|0.128|
|cont_neg_neigh|✅ proved - incomplete|shostak|0.374|
|contp?_TCC2|✅ proved - incomplete|shostak|0.353|
|cont_inner_prod|✅ proved - incomplete|shostak|1.143|
|contp_norm_v2r|✅ proved - incomplete|shostak|0.332|
|contp_norms_v2v|✅ proved - incomplete|shostak|0.609|
|contp_norm_v2v|✅ proved - incomplete|shostak|0.394|
|contD_norm_v2r|✅ proved - incomplete|shostak|0.777|
|contD_norms_v2v|✅ proved - incomplete|shostak|0.160|
|contD_norm_v2v|✅ proved - incomplete|shostak|0.148|
|norm_cont_v2v_TCC1|✅ proved - incomplete|shostak|0.080|
|norm_cont_v2v|✅ proved - incomplete|shostak|0.155|
|cont_sum|✅ proved - incomplete|shostak|0.349|
|cont_const|✅ proved - incomplete|shostak|0.551|
|cont_lift_TCC1|✅ proved - incomplete|shostak|0.052|
|cont_lift_TCC2|✅ proved - incomplete|shostak|0.040|
|cont_lift_TCC3|✅ proved - incomplete|shostak|0.060|
|cont_lift|✅ proved - incomplete|shostak|1.433|

## `sequential_criterian`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sequential_criterian1|✅ proved - incomplete|shostak|0.220|
|sequentialcriterian2|✅ proved - incomplete|shostak|0.080|

## `bolzano_weierstrass`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|bolzano_weier_m_TCC1|✅ proved - incomplete|shostak|0.086|
|bolzano_weier_m|✅ proved - incomplete|shostak|0.305|
|bolzano_weier_TCC1|✅ proved - incomplete|shostak|0.078|
|bolzano_weier|✅ proved - incomplete|shostak|0.070|
|bolzano_weier_le_m|✅ proved - incomplete|shostak|0.281|
|bolzano_weier_le|✅ proved - incomplete|shostak|0.063|

## `extreme_value_theorem`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|extreme_value|✅ proved - incomplete|shostak|0.362|

## `unconstrained_local_extrema`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|is_loc_minimizer?_TCC1|✅ proved - incomplete|shostak|0.103|
|loc_minimizer_equiv|✅ proved - incomplete|shostak|0.320|
|loc_min_equiv|✅ proved - incomplete|shostak|0.342|
|loc_maximizer_equiv|✅ proved - incomplete|shostak|0.276|
|loc_max_equiv|✅ proved - incomplete|shostak|0.346|
|zero_loc_5_TCC1|✅ proved - incomplete|shostak|0.050|
|zero_loc_5_TCC2|✅ proved - complete|shostak|0.040|
|zero_loc_5_TCC3|✅ proved - complete|shostak|0.045|
|zero_loc_5|✅ proved - incomplete|shostak|0.060|

## `fundamentals_constrained_optimization`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|nth_TCC1|✅ proved - incomplete|shostak|0.070|
|car_TCC1|✅ proved - incomplete|shostak|0.050|
|car_v_TCC1|✅ proved - incomplete|shostak|0.050|
|cdr_TCC1|✅ proved - complete|shostak|0.040|
|cdr_TCC2|✅ proved - incomplete|shostak|0.114|
|append_TCC1|✅ proved - incomplete|shostak|0.222|
|constraint2vector_TCC1|✅ proved - complete|shostak|0.060|
|constraint2vector_TCC2|✅ proved - complete|shostak|0.060|
|constraint2vector_TCC3|✅ proved - complete|shostak|0.050|
|constraint2vector_TCC4|✅ proved - complete|shostak|0.050|
|constraint2vector_TCC5|✅ proved - incomplete|shostak|0.114|
|cons_f_TCC1|✅ proved - incomplete|shostak|0.100|
|listfuns2fun_TCC1|✅ proved - incomplete|shostak|0.060|
|listfuns2fun_TCC2|✅ proved - incomplete|shostak|0.080|
|listfuns_length|✅ proved - incomplete|shostak|0.126|
|filter_fun_TCC1|✅ proved - incomplete|shostak|0.289|
|filter_fun_filter|✅ proved - incomplete|shostak|2.078|
|filter_nth|✅ proved - incomplete|shostak|0.000|
|filter_2nth|✅ proved - incomplete|shostak|0.080|
|filter_nth2|✅ proved - incomplete|shostak|0.713|
|filter_2nth2|✅ proved - incomplete|shostak|0.080|
|c2v_nth_TCC1|✅ proved - incomplete|shostak|0.060|
|c2v_nth|✅ proved - incomplete|shostak|0.233|
|listfuns2fun_TCC3|✅ proved - incomplete|shostak|0.200|
|sat_eq_1|✅ proved - incomplete|shostak|0.334|
|sat_ineq_1_TCC1|✅ proved - incomplete|shostak|0.070|
|sat_ineq_1|✅ proved - incomplete|shostak|0.935|
|trivial_eq|✅ proved - incomplete|shostak|0.050|
|x_square_TCC1|✅ proved - complete|shostak|0.050|
|x_square_TCC2|✅ proved - incomplete|shostak|0.080|
|x_square_TCC3|✅ proved - incomplete|shostak|0.090|
|x_square_TCC4|✅ proved - incomplete|shostak|0.161|
|x_square_TCC5|✅ proved - incomplete|shostak|0.367|
|x_square_TCC6|✅ proved - incomplete|shostak|0.112|
|x_square|✅ proved - incomplete|shostak|0.567|
|is_loc_minimizer?_TCC1|✅ proved - incomplete|shostak|0.105|
|loc_minimizer_equiv|✅ proved - incomplete|shostak|0.314|
|loc_min_equiv|✅ proved - incomplete|shostak|0.283|
|loc_maximizer_equiv|✅ proved - incomplete|shostak|0.283|
|loc_max_equiv|✅ proved - incomplete|shostak|0.333|
|isolated_implies_strict|✅ proved - incomplete|shostak|0.353|
|active_ineq?_TCC1|✅ proved - incomplete|shostak|0.090|
|lst2real_TCC1|✅ proved - incomplete|shostak|0.060|
|lst2real|✅ proved - incomplete|shostak|0.286|
|countzeroidx_TCC1|✅ proved - incomplete|shostak|0.060|
|countzeroidx_TCC2|✅ proved - incomplete|shostak|0.050|
|countzeroidx_TCC3|✅ proved - incomplete|shostak|0.050|
|countzeroidx_TCC4|✅ proved - incomplete|shostak|0.123|
|countzeroidx_TCC5|✅ proved - incomplete|shostak|0.080|
|ex_idx|✅ proved - incomplete|shostak|0.050|

## `topology_Rn`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|OpenD?_TCC1|✅ proved - incomplete|shostak|0.111|
|OpenD_equiv|✅ proved - incomplete|shostak|0.334|
|Union_open|✅ proved - incomplete|shostak|0.112|
|convex_domain?_TCC1|✅ proved - incomplete|shostak|0.100|
|convex_implies_pc|✅ proved - incomplete|shostak|3.411|

## `derivative_domain_multi`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|deriv_domain?_TCC1|✅ proved - incomplete|shostak|0.120|
|deriv_domain?_TCC2|✅ proved - incomplete|shostak|0.117|
|deriv_domain_direction?_TCC1|✅ proved - incomplete|shostak|0.120|
|deriv_domain_partial?_TCC1|✅ proved - incomplete|shostak|0.080|
|dd_direction_partial|✅ proved - incomplete|shostak|0.100|
|dd_direction_partial_neg_TCC1|✅ proved - incomplete|shostak|0.080|
|dd_direction_partial_neg|✅ proved - incomplete|shostak|0.538|
|e_direction_e_partial|✅ proved - incomplete|shostak|0.110|
|deriv_domain_both_direction?_TCC1|✅ proved - incomplete|shostak|0.107|
|domain_connect?_TCC1|✅ proved - incomplete|shostak|0.100|
|open_implies_e_direction|✅ proved - incomplete|shostak|0.302|
|open_implies_e_partial|✅ proved - incomplete|shostak|0.041|
|d_con_ends|✅ proved - incomplete|shostak|0.422|
|dd_norm_equiv|✅ proved - incomplete|shostak|0.260|
|dd_directionv_implies_dd|✅ proved - incomplete|shostak|0.685|
|dd_all_direction_implies_dd_all_partial|✅ proved - incomplete|shostak|0.100|
|dd_direction_implies_dd_directionv|✅ proved - incomplete|shostak|0.040|
|dd_direction_implies_dd|✅ proved - incomplete|shostak|0.137|
|dd_all_partial_implies_dd|✅ proved - incomplete|shostak|0.000|
|dd_direction_implies_dd_e_direction|✅ proved - incomplete|shostak|0.093|
|dd_partial_implies_dd_e_direction|✅ proved - incomplete|shostak|0.090|
|dd_direction_implies_dd_e_partial|✅ proved - incomplete|shostak|0.050|
|dd_vdirection_implies_dd_partial|✅ proved - incomplete|shostak|0.093|
|dd_edirection_implies_dd_partial|✅ proved - incomplete|shostak|0.110|
|dd_epartial_implies_dd_partial|✅ proved - incomplete|shostak|0.090|
|dd_direction_implies_dd_partial|✅ proved - incomplete|shostak|0.093|
|dd_e_direction_implies_dd|✅ proved - incomplete|shostak|0.150|
|dd_partial_implies_dd|✅ proved - incomplete|shostak|0.667|
|dd_e_partial_implies_dd|✅ proved - incomplete|shostak|0.140|
|dd_partial_implies_scal_partial_TCC1|✅ proved - incomplete|shostak|0.110|
|dd_partial_implies_scal_partial|✅ proved - incomplete|shostak|1.354|
|dd_scal_partial_implies_partial_TCC1|✅ proved - incomplete|shostak|0.070|
|dd_scal_partial_implies_partial|✅ proved - incomplete|shostak|0.561|
|dd_zero|✅ proved - incomplete|shostak|0.150|
|dd_zero_partial|✅ proved - incomplete|shostak|0.146|
|domain_direction_scal_TCC1|✅ proved - incomplete|shostak|0.080|
|domain_direction_scal|✅ proved - incomplete|shostak|0.885|
|domain_direction_scal_real_TCC1|✅ proved - incomplete|shostak|0.109|
|domain_direction_scal_real|✅ proved - incomplete|shostak|0.220|
|del_neigh_all_mult?_TCC1|✅ proved - incomplete|shostak|0.111|
|del_neigh_all_mult?_TCC2|✅ proved - incomplete|shostak|0.110|
|del_neigh_norm_equiv|✅ proved - incomplete|shostak|0.251|
|del_neigh_all_lem_mutl|✅ proved - incomplete|shostak|1.272|
|domain_partial_p?_TCC1|✅ proved - incomplete|shostak|0.150|

## `differentiable_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|NQ_TCC1|✅ proved - incomplete|shostak|0.250|
|NQ_TCC2|✅ proved - incomplete|shostak|0.080|
|NQ_TCC3|✅ proved - incomplete|shostak|0.070|
|NQ_TCC4|✅ proved - incomplete|shostak|0.100|
|der_f_TCC1|✅ proved - incomplete|shostak|0.141|
|der_f_TCC2|✅ proved - incomplete|shostak|0.050|
|der_f_TCC3|✅ proved - incomplete|shostak|0.060|

## `init_partial_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|D_down_TCC1|✅ proved - incomplete|shostak|0.121|
|D_down_der_domain|✅ proved - incomplete|shostak|0.792|
|D_down_domain|✅ proved - incomplete|shostak|0.140|
|D_down_der_domain_unit|✅ proved - incomplete|shostak|2.175|
|D_down_domain_unit|✅ proved - incomplete|shostak|0.053|
|D_down_domain_unitc|✅ proved - incomplete|shostak|0.000|
|D_down_not_one|✅ proved - incomplete|shostak|0.480|
|D_down_not_one_unit|✅ proved - incomplete|shostak|0.386|
|D_down_not_one_unitc|✅ proved - incomplete|shostak|0.447|
|D_down_partial|✅ proved - incomplete|shostak|0.831|
|D_down_all_partial|✅ proved - incomplete|shostak|0.130|
|D_down_partial_not_one|✅ proved - incomplete|shostak|0.380|
|D_down_direction_not_one|✅ proved - incomplete|shostak|0.269|
|D_down_direction_deriv_domain|✅ proved - incomplete|shostak|0.162|
|init_partial?_TCC1|✅ proved - incomplete|shostak|0.130|
|init_partial?_TCC2|✅ proved - incomplete|shostak|0.050|
|init_partial?_TCC3|✅ proved - incomplete|shostak|0.040|
|diff_imp_init_partial_TCC1|✅ proved - incomplete|shostak|0.053|
|diff_imp_init_partial_TCC2|✅ proved - incomplete|shostak|0.130|
|diff_imp_init_partial|✅ proved - incomplete|shostak|3.568|
|diff_imp_init_partial1_TCC1|✅ proved - incomplete|shostak|0.140|
|diff_imp_init_partial1_TCC2|✅ proved - incomplete|shostak|0.142|
|diff_imp_init_partial1|✅ proved - incomplete|shostak|2.326|
|diff_imp_init_partial2_TCC1|✅ proved - incomplete|shostak|0.070|
|diff_imp_init_partial2|✅ proved - incomplete|shostak|2.291|
|init_partial_TCC1|✅ proved - incomplete|shostak|0.120|
|init_partial_zero_derivable_TCC1|✅ proved - incomplete|shostak|0.040|
|init_partial_zero_derivable|✅ proved - incomplete|shostak|0.370|
|init_partial_zero_TCC1|✅ proved - incomplete|shostak|0.058|
|init_partial_zero|✅ proved - incomplete|shostak|1.069|
|frech_diff_imp_init_partial_TCC1|✅ proved - incomplete|shostak|0.070|
|frech_diff_imp_init_partial|✅ proved - incomplete|shostak|0.070|
|init_partial_scal_TCC1|✅ proved - incomplete|shostak|0.341|
|init_partial_scal_TCC2|✅ proved - incomplete|shostak|0.060|
|init_partial_scal|✅ proved - incomplete|shostak|0.000|
|der_f_is_init_partial_TCC1|✅ proved - incomplete|shostak|0.090|
|der_f_is_init_partial_TCC2|✅ proved - incomplete|shostak|0.079|
|der_f_is_init_partial|✅ proved - incomplete|shostak|3.597|
|conv_NQ_is_init_partial_TCC1|✅ proved - incomplete|shostak|0.060|
|conv_NQ_is_init_partial|✅ proved - incomplete|shostak|2.575|
|der_f_is_init_partial1_TCC1|✅ proved - incomplete|shostak|0.040|
|der_f_is_init_partial1_TCC2|✅ proved - incomplete|shostak|0.074|
|der_f_is_init_partial1_TCC3|✅ proved - incomplete|shostak|0.120|
|der_f_is_init_partial1|✅ proved - incomplete|shostak|0.871|
|conv_NQ_is_init_partial1_TCC1|✅ proved - incomplete|shostak|0.060|
|conv_NQ_is_init_partial1_TCC2|✅ proved - incomplete|shostak|0.429|
|conv_NQ_is_init_partial1|✅ proved - incomplete|shostak|0.802|
|conv_NQ_unique|✅ proved - incomplete|shostak|0.139|
|der_f_unique_TCC1|✅ proved - incomplete|shostak|0.044|
|der_f_unique|✅ proved - incomplete|shostak|0.321|
|init_partial_scalar_TCC1|✅ proved - incomplete|shostak|0.072|
|init_partial_scalar_TCC2|✅ proved - incomplete|shostak|0.345|
|init_partial_scalar_TCC3|✅ proved - incomplete|shostak|0.060|
|init_partial_scalar|✅ proved - incomplete|shostak|0.311|
|init_partial_additive_TCC1|✅ proved - incomplete|shostak|0.112|
|init_partial_additive_TCC2|✅ proved - incomplete|shostak|0.080|
|init_partial_additive_TCC3|✅ proved - incomplete|shostak|0.093|
|init_partial_additive_TCC4|✅ proved - incomplete|shostak|0.120|
|init_partial_additive_TCC5|✅ proved - incomplete|shostak|0.072|
|init_partial_additive_TCC6|✅ proved - incomplete|shostak|0.070|
|init_partial_additive|✅ proved - incomplete|shostak|0.396|
|init_partial_linear_TCC1|✅ proved - incomplete|shostak|0.072|
|init_partial_linear_TCC2|✅ proved - incomplete|shostak|0.070|
|init_partial_linear_TCC3|✅ proved - incomplete|shostak|0.080|
|init_partial_linear_TCC4|✅ proved - incomplete|shostak|0.084|
|init_partial_linear_TCC5|✅ proved - incomplete|shostak|0.111|
|init_partial_linear|✅ proved - incomplete|shostak|0.595|

## `directional_deriv_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|D_downd_der_domain|✅ proved - incomplete|shostak|0.934|
|D_downd_domain|✅ proved - incomplete|shostak|0.135|
|D_downd_der_domain_unit|✅ proved - incomplete|shostak|2.097|
|D_downd_domain_unit|✅ proved - incomplete|shostak|0.047|
|D_downd_domain_unitc|✅ proved - incomplete|shostak|4.539|
|D_downd_not_one|✅ proved - incomplete|shostak|0.529|
|D_downd_not_one_unit|✅ proved - incomplete|shostak|0.410|
|D_downd_not_one_unitc|✅ proved - incomplete|shostak|0.465|
|D_downd_direction_not_one|✅ proved - incomplete|shostak|0.309|
|D_downd_direction_deriv_domain|✅ proved - incomplete|shostak|0.050|
|directional_deriv?_TCC1|✅ proved - incomplete|shostak|0.080|
|directional_deriv?_TCC2|✅ proved - incomplete|shostak|0.092|
|directional_deriv?_TCC3|✅ proved - incomplete|shostak|0.000|
|directional_deriv?_TCC4|✅ proved - incomplete|shostak|1.065|
|diff_imp_direction_TCC1|✅ proved - incomplete|shostak|0.041|
|diff_imp_direction_TCC2|✅ proved - incomplete|shostak|0.447|
|diff_imp_direction|✅ proved - incomplete|shostak|4.011|
|diff_imp_direction1_TCC1|✅ proved - incomplete|shostak|0.134|
|diff_imp_direction1|✅ proved - incomplete|shostak|2.331|
|directional_deriv_TCC1|✅ proved - incomplete|shostak|0.160|
|directional_deriv_TCC2|✅ proved - incomplete|shostak|0.678|
|direction_zero_derivable_TCC1|✅ proved - incomplete|shostak|0.040|
|direction_zero_derivable|✅ proved - incomplete|shostak|0.369|
|direction_zero_TCC1|✅ proved - incomplete|shostak|0.050|
|direction_zero|✅ proved - incomplete|shostak|1.126|
|diff_imp_direction2_TCC1|✅ proved - incomplete|shostak|0.148|
|diff_imp_direction2|✅ proved - incomplete|shostak|0.082|
|directional_deriv_scal_TCC1|✅ proved - incomplete|shostak|0.240|
|directional_deriv_scal_TCC2|✅ proved - incomplete|shostak|0.060|
|directional_deriv_scal_TCC3|✅ proved - incomplete|shostak|0.060|
|directional_deriv_scal|✅ proved - incomplete|shostak|1.959|
|der_f_is_direction_TCC1|✅ proved - incomplete|shostak|0.134|
|der_f_is_direction_TCC2|✅ proved - incomplete|shostak|0.060|
|der_f_is_direction|✅ proved - incomplete|shostak|3.265|
|der_f_is_direction1_TCC1|✅ proved - incomplete|shostak|0.050|
|der_f_is_direction1_TCC2|✅ proved - incomplete|shostak|0.373|
|der_f_is_direction1_TCC3|✅ proved - incomplete|shostak|0.070|
|der_f_is_direction1|✅ proved - incomplete|shostak|1.092|
|directional_deriv_scalar_TCC1|✅ proved - incomplete|shostak|0.060|
|directional_deriv_scalar_TCC2|✅ proved - incomplete|shostak|0.079|
|directional_deriv_scalar_TCC3|✅ proved - incomplete|shostak|0.070|
|directional_deriv_scalar_TCC4|✅ proved - incomplete|shostak|0.000|
|directional_deriv_scalar_TCC5|✅ proved - incomplete|shostak|0.087|
|directional_deriv_scalar|✅ proved - incomplete|shostak|0.353|
|directional_deriv_additive_TCC1|✅ proved - incomplete|shostak|0.123|
|directional_deriv_additive_TCC2|✅ proved - incomplete|shostak|0.220|
|directional_deriv_additive_TCC3|✅ proved - incomplete|shostak|0.091|
|directional_deriv_additive_TCC4|✅ proved - incomplete|shostak|0.103|
|directional_deriv_additive_TCC5|✅ proved - incomplete|shostak|0.100|
|directional_deriv_additive_TCC6|✅ proved - incomplete|shostak|0.123|
|directional_deriv_additive|✅ proved - incomplete|shostak|0.356|
|directional_deriv_linear_TCC1|✅ proved - incomplete|shostak|0.952|
|directional_deriv_linear_TCC2|✅ proved - incomplete|shostak|0.180|
|directional_deriv_linear_TCC3|✅ proved - incomplete|shostak|0.791|
|directional_deriv_linear_TCC4|✅ proved - incomplete|shostak|0.105|
|directional_deriv_linear_TCC5|✅ proved - incomplete|shostak|0.090|
|directional_deriv_linear_TCC6|✅ proved - incomplete|shostak|0.642|
|directional_deriv_linear_TCC7|✅ proved - incomplete|shostak|0.090|
|directional_deriv_linear|✅ proved - incomplete|shostak|3.211|
|directional_deriv_unique|✅ proved - incomplete|shostak|0.050|
|init_par_dir_derivable_TCC1|✅ proved - incomplete|shostak|0.428|
|init_par_dir_derivable|✅ proved - incomplete|shostak|0.505|
|init_par_dir_deriv_TCC1|✅ proved - incomplete|shostak|0.062|
|init_par_dir_deriv|✅ proved - incomplete|shostak|1.232|

## `partial_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|partial_TCC1|✅ proved - incomplete|shostak|0.813|
|F_partials_TCC1|✅ proved - incomplete|shostak|0.040|
|F_partials_TCC2|✅ proved - incomplete|shostak|0.260|
|F_partials_TCC3|✅ proved - incomplete|shostak|0.058|
|F_partials_TCC4|✅ proved - incomplete|shostak|0.090|
|F_partials_e_TCC1|✅ proved - incomplete|shostak|0.402|
|F_partials_e_TCC2|✅ proved - incomplete|shostak|0.100|
|F_partials_e|✅ proved - incomplete|shostak|0.192|
|directional_deriv_pre1_TCC1|✅ proved - incomplete|shostak|0.053|
|directional_deriv_pre1_TCC2|✅ proved - incomplete|shostak|0.190|
|directional_deriv_pre1_TCC3|✅ proved - incomplete|shostak|0.332|
|directional_deriv_pre1_TCC4|✅ proved - incomplete|shostak|0.241|
|directional_deriv_pre1_TCC5|✅ proved - incomplete|shostak|0.361|
|directional_deriv_pre1_TCC6|✅ proved - incomplete|shostak|0.161|
|directional_deriv_pre1_TCC7|✅ proved - incomplete|shostak|0.050|
|directional_deriv_pre1|✅ proved - incomplete|shostak|2.639|
|directional_deriv_sum_partials_TCC1|✅ proved - incomplete|shostak|0.069|
|directional_deriv_sum_partials_TCC2|✅ proved - incomplete|shostak|0.130|
|directional_deriv_sum_partials_TCC3|✅ proved - incomplete|shostak|0.048|
|directional_deriv_sum_partials|✅ proved - incomplete|shostak|0.120|

## `gradient_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|gradientp?_TCC1|✅ proved - incomplete|shostak|0.228|
|diffp_imp_gradp_TCC1|✅ proved - incomplete|shostak|0.050|
|diffp_imp_gradp|✅ proved - incomplete|shostak|0.123|
|diffD_imp_gradD_TCC1|✅ proved - incomplete|shostak|0.050|
|diffD_imp_gradD|✅ proved - incomplete|shostak|0.060|
|partials_TCC1|✅ proved - incomplete|shostak|0.200|
|partials_TCC2|✅ proved - complete|shostak|0.060|
|partials_TCC3|✅ proved - incomplete|shostak|0.140|
|partials_TCC4|✅ proved - incomplete|shostak|0.707|
|partials_TCC5|✅ proved - incomplete|shostak|0.170|
|partials_TCC6|✅ proved - incomplete|shostak|0.083|
|partials_TCC7|✅ proved - incomplete|shostak|0.590|
|partials_TCC8|✅ proved - incomplete|shostak|0.722|
|partials_TCC9|✅ proved - incomplete|shostak|0.181|
|partials_TCC10|✅ proved - incomplete|shostak|0.100|
|partials_TCC11|✅ proved - incomplete|shostak|0.623|
|partials_TCC12|✅ proved - incomplete|shostak|0.350|
|partials_TCC13|✅ proved - incomplete|shostak|0.181|
|partials_TCC14|✅ proved - incomplete|shostak|0.382|
|partials_length|✅ proved - incomplete|shostak|0.514|
|gradient_TCC1|✅ proved - incomplete|shostak|0.343|
|gradient_TCC2|✅ proved - incomplete|shostak|0.342|
|gradient_TCC3|✅ proved - incomplete|shostak|0.093|
|grad_nth_TCC1|✅ proved - incomplete|shostak|0.540|
|grad_nth_TCC2|✅ proved - incomplete|shostak|0.571|
|grad_nth|✅ proved - incomplete|shostak|0.100|
|directional_deriv_pre2_TCC1|✅ proved - incomplete|shostak|0.672|
|directional_deriv_pre2_TCC2|✅ proved - incomplete|shostak|0.334|
|directional_deriv_pre2_TCC3|✅ proved - incomplete|shostak|0.722|
|directional_deriv_pre2|✅ proved - incomplete|shostak|0.657|
|directional_deriv_is_grad_TCC1|✅ proved - incomplete|shostak|0.050|
|directional_deriv_is_grad_TCC2|✅ proved - incomplete|shostak|0.057|
|directional_deriv_is_grad_TCC3|✅ proved - incomplete|shostak|0.060|
|directional_deriv_is_grad_TCC4|✅ proved - incomplete|shostak|0.375|
|directional_deriv_is_grad_TCC5|✅ proved - incomplete|shostak|0.164|
|directional_deriv_is_grad|✅ proved - incomplete|shostak|0.313|
|directional_deriv_is_init_partial_TCC1|✅ proved - incomplete|shostak|0.050|
|directional_deriv_is_init_partial_TCC2|✅ proved - incomplete|shostak|0.422|
|directional_deriv_is_init_partial_TCC3|✅ proved - incomplete|shostak|0.050|
|directional_deriv_is_init_partial_TCC4|✅ proved - incomplete|shostak|0.070|
|directional_deriv_is_init_partial_TCC5|✅ proved - incomplete|shostak|0.433|
|directional_deriv_is_init_partial|✅ proved - incomplete|shostak|0.192|
|directional_deriv_is_e_partial_TCC1|✅ proved - incomplete|shostak|0.100|
|directional_deriv_is_e_partial|✅ proved - incomplete|shostak|0.334|
|der_f_gradient_dot_e|✅ proved - incomplete|shostak|0.112|
|der_f_is_grad_e|✅ proved - incomplete|shostak|0.202|
|der_f_gradient_dot_TCC1|✅ proved - incomplete|shostak|0.050|
|der_f_gradient_dot|✅ proved - incomplete|shostak|0.083|
|der_f_is_grad_TCC1|✅ proved - incomplete|shostak|0.040|
|der_f_is_grad|✅ proved - incomplete|shostak|0.622|
|grad_append|✅ proved - incomplete|shostak|0.606|
|grad_filter|✅ proved - incomplete|shostak|0.183|
|grad_active|✅ proved - incomplete|shostak|0.266|
|active_grad|✅ proved - incomplete|shostak|0.155|

## `jacobian_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|jacobian_car|✅ proved - incomplete|shostak|0.090|
|jacobian_cdr_TCC1|✅ proved - incomplete|shostak|0.327|
|jacobian_cdr|✅ proved - incomplete|shostak|0.141|
|jac_2_grad|✅ proved - incomplete|shostak|0.090|
|jacobian_TCC1|✅ proved - incomplete|shostak|0.101|
|jacobian_TCC2|✅ proved - incomplete|shostak|0.228|
|jacobian_TCC3|✅ proved - incomplete|shostak|0.050|
|jacobian_TCC4|✅ proved - incomplete|shostak|0.382|
|jacobian_TCC5|✅ proved - incomplete|shostak|0.080|
|jacobian_TCC6|✅ proved - incomplete|shostak|0.200|
|jacobian_TCC7|✅ proved - incomplete|shostak|0.240|

## `continuous_derivatives`
No formula declaration found.
## `Taylor_Thrm_Multi`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|g_thm_TCC1|✅ proved - incomplete|shostak|0.402|
|g_thm_TCC2|✅ proved - incomplete|shostak|0.090|
|g_thm_TCC3|✅ proved - incomplete|shostak|1.162|
|g_thm_TCC4|✅ proved - incomplete|shostak|0.732|
|g_thm_TCC5|✅ proved - incomplete|shostak|0.749|
|g_thm|✅ proved - incomplete|shostak|7.226|
|g_thm_connect_TCC1|✅ proved - incomplete|shostak|0.090|
|g_thm_connect_TCC2|✅ proved - incomplete|shostak|1.189|
|g_thm_connect_TCC3|✅ proved - incomplete|shostak|2.161|
|g_thm_connect_TCC4|✅ proved - incomplete|shostak|0.773|
|g_thm_connect|✅ proved - incomplete|shostak|0.000|
|g_thm_connect_unit_TCC1|✅ proved - incomplete|shostak|0.100|
|g_thm_connect_unit_TCC2|✅ proved - incomplete|shostak|0.101|
|g_thm_connect_unit|✅ proved - incomplete|shostak|33.475|
|g_thm_dif_TCC1|✅ proved - incomplete|shostak|0.040|
|g_thm_dif_TCC2|✅ proved - incomplete|shostak|1.402|
|g_thm_dif_TCC3|✅ proved - incomplete|shostak|0.071|
|g_thm_dif|✅ proved - incomplete|shostak|3.015|
|g_thm_dif_connect_TCC1|✅ proved - incomplete|shostak|0.074|
|g_thm_dif_connect_TCC2|✅ proved - incomplete|shostak|0.288|
|g_thm_dif_connect_TCC3|✅ proved - incomplete|shostak|0.060|
|g_thm_dif_connect|✅ proved - incomplete|shostak|0.000|
|g_thm_dif_connect_unit_TCC1|✅ proved - incomplete|shostak|0.070|
|g_thm_dif_connect_unit|✅ proved - incomplete|shostak|8.245|
|g_thm_grad_TCC1|✅ proved - incomplete|shostak|0.160|
|g_thm_grad_TCC2|✅ proved - incomplete|shostak|0.063|
|g_thm_grad_TCC3|✅ proved - incomplete|shostak|0.070|
|g_thm_grad|✅ proved - incomplete|shostak|8.916|
|g_thm_grad_connect_TCC1|✅ proved - incomplete|shostak|0.150|
|g_thm_grad_connect_TCC2|✅ proved - incomplete|shostak|0.060|
|g_thm_grad_connect_TCC3|✅ proved - incomplete|shostak|0.060|
|g_thm_grad_connect|✅ proved - incomplete|shostak|0.858|
|g_thm_grad_connect_unit|✅ proved - incomplete|shostak|0.644|
|Taylors1_TCC1|✅ proved - incomplete|shostak|0.160|
|Taylors1_TCC2|✅ proved - incomplete|shostak|0.068|
|Taylors1_TCC3|✅ proved - incomplete|shostak|0.100|
|Taylors1|✅ proved - incomplete|shostak|0.000|
|Taylors_thm|✅ proved - incomplete|shostak|3.917|
|Taylors_Thm|✅ proved - incomplete|shostak|3.864|

## `unconstrained_first_order_optimality`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|first_order_nec_TCC1|✅ proved - incomplete|shostak|0.050|
|first_order_nec_TCC2|✅ proved - incomplete|shostak|0.080|
|first_order_nec_TCC3|✅ proved - incomplete|shostak|0.050|
|first_order_nec|✅ proved - incomplete|shostak|24.486|

## `linear_programming`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|lp_1_TCC1|✅ proved - complete|shostak|0.040|
|lp_1_TCC2|✅ proved - incomplete|shostak|0.360|
|lp_1_TCC3|✅ proved - complete|shostak|0.040|
|lp_1|✅ proved - incomplete|shostak|0.846|

## `exist_solution_lp`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|norm_program?_TCC1|✅ proved - incomplete|shostak|0.100|
|convergence_in_solution_set_TCC1|✅ proved - incomplete|shostak|0.116|
|convergence_in_solution_set_TCC2|✅ proved - incomplete|shostak|0.120|
|convergence_in_solution_set|✅ proved - incomplete|shostak|2.467|
|existance_np_1|✅ proved - incomplete|shostak|2.221|

## `Cauchy_seq`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy?_TCC1|✅ proved - incomplete|shostak|0.210|
|cauchy_equiv|✅ proved - incomplete|shostak|1.178|
|cauchy_V_Vn|✅ proved - incomplete|shostak|0.368|
|cauchy_convergence|✅ proved - incomplete|shostak|0.180|

## `Vector_VectorN`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Vn_2_V_TCC1|✅ proved - incomplete|shostak|0.066|
|V_2_Vn_TCC1|✅ proved - complete|shostak|0.050|
|V_2_Vn_TCC2|✅ proved - incomplete|shostak|0.090|
|V_2_Vn_TCC3|✅ proved - complete|shostak|0.050|
|V_2_Vn_TCC4|✅ proved - complete|shostak|0.060|
|V_2_Vn_TCC5|✅ proved - complete|shostak|0.050|
|V_2_Vn_TCC6|✅ proved - complete|shostak|0.040|
|V_2_Vn_TCC7|✅ proved - incomplete|shostak|0.258|
|Vn_V|✅ proved - incomplete|shostak|0.488|
|V_Vn|✅ proved - incomplete|shostak|0.570|
|Vn_V_seq|✅ proved - incomplete|shostak|0.100|
|V_Vn_seq|✅ proved - incomplete|shostak|0.090|
|d2_sigma_TCC1|✅ proved - complete|shostak|0.050|
|d2_sigma_TCC2|✅ proved - incomplete|shostak|0.461|
|d2_sigma|✅ proved - incomplete|shostak|1.647|
|norm2_d2_TCC1|✅ proved - incomplete|shostak|0.390|
|norm2_d2|✅ proved - incomplete|shostak|3.087|
|convergence_V_Vn|✅ proved - incomplete|shostak|0.391|

## `Lipschitz_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|LipD?_TCC1|✅ proved - incomplete|shostak|0.121|
|LipD?_TCC2|✅ proved - incomplete|shostak|0.140|
|Lip_cont_v2f|✅ proved - incomplete|shostak|0.000|
|Lip_cont_v2v|✅ proved - incomplete|shostak|0.453|
|Lip_norm_v2f|✅ proved - incomplete|shostak|0.475|
|Lip_norm_v2v|✅ proved - incomplete|shostak|0.732|

## `composition_function`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cont_comp|✅ proved - incomplete|shostak|0.328|

## `max_function`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|max_gen_TCC1|✅ proved - complete|shostak|0.110|
|max_TCC1|✅ proved - incomplete|shostak|0.193|
|max_plus_TCC1|✅ proved - incomplete|shostak|0.297|
|max_plus|✅ proved - incomplete|shostak|0.283|
|max_ineq|✅ proved - incomplete|shostak|0.129|
|max_const_TCC1|✅ proved - incomplete|shostak|1.111|
|max_const|✅ proved - incomplete|shostak|0.284|

## `mat_vec_mult`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|MN_full|✅ proved - incomplete|shostak|0.153|
|MN_rc|✅ proved - incomplete|shostak|0.314|
|entry_extensionality|✅ proved - incomplete|shostak|1.731|
|row_extensionality|✅ proved - incomplete|shostak|0.240|
|column_extensionality|✅ proved - incomplete|shostak|0.210|
|cdr_columns|✅ proved - incomplete|shostak|0.368|
|cdr_columns_full|✅ proved - incomplete|shostak|0.219|
|matvec_TCC1|✅ proved - incomplete|shostak|0.090|
|matvec_TCC2|✅ proved - incomplete|shostak|0.110|
|matvec_TCC3|✅ proved - incomplete|shostak|0.100|
|matvec_TCC4|✅ proved - incomplete|shostak|0.234|
|matvec_TCC5|✅ proved - complete|shostak|0.070|
|matvec_TCC6|✅ proved - incomplete|shostak|0.130|
|times_TCC1|✅ proved - incomplete|shostak|0.137|
|matv_test_TCC1|✅ proved - incomplete|shostak|0.250|
|matv_test|✅ proved - incomplete|shostak|0.090|
|matv_nth_TCC1|✅ proved - incomplete|shostak|0.110|
|matv_nth|✅ proved - incomplete|shostak|1.359|
|max_a_TCC1|✅ proved - incomplete|shostak|0.090|
|max_a_TCC2|✅ proved - incomplete|shostak|0.136|
|max_a_TCC3|✅ proved - incomplete|shostak|0.120|
|max_a_TCC4|✅ proved - incomplete|shostak|0.080|
|max_a_TCC5|✅ proved - incomplete|shostak|0.145|
|max_a_TCC6|✅ proved - incomplete|shostak|0.120|
|max_a_max_TCC1|✅ proved - incomplete|shostak|0.100|
|max_a_max_TCC2|✅ proved - incomplete|shostak|0.147|
|max_a_max|✅ proved - incomplete|shostak|1.338|
|max_a_row_TCC1|✅ proved - incomplete|shostak|0.100|
|max_a_row_TCC2|✅ proved - incomplete|shostak|0.050|
|max_a_row|✅ proved - incomplete|shostak|0.000|
|matv_norm_inf_TCC1|✅ proved - incomplete|shostak|0.385|
|matv_norm_inf_TCC2|✅ proved - incomplete|shostak|0.233|
|matv_norm_inf_TCC3|✅ proved - incomplete|shostak|0.110|
|matv_norm_inf_TCC4|✅ proved - incomplete|shostak|0.050|
|matv_norm_inf|✅ proved - incomplete|shostak|0.447|
|vec2mat_TCC1|✅ proved - incomplete|shostak|0.090|
|vec2mat_TCC2|✅ proved - incomplete|shostak|0.057|
|vec2mat_TCC3|✅ proved - incomplete|shostak|0.120|
|vec2mat_TCC4|✅ proved - incomplete|shostak|0.575|
|vec2mat_id|✅ proved - incomplete|shostak|0.208|
|matv_matmat|✅ proved - incomplete|shostak|3.943|
|vec2mat_mult|✅ proved - incomplete|shostak|9.067|
|matv_dist_sum_TCC1|✅ proved - incomplete|shostak|0.080|
|matv_dist_sum|✅ proved - incomplete|shostak|3.010|
|matv_dist_scal_TCC1|✅ proved - incomplete|shostak|0.100|
|matv_dist_scal|✅ proved - incomplete|shostak|1.525|
|matv_dist_sub_TCC1|✅ proved - incomplete|shostak|0.220|
|matv_dist_sub|✅ proved - incomplete|shostak|0.231|
|matv_asso_TCC1|✅ proved - incomplete|shostak|0.170|
|matv_asso_TCC2|✅ proved - incomplete|shostak|0.203|
|matv_asso|✅ proved - incomplete|shostak|0.514|
|matv_add_zero_TCC1|✅ proved - incomplete|shostak|0.250|
|matv_add_zero|✅ proved - incomplete|shostak|2.141|
|matv_zerovec|✅ proved - incomplete|shostak|0.774|

## `convergence_vec2vec`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|nth_TCC1|✅ proved - incomplete|shostak|0.080|
|cdr_TCC1|✅ proved - complete|shostak|0.040|
|cdr_TCC2|✅ proved - incomplete|shostak|0.070|
|cdr_TCC3|✅ proved - incomplete|shostak|0.140|
|NQ_TCC1|✅ proved - incomplete|shostak|0.470|
|NQ_TCC2|✅ proved - incomplete|shostak|0.080|
|NQ_TCC3|✅ proved - incomplete|shostak|0.090|
|NQ_TCC4|✅ proved - incomplete|shostak|0.287|
|NQ_TCC5|✅ proved - incomplete|shostak|0.100|
|NQ_TCC6|✅ proved - incomplete|shostak|0.000|
|diff_nth_cdr_TCC1|✅ proved - incomplete|shostak|0.310|
|diff_nth_cdr|✅ proved - incomplete|shostak|0.278|
|every_mat|✅ proved - incomplete|shostak|0.558|
|pre_der_TCC1|✅ proved - incomplete|shostak|0.180|
|pre_der_TCC2|✅ proved - incomplete|shostak|0.730|
|pre_der_TCC3|✅ proved - incomplete|shostak|0.320|
|pre_der_TCC4|✅ proved - incomplete|shostak|0.180|
|pre_der_TCC5|✅ proved - incomplete|shostak|0.061|
|pre_der_TCC6|✅ proved - incomplete|shostak|0.240|
|pre_der_TCC7|✅ proved - incomplete|shostak|0.231|
|pre_der_TCC8|✅ proved - incomplete|shostak|0.190|
|pre_der_TCC9|✅ proved - incomplete|shostak|0.462|
|pre_der_TCC10|✅ proved - incomplete|shostak|0.345|
|pre_der_TCC11|✅ proved - incomplete|shostak|0.180|
|pre_der_TCC12|✅ proved - incomplete|shostak|0.875|
|pre_der_TCC13|✅ proved - incomplete|shostak|0.140|
|pre_der_TCC14|✅ proved - incomplete|shostak|0.200|
|pre_der_TCC15|✅ proved - incomplete|shostak|0.855|
|pre_der_TCC16|✅ proved - incomplete|shostak|0.250|
|pre_der_TCC17|✅ proved - incomplete|shostak|0.313|
|pre_der_TCC18|✅ proved - incomplete|shostak|0.220|
|pre_der_TCC19|✅ proved - incomplete|shostak|0.473|
|pre_der_TCC20|✅ proved - incomplete|shostak|0.432|
|pre_der_nth_TCC1|✅ proved - incomplete|shostak|0.341|
|pre_der_nth_TCC2|✅ proved - incomplete|shostak|0.859|
|pre_der_nth|✅ proved - incomplete|shostak|5.458|
|pre_der_nth_grad_TCC1|✅ proved - incomplete|shostak|0.052|
|pre_der_nth_grad_TCC2|✅ proved - incomplete|shostak|0.060|
|pre_der_nth_grad_TCC3|✅ proved - incomplete|shostak|0.457|
|pre_der_nth_grad_TCC4|✅ proved - incomplete|shostak|0.905|
|pre_der_nth_grad_TCC5|✅ proved - incomplete|shostak|0.509|
|pre_der_nth_grad|✅ proved - incomplete|shostak|0.231|
|pre_der_nth_p_TCC1|✅ proved - incomplete|shostak|0.251|
|pre_der_nth_p_TCC2|✅ proved - incomplete|shostak|0.821|
|pre_der_nth_p|✅ proved - incomplete|shostak|0.925|
|del_ch_TCC1|✅ proved - incomplete|shostak|0.132|
|del_ch_TCC2|✅ proved - incomplete|shostak|0.120|
|del_ch_p_TCC1|✅ proved - incomplete|shostak|0.126|
|del_ch_p_TCC2|✅ proved - incomplete|shostak|0.120|
|del_nth_TCC1|✅ proved - incomplete|shostak|0.623|
|del_nth|✅ proved - incomplete|shostak|3.440|
|del_nth_p_TCC1|✅ proved - incomplete|shostak|0.136|
|del_nth_p|✅ proved - incomplete|shostak|3.110|
|derivable_nth_mat|✅ proved - incomplete|shostak|2.580|
|derivable_nth_mat_point|✅ proved - incomplete|shostak|9.507|
|der_f_TCC1|✅ proved - incomplete|shostak|0.070|
|der_f_TCC2|✅ proved - incomplete|shostak|6.040|
|der_f_TCC3|✅ proved - incomplete|shostak|0.070|
|der_f_TCC4|✅ proved - incomplete|shostak|0.297|
|conv_zero_nth_TCC1|✅ proved - incomplete|shostak|0.180|
|conv_zero_nth_TCC2|✅ proved - incomplete|shostak|0.661|
|conv_zero_nth|✅ proved - incomplete|shostak|3.059|
|der_f_unique_TCC1|✅ proved - incomplete|shostak|0.072|
|der_f_unique_TCC2|✅ proved - incomplete|shostak|0.090|
|der_f_unique|✅ proved - incomplete|shostak|0.330|
|pre_diff_cont_TCC1|✅ proved - incomplete|shostak|0.339|
|pre_diff_cont_TCC2|✅ proved - incomplete|shostak|0.556|
|pre_diff_cont_TCC3|✅ proved - incomplete|shostak|0.569|
|pre_diff_cont_TCC4|✅ proved - incomplete|shostak|0.360|
|pre_diff_cont|✅ proved - incomplete|shostak|2.742|
|diff_cont|✅ proved - incomplete|shostak|2.880|
|der?_TCC1|✅ proved - incomplete|shostak|1.080|
|pre_der_der_p_TCC1|✅ proved - incomplete|shostak|0.080|
|pre_der_der_p|✅ proved - incomplete|shostak|6.496|
|der_nth_mat_point_TCC1|✅ proved - incomplete|shostak|0.060|
|der_nth_mat_point_TCC2|✅ proved - incomplete|shostak|0.566|
|der_nth_mat_point_TCC3|✅ proved - incomplete|shostak|0.070|
|der_nth_mat_point|✅ proved - incomplete|shostak|0.215|
|derivable_subtype_TCC1|✅ proved - incomplete|shostak|0.060|
|derivable_subtype_TCC2|✅ proved - incomplete|shostak|0.000|
|derivable_subtype|✅ proved - incomplete|shostak|0.238|
|der_subtype_TCC1|✅ proved - incomplete|shostak|0.070|
|der_subtype|✅ proved - incomplete|shostak|0.437|

## `chain_rule_multi`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|pre_chain_addzero_triag_TCC1|✅ proved - incomplete|shostak|0.372|
|pre_chain_addzero_triag_TCC2|✅ proved - incomplete|shostak|0.072|
|pre_chain_addzero_triag_TCC3|✅ proved - incomplete|shostak|0.080|
|pre_chain_addzero_triag_TCC4|✅ proved - incomplete|shostak|0.527|
|pre_chain_addzero_triag_TCC5|✅ proved - incomplete|shostak|0.934|
|pre_chain_addzero_triag_TCC6|✅ proved - incomplete|shostak|0.150|
|pre_chain_addzero_triag_TCC7|✅ proved - incomplete|shostak|0.230|
|pre_chain_addzero_triag_TCC8|✅ proved - incomplete|shostak|0.598|
|pre_chain_addzero_triag_TCC9|✅ proved - incomplete|shostak|0.140|
|pre_chain_addzero_triag_TCC10|✅ proved - incomplete|shostak|0.283|
|pre_chain_addzero_triag_TCC11|✅ proved - incomplete|shostak|0.819|
|pre_chain_addzero_triag_TCC12|✅ proved - incomplete|shostak|0.572|
|pre_chain_addzero_triag|✅ proved - incomplete|shostak|2.793|
|pre_chain_bound_TCC1|✅ proved - incomplete|shostak|0.050|
|pre_chain_bound_TCC2|✅ proved - incomplete|shostak|0.444|
|pre_chain_bound|✅ proved - incomplete|shostak|1.412|
|g_diff_Meps2_bound_TCC1|✅ proved - incomplete|shostak|0.470|
|g_diff_Meps2_bound_TCC2|✅ proved - incomplete|shostak|0.070|
|g_diff_Meps2_bound_TCC3|✅ proved - incomplete|shostak|0.140|
|g_diff_Meps2_bound_TCC4|✅ proved - incomplete|shostak|0.156|
|g_diff_Meps2_bound_TCC5|✅ proved - incomplete|shostak|0.429|
|g_diff_Meps2_bound_TCC6|✅ proved - incomplete|shostak|0.097|
|g_diff_Meps2_bound|✅ proved - incomplete|shostak|1.383|
|f_diff_Meps2_bound|✅ proved - incomplete|shostak|6.797|
|chain_rule_multi_TCC1|✅ proved - incomplete|shostak|0.060|
|chain_rule_multi|✅ proved - incomplete|shostak|5.733|
|chain_rule_multi_subdom_TCC1|✅ proved - incomplete|shostak|0.069|
|chain_rule_multi_subdom_TCC2|✅ proved - incomplete|shostak|0.070|
|chain_rule_multi_subdom_TCC3|✅ proved - incomplete|shostak|0.060|
|chain_rule_multi_subdom|✅ proved - incomplete|shostak|5.461|
|chain_rule_multi_der_TCC1|✅ proved - incomplete|shostak|0.492|
|chain_rule_multi_der_TCC2|✅ proved - incomplete|shostak|0.069|
|chain_rule_multi_der|✅ proved - incomplete|shostak|0.000|
|chain_rule_multi_der_subdom_TCC1|✅ proved - incomplete|shostak|0.475|
|chain_rule_multi_der_subdom_TCC2|✅ proved - incomplete|shostak|0.060|
|chain_rule_multi_der_subdom|✅ proved - incomplete|shostak|4.884|
|chain_rule_multi_der_is_TCC1|✅ proved - incomplete|shostak|0.075|
|chain_rule_multi_der_is_TCC2|✅ proved - incomplete|shostak|0.070|
|chain_rule_multi_der_is_TCC3|✅ proved - incomplete|shostak|0.488|
|chain_rule_multi_der_is|✅ proved - incomplete|shostak|1.025|
|chain_rule_multi_der_is_subdom|✅ proved - incomplete|shostak|1.049|

## `lift_real_fun_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|lift_rd_TCC1|✅ proved - incomplete|shostak|0.060|
|dd_lift_dd|✅ proved - incomplete|shostak|0.892|
|lift_re_TCC1|✅ proved - incomplete|shostak|0.050|
|lift_re_TCC2|✅ proved - incomplete|shostak|0.040|
|lift_diff_TCC1|✅ proved - complete|shostak|0.050|
|lift_diff_TCC2|✅ proved - complete|shostak|0.157|
|lift_diff_TCC3|✅ proved - incomplete|shostak|0.050|
|lift_diff_TCC4|✅ proved - incomplete|shostak|0.050|
|lift_diff|✅ proved - incomplete|shostak|4.908|
|lift_der_TCC1|✅ proved - incomplete|shostak|0.060|
|lift_der|✅ proved - incomplete|shostak|5.930|
|liftr_TCC1|✅ proved - incomplete|shostak|0.054|
|lift_diff_right|✅ proved - incomplete|shostak|2.864|
|lift_der_right_TCC1|✅ proved - incomplete|shostak|0.060|
|lift_der_right_TCC2|✅ proved - incomplete|shostak|0.091|
|lift_der_right|✅ proved - incomplete|shostak|2.698|
|same_on_D_same_diff|✅ proved - incomplete|shostak|0.379|
|same_on_D_same_der_TCC1|✅ proved - incomplete|shostak|0.090|
|same_on_D_same_der|✅ proved - incomplete|shostak|0.724|

## `bounded_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|ua_u|✅ proved - complete|shostak|0.073|
|ub_u|✅ proved - complete|shostak|0.070|
|u_uaob|✅ proved - complete|shostak|0.160|
|ua_u_op|✅ proved - incomplete|shostak|0.080|
|ub_u_op|✅ proved - incomplete|shostak|0.100|
|u_uaob_op|✅ proved - incomplete|shostak|0.101|
|unbounded_below_no_glob_minimizer|✅ proved - incomplete|shostak|0.182|
|unbounded_above_no_glob_maximizer|✅ proved - incomplete|shostak|0.170|
|unbounded_no_glob_minimizer_maximizer|✅ proved - incomplete|shostak|0.486|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib/pvsio_utils/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230712-static-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230710-tcc-gen.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230707-defattach.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230706-extrategies.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`|
