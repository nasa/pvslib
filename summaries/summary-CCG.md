# Summary for `CCG`
Run started at 18:34:11 9/1/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **348**   | **348**    | **348**    | **0**  | **7:33.749 s**   |
|top|0|0|0|0|0.000|
|cc_def|0|0|0|0|0.000|
|ccg_def|0|0|0|0|0.000|
|ccg|27|27|27|0|35.140|
|scp|1|1|1|0|0.105|
|scp_to_ccg|6|6|6|0|0.599|
|scp_to_ccg_alt|6|6|6|0|6.153|
|measures|57|57|57|0|15.265|
|ccg_to_mwg|82|82|82|0|1:35.290|
|matrix_wdg|59|59|59|0|46.770|
|bounding_circuits_defs|108|108|108|0|4:11.178|
|bounding_circuits|2|2|2|0|3.249|
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
|gte_mc?_TCC1|✅ proved - incomplete|shostak|0.572|
|gte_mc?_TCC2|✅ proved - incomplete|shostak|0.417|
|gte_mc?_TCC3|✅ proved - incomplete|shostak|0.440|
|ccg_termination?_TCC1|✅ proved - incomplete|shostak|0.450|
|gt_to_gte|✅ proved - incomplete|shostak|0.100|
|gte_mc_comp_TCC1|✅ proved - incomplete|shostak|0.457|
|gte_mc_comp_TCC2|✅ proved - incomplete|shostak|0.445|
|gte_mc_comp_TCC3|✅ proved - incomplete|shostak|0.466|
|gte_mc_comp_TCC4|✅ proved - incomplete|shostak|0.508|
|gte_mc_comp_TCC5|✅ proved - incomplete|shostak|0.368|
|gte_mc_comp_TCC6|✅ proved - incomplete|shostak|0.795|
|gte_mc_comp|✅ proved - incomplete|shostak|0.795|
|gte_mc_sub_walk_TCC1|✅ proved - incomplete|shostak|0.639|
|gte_mc_sub_walk_TCC2|✅ proved - incomplete|shostak|0.584|
|gte_mc_sub_walk|✅ proved - incomplete|shostak|0.305|
|gt_mc_comp|✅ proved - incomplete|shostak|0.683|
|parext_TCC1|✅ proved - complete|shostak|0.088|
|parext|✅ proved - complete|shostak|0.271|
|ge_transitive|✅ proved - complete|shostak|0.091|
|ge_gt_transitive|✅ proved - complete|shostak|0.073|
|gt_ge_transitive|✅ proved - complete|shostak|0.090|
|extract_infinite_descent|✅ proved - incomplete|shostak|1.060|
|build_infinite_descent_TCC1|✅ proved - complete|shostak|0.190|
|build_infinite_descent|✅ proved - incomplete|shostak|1.812|
|ccg_pigeonhole|✅ proved - incomplete|shostak|0.377|
|ccg_termination_and_trans_implies_scp|✅ proved - incomplete|shostak|10.996|
|ccg_termination_implies_scp|✅ proved - incomplete|shostak|12.068|

## `scp`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|scp_termination|✅ proved - incomplete|shostak|0.105|

## `scp_to_ccg`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|omega_is_wf|✅ proved - incomplete|shostak|0.285|
|omega_is_finite|✅ proved - complete|shostak|0.080|
|IMP_omega_TCC1|✅ proved - incomplete|shostak|0.070|
|IMP_omega_TCC2|✅ proved - complete|shostak|0.084|
|IMP_ccg_TCC1|✅ proved - complete|shostak|0.080|
|scp_implies_ccg_termination|✅ proved - incomplete|shostak|0.000|

## `scp_to_ccg_alt`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|R_wf|✅ proved - incomplete|shostak|0.631|
|R_no_desc_inf_branch|✅ proved - incomplete|shostak|0.295|
|IMP_omega_TCC1|✅ proved - incomplete|shostak|0.090|
|IMP_omega_TCC2|✅ proved - incomplete|shostak|0.080|
|IMP_ccg_TCC1|✅ proved - incomplete|shostak|0.080|
|scp_implies_ccg_termination|✅ proved - incomplete|shostak|4.977|

## `measures`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|get_TCC1|✅ proved - complete|shostak|0.232|
|get_TCC2|✅ proved - complete|shostak|0.105|
|form_matrix_TCC1|✅ proved - incomplete|shostak|0.162|
|form_matrix_TCC2|✅ proved - incomplete|shostak|0.163|
|form_matrix_TCC3|✅ proved - incomplete|shostak|0.396|
|form_matfun_TCC1|✅ proved - complete|shostak|0.080|
|matrix_fun_idemp|✅ proved - incomplete|shostak|0.258|
|fun_matrix_idemp|✅ proved - incomplete|shostak|0.141|
|get_form_matrix|✅ proved - incomplete|shostak|0.090|
|max__TCC1|✅ proved - complete|shostak|0.080|
|max__TCC2|✅ proved - complete|shostak|0.103|
|max__TCC3|✅ proved - complete|shostak|0.100|
|max__TCC4|✅ proved - complete|shostak|0.275|
|max__TCC5|✅ proved - complete|shostak|0.164|
|max__TCC6|✅ proved - complete|shostak|0.100|
|max__TCC7|✅ proved - complete|shostak|0.100|
|max__TCC8|✅ proved - complete|shostak|0.075|
|id_def|✅ proved - incomplete|shostak|0.110|
|add_commute|✅ proved - complete|shostak|0.124|
|add_assoc|✅ proved - complete|shostak|0.197|
|add_measures_positive|✅ proved - complete|shostak|0.150|
|id_on_measures|✅ proved - complete|shostak|0.115|
|card_prep|✅ proved - incomplete|shostak|1.997|
|card_measure_matrices_TCC1|✅ proved - incomplete|shostak|0.078|
|card_measure_matrices_TCC2|✅ proved - complete|shostak|0.080|
|card_measure_matrices|✅ proved - incomplete|shostak|0.000|
|matrices_fun_order|✅ proved - complete|shostak|0.171|
|matrices_order|✅ proved - incomplete|shostak|0.337|
|mult_fun_left_preserves_order|✅ proved - complete|shostak|0.322|
|mult_left_preserves_order|✅ proved - incomplete|shostak|0.120|
|mult_fun_right_preserves_order|✅ proved - complete|shostak|0.331|
|mult_right_preserves_order|✅ proved - incomplete|shostak|0.120|
|id_fun_is_identity|✅ proved - complete|shostak|0.369|
|id_is_identity|✅ proved - incomplete|shostak|0.122|
|max_add|✅ proved - complete|shostak|0.659|
|measure_matrix_fun_assoc|✅ proved - complete|shostak|4.434|
|measure_matrix_assoc|✅ proved - incomplete|shostak|0.159|
|defined_pos?_def|✅ proved - complete|shostak|0.120|
|positive_mult_fun|✅ proved - complete|shostak|0.173|
|positive_multiplication|✅ proved - incomplete|shostak|0.199|
|positive_commute|✅ proved - incomplete|shostak|0.113|
|positive_mult_fun_pos|✅ proved - complete|shostak|0.144|
|positive_mult_pos|✅ proved - incomplete|shostak|0.165|
|positive_sum_fun|✅ proved - complete|shostak|0.130|
|positive_sum|✅ proved - incomplete|shostak|0.113|
|positive_sum_fun_positive_mult_fun|✅ proved - complete|shostak|0.095|
|positive_sum_positive_mult|✅ proved - incomplete|shostak|0.110|
|compatible_is_positive|✅ proved - incomplete|shostak|0.095|
|compatible_positive_grafting|✅ proved - incomplete|shostak|0.135|
|defined_pos_mul_fun|✅ proved - complete|shostak|0.134|
|defined_pos_mul|✅ proved - incomplete|shostak|0.124|
|defined_pos_decomp_fun|✅ proved - complete|shostak|0.169|
|defined_pos_decomposition|✅ proved - incomplete|shostak|0.104|
|positive_pos_mul_fun|✅ proved - complete|shostak|0.134|
|positive_pos_mul|✅ proved - incomplete|shostak|0.130|
|positive_pos_decomp_fun|✅ proved - complete|shostak|0.139|
|positive_pos_decomposition|✅ proved - incomplete|shostak|0.120|

## `ccg_to_mwg`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|indi_f_sound_all_vertex_TCC1|✅ proved - incomplete|shostak|1.415|
|indi_f_sound_all_vertex_TCC2|✅ proved - incomplete|shostak|0.508|
|indi_f_sound_all_vertex_TCC3|✅ proved - incomplete|shostak|1.308|
|indi_f_sound_all_vertex_TCC4|✅ proved - incomplete|shostak|1.241|
|indi_f_sound_all_vertex_TCC5|✅ proved - incomplete|shostak|0.469|
|indi_f_sound_all_vertex_correctness|✅ proved - incomplete|shostak|0.000|
|indi_f_sound_iter_TCC1|✅ proved - incomplete|shostak|0.453|
|indi_f_sound_iter_TCC2|✅ proved - incomplete|shostak|0.461|
|indi_f_sound_iter_TCC3|✅ proved - incomplete|shostak|1.220|
|indi_f_sound_iter_TCC4|✅ proved - complete|shostak|0.090|
|indi_f_sound_iter_TCC5|✅ proved - incomplete|shostak|0.514|
|indi_f_sound_iter_TCC6|✅ proved - incomplete|shostak|0.501|
|indi_f_sound_iter_TCC7|✅ proved - incomplete|shostak|1.197|
|indi_f_sound_iter_TCC8|✅ proved - incomplete|shostak|1.265|
|indi_f_sound_iter_TCC9|✅ proved - incomplete|shostak|1.793|
|indi_f_sound_iter_TCC10|✅ proved - incomplete|shostak|1.257|
|indi_f_sound_iter_TCC11|✅ proved - incomplete|shostak|1.262|
|indi_f_sound_iter_TCC12|✅ proved - incomplete|shostak|1.343|
|indi_f_sound_iter_TCC13|✅ proved - incomplete|shostak|0.509|
|indi_f_sound_iter_TCC14|✅ proved - incomplete|shostak|1.293|
|indi_f_sound_iter_TCC15|✅ proved - incomplete|shostak|0.473|
|indi_f_sound_iter_correctness_TCC1|✅ proved - incomplete|shostak|0.435|
|indi_f_sound_iter_correctness_TCC2|✅ proved - incomplete|shostak|0.451|
|indi_f_sound_iter_correctness|✅ proved - incomplete|shostak|0.128|
|indi_f_equiv_TCC1|✅ proved - incomplete|shostak|0.448|
|indi_f_equiv|✅ proved - incomplete|shostak|0.229|
|indi_f_sc_is_sound|✅ proved - incomplete|shostak|1.420|
|indi_f_sc_is_complete|✅ proved - incomplete|shostak|1.482|
|indi_func_is_sc|✅ proved - incomplete|shostak|0.315|
|weight_TCC1|✅ proved - incomplete|shostak|0.000|
|wlist_from_edges_TCC1|✅ proved - incomplete|shostak|0.504|
|wlist_from_edges_TCC2|✅ proved - incomplete|shostak|0.090|
|wlist_from_edges_TCC3|✅ proved - incomplete|shostak|0.088|
|wlist_from_edges_TCC4|✅ proved - incomplete|shostak|1.606|
|wlist_from_edges_TCC5|✅ proved - incomplete|shostak|0.000|
|wlist_from_edges_TCC6|✅ proved - incomplete|shostak|0.161|
|wlist_from_edges_TCC7|✅ proved - incomplete|shostak|1.396|
|wlist_from_edges_TCC8|✅ proved - incomplete|shostak|0.915|
|build_weights_list_TCC1|✅ proved - incomplete|shostak|0.090|
|build_weights_list_TCC2|✅ proved - incomplete|shostak|0.095|
|build_weights_list_TCC3|✅ proved - incomplete|shostak|0.280|
|build_weights_list_TCC4|✅ proved - incomplete|shostak|0.549|
|ccg_to_mwg_TCC1|✅ proved - incomplete|shostak|0.304|
|ccg_to_mwg_TCC2|✅ proved - incomplete|shostak|0.123|
|same_edges|✅ proved - incomplete|shostak|0.162|
|same_verts|✅ proved - incomplete|shostak|0.150|
|same_walks|✅ proved - incomplete|shostak|0.142|
|gte_mc_to_defined_pos_TCC1|✅ proved - incomplete|shostak|0.000|
|gte_mc_to_defined_pos_TCC2|✅ proved - incomplete|shostak|2.060|
|gte_mc_to_defined_pos_TCC3|✅ proved - incomplete|shostak|2.028|
|gte_mc_to_defined_pos_TCC4|✅ proved - incomplete|shostak|0.930|
|gte_mc_to_defined_pos|✅ proved - incomplete|shostak|6.588|
|defined_pos_to_gte_mc_TCC1|✅ proved - incomplete|shostak|1.955|
|defined_pos_to_gte_mc_TCC2|✅ proved - incomplete|shostak|2.028|
|defined_pos_to_gte_mc_TCC3|✅ proved - incomplete|shostak|0.000|
|defined_pos_to_gte_mc|✅ proved - incomplete|shostak|10.571|
|no_defined_pos_iff_no_gte_mc_TCC1|✅ proved - incomplete|shostak|1.964|
|no_defined_pos_iff_no_gte_mc_TCC2|✅ proved - incomplete|shostak|0.894|
|no_defined_pos_iff_no_gte_mc|✅ proved - incomplete|shostak|0.000|
|gt_mc_to_positive_pos_TCC1|✅ proved - incomplete|shostak|2.108|
|gt_mc_to_positive_pos_TCC2|✅ proved - incomplete|shostak|2.098|
|gt_mc_to_positive_pos_TCC3|✅ proved - incomplete|shostak|2.020|
|gt_mc_to_positive_pos_TCC4|✅ proved - incomplete|shostak|0.950|
|gt_mc_to_positive_pos|✅ proved - incomplete|shostak|9.374|
|positive_pos_to_gt_mc_TCC1|✅ proved - incomplete|shostak|2.085|
|positive_pos_to_gt_mc|✅ proved - incomplete|shostak|3.200|
|no_positive_pos_no_gt_mc|✅ proved - incomplete|shostak|0.230|
|positive_to_gt_mc_TCC1|✅ proved - incomplete|shostak|1.964|
|positive_to_gt_mc_TCC2|✅ proved - incomplete|shostak|2.025|
|positive_to_gt_mc_TCC3|✅ proved - incomplete|shostak|0.934|
|positive_to_gt_mc|✅ proved - incomplete|shostak|0.211|
|gt_mc_to_positive_TCC1|✅ proved - incomplete|shostak|1.998|
|gt_mc_to_positive_TCC2|✅ proved - incomplete|shostak|0.000|
|gt_mc_to_positive_TCC3|✅ proved - incomplete|shostak|1.017|
|gt_mc_to_positive|✅ proved - incomplete|shostak|0.228|
|positive_iff_gt_mc_TCC1|✅ proved - incomplete|shostak|1.953|
|positive_iff_gt_mc_TCC2|✅ proved - incomplete|shostak|2.016|
|positive_iff_gt_mc_TCC3|✅ proved - incomplete|shostak|0.891|
|positive_iff_gt_mc|✅ proved - incomplete|shostak|0.195|
|mwg_termination_to_ccg_termination|✅ proved - incomplete|shostak|0.223|
|ccg_termination_to_mwg_termination|✅ proved - incomplete|shostak|0.246|
|mwg_termination_iff_ccg_termination|✅ proved - incomplete|shostak|0.171|

## `matrix_wdg`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_c_weighted_digraphs_TCC1|✅ proved - incomplete|shostak|0.080|
|IMP_c_weighted_digraphs_TCC2|✅ proved - incomplete|shostak|0.080|
|mwg_termination?_TCC1|✅ proved - incomplete|shostak|0.776|
|mwg_termination?_TCC2|✅ proved - incomplete|shostak|0.611|
|double_cycle?_TCC1|✅ proved - incomplete|shostak|0.819|
|positive_double_cycle?_TCC1|✅ proved - incomplete|shostak|0.141|
|limiting_measure?_TCC1|✅ proved - incomplete|shostak|0.106|
|criterion_one?_TCC1|✅ proved - incomplete|shostak|0.776|
|criterion_one?_TCC2|✅ proved - incomplete|shostak|0.723|
|positive_eq_circuit_TCC1|✅ proved - incomplete|shostak|0.831|
|positive_eq_circuit_TCC2|✅ proved - incomplete|shostak|0.770|
|positive_eq_circuit_TCC3|✅ proved - incomplete|shostak|0.887|
|positive_eq_circuit|✅ proved - incomplete|shostak|3.093|
|lm_defined_walks_TCC1|✅ proved - incomplete|shostak|0.755|
|lm_defined_walks_TCC2|✅ proved - incomplete|shostak|0.730|
|lm_defined_walks|✅ proved - incomplete|shostak|2.356|
|lm_positive_edge_TCC1|✅ proved - incomplete|shostak|0.147|
|lm_positive_edge|✅ proved - incomplete|shostak|0.982|
|lm_pstv_cycles_pstv_circuits|✅ proved - incomplete|shostak|3.612|
|limiting_labeling?_TCC1|✅ proved - incomplete|shostak|0.101|
|limiting_labeling?_TCC2|✅ proved - incomplete|shostak|0.120|
|limiting_labeling?_TCC3|✅ proved - incomplete|shostak|0.118|
|limiting_labeling?_TCC4|✅ proved - incomplete|shostak|0.643|
|limiting_labeling?_TCC5|✅ proved - incomplete|shostak|0.743|
|limiting_labeling?_TCC6|✅ proved - incomplete|shostak|0.740|
|limiting_labeling?_TCC7|✅ proved - incomplete|shostak|0.685|
|limiting_labeling?_TCC8|✅ proved - incomplete|shostak|0.657|
|ll_defined_walks_TCC1|✅ proved - incomplete|shostak|0.696|
|ll_defined_walks_TCC2|✅ proved - incomplete|shostak|0.889|
|ll_defined_walks_TCC3|✅ proved - incomplete|shostak|0.920|
|ll_defined_walks_TCC4|✅ proved - incomplete|shostak|0.742|
|ll_defined_walks_TCC5|✅ proved - incomplete|shostak|0.718|
|ll_defined_walks|✅ proved - incomplete|shostak|2.453|
|ll_pstv_pos_circuits_TCC1|✅ proved - incomplete|shostak|0.724|
|ll_pstv_pos_circuits_TCC2|✅ proved - incomplete|shostak|0.793|
|ll_pstv_pos_circuits_TCC3|✅ proved - incomplete|shostak|0.765|
|ll_pstv_pos_circuits|✅ proved - incomplete|shostak|1.333|
|ll_pstv_circuits|✅ proved - incomplete|shostak|0.179|
|circuit_length_reduce_TCC1|✅ proved - incomplete|shostak|0.656|
|circuit_length_reduce_TCC2|✅ proved - incomplete|shostak|0.110|
|circuit_length_reduce_TCC3|✅ proved - incomplete|shostak|0.109|
|circuit_length_reduce_TCC4|✅ proved - incomplete|shostak|0.645|
|circuit_length_reduce_TCC5|✅ proved - incomplete|shostak|0.798|
|circuit_length_reduce|✅ proved - incomplete|shostak|3.311|
|circuit_length_bounded|✅ proved - incomplete|shostak|0.689|
|bounded_circuits_pstv_TCC1|✅ proved - incomplete|shostak|0.100|
|bounded_circuits_pstv_TCC2|✅ proved - incomplete|shostak|0.622|
|bounded_circuits_pstv|✅ proved - incomplete|shostak|0.429|
|lower_bounding_sets_TCC1|✅ proved - incomplete|shostak|0.090|
|lower_bounding_sets_TCC2|✅ proved - incomplete|shostak|0.621|
|lower_bounding_sets_TCC3|✅ proved - incomplete|shostak|0.813|
|lower_bounding_sets_TCC4|✅ proved - incomplete|shostak|0.665|
|lower_bounding_sets|✅ proved - incomplete|shostak|0.000|
|CircBound_TCC1|✅ proved - incomplete|shostak|0.130|
|BoundingSets_TCC1|✅ proved - incomplete|shostak|0.777|
|BoundingSets_TCC2|✅ proved - incomplete|shostak|0.649|
|bounding_steps_iter_TCC1|✅ proved - incomplete|shostak|1.773|
|bounding_steps_iter_TCC2|✅ proved - incomplete|shostak|0.243|
|bounding_steps_iter_def|✅ proved - incomplete|shostak|1.246|

## `bounding_circuits_defs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|is_less_MM_list_TCC1|✅ proved - complete|shostak|0.237|
|is_less_MM_list_TCC2|✅ proved - complete|shostak|0.120|
|is_less_MM_list_TCC3|✅ proved - complete|shostak|0.255|
|is_less_MM_list_TCC4|✅ proved - complete|shostak|0.710|
|minimalize_iter_TCC1|✅ proved - complete|shostak|0.140|
|minimalize_iter_TCC2|✅ proved - complete|shostak|0.140|
|minimalize_iter_TCC3|✅ proved - incomplete|shostak|1.777|
|minimalize_iter_TCC4|✅ proved - complete|shostak|0.135|
|minimalize_iter_TCC5|✅ proved - complete|shostak|0.000|
|minimalize_iter_TCC6|✅ proved - complete|shostak|0.110|
|minimalize_TCC1|✅ proved - incomplete|shostak|4.709|
|list_prod_pre_TCC1|✅ proved - incomplete|shostak|0.106|
|list_prod_pre_TCC2|✅ proved - complete|shostak|0.150|
|list_prod_pre_TCC3|✅ proved - incomplete|shostak|0.000|
|list_prod_TCC1|✅ proved - incomplete|shostak|0.163|
|decomp_weight_TCC1|✅ proved - incomplete|shostak|0.110|
|decomp_weight_TCC2|✅ proved - incomplete|shostak|0.114|
|decomp_weight_TCC3|✅ proved - incomplete|shostak|0.110|
|decomp_weight_TCC4|✅ proved - incomplete|shostak|0.110|
|decomp_weight_TCC5|✅ proved - incomplete|shostak|0.094|
|decomp_weight_TCC6|✅ proved - incomplete|shostak|1.117|
|decomp_weight_TCC7|✅ proved - incomplete|shostak|0.000|
|decomp_weight_TCC8|✅ proved - incomplete|shostak|1.124|
|decomp_weight_TCC9|✅ proved - incomplete|shostak|0.110|
|decomp_weight_TCC10|✅ proved - incomplete|shostak|0.110|
|decomp_weight_TCC11|✅ proved - incomplete|shostak|0.117|
|decomp_weight_TCC12|✅ proved - incomplete|shostak|1.081|
|decomp_weight_TCC13|✅ proved - incomplete|shostak|0.731|
|decomp_weight_TCC14|✅ proved - incomplete|shostak|1.094|
|decomp_weight_TCC15|✅ proved - incomplete|shostak|1:19.794|
|decomp_weight_TCC16|✅ proved - incomplete|shostak|0.117|
|decomp_weight_TCC17|✅ proved - incomplete|shostak|0.260|
|decomp_weight_TCC18|✅ proved - incomplete|shostak|0.166|
|decomp_weight_def_TCC1|✅ proved - incomplete|shostak|0.200|
|decomp_weight_def_TCC2|✅ proved - incomplete|shostak|0.108|
|decomp_weight_def_TCC3|✅ proved - incomplete|shostak|0.100|
|decomp_weight_def_TCC4|✅ proved - incomplete|shostak|0.613|
|decomp_weight_def|✅ proved - incomplete|shostak|45.086|
|walk_bounding_TCC1|✅ proved - incomplete|shostak|0.241|
|walk_bounding_TCC2|✅ proved - incomplete|shostak|0.100|
|walk_bounding_TCC3|✅ proved - incomplete|shostak|0.090|
|walk_bounding_TCC4|✅ proved - incomplete|shostak|1.665|
|walk_bounding_TCC5|✅ proved - incomplete|shostak|0.733|
|walk_bounding_TCC6|✅ proved - incomplete|shostak|0.202|
|walk_bounding_TCC7|✅ proved - incomplete|shostak|1.948|
|walk_bounding_TCC8|✅ proved - incomplete|shostak|0.606|
|walk_bounding_TCC9|✅ proved - incomplete|shostak|0.629|
|walk_bounding_def_TCC1|✅ proved - incomplete|shostak|0.705|
|walk_bounding_def_TCC2|✅ proved - incomplete|shostak|0.100|
|walk_bounding_def_TCC3|✅ proved - incomplete|shostak|0.100|
|walk_bounding_def_TCC4|✅ proved - incomplete|shostak|0.610|
|walk_bounding_def|✅ proved - incomplete|shostak|56.179|
|walk_bounding_has_walk_wgt_TCC1|✅ proved - incomplete|shostak|0.000|
|walk_bounding_has_walk_wgt_TCC2|✅ proved - incomplete|shostak|0.100|
|walk_bounding_has_walk_wgt_TCC3|✅ proved - incomplete|shostak|0.087|
|walk_bounding_has_walk_wgt_TCC4|✅ proved - incomplete|shostak|0.694|
|walk_bounding_has_walk_wgt|✅ proved - incomplete|shostak|4.413|
|walk_list_bounding_TCC1|✅ proved - incomplete|shostak|0.633|
|walk_list_bounding_TCC2|✅ proved - incomplete|shostak|1.437|
|walk_list_bounding_def_TCC1|✅ proved - incomplete|shostak|0.692|
|walk_list_bounding_def_TCC2|✅ proved - incomplete|shostak|0.110|
|walk_list_bounding_def_TCC3|✅ proved - incomplete|shostak|0.103|
|walk_list_bounding_def_TCC4|✅ proved - incomplete|shostak|0.606|
|walk_list_bounding_def|✅ proved - incomplete|shostak|3.801|
|walk_list_bounding_has_walk_wgt_TCC1|✅ proved - incomplete|shostak|0.691|
|walk_list_bounding_has_walk_wgt_TCC2|✅ proved - incomplete|shostak|0.100|
|walk_list_bounding_has_walk_wgt_TCC3|✅ proved - incomplete|shostak|0.099|
|walk_list_bounding_has_walk_wgt_TCC4|✅ proved - incomplete|shostak|0.680|
|walk_list_bounding_has_walk_wgt|✅ proved - incomplete|shostak|2.087|
|bound_circuits_at_def_TCC1|✅ proved - incomplete|shostak|0.000|
|bound_circuits_at_def_TCC2|✅ proved - incomplete|shostak|0.108|
|bound_circuits_at_def_TCC3|✅ proved - incomplete|shostak|0.090|
|bound_circuits_at_def_TCC4|✅ proved - incomplete|shostak|0.780|
|bound_circuits_at_def|✅ proved - incomplete|shostak|2.345|
|index_of_vert_TCC1|✅ proved - incomplete|shostak|1.365|
|index_of_vert_TCC2|✅ proved - incomplete|shostak|0.166|
|index_of_vert_TCC3|✅ proved - incomplete|shostak|1.592|
|index_of_vert_TCC4|✅ proved - incomplete|shostak|0.146|
|index_of_vert_TCC5|✅ proved - incomplete|shostak|0.713|
|bound_circuits_list_def_TCC1|✅ proved - incomplete|shostak|0.870|
|bound_circuits_list_def_TCC2|✅ proved - incomplete|shostak|1.556|
|bound_circuits_list_def_TCC3|✅ proved - incomplete|shostak|0.937|
|bound_circuits_list_def_TCC4|✅ proved - incomplete|shostak|0.110|
|bound_circuits_list_def_TCC5|✅ proved - incomplete|shostak|0.120|
|bound_circuits_list_def_TCC6|✅ proved - incomplete|shostak|0.102|
|bound_circuits_list_def|✅ proved - incomplete|shostak|0.000|
|bound_circuits_iter_TCC1|✅ proved - incomplete|shostak|0.249|
|bound_circuits_iter_TCC2|✅ proved - incomplete|shostak|0.266|
|bound_circuits_iter_TCC3|✅ proved - incomplete|shostak|1.704|
|bound_circuits_iter_TCC4|✅ proved - incomplete|shostak|1.530|
|bound_circuits_iter_def_TCC1|✅ proved - incomplete|shostak|0.902|
|bound_circuits_iter_def_TCC2|✅ proved - incomplete|shostak|0.110|
|bound_circuits_iter_def_TCC3|✅ proved - incomplete|shostak|0.110|
|bound_circuits_iter_def_TCC4|✅ proved - incomplete|shostak|0.773|
|bound_circuits_iter_def|✅ proved - incomplete|shostak|3.644|
|bound_circuits_iter_stable|✅ proved - incomplete|shostak|0.000|
|bound_circuits_TCC1|✅ proved - incomplete|shostak|0.708|
|bound_circuits_TCC2|✅ proved - incomplete|shostak|0.000|
|bound_circuits_TCC3|✅ proved - incomplete|shostak|0.792|
|bound_circuits_TCC4|✅ proved - incomplete|shostak|0.000|
|bound_circuits_TCC5|✅ proved - incomplete|shostak|0.995|
|bound_circuits_TCC6|✅ proved - incomplete|shostak|1.630|
|bound_circuits_TCC7|✅ proved - incomplete|shostak|0.000|
|start_bounding_TCC1|✅ proved - incomplete|shostak|0.855|
|start_bounding_TCC2|✅ proved - incomplete|shostak|1.583|
|start_bounding_TCC3|✅ proved - incomplete|shostak|0.967|
|start_bounding_TCC4|✅ proved - incomplete|shostak|0.000|
|bounding_from_graph_lists_TCC1|✅ proved - incomplete|shostak|1.901|

## `bounding_circuits`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|bounding_from_gl_termination|✅ proved - incomplete|shostak|3.249|
|c_bounding_from_gl_termination|✅ proved - incomplete|shostak|0.000|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib/pvsio_utils/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230712-static-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230710-tcc-gen.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230707-defattach.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230706-extrategies.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`|
