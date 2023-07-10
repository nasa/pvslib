# Summary for `CCG`
Run started at 3:23:13 7/8/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **348**   | **348**    | **348**    | **0**  | **7:46.697 s**   |
|top|0|0|0|0|0.000|
|cc_def|0|0|0|0|0.000|
|ccg_def|0|0|0|0|0.000|
|ccg|27|27|27|0|34.655|
|scp|1|1|1|0|0.090|
|scp_to_ccg|6|6|6|0|5.286|
|scp_to_ccg_alt|6|6|6|0|5.458|
|measures|57|57|57|0|14.255|
|ccg_to_mwg|82|82|82|0|1:43.155|
|matrix_wdg|59|59|59|0|1:2.777|
|bounding_circuits_defs|108|108|108|0|3:56.906|
|bounding_circuits|2|2|2|0|4.115|
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
|gte_mc?_TCC1|✅ proved - incomplete|shostak|0.543|
|gte_mc?_TCC2|✅ proved - incomplete|shostak|0.370|
|gte_mc?_TCC3|✅ proved - incomplete|shostak|0.393|
|ccg_termination?_TCC1|✅ proved - incomplete|shostak|0.420|
|gt_to_gte|✅ proved - incomplete|shostak|0.098|
|gte_mc_comp_TCC1|✅ proved - incomplete|shostak|0.449|
|gte_mc_comp_TCC2|✅ proved - incomplete|shostak|0.440|
|gte_mc_comp_TCC3|✅ proved - incomplete|shostak|0.471|
|gte_mc_comp_TCC4|✅ proved - incomplete|shostak|0.461|
|gte_mc_comp_TCC5|✅ proved - incomplete|shostak|0.284|
|gte_mc_comp_TCC6|✅ proved - incomplete|shostak|0.702|
|gte_mc_comp|✅ proved - incomplete|shostak|0.742|
|gte_mc_sub_walk_TCC1|✅ proved - incomplete|shostak|0.608|
|gte_mc_sub_walk_TCC2|✅ proved - incomplete|shostak|0.567|
|gte_mc_sub_walk|✅ proved - incomplete|shostak|0.293|
|gt_mc_comp|✅ proved - incomplete|shostak|0.646|
|parext_TCC1|✅ proved - complete|shostak|0.080|
|parext|✅ proved - complete|shostak|0.281|
|ge_transitive|✅ proved - complete|shostak|0.091|
|ge_gt_transitive|✅ proved - complete|shostak|0.080|
|gt_ge_transitive|✅ proved - complete|shostak|0.083|
|extract_infinite_descent|✅ proved - incomplete|shostak|1.017|
|build_infinite_descent_TCC1|✅ proved - complete|shostak|0.188|
|build_infinite_descent|✅ proved - incomplete|shostak|1.775|
|ccg_pigeonhole|✅ proved - incomplete|shostak|0.372|
|ccg_termination_and_trans_implies_scp|✅ proved - incomplete|shostak|11.561|
|ccg_termination_implies_scp|✅ proved - incomplete|shostak|11.640|

## `scp`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|scp_termination|✅ proved - incomplete|shostak|0.090|

## `scp_to_ccg`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|omega_is_wf|✅ proved - incomplete|shostak|0.261|
|omega_is_finite|✅ proved - complete|shostak|0.080|
|IMP_omega_TCC1|✅ proved - incomplete|shostak|0.069|
|IMP_omega_TCC2|✅ proved - complete|shostak|0.070|
|IMP_ccg_TCC1|✅ proved - complete|shostak|0.070|
|scp_implies_ccg_termination|✅ proved - incomplete|shostak|4.736|

## `scp_to_ccg_alt`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|R_wf|✅ proved - incomplete|shostak|0.261|
|R_no_desc_inf_branch|✅ proved - incomplete|shostak|0.269|
|IMP_omega_TCC1|✅ proved - incomplete|shostak|0.070|
|IMP_omega_TCC2|✅ proved - incomplete|shostak|0.070|
|IMP_ccg_TCC1|✅ proved - incomplete|shostak|0.070|
|scp_implies_ccg_termination|✅ proved - incomplete|shostak|4.718|

## `measures`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|get_TCC1|✅ proved - complete|shostak|0.190|
|get_TCC2|✅ proved - complete|shostak|0.100|
|form_matrix_TCC1|✅ proved - incomplete|shostak|0.158|
|form_matrix_TCC2|✅ proved - incomplete|shostak|0.150|
|form_matrix_TCC3|✅ proved - incomplete|shostak|0.356|
|form_matfun_TCC1|✅ proved - complete|shostak|0.082|
|matrix_fun_idemp|✅ proved - incomplete|shostak|0.240|
|fun_matrix_idemp|✅ proved - incomplete|shostak|0.131|
|get_form_matrix|✅ proved - incomplete|shostak|0.090|
|max__TCC1|✅ proved - complete|shostak|0.070|
|max__TCC2|✅ proved - complete|shostak|0.097|
|max__TCC3|✅ proved - complete|shostak|0.100|
|max__TCC4|✅ proved - complete|shostak|0.240|
|max__TCC5|✅ proved - complete|shostak|0.149|
|max__TCC6|✅ proved - complete|shostak|0.090|
|max__TCC7|✅ proved - complete|shostak|0.090|
|max__TCC8|✅ proved - complete|shostak|0.090|
|id_def|✅ proved - incomplete|shostak|0.090|
|add_commute|✅ proved - complete|shostak|0.111|
|add_assoc|✅ proved - complete|shostak|0.180|
|add_measures_positive|✅ proved - complete|shostak|0.133|
|id_on_measures|✅ proved - complete|shostak|0.110|
|card_prep|✅ proved - incomplete|shostak|1.891|
|card_measure_matrices_TCC1|✅ proved - incomplete|shostak|0.080|
|card_measure_matrices_TCC2|✅ proved - complete|shostak|0.080|
|card_measure_matrices|✅ proved - incomplete|shostak|0.000|
|matrices_fun_order|✅ proved - complete|shostak|0.160|
|matrices_order|✅ proved - incomplete|shostak|0.310|
|mult_fun_left_preserves_order|✅ proved - complete|shostak|0.306|
|mult_left_preserves_order|✅ proved - incomplete|shostak|0.109|
|mult_fun_right_preserves_order|✅ proved - complete|shostak|0.296|
|mult_right_preserves_order|✅ proved - incomplete|shostak|0.110|
|id_fun_is_identity|✅ proved - complete|shostak|0.336|
|id_is_identity|✅ proved - incomplete|shostak|0.122|
|max_add|✅ proved - complete|shostak|0.603|
|measure_matrix_fun_assoc|✅ proved - complete|shostak|4.211|
|measure_matrix_assoc|✅ proved - incomplete|shostak|0.140|
|defined_pos?_def|✅ proved - complete|shostak|0.112|
|positive_mult_fun|✅ proved - complete|shostak|0.161|
|positive_multiplication|✅ proved - incomplete|shostak|0.170|
|positive_commute|✅ proved - incomplete|shostak|0.109|
|positive_mult_fun_pos|✅ proved - complete|shostak|0.137|
|positive_mult_pos|✅ proved - incomplete|shostak|0.150|
|positive_sum_fun|✅ proved - complete|shostak|0.120|
|positive_sum|✅ proved - incomplete|shostak|0.103|
|positive_sum_fun_positive_mult_fun|✅ proved - complete|shostak|0.090|
|positive_sum_positive_mult|✅ proved - incomplete|shostak|0.114|
|compatible_is_positive|✅ proved - incomplete|shostak|0.100|
|compatible_positive_grafting|✅ proved - incomplete|shostak|0.123|
|defined_pos_mul_fun|✅ proved - complete|shostak|0.120|
|defined_pos_mul|✅ proved - incomplete|shostak|0.114|
|defined_pos_decomp_fun|✅ proved - complete|shostak|0.153|
|defined_pos_decomposition|✅ proved - incomplete|shostak|0.090|
|positive_pos_mul_fun|✅ proved - complete|shostak|0.120|
|positive_pos_mul|✅ proved - incomplete|shostak|0.124|
|positive_pos_decomp_fun|✅ proved - complete|shostak|0.134|
|positive_pos_decomposition|✅ proved - incomplete|shostak|0.110|

## `ccg_to_mwg`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|indi_f_sound_all_vertex_TCC1|✅ proved - incomplete|shostak|1.317|
|indi_f_sound_all_vertex_TCC2|✅ proved - incomplete|shostak|0.489|
|indi_f_sound_all_vertex_TCC3|✅ proved - incomplete|shostak|1.265|
|indi_f_sound_all_vertex_TCC4|✅ proved - incomplete|shostak|1.196|
|indi_f_sound_all_vertex_TCC5|✅ proved - incomplete|shostak|0.465|
|indi_f_sound_all_vertex_correctness|✅ proved - incomplete|shostak|2.794|
|indi_f_sound_iter_TCC1|✅ proved - incomplete|shostak|0.589|
|indi_f_sound_iter_TCC2|✅ proved - incomplete|shostak|0.440|
|indi_f_sound_iter_TCC3|✅ proved - incomplete|shostak|1.227|
|indi_f_sound_iter_TCC4|✅ proved - complete|shostak|0.080|
|indi_f_sound_iter_TCC5|✅ proved - incomplete|shostak|0.514|
|indi_f_sound_iter_TCC6|✅ proved - incomplete|shostak|0.503|
|indi_f_sound_iter_TCC7|✅ proved - incomplete|shostak|1.170|
|indi_f_sound_iter_TCC8|✅ proved - incomplete|shostak|1.222|
|indi_f_sound_iter_TCC9|✅ proved - incomplete|shostak|1.817|
|indi_f_sound_iter_TCC10|✅ proved - incomplete|shostak|0.000|
|indi_f_sound_iter_TCC11|✅ proved - incomplete|shostak|1.167|
|indi_f_sound_iter_TCC12|✅ proved - incomplete|shostak|1.287|
|indi_f_sound_iter_TCC13|✅ proved - incomplete|shostak|0.494|
|indi_f_sound_iter_TCC14|✅ proved - incomplete|shostak|1.249|
|indi_f_sound_iter_TCC15|✅ proved - incomplete|shostak|0.449|
|indi_f_sound_iter_correctness_TCC1|✅ proved - incomplete|shostak|0.421|
|indi_f_sound_iter_correctness_TCC2|✅ proved - incomplete|shostak|0.426|
|indi_f_sound_iter_correctness|✅ proved - incomplete|shostak|0.120|
|indi_f_equiv_TCC1|✅ proved - incomplete|shostak|0.430|
|indi_f_equiv|✅ proved - incomplete|shostak|0.207|
|indi_f_sc_is_sound|✅ proved - incomplete|shostak|1.356|
|indi_f_sc_is_complete|✅ proved - incomplete|shostak|1.380|
|indi_func_is_sc|✅ proved - incomplete|shostak|0.287|
|weight_TCC1|✅ proved - incomplete|shostak|1.229|
|wlist_from_edges_TCC1|✅ proved - incomplete|shostak|0.480|
|wlist_from_edges_TCC2|✅ proved - incomplete|shostak|0.100|
|wlist_from_edges_TCC3|✅ proved - incomplete|shostak|0.086|
|wlist_from_edges_TCC4|✅ proved - incomplete|shostak|1.534|
|wlist_from_edges_TCC5|✅ proved - incomplete|shostak|0.000|
|wlist_from_edges_TCC6|✅ proved - incomplete|shostak|0.140|
|wlist_from_edges_TCC7|✅ proved - incomplete|shostak|1.344|
|wlist_from_edges_TCC8|✅ proved - incomplete|shostak|2.889|
|build_weights_list_TCC1|✅ proved - incomplete|shostak|0.090|
|build_weights_list_TCC2|✅ proved - incomplete|shostak|0.080|
|build_weights_list_TCC3|✅ proved - incomplete|shostak|0.273|
|build_weights_list_TCC4|✅ proved - incomplete|shostak|0.516|
|ccg_to_mwg_TCC1|✅ proved - incomplete|shostak|0.300|
|ccg_to_mwg_TCC2|✅ proved - incomplete|shostak|0.116|
|same_edges|✅ proved - incomplete|shostak|0.164|
|same_verts|✅ proved - incomplete|shostak|0.140|
|same_walks|✅ proved - incomplete|shostak|0.131|
|gte_mc_to_defined_pos_TCC1|✅ proved - incomplete|shostak|1.944|
|gte_mc_to_defined_pos_TCC2|✅ proved - incomplete|shostak|1.978|
|gte_mc_to_defined_pos_TCC3|✅ proved - incomplete|shostak|0.000|
|gte_mc_to_defined_pos_TCC4|✅ proved - incomplete|shostak|0.901|
|gte_mc_to_defined_pos|✅ proved - incomplete|shostak|6.576|
|defined_pos_to_gte_mc_TCC1|✅ proved - incomplete|shostak|1.872|
|defined_pos_to_gte_mc_TCC2|✅ proved - incomplete|shostak|2.037|
|defined_pos_to_gte_mc_TCC3|✅ proved - incomplete|shostak|0.965|
|defined_pos_to_gte_mc|✅ proved - incomplete|shostak|4.710|
|no_defined_pos_iff_no_gte_mc_TCC1|✅ proved - incomplete|shostak|1.993|
|no_defined_pos_iff_no_gte_mc_TCC2|✅ proved - incomplete|shostak|0.897|
|no_defined_pos_iff_no_gte_mc|✅ proved - incomplete|shostak|0.227|
|gt_mc_to_positive_pos_TCC1|✅ proved - incomplete|shostak|2.021|
|gt_mc_to_positive_pos_TCC2|✅ proved - incomplete|shostak|2.077|
|gt_mc_to_positive_pos_TCC3|✅ proved - incomplete|shostak|1.982|
|gt_mc_to_positive_pos_TCC4|✅ proved - incomplete|shostak|0.000|
|gt_mc_to_positive_pos|✅ proved - incomplete|shostak|18.107|
|positive_pos_to_gt_mc_TCC1|✅ proved - incomplete|shostak|2.094|
|positive_pos_to_gt_mc|✅ proved - incomplete|shostak|4.660|
|no_positive_pos_no_gt_mc|✅ proved - incomplete|shostak|0.223|
|positive_to_gt_mc_TCC1|✅ proved - incomplete|shostak|1.952|
|positive_to_gt_mc_TCC2|✅ proved - incomplete|shostak|0.000|
|positive_to_gt_mc_TCC3|✅ proved - incomplete|shostak|0.937|
|positive_to_gt_mc|✅ proved - incomplete|shostak|0.205|
|gt_mc_to_positive_TCC1|✅ proved - incomplete|shostak|1.980|
|gt_mc_to_positive_TCC2|✅ proved - incomplete|shostak|2.032|
|gt_mc_to_positive_TCC3|✅ proved - incomplete|shostak|0.980|
|gt_mc_to_positive|✅ proved - incomplete|shostak|0.228|
|positive_iff_gt_mc_TCC1|✅ proved - incomplete|shostak|1.963|
|positive_iff_gt_mc_TCC2|✅ proved - incomplete|shostak|2.004|
|positive_iff_gt_mc_TCC3|✅ proved - incomplete|shostak|0.856|
|positive_iff_gt_mc|✅ proved - incomplete|shostak|0.189|
|mwg_termination_to_ccg_termination|✅ proved - incomplete|shostak|0.212|
|ccg_termination_to_mwg_termination|✅ proved - incomplete|shostak|0.228|
|mwg_termination_iff_ccg_termination|✅ proved - incomplete|shostak|0.152|

## `matrix_wdg`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_c_weighted_digraphs_TCC1|✅ proved - incomplete|shostak|0.080|
|IMP_c_weighted_digraphs_TCC2|✅ proved - incomplete|shostak|0.080|
|mwg_termination?_TCC1|✅ proved - incomplete|shostak|0.752|
|mwg_termination?_TCC2|✅ proved - incomplete|shostak|0.594|
|double_cycle?_TCC1|✅ proved - incomplete|shostak|0.775|
|positive_double_cycle?_TCC1|✅ proved - incomplete|shostak|0.143|
|limiting_measure?_TCC1|✅ proved - incomplete|shostak|0.100|
|criterion_one?_TCC1|✅ proved - incomplete|shostak|0.741|
|criterion_one?_TCC2|✅ proved - incomplete|shostak|0.711|
|positive_eq_circuit_TCC1|✅ proved - incomplete|shostak|0.799|
|positive_eq_circuit_TCC2|✅ proved - incomplete|shostak|0.744|
|positive_eq_circuit_TCC3|✅ proved - incomplete|shostak|0.854|
|positive_eq_circuit|✅ proved - incomplete|shostak|3.165|
|lm_defined_walks_TCC1|✅ proved - incomplete|shostak|0.723|
|lm_defined_walks_TCC2|✅ proved - incomplete|shostak|0.710|
|lm_defined_walks|✅ proved - incomplete|shostak|2.252|
|lm_positive_edge_TCC1|✅ proved - incomplete|shostak|0.140|
|lm_positive_edge|✅ proved - incomplete|shostak|0.960|
|lm_pstv_cycles_pstv_circuits|✅ proved - incomplete|shostak|3.511|
|limiting_labeling?_TCC1|✅ proved - incomplete|shostak|0.100|
|limiting_labeling?_TCC2|✅ proved - incomplete|shostak|0.110|
|limiting_labeling?_TCC3|✅ proved - incomplete|shostak|0.114|
|limiting_labeling?_TCC4|✅ proved - incomplete|shostak|0.621|
|limiting_labeling?_TCC5|✅ proved - incomplete|shostak|0.709|
|limiting_labeling?_TCC6|✅ proved - incomplete|shostak|0.702|
|limiting_labeling?_TCC7|✅ proved - incomplete|shostak|0.642|
|limiting_labeling?_TCC8|✅ proved - incomplete|shostak|0.631|
|ll_defined_walks_TCC1|✅ proved - incomplete|shostak|0.655|
|ll_defined_walks_TCC2|✅ proved - incomplete|shostak|0.843|
|ll_defined_walks_TCC3|✅ proved - incomplete|shostak|0.862|
|ll_defined_walks_TCC4|✅ proved - incomplete|shostak|0.712|
|ll_defined_walks_TCC5|✅ proved - incomplete|shostak|0.683|
|ll_defined_walks|✅ proved - incomplete|shostak|2.283|
|ll_pstv_pos_circuits_TCC1|✅ proved - incomplete|shostak|0.643|
|ll_pstv_pos_circuits_TCC2|✅ proved - incomplete|shostak|0.722|
|ll_pstv_pos_circuits_TCC3|✅ proved - incomplete|shostak|0.723|
|ll_pstv_pos_circuits|✅ proved - incomplete|shostak|18.983|
|ll_pstv_circuits|✅ proved - incomplete|shostak|0.170|
|circuit_length_reduce_TCC1|✅ proved - incomplete|shostak|0.667|
|circuit_length_reduce_TCC2|✅ proved - incomplete|shostak|0.100|
|circuit_length_reduce_TCC3|✅ proved - incomplete|shostak|0.099|
|circuit_length_reduce_TCC4|✅ proved - incomplete|shostak|0.666|
|circuit_length_reduce_TCC5|✅ proved - incomplete|shostak|0.802|
|circuit_length_reduce|✅ proved - incomplete|shostak|3.914|
|circuit_length_bounded|✅ proved - incomplete|shostak|0.666|
|bounded_circuits_pstv_TCC1|✅ proved - incomplete|shostak|0.090|
|bounded_circuits_pstv_TCC2|✅ proved - incomplete|shostak|0.624|
|bounded_circuits_pstv|✅ proved - incomplete|shostak|0.412|
|lower_bounding_sets_TCC1|✅ proved - incomplete|shostak|0.090|
|lower_bounding_sets_TCC2|✅ proved - incomplete|shostak|0.634|
|lower_bounding_sets_TCC3|✅ proved - incomplete|shostak|0.810|
|lower_bounding_sets_TCC4|✅ proved - incomplete|shostak|0.670|
|lower_bounding_sets|✅ proved - incomplete|shostak|0.883|
|CircBound_TCC1|✅ proved - incomplete|shostak|0.090|
|BoundingSets_TCC1|✅ proved - incomplete|shostak|0.747|
|BoundingSets_TCC2|✅ proved - incomplete|shostak|0.640|
|bounding_steps_iter_TCC1|✅ proved - incomplete|shostak|0.000|
|bounding_steps_iter_TCC2|✅ proved - incomplete|shostak|0.231|
|bounding_steps_iter_def|✅ proved - incomplete|shostak|1.200|

## `bounding_circuits_defs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|is_less_MM_list_TCC1|✅ proved - complete|shostak|0.235|
|is_less_MM_list_TCC2|✅ proved - complete|shostak|0.130|
|is_less_MM_list_TCC3|✅ proved - complete|shostak|0.236|
|is_less_MM_list_TCC4|✅ proved - complete|shostak|0.727|
|minimalize_iter_TCC1|✅ proved - complete|shostak|0.150|
|minimalize_iter_TCC2|✅ proved - complete|shostak|0.130|
|minimalize_iter_TCC3|✅ proved - incomplete|shostak|1.769|
|minimalize_iter_TCC4|✅ proved - complete|shostak|0.131|
|minimalize_iter_TCC5|✅ proved - complete|shostak|2.952|
|minimalize_iter_TCC6|✅ proved - complete|shostak|0.110|
|minimalize_TCC1|✅ proved - incomplete|shostak|0.000|
|list_prod_pre_TCC1|✅ proved - incomplete|shostak|0.116|
|list_prod_pre_TCC2|✅ proved - complete|shostak|0.160|
|list_prod_pre_TCC3|✅ proved - incomplete|shostak|0.000|
|list_prod_TCC1|✅ proved - incomplete|shostak|0.160|
|decomp_weight_TCC1|✅ proved - incomplete|shostak|0.100|
|decomp_weight_TCC2|✅ proved - incomplete|shostak|0.103|
|decomp_weight_TCC3|✅ proved - incomplete|shostak|0.100|
|decomp_weight_TCC4|✅ proved - incomplete|shostak|0.110|
|decomp_weight_TCC5|✅ proved - incomplete|shostak|0.100|
|decomp_weight_TCC6|✅ proved - incomplete|shostak|0.969|
|decomp_weight_TCC7|✅ proved - incomplete|shostak|0.628|
|decomp_weight_TCC8|✅ proved - incomplete|shostak|1.013|
|decomp_weight_TCC9|✅ proved - incomplete|shostak|0.110|
|decomp_weight_TCC10|✅ proved - incomplete|shostak|0.105|
|decomp_weight_TCC11|✅ proved - incomplete|shostak|0.110|
|decomp_weight_TCC12|✅ proved - incomplete|shostak|0.980|
|decomp_weight_TCC13|✅ proved - incomplete|shostak|0.735|
|decomp_weight_TCC14|✅ proved - incomplete|shostak|0.979|
|decomp_weight_TCC15|✅ proved - incomplete|shostak|1:19.985|
|decomp_weight_TCC16|✅ proved - incomplete|shostak|0.130|
|decomp_weight_TCC17|✅ proved - incomplete|shostak|0.260|
|decomp_weight_TCC18|✅ proved - incomplete|shostak|0.161|
|decomp_weight_def_TCC1|✅ proved - incomplete|shostak|0.200|
|decomp_weight_def_TCC2|✅ proved - incomplete|shostak|0.100|
|decomp_weight_def_TCC3|✅ proved - incomplete|shostak|0.103|
|decomp_weight_def_TCC4|✅ proved - incomplete|shostak|0.642|
|decomp_weight_def|✅ proved - incomplete|shostak|41.150|
|walk_bounding_TCC1|✅ proved - incomplete|shostak|0.239|
|walk_bounding_TCC2|✅ proved - incomplete|shostak|0.100|
|walk_bounding_TCC3|✅ proved - incomplete|shostak|0.097|
|walk_bounding_TCC4|✅ proved - incomplete|shostak|1.622|
|walk_bounding_TCC5|✅ proved - incomplete|shostak|0.716|
|walk_bounding_TCC6|✅ proved - incomplete|shostak|0.190|
|walk_bounding_TCC7|✅ proved - incomplete|shostak|1.918|
|walk_bounding_TCC8|✅ proved - incomplete|shostak|0.608|
|walk_bounding_TCC9|✅ proved - incomplete|shostak|0.640|
|walk_bounding_def_TCC1|✅ proved - incomplete|shostak|0.712|
|walk_bounding_def_TCC2|✅ proved - incomplete|shostak|0.100|
|walk_bounding_def_TCC3|✅ proved - incomplete|shostak|0.104|
|walk_bounding_def_TCC4|✅ proved - incomplete|shostak|0.602|
|walk_bounding_def|✅ proved - incomplete|shostak|51.015|
|walk_bounding_has_walk_wgt_TCC1|✅ proved - incomplete|shostak|0.669|
|walk_bounding_has_walk_wgt_TCC2|✅ proved - incomplete|shostak|0.091|
|walk_bounding_has_walk_wgt_TCC3|✅ proved - incomplete|shostak|0.100|
|walk_bounding_has_walk_wgt_TCC4|✅ proved - incomplete|shostak|0.692|
|walk_bounding_has_walk_wgt|✅ proved - incomplete|shostak|4.308|
|walk_list_bounding_TCC1|✅ proved - incomplete|shostak|0.638|
|walk_list_bounding_TCC2|✅ proved - incomplete|shostak|1.441|
|walk_list_bounding_def_TCC1|✅ proved - incomplete|shostak|0.705|
|walk_list_bounding_def_TCC2|✅ proved - incomplete|shostak|0.100|
|walk_list_bounding_def_TCC3|✅ proved - incomplete|shostak|0.100|
|walk_list_bounding_def_TCC4|✅ proved - incomplete|shostak|0.625|
|walk_list_bounding_def|✅ proved - incomplete|shostak|0.000|
|walk_list_bounding_has_walk_wgt_TCC1|✅ proved - incomplete|shostak|0.695|
|walk_list_bounding_has_walk_wgt_TCC2|✅ proved - incomplete|shostak|0.100|
|walk_list_bounding_has_walk_wgt_TCC3|✅ proved - incomplete|shostak|0.100|
|walk_list_bounding_has_walk_wgt_TCC4|✅ proved - incomplete|shostak|0.692|
|walk_list_bounding_has_walk_wgt|✅ proved - incomplete|shostak|2.004|
|bound_circuits_at_def_TCC1|✅ proved - incomplete|shostak|0.858|
|bound_circuits_at_def_TCC2|✅ proved - incomplete|shostak|0.100|
|bound_circuits_at_def_TCC3|✅ proved - incomplete|shostak|0.100|
|bound_circuits_at_def_TCC4|✅ proved - incomplete|shostak|0.763|
|bound_circuits_at_def|✅ proved - incomplete|shostak|2.368|
|index_of_vert_TCC1|✅ proved - incomplete|shostak|1.322|
|index_of_vert_TCC2|✅ proved - incomplete|shostak|0.157|
|index_of_vert_TCC3|✅ proved - incomplete|shostak|1.542|
|index_of_vert_TCC4|✅ proved - incomplete|shostak|0.140|
|index_of_vert_TCC5|✅ proved - incomplete|shostak|0.664|
|bound_circuits_list_def_TCC1|✅ proved - incomplete|shostak|0.897|
|bound_circuits_list_def_TCC2|✅ proved - incomplete|shostak|1.535|
|bound_circuits_list_def_TCC3|✅ proved - incomplete|shostak|0.910|
|bound_circuits_list_def_TCC4|✅ proved - incomplete|shostak|0.114|
|bound_circuits_list_def_TCC5|✅ proved - incomplete|shostak|0.110|
|bound_circuits_list_def_TCC6|✅ proved - incomplete|shostak|0.120|
|bound_circuits_list_def|✅ proved - incomplete|shostak|0.000|
|bound_circuits_iter_TCC1|✅ proved - incomplete|shostak|0.238|
|bound_circuits_iter_TCC2|✅ proved - incomplete|shostak|0.247|
|bound_circuits_iter_TCC3|✅ proved - incomplete|shostak|1.682|
|bound_circuits_iter_TCC4|✅ proved - incomplete|shostak|1.515|
|bound_circuits_iter_def_TCC1|✅ proved - incomplete|shostak|0.890|
|bound_circuits_iter_def_TCC2|✅ proved - incomplete|shostak|0.115|
|bound_circuits_iter_def_TCC3|✅ proved - incomplete|shostak|0.110|
|bound_circuits_iter_def_TCC4|✅ proved - incomplete|shostak|0.742|
|bound_circuits_iter_def|✅ proved - incomplete|shostak|3.502|
|bound_circuits_iter_stable|✅ proved - incomplete|shostak|0.000|
|bound_circuits_TCC1|✅ proved - incomplete|shostak|0.692|
|bound_circuits_TCC2|✅ proved - incomplete|shostak|0.755|
|bound_circuits_TCC3|✅ proved - incomplete|shostak|0.788|
|bound_circuits_TCC4|✅ proved - incomplete|shostak|0.484|
|bound_circuits_TCC5|✅ proved - incomplete|shostak|0.911|
|bound_circuits_TCC6|✅ proved - incomplete|shostak|0.000|
|bound_circuits_TCC7|✅ proved - incomplete|shostak|0.000|
|start_bounding_TCC1|✅ proved - incomplete|shostak|0.803|
|start_bounding_TCC2|✅ proved - incomplete|shostak|1.476|
|start_bounding_TCC3|✅ proved - incomplete|shostak|0.860|
|start_bounding_TCC4|✅ proved - incomplete|shostak|0.000|
|bounding_from_graph_lists_TCC1|✅ proved - incomplete|shostak|1.794|

## `bounding_circuits`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|bounding_from_gl_termination|✅ proved - incomplete|shostak|2.801|
|c_bounding_from_gl_termination|✅ proved - incomplete|shostak|1.314|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib//float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-pvsio-fix.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210219-extratregies.lisp`|
