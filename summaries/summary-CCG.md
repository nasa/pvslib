# Summary for `CCG`
Run started at 0:57:33 11/25/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **348**   | **348**    | **348**    | **0**  | **5:22.807 s**   |
|top|0|0|0|0|0.000|
|cc_def|0|0|0|0|0.000|
|ccg_def|0|0|0|0|0.000|
|ccg|27|27|27|0|23.951|
|scp|1|1|1|0|0.070|
|scp_to_ccg|6|6|6|0|3.472|
|scp_to_ccg_alt|6|6|6|0|0.539|
|measures|57|57|57|0|13.998|
|ccg_to_mwg|82|82|82|0|1:8.829|
|matrix_wdg|59|59|59|0|45.292|
|bounding_circuits_defs|108|108|108|0|2:43.653|
|bounding_circuits|2|2|2|0|3.003|
## Detailed Summary 
## `top`
No formula declaration found.
## `cc_def`
No formula declaration found.
## `ccg_def`
No formula declaration found.
## `ccg`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|gte_mc?_TCC1|✅ proved - incomplete|shostak|0.642|
|gte_mc?_TCC2|✅ proved - incomplete|shostak|0.316|
|gte_mc?_TCC3|✅ proved - incomplete|shostak|0.319|
|ccg_termination?_TCC1|✅ proved - incomplete|shostak|0.299|
|gt_to_gte|✅ proved - incomplete|shostak|0.072|
|gte_mc_comp_TCC1|✅ proved - incomplete|shostak|0.311|
|gte_mc_comp_TCC2|✅ proved - incomplete|shostak|0.322|
|gte_mc_comp_TCC3|✅ proved - incomplete|shostak|0.337|
|gte_mc_comp_TCC4|✅ proved - incomplete|shostak|0.385|
|gte_mc_comp_TCC5|✅ proved - incomplete|shostak|0.260|
|gte_mc_comp_TCC6|✅ proved - incomplete|shostak|0.505|
|gte_mc_comp|✅ proved - incomplete|shostak|0.562|
|gte_mc_sub_walk_TCC1|✅ proved - incomplete|shostak|0.439|
|gte_mc_sub_walk_TCC2|✅ proved - incomplete|shostak|0.404|
|gte_mc_sub_walk|✅ proved - incomplete|shostak|0.202|
|gt_mc_comp|✅ proved - incomplete|shostak|0.475|
|parext_TCC1|✅ proved - complete|shostak|0.060|
|parext|✅ proved - complete|shostak|0.196|
|ge_transitive|✅ proved - complete|shostak|0.061|
|ge_gt_transitive|✅ proved - complete|shostak|0.060|
|gt_ge_transitive|✅ proved - complete|shostak|0.055|
|extract_infinite_descent|✅ proved - incomplete|shostak|0.748|
|build_infinite_descent_TCC1|✅ proved - complete|shostak|0.128|
|build_infinite_descent|✅ proved - incomplete|shostak|1.272|
|ccg_pigeonhole|✅ proved - incomplete|shostak|0.284|
|ccg_termination_and_trans_implies_scp|✅ proved - incomplete|shostak|7.331|
|ccg_termination_implies_scp|✅ proved - incomplete|shostak|7.906|

## `scp`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|scp_termination|✅ proved - incomplete|shostak|0.070|

## `scp_to_ccg`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|omega_is_wf|✅ proved - incomplete|shostak|0.191|
|omega_is_finite|✅ proved - complete|shostak|0.060|
|IMP_omega_TCC1|✅ proved - incomplete|shostak|0.053|
|IMP_omega_TCC2|✅ proved - complete|shostak|0.050|
|IMP_ccg_TCC1|✅ proved - complete|shostak|0.050|
|scp_implies_ccg_termination|✅ proved - incomplete|shostak|3.068|

## `scp_to_ccg_alt`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|R_wf|✅ proved - incomplete|shostak|0.194|
|R_no_desc_inf_branch|✅ proved - incomplete|shostak|0.195|
|IMP_omega_TCC1|✅ proved - incomplete|shostak|0.050|
|IMP_omega_TCC2|✅ proved - incomplete|shostak|0.050|
|IMP_ccg_TCC1|✅ proved - incomplete|shostak|0.050|
|scp_implies_ccg_termination|✅ proved - incomplete|shostak|0.000|

## `measures`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|get_TCC1|✅ proved - complete|shostak|0.150|
|get_TCC2|✅ proved - complete|shostak|0.070|
|form_matrix_TCC1|✅ proved - incomplete|shostak|0.109|
|form_matrix_TCC2|✅ proved - incomplete|shostak|0.116|
|form_matrix_TCC3|✅ proved - incomplete|shostak|0.274|
|form_matfun_TCC1|✅ proved - complete|shostak|0.070|
|matrix_fun_idemp|✅ proved - incomplete|shostak|0.172|
|fun_matrix_idemp|✅ proved - incomplete|shostak|0.092|
|get_form_matrix|✅ proved - incomplete|shostak|0.063|
|max__TCC1|✅ proved - complete|shostak|0.060|
|max__TCC2|✅ proved - complete|shostak|0.060|
|max__TCC3|✅ proved - complete|shostak|0.070|
|max__TCC4|✅ proved - complete|shostak|0.207|
|max__TCC5|✅ proved - complete|shostak|0.103|
|max__TCC6|✅ proved - complete|shostak|0.070|
|max__TCC7|✅ proved - complete|shostak|0.070|
|max__TCC8|✅ proved - complete|shostak|0.060|
|id_def|✅ proved - incomplete|shostak|0.065|
|add_commute|✅ proved - complete|shostak|0.090|
|add_assoc|✅ proved - complete|shostak|0.136|
|add_measures_positive|✅ proved - complete|shostak|0.105|
|id_on_measures|✅ proved - complete|shostak|0.080|
|card_prep|✅ proved - incomplete|shostak|1.444|
|card_measure_matrices_TCC1|✅ proved - incomplete|shostak|0.050|
|card_measure_matrices_TCC2|✅ proved - complete|shostak|0.060|
|card_measure_matrices|✅ proved - incomplete|shostak|3.602|
|matrices_fun_order|✅ proved - complete|shostak|0.114|
|matrices_order|✅ proved - incomplete|shostak|0.225|
|mult_fun_left_preserves_order|✅ proved - complete|shostak|0.245|
|mult_left_preserves_order|✅ proved - incomplete|shostak|0.079|
|mult_fun_right_preserves_order|✅ proved - complete|shostak|0.000|
|mult_right_preserves_order|✅ proved - incomplete|shostak|0.086|
|id_fun_is_identity|✅ proved - complete|shostak|0.252|
|id_is_identity|✅ proved - incomplete|shostak|0.090|
|max_add|✅ proved - complete|shostak|0.437|
|measure_matrix_fun_assoc|✅ proved - complete|shostak|3.089|
|measure_matrix_assoc|✅ proved - incomplete|shostak|0.101|
|defined_pos?_def|✅ proved - complete|shostak|0.096|
|positive_mult_fun|✅ proved - complete|shostak|0.106|
|positive_multiplication|✅ proved - incomplete|shostak|0.133|
|positive_commute|✅ proved - incomplete|shostak|0.091|
|positive_mult_fun_pos|✅ proved - complete|shostak|0.095|
|positive_mult_pos|✅ proved - incomplete|shostak|0.110|
|positive_sum_fun|✅ proved - complete|shostak|0.095|
|positive_sum|✅ proved - incomplete|shostak|0.070|
|positive_sum_fun_positive_mult_fun|✅ proved - complete|shostak|0.074|
|positive_sum_positive_mult|✅ proved - incomplete|shostak|0.080|
|compatible_is_positive|✅ proved - incomplete|shostak|0.065|
|compatible_positive_grafting|✅ proved - incomplete|shostak|0.096|
|defined_pos_mul_fun|✅ proved - complete|shostak|0.100|
|defined_pos_mul|✅ proved - incomplete|shostak|0.086|
|defined_pos_decomp_fun|✅ proved - complete|shostak|0.115|
|defined_pos_decomposition|✅ proved - incomplete|shostak|0.075|
|positive_pos_mul_fun|✅ proved - complete|shostak|0.084|
|positive_pos_mul|✅ proved - incomplete|shostak|0.090|
|positive_pos_decomp_fun|✅ proved - complete|shostak|0.086|
|positive_pos_decomposition|✅ proved - incomplete|shostak|0.085|

## `ccg_to_mwg`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|indi_f_sound_all_vertex_TCC1|✅ proved - incomplete|shostak|0.968|
|indi_f_sound_all_vertex_TCC2|✅ proved - incomplete|shostak|0.346|
|indi_f_sound_all_vertex_TCC3|✅ proved - incomplete|shostak|0.901|
|indi_f_sound_all_vertex_TCC4|✅ proved - incomplete|shostak|0.808|
|indi_f_sound_all_vertex_TCC5|✅ proved - incomplete|shostak|0.324|
|indi_f_sound_all_vertex_correctness|✅ proved - incomplete|shostak|1.617|
|indi_f_sound_iter_TCC1|✅ proved - incomplete|shostak|0.299|
|indi_f_sound_iter_TCC2|✅ proved - incomplete|shostak|0.334|
|indi_f_sound_iter_TCC3|✅ proved - incomplete|shostak|0.823|
|indi_f_sound_iter_TCC4|✅ proved - complete|shostak|0.060|
|indi_f_sound_iter_TCC5|✅ proved - incomplete|shostak|0.346|
|indi_f_sound_iter_TCC6|✅ proved - incomplete|shostak|0.350|
|indi_f_sound_iter_TCC7|✅ proved - incomplete|shostak|0.822|
|indi_f_sound_iter_TCC8|✅ proved - incomplete|shostak|0.856|
|indi_f_sound_iter_TCC9|✅ proved - incomplete|shostak|1.195|
|indi_f_sound_iter_TCC10|✅ proved - incomplete|shostak|0.806|
|indi_f_sound_iter_TCC11|✅ proved - incomplete|shostak|0.835|
|indi_f_sound_iter_TCC12|✅ proved - incomplete|shostak|0.000|
|indi_f_sound_iter_TCC13|✅ proved - incomplete|shostak|0.343|
|indi_f_sound_iter_TCC14|✅ proved - incomplete|shostak|0.879|
|indi_f_sound_iter_TCC15|✅ proved - incomplete|shostak|0.340|
|indi_f_sound_iter_correctness_TCC1|✅ proved - incomplete|shostak|0.307|
|indi_f_sound_iter_correctness_TCC2|✅ proved - incomplete|shostak|0.311|
|indi_f_sound_iter_correctness|✅ proved - incomplete|shostak|0.080|
|indi_f_equiv_TCC1|✅ proved - incomplete|shostak|0.322|
|indi_f_equiv|✅ proved - incomplete|shostak|0.155|
|indi_f_sc_is_sound|✅ proved - incomplete|shostak|0.979|
|indi_f_sc_is_complete|✅ proved - incomplete|shostak|1.020|
|indi_func_is_sc|✅ proved - incomplete|shostak|0.201|
|weight_TCC1|✅ proved - incomplete|shostak|0.878|
|wlist_from_edges_TCC1|✅ proved - incomplete|shostak|0.344|
|wlist_from_edges_TCC2|✅ proved - incomplete|shostak|0.070|
|wlist_from_edges_TCC3|✅ proved - incomplete|shostak|0.060|
|wlist_from_edges_TCC4|✅ proved - incomplete|shostak|1.096|
|wlist_from_edges_TCC5|✅ proved - incomplete|shostak|0.000|
|wlist_from_edges_TCC6|✅ proved - incomplete|shostak|0.103|
|wlist_from_edges_TCC7|✅ proved - incomplete|shostak|0.935|
|wlist_from_edges_TCC8|✅ proved - incomplete|shostak|0.000|
|build_weights_list_TCC1|✅ proved - incomplete|shostak|0.058|
|build_weights_list_TCC2|✅ proved - incomplete|shostak|0.060|
|build_weights_list_TCC3|✅ proved - incomplete|shostak|0.184|
|build_weights_list_TCC4|✅ proved - incomplete|shostak|0.359|
|ccg_to_mwg_TCC1|✅ proved - incomplete|shostak|0.235|
|ccg_to_mwg_TCC2|✅ proved - incomplete|shostak|0.083|
|same_edges|✅ proved - incomplete|shostak|0.110|
|same_verts|✅ proved - incomplete|shostak|0.094|
|same_walks|✅ proved - incomplete|shostak|0.103|
|gte_mc_to_defined_pos_TCC1|✅ proved - incomplete|shostak|1.351|
|gte_mc_to_defined_pos_TCC2|✅ proved - incomplete|shostak|1.363|
|gte_mc_to_defined_pos_TCC3|✅ proved - incomplete|shostak|1.340|
|gte_mc_to_defined_pos_TCC4|✅ proved - incomplete|shostak|0.625|
|gte_mc_to_defined_pos|✅ proved - incomplete|shostak|4.542|
|defined_pos_to_gte_mc_TCC1|✅ proved - incomplete|shostak|1.297|
|defined_pos_to_gte_mc_TCC2|✅ proved - incomplete|shostak|0.000|
|defined_pos_to_gte_mc_TCC3|✅ proved - incomplete|shostak|0.626|
|defined_pos_to_gte_mc|✅ proved - incomplete|shostak|7.864|
|no_defined_pos_iff_no_gte_mc_TCC1|✅ proved - incomplete|shostak|1.361|
|no_defined_pos_iff_no_gte_mc_TCC2|✅ proved - incomplete|shostak|0.000|
|no_defined_pos_iff_no_gte_mc|✅ proved - incomplete|shostak|0.171|
|gt_mc_to_positive_pos_TCC1|✅ proved - incomplete|shostak|1.390|
|gt_mc_to_positive_pos_TCC2|✅ proved - incomplete|shostak|1.417|
|gt_mc_to_positive_pos_TCC3|✅ proved - incomplete|shostak|1.333|
|gt_mc_to_positive_pos_TCC4|✅ proved - incomplete|shostak|0.632|
|gt_mc_to_positive_pos|✅ proved - incomplete|shostak|7.745|
|positive_pos_to_gt_mc_TCC1|✅ proved - incomplete|shostak|1.434|
|positive_pos_to_gt_mc|✅ proved - incomplete|shostak|3.185|
|no_positive_pos_no_gt_mc|✅ proved - incomplete|shostak|0.161|
|positive_to_gt_mc_TCC1|✅ proved - incomplete|shostak|1.323|
|positive_to_gt_mc_TCC2|✅ proved - incomplete|shostak|1.370|
|positive_to_gt_mc_TCC3|✅ proved - incomplete|shostak|0.659|
|positive_to_gt_mc|✅ proved - incomplete|shostak|0.196|
|gt_mc_to_positive_TCC1|✅ proved - incomplete|shostak|1.340|
|gt_mc_to_positive_TCC2|✅ proved - incomplete|shostak|1.381|
|gt_mc_to_positive_TCC3|✅ proved - incomplete|shostak|0.645|
|gt_mc_to_positive|✅ proved - incomplete|shostak|0.155|
|positive_iff_gt_mc_TCC1|✅ proved - incomplete|shostak|0.000|
|positive_iff_gt_mc_TCC2|✅ proved - incomplete|shostak|1.366|
|positive_iff_gt_mc_TCC3|✅ proved - incomplete|shostak|0.602|
|positive_iff_gt_mc|✅ proved - incomplete|shostak|0.140|
|mwg_termination_to_ccg_termination|✅ proved - incomplete|shostak|0.148|
|ccg_termination_to_mwg_termination|✅ proved - incomplete|shostak|0.167|
|mwg_termination_iff_ccg_termination|✅ proved - incomplete|shostak|0.101|

## `matrix_wdg`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_c_weighted_digraphs_TCC1|✅ proved - incomplete|shostak|0.060|
|IMP_c_weighted_digraphs_TCC2|✅ proved - incomplete|shostak|0.060|
|mwg_termination?_TCC1|✅ proved - incomplete|shostak|0.505|
|mwg_termination?_TCC2|✅ proved - incomplete|shostak|0.419|
|double_cycle?_TCC1|✅ proved - incomplete|shostak|0.540|
|positive_double_cycle?_TCC1|✅ proved - incomplete|shostak|0.109|
|limiting_measure?_TCC1|✅ proved - incomplete|shostak|0.070|
|criterion_one?_TCC1|✅ proved - incomplete|shostak|0.512|
|criterion_one?_TCC2|✅ proved - incomplete|shostak|0.520|
|positive_eq_circuit_TCC1|✅ proved - incomplete|shostak|0.584|
|positive_eq_circuit_TCC2|✅ proved - incomplete|shostak|0.536|
|positive_eq_circuit_TCC3|✅ proved - incomplete|shostak|0.620|
|positive_eq_circuit|✅ proved - incomplete|shostak|7.002|
|lm_defined_walks_TCC1|✅ proved - incomplete|shostak|0.490|
|lm_defined_walks_TCC2|✅ proved - incomplete|shostak|0.475|
|lm_defined_walks|✅ proved - incomplete|shostak|1.607|
|lm_positive_edge_TCC1|✅ proved - incomplete|shostak|0.102|
|lm_positive_edge|✅ proved - incomplete|shostak|0.697|
|lm_pstv_cycles_pstv_circuits|✅ proved - incomplete|shostak|0.000|
|limiting_labeling?_TCC1|✅ proved - incomplete|shostak|0.070|
|limiting_labeling?_TCC2|✅ proved - incomplete|shostak|0.079|
|limiting_labeling?_TCC3|✅ proved - incomplete|shostak|0.080|
|limiting_labeling?_TCC4|✅ proved - incomplete|shostak|0.419|
|limiting_labeling?_TCC5|✅ proved - incomplete|shostak|0.480|
|limiting_labeling?_TCC6|✅ proved - incomplete|shostak|0.486|
|limiting_labeling?_TCC7|✅ proved - incomplete|shostak|0.444|
|limiting_labeling?_TCC8|✅ proved - incomplete|shostak|0.425|
|ll_defined_walks_TCC1|✅ proved - incomplete|shostak|0.464|
|ll_defined_walks_TCC2|✅ proved - incomplete|shostak|0.585|
|ll_defined_walks_TCC3|✅ proved - incomplete|shostak|0.614|
|ll_defined_walks_TCC4|✅ proved - incomplete|shostak|0.543|
|ll_defined_walks_TCC5|✅ proved - incomplete|shostak|0.470|
|ll_defined_walks|✅ proved - incomplete|shostak|1.678|
|ll_pstv_pos_circuits_TCC1|✅ proved - incomplete|shostak|0.446|
|ll_pstv_pos_circuits_TCC2|✅ proved - incomplete|shostak|0.501|
|ll_pstv_pos_circuits_TCC3|✅ proved - incomplete|shostak|0.516|
|ll_pstv_pos_circuits|✅ proved - incomplete|shostak|14.019|
|ll_pstv_circuits|✅ proved - incomplete|shostak|0.110|
|circuit_length_reduce_TCC1|✅ proved - incomplete|shostak|0.433|
|circuit_length_reduce_TCC2|✅ proved - incomplete|shostak|0.072|
|circuit_length_reduce_TCC3|✅ proved - incomplete|shostak|0.070|
|circuit_length_reduce_TCC4|✅ proved - incomplete|shostak|0.432|
|circuit_length_reduce_TCC5|✅ proved - incomplete|shostak|0.529|
|circuit_length_reduce|✅ proved - incomplete|shostak|0.000|
|circuit_length_bounded|✅ proved - incomplete|shostak|0.494|
|bounded_circuits_pstv_TCC1|✅ proved - incomplete|shostak|0.060|
|bounded_circuits_pstv_TCC2|✅ proved - incomplete|shostak|0.413|
|bounded_circuits_pstv|✅ proved - incomplete|shostak|0.295|
|lower_bounding_sets_TCC1|✅ proved - incomplete|shostak|0.070|
|lower_bounding_sets_TCC2|✅ proved - incomplete|shostak|0.404|
|lower_bounding_sets_TCC3|✅ proved - incomplete|shostak|0.526|
|lower_bounding_sets_TCC4|✅ proved - incomplete|shostak|0.433|
|lower_bounding_sets|✅ proved - incomplete|shostak|0.628|
|CircBound_TCC1|✅ proved - incomplete|shostak|0.059|
|BoundingSets_TCC1|✅ proved - incomplete|shostak|0.496|
|BoundingSets_TCC2|✅ proved - incomplete|shostak|0.411|
|bounding_steps_iter_TCC1|✅ proved - incomplete|shostak|1.107|
|bounding_steps_iter_TCC2|✅ proved - incomplete|shostak|0.172|
|bounding_steps_iter_def|✅ proved - incomplete|shostak|0.851|

## `bounding_circuits_defs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|is_less_MM_list_TCC1|✅ proved - complete|shostak|0.154|
|is_less_MM_list_TCC2|✅ proved - complete|shostak|0.090|
|is_less_MM_list_TCC3|✅ proved - complete|shostak|0.163|
|is_less_MM_list_TCC4|✅ proved - complete|shostak|0.522|
|minimalize_iter_TCC1|✅ proved - complete|shostak|0.094|
|minimalize_iter_TCC2|✅ proved - complete|shostak|0.087|
|minimalize_iter_TCC3|✅ proved - incomplete|shostak|1.338|
|minimalize_iter_TCC4|✅ proved - complete|shostak|0.094|
|minimalize_iter_TCC5|✅ proved - complete|shostak|0.000|
|minimalize_iter_TCC6|✅ proved - complete|shostak|0.068|
|minimalize_TCC1|✅ proved - incomplete|shostak|3.414|
|list_prod_pre_TCC1|✅ proved - incomplete|shostak|0.080|
|list_prod_pre_TCC2|✅ proved - complete|shostak|0.100|
|list_prod_pre_TCC3|✅ proved - incomplete|shostak|0.174|
|list_prod_TCC1|✅ proved - incomplete|shostak|0.110|
|decomp_weight_TCC1|✅ proved - incomplete|shostak|0.074|
|decomp_weight_TCC2|✅ proved - incomplete|shostak|0.070|
|decomp_weight_TCC3|✅ proved - incomplete|shostak|0.070|
|decomp_weight_TCC4|✅ proved - incomplete|shostak|0.074|
|decomp_weight_TCC5|✅ proved - incomplete|shostak|0.070|
|decomp_weight_TCC6|✅ proved - incomplete|shostak|0.823|
|decomp_weight_TCC7|✅ proved - incomplete|shostak|0.414|
|decomp_weight_TCC8|✅ proved - incomplete|shostak|0.000|
|decomp_weight_TCC9|✅ proved - incomplete|shostak|0.061|
|decomp_weight_TCC10|✅ proved - incomplete|shostak|0.070|
|decomp_weight_TCC11|✅ proved - incomplete|shostak|0.080|
|decomp_weight_TCC12|✅ proved - incomplete|shostak|0.738|
|decomp_weight_TCC13|✅ proved - incomplete|shostak|0.453|
|decomp_weight_TCC14|✅ proved - incomplete|shostak|0.749|
|decomp_weight_TCC15|✅ proved - incomplete|shostak|58.696|
|decomp_weight_TCC16|✅ proved - incomplete|shostak|0.080|
|decomp_weight_TCC17|✅ proved - incomplete|shostak|0.163|
|decomp_weight_TCC18|✅ proved - incomplete|shostak|0.110|
|decomp_weight_def_TCC1|✅ proved - incomplete|shostak|0.134|
|decomp_weight_def_TCC2|✅ proved - incomplete|shostak|0.070|
|decomp_weight_def_TCC3|✅ proved - incomplete|shostak|0.070|
|decomp_weight_def_TCC4|✅ proved - incomplete|shostak|0.396|
|decomp_weight_def|✅ proved - incomplete|shostak|24.211|
|walk_bounding_TCC1|✅ proved - incomplete|shostak|0.156|
|walk_bounding_TCC2|✅ proved - incomplete|shostak|0.070|
|walk_bounding_TCC3|✅ proved - incomplete|shostak|0.063|
|walk_bounding_TCC4|✅ proved - incomplete|shostak|1.060|
|walk_bounding_TCC5|✅ proved - incomplete|shostak|0.467|
|walk_bounding_TCC6|✅ proved - incomplete|shostak|0.130|
|walk_bounding_TCC7|✅ proved - incomplete|shostak|1.247|
|walk_bounding_TCC8|✅ proved - incomplete|shostak|0.377|
|walk_bounding_TCC9|✅ proved - incomplete|shostak|0.393|
|walk_bounding_def_TCC1|✅ proved - incomplete|shostak|0.435|
|walk_bounding_def_TCC2|✅ proved - incomplete|shostak|0.060|
|walk_bounding_def_TCC3|✅ proved - incomplete|shostak|0.060|
|walk_bounding_def_TCC4|✅ proved - incomplete|shostak|0.388|
|walk_bounding_def|✅ proved - incomplete|shostak|35.735|
|walk_bounding_has_walk_wgt_TCC1|✅ proved - incomplete|shostak|0.425|
|walk_bounding_has_walk_wgt_TCC2|✅ proved - incomplete|shostak|0.060|
|walk_bounding_has_walk_wgt_TCC3|✅ proved - incomplete|shostak|0.062|
|walk_bounding_has_walk_wgt_TCC4|✅ proved - incomplete|shostak|0.429|
|walk_bounding_has_walk_wgt|✅ proved - incomplete|shostak|2.928|
|walk_list_bounding_TCC1|✅ proved - incomplete|shostak|0.400|
|walk_list_bounding_TCC2|✅ proved - incomplete|shostak|0.901|
|walk_list_bounding_def_TCC1|✅ proved - incomplete|shostak|0.441|
|walk_list_bounding_def_TCC2|✅ proved - incomplete|shostak|0.070|
|walk_list_bounding_def_TCC3|✅ proved - incomplete|shostak|0.061|
|walk_list_bounding_def_TCC4|✅ proved - incomplete|shostak|0.389|
|walk_list_bounding_def|✅ proved - incomplete|shostak|0.000|
|walk_list_bounding_has_walk_wgt_TCC1|✅ proved - incomplete|shostak|0.434|
|walk_list_bounding_has_walk_wgt_TCC2|✅ proved - incomplete|shostak|0.070|
|walk_list_bounding_has_walk_wgt_TCC3|✅ proved - incomplete|shostak|0.070|
|walk_list_bounding_has_walk_wgt_TCC4|✅ proved - incomplete|shostak|0.434|
|walk_list_bounding_has_walk_wgt|✅ proved - incomplete|shostak|1.412|
|bound_circuits_at_def_TCC1|✅ proved - incomplete|shostak|0.534|
|bound_circuits_at_def_TCC2|✅ proved - incomplete|shostak|0.070|
|bound_circuits_at_def_TCC3|✅ proved - incomplete|shostak|0.070|
|bound_circuits_at_def_TCC4|✅ proved - incomplete|shostak|0.489|
|bound_circuits_at_def|✅ proved - incomplete|shostak|1.553|
|index_of_vert_TCC1|✅ proved - incomplete|shostak|0.878|
|index_of_vert_TCC2|✅ proved - incomplete|shostak|0.108|
|index_of_vert_TCC3|✅ proved - incomplete|shostak|0.999|
|index_of_vert_TCC4|✅ proved - incomplete|shostak|0.090|
|index_of_vert_TCC5|✅ proved - incomplete|shostak|0.484|
|bound_circuits_list_def_TCC1|✅ proved - incomplete|shostak|0.553|
|bound_circuits_list_def_TCC2|✅ proved - incomplete|shostak|1.088|
|bound_circuits_list_def_TCC3|✅ proved - incomplete|shostak|0.585|
|bound_circuits_list_def_TCC4|✅ proved - incomplete|shostak|0.070|
|bound_circuits_list_def_TCC5|✅ proved - incomplete|shostak|0.071|
|bound_circuits_list_def_TCC6|✅ proved - incomplete|shostak|0.070|
|bound_circuits_list_def|✅ proved - incomplete|shostak|0.000|
|bound_circuits_iter_TCC1|✅ proved - incomplete|shostak|0.139|
|bound_circuits_iter_TCC2|✅ proved - incomplete|shostak|0.161|
|bound_circuits_iter_TCC3|✅ proved - incomplete|shostak|1.063|
|bound_circuits_iter_TCC4|✅ proved - incomplete|shostak|0.977|
|bound_circuits_iter_def_TCC1|✅ proved - incomplete|shostak|0.553|
|bound_circuits_iter_def_TCC2|✅ proved - incomplete|shostak|0.070|
|bound_circuits_iter_def_TCC3|✅ proved - incomplete|shostak|0.070|
|bound_circuits_iter_def_TCC4|✅ proved - incomplete|shostak|0.476|
|bound_circuits_iter_def|✅ proved - incomplete|shostak|2.482|
|bound_circuits_iter_stable|✅ proved - incomplete|shostak|0.000|
|bound_circuits_TCC1|✅ proved - incomplete|shostak|0.450|
|bound_circuits_TCC2|✅ proved - incomplete|shostak|0.500|
|bound_circuits_TCC3|✅ proved - incomplete|shostak|0.501|
|bound_circuits_TCC4|✅ proved - incomplete|shostak|0.000|
|bound_circuits_TCC5|✅ proved - incomplete|shostak|0.612|
|bound_circuits_TCC6|✅ proved - incomplete|shostak|1.109|
|bound_circuits_TCC7|✅ proved - incomplete|shostak|0.000|
|start_bounding_TCC1|✅ proved - incomplete|shostak|0.524|
|start_bounding_TCC2|✅ proved - incomplete|shostak|1.097|
|start_bounding_TCC3|✅ proved - incomplete|shostak|0.559|
|start_bounding_TCC4|✅ proved - incomplete|shostak|0.000|
|bounding_from_graph_lists_TCC1|✅ proved - incomplete|shostak|1.207|

## `bounding_circuits`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|bounding_from_gl_termination|✅ proved - incomplete|shostak|2.083|
|c_bounding_from_gl_termination|✅ proved - incomplete|shostak|0.920|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Mac OS X (Intel)] (Nov 14, 2020 23:13)|
| Patch Version| n/a|
| Library Path| `/Applications/pvs-7.1.0/pvslib/`<br/>`/Applications/pvs-7.1.0/lib/`<br/>`/Applications/pvs-7.1.0/pvslib/float/`<br/>`/Applications/pvs-7.1.0/pvslib/pvsio_utils/`|
| Loaded Patches | `/Applications/pvs-7.1.0/pvslib/.pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230712-static-update.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230710-tcc-gen.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230707-defattach.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230706-extrategies.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210323-wish.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210225-cl2pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210715a.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210715.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210707.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210706.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210511.lisp`|
