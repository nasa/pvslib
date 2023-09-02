# Summary for `digraphs`
Run started at 16:8:15 9/1/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **793**   | **793**    | **793**    | **0**  | **14:29.858 s**   |
|top|0|0|0|0|0.000|
|digraphs_abs|9|9|9|0|2.159|
|digraphs_|16|16|16|0|3.351|
|digraphs_utils|0|0|0|0|0.000|
|walks_|63|63|63|0|24.395|
|paths_|16|16|16|0|4.576|
|dags_|2|2|2|0|0.889|
|circuits_|25|25|25|0|13.803|
|cycles_|14|14|14|0|6.682|
|weighted_digraphs_abs|2|2|2|0|0.493|
|weighted_digraphs_|33|33|33|0|13.542|
|di_subgraphs_|10|10|10|0|2.762|
|circuit_decomp_|79|79|79|0|5:59.464|
|digraph_def|1|1|1|0|0.213|
|digraphs_imp|1|1|1|0|0.314|
|digraphs|1|1|1|0|0.247|
|walks|1|1|1|0|0.257|
|circuits|1|1|1|0|0.260|
|cycles|1|1|1|0|0.254|
|di_subgraphs|1|1|1|0|0.270|
|circuit_decomp|1|1|1|0|0.253|
|weighted_digraphs_def|3|3|3|0|0.743|
|weighted_digraphs_imp|3|3|3|0|0.810|
|weighted_digraphs|3|3|3|0|0.741|
|digraph_deg|37|37|37|0|10.898|
|digraph_ops|21|21|21|0|5.600|
|paths|1|1|1|0|0.324|
|path_ops|6|6|6|0|1.688|
|sep_sets|11|11|11|0|4.125|
|walk_inductions|2|2|2|0|0.616|
|dags|1|1|1|0|0.342|
|di_subgraphs_from_walk|8|8|8|0|2.478|
|max_di_subgraphs|7|7|7|0|2.180|
|max_subtrees|6|6|6|0|1.910|
|trees|7|7|7|0|3.451|
|subtrees|7|7|7|0|3.629|
|digraph_conn_defs|2|2|2|0|0.586|
|min_walk_reduced|4|4|4|0|2.147|
|min_walks|4|4|4|0|1.849|
|reduce_walks|11|11|11|0|4.423|
|digraph_inductions|5|5|5|0|1.565|
|ind_paths|8|8|8|0|2.843|
|wgt_digraphs_props|19|19|19|0|1:40.017|
|Eulerian|14|14|14|0|4.780|
|digraphs_all_cycles|45|45|45|0|40.961|
|c_digraphs_digraphs|15|15|15|0|17.855|
|c_digraphs_def|59|59|59|0|30.428|
|c_digraph_all_cycles|100|100|100|0|1:16.372|
|c_cycles|1|1|1|0|0.381|
|c_digraphs_imp|1|1|1|0|1.668|
|c_digraphs|8|8|8|0|3.349|
|c_walks|1|1|1|0|0.351|
|c_paths|1|1|1|0|0.340|
|c_dags|1|1|1|0|0.394|
|c_circuits|1|1|1|0|0.391|
|c_di_subgraphs|1|1|1|0|0.390|
|c_weighted_digraphs_def|15|15|15|0|7.787|
|c_weighted_digraphs_imp|3|3|3|0|2.442|
|c_weighted_digraphs|3|3|3|0|1.164|
|c_circuit_decomp|1|1|1|0|0.400|
|c_topological_sort|70|70|70|0|1:33.256|
## Detailed Summary 
## `top`
No formula declaration found.
## `digraphs_abs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|correct_implementation__TCC1|✅ proved - complete|shostak|0.250|
|vert_is_finite|✅ proved - complete|shostak|0.250|
|edges_is_finite|✅ proved - complete|shostak|0.260|
|edges_in_verts|✅ proved - complete|shostak|0.409|
|make_ok|✅ proved - complete|shostak|0.198|
|make_ok_v|✅ proved - complete|shostak|0.200|
|make_ok_e|✅ proved - complete|shostak|0.202|
|size_def_TCC1|✅ proved - complete|shostak|0.190|
|size_def|✅ proved - complete|shostak|0.200|

## `digraphs_`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|empty_digraph_TCC1|✅ proved - complete|shostak|0.224|
|adjs_TCC1|✅ proved - complete|shostak|0.232|
|edges_vert|✅ proved - complete|shostak|0.202|
|other_vert|✅ proved - complete|shostak|0.210|
|edges_to_pair|✅ proved - complete|shostak|0.186|
|empty?_rew_TCC1|✅ proved - complete|shostak|0.190|
|empty?_rew|✅ proved - complete|shostak|0.180|
|empty_size|✅ proved - complete|shostak|0.201|
|edges_of_empty|✅ proved - complete|shostak|0.223|
|singleton_edges|✅ proved - complete|shostak|0.210|
|edge_in_card_gt_1_TCC1|✅ proved - complete|shostak|0.185|
|edge_in_card_gt_1|✅ proved - complete|shostak|0.313|
|not_singleton_2_vert|✅ proved - complete|shostak|0.212|
|proj_rew|✅ proved - complete|shostak|0.180|
|singleton_digraph_TCC1|✅ proved - complete|shostak|0.183|
|is_sing|✅ proved - complete|shostak|0.220|

## `digraphs_utils`
No formula declaration found.
## `walks_`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_digraphs__TCC1|✅ proved - complete|shostak|0.213|
|walk?_TCC1|✅ proved - complete|shostak|0.261|
|walk?_TCC2|✅ proved - complete|shostak|0.230|
|from?_TCC1|✅ proved - complete|shostak|0.181|
|from?_TCC2|✅ proved - complete|shostak|0.200|
|verts_of_TCC1|✅ proved - complete|shostak|0.223|
|edges_of_TCC1|✅ proved - complete|shostak|0.200|
|edges_of_TCC2|✅ proved - complete|shostak|0.179|
|edges_of_TCC3|✅ proved - complete|shostak|0.324|
|walk_from_l|✅ proved - complete|shostak|0.212|
|verts_in?_concat_TCC1|✅ proved - complete|shostak|0.230|
|verts_in?_concat|✅ proved - complete|shostak|0.275|
|verts_in?_caret_TCC1|✅ proved - complete|shostak|0.286|
|verts_in?_caret|✅ proved - complete|shostak|0.374|
|vert_seq_lem|✅ proved - complete|shostak|0.193|
|verts_of_subset|✅ proved - complete|shostak|0.214|
|edges_of_subset|✅ proved - complete|shostak|0.230|
|walk_verts_in|✅ proved - complete|shostak|0.175|
|walk_from_vert|✅ proved - complete|shostak|0.220|
|walk_edge_in|✅ proved - complete|shostak|0.277|
|prewalk_across_TCC1|✅ proved - complete|shostak|0.185|
|prewalk_across_TCC2|✅ proved - complete|shostak|0.180|
|prewalk_across_TCC3|✅ proved - complete|shostak|0.190|
|prewalk_across_TCC4|✅ proved - complete|shostak|0.197|
|prewalk_across|✅ proved - complete|shostak|0.304|
|trunc1_TCC1|✅ proved - complete|shostak|0.170|
|trunc1_TCC2|✅ proved - complete|shostak|0.243|
|add1_TCC1|✅ proved - complete|shostak|0.180|
|gen_seq1_is_walk|✅ proved - complete|shostak|0.184|
|edge_to_walk_TCC1|✅ proved - complete|shostak|0.200|
|edge_to_walk_TCC2|✅ proved - complete|shostak|0.205|
|edge_to_walk|✅ proved - complete|shostak|0.200|
|walk?_caret_TCC1|✅ proved - complete|shostak|0.338|
|walk?_caret|✅ proved - complete|shostak|0.383|
|l_trunc1_TCC1|✅ proved - complete|shostak|0.202|
|l_trunc1|✅ proved - complete|shostak|0.250|
|walk?_add1|✅ proved - complete|shostak|0.265|
|walk_concat_edge_TCC1|✅ proved - complete|shostak|0.233|
|walk_concat_edge|✅ proved - complete|shostak|0.435|
|walk_concat_TCC1|✅ proved - complete|shostak|0.283|
|walk_concat_TCC2|✅ proved - complete|shostak|0.314|
|walk_concat|✅ proved - complete|shostak|0.599|
|walk?_cut_TCC1|✅ proved - complete|shostak|0.220|
|walk?_cut_TCC2|✅ proved - complete|shostak|0.368|
|walk?_cut|✅ proved - complete|shostak|1.087|
|walk_merge|✅ proved - complete|shostak|0.269|
|reord_prewalk_TCC1|✅ proved - complete|shostak|0.180|
|reord_prewalk_TCC2|✅ proved - complete|shostak|0.200|
|reord_prewalk_TCC3|✅ proved - complete|shostak|0.373|
|eq_relation_eq_prewalk|✅ proved - complete|shostak|6.522|
|eq_prewalk_length|✅ proved - complete|shostak|0.374|
|subwalk_is_walk|✅ proved - complete|shostak|0.278|
|walk_o_TCC1|✅ proved - complete|shostak|0.200|
|walk_o_TCC2|✅ proved - complete|shostak|0.201|
|walk_o_TCC3|✅ proved - complete|shostak|0.359|
|walk_o|✅ proved - complete|shostak|0.744|
|edges_o_walk_TCC1|✅ proved - complete|shostak|0.200|
|edges_o_walk_TCC2|✅ proved - complete|shostak|0.219|
|edges_o_walk_TCC3|✅ proved - incomplete|shostak|0.353|
|edges_o_walk|✅ proved - incomplete|shostak|0.787|
|walk_o_edge_TCC1|✅ proved - complete|shostak|0.233|
|walk_o_edge|✅ proved - complete|shostak|0.257|
|reachable_is_transitive|✅ proved - complete|shostak|0.534|

## `paths_`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_walks__TCC1|✅ proved - complete|shostak|0.218|
|path?_verts|✅ proved - complete|shostak|0.282|
|path_from_l|✅ proved - complete|shostak|0.230|
|path_from_in|✅ proved - complete|shostak|0.210|
|path?_caret_TCC1|✅ proved - complete|shostak|0.342|
|path?_caret|✅ proved - complete|shostak|0.539|
|path_from?_caret_TCC1|✅ proved - complete|shostak|0.376|
|path_from?_caret_TCC2|✅ proved - complete|shostak|0.293|
|path_from?_caret|✅ proved - complete|shostak|0.313|
|path?_gen_seq2|✅ proved - complete|shostak|0.245|
|path?_add1_TCC1|✅ proved - complete|shostak|0.224|
|path?_add1|✅ proved - complete|shostak|0.315|
|path?_trunc1_TCC1|✅ proved - complete|shostak|0.240|
|path?_trunc1_TCC2|✅ proved - complete|shostak|0.224|
|path?_trunc1_TCC3|✅ proved - complete|shostak|0.230|
|path?_trunc1|✅ proved - complete|shostak|0.295|

## `dags_`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_paths__TCC1|✅ proved - complete|shostak|0.205|
|dag_no_self_loops|✅ proved - complete|shostak|0.684|

## `circuits_`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_walks__TCC1|✅ proved - complete|shostak|0.197|
|pre_circuit?_TCC1|✅ proved - complete|shostak|0.270|
|pre_circuit?_TCC2|✅ proved - complete|shostak|0.233|
|circuit_at?_TCC1|✅ proved - complete|shostak|0.210|
|eq_circuit?_TCC1|✅ proved - incomplete|shostak|0.349|
|eq_circuit?_TCC2|✅ proved - incomplete|shostak|0.348|
|eq_circuit_length|✅ proved - incomplete|shostak|0.281|
|eq_circuit_reflexive|✅ proved - incomplete|shostak|0.190|
|eq_circuit_symmetric|✅ proved - incomplete|shostak|0.222|
|loop_is_circuit|✅ proved - complete|shostak|0.204|
|equal_rest_equal_circuit|✅ proved - incomplete|shostak|0.607|
|equal_eq_circuit|✅ proved - incomplete|shostak|0.190|
|circuit_equal_fisrt_TCC1|✅ proved - incomplete|shostak|0.425|
|circuit_equal_fisrt_TCC2|✅ proved - incomplete|shostak|0.402|
|circuit_equal_fisrt_TCC3|✅ proved - incomplete|shostak|0.404|
|circuit_equal_fisrt|✅ proved - incomplete|shostak|0.369|
|comp_circuit_inter_TCC1|✅ proved - incomplete|shostak|0.313|
|comp_circuit_inter|✅ proved - incomplete|shostak|0.387|
|eq_circuit_position_TCC1|✅ proved - incomplete|shostak|0.417|
|eq_circuit_position|✅ proved - incomplete|shostak|2.916|
|eq_circuit_edges|✅ proved - incomplete|shostak|0.140|
|commuted_circuit_TCC1|✅ proved - complete|shostak|0.250|
|commuted_circuit_TCC2|✅ proved - complete|shostak|0.422|
|commuted_circuit|✅ proved - incomplete|shostak|1.257|
|commuted_circuit_is_eq|✅ proved - incomplete|shostak|2.800|

## `cycles_`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_circuits__TCC1|✅ proved - complete|shostak|0.230|
|cycle?_TCC1|✅ proved - complete|shostak|0.293|
|cycle?_TCC2|✅ proved - complete|shostak|0.260|
|cycle_at?_TCC1|✅ proved - complete|shostak|0.253|
|VCList_TCC1|✅ proved - complete|shostak|0.286|
|cycle_is_circuit|✅ proved - complete|shostak|0.230|
|circuit_subwalk_cycle_TCC1|✅ proved - complete|shostak|0.274|
|circuit_subwalk_cycle|✅ proved - complete|shostak|1.876|
|cycle_prefix_TCC1|✅ proved - complete|shostak|0.280|
|cycle_prefix|✅ proved - incomplete|shostak|1.048|
|cycle_o_circuit_TCC1|✅ proved - incomplete|shostak|0.418|
|cycle_o_circuit|✅ proved - incomplete|shostak|0.747|
|Pigeon_hole_TCC1|✅ proved - complete|shostak|0.220|
|Pigeon_hole|✅ proved - incomplete|shostak|0.267|

## `weighted_digraphs_abs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|correct_implementation_TCC1|✅ proved - complete|shostak|0.253|
|correct_implementation_TCC2|✅ proved - complete|shostak|0.240|

## `weighted_digraphs_`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_weighted_digraphs_abs_TCC1|✅ proved - complete|shostak|0.237|
|wgt_aux_TCC1|✅ proved - complete|shostak|0.308|
|wgt_aux_TCC2|✅ proved - complete|shostak|0.240|
|wgt_aux_TCC3|✅ proved - complete|shostak|0.299|
|wgt_walk_TCC1|✅ proved - complete|shostak|0.240|
|wgt_aux_shift_walk|✅ proved - complete|shostak|1.714|
|wgt_aux_first_TCC1|✅ proved - complete|shostak|0.267|
|wgt_aux_first_TCC2|✅ proved - complete|shostak|0.295|
|wgt_aux_first_TCC3|✅ proved - complete|shostak|0.310|
|wgt_aux_first|✅ proved - complete|shostak|0.477|
|wgt_aux_split_TCC1|✅ proved - complete|shostak|0.262|
|wgt_aux_split|✅ proved - complete|shostak|0.431|
|wgt_aux_sub_walk_TCC1|✅ proved - complete|shostak|0.335|
|wgt_aux_sub_walk_TCC2|✅ proved - complete|shostak|0.337|
|wgt_aux_sub_walk|✅ proved - complete|shostak|1.010|
|wgt_walk_to_aux|✅ proved - complete|shostak|0.372|
|wgt_walk_decomposed_TCC1|✅ proved - complete|shostak|0.300|
|wgt_walk_decomposed_TCC2|✅ proved - complete|shostak|0.251|
|wgt_walk_decomposed_TCC3|✅ proved - complete|shostak|0.316|
|wgt_walk_decomposed|✅ proved - complete|shostak|0.497|
|wgt_walk_edge_TCC1|✅ proved - complete|shostak|0.240|
|wgt_walk_edge_TCC2|✅ proved - complete|shostak|0.270|
|wgt_walk_edge_TCC3|✅ proved - complete|shostak|0.303|
|wgt_walk_edge|✅ proved - complete|shostak|0.270|
|wgt_comp_rest_TCC1|✅ proved - complete|shostak|0.244|
|wgt_comp_rest_TCC2|✅ proved - complete|shostak|0.260|
|wgt_comp_rest_TCC3|✅ proved - incomplete|shostak|0.324|
|wgt_comp_rest|✅ proved - incomplete|shostak|0.000|
|wgt_comp_TCC1|✅ proved - incomplete|shostak|0.449|
|wgt_comp_TCC2|✅ proved - incomplete|shostak|0.290|
|wgt_comp_TCC3|✅ proved - incomplete|shostak|0.333|
|wgt_comp_TCC4|✅ proved - incomplete|shostak|0.310|
|wgt_comp|✅ proved - incomplete|shostak|1.751|

## `di_subgraphs_`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_digraphs__TCC1|✅ proved - complete|shostak|0.240|
|finite_vert_subset|✅ proved - complete|shostak|0.310|
|finite_edge_subset|✅ proved - complete|shostak|0.267|
|di_subgraph_TCC1|✅ proved - complete|shostak|0.230|
|di_subgraph_TCC2|✅ proved - complete|shostak|0.234|
|di_subgraph_TCC3|✅ proved - complete|shostak|0.349|
|di_subgraph_vert_sub|✅ proved - complete|shostak|0.249|
|di_subgraph_lem|✅ proved - complete|shostak|0.205|
|di_subgraph_smaller|✅ proved - complete|shostak|0.210|
|di_subgraph_vert|✅ proved - incomplete|shostak|0.468|

## `circuit_decomp_`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_cycles__TCC1|✅ proved - complete|shostak|0.250|
|vert_circ_TCC1|✅ proved - complete|shostak|0.273|
|walk_decomp_TCC1|✅ proved - complete|shostak|1.684|
|drop_circuits_TCC1|✅ proved - complete|shostak|13.712|
|cdr_decomp_TCC1|✅ proved - complete|shostak|0.263|
|cdr_decomp_TCC2|✅ proved - complete|shostak|2.635|
|cdr_decomp|✅ proved - complete|shostak|2.606|
|decomp_to_walk_TCC1|✅ proved - complete|shostak|0.240|
|decomp_to_walk_TCC2|✅ proved - complete|shostak|0.345|
|decomp_to_walk_TCC3|✅ proved - complete|shostak|0.222|
|decomp_to_walk_TCC4|✅ proved - complete|shostak|0.280|
|decomp_to_walk_TCC5|✅ proved - incomplete|shostak|3.616|
|decomp_to_walk_TCC6|✅ proved - complete|shostak|0.271|
|decomp_to_walk_TCC7|✅ proved - complete|shostak|0.291|
|decomp_to_walk_TCC8|✅ proved - complete|shostak|0.318|
|decomp_to_walk_TCC9|✅ proved - incomplete|shostak|7.058|
|decomp_to_walk_length_TCC1|✅ proved - incomplete|shostak|0.270|
|decomp_to_walk_length_TCC2|✅ proved - incomplete|shostak|0.831|
|decomp_to_walk_rw|✅ proved - incomplete|shostak|0.378|
|decomp_to_walk_length_bnd|✅ proved - incomplete|shostak|0.000|
|caret_decomp_TCC1|✅ proved - incomplete|shostak|2.514|
|caret_decomp|✅ proved - incomplete|shostak|8.485|
|walk_index_TCC1|✅ proved - incomplete|shostak|0.308|
|walk_index_TCC2|✅ proved - complete|shostak|0.270|
|walk_index_TCC3|✅ proved - incomplete|shostak|0.298|
|walk_index_TCC4|✅ proved - complete|shostak|0.269|
|walk_index_TCC5|✅ proved - complete|shostak|0.341|
|walk_index_TCC6|✅ proved - complete|shostak|0.293|
|walk_index_TCC7|✅ proved - complete|shostak|0.261|
|walk_index_TCC8|✅ proved - incomplete|shostak|5.853|
|walk_index_ub|✅ proved - incomplete|shostak|0.000|
|walk_index_incr|✅ proved - incomplete|shostak|1.364|
|walk_index_sincr|✅ proved - incomplete|shostak|1.647|
|walk_index_last_TCC1|✅ proved - complete|shostak|0.264|
|walk_index_last_TCC2|✅ proved - complete|shostak|0.260|
|walk_index_last_TCC3|✅ proved - complete|shostak|0.270|
|walk_index_last|✅ proved - incomplete|shostak|1.852|
|walk_index_bound_TCC1|✅ proved - complete|shostak|0.385|
|walk_index_bound|✅ proved - incomplete|shostak|1.396|
|walk_index_pos|✅ proved - incomplete|shostak|0.417|
|decomp_walk_index_TCC1|✅ proved - incomplete|shostak|0.625|
|decomp_walk_index|✅ proved - incomplete|shostak|3.418|
|caret_commute_TCC1|✅ proved - incomplete|shostak|0.210|
|caret_commute_TCC2|✅ proved - incomplete|shostak|0.215|
|caret_commute_TCC3|✅ proved - incomplete|shostak|0.210|
|caret_commute|✅ proved - incomplete|shostak|21.947|
|append_decomp_TCC1|✅ proved - complete|shostak|0.276|
|append_decomp_TCC2|✅ proved - complete|shostak|0.270|
|append_decomp_TCC3|✅ proved - complete|shostak|0.582|
|append_decomp|✅ proved - incomplete|shostak|3.937|
|append_commute_TCC1|✅ proved - incomplete|shostak|0.220|
|append_commute|✅ proved - incomplete|shostak|5.186|
|circuit_vertex_TCC1|✅ proved - complete|shostak|0.741|
|circuit_vertex|✅ proved - complete|shostak|1.418|
|circuit_first_last_TCC1|✅ proved - complete|shostak|0.441|
|circuit_first_last|✅ proved - complete|shostak|1.735|
|shrink_repeat|✅ proved - incomplete|shostak|3:16.314|
|circuit_decomp_prep|✅ proved - incomplete|shostak|0.000|
|vert2vc_TCC1|✅ proved - complete|shostak|0.272|
|vert2vc_TCC2|✅ proved - complete|shostak|0.276|
|trivial_decomp_TCC1|✅ proved - complete|shostak|0.241|
|trivial_decomp_TCC2|✅ proved - complete|shostak|0.260|
|trivial_decomp_TCC3|✅ proved - incomplete|shostak|1.840|
|trivial_decomp_TCC4|✅ proved - complete|shostak|0.240|
|trivial_decomp_TCC5|✅ proved - complete|shostak|0.259|
|trivial_decomp_TCC6|✅ proved - complete|shostak|0.226|
|trivial_decomp_TCC7|✅ proved - complete|shostak|0.328|
|trivial_decomp_TCC8|✅ proved - complete|shostak|0.354|
|trivial_decomp_TCC9|✅ proved - incomplete|shostak|7.457|
|trivial_decomp_idemp|✅ proved - incomplete|shostak|0.474|
|trivial_decomp_length|✅ proved - incomplete|shostak|3.308|
|trivial_decomp_circuit_length_TCC1|✅ proved - incomplete|shostak|0.000|
|trivial_decomp_circuit_length|✅ proved - incomplete|shostak|1.529|
|trunk_decomp_TCC1|✅ proved - complete|shostak|0.379|
|trunk_decomp_TCC2|✅ proved - incomplete|shostak|0.670|
|trunk_decomp|✅ proved - incomplete|shostak|2.356|
|trunc_decomp_def_TCC1|✅ proved - incomplete|shostak|0.210|
|trunc_decomp_def|✅ proved - incomplete|shostak|2.491|
|circuit_decomposition|✅ proved - incomplete|shostak|36.259|

## `digraph_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|make_TCC1|✅ proved - complete|shostak|0.213|

## `digraphs_imp`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|digraphs_implement_digraphs_|✅ proved - complete|shostak|0.314|

## `digraphs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_digraphs__TCC1|✅ proved - complete|shostak|0.247|

## `walks`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_walks__TCC1|✅ proved - complete|shostak|0.257|

## `circuits`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_circuits__TCC1|✅ proved - complete|shostak|0.260|

## `cycles`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_cycles__TCC1|✅ proved - complete|shostak|0.254|

## `di_subgraphs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_di_subgraphs__TCC1|✅ proved - complete|shostak|0.270|

## `circuit_decomp`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_circuit_decomp__TCC1|✅ proved - complete|shostak|0.253|

## `weighted_digraphs_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|wgd_wgt_TCC1|✅ proved - complete|shostak|0.260|
|map_val_TCC1|✅ proved - complete|shostak|0.230|
|make_wdg_TCC1|✅ proved - complete|shostak|0.253|

## `weighted_digraphs_imp`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_weighted_digraphs_abs_TCC1|✅ proved - complete|shostak|0.270|
|IMP_weighted_digraphs_abs_TCC2|✅ proved - complete|shostak|0.223|
|wdigraphs_implement_wdigraphs_|✅ proved - complete|shostak|0.317|

## `weighted_digraphs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_weighted_digraphs__TCC1|✅ proved - complete|shostak|0.281|
|IMP_weighted_digraphs__TCC2|✅ proved - complete|shostak|0.230|
|IMP_weighted_digraphs__TCC3|✅ proved - complete|shostak|0.230|

## `digraph_deg`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|incoming_edges_TCC1|✅ proved - complete|shostak|0.339|
|outgoing_edges_TCC1|✅ proved - complete|shostak|0.271|
|incident_edges_TCC1|✅ proved - complete|shostak|0.260|
|incoming_edges_subset|✅ proved - complete|shostak|0.245|
|outgoing_edges_subset|✅ proved - complete|shostak|0.252|
|incident_edges_subset|✅ proved - complete|shostak|0.240|
|incoming_edges_emptyset|✅ proved - complete|shostak|0.243|
|outgoing_edges_emptyset|✅ proved - complete|shostak|0.252|
|incident_edges_emptyset|✅ proved - complete|shostak|0.240|
|deg_del_edge_incoming|✅ proved - complete|shostak|0.368|
|deg_del_edge_outgoing|✅ proved - complete|shostak|0.352|
|deg_del_non_edge|✅ proved - complete|shostak|0.361|
|deg_del_non_edge_incoming|✅ proved - complete|shostak|0.272|
|deg_del_non_edge_outgoing|✅ proved - complete|shostak|0.272|
|deg_del_edge|✅ proved - complete|shostak|0.324|
|deg_del_self_loop|✅ proved - complete|shostak|0.304|
|deg_del_edge_ge_incoming|✅ proved - complete|shostak|0.256|
|deg_del_edge_ge_outgoing|✅ proved - complete|shostak|0.273|
|deg_del_edge_ge|✅ proved - complete|shostak|0.293|
|deg_del_edge_le_incoming|✅ proved - complete|shostak|0.270|
|deg_del_edge_le_outgoing|✅ proved - complete|shostak|0.265|
|deg_del_edge_le|✅ proved - complete|shostak|0.314|
|in_deg_edge_exists|✅ proved - complete|shostak|0.254|
|out_deg_edge_exists|✅ proved - complete|shostak|0.253|
|deg_edge_exists|✅ proved - complete|shostak|0.303|
|deg_to_card|✅ proved - complete|shostak|0.363|
|del_vert_deg_0|✅ proved - complete|shostak|0.342|
|singleton_loops|✅ proved - complete|shostak|0.271|
|singleton_edges|✅ proved - complete|shostak|0.281|
|singleton_deg|✅ proved - complete|shostak|0.262|
|in_deg_1_sing|✅ proved - complete|shostak|0.280|
|out_deg_1_sing|✅ proved - complete|shostak|0.283|
|deg_1_sing|✅ proved - complete|shostak|0.574|
|deg_1_in_out|✅ proved - complete|shostak|0.310|
|deg_1_edge|✅ proved - complete|shostak|0.338|
|in_deg_pos|✅ proved - complete|shostak|0.265|
|out_deg_pos|✅ proved - complete|shostak|0.253|

## `digraph_ops`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|union_TCC1|✅ proved - complete|shostak|0.334|
|del_vert_TCC1|✅ proved - complete|shostak|0.272|
|del_vert_TCC2|✅ proved - complete|shostak|0.271|
|del_edge_TCC1|✅ proved - complete|shostak|0.240|
|del_vert_still_in|✅ proved - complete|shostak|0.244|
|size_del_vert|✅ proved - complete|shostak|0.276|
|del_vert_le|✅ proved - complete|shostak|0.260|
|del_vert_ge|✅ proved - complete|shostak|0.274|
|edge_in_del_vert|✅ proved - complete|shostak|0.243|
|edges_del_vert|✅ proved - complete|shostak|0.240|
|del_vert_comm|✅ proved - complete|shostak|0.303|
|del_vert_empty?|✅ proved - complete|shostak|0.273|
|del_edge_lem|✅ proved - complete|shostak|0.242|
|del_edge_lem2|✅ proved - complete|shostak|0.260|
|del_edge_lem3|✅ proved - complete|shostak|0.244|
|del_edge_lem5|✅ proved - complete|shostak|0.253|
|vert_del_edge|✅ proved - complete|shostak|0.240|
|del_edge_num|✅ proved - complete|shostak|0.292|
|del_edge_singleton|✅ proved - complete|shostak|0.254|
|del_vert_edge_comm|✅ proved - complete|shostak|0.293|
|del_vert_edge|✅ proved - complete|shostak|0.292|

## `paths`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_paths__TCC1|✅ proved - complete|shostak|0.324|

## `path_ops`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|walk?_del_vert|✅ proved - complete|shostak|0.453|
|walk?_del_vert_not|✅ proved - complete|shostak|0.354|
|path?_del_vert|✅ proved - complete|shostak|0.270|
|path?_del_verts|✅ proved - complete|shostak|0.346|
|walk_to_path|✅ proved - complete|shostak|0.000|
|walk_to_path_from|✅ proved - complete|shostak|0.265|

## `sep_sets`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|del_verts_TCC1|✅ proved - complete|shostak|0.364|
|del_verts_TCC2|✅ proved - complete|shostak|0.262|
|sep_set_exists|✅ proved - complete|shostak|0.705|
|min_sep_set_TCC1|✅ proved - complete|shostak|0.254|
|min_sep_set_edge|✅ proved - incomplete|shostak|0.318|
|min_sep_set_card|✅ proved - incomplete|shostak|0.462|
|min_sep_set_seps|✅ proved - incomplete|shostak|0.311|
|min_sep_set_vert|✅ proved - incomplete|shostak|0.532|
|ends_not_in_min_sep_set|✅ proved - incomplete|shostak|0.232|
|walk?_del_verts_not|✅ proved - complete|shostak|0.373|
|adj_verts_TCC1|✅ proved - complete|shostak|0.312|

## `walk_inductions`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|walk_prep|✅ proved - complete|shostak|0.344|
|digraph_induction_walk|✅ proved - complete|shostak|0.272|

## `dags`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_dags__TCC1|✅ proved - complete|shostak|0.342|

## `di_subgraphs_from_walk`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|G_from_TCC1|✅ proved - complete|shostak|0.478|
|G_from_vert|✅ proved - complete|shostak|0.260|
|vert_G_from|✅ proved - complete|shostak|0.268|
|edge?_G_from_TCC1|✅ proved - complete|shostak|0.250|
|edge?_G_from_TCC2|✅ proved - complete|shostak|0.292|
|edge?_G_from|✅ proved - complete|shostak|0.313|
|vert_G_from_not|✅ proved - complete|shostak|0.281|
|del_vert_di_subgraph|✅ proved - complete|shostak|0.336|

## `max_di_subgraphs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|prep0|✅ proved - complete|shostak|0.361|
|max_size_TCC1|✅ proved - complete|shostak|0.261|
|prep|✅ proved - incomplete|shostak|0.319|
|max_di_subgraph_TCC1|✅ proved - incomplete|shostak|0.425|
|max_di_subgraph_def|✅ proved - incomplete|shostak|0.270|
|max_di_subgraph_in|✅ proved - incomplete|shostak|0.264|
|max_di_subgraph_is_max|✅ proved - incomplete|shostak|0.280|

## `max_subtrees`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sing_is_tree|✅ proved - complete|shostak|0.405|
|tree_in|✅ proved - complete|shostak|0.379|
|max_subtree_TCC1|✅ proved - complete|shostak|0.273|
|max_subtree_tree|✅ proved - incomplete|shostak|0.292|
|max_subtree_di_subgraph|✅ proved - incomplete|shostak|0.260|
|max_subtree_max|✅ proved - incomplete|shostak|0.301|

## `trees`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|tree?_TCC1|✅ proved - complete|shostak|0.370|
|tree_nonempty|✅ proved - complete|shostak|0.321|
|tree_size_pos|✅ proved - complete|shostak|0.292|
|tree_no_self_loops|✅ proved - complete|shostak|0.463|
|root_unique|✅ proved - complete|shostak|1.112|
|root_TCC1|✅ proved - complete|shostak|0.276|
|tree_in_deg_max|✅ proved - complete|shostak|0.617|

## `subtrees`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|walk_acr_TCC1|✅ proved - complete|shostak|0.395|
|walk_acr_TCC2|✅ proved - complete|shostak|0.344|
|walk_acr_TCC3|✅ proved - complete|shostak|0.350|
|walk_acr|✅ proved - complete|shostak|0.427|
|walk_acr2|✅ proved - complete|shostak|0.433|
|add_pair|✅ proved - complete|shostak|0.290|
|max_tree_all_verts|✅ proved - incomplete|shostak|1.390|

## `digraph_conn_defs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|connected?_TCC1|✅ proved - complete|shostak|0.306|
|connected?_TCC2|✅ proved - complete|shostak|0.280|

## `min_walk_reduced`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|reduced?_TCC1|✅ proved - complete|shostak|0.370|
|reduced?_TCC2|✅ proved - complete|shostak|0.298|
|min_walk_vert|✅ proved - incomplete|shostak|0.344|
|min_walk_is_reduced|✅ proved - incomplete|shostak|1.135|

## `min_walks`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|min_walk_from_TCC1|✅ proved - complete|shostak|0.366|
|min_walk_def|✅ proved - incomplete|shostak|0.895|
|min_walk_in|✅ proved - incomplete|shostak|0.288|
|min_walk_is_min|✅ proved - incomplete|shostak|0.300|

## `reduce_walks`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|reduce_TCC1|✅ proved - complete|shostak|0.394|
|reduce_TCC2|✅ proved - complete|shostak|0.318|
|reduce_TCC3|✅ proved - complete|shostak|0.310|
|reduce_TCC4|✅ proved - complete|shostak|0.323|
|reduce_TCC5|✅ proved - complete|shostak|0.355|
|reduce_TCC6|✅ proved - complete|shostak|0.000|
|reduce_lem_TCC1|✅ proved - complete|shostak|0.390|
|reduce_lem_TCC2|✅ proved - complete|shostak|0.335|
|reduce_lem_TCC3|✅ proved - complete|shostak|0.310|
|reduce_lem_TCC4|✅ proved - complete|shostak|0.325|
|reduce_lem|✅ proved - complete|shostak|1.363|

## `digraph_inductions`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|size_prep|✅ proved - complete|shostak|0.368|
|digraph_induction_vert|✅ proved - complete|shostak|0.298|
|digraph_induction_vert_not|✅ proved - complete|shostak|0.303|
|num_edges_prep|✅ proved - complete|shostak|0.292|
|digraph_induction_edge|✅ proved - complete|shostak|0.304|

## `ind_paths`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|independent?_TCC1|✅ proved - complete|shostak|0.409|
|independent?_TCC2|✅ proved - complete|shostak|0.343|
|independent?_comm|✅ proved - complete|shostak|0.311|
|independent_ne|✅ proved - complete|shostak|0.300|
|ind_path_set_2|✅ proved - complete|shostak|0.405|
|internal_verts_TCC1|✅ proved - complete|shostak|0.320|
|internal_verts_TCC2|✅ proved - complete|shostak|0.393|
|indep?_lem|✅ proved - complete|shostak|0.362|

## `wgt_digraphs_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|min_walk?_TCC1|✅ proved - complete|shostak|0.365|
|min_walk?_TCC2|✅ proved - complete|shostak|0.301|
|min_walk?_TCC3|✅ proved - complete|shostak|0.330|
|min_wgt_TCC1|✅ proved - complete|shostak|0.354|
|min_wgt_TCC2|✅ proved - complete|shostak|0.310|
|min_wgt_TCC3|✅ proved - complete|shostak|0.327|
|walk_member_set_min_TCC1|✅ proved - complete|shostak|0.325|
|walk_member_set_min|✅ proved - complete|shostak|0.432|
|wgt_min_walk_choose_TCC1|✅ proved - complete|shostak|0.370|
|wgt_min_walk_choose_TCC2|✅ proved - complete|shostak|0.366|
|wgt_min_walk_choose_TCC3|✅ proved - complete|shostak|0.563|
|wgt_min_walk_choose_TCC4|✅ proved - complete|shostak|0.312|
|wgt_min_walk_choose|✅ proved - complete|shostak|0.565|
|min_walk_min_wgt|✅ proved - complete|shostak|0.302|
|sub_min_walk_nonempty_TCC1|✅ proved - complete|shostak|0.334|
|sub_min_walk_nonempty|✅ proved - complete|shostak|42.823|
|sub_min_walk_is_min_TCC1|✅ proved - complete|shostak|0.401|
|sub_min_walk_is_min_TCC2|✅ proved - complete|shostak|0.311|
|sub_min_walk_is_min|✅ proved - complete|shostak|50.926|

## `Eulerian`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|no_repeat_subseq?_TCC1|✅ proved - complete|shostak|0.350|
|no_repeat_subseq?_TCC2|✅ proved - complete|shostak|0.308|
|no_repeat_subseq?_TCC3|✅ proved - complete|shostak|0.310|
|no_repeat_subseq?_TCC4|✅ proved - complete|shostak|0.317|
|cycle_is_pre_Eulerian_circuit|✅ proved - complete|shostak|0.382|
|pre_Eulerian_circuit_is_a_circuit|✅ proved - complete|shostak|0.323|
|Eulerian_circuit_is_circuit|✅ proved - complete|shostak|0.323|
|Eulerian_walk_is_Eulerian_circuit|✅ proved - complete|shostak|0.313|
|circuit_subwalk_pre_Eulerian_TCC1|✅ proved - complete|shostak|0.362|
|circuit_subwalk_pre_Eulerian|✅ proved - complete|shostak|0.313|
|pre_Eulerian_circuit_prefix_TCC1|✅ proved - complete|shostak|0.343|
|pre_Eulerian_circuit_prefix|✅ proved - incomplete|shostak|0.322|
|pre_Eulerian_circuit_o_circuit_TCC1|✅ proved - incomplete|shostak|0.493|
|pre_Eulerian_circuit_o_circuit|✅ proved - incomplete|shostak|0.321|

## `digraphs_all_cycles`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|vertsl?_is_vertlist|✅ proved - incomplete|shostak|0.503|
|walk_eq_TCC1|✅ proved - incomplete|shostak|0.504|
|walk_eq_TCC2|✅ proved - incomplete|shostak|1.837|
|walki2walk_TCC1|✅ proved - incomplete|shostak|0.406|
|walki2walk_TCC2|✅ proved - incomplete|shostak|1.102|
|walki2walk_TCC3|✅ proved - incomplete|shostak|0.861|
|walk2walki_rec_TCC1|✅ proved - incomplete|shostak|0.584|
|walk2walki_rec_TCC2|✅ proved - incomplete|shostak|7.591|
|walk2walki_rec_TCC3|✅ proved - incomplete|shostak|0.398|
|walk2walki_rec_TCC4|✅ proved - incomplete|shostak|0.357|
|walk2walki_rec_TCC5|✅ proved - incomplete|shostak|0.419|
|walk2walki_rec_TCC6|✅ proved - incomplete|shostak|0.563|
|walk2walki_rec_TCC7|✅ proved - incomplete|shostak|0.402|
|walk2walki_rec_TCC8|✅ proved - incomplete|shostak|2.265|
|walk2walki_TCC1|✅ proved - incomplete|shostak|0.390|
|walk2walki_TCC2|✅ proved - incomplete|shostak|0.420|
|w2wi_circuit|✅ proved - incomplete|shostak|0.584|
|w2wi_cycle_TCC1|✅ proved - incomplete|shostak|0.352|
|w2wi_cycle|✅ proved - incomplete|shostak|0.865|
|circuit_walk_eq|✅ proved - incomplete|shostak|0.597|
|cycle_walk_eq|✅ proved - incomplete|shostak|2.497|
|walk_eq_inj_1|✅ proved - incomplete|shostak|0.360|
|cyclesi2cycles_TCC1|✅ proved - incomplete|shostak|0.359|
|cyclesi2cycles_TCC2|✅ proved - incomplete|shostak|0.496|
|cyclesi2cycles_TCC3|✅ proved - incomplete|shostak|0.871|
|cyclesi2cycles_TCC4|✅ proved - incomplete|shostak|0.400|
|cyclesi2cycles_TCC5|✅ proved - incomplete|shostak|0.749|
|cyclesi2cycles_TCC6|✅ proved - incomplete|shostak|0.461|
|cyclesi2cycles_TCC7|✅ proved - incomplete|shostak|0.000|
|cac2dac_rec_TCC1|✅ proved - incomplete|shostak|0.644|
|cac2dac_rec_TCC2|✅ proved - incomplete|shostak|0.470|
|cac2dac_rec_TCC3|✅ proved - incomplete|shostak|0.679|
|cac2dac_rec_TCC4|✅ proved - incomplete|shostak|0.541|
|cac2dac_rec_TCC5|✅ proved - incomplete|shostak|0.417|
|cac2dac_rec_TCC6|✅ proved - incomplete|shostak|0.708|
|cac2dac_rec_TCC7|✅ proved - incomplete|shostak|0.651|
|cac2dac_rec_TCC8|✅ proved - incomplete|shostak|2.145|
|cac2dac_rec_TCC9|✅ proved - incomplete|shostak|0.685|
|cac2dac_rec_TCC10|✅ proved - incomplete|shostak|0.831|
|cac2dac_rec_TCC11|✅ proved - incomplete|shostak|2.547|
|cac2dac_TCC1|✅ proved - incomplete|shostak|0.594|
|cac2dac_TCC2|✅ proved - incomplete|shostak|0.593|
|cac2dac_TCC3|✅ proved - incomplete|shostak|0.440|
|cac2dac_TCC4|✅ proved - incomplete|shostak|1.518|
|digraph_all_cycles_TCC1|✅ proved - incomplete|shostak|0.305|

## `c_digraphs_digraphs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|eq_TCC1|✅ proved - incomplete|shostak|0.531|
|to_digraph_TCC1|✅ proved - complete|shostak|0.376|
|to_digraph_TCC2|✅ proved - complete|shostak|0.381|
|to_digraph_TCC3|✅ proved - complete|shostak|0.467|
|to_digraph_TCC4|✅ proved - incomplete|shostak|3.508|
|to_digraph_TCC5|✅ proved - complete|shostak|0.408|
|to_digraph_TCC6|✅ proved - complete|shostak|1.029|
|to_digraph_TCC7|✅ proved - incomplete|shostak|0.000|
|no_rep_vertsl|✅ proved - incomplete|shostak|0.382|
|vertsl_TCC1|✅ proved - incomplete|shostak|0.377|
|to_cdigraph_vl_TCC1|✅ proved - incomplete|shostak|0.328|
|to_cdigraph_vl_TCC2|✅ proved - incomplete|shostak|1.554|
|eq_digraph|✅ proved - incomplete|shostak|2.310|
|eq_cdigraph|✅ proved - incomplete|shostak|5.831|
|eq_same_size|✅ proved - incomplete|shostak|0.373|

## `c_digraphs_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|loi_append|✅ proved - incomplete|shostak|0.444|
|loi_permutation|✅ proved - incomplete|shostak|0.425|
|sem_eq_TCC1|✅ proved - incomplete|shostak|0.447|
|sem_eq_TCC2|✅ proved - incomplete|shostak|0.371|
|sem_eq_TCC3|✅ proved - incomplete|shostak|0.485|
|sem_eq_TCC4|✅ proved - incomplete|shostak|0.471|
|sem_eq_TCC5|✅ proved - incomplete|shostak|1.557|
|node_TCC1|✅ proved - complete|shostak|0.354|
|node_TCC2|✅ proved - incomplete|shostak|0.330|
|vert_finite|✅ proved - incomplete|shostak|0.408|
|edges_TCC1|✅ proved - complete|shostak|0.310|
|edges_TCC2|✅ proved - complete|shostak|0.301|
|edges_TCC3|✅ proved - incomplete|shostak|0.420|
|edges_finite|✅ proved - incomplete|shostak|0.654|
|edges_list_vert_adjs_TCC1|✅ proved - complete|shostak|0.344|
|edges_list_vert_adjs_TCC2|✅ proved - incomplete|shostak|0.413|
|edges_list_vert_adjs_TCC3|✅ proved - complete|shostak|0.312|
|edges_list_vert_adjs_TCC4|✅ proved - incomplete|shostak|0.543|
|edges_list_vert_adjs_TCC5|✅ proved - incomplete|shostak|0.421|
|edges_list_vert_adjs_TCC6|✅ proved - incomplete|shostak|0.451|
|edges_list_vert_adjs_TCC7|✅ proved - incomplete|shostak|0.351|
|edges_list_vert_adjs_TCC8|✅ proved - incomplete|shostak|0.503|
|edges_list_vert_adjs_TCC9|✅ proved - incomplete|shostak|0.896|
|edges_list_vert_TCC1|✅ proved - incomplete|shostak|0.330|
|edges_list_vert_TCC2|✅ proved - incomplete|shostak|0.443|
|edges_list_verts_TCC1|✅ proved - incomplete|shostak|0.000|
|edges_list_verts_TCC2|✅ proved - incomplete|shostak|0.391|
|edges_list_verts_TCC3|✅ proved - complete|shostak|0.459|
|edges_list_verts_TCC4|✅ proved - incomplete|shostak|0.699|
|edges_list_TCC1|✅ proved - incomplete|shostak|0.270|
|edges_list_TCC2|✅ proved - incomplete|shostak|0.307|
|edges_list_TCC3|✅ proved - incomplete|shostak|0.863|
|edges_set_to_list_for_TCC1|✅ proved - incomplete|shostak|0.694|
|edges_set_to_list_for_TCC2|✅ proved - complete|shostak|0.349|
|edges_set_to_list_for_TCC3|✅ proved - complete|shostak|1.516|
|edges_set_to_list_for_TCC4|✅ proved - complete|shostak|0.339|
|edges_set_to_list_for_TCC5|✅ proved - incomplete|shostak|1.004|
|edges_set_to_list_for_TCC6|✅ proved - complete|shostak|0.386|
|edges_set_to_list_for_TCC7|✅ proved - complete|shostak|0.375|
|edges_set_to_list_for_TCC8|✅ proved - incomplete|shostak|0.626|
|edges_set_to_list_for_TCC9|✅ proved - complete|shostak|0.327|
|edges_set_to_list_rec_TCC1|✅ proved - incomplete|shostak|0.340|
|edges_set_to_list_rec_TCC2|✅ proved - incomplete|shostak|0.373|
|edges_set_to_list_rec_TCC3|✅ proved - incomplete|shostak|0.635|
|edges_set_to_list_rec_TCC4|✅ proved - incomplete|shostak|0.344|
|edges_set_to_list_rec_TCC5|✅ proved - incomplete|shostak|0.324|
|edges_set_to_list_rec_TCC6|✅ proved - incomplete|shostak|0.324|
|edges_set_to_list_rec_TCC7|✅ proved - incomplete|shostak|0.414|
|edges_set_to_list_rec_TCC8|✅ proved - incomplete|shostak|1.666|
|edges_set_to_list_TCC1|✅ proved - complete|shostak|0.336|
|edges_set_to_list_TCC2|✅ proved - incomplete|shostak|0.307|
|edges_set_to_list_TCC3|✅ proved - incomplete|shostak|0.557|
|make_TCC1|✅ proved - incomplete|shostak|0.428|
|make_TCC2|✅ proved - incomplete|shostak|1.376|
|empty_cd_TCC1|✅ proved - complete|shostak|0.435|
|add_vert_TCC1|✅ proved - incomplete|shostak|1.172|
|add_edge_TCC1|✅ proved - incomplete|shostak|0.379|
|add_edge_TCC2|✅ proved - incomplete|shostak|0.429|
|add_edge_TCC3|✅ proved - incomplete|shostak|0.000|

## `c_digraph_all_cycles`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|loi_cons|✅ proved - complete|shostak|0.499|
|walk?_TCC1|✅ proved - complete|shostak|0.307|
|walk?_TCC2|✅ proved - complete|shostak|0.320|
|walk?_TCC3|✅ proved - complete|shostak|1.403|
|walk_eq_TCC1|✅ proved - incomplete|shostak|0.780|
|walk_eq_TCC2|✅ proved - incomplete|shostak|4.071|
|walk_append_TCC1|✅ proved - complete|shostak|0.415|
|walk_append_TCC2|✅ proved - incomplete|shostak|1.559|
|walk_append_TCC3|✅ proved - incomplete|shostak|0.345|
|walk_append|✅ proved - incomplete|shostak|2.638|
|walk_eq_inj_1|✅ proved - incomplete|shostak|0.402|
|circuit?_TCC1|✅ proved - complete|shostak|0.380|
|circuit?_TCC2|✅ proved - complete|shostak|0.375|
|no_repetitions_append|✅ proved - incomplete|shostak|1.890|
|no_repetitions_prefix|✅ proved - incomplete|shostak|0.555|
|norep_loi_length|✅ proved - incomplete|shostak|0.678|
|cycle?_TCC1|✅ proved - incomplete|shostak|0.446|
|cycle_prefix|✅ proved - incomplete|shostak|0.923|
|cycle_construction_loi|✅ proved - incomplete|shostak|0.437|
|cycle_construction_TCC1|✅ proved - incomplete|shostak|0.317|
|cycle_construction_TCC2|✅ proved - incomplete|shostak|0.388|
|cycle_construction_TCC3|✅ proved - incomplete|shostak|0.391|
|cycle_construction_TCC4|✅ proved - incomplete|shostak|0.000|
|cycle_construction|✅ proved - incomplete|shostak|1.049|
|circuit_walk_eq|✅ proved - incomplete|shostak|1.619|
|cycle_walk_eq|✅ proved - incomplete|shostak|2.864|
|cycle_construction_size_TCC1|✅ proved - incomplete|shostak|0.319|
|cycle_construction_size_TCC2|✅ proved - complete|shostak|0.539|
|cycle_construction_size|✅ proved - incomplete|shostak|0.486|
|cycle_construction_grow_TCC1|✅ proved - incomplete|shostak|0.584|
|cycle_construction_grow_TCC2|✅ proved - incomplete|shostak|0.445|
|cycle_construction_grow_TCC3|✅ proved - incomplete|shostak|0.332|
|cycle_construction_grow_TCC4|✅ proved - incomplete|shostak|0.320|
|cycle_construction_grow|✅ proved - incomplete|shostak|1.115|
|cycles_from_measure_TCC1|✅ proved - incomplete|shostak|0.321|
|cycles_from_measure_TCC2|✅ proved - complete|shostak|0.531|
|cycles_from_measure_TCC3|✅ proved - incomplete|shostak|0.342|
|cycles_from_TCC1|✅ proved - incomplete|shostak|0.597|
|cycles_from_TCC2|✅ proved - incomplete|shostak|1.073|
|cycles_from_TCC3|✅ proved - incomplete|shostak|0.371|
|cycles_from_TCC4|✅ proved - incomplete|shostak|0.637|
|cycles_from_TCC5|✅ proved - incomplete|shostak|1.595|
|cycles_from_TCC6|✅ proved - incomplete|shostak|0.371|
|cycles_from_TCC7|✅ proved - incomplete|shostak|0.623|
|cycles_from_TCC8|✅ proved - incomplete|shostak|1.282|
|cycles_from_TCC9|✅ proved - incomplete|shostak|0.373|
|cycles_from_TCC10|✅ proved - incomplete|shostak|0.400|
|cycles_from_TCC11|✅ proved - incomplete|shostak|0.368|
|cycles_from_TCC12|✅ proved - incomplete|shostak|0.556|
|cycles_from_TCC13|✅ proved - incomplete|shostak|0.474|
|cycles_from_TCC14|✅ proved - incomplete|shostak|0.640|
|cycles_from_TCC15|✅ proved - incomplete|shostak|0.000|
|cycles_for_TCC1|✅ proved - incomplete|shostak|0.457|
|cycles_for_TCC2|✅ proved - incomplete|shostak|0.872|
|cycles_for_TCC3|✅ proved - complete|shostak|0.470|
|cycles_for_TCC4|✅ proved - incomplete|shostak|0.404|
|cycles_for_TCC5|✅ proved - incomplete|shostak|1.026|
|all_cycles_rec_TCC1|✅ proved - incomplete|shostak|0.382|
|all_cycles_rec_TCC2|✅ proved - incomplete|shostak|0.388|
|all_cycles_rec_TCC3|✅ proved - complete|shostak|0.419|
|all_cycles_rec_TCC4|✅ proved - complete|shostak|0.328|
|all_cycles_rec_TCC5|✅ proved - incomplete|shostak|0.401|
|all_cycles_rec_TCC6|✅ proved - incomplete|shostak|1.679|
|all_cycles_TCC1|✅ proved - incomplete|shostak|0.461|
|all_cycles_TCC2|✅ proved - incomplete|shostak|0.419|
|all_cycles_TCC3|✅ proved - complete|shostak|0.377|
|w?2w_TCC1|✅ proved - complete|shostak|0.838|
|w?2w_TCC2|✅ proved - incomplete|shostak|1.983|
|w2w?_rec_TCC1|✅ proved - incomplete|shostak|0.830|
|w2w?_rec_TCC2|✅ proved - incomplete|shostak|0.690|
|w2w?_rec_TCC3|✅ proved - incomplete|shostak|0.345|
|w2w?_rec_TCC4|✅ proved - incomplete|shostak|1.401|
|w2w?_rec_TCC5|✅ proved - incomplete|shostak|1.664|
|w2w?_rec_TCC6|✅ proved - incomplete|shostak|1.404|
|w2w?_rec_TCC7|✅ proved - incomplete|shostak|0.000|
|w2w?_TCC1|✅ proved - incomplete|shostak|0.676|
|w2w?_TCC2|✅ proved - incomplete|shostak|0.412|
|w2w?_circuit|✅ proved - incomplete|shostak|0.557|
|w2w?_cycle_TCC1|✅ proved - incomplete|shostak|0.354|
|w2w?_cycle|✅ proved - incomplete|shostak|0.845|
|lc?2lw_TCC1|✅ proved - incomplete|shostak|0.350|
|lc?2lw_TCC2|✅ proved - incomplete|shostak|0.747|
|lc?2lw_TCC3|✅ proved - incomplete|shostak|1.753|
|lc?2lw_TCC4|✅ proved - incomplete|shostak|0.523|
|lc?2lw_TCC5|✅ proved - incomplete|shostak|0.616|
|lc?2lw_TCC6|✅ proved - incomplete|shostak|2.286|
|ac2vl_rec_TCC1|✅ proved - incomplete|shostak|0.432|
|ac2vl_rec_TCC2|✅ proved - incomplete|shostak|1.846|
|ac2vl_rec_TCC3|✅ proved - incomplete|shostak|0.436|
|ac2vl_rec_TCC4|✅ proved - incomplete|shostak|0.374|
|ac2vl_rec_TCC5|✅ proved - incomplete|shostak|0.592|
|ac2vl_rec_TCC6|✅ proved - incomplete|shostak|0.522|
|ac2vl_rec_TCC7|✅ proved - incomplete|shostak|2.915|
|ac2vl_rec_TCC8|✅ proved - incomplete|shostak|0.575|
|ac2vl_rec_TCC9|✅ proved - incomplete|shostak|0.681|
|ac2vl_rec_TCC10|✅ proved - incomplete|shostak|0.000|
|all_cycles_vl_TCC1|✅ proved - incomplete|shostak|0.351|
|all_cycles_vl_TCC2|✅ proved - incomplete|shostak|0.313|
|all_cycles_vl_TCC3|✅ proved - incomplete|shostak|0.417|
|all_cycles_vl_TCC4|✅ proved - incomplete|shostak|0.816|

## `c_cycles`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_cycles__TCC1|✅ proved - incomplete|shostak|0.381|

## `c_digraphs_imp`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cdigraphs_implement_digraphs_|✅ proved - incomplete|shostak|1.668|

## `c_digraphs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_digraphs__TCC1|✅ proved - incomplete|shostak|0.378|
|data_vert_list|✅ proved - incomplete|shostak|0.452|
|fully_connected_edges_TCC1|✅ proved - incomplete|shostak|0.346|
|fully_connected_edges_TCC2|✅ proved - incomplete|shostak|0.337|
|fully_connected_edges_TCC3|✅ proved - incomplete|shostak|0.531|
|fully_connected_edges_TCC4|✅ proved - incomplete|shostak|0.380|
|make_fully_connected_TCC1|✅ proved - incomplete|shostak|0.401|
|mfc_is_fully_connected|✅ proved - incomplete|shostak|0.524|

## `c_walks`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_walks__TCC1|✅ proved - incomplete|shostak|0.351|

## `c_paths`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_paths__TCC1|✅ proved - incomplete|shostak|0.340|

## `c_dags`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_dags__TCC1|✅ proved - incomplete|shostak|0.394|

## `c_circuits`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_circuits__TCC1|✅ proved - incomplete|shostak|0.391|

## `c_di_subgraphs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_di_subgraphs__TCC1|✅ proved - incomplete|shostak|0.390|

## `c_weighted_digraphs_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|weight_TCC1|✅ proved - incomplete|shostak|0.598|
|weight_TCC2|✅ proved - incomplete|shostak|0.351|
|weight_TCC3|✅ proved - incomplete|shostak|0.363|
|get_value_TCC1|✅ proved - complete|shostak|0.353|
|get_value_TCC2|✅ proved - complete|shostak|0.382|
|get_value_TCC3|✅ proved - complete|shostak|0.404|
|keys_no_rep?_TCC1|✅ proved - complete|shostak|0.384|
|keys_no_rep?_cdr|✅ proved - complete|shostak|0.516|
|keys_no_rep?_cons|✅ proved - incomplete|shostak|0.666|
|keys_no_rep?_no_rep|✅ proved - incomplete|shostak|0.459|
|keys_no_rep?_append|✅ proved - incomplete|shostak|1.628|
|get_val_no_rep_TCC1|✅ proved - complete|shostak|0.350|
|get_val_no_rep|✅ proved - incomplete|shostak|0.608|
|get_val_member|✅ proved - complete|shostak|0.387|
|get_wgt_TCC1|✅ proved - incomplete|shostak|0.338|

## `c_weighted_digraphs_imp`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_weighted_digraphs_abs_TCC1|✅ proved - incomplete|shostak|0.430|
|IMP_weighted_digraphs_abs_TCC2|✅ proved - incomplete|shostak|0.330|
|cwdigraphs_implement_wdigraphs_|✅ proved - incomplete|shostak|1.682|

## `c_weighted_digraphs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_weighted_digraphs__TCC1|✅ proved - incomplete|shostak|0.497|
|IMP_weighted_digraphs__TCC2|✅ proved - incomplete|shostak|0.337|
|IMP_weighted_digraphs__TCC3|✅ proved - incomplete|shostak|0.330|

## `c_circuit_decomp`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_circuit_decomp__TCC1|✅ proved - incomplete|shostak|0.400|

## `c_topological_sort`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|topological_ordering?_TCC1|✅ proved - incomplete|shostak|0.788|
|topological_ordering?_TCC2|✅ proved - incomplete|shostak|0.676|
|topological_ordering_path_TCC1|✅ proved - incomplete|shostak|1.614|
|topological_ordering_path_TCC2|✅ proved - incomplete|shostak|1.561|
|topological_ordering_path|✅ proved - incomplete|shostak|0.000|
|temp_count_same|✅ proved - complete|shostak|0.428|
|temp_count_incr|✅ proved - incomplete|shostak|0.742|
|temp_count_bound|✅ proved - complete|shostak|0.383|
|perm_count_same|✅ proved - complete|shostak|0.459|
|perm_count_same2|✅ proved - complete|shostak|0.454|
|perm_count_incr|✅ proved - complete|shostak|0.464|
|perm_count_bound|✅ proved - complete|shostak|0.472|
|greater_marking_update|✅ proved - complete|shostak|0.374|
|greater_marking_temp_count|✅ proved - complete|shostak|0.495|
|greater_marking_perm_count|✅ proved - complete|shostak|0.803|
|visit_TCC1|✅ proved - incomplete|shostak|0.350|
|visit_TCC2|✅ proved - incomplete|shostak|0.434|
|visit_TCC3|✅ proved - incomplete|shostak|0.434|
|visit_TCC4|✅ proved - incomplete|shostak|0.431|
|visit_TCC5|✅ proved - incomplete|shostak|0.412|
|visit_TCC6|✅ proved - incomplete|shostak|0.410|
|visit_TCC7|✅ proved - complete|shostak|0.404|
|visit_TCC8|✅ proved - complete|shostak|0.383|
|visit_TCC9|✅ proved - incomplete|shostak|0.733|
|visit_TCC10|✅ proved - incomplete|shostak|5.901|
|visit_TCC11|✅ proved - incomplete|shostak|1.717|
|visit_TCC12|✅ proved - incomplete|shostak|1.801|
|visit_TCC13|✅ proved - incomplete|shostak|0.369|
|visit_TCC14|✅ proved - incomplete|shostak|1.971|
|visit_TCC15|✅ proved - incomplete|shostak|0.411|
|visit_TCC16|✅ proved - incomplete|shostak|0.000|
|visit_TCC17|✅ proved - incomplete|shostak|0.449|
|visit_TCC18|✅ proved - incomplete|shostak|3.045|
|visit_TCC19|✅ proved - incomplete|shostak|0.782|
|visit_TCC20|✅ proved - incomplete|shostak|0.589|
|visit_TCC21|✅ proved - incomplete|shostak|2.965|
|visit_TCC22|✅ proved - incomplete|shostak|6.276|
|visit_TCC23|✅ proved - incomplete|shostak|2.694|
|visit_TCC24|✅ proved - incomplete|shostak|3.036|
|visit_TCC25|✅ proved - incomplete|shostak|3.401|
|visit_TCC26|✅ proved - incomplete|shostak|10.039|
|topological_sort_aux_TCC1|✅ proved - incomplete|shostak|0.895|
|topological_sort_aux_TCC2|✅ proved - incomplete|shostak|1.853|
|topological_sort_aux_TCC3|✅ proved - incomplete|shostak|1.600|
|topological_sort_aux_TCC4|✅ proved - incomplete|shostak|1.463|
|topological_sort_aux_TCC5|✅ proved - incomplete|shostak|2.322|
|topological_sort_aux_TCC6|✅ proved - incomplete|shostak|0.367|
|topological_sort_aux_TCC7|✅ proved - incomplete|shostak|0.365|
|topological_sort_aux_TCC8|✅ proved - incomplete|shostak|0.000|
|topological_sort_aux_TCC9|✅ proved - incomplete|shostak|1.847|
|topological_sort_aux_TCC10|✅ proved - incomplete|shostak|1.630|
|topological_sort_aux_TCC11|✅ proved - incomplete|shostak|2.082|
|topological_sort_aux_TCC12|✅ proved - incomplete|shostak|0.490|
|topological_sort_aux_TCC13|✅ proved - incomplete|shostak|3.752|
|topological_sort_aux_TCC14|✅ proved - incomplete|shostak|0.493|
|topological_sort_aux_TCC15|✅ proved - incomplete|shostak|0.712|
|topological_sort_aux_TCC16|✅ proved - incomplete|shostak|0.672|
|topological_sort_aux_TCC17|✅ proved - incomplete|shostak|0.490|
|topological_sort_aux_TCC18|✅ proved - incomplete|shostak|3.717|
|member_length|✅ proved - incomplete|shostak|0.729|
|topological_sort_TCC1|✅ proved - incomplete|shostak|0.362|
|topological_sort_TCC2|✅ proved - incomplete|shostak|0.000|
|topological_sort_TCC3|✅ proved - incomplete|shostak|0.440|
|topological_sort_TCC4|✅ proved - complete|shostak|0.413|
|topological_sort_TCC5|✅ proved - complete|shostak|0.360|
|topological_sort_TCC6|✅ proved - incomplete|shostak|1.822|
|topological_sort_TCC7|✅ proved - incomplete|shostak|0.465|
|topological_sort_TCC8|✅ proved - incomplete|shostak|0.526|
|topological_sort_TCC9|✅ proved - incomplete|shostak|3.712|
|topological_sort_exists|✅ proved - incomplete|shostak|0.527|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib/pvsio_utils/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230712-static-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230710-tcc-gen.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230707-defattach.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230706-extrategies.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`|
