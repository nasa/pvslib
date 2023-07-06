# Summary for `CCG`
Run started at 4:19:28 7/4/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **348**   | **348**    | **348**    | **0**  | **6:29.271 s**   |
|top|0|0|0|0|0.000|
|cc_def|0|0|0|0|0.000|
|ccg_def|0|0|0|0|0.000|
|ccg|27|27|27|0|32.613|
|scp|1|1|1|0|0.223|
|scp_to_ccg|6|6|6|0|5.316|
|scp_to_ccg_alt|6|6|6|0|5.493|
|measures|57|57|57|0|17.310|
|ccg_to_mwg|82|82|82|0|1:21.873|
|matrix_wdg|59|59|59|0|38.242|
|bounding_circuits_defs|108|108|108|0|3:24.074|
|bounding_circuits|2|2|2|0|4.127|
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
|gte_mc?_TCC1|✅ proved - incomplete|shostak|0.552|
|gte_mc?_TCC2|✅ proved - incomplete|shostak|0.395|
|gte_mc?_TCC3|✅ proved - incomplete|shostak|0.397|
|ccg_termination?_TCC1|✅ proved - incomplete|shostak|0.430|
|gt_to_gte|✅ proved - incomplete|shostak|0.110|
|gte_mc_comp_TCC1|✅ proved - incomplete|shostak|0.430|
|gte_mc_comp_TCC2|✅ proved - incomplete|shostak|0.432|
|gte_mc_comp_TCC3|✅ proved - incomplete|shostak|0.452|
|gte_mc_comp_TCC4|✅ proved - incomplete|shostak|0.452|
|gte_mc_comp_TCC5|✅ proved - incomplete|shostak|0.265|
|gte_mc_comp_TCC6|✅ proved - incomplete|shostak|0.683|
|gte_mc_comp|✅ proved - incomplete|shostak|0.761|
|gte_mc_sub_walk_TCC1|✅ proved - incomplete|shostak|0.617|
|gte_mc_sub_walk_TCC2|✅ proved - incomplete|shostak|0.585|
|gte_mc_sub_walk|✅ proved - incomplete|shostak|0.302|
|gt_mc_comp|✅ proved - incomplete|shostak|0.675|
|parext_TCC1|✅ proved - complete|shostak|0.090|
|parext|✅ proved - complete|shostak|0.285|
|ge_transitive|✅ proved - complete|shostak|0.090|
|ge_gt_transitive|✅ proved - complete|shostak|0.090|
|gt_ge_transitive|✅ proved - complete|shostak|0.080|
|extract_infinite_descent|✅ proved - incomplete|shostak|1.055|
|build_infinite_descent_TCC1|✅ proved - complete|shostak|0.187|
|build_infinite_descent|✅ proved - incomplete|shostak|1.820|
|ccg_pigeonhole|✅ proved - incomplete|shostak|0.382|
|ccg_termination_and_trans_implies_scp|✅ proved - incomplete|shostak|9.111|
|ccg_termination_implies_scp|✅ proved - incomplete|shostak|11.885|

## `scp`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|scp_termination|✅ proved - incomplete|shostak|0.223|

## `scp_to_ccg`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|omega_is_wf|✅ proved - incomplete|shostak|0.270|
|omega_is_finite|✅ proved - complete|shostak|0.090|
|IMP_omega_TCC1|✅ proved - incomplete|shostak|0.080|
|IMP_omega_TCC2|✅ proved - complete|shostak|0.080|
|IMP_ccg_TCC1|✅ proved - complete|shostak|0.070|
|scp_implies_ccg_termination|✅ proved - incomplete|shostak|4.726|

## `scp_to_ccg_alt`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|R_wf|✅ proved - incomplete|shostak|0.267|
|R_no_desc_inf_branch|✅ proved - incomplete|shostak|0.263|
|IMP_omega_TCC1|✅ proved - incomplete|shostak|0.080|
|IMP_omega_TCC2|✅ proved - incomplete|shostak|0.080|
|IMP_ccg_TCC1|✅ proved - incomplete|shostak|0.090|
|scp_implies_ccg_termination|✅ proved - incomplete|shostak|4.713|

## `measures`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|get_TCC1|✅ proved - complete|shostak|0.210|
|get_TCC2|✅ proved - complete|shostak|0.109|
|form_matrix_TCC1|✅ proved - incomplete|shostak|0.140|
|form_matrix_TCC2|✅ proved - incomplete|shostak|0.163|
|form_matrix_TCC3|✅ proved - incomplete|shostak|0.362|
|form_matfun_TCC1|✅ proved - complete|shostak|0.079|
|matrix_fun_idemp|✅ proved - incomplete|shostak|0.240|
|fun_matrix_idemp|✅ proved - incomplete|shostak|0.137|
|get_form_matrix|✅ proved - incomplete|shostak|0.080|
|max__TCC1|✅ proved - complete|shostak|0.090|
|max__TCC2|✅ proved - complete|shostak|0.090|
|max__TCC3|✅ proved - complete|shostak|0.100|
|max__TCC4|✅ proved - complete|shostak|0.250|
|max__TCC5|✅ proved - complete|shostak|0.160|
|max__TCC6|✅ proved - complete|shostak|0.100|
|max__TCC7|✅ proved - complete|shostak|0.090|
|max__TCC8|✅ proved - complete|shostak|0.090|
|id_def|✅ proved - incomplete|shostak|0.099|
|add_commute|✅ proved - complete|shostak|0.110|
|add_assoc|✅ proved - complete|shostak|0.181|
|add_measures_positive|✅ proved - complete|shostak|0.150|
|id_on_measures|✅ proved - complete|shostak|0.113|
|card_prep|✅ proved - incomplete|shostak|0.000|
|card_measure_matrices_TCC1|✅ proved - incomplete|shostak|0.080|
|card_measure_matrices_TCC2|✅ proved - complete|shostak|0.080|
|card_measure_matrices|✅ proved - incomplete|shostak|4.679|
|matrices_fun_order|✅ proved - complete|shostak|0.171|
|matrices_order|✅ proved - incomplete|shostak|0.323|
|mult_fun_left_preserves_order|✅ proved - complete|shostak|0.315|
|mult_left_preserves_order|✅ proved - incomplete|shostak|0.121|
|mult_fun_right_preserves_order|✅ proved - complete|shostak|0.304|
|mult_right_preserves_order|✅ proved - incomplete|shostak|0.120|
|id_fun_is_identity|✅ proved - complete|shostak|0.346|
|id_is_identity|✅ proved - incomplete|shostak|0.131|
|max_add|✅ proved - complete|shostak|0.613|
|measure_matrix_fun_assoc|✅ proved - complete|shostak|4.144|
|measure_matrix_assoc|✅ proved - incomplete|shostak|0.160|
|defined_pos?_def|✅ proved - complete|shostak|0.120|
|positive_mult_fun|✅ proved - complete|shostak|0.173|
|positive_multiplication|✅ proved - incomplete|shostak|0.195|
|positive_commute|✅ proved - incomplete|shostak|0.120|
|positive_mult_fun_pos|✅ proved - complete|shostak|0.130|
|positive_mult_pos|✅ proved - incomplete|shostak|0.140|
|positive_sum_fun|✅ proved - complete|shostak|0.127|
|positive_sum|✅ proved - incomplete|shostak|0.110|
|positive_sum_fun_positive_mult_fun|✅ proved - complete|shostak|0.104|
|positive_sum_positive_mult|✅ proved - incomplete|shostak|0.110|
|compatible_is_positive|✅ proved - incomplete|shostak|0.100|
|compatible_positive_grafting|✅ proved - incomplete|shostak|0.133|
|defined_pos_mul_fun|✅ proved - complete|shostak|0.134|
|defined_pos_mul|✅ proved - incomplete|shostak|0.120|
|defined_pos_decomp_fun|✅ proved - complete|shostak|0.163|
|defined_pos_decomposition|✅ proved - incomplete|shostak|0.110|
|positive_pos_mul_fun|✅ proved - complete|shostak|0.123|
|positive_pos_mul|✅ proved - incomplete|shostak|0.120|
|positive_pos_decomp_fun|✅ proved - complete|shostak|0.125|
|positive_pos_decomposition|✅ proved - incomplete|shostak|0.123|

## `ccg_to_mwg`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|indi_f_sound_all_vertex_TCC1|✅ proved - incomplete|shostak|1.317|
|indi_f_sound_all_vertex_TCC2|✅ proved - incomplete|shostak|0.483|
|indi_f_sound_all_vertex_TCC3|✅ proved - incomplete|shostak|1.210|
|indi_f_sound_all_vertex_TCC4|✅ proved - incomplete|shostak|1.183|
|indi_f_sound_all_vertex_TCC5|✅ proved - incomplete|shostak|0.444|
|indi_f_sound_all_vertex_correctness|✅ proved - incomplete|shostak|0.000|
|indi_f_sound_iter_TCC1|✅ proved - incomplete|shostak|0.420|
|indi_f_sound_iter_TCC2|✅ proved - incomplete|shostak|0.417|
|indi_f_sound_iter_TCC3|✅ proved - incomplete|shostak|1.133|
|indi_f_sound_iter_TCC4|✅ proved - complete|shostak|0.090|
|indi_f_sound_iter_TCC5|✅ proved - incomplete|shostak|0.464|
|indi_f_sound_iter_TCC6|✅ proved - incomplete|shostak|0.462|
|indi_f_sound_iter_TCC7|✅ proved - incomplete|shostak|1.144|
|indi_f_sound_iter_TCC8|✅ proved - incomplete|shostak|1.179|
|indi_f_sound_iter_TCC9|✅ proved - incomplete|shostak|1.730|
|indi_f_sound_iter_TCC10|✅ proved - incomplete|shostak|1.124|
|indi_f_sound_iter_TCC11|✅ proved - incomplete|shostak|1.135|
|indi_f_sound_iter_TCC12|✅ proved - incomplete|shostak|1.261|
|indi_f_sound_iter_TCC13|✅ proved - incomplete|shostak|0.492|
|indi_f_sound_iter_TCC14|✅ proved - incomplete|shostak|1.224|
|indi_f_sound_iter_TCC15|✅ proved - incomplete|shostak|0.458|
|indi_f_sound_iter_correctness_TCC1|✅ proved - incomplete|shostak|0.410|
|indi_f_sound_iter_correctness_TCC2|✅ proved - incomplete|shostak|0.425|
|indi_f_sound_iter_correctness|✅ proved - incomplete|shostak|0.120|
|indi_f_equiv_TCC1|✅ proved - incomplete|shostak|0.410|
|indi_f_equiv|✅ proved - incomplete|shostak|0.227|
|indi_f_sc_is_sound|✅ proved - incomplete|shostak|1.346|
|indi_f_sc_is_complete|✅ proved - incomplete|shostak|1.375|
|indi_func_is_sc|✅ proved - incomplete|shostak|0.297|
|weight_TCC1|✅ proved - incomplete|shostak|1.218|
|wlist_from_edges_TCC1|✅ proved - incomplete|shostak|0.447|
|wlist_from_edges_TCC2|✅ proved - incomplete|shostak|0.100|
|wlist_from_edges_TCC3|✅ proved - incomplete|shostak|0.100|
|wlist_from_edges_TCC4|✅ proved - incomplete|shostak|1.483|
|wlist_from_edges_TCC5|✅ proved - incomplete|shostak|0.000|
|wlist_from_edges_TCC6|✅ proved - incomplete|shostak|0.159|
|wlist_from_edges_TCC7|✅ proved - incomplete|shostak|1.306|
|wlist_from_edges_TCC8|✅ proved - incomplete|shostak|0.000|
|build_weights_list_TCC1|✅ proved - incomplete|shostak|0.090|
|build_weights_list_TCC2|✅ proved - incomplete|shostak|0.080|
|build_weights_list_TCC3|✅ proved - incomplete|shostak|0.275|
|build_weights_list_TCC4|✅ proved - incomplete|shostak|0.517|
|ccg_to_mwg_TCC1|✅ proved - incomplete|shostak|0.294|
|ccg_to_mwg_TCC2|✅ proved - incomplete|shostak|0.124|
|same_edges|✅ proved - incomplete|shostak|0.160|
|same_verts|✅ proved - incomplete|shostak|0.149|
|same_walks|✅ proved - incomplete|shostak|0.140|
|gte_mc_to_defined_pos_TCC1|✅ proved - incomplete|shostak|1.924|
|gte_mc_to_defined_pos_TCC2|✅ proved - incomplete|shostak|0.000|
|gte_mc_to_defined_pos_TCC3|✅ proved - incomplete|shostak|1.885|
|gte_mc_to_defined_pos_TCC4|✅ proved - incomplete|shostak|0.866|
|gte_mc_to_defined_pos|✅ proved - incomplete|shostak|6.165|
|defined_pos_to_gte_mc_TCC1|✅ proved - incomplete|shostak|1.880|
|defined_pos_to_gte_mc_TCC2|✅ proved - incomplete|shostak|1.923|
|defined_pos_to_gte_mc_TCC3|✅ proved - incomplete|shostak|0.910|
|defined_pos_to_gte_mc|✅ proved - incomplete|shostak|0.000|
|no_defined_pos_iff_no_gte_mc_TCC1|✅ proved - incomplete|shostak|1.827|
|no_defined_pos_iff_no_gte_mc_TCC2|✅ proved - incomplete|shostak|0.858|
|no_defined_pos_iff_no_gte_mc|✅ proved - incomplete|shostak|0.218|
|gt_mc_to_positive_pos_TCC1|✅ proved - incomplete|shostak|1.939|
|gt_mc_to_positive_pos_TCC2|✅ proved - incomplete|shostak|1.987|
|gt_mc_to_positive_pos_TCC3|✅ proved - incomplete|shostak|0.000|
|gt_mc_to_positive_pos_TCC4|✅ proved - incomplete|shostak|0.903|
|gt_mc_to_positive_pos|✅ proved - incomplete|shostak|14.315|
|positive_pos_to_gt_mc_TCC1|✅ proved - incomplete|shostak|2.006|
|positive_pos_to_gt_mc|✅ proved - incomplete|shostak|0.000|
|no_positive_pos_no_gt_mc|✅ proved - incomplete|shostak|0.235|
|positive_to_gt_mc_TCC1|✅ proved - incomplete|shostak|0.000|
|positive_to_gt_mc_TCC2|✅ proved - incomplete|shostak|1.901|
|positive_to_gt_mc_TCC3|✅ proved - incomplete|shostak|0.889|
|positive_to_gt_mc|✅ proved - incomplete|shostak|0.203|
|gt_mc_to_positive_TCC1|✅ proved - incomplete|shostak|1.846|
|gt_mc_to_positive_TCC2|✅ proved - incomplete|shostak|1.946|
|gt_mc_to_positive_TCC3|✅ proved - incomplete|shostak|0.930|
|gt_mc_to_positive|✅ proved - incomplete|shostak|0.232|
|positive_iff_gt_mc_TCC1|✅ proved - incomplete|shostak|1.862|
|positive_iff_gt_mc_TCC2|✅ proved - incomplete|shostak|1.912|
|positive_iff_gt_mc_TCC3|✅ proved - incomplete|shostak|0.848|
|positive_iff_gt_mc|✅ proved - incomplete|shostak|0.206|
|mwg_termination_to_ccg_termination|✅ proved - incomplete|shostak|0.223|
|ccg_termination_to_mwg_termination|✅ proved - incomplete|shostak|0.242|
|mwg_termination_iff_ccg_termination|✅ proved - incomplete|shostak|0.170|

## `matrix_wdg`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_c_weighted_digraphs_TCC1|✅ proved - incomplete|shostak|0.080|
|IMP_c_weighted_digraphs_TCC2|✅ proved - incomplete|shostak|0.080|
|mwg_termination?_TCC1|✅ proved - incomplete|shostak|0.730|
|mwg_termination?_TCC2|✅ proved - incomplete|shostak|0.576|
|double_cycle?_TCC1|✅ proved - incomplete|shostak|0.751|
|positive_double_cycle?_TCC1|✅ proved - incomplete|shostak|0.154|
|limiting_measure?_TCC1|✅ proved - incomplete|shostak|0.110|
|criterion_one?_TCC1|✅ proved - incomplete|shostak|0.742|
|criterion_one?_TCC2|✅ proved - incomplete|shostak|0.705|
|positive_eq_circuit_TCC1|✅ proved - incomplete|shostak|0.789|
|positive_eq_circuit_TCC2|✅ proved - incomplete|shostak|0.724|
|positive_eq_circuit_TCC3|✅ proved - incomplete|shostak|0.863|
|positive_eq_circuit|✅ proved - incomplete|shostak|0.981|
|lm_defined_walks_TCC1|✅ proved - incomplete|shostak|0.708|
|lm_defined_walks_TCC2|✅ proved - incomplete|shostak|0.710|
|lm_defined_walks|✅ proved - incomplete|shostak|2.197|
|lm_positive_edge_TCC1|✅ proved - incomplete|shostak|0.160|
|lm_positive_edge|✅ proved - incomplete|shostak|0.945|
|lm_pstv_cycles_pstv_circuits|✅ proved - incomplete|shostak|3.379|
|limiting_labeling?_TCC1|✅ proved - incomplete|shostak|0.110|
|limiting_labeling?_TCC2|✅ proved - incomplete|shostak|0.127|
|limiting_labeling?_TCC3|✅ proved - incomplete|shostak|0.120|
|limiting_labeling?_TCC4|✅ proved - incomplete|shostak|0.626|
|limiting_labeling?_TCC5|✅ proved - incomplete|shostak|0.694|
|limiting_labeling?_TCC6|✅ proved - incomplete|shostak|0.700|
|limiting_labeling?_TCC7|✅ proved - incomplete|shostak|0.635|
|limiting_labeling?_TCC8|✅ proved - incomplete|shostak|0.623|
|ll_defined_walks_TCC1|✅ proved - incomplete|shostak|0.641|
|ll_defined_walks_TCC2|✅ proved - incomplete|shostak|0.834|
|ll_defined_walks_TCC3|✅ proved - incomplete|shostak|0.864|
|ll_defined_walks_TCC4|✅ proved - incomplete|shostak|0.673|
|ll_defined_walks_TCC5|✅ proved - incomplete|shostak|0.683|
|ll_defined_walks|✅ proved - incomplete|shostak|2.228|
|ll_pstv_pos_circuits_TCC1|✅ proved - incomplete|shostak|0.642|
|ll_pstv_pos_circuits_TCC2|✅ proved - incomplete|shostak|0.706|
|ll_pstv_pos_circuits_TCC3|✅ proved - incomplete|shostak|0.708|
|ll_pstv_pos_circuits|✅ proved - incomplete|shostak|0.000|
|ll_pstv_circuits|✅ proved - incomplete|shostak|0.175|
|circuit_length_reduce_TCC1|✅ proved - incomplete|shostak|0.647|
|circuit_length_reduce_TCC2|✅ proved - incomplete|shostak|0.108|
|circuit_length_reduce_TCC3|✅ proved - incomplete|shostak|0.110|
|circuit_length_reduce_TCC4|✅ proved - incomplete|shostak|0.611|
|circuit_length_reduce_TCC5|✅ proved - incomplete|shostak|0.748|
|circuit_length_reduce|✅ proved - incomplete|shostak|1.012|
|circuit_length_bounded|✅ proved - incomplete|shostak|0.651|
|bounded_circuits_pstv_TCC1|✅ proved - incomplete|shostak|0.090|
|bounded_circuits_pstv_TCC2|✅ proved - incomplete|shostak|0.592|
|bounded_circuits_pstv|✅ proved - incomplete|shostak|0.379|
|lower_bounding_sets_TCC1|✅ proved - incomplete|shostak|0.100|
|lower_bounding_sets_TCC2|✅ proved - incomplete|shostak|0.581|
|lower_bounding_sets_TCC3|✅ proved - incomplete|shostak|0.772|
|lower_bounding_sets_TCC4|✅ proved - incomplete|shostak|0.630|
|lower_bounding_sets|✅ proved - incomplete|shostak|0.846|
|CircBound_TCC1|✅ proved - incomplete|shostak|0.090|
|BoundingSets_TCC1|✅ proved - incomplete|shostak|0.706|
|BoundingSets_TCC2|✅ proved - incomplete|shostak|0.601|
|bounding_steps_iter_TCC1|✅ proved - incomplete|shostak|1.561|
|bounding_steps_iter_TCC2|✅ proved - incomplete|shostak|0.234|
|bounding_steps_iter_def|✅ proved - incomplete|shostak|0.000|

## `bounding_circuits_defs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|is_less_MM_list_TCC1|✅ proved - complete|shostak|0.231|
|is_less_MM_list_TCC2|✅ proved - complete|shostak|0.140|
|is_less_MM_list_TCC3|✅ proved - complete|shostak|0.249|
|is_less_MM_list_TCC4|✅ proved - complete|shostak|0.718|
|minimalize_iter_TCC1|✅ proved - complete|shostak|0.150|
|minimalize_iter_TCC2|✅ proved - complete|shostak|0.151|
|minimalize_iter_TCC3|✅ proved - incomplete|shostak|1.746|
|minimalize_iter_TCC4|✅ proved - complete|shostak|0.131|
|minimalize_iter_TCC5|✅ proved - complete|shostak|2.878|
|minimalize_iter_TCC6|✅ proved - complete|shostak|0.120|
|minimalize_TCC1|✅ proved - incomplete|shostak|0.000|
|list_prod_pre_TCC1|✅ proved - incomplete|shostak|0.120|
|list_prod_pre_TCC2|✅ proved - complete|shostak|0.160|
|list_prod_pre_TCC3|✅ proved - incomplete|shostak|0.000|
|list_prod_TCC1|✅ proved - incomplete|shostak|0.171|
|decomp_weight_TCC1|✅ proved - incomplete|shostak|0.120|
|decomp_weight_TCC2|✅ proved - incomplete|shostak|0.110|
|decomp_weight_TCC3|✅ proved - incomplete|shostak|0.117|
|decomp_weight_TCC4|✅ proved - incomplete|shostak|0.120|
|decomp_weight_TCC5|✅ proved - incomplete|shostak|0.110|
|decomp_weight_TCC6|✅ proved - incomplete|shostak|0.965|
|decomp_weight_TCC7|✅ proved - incomplete|shostak|0.608|
|decomp_weight_TCC8|✅ proved - incomplete|shostak|0.978|
|decomp_weight_TCC9|✅ proved - incomplete|shostak|0.110|
|decomp_weight_TCC10|✅ proved - incomplete|shostak|0.110|
|decomp_weight_TCC11|✅ proved - incomplete|shostak|0.118|
|decomp_weight_TCC12|✅ proved - incomplete|shostak|0.939|
|decomp_weight_TCC13|✅ proved - incomplete|shostak|0.699|
|decomp_weight_TCC14|✅ proved - incomplete|shostak|0.947|
|decomp_weight_TCC15|✅ proved - incomplete|shostak|1:4.045|
|decomp_weight_TCC16|✅ proved - incomplete|shostak|0.120|
|decomp_weight_TCC17|✅ proved - incomplete|shostak|0.260|
|decomp_weight_TCC18|✅ proved - incomplete|shostak|0.180|
|decomp_weight_def_TCC1|✅ proved - incomplete|shostak|0.210|
|decomp_weight_def_TCC2|✅ proved - incomplete|shostak|0.111|
|decomp_weight_def_TCC3|✅ proved - incomplete|shostak|0.110|
|decomp_weight_def_TCC4|✅ proved - incomplete|shostak|0.598|
|decomp_weight_def|✅ proved - incomplete|shostak|33.433|
|walk_bounding_TCC1|✅ proved - incomplete|shostak|0.250|
|walk_bounding_TCC2|✅ proved - incomplete|shostak|0.110|
|walk_bounding_TCC3|✅ proved - incomplete|shostak|0.110|
|walk_bounding_TCC4|✅ proved - incomplete|shostak|1.581|
|walk_bounding_TCC5|✅ proved - incomplete|shostak|0.705|
|walk_bounding_TCC6|✅ proved - incomplete|shostak|0.200|
|walk_bounding_TCC7|✅ proved - incomplete|shostak|1.834|
|walk_bounding_TCC8|✅ proved - incomplete|shostak|0.585|
|walk_bounding_TCC9|✅ proved - incomplete|shostak|0.600|
|walk_bounding_def_TCC1|✅ proved - incomplete|shostak|0.690|
|walk_bounding_def_TCC2|✅ proved - incomplete|shostak|0.120|
|walk_bounding_def_TCC3|✅ proved - incomplete|shostak|0.110|
|walk_bounding_def_TCC4|✅ proved - incomplete|shostak|0.567|
|walk_bounding_def|✅ proved - incomplete|shostak|41.519|
|walk_bounding_has_walk_wgt_TCC1|✅ proved - incomplete|shostak|0.643|
|walk_bounding_has_walk_wgt_TCC2|✅ proved - incomplete|shostak|0.100|
|walk_bounding_has_walk_wgt_TCC3|✅ proved - incomplete|shostak|0.100|
|walk_bounding_has_walk_wgt_TCC4|✅ proved - incomplete|shostak|0.666|
|walk_bounding_has_walk_wgt|✅ proved - incomplete|shostak|3.946|
|walk_list_bounding_TCC1|✅ proved - incomplete|shostak|0.592|
|walk_list_bounding_TCC2|✅ proved - incomplete|shostak|1.352|
|walk_list_bounding_def_TCC1|✅ proved - incomplete|shostak|0.655|
|walk_list_bounding_def_TCC2|✅ proved - incomplete|shostak|0.100|
|walk_list_bounding_def_TCC3|✅ proved - incomplete|shostak|0.100|
|walk_list_bounding_def_TCC4|✅ proved - incomplete|shostak|0.568|
|walk_list_bounding_def|✅ proved - incomplete|shostak|3.362|
|walk_list_bounding_has_walk_wgt_TCC1|✅ proved - incomplete|shostak|0.628|
|walk_list_bounding_has_walk_wgt_TCC2|✅ proved - incomplete|shostak|0.110|
|walk_list_bounding_has_walk_wgt_TCC3|✅ proved - incomplete|shostak|0.110|
|walk_list_bounding_has_walk_wgt_TCC4|✅ proved - incomplete|shostak|0.648|
|walk_list_bounding_has_walk_wgt|✅ proved - incomplete|shostak|0.000|
|bound_circuits_at_def_TCC1|✅ proved - incomplete|shostak|0.823|
|bound_circuits_at_def_TCC2|✅ proved - incomplete|shostak|0.110|
|bound_circuits_at_def_TCC3|✅ proved - incomplete|shostak|0.102|
|bound_circuits_at_def_TCC4|✅ proved - incomplete|shostak|0.746|
|bound_circuits_at_def|✅ proved - incomplete|shostak|2.227|
|index_of_vert_TCC1|✅ proved - incomplete|shostak|1.256|
|index_of_vert_TCC2|✅ proved - incomplete|shostak|0.163|
|index_of_vert_TCC3|✅ proved - incomplete|shostak|1.465|
|index_of_vert_TCC4|✅ proved - incomplete|shostak|0.149|
|index_of_vert_TCC5|✅ proved - incomplete|shostak|0.650|
|bound_circuits_list_def_TCC1|✅ proved - incomplete|shostak|0.820|
|bound_circuits_list_def_TCC2|✅ proved - incomplete|shostak|1.404|
|bound_circuits_list_def_TCC3|✅ proved - incomplete|shostak|0.872|
|bound_circuits_list_def_TCC4|✅ proved - incomplete|shostak|0.120|
|bound_circuits_list_def_TCC5|✅ proved - incomplete|shostak|0.120|
|bound_circuits_list_def_TCC6|✅ proved - incomplete|shostak|0.120|
|bound_circuits_list_def|✅ proved - incomplete|shostak|1.839|
|bound_circuits_iter_TCC1|✅ proved - incomplete|shostak|0.000|
|bound_circuits_iter_TCC2|✅ proved - incomplete|shostak|0.250|
|bound_circuits_iter_TCC3|✅ proved - incomplete|shostak|1.592|
|bound_circuits_iter_TCC4|✅ proved - incomplete|shostak|1.423|
|bound_circuits_iter_def_TCC1|✅ proved - incomplete|shostak|0.855|
|bound_circuits_iter_def_TCC2|✅ proved - incomplete|shostak|0.120|
|bound_circuits_iter_def_TCC3|✅ proved - incomplete|shostak|0.107|
|bound_circuits_iter_def_TCC4|✅ proved - incomplete|shostak|0.702|
|bound_circuits_iter_def|✅ proved - incomplete|shostak|3.303|
|bound_circuits_iter_stable|✅ proved - incomplete|shostak|0.000|
|bound_circuits_TCC1|✅ proved - incomplete|shostak|0.699|
|bound_circuits_TCC2|✅ proved - incomplete|shostak|0.759|
|bound_circuits_TCC3|✅ proved - incomplete|shostak|0.739|
|bound_circuits_TCC4|✅ proved - incomplete|shostak|0.000|
|bound_circuits_TCC5|✅ proved - incomplete|shostak|0.896|
|bound_circuits_TCC6|✅ proved - incomplete|shostak|1.451|
|bound_circuits_TCC7|✅ proved - incomplete|shostak|0.000|
|start_bounding_TCC1|✅ proved - incomplete|shostak|0.804|
|start_bounding_TCC2|✅ proved - incomplete|shostak|0.000|
|start_bounding_TCC3|✅ proved - incomplete|shostak|0.847|
|start_bounding_TCC4|✅ proved - incomplete|shostak|0.000|
|bounding_from_graph_lists_TCC1|✅ proved - incomplete|shostak|1.797|

## `bounding_circuits`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|bounding_from_gl_termination|✅ proved - incomplete|shostak|2.831|
|c_bounding_from_gl_termination|✅ proved - incomplete|shostak|1.296|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib//float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-pvsio-fix.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210219-extratregies.lisp`|
