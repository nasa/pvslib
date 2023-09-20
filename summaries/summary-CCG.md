# Summary for `CCG`
Run started at 1:41:0 9/20/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **348**   | **348**    | **348**    | **0**  | **7:37.633 s**   |
|top|0|0|0|0|0.000|
|cc_def|0|0|0|0|0.000|
|ccg_def|0|0|0|0|0.000|
|ccg|27|27|27|0|26.659|
|scp|1|1|1|0|0.100|
|scp_to_ccg|6|6|6|0|5.363|
|scp_to_ccg_alt|6|6|6|0|5.864|
|measures|57|57|57|0|15.139|
|ccg_to_mwg|82|82|82|0|1:35.800|
|matrix_wdg|59|59|59|0|44.691|
|bounding_circuits_defs|108|108|108|0|4:22.674|
|bounding_circuits|2|2|2|0|1.343|
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
|gte_mc?_TCC1|✅ proved - incomplete|shostak|0.554|
|gte_mc?_TCC2|✅ proved - incomplete|shostak|0.404|
|gte_mc?_TCC3|✅ proved - incomplete|shostak|0.407|
|ccg_termination?_TCC1|✅ proved - incomplete|shostak|0.419|
|gt_to_gte|✅ proved - incomplete|shostak|0.094|
|gte_mc_comp_TCC1|✅ proved - incomplete|shostak|0.436|
|gte_mc_comp_TCC2|✅ proved - incomplete|shostak|0.436|
|gte_mc_comp_TCC3|✅ proved - incomplete|shostak|0.456|
|gte_mc_comp_TCC4|✅ proved - incomplete|shostak|0.458|
|gte_mc_comp_TCC5|✅ proved - incomplete|shostak|0.284|
|gte_mc_comp_TCC6|✅ proved - incomplete|shostak|0.701|
|gte_mc_comp|✅ proved - incomplete|shostak|0.788|
|gte_mc_sub_walk_TCC1|✅ proved - incomplete|shostak|0.628|
|gte_mc_sub_walk_TCC2|✅ proved - incomplete|shostak|0.587|
|gte_mc_sub_walk|✅ proved - incomplete|shostak|0.309|
|gt_mc_comp|✅ proved - incomplete|shostak|0.677|
|parext_TCC1|✅ proved - complete|shostak|0.090|
|parext|✅ proved - complete|shostak|0.268|
|ge_transitive|✅ proved - complete|shostak|0.079|
|ge_gt_transitive|✅ proved - complete|shostak|0.080|
|gt_ge_transitive|✅ proved - complete|shostak|0.091|
|extract_infinite_descent|✅ proved - incomplete|shostak|1.048|
|build_infinite_descent_TCC1|✅ proved - complete|shostak|0.189|
|build_infinite_descent|✅ proved - incomplete|shostak|1.826|
|ccg_pigeonhole|✅ proved - incomplete|shostak|0.366|
|ccg_termination_and_trans_implies_scp|✅ proved - incomplete|shostak|10.960|
|ccg_termination_implies_scp|✅ proved - incomplete|shostak|4.024|

## `scp`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|scp_termination|✅ proved - incomplete|shostak|0.100|

## `scp_to_ccg`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|omega_is_wf|✅ proved - incomplete|shostak|0.278|
|omega_is_finite|✅ proved - complete|shostak|0.070|
|IMP_omega_TCC1|✅ proved - incomplete|shostak|0.072|
|IMP_omega_TCC2|✅ proved - complete|shostak|0.080|
|IMP_ccg_TCC1|✅ proved - complete|shostak|0.070|
|scp_implies_ccg_termination|✅ proved - incomplete|shostak|4.793|

## `scp_to_ccg_alt`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|R_wf|✅ proved - incomplete|shostak|0.559|
|R_no_desc_inf_branch|✅ proved - incomplete|shostak|0.276|
|IMP_omega_TCC1|✅ proved - incomplete|shostak|0.075|
|IMP_omega_TCC2|✅ proved - incomplete|shostak|0.080|
|IMP_ccg_TCC1|✅ proved - incomplete|shostak|0.070|
|scp_implies_ccg_termination|✅ proved - incomplete|shostak|4.804|

## `measures`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|get_TCC1|✅ proved - complete|shostak|0.230|
|get_TCC2|✅ proved - complete|shostak|0.106|
|form_matrix_TCC1|✅ proved - incomplete|shostak|0.161|
|form_matrix_TCC2|✅ proved - incomplete|shostak|0.164|
|form_matrix_TCC3|✅ proved - incomplete|shostak|0.403|
|form_matfun_TCC1|✅ proved - complete|shostak|0.090|
|matrix_fun_idemp|✅ proved - incomplete|shostak|0.236|
|fun_matrix_idemp|✅ proved - incomplete|shostak|0.121|
|get_form_matrix|✅ proved - incomplete|shostak|0.090|
|max__TCC1|✅ proved - complete|shostak|0.070|
|max__TCC2|✅ proved - complete|shostak|0.093|
|max__TCC3|✅ proved - complete|shostak|0.110|
|max__TCC4|✅ proved - complete|shostak|0.272|
|max__TCC5|✅ proved - complete|shostak|0.163|
|max__TCC6|✅ proved - complete|shostak|0.100|
|max__TCC7|✅ proved - complete|shostak|0.092|
|max__TCC8|✅ proved - complete|shostak|0.090|
|id_def|✅ proved - incomplete|shostak|0.094|
|add_commute|✅ proved - complete|shostak|0.123|
|add_assoc|✅ proved - complete|shostak|0.193|
|add_measures_positive|✅ proved - complete|shostak|0.144|
|id_on_measures|✅ proved - complete|shostak|0.120|
|card_prep|✅ proved - incomplete|shostak|1.965|
|card_measure_matrices_TCC1|✅ proved - incomplete|shostak|0.080|
|card_measure_matrices_TCC2|✅ proved - complete|shostak|0.080|
|card_measure_matrices|✅ proved - incomplete|shostak|0.000|
|matrices_fun_order|✅ proved - complete|shostak|0.170|
|matrices_order|✅ proved - incomplete|shostak|0.339|
|mult_fun_left_preserves_order|✅ proved - complete|shostak|0.308|
|mult_left_preserves_order|✅ proved - incomplete|shostak|0.125|
|mult_fun_right_preserves_order|✅ proved - complete|shostak|0.314|
|mult_right_preserves_order|✅ proved - incomplete|shostak|0.112|
|id_fun_is_identity|✅ proved - complete|shostak|0.362|
|id_is_identity|✅ proved - incomplete|shostak|0.132|
|max_add|✅ proved - complete|shostak|0.646|
|measure_matrix_fun_assoc|✅ proved - complete|shostak|4.426|
|measure_matrix_assoc|✅ proved - incomplete|shostak|0.155|
|defined_pos?_def|✅ proved - complete|shostak|0.120|
|positive_mult_fun|✅ proved - complete|shostak|0.166|
|positive_multiplication|✅ proved - incomplete|shostak|0.198|
|positive_commute|✅ proved - incomplete|shostak|0.114|
|positive_mult_fun_pos|✅ proved - complete|shostak|0.144|
|positive_mult_pos|✅ proved - incomplete|shostak|0.164|
|positive_sum_fun|✅ proved - complete|shostak|0.130|
|positive_sum|✅ proved - incomplete|shostak|0.113|
|positive_sum_fun_positive_mult_fun|✅ proved - complete|shostak|0.095|
|positive_sum_positive_mult|✅ proved - incomplete|shostak|0.120|
|compatible_is_positive|✅ proved - incomplete|shostak|0.105|
|compatible_positive_grafting|✅ proved - incomplete|shostak|0.133|
|defined_pos_mul_fun|✅ proved - complete|shostak|0.136|
|defined_pos_mul|✅ proved - incomplete|shostak|0.134|
|defined_pos_decomp_fun|✅ proved - complete|shostak|0.169|
|defined_pos_decomposition|✅ proved - incomplete|shostak|0.100|
|positive_pos_mul_fun|✅ proved - complete|shostak|0.136|
|positive_pos_mul|✅ proved - incomplete|shostak|0.125|
|positive_pos_decomp_fun|✅ proved - complete|shostak|0.134|
|positive_pos_decomposition|✅ proved - incomplete|shostak|0.124|

## `ccg_to_mwg`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|indi_f_sound_all_vertex_TCC1|✅ proved - incomplete|shostak|1.402|
|indi_f_sound_all_vertex_TCC2|✅ proved - incomplete|shostak|0.511|
|indi_f_sound_all_vertex_TCC3|✅ proved - incomplete|shostak|1.293|
|indi_f_sound_all_vertex_TCC4|✅ proved - incomplete|shostak|1.229|
|indi_f_sound_all_vertex_TCC5|✅ proved - incomplete|shostak|0.000|
|indi_f_sound_all_vertex_correctness|✅ proved - incomplete|shostak|2.497|
|indi_f_sound_iter_TCC1|✅ proved - incomplete|shostak|0.442|
|indi_f_sound_iter_TCC2|✅ proved - incomplete|shostak|0.452|
|indi_f_sound_iter_TCC3|✅ proved - incomplete|shostak|1.194|
|indi_f_sound_iter_TCC4|✅ proved - complete|shostak|0.090|
|indi_f_sound_iter_TCC5|✅ proved - incomplete|shostak|0.502|
|indi_f_sound_iter_TCC6|✅ proved - incomplete|shostak|0.494|
|indi_f_sound_iter_TCC7|✅ proved - incomplete|shostak|1.196|
|indi_f_sound_iter_TCC8|✅ proved - incomplete|shostak|1.259|
|indi_f_sound_iter_TCC9|✅ proved - incomplete|shostak|1.775|
|indi_f_sound_iter_TCC10|✅ proved - incomplete|shostak|1.196|
|indi_f_sound_iter_TCC11|✅ proved - incomplete|shostak|1.212|
|indi_f_sound_iter_TCC12|✅ proved - incomplete|shostak|1.338|
|indi_f_sound_iter_TCC13|✅ proved - incomplete|shostak|0.518|
|indi_f_sound_iter_TCC14|✅ proved - incomplete|shostak|1.301|
|indi_f_sound_iter_TCC15|✅ proved - incomplete|shostak|0.467|
|indi_f_sound_iter_correctness_TCC1|✅ proved - incomplete|shostak|0.445|
|indi_f_sound_iter_correctness_TCC2|✅ proved - incomplete|shostak|0.443|
|indi_f_sound_iter_correctness|✅ proved - incomplete|shostak|0.134|
|indi_f_equiv_TCC1|✅ proved - incomplete|shostak|0.458|
|indi_f_equiv|✅ proved - incomplete|shostak|0.228|
|indi_f_sc_is_sound|✅ proved - incomplete|shostak|1.409|
|indi_f_sc_is_complete|✅ proved - incomplete|shostak|0.000|
|indi_func_is_sc|✅ proved - incomplete|shostak|0.303|
|weight_TCC1|✅ proved - incomplete|shostak|1.264|
|wlist_from_edges_TCC1|✅ proved - incomplete|shostak|0.493|
|wlist_from_edges_TCC2|✅ proved - incomplete|shostak|0.090|
|wlist_from_edges_TCC3|✅ proved - incomplete|shostak|0.092|
|wlist_from_edges_TCC4|✅ proved - incomplete|shostak|1.565|
|wlist_from_edges_TCC5|✅ proved - incomplete|shostak|0.000|
|wlist_from_edges_TCC6|✅ proved - incomplete|shostak|0.152|
|wlist_from_edges_TCC7|✅ proved - incomplete|shostak|1.391|
|wlist_from_edges_TCC8|✅ proved - incomplete|shostak|0.858|
|build_weights_list_TCC1|✅ proved - incomplete|shostak|0.100|
|build_weights_list_TCC2|✅ proved - incomplete|shostak|0.090|
|build_weights_list_TCC3|✅ proved - incomplete|shostak|0.277|
|build_weights_list_TCC4|✅ proved - incomplete|shostak|0.550|
|ccg_to_mwg_TCC1|✅ proved - incomplete|shostak|0.299|
|ccg_to_mwg_TCC2|✅ proved - incomplete|shostak|0.133|
|same_edges|✅ proved - incomplete|shostak|0.162|
|same_verts|✅ proved - incomplete|shostak|0.141|
|same_walks|✅ proved - incomplete|shostak|0.142|
|gte_mc_to_defined_pos_TCC1|✅ proved - incomplete|shostak|0.000|
|gte_mc_to_defined_pos_TCC2|✅ proved - incomplete|shostak|2.042|
|gte_mc_to_defined_pos_TCC3|✅ proved - incomplete|shostak|1.965|
|gte_mc_to_defined_pos_TCC4|✅ proved - incomplete|shostak|0.916|
|gte_mc_to_defined_pos|✅ proved - incomplete|shostak|6.811|
|defined_pos_to_gte_mc_TCC1|✅ proved - incomplete|shostak|1.972|
|defined_pos_to_gte_mc_TCC2|✅ proved - incomplete|shostak|1.998|
|defined_pos_to_gte_mc_TCC3|✅ proved - incomplete|shostak|0.000|
|defined_pos_to_gte_mc|✅ proved - incomplete|shostak|10.239|
|no_defined_pos_iff_no_gte_mc_TCC1|✅ proved - incomplete|shostak|1.915|
|no_defined_pos_iff_no_gte_mc_TCC2|✅ proved - incomplete|shostak|0.887|
|no_defined_pos_iff_no_gte_mc|✅ proved - incomplete|shostak|0.000|
|gt_mc_to_positive_pos_TCC1|✅ proved - incomplete|shostak|2.048|
|gt_mc_to_positive_pos_TCC2|✅ proved - incomplete|shostak|2.066|
|gt_mc_to_positive_pos_TCC3|✅ proved - incomplete|shostak|2.002|
|gt_mc_to_positive_pos_TCC4|✅ proved - incomplete|shostak|0.946|
|gt_mc_to_positive_pos|✅ proved - incomplete|shostak|9.223|
|positive_pos_to_gt_mc_TCC1|✅ proved - incomplete|shostak|2.077|
|positive_pos_to_gt_mc|✅ proved - incomplete|shostak|3.044|
|no_positive_pos_no_gt_mc|✅ proved - incomplete|shostak|0.226|
|positive_to_gt_mc_TCC1|✅ proved - incomplete|shostak|1.931|
|positive_to_gt_mc_TCC2|✅ proved - incomplete|shostak|2.005|
|positive_to_gt_mc_TCC3|✅ proved - incomplete|shostak|0.907|
|positive_to_gt_mc|✅ proved - incomplete|shostak|0.204|
|gt_mc_to_positive_TCC1|✅ proved - incomplete|shostak|1.937|
|gt_mc_to_positive_TCC2|✅ proved - incomplete|shostak|0.000|
|gt_mc_to_positive_TCC3|✅ proved - incomplete|shostak|0.969|
|gt_mc_to_positive|✅ proved - incomplete|shostak|0.230|
|positive_iff_gt_mc_TCC1|✅ proved - incomplete|shostak|1.948|
|positive_iff_gt_mc_TCC2|✅ proved - incomplete|shostak|2.010|
|positive_iff_gt_mc_TCC3|✅ proved - incomplete|shostak|0.874|
|positive_iff_gt_mc|✅ proved - incomplete|shostak|0.204|
|mwg_termination_to_ccg_termination|✅ proved - incomplete|shostak|0.214|
|ccg_termination_to_mwg_termination|✅ proved - incomplete|shostak|0.243|
|mwg_termination_iff_ccg_termination|✅ proved - incomplete|shostak|0.160|

## `matrix_wdg`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_c_weighted_digraphs_TCC1|✅ proved - incomplete|shostak|0.083|
|IMP_c_weighted_digraphs_TCC2|✅ proved - incomplete|shostak|0.090|
|mwg_termination?_TCC1|✅ proved - incomplete|shostak|0.780|
|mwg_termination?_TCC2|✅ proved - incomplete|shostak|0.621|
|double_cycle?_TCC1|✅ proved - incomplete|shostak|0.812|
|positive_double_cycle?_TCC1|✅ proved - incomplete|shostak|0.152|
|limiting_measure?_TCC1|✅ proved - incomplete|shostak|0.100|
|criterion_one?_TCC1|✅ proved - incomplete|shostak|0.775|
|criterion_one?_TCC2|✅ proved - incomplete|shostak|0.746|
|positive_eq_circuit_TCC1|✅ proved - incomplete|shostak|0.839|
|positive_eq_circuit_TCC2|✅ proved - incomplete|shostak|0.761|
|positive_eq_circuit_TCC3|✅ proved - incomplete|shostak|0.878|
|positive_eq_circuit|✅ proved - incomplete|shostak|2.775|
|lm_defined_walks_TCC1|✅ proved - incomplete|shostak|0.755|
|lm_defined_walks_TCC2|✅ proved - incomplete|shostak|0.729|
|lm_defined_walks|✅ proved - incomplete|shostak|2.557|
|lm_positive_edge_TCC1|✅ proved - incomplete|shostak|0.148|
|lm_positive_edge|✅ proved - incomplete|shostak|0.984|
|lm_pstv_cycles_pstv_circuits|✅ proved - incomplete|shostak|3.630|
|limiting_labeling?_TCC1|✅ proved - incomplete|shostak|0.103|
|limiting_labeling?_TCC2|✅ proved - incomplete|shostak|0.120|
|limiting_labeling?_TCC3|✅ proved - incomplete|shostak|0.118|
|limiting_labeling?_TCC4|✅ proved - incomplete|shostak|0.648|
|limiting_labeling?_TCC5|✅ proved - incomplete|shostak|0.725|
|limiting_labeling?_TCC6|✅ proved - incomplete|shostak|0.730|
|limiting_labeling?_TCC7|✅ proved - incomplete|shostak|0.681|
|limiting_labeling?_TCC8|✅ proved - incomplete|shostak|0.650|
|ll_defined_walks_TCC1|✅ proved - incomplete|shostak|0.689|
|ll_defined_walks_TCC2|✅ proved - incomplete|shostak|0.873|
|ll_defined_walks_TCC3|✅ proved - incomplete|shostak|0.914|
|ll_defined_walks_TCC4|✅ proved - incomplete|shostak|0.736|
|ll_defined_walks_TCC5|✅ proved - incomplete|shostak|0.700|
|ll_defined_walks|✅ proved - incomplete|shostak|2.379|
|ll_pstv_pos_circuits_TCC1|✅ proved - incomplete|shostak|0.679|
|ll_pstv_pos_circuits_TCC2|✅ proved - incomplete|shostak|0.751|
|ll_pstv_pos_circuits_TCC3|✅ proved - incomplete|shostak|0.756|
|ll_pstv_pos_circuits|✅ proved - incomplete|shostak|0.653|
|ll_pstv_circuits|✅ proved - incomplete|shostak|0.172|
|circuit_length_reduce_TCC1|✅ proved - incomplete|shostak|0.653|
|circuit_length_reduce_TCC2|✅ proved - incomplete|shostak|0.107|
|circuit_length_reduce_TCC3|✅ proved - incomplete|shostak|0.100|
|circuit_length_reduce_TCC4|✅ proved - incomplete|shostak|0.638|
|circuit_length_reduce_TCC5|✅ proved - incomplete|shostak|0.787|
|circuit_length_reduce|✅ proved - incomplete|shostak|2.791|
|circuit_length_bounded|✅ proved - incomplete|shostak|0.699|
|bounded_circuits_pstv_TCC1|✅ proved - incomplete|shostak|0.090|
|bounded_circuits_pstv_TCC2|✅ proved - incomplete|shostak|0.615|
|bounded_circuits_pstv|✅ proved - incomplete|shostak|0.410|
|lower_bounding_sets_TCC1|✅ proved - incomplete|shostak|0.100|
|lower_bounding_sets_TCC2|✅ proved - incomplete|shostak|0.624|
|lower_bounding_sets_TCC3|✅ proved - incomplete|shostak|0.805|
|lower_bounding_sets_TCC4|✅ proved - incomplete|shostak|0.656|
|lower_bounding_sets|✅ proved - incomplete|shostak|0.924|
|CircBound_TCC1|✅ proved - incomplete|shostak|0.100|
|BoundingSets_TCC1|✅ proved - incomplete|shostak|0.734|
|BoundingSets_TCC2|✅ proved - incomplete|shostak|0.647|
|bounding_steps_iter_TCC1|✅ proved - incomplete|shostak|1.678|
|bounding_steps_iter_TCC2|✅ proved - incomplete|shostak|0.241|
|bounding_steps_iter_def|✅ proved - incomplete|shostak|0.000|

## `bounding_circuits_defs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|is_less_MM_list_TCC1|✅ proved - complete|shostak|0.229|
|is_less_MM_list_TCC2|✅ proved - complete|shostak|0.132|
|is_less_MM_list_TCC3|✅ proved - complete|shostak|0.246|
|is_less_MM_list_TCC4|✅ proved - complete|shostak|0.703|
|minimalize_iter_TCC1|✅ proved - complete|shostak|0.149|
|minimalize_iter_TCC2|✅ proved - complete|shostak|0.128|
|minimalize_iter_TCC3|✅ proved - incomplete|shostak|1.761|
|minimalize_iter_TCC4|✅ proved - complete|shostak|0.139|
|minimalize_iter_TCC5|✅ proved - complete|shostak|2.992|
|minimalize_iter_TCC6|✅ proved - complete|shostak|0.108|
|minimalize_TCC1|✅ proved - incomplete|shostak|0.000|
|list_prod_pre_TCC1|✅ proved - incomplete|shostak|0.122|
|list_prod_pre_TCC2|✅ proved - complete|shostak|0.159|
|list_prod_pre_TCC3|✅ proved - incomplete|shostak|0.000|
|list_prod_TCC1|✅ proved - incomplete|shostak|0.163|
|decomp_weight_TCC1|✅ proved - incomplete|shostak|0.112|
|decomp_weight_TCC2|✅ proved - incomplete|shostak|0.110|
|decomp_weight_TCC3|✅ proved - incomplete|shostak|0.100|
|decomp_weight_TCC4|✅ proved - incomplete|shostak|0.115|
|decomp_weight_TCC5|✅ proved - incomplete|shostak|0.100|
|decomp_weight_TCC6|✅ proved - incomplete|shostak|1.109|
|decomp_weight_TCC7|✅ proved - incomplete|shostak|0.614|
|decomp_weight_TCC8|✅ proved - incomplete|shostak|1.108|
|decomp_weight_TCC9|✅ proved - incomplete|shostak|0.100|
|decomp_weight_TCC10|✅ proved - incomplete|shostak|0.100|
|decomp_weight_TCC11|✅ proved - incomplete|shostak|0.106|
|decomp_weight_TCC12|✅ proved - incomplete|shostak|0.000|
|decomp_weight_TCC13|✅ proved - incomplete|shostak|0.728|
|decomp_weight_TCC14|✅ proved - incomplete|shostak|1.080|
|decomp_weight_TCC15|✅ proved - incomplete|shostak|1:24.562|
|decomp_weight_TCC16|✅ proved - incomplete|shostak|0.123|
|decomp_weight_TCC17|✅ proved - incomplete|shostak|0.252|
|decomp_weight_TCC18|✅ proved - incomplete|shostak|0.170|
|decomp_weight_def_TCC1|✅ proved - incomplete|shostak|0.205|
|decomp_weight_def_TCC2|✅ proved - incomplete|shostak|0.094|
|decomp_weight_def_TCC3|✅ proved - incomplete|shostak|0.100|
|decomp_weight_def_TCC4|✅ proved - incomplete|shostak|0.000|
|decomp_weight_def|✅ proved - incomplete|shostak|49.567|
|walk_bounding_TCC1|✅ proved - incomplete|shostak|0.267|
|walk_bounding_TCC2|✅ proved - incomplete|shostak|0.120|
|walk_bounding_TCC3|✅ proved - incomplete|shostak|0.110|
|walk_bounding_TCC4|✅ proved - incomplete|shostak|1.832|
|walk_bounding_TCC5|✅ proved - incomplete|shostak|0.848|
|walk_bounding_TCC6|✅ proved - incomplete|shostak|0.244|
|walk_bounding_TCC7|✅ proved - incomplete|shostak|2.183|
|walk_bounding_TCC8|✅ proved - incomplete|shostak|0.660|
|walk_bounding_TCC9|✅ proved - incomplete|shostak|0.692|
|walk_bounding_def_TCC1|✅ proved - incomplete|shostak|0.787|
|walk_bounding_def_TCC2|✅ proved - incomplete|shostak|0.111|
|walk_bounding_def_TCC3|✅ proved - incomplete|shostak|0.110|
|walk_bounding_def_TCC4|✅ proved - incomplete|shostak|0.682|
|walk_bounding_def|✅ proved - incomplete|shostak|59.582|
|walk_bounding_has_walk_wgt_TCC1|✅ proved - incomplete|shostak|0.000|
|walk_bounding_has_walk_wgt_TCC2|✅ proved - incomplete|shostak|0.100|
|walk_bounding_has_walk_wgt_TCC3|✅ proved - incomplete|shostak|0.099|
|walk_bounding_has_walk_wgt_TCC4|✅ proved - incomplete|shostak|0.697|
|walk_bounding_has_walk_wgt|✅ proved - incomplete|shostak|4.502|
|walk_list_bounding_TCC1|✅ proved - incomplete|shostak|0.638|
|walk_list_bounding_TCC2|✅ proved - incomplete|shostak|1.475|
|walk_list_bounding_def_TCC1|✅ proved - incomplete|shostak|0.719|
|walk_list_bounding_def_TCC2|✅ proved - incomplete|shostak|0.100|
|walk_list_bounding_def_TCC3|✅ proved - incomplete|shostak|0.107|
|walk_list_bounding_def_TCC4|✅ proved - incomplete|shostak|0.636|
|walk_list_bounding_def|✅ proved - incomplete|shostak|3.852|
|walk_list_bounding_has_walk_wgt_TCC1|✅ proved - incomplete|shostak|0.717|
|walk_list_bounding_has_walk_wgt_TCC2|✅ proved - incomplete|shostak|0.110|
|walk_list_bounding_has_walk_wgt_TCC3|✅ proved - incomplete|shostak|0.098|
|walk_list_bounding_has_walk_wgt_TCC4|✅ proved - incomplete|shostak|0.720|
|walk_list_bounding_has_walk_wgt|✅ proved - incomplete|shostak|2.196|
|bound_circuits_at_def_TCC1|✅ proved - incomplete|shostak|0.000|
|bound_circuits_at_def_TCC2|✅ proved - incomplete|shostak|0.109|
|bound_circuits_at_def_TCC3|✅ proved - incomplete|shostak|0.110|
|bound_circuits_at_def_TCC4|✅ proved - incomplete|shostak|0.841|
|bound_circuits_at_def|✅ proved - incomplete|shostak|2.431|
|index_of_vert_TCC1|✅ proved - incomplete|shostak|1.401|
|index_of_vert_TCC2|✅ proved - incomplete|shostak|0.167|
|index_of_vert_TCC3|✅ proved - incomplete|shostak|1.644|
|index_of_vert_TCC4|✅ proved - incomplete|shostak|0.153|
|index_of_vert_TCC5|✅ proved - incomplete|shostak|0.740|
|bound_circuits_list_def_TCC1|✅ proved - incomplete|shostak|0.913|
|bound_circuits_list_def_TCC2|✅ proved - incomplete|shostak|1.609|
|bound_circuits_list_def_TCC3|✅ proved - incomplete|shostak|0.964|
|bound_circuits_list_def_TCC4|✅ proved - incomplete|shostak|0.120|
|bound_circuits_list_def_TCC5|✅ proved - incomplete|shostak|0.110|
|bound_circuits_list_def_TCC6|✅ proved - incomplete|shostak|0.118|
|bound_circuits_list_def|✅ proved - incomplete|shostak|0.000|
|bound_circuits_iter_TCC1|✅ proved - incomplete|shostak|0.252|
|bound_circuits_iter_TCC2|✅ proved - incomplete|shostak|0.254|
|bound_circuits_iter_TCC3|✅ proved - incomplete|shostak|1.755|
|bound_circuits_iter_TCC4|✅ proved - incomplete|shostak|1.548|
|bound_circuits_iter_def_TCC1|✅ proved - incomplete|shostak|0.901|
|bound_circuits_iter_def_TCC2|✅ proved - incomplete|shostak|0.110|
|bound_circuits_iter_def_TCC3|✅ proved - incomplete|shostak|0.110|
|bound_circuits_iter_def_TCC4|✅ proved - incomplete|shostak|0.781|
|bound_circuits_iter_def|✅ proved - incomplete|shostak|3.697|
|bound_circuits_iter_stable|✅ proved - incomplete|shostak|0.000|
|bound_circuits_TCC1|✅ proved - incomplete|shostak|0.743|
|bound_circuits_TCC2|✅ proved - incomplete|shostak|0.000|
|bound_circuits_TCC3|✅ proved - incomplete|shostak|0.824|
|bound_circuits_TCC4|✅ proved - incomplete|shostak|0.000|
|bound_circuits_TCC5|✅ proved - incomplete|shostak|0.950|
|bound_circuits_TCC6|✅ proved - incomplete|shostak|1.584|
|bound_circuits_TCC7|✅ proved - incomplete|shostak|0.000|
|start_bounding_TCC1|✅ proved - incomplete|shostak|0.825|
|start_bounding_TCC2|✅ proved - incomplete|shostak|1.553|
|start_bounding_TCC3|✅ proved - incomplete|shostak|0.894|
|start_bounding_TCC4|✅ proved - incomplete|shostak|0.000|
|bounding_from_graph_lists_TCC1|✅ proved - incomplete|shostak|1.883|

## `bounding_circuits`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|bounding_from_gl_termination|✅ proved - incomplete|shostak|0.000|
|c_bounding_from_gl_termination|✅ proved - incomplete|shostak|1.343|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib/pvsio_utils/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230712-static-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230710-tcc-gen.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230707-defattach.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230706-extrategies.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`|
