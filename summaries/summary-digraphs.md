# Summary for `digraphs`
Run started at 19:11:38 11/24/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **793**   | **793**    | **793**    | **0**  | **8:46.946 s**   |
|top|0|0|0|0|0.000|
|digraphs_abs|9|9|9|0|1.306|
|digraphs_|16|16|16|0|2.118|
|digraphs_utils|0|0|0|0|0.000|
|walks_|63|63|63|0|15.952|
|paths_|16|16|16|0|2.923|
|dags_|2|2|2|0|0.581|
|circuits_|25|25|25|0|12.088|
|cycles_|14|14|14|0|4.120|
|weighted_digraphs_abs|2|2|2|0|0.297|
|weighted_digraphs_|33|33|33|0|8.028|
|di_subgraphs_|10|10|10|0|1.706|
|circuit_decomp_|79|79|79|0|3:23.158|
|digraph_def|1|1|1|0|0.140|
|digraphs_imp|1|1|1|0|0.183|
|digraphs|1|1|1|0|0.158|
|walks|1|1|1|0|0.160|
|circuits|1|1|1|0|0.167|
|cycles|1|1|1|0|0.172|
|di_subgraphs|1|1|1|0|0.160|
|circuit_decomp|1|1|1|0|0.161|
|weighted_digraphs_def|3|3|3|0|0.471|
|weighted_digraphs_imp|3|3|3|0|0.541|
|weighted_digraphs|3|3|3|0|0.490|
|digraph_deg|37|37|37|0|6.760|
|digraph_ops|21|21|21|0|3.539|
|paths|1|1|1|0|0.206|
|path_ops|6|6|6|0|1.606|
|sep_sets|11|11|11|0|2.562|
|walk_inductions|2|2|2|0|0.385|
|dags|1|1|1|0|0.205|
|di_subgraphs_from_walk|8|8|8|0|1.564|
|max_di_subgraphs|7|7|7|0|1.403|
|max_subtrees|6|6|6|0|1.178|
|trees|7|7|7|0|1.747|
|subtrees|7|7|7|0|2.273|
|digraph_conn_defs|2|2|2|0|0.377|
|min_walk_reduced|4|4|4|0|1.362|
|min_walks|4|4|4|0|1.152|
|reduce_walks|11|11|11|0|3.066|
|digraph_inductions|5|5|5|0|0.976|
|ind_paths|8|8|8|0|1.736|
|wgt_digraphs_props|19|19|19|0|1:2.015|
|Eulerian|14|14|14|0|3.018|
|digraphs_all_cycles|45|45|45|0|26.860|
|c_digraphs_digraphs|15|15|15|0|7.502|
|c_digraphs_def|59|59|59|0|18.990|
|c_digraph_all_cycles|100|100|100|0|50.060|
|c_cycles|1|1|1|0|0.263|
|c_digraphs_imp|1|1|1|0|1.051|
|c_digraphs|8|8|8|0|2.062|
|c_walks|1|1|1|0|0.233|
|c_paths|1|1|1|0|0.233|
|c_dags|1|1|1|0|0.230|
|c_circuits|1|1|1|0|0.234|
|c_di_subgraphs|1|1|1|0|0.232|
|c_weighted_digraphs_def|15|15|15|0|4.868|
|c_weighted_digraphs_imp|3|3|3|0|1.322|
|c_weighted_digraphs|3|3|3|0|0.699|
|c_circuit_decomp|1|1|1|0|0.246|
|c_topological_sort|70|70|70|0|59.651|
## Detailed Summary 
## `top`
No formula declaration found.
## `digraphs_abs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|correct_implementation__TCC1|✅ proved - complete|shostak|0.156|
|vert_is_finite|✅ proved - complete|shostak|0.158|
|edges_is_finite|✅ proved - complete|shostak|0.160|
|edges_in_verts|✅ proved - complete|shostak|0.235|
|make_ok|✅ proved - complete|shostak|0.122|
|make_ok_v|✅ proved - complete|shostak|0.120|
|make_ok_e|✅ proved - complete|shostak|0.115|
|size_def_TCC1|✅ proved - complete|shostak|0.120|
|size_def|✅ proved - complete|shostak|0.120|

## `digraphs_`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|empty_digraph_TCC1|✅ proved - complete|shostak|0.135|
|adjs_TCC1|✅ proved - complete|shostak|0.144|
|edges_vert|✅ proved - complete|shostak|0.124|
|other_vert|✅ proved - complete|shostak|0.130|
|edges_to_pair|✅ proved - complete|shostak|0.117|
|empty?_rew_TCC1|✅ proved - complete|shostak|0.120|
|empty?_rew|✅ proved - complete|shostak|0.123|
|empty_size|✅ proved - complete|shostak|0.120|
|edges_of_empty|✅ proved - complete|shostak|0.124|
|singleton_edges|✅ proved - complete|shostak|0.145|
|edge_in_card_gt_1_TCC1|✅ proved - complete|shostak|0.110|
|edge_in_card_gt_1|✅ proved - complete|shostak|0.197|
|not_singleton_2_vert|✅ proved - complete|shostak|0.140|
|proj_rew|✅ proved - complete|shostak|0.134|
|singleton_digraph_TCC1|✅ proved - complete|shostak|0.120|
|is_sing|✅ proved - complete|shostak|0.135|

## `digraphs_utils`
No formula declaration found.
## `walks_`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_digraphs__TCC1|✅ proved - complete|shostak|0.130|
|walk?_TCC1|✅ proved - complete|shostak|0.153|
|walk?_TCC2|✅ proved - complete|shostak|0.143|
|from?_TCC1|✅ proved - complete|shostak|0.120|
|from?_TCC2|✅ proved - complete|shostak|0.110|
|verts_of_TCC1|✅ proved - complete|shostak|0.146|
|edges_of_TCC1|✅ proved - complete|shostak|0.124|
|edges_of_TCC2|✅ proved - complete|shostak|0.120|
|edges_of_TCC3|✅ proved - complete|shostak|0.199|
|walk_from_l|✅ proved - complete|shostak|0.123|
|verts_in?_concat_TCC1|✅ proved - complete|shostak|0.181|
|verts_in?_concat|✅ proved - complete|shostak|0.388|
|verts_in?_caret_TCC1|✅ proved - complete|shostak|0.178|
|verts_in?_caret|✅ proved - complete|shostak|0.259|
|vert_seq_lem|✅ proved - complete|shostak|0.130|
|verts_of_subset|✅ proved - complete|shostak|0.125|
|edges_of_subset|✅ proved - complete|shostak|0.154|
|walk_verts_in|✅ proved - complete|shostak|0.126|
|walk_from_vert|✅ proved - complete|shostak|0.135|
|walk_edge_in|✅ proved - complete|shostak|0.175|
|prewalk_across_TCC1|✅ proved - complete|shostak|0.120|
|prewalk_across_TCC2|✅ proved - complete|shostak|0.117|
|prewalk_across_TCC3|✅ proved - complete|shostak|0.130|
|prewalk_across_TCC4|✅ proved - complete|shostak|0.120|
|prewalk_across|✅ proved - complete|shostak|0.191|
|trunc1_TCC1|✅ proved - complete|shostak|0.120|
|trunc1_TCC2|✅ proved - complete|shostak|0.155|
|add1_TCC1|✅ proved - complete|shostak|0.116|
|gen_seq1_is_walk|✅ proved - complete|shostak|0.130|
|edge_to_walk_TCC1|✅ proved - complete|shostak|0.126|
|edge_to_walk_TCC2|✅ proved - complete|shostak|0.120|
|edge_to_walk|✅ proved - complete|shostak|0.136|
|walk?_caret_TCC1|✅ proved - complete|shostak|0.226|
|walk?_caret|✅ proved - complete|shostak|0.238|
|l_trunc1_TCC1|✅ proved - complete|shostak|0.120|
|l_trunc1|✅ proved - complete|shostak|0.154|
|walk?_add1|✅ proved - complete|shostak|0.173|
|walk_concat_edge_TCC1|✅ proved - complete|shostak|0.154|
|walk_concat_edge|✅ proved - complete|shostak|0.292|
|walk_concat_TCC1|✅ proved - complete|shostak|0.174|
|walk_concat_TCC2|✅ proved - complete|shostak|0.211|
|walk_concat|✅ proved - complete|shostak|0.381|
|walk?_cut_TCC1|✅ proved - complete|shostak|0.130|
|walk?_cut_TCC2|✅ proved - complete|shostak|0.239|
|walk?_cut|✅ proved - complete|shostak|0.675|
|walk_merge|✅ proved - complete|shostak|0.157|
|reord_prewalk_TCC1|✅ proved - complete|shostak|0.120|
|reord_prewalk_TCC2|✅ proved - complete|shostak|0.130|
|reord_prewalk_TCC3|✅ proved - complete|shostak|0.222|
|eq_relation_eq_prewalk|✅ proved - complete|shostak|4.286|
|eq_prewalk_length|✅ proved - complete|shostak|0.229|
|subwalk_is_walk|✅ proved - complete|shostak|0.188|
|walk_o_TCC1|✅ proved - complete|shostak|0.138|
|walk_o_TCC2|✅ proved - complete|shostak|0.130|
|walk_o_TCC3|✅ proved - complete|shostak|0.218|
|walk_o|✅ proved - complete|shostak|0.504|
|edges_o_walk_TCC1|✅ proved - complete|shostak|0.130|
|edges_o_walk_TCC2|✅ proved - complete|shostak|0.132|
|edges_o_walk_TCC3|✅ proved - incomplete|shostak|0.227|
|edges_o_walk|✅ proved - incomplete|shostak|0.533|
|walk_o_edge_TCC1|✅ proved - complete|shostak|0.149|
|walk_o_edge|✅ proved - complete|shostak|0.158|
|reachable_is_transitive|✅ proved - complete|shostak|0.334|

## `paths_`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_walks__TCC1|✅ proved - complete|shostak|0.140|
|path?_verts|✅ proved - complete|shostak|0.168|
|path_from_l|✅ proved - complete|shostak|0.150|
|path_from_in|✅ proved - complete|shostak|0.139|
|path?_caret_TCC1|✅ proved - complete|shostak|0.219|
|path?_caret|✅ proved - complete|shostak|0.335|
|path_from?_caret_TCC1|✅ proved - complete|shostak|0.237|
|path_from?_caret_TCC2|✅ proved - complete|shostak|0.183|
|path_from?_caret|✅ proved - complete|shostak|0.184|
|path?_gen_seq2|✅ proved - complete|shostak|0.153|
|path?_add1_TCC1|✅ proved - complete|shostak|0.140|
|path?_add1|✅ proved - complete|shostak|0.220|
|path?_trunc1_TCC1|✅ proved - complete|shostak|0.175|
|path?_trunc1_TCC2|✅ proved - complete|shostak|0.140|
|path?_trunc1_TCC3|✅ proved - complete|shostak|0.146|
|path?_trunc1|✅ proved - complete|shostak|0.194|

## `dags_`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_paths__TCC1|✅ proved - complete|shostak|0.135|
|dag_no_self_loops|✅ proved - complete|shostak|0.446|

## `circuits_`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_walks__TCC1|✅ proved - complete|shostak|0.134|
|pre_circuit?_TCC1|✅ proved - complete|shostak|0.000|
|pre_circuit?_TCC2|✅ proved - complete|shostak|0.170|
|circuit_at?_TCC1|✅ proved - complete|shostak|0.165|
|eq_circuit?_TCC1|✅ proved - incomplete|shostak|0.233|
|eq_circuit?_TCC2|✅ proved - incomplete|shostak|0.233|
|eq_circuit_length|✅ proved - incomplete|shostak|0.196|
|eq_circuit_reflexive|✅ proved - incomplete|shostak|0.130|
|eq_circuit_symmetric|✅ proved - incomplete|shostak|0.136|
|loop_is_circuit|✅ proved - complete|shostak|0.133|
|equal_rest_equal_circuit|✅ proved - incomplete|shostak|0.402|
|equal_eq_circuit|✅ proved - incomplete|shostak|0.133|
|circuit_equal_fisrt_TCC1|✅ proved - incomplete|shostak|0.267|
|circuit_equal_fisrt_TCC2|✅ proved - incomplete|shostak|0.254|
|circuit_equal_fisrt_TCC3|✅ proved - incomplete|shostak|0.264|
|circuit_equal_fisrt|✅ proved - incomplete|shostak|0.271|
|comp_circuit_inter_TCC1|✅ proved - incomplete|shostak|0.195|
|comp_circuit_inter|✅ proved - incomplete|shostak|0.260|
|eq_circuit_position_TCC1|✅ proved - incomplete|shostak|0.278|
|eq_circuit_position|✅ proved - incomplete|shostak|1.857|
|eq_circuit_edges|✅ proved - incomplete|shostak|3.408|
|commuted_circuit_TCC1|✅ proved - complete|shostak|0.140|
|commuted_circuit_TCC2|✅ proved - complete|shostak|0.255|
|commuted_circuit|✅ proved - incomplete|shostak|0.792|
|commuted_circuit_is_eq|✅ proved - incomplete|shostak|1.782|

## `cycles_`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_circuits__TCC1|✅ proved - complete|shostak|0.142|
|cycle?_TCC1|✅ proved - complete|shostak|0.178|
|cycle?_TCC2|✅ proved - complete|shostak|0.150|
|cycle_at?_TCC1|✅ proved - complete|shostak|0.155|
|VCList_TCC1|✅ proved - complete|shostak|0.166|
|cycle_is_circuit|✅ proved - complete|shostak|0.130|
|circuit_subwalk_cycle_TCC1|✅ proved - complete|shostak|0.158|
|circuit_subwalk_cycle|✅ proved - complete|shostak|1.179|
|cycle_prefix_TCC1|✅ proved - complete|shostak|0.169|
|cycle_prefix|✅ proved - incomplete|shostak|0.668|
|cycle_o_circuit_TCC1|✅ proved - incomplete|shostak|0.257|
|cycle_o_circuit|✅ proved - incomplete|shostak|0.474|
|Pigeon_hole_TCC1|✅ proved - complete|shostak|0.126|
|Pigeon_hole|✅ proved - incomplete|shostak|0.168|

## `weighted_digraphs_abs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|correct_implementation_TCC1|✅ proved - complete|shostak|0.157|
|correct_implementation_TCC2|✅ proved - complete|shostak|0.140|

## `weighted_digraphs_`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_weighted_digraphs_abs_TCC1|✅ proved - complete|shostak|0.140|
|wgt_aux_TCC1|✅ proved - complete|shostak|0.190|
|wgt_aux_TCC2|✅ proved - complete|shostak|0.150|
|wgt_aux_TCC3|✅ proved - complete|shostak|0.174|
|wgt_walk_TCC1|✅ proved - complete|shostak|0.141|
|wgt_aux_shift_walk|✅ proved - complete|shostak|0.000|
|wgt_aux_first_TCC1|✅ proved - complete|shostak|0.150|
|wgt_aux_first_TCC2|✅ proved - complete|shostak|0.174|
|wgt_aux_first_TCC3|✅ proved - complete|shostak|0.192|
|wgt_aux_first|✅ proved - complete|shostak|0.292|
|wgt_aux_split_TCC1|✅ proved - complete|shostak|0.159|
|wgt_aux_split|✅ proved - complete|shostak|0.263|
|wgt_aux_sub_walk_TCC1|✅ proved - complete|shostak|0.212|
|wgt_aux_sub_walk_TCC2|✅ proved - complete|shostak|0.202|
|wgt_aux_sub_walk|✅ proved - complete|shostak|0.625|
|wgt_walk_to_aux|✅ proved - complete|shostak|0.219|
|wgt_walk_decomposed_TCC1|✅ proved - complete|shostak|0.173|
|wgt_walk_decomposed_TCC2|✅ proved - complete|shostak|0.145|
|wgt_walk_decomposed_TCC3|✅ proved - complete|shostak|0.181|
|wgt_walk_decomposed|✅ proved - complete|shostak|0.303|
|wgt_walk_edge_TCC1|✅ proved - complete|shostak|0.135|
|wgt_walk_edge_TCC2|✅ proved - complete|shostak|0.150|
|wgt_walk_edge_TCC3|✅ proved - complete|shostak|0.166|
|wgt_walk_edge|✅ proved - complete|shostak|0.155|
|wgt_comp_rest_TCC1|✅ proved - complete|shostak|0.140|
|wgt_comp_rest_TCC2|✅ proved - complete|shostak|0.136|
|wgt_comp_rest_TCC3|✅ proved - incomplete|shostak|0.174|
|wgt_comp_rest|✅ proved - incomplete|shostak|0.966|
|wgt_comp_TCC1|✅ proved - incomplete|shostak|0.257|
|wgt_comp_TCC2|✅ proved - incomplete|shostak|0.186|
|wgt_comp_TCC3|✅ proved - incomplete|shostak|0.199|
|wgt_comp_TCC4|✅ proved - incomplete|shostak|0.196|
|wgt_comp|✅ proved - incomplete|shostak|1.083|

## `di_subgraphs_`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_digraphs__TCC1|✅ proved - complete|shostak|0.139|
|finite_vert_subset|✅ proved - complete|shostak|0.185|
|finite_edge_subset|✅ proved - complete|shostak|0.157|
|di_subgraph_TCC1|✅ proved - complete|shostak|0.160|
|di_subgraph_TCC2|✅ proved - complete|shostak|0.141|
|di_subgraph_TCC3|✅ proved - complete|shostak|0.205|
|di_subgraph_vert_sub|✅ proved - complete|shostak|0.167|
|di_subgraph_lem|✅ proved - complete|shostak|0.127|
|di_subgraph_smaller|✅ proved - complete|shostak|0.140|
|di_subgraph_vert|✅ proved - incomplete|shostak|0.285|

## `circuit_decomp_`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_cycles__TCC1|✅ proved - complete|shostak|0.145|
|vert_circ_TCC1|✅ proved - complete|shostak|0.158|
|walk_decomp_TCC1|✅ proved - complete|shostak|1.003|
|drop_circuits_TCC1|✅ proved - complete|shostak|4.631|
|cdr_decomp_TCC1|✅ proved - complete|shostak|0.162|
|cdr_decomp_TCC2|✅ proved - complete|shostak|1.603|
|cdr_decomp|✅ proved - complete|shostak|4.584|
|decomp_to_walk_TCC1|✅ proved - complete|shostak|0.150|
|decomp_to_walk_TCC2|✅ proved - complete|shostak|0.201|
|decomp_to_walk_TCC3|✅ proved - complete|shostak|0.140|
|decomp_to_walk_TCC4|✅ proved - complete|shostak|0.169|
|decomp_to_walk_TCC5|✅ proved - incomplete|shostak|2.215|
|decomp_to_walk_TCC6|✅ proved - complete|shostak|0.160|
|decomp_to_walk_TCC7|✅ proved - complete|shostak|0.177|
|decomp_to_walk_TCC8|✅ proved - complete|shostak|0.185|
|decomp_to_walk_TCC9|✅ proved - incomplete|shostak|0.978|
|decomp_to_walk_length_TCC1|✅ proved - incomplete|shostak|0.170|
|decomp_to_walk_length_TCC2|✅ proved - incomplete|shostak|0.522|
|decomp_to_walk_rw|✅ proved - incomplete|shostak|0.233|
|decomp_to_walk_length_bnd|✅ proved - incomplete|shostak|1.219|
|caret_decomp_TCC1|✅ proved - incomplete|shostak|1.543|
|caret_decomp|✅ proved - incomplete|shostak|1.611|
|walk_index_TCC1|✅ proved - incomplete|shostak|0.194|
|walk_index_TCC2|✅ proved - complete|shostak|0.161|
|walk_index_TCC3|✅ proved - incomplete|shostak|0.203|
|walk_index_TCC4|✅ proved - complete|shostak|0.159|
|walk_index_TCC5|✅ proved - complete|shostak|0.223|
|walk_index_TCC6|✅ proved - complete|shostak|0.183|
|walk_index_TCC7|✅ proved - complete|shostak|0.159|
|walk_index_TCC8|✅ proved - incomplete|shostak|3.713|
|walk_index_ub|✅ proved - incomplete|shostak|0.867|
|walk_index_incr|✅ proved - incomplete|shostak|0.885|
|walk_index_sincr|✅ proved - incomplete|shostak|1.045|
|walk_index_last_TCC1|✅ proved - complete|shostak|0.180|
|walk_index_last_TCC2|✅ proved - complete|shostak|0.159|
|walk_index_last_TCC3|✅ proved - complete|shostak|0.164|
|walk_index_last|✅ proved - incomplete|shostak|1.171|
|walk_index_bound_TCC1|✅ proved - complete|shostak|0.000|
|walk_index_bound|✅ proved - incomplete|shostak|0.864|
|walk_index_pos|✅ proved - incomplete|shostak|0.261|
|decomp_walk_index_TCC1|✅ proved - incomplete|shostak|0.384|
|decomp_walk_index|✅ proved - incomplete|shostak|2.166|
|caret_commute_TCC1|✅ proved - incomplete|shostak|0.130|
|caret_commute_TCC2|✅ proved - incomplete|shostak|0.131|
|caret_commute_TCC3|✅ proved - incomplete|shostak|0.140|
|caret_commute|✅ proved - incomplete|shostak|12.490|
|append_decomp_TCC1|✅ proved - complete|shostak|0.190|
|append_decomp_TCC2|✅ proved - complete|shostak|0.165|
|append_decomp_TCC3|✅ proved - complete|shostak|0.367|
|append_decomp|✅ proved - incomplete|shostak|5.596|
|append_commute_TCC1|✅ proved - incomplete|shostak|0.141|
|append_commute|✅ proved - incomplete|shostak|0.000|
|circuit_vertex_TCC1|✅ proved - complete|shostak|0.261|
|circuit_vertex|✅ proved - complete|shostak|0.810|
|circuit_first_last_TCC1|✅ proved - complete|shostak|0.256|
|circuit_first_last|✅ proved - complete|shostak|1.045|
|shrink_repeat|✅ proved - incomplete|shostak|1:56.126|
|circuit_decomp_prep|✅ proved - incomplete|shostak|1.401|
|vert2vc_TCC1|✅ proved - complete|shostak|0.157|
|vert2vc_TCC2|✅ proved - complete|shostak|0.160|
|trivial_decomp_TCC1|✅ proved - complete|shostak|0.140|
|trivial_decomp_TCC2|✅ proved - complete|shostak|0.170|
|trivial_decomp_TCC3|✅ proved - incomplete|shostak|1.136|
|trivial_decomp_TCC4|✅ proved - complete|shostak|0.150|
|trivial_decomp_TCC5|✅ proved - complete|shostak|0.160|
|trivial_decomp_TCC6|✅ proved - complete|shostak|0.140|
|trivial_decomp_TCC7|✅ proved - complete|shostak|0.192|
|trivial_decomp_TCC8|✅ proved - complete|shostak|0.220|
|trivial_decomp_TCC9|✅ proved - incomplete|shostak|1.057|
|trivial_decomp_idemp|✅ proved - incomplete|shostak|0.309|
|trivial_decomp_length|✅ proved - incomplete|shostak|2.030|
|trivial_decomp_circuit_length_TCC1|✅ proved - incomplete|shostak|0.232|
|trivial_decomp_circuit_length|✅ proved - incomplete|shostak|0.890|
|trunk_decomp_TCC1|✅ proved - complete|shostak|0.235|
|trunk_decomp_TCC2|✅ proved - incomplete|shostak|0.416|
|trunk_decomp|✅ proved - incomplete|shostak|1.443|
|trunc_decomp_def_TCC1|✅ proved - incomplete|shostak|0.138|
|trunc_decomp_def|✅ proved - incomplete|shostak|1.537|
|circuit_decomposition|✅ proved - incomplete|shostak|17.897|

## `digraph_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|make_TCC1|✅ proved - complete|shostak|0.140|

## `digraphs_imp`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|digraphs_implement_digraphs_|✅ proved - complete|shostak|0.183|

## `digraphs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_digraphs__TCC1|✅ proved - complete|shostak|0.158|

## `walks`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_walks__TCC1|✅ proved - complete|shostak|0.160|

## `circuits`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_circuits__TCC1|✅ proved - complete|shostak|0.167|

## `cycles`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_cycles__TCC1|✅ proved - complete|shostak|0.172|

## `di_subgraphs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_di_subgraphs__TCC1|✅ proved - complete|shostak|0.160|

## `circuit_decomp`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_circuit_decomp__TCC1|✅ proved - complete|shostak|0.161|

## `weighted_digraphs_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|wgd_wgt_TCC1|✅ proved - complete|shostak|0.167|
|map_val_TCC1|✅ proved - complete|shostak|0.150|
|make_wdg_TCC1|✅ proved - complete|shostak|0.154|

## `weighted_digraphs_imp`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_weighted_digraphs_abs_TCC1|✅ proved - complete|shostak|0.184|
|IMP_weighted_digraphs_abs_TCC2|✅ proved - complete|shostak|0.160|
|wdigraphs_implement_wdigraphs_|✅ proved - complete|shostak|0.197|

## `weighted_digraphs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_weighted_digraphs__TCC1|✅ proved - complete|shostak|0.180|
|IMP_weighted_digraphs__TCC2|✅ proved - complete|shostak|0.160|
|IMP_weighted_digraphs__TCC3|✅ proved - complete|shostak|0.150|

## `digraph_deg`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|incoming_edges_TCC1|✅ proved - complete|shostak|0.216|
|outgoing_edges_TCC1|✅ proved - complete|shostak|0.165|
|incident_edges_TCC1|✅ proved - complete|shostak|0.163|
|incoming_edges_subset|✅ proved - complete|shostak|0.160|
|outgoing_edges_subset|✅ proved - complete|shostak|0.156|
|incident_edges_subset|✅ proved - complete|shostak|0.160|
|incoming_edges_emptyset|✅ proved - complete|shostak|0.153|
|outgoing_edges_emptyset|✅ proved - complete|shostak|0.154|
|incident_edges_emptyset|✅ proved - complete|shostak|0.150|
|deg_del_edge_incoming|✅ proved - complete|shostak|0.221|
|deg_del_edge_outgoing|✅ proved - complete|shostak|0.226|
|deg_del_non_edge|✅ proved - complete|shostak|0.235|
|deg_del_non_edge_incoming|✅ proved - complete|shostak|0.175|
|deg_del_non_edge_outgoing|✅ proved - complete|shostak|0.174|
|deg_del_edge|✅ proved - complete|shostak|0.215|
|deg_del_self_loop|✅ proved - complete|shostak|0.187|
|deg_del_edge_ge_incoming|✅ proved - complete|shostak|0.155|
|deg_del_edge_ge_outgoing|✅ proved - complete|shostak|0.166|
|deg_del_edge_ge|✅ proved - complete|shostak|0.184|
|deg_del_edge_le_incoming|✅ proved - complete|shostak|0.170|
|deg_del_edge_le_outgoing|✅ proved - complete|shostak|0.168|
|deg_del_edge_le|✅ proved - complete|shostak|0.195|
|in_deg_edge_exists|✅ proved - complete|shostak|0.154|
|out_deg_edge_exists|✅ proved - complete|shostak|0.165|
|deg_edge_exists|✅ proved - complete|shostak|0.185|
|deg_to_card|✅ proved - complete|shostak|0.234|
|del_vert_deg_0|✅ proved - complete|shostak|0.198|
|singleton_loops|✅ proved - complete|shostak|0.164|
|singleton_edges|✅ proved - complete|shostak|0.173|
|singleton_deg|✅ proved - complete|shostak|0.160|
|in_deg_1_sing|✅ proved - complete|shostak|0.166|
|out_deg_1_sing|✅ proved - complete|shostak|0.174|
|deg_1_sing|✅ proved - complete|shostak|0.333|
|deg_1_in_out|✅ proved - complete|shostak|0.180|
|deg_1_edge|✅ proved - complete|shostak|0.206|
|in_deg_pos|✅ proved - complete|shostak|0.155|
|out_deg_pos|✅ proved - complete|shostak|0.165|

## `digraph_ops`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|union_TCC1|✅ proved - complete|shostak|0.206|
|del_vert_TCC1|✅ proved - complete|shostak|0.173|
|del_vert_TCC2|✅ proved - complete|shostak|0.163|
|del_edge_TCC1|✅ proved - complete|shostak|0.150|
|del_vert_still_in|✅ proved - complete|shostak|0.146|
|size_del_vert|✅ proved - complete|shostak|0.199|
|del_vert_le|✅ proved - complete|shostak|0.160|
|del_vert_ge|✅ proved - complete|shostak|0.166|
|edge_in_del_vert|✅ proved - complete|shostak|0.154|
|edges_del_vert|✅ proved - complete|shostak|0.150|
|del_vert_comm|✅ proved - complete|shostak|0.185|
|del_vert_empty?|✅ proved - complete|shostak|0.165|
|del_edge_lem|✅ proved - complete|shostak|0.154|
|del_edge_lem2|✅ proved - complete|shostak|0.160|
|del_edge_lem3|✅ proved - complete|shostak|0.155|
|del_edge_lem5|✅ proved - complete|shostak|0.175|
|vert_del_edge|✅ proved - complete|shostak|0.150|
|del_edge_num|✅ proved - complete|shostak|0.184|
|del_edge_singleton|✅ proved - complete|shostak|0.166|
|del_vert_edge_comm|✅ proved - complete|shostak|0.185|
|del_vert_edge|✅ proved - complete|shostak|0.193|

## `paths`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_paths__TCC1|✅ proved - complete|shostak|0.206|

## `path_ops`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|walk?_del_vert|✅ proved - complete|shostak|0.276|
|walk?_del_vert_not|✅ proved - complete|shostak|0.212|
|path?_del_vert|✅ proved - complete|shostak|0.176|
|path?_del_verts|✅ proved - complete|shostak|0.230|
|walk_to_path|✅ proved - complete|shostak|0.548|
|walk_to_path_from|✅ proved - complete|shostak|0.164|

## `sep_sets`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|del_verts_TCC1|✅ proved - complete|shostak|0.227|
|del_verts_TCC2|✅ proved - complete|shostak|0.178|
|sep_set_exists|✅ proved - complete|shostak|0.418|
|min_sep_set_TCC1|✅ proved - complete|shostak|0.148|
|min_sep_set_edge|✅ proved - incomplete|shostak|0.196|
|min_sep_set_card|✅ proved - incomplete|shostak|0.287|
|min_sep_set_seps|✅ proved - incomplete|shostak|0.191|
|min_sep_set_vert|✅ proved - incomplete|shostak|0.329|
|ends_not_in_min_sep_set|✅ proved - incomplete|shostak|0.164|
|walk?_del_verts_not|✅ proved - complete|shostak|0.228|
|adj_verts_TCC1|✅ proved - complete|shostak|0.196|

## `walk_inductions`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|walk_prep|✅ proved - complete|shostak|0.210|
|digraph_induction_walk|✅ proved - complete|shostak|0.175|

## `dags`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_dags__TCC1|✅ proved - complete|shostak|0.205|

## `di_subgraphs_from_walk`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|G_from_TCC1|✅ proved - complete|shostak|0.307|
|G_from_vert|✅ proved - complete|shostak|0.158|
|vert_G_from|✅ proved - complete|shostak|0.166|
|edge?_G_from_TCC1|✅ proved - complete|shostak|0.160|
|edge?_G_from_TCC2|✅ proved - complete|shostak|0.187|
|edge?_G_from|✅ proved - complete|shostak|0.205|
|vert_G_from_not|✅ proved - complete|shostak|0.172|
|del_vert_di_subgraph|✅ proved - complete|shostak|0.209|

## `max_di_subgraphs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|prep0|✅ proved - complete|shostak|0.229|
|max_size_TCC1|✅ proved - complete|shostak|0.193|
|prep|✅ proved - incomplete|shostak|0.200|
|max_di_subgraph_TCC1|✅ proved - incomplete|shostak|0.286|
|max_di_subgraph_def|✅ proved - incomplete|shostak|0.160|
|max_di_subgraph_in|✅ proved - incomplete|shostak|0.165|
|max_di_subgraph_is_max|✅ proved - incomplete|shostak|0.170|

## `max_subtrees`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sing_is_tree|✅ proved - complete|shostak|0.248|
|tree_in|✅ proved - complete|shostak|0.232|
|max_subtree_TCC1|✅ proved - complete|shostak|0.173|
|max_subtree_tree|✅ proved - incomplete|shostak|0.180|
|max_subtree_di_subgraph|✅ proved - incomplete|shostak|0.160|
|max_subtree_max|✅ proved - incomplete|shostak|0.185|

## `trees`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|tree?_TCC1|✅ proved - complete|shostak|0.222|
|tree_nonempty|✅ proved - complete|shostak|0.193|
|tree_size_pos|✅ proved - complete|shostak|0.183|
|tree_no_self_loops|✅ proved - complete|shostak|0.288|
|root_unique|✅ proved - complete|shostak|0.685|
|root_TCC1|✅ proved - complete|shostak|0.176|
|tree_in_deg_max|✅ proved - complete|shostak|0.000|

## `subtrees`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|walk_acr_TCC1|✅ proved - complete|shostak|0.235|
|walk_acr_TCC2|✅ proved - complete|shostak|0.208|
|walk_acr_TCC3|✅ proved - complete|shostak|0.217|
|walk_acr|✅ proved - complete|shostak|0.274|
|walk_acr2|✅ proved - complete|shostak|0.265|
|add_pair|✅ proved - complete|shostak|0.190|
|max_tree_all_verts|✅ proved - incomplete|shostak|0.884|

## `digraph_conn_defs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|connected?_TCC1|✅ proved - complete|shostak|0.210|
|connected?_TCC2|✅ proved - complete|shostak|0.167|

## `min_walk_reduced`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|reduced?_TCC1|✅ proved - complete|shostak|0.216|
|reduced?_TCC2|✅ proved - complete|shostak|0.180|
|min_walk_vert|✅ proved - incomplete|shostak|0.219|
|min_walk_is_reduced|✅ proved - incomplete|shostak|0.747|

## `min_walks`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|min_walk_from_TCC1|✅ proved - complete|shostak|0.217|
|min_walk_def|✅ proved - incomplete|shostak|0.578|
|min_walk_in|✅ proved - incomplete|shostak|0.173|
|min_walk_is_min|✅ proved - incomplete|shostak|0.184|

## `reduce_walks`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|reduce_TCC1|✅ proved - complete|shostak|0.237|
|reduce_TCC2|✅ proved - complete|shostak|0.210|
|reduce_TCC3|✅ proved - complete|shostak|0.210|
|reduce_TCC4|✅ proved - complete|shostak|0.205|
|reduce_TCC5|✅ proved - complete|shostak|0.233|
|reduce_TCC6|✅ proved - complete|shostak|0.300|
|reduce_lem_TCC1|✅ proved - complete|shostak|0.214|
|reduce_lem_TCC2|✅ proved - complete|shostak|0.190|
|reduce_lem_TCC3|✅ proved - complete|shostak|0.186|
|reduce_lem_TCC4|✅ proved - complete|shostak|0.190|
|reduce_lem|✅ proved - complete|shostak|0.891|

## `digraph_inductions`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|size_prep|✅ proved - complete|shostak|0.244|
|digraph_induction_vert|✅ proved - complete|shostak|0.186|
|digraph_induction_vert_not|✅ proved - complete|shostak|0.187|
|num_edges_prep|✅ proved - complete|shostak|0.174|
|digraph_induction_edge|✅ proved - complete|shostak|0.185|

## `ind_paths`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|independent?_TCC1|✅ proved - complete|shostak|0.252|
|independent?_TCC2|✅ proved - complete|shostak|0.204|
|independent?_comm|✅ proved - complete|shostak|0.184|
|independent_ne|✅ proved - complete|shostak|0.180|
|ind_path_set_2|✅ proved - complete|shostak|0.252|
|internal_verts_TCC1|✅ proved - complete|shostak|0.200|
|internal_verts_TCC2|✅ proved - complete|shostak|0.240|
|indep?_lem|✅ proved - complete|shostak|0.224|

## `wgt_digraphs_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|min_walk?_TCC1|✅ proved - complete|shostak|0.254|
|min_walk?_TCC2|✅ proved - complete|shostak|0.203|
|min_walk?_TCC3|✅ proved - complete|shostak|0.200|
|min_wgt_TCC1|✅ proved - complete|shostak|0.233|
|min_wgt_TCC2|✅ proved - complete|shostak|0.191|
|min_wgt_TCC3|✅ proved - complete|shostak|0.215|
|walk_member_set_min_TCC1|✅ proved - complete|shostak|0.224|
|walk_member_set_min|✅ proved - complete|shostak|0.267|
|wgt_min_walk_choose_TCC1|✅ proved - complete|shostak|0.252|
|wgt_min_walk_choose_TCC2|✅ proved - complete|shostak|0.234|
|wgt_min_walk_choose_TCC3|✅ proved - complete|shostak|0.345|
|wgt_min_walk_choose_TCC4|✅ proved - complete|shostak|0.194|
|wgt_min_walk_choose|✅ proved - complete|shostak|0.369|
|min_walk_min_wgt|✅ proved - complete|shostak|0.193|
|sub_min_walk_nonempty_TCC1|✅ proved - complete|shostak|0.233|
|sub_min_walk_nonempty|✅ proved - complete|shostak|28.536|
|sub_min_walk_is_min_TCC1|✅ proved - complete|shostak|0.239|
|sub_min_walk_is_min_TCC2|✅ proved - complete|shostak|0.219|
|sub_min_walk_is_min|✅ proved - complete|shostak|29.414|

## `Eulerian`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|no_repeat_subseq?_TCC1|✅ proved - complete|shostak|0.236|
|no_repeat_subseq?_TCC2|✅ proved - complete|shostak|0.188|
|no_repeat_subseq?_TCC3|✅ proved - complete|shostak|0.190|
|no_repeat_subseq?_TCC4|✅ proved - complete|shostak|0.190|
|cycle_is_pre_Eulerian_circuit|✅ proved - complete|shostak|0.250|
|pre_Eulerian_circuit_is_a_circuit|✅ proved - complete|shostak|0.186|
|Eulerian_circuit_is_circuit|✅ proved - complete|shostak|0.200|
|Eulerian_walk_is_Eulerian_circuit|✅ proved - complete|shostak|0.187|
|circuit_subwalk_pre_Eulerian_TCC1|✅ proved - complete|shostak|0.225|
|circuit_subwalk_pre_Eulerian|✅ proved - complete|shostak|0.195|
|pre_Eulerian_circuit_prefix_TCC1|✅ proved - complete|shostak|0.235|
|pre_Eulerian_circuit_prefix|✅ proved - incomplete|shostak|0.203|
|pre_Eulerian_circuit_o_circuit_TCC1|✅ proved - incomplete|shostak|0.338|
|pre_Eulerian_circuit_o_circuit|✅ proved - incomplete|shostak|0.195|

## `digraphs_all_cycles`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|vertsl?_is_vertlist|✅ proved - incomplete|shostak|0.332|
|walk_eq_TCC1|✅ proved - incomplete|shostak|0.322|
|walk_eq_TCC2|✅ proved - incomplete|shostak|4.385|
|walki2walk_TCC1|✅ proved - incomplete|shostak|0.241|
|walki2walk_TCC2|✅ proved - incomplete|shostak|0.620|
|walki2walk_TCC3|✅ proved - incomplete|shostak|0.524|
|walk2walki_rec_TCC1|✅ proved - incomplete|shostak|0.337|
|walk2walki_rec_TCC2|✅ proved - incomplete|shostak|4.630|
|walk2walki_rec_TCC3|✅ proved - incomplete|shostak|0.242|
|walk2walki_rec_TCC4|✅ proved - incomplete|shostak|0.201|
|walk2walki_rec_TCC5|✅ proved - incomplete|shostak|0.262|
|walk2walki_rec_TCC6|✅ proved - incomplete|shostak|0.342|
|walk2walki_rec_TCC7|✅ proved - incomplete|shostak|0.244|
|walk2walki_rec_TCC8|✅ proved - incomplete|shostak|0.000|
|walk2walki_TCC1|✅ proved - incomplete|shostak|0.241|
|walk2walki_TCC2|✅ proved - incomplete|shostak|0.248|
|w2wi_circuit|✅ proved - incomplete|shostak|0.369|
|w2wi_cycle_TCC1|✅ proved - incomplete|shostak|0.213|
|w2wi_cycle|✅ proved - incomplete|shostak|0.530|
|circuit_walk_eq|✅ proved - incomplete|shostak|0.368|
|cycle_walk_eq|✅ proved - incomplete|shostak|1.495|
|walk_eq_inj_1|✅ proved - incomplete|shostak|0.253|
|cyclesi2cycles_TCC1|✅ proved - incomplete|shostak|0.222|
|cyclesi2cycles_TCC2|✅ proved - incomplete|shostak|0.339|
|cyclesi2cycles_TCC3|✅ proved - incomplete|shostak|0.502|
|cyclesi2cycles_TCC4|✅ proved - incomplete|shostak|0.231|
|cyclesi2cycles_TCC5|✅ proved - incomplete|shostak|0.440|
|cyclesi2cycles_TCC6|✅ proved - incomplete|shostak|0.275|
|cyclesi2cycles_TCC7|✅ proved - incomplete|shostak|0.925|
|cac2dac_rec_TCC1|✅ proved - incomplete|shostak|0.380|
|cac2dac_rec_TCC2|✅ proved - incomplete|shostak|0.285|
|cac2dac_rec_TCC3|✅ proved - incomplete|shostak|0.415|
|cac2dac_rec_TCC4|✅ proved - incomplete|shostak|0.325|
|cac2dac_rec_TCC5|✅ proved - incomplete|shostak|0.257|
|cac2dac_rec_TCC6|✅ proved - incomplete|shostak|0.435|
|cac2dac_rec_TCC7|✅ proved - incomplete|shostak|0.389|
|cac2dac_rec_TCC8|✅ proved - incomplete|shostak|1.362|
|cac2dac_rec_TCC9|✅ proved - incomplete|shostak|0.411|
|cac2dac_rec_TCC10|✅ proved - incomplete|shostak|0.519|
|cac2dac_rec_TCC11|✅ proved - incomplete|shostak|1.539|
|cac2dac_TCC1|✅ proved - incomplete|shostak|0.367|
|cac2dac_TCC2|✅ proved - incomplete|shostak|0.363|
|cac2dac_TCC3|✅ proved - incomplete|shostak|0.288|
|cac2dac_TCC4|✅ proved - incomplete|shostak|0.000|
|digraph_all_cycles_TCC1|✅ proved - incomplete|shostak|0.192|

## `c_digraphs_digraphs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|eq_TCC1|✅ proved - incomplete|shostak|0.325|
|to_digraph_TCC1|✅ proved - complete|shostak|0.239|
|to_digraph_TCC2|✅ proved - complete|shostak|0.232|
|to_digraph_TCC3|✅ proved - complete|shostak|0.275|
|to_digraph_TCC4|✅ proved - incomplete|shostak|2.017|
|to_digraph_TCC5|✅ proved - complete|shostak|0.255|
|to_digraph_TCC6|✅ proved - complete|shostak|0.610|
|to_digraph_TCC7|✅ proved - incomplete|shostak|0.513|
|no_rep_vertsl|✅ proved - incomplete|shostak|0.228|
|vertsl_TCC1|✅ proved - incomplete|shostak|0.230|
|to_cdigraph_vl_TCC1|✅ proved - incomplete|shostak|0.201|
|to_cdigraph_vl_TCC2|✅ proved - incomplete|shostak|0.921|
|eq_digraph|✅ proved - incomplete|shostak|1.235|
|eq_cdigraph|✅ proved - incomplete|shostak|0.000|
|eq_same_size|✅ proved - incomplete|shostak|0.221|

## `c_digraphs_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|loi_append|✅ proved - incomplete|shostak|0.271|
|loi_permutation|✅ proved - incomplete|shostak|0.260|
|sem_eq_TCC1|✅ proved - incomplete|shostak|0.260|
|sem_eq_TCC2|✅ proved - incomplete|shostak|0.249|
|sem_eq_TCC3|✅ proved - incomplete|shostak|0.293|
|sem_eq_TCC4|✅ proved - incomplete|shostak|0.298|
|sem_eq_TCC5|✅ proved - incomplete|shostak|0.935|
|node_TCC1|✅ proved - complete|shostak|0.212|
|node_TCC2|✅ proved - incomplete|shostak|0.200|
|vert_finite|✅ proved - incomplete|shostak|0.247|
|edges_TCC1|✅ proved - complete|shostak|0.192|
|edges_TCC2|✅ proved - complete|shostak|0.190|
|edges_TCC3|✅ proved - incomplete|shostak|0.254|
|edges_finite|✅ proved - incomplete|shostak|0.394|
|edges_list_vert_adjs_TCC1|✅ proved - complete|shostak|0.226|
|edges_list_vert_adjs_TCC2|✅ proved - incomplete|shostak|0.256|
|edges_list_vert_adjs_TCC3|✅ proved - complete|shostak|0.208|
|edges_list_vert_adjs_TCC4|✅ proved - incomplete|shostak|0.331|
|edges_list_vert_adjs_TCC5|✅ proved - incomplete|shostak|0.266|
|edges_list_vert_adjs_TCC6|✅ proved - incomplete|shostak|0.275|
|edges_list_vert_adjs_TCC7|✅ proved - incomplete|shostak|0.214|
|edges_list_vert_adjs_TCC8|✅ proved - incomplete|shostak|0.307|
|edges_list_vert_adjs_TCC9|✅ proved - incomplete|shostak|0.547|
|edges_list_vert_TCC1|✅ proved - incomplete|shostak|0.200|
|edges_list_vert_TCC2|✅ proved - incomplete|shostak|0.294|
|edges_list_verts_TCC1|✅ proved - incomplete|shostak|0.327|
|edges_list_verts_TCC2|✅ proved - incomplete|shostak|0.213|
|edges_list_verts_TCC3|✅ proved - complete|shostak|0.265|
|edges_list_verts_TCC4|✅ proved - incomplete|shostak|0.431|
|edges_list_TCC1|✅ proved - incomplete|shostak|0.184|
|edges_list_TCC2|✅ proved - incomplete|shostak|0.215|
|edges_list_TCC3|✅ proved - incomplete|shostak|0.527|
|edges_set_to_list_for_TCC1|✅ proved - incomplete|shostak|0.445|
|edges_set_to_list_for_TCC2|✅ proved - complete|shostak|0.228|
|edges_set_to_list_for_TCC3|✅ proved - complete|shostak|0.939|
|edges_set_to_list_for_TCC4|✅ proved - complete|shostak|0.203|
|edges_set_to_list_for_TCC5|✅ proved - incomplete|shostak|0.636|
|edges_set_to_list_for_TCC6|✅ proved - complete|shostak|0.233|
|edges_set_to_list_for_TCC7|✅ proved - complete|shostak|0.224|
|edges_set_to_list_for_TCC8|✅ proved - incomplete|shostak|0.378|
|edges_set_to_list_for_TCC9|✅ proved - complete|shostak|0.193|
|edges_set_to_list_rec_TCC1|✅ proved - incomplete|shostak|0.210|
|edges_set_to_list_rec_TCC2|✅ proved - incomplete|shostak|0.230|
|edges_set_to_list_rec_TCC3|✅ proved - incomplete|shostak|0.417|
|edges_set_to_list_rec_TCC4|✅ proved - incomplete|shostak|0.226|
|edges_set_to_list_rec_TCC5|✅ proved - incomplete|shostak|0.206|
|edges_set_to_list_rec_TCC6|✅ proved - incomplete|shostak|0.215|
|edges_set_to_list_rec_TCC7|✅ proved - incomplete|shostak|0.256|
|edges_set_to_list_rec_TCC8|✅ proved - incomplete|shostak|0.000|
|edges_set_to_list_TCC1|✅ proved - complete|shostak|0.227|
|edges_set_to_list_TCC2|✅ proved - incomplete|shostak|0.188|
|edges_set_to_list_TCC3|✅ proved - incomplete|shostak|0.360|
|make_TCC1|✅ proved - incomplete|shostak|0.275|
|make_TCC2|✅ proved - incomplete|shostak|0.836|
|empty_cd_TCC1|✅ proved - complete|shostak|0.255|
|add_vert_TCC1|✅ proved - incomplete|shostak|0.716|
|add_edge_TCC1|✅ proved - incomplete|shostak|0.230|
|add_edge_TCC2|✅ proved - incomplete|shostak|0.255|
|add_edge_TCC3|✅ proved - incomplete|shostak|0.868|

## `c_digraph_all_cycles`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|loi_cons|✅ proved - complete|shostak|0.302|
|walk?_TCC1|✅ proved - complete|shostak|0.187|
|walk?_TCC2|✅ proved - complete|shostak|0.190|
|walk?_TCC3|✅ proved - complete|shostak|0.847|
|walk_eq_TCC1|✅ proved - incomplete|shostak|0.496|
|walk_eq_TCC2|✅ proved - incomplete|shostak|2.436|
|walk_append_TCC1|✅ proved - complete|shostak|0.252|
|walk_append_TCC2|✅ proved - incomplete|shostak|0.923|
|walk_append_TCC3|✅ proved - incomplete|shostak|0.203|
|walk_append|✅ proved - incomplete|shostak|0.000|
|walk_eq_inj_1|✅ proved - incomplete|shostak|0.245|
|circuit?_TCC1|✅ proved - complete|shostak|0.230|
|circuit?_TCC2|✅ proved - complete|shostak|0.233|
|no_repetitions_append|✅ proved - incomplete|shostak|1.165|
|no_repetitions_prefix|✅ proved - incomplete|shostak|0.330|
|norep_loi_length|✅ proved - incomplete|shostak|0.437|
|cycle?_TCC1|✅ proved - incomplete|shostak|0.272|
|cycle_prefix|✅ proved - incomplete|shostak|0.561|
|cycle_construction_loi|✅ proved - incomplete|shostak|0.266|
|cycle_construction_TCC1|✅ proved - incomplete|shostak|0.196|
|cycle_construction_TCC2|✅ proved - incomplete|shostak|0.238|
|cycle_construction_TCC3|✅ proved - incomplete|shostak|0.230|
|cycle_construction_TCC4|✅ proved - incomplete|shostak|0.616|
|cycle_construction|✅ proved - incomplete|shostak|0.576|
|circuit_walk_eq|✅ proved - incomplete|shostak|0.972|
|cycle_walk_eq|✅ proved - incomplete|shostak|1.695|
|cycle_construction_size_TCC1|✅ proved - incomplete|shostak|0.202|
|cycle_construction_size_TCC2|✅ proved - complete|shostak|0.320|
|cycle_construction_size|✅ proved - incomplete|shostak|0.299|
|cycle_construction_grow_TCC1|✅ proved - incomplete|shostak|0.368|
|cycle_construction_grow_TCC2|✅ proved - incomplete|shostak|0.267|
|cycle_construction_grow_TCC3|✅ proved - incomplete|shostak|0.205|
|cycle_construction_grow_TCC4|✅ proved - incomplete|shostak|0.190|
|cycle_construction_grow|✅ proved - incomplete|shostak|0.673|
|cycles_from_measure_TCC1|✅ proved - incomplete|shostak|0.186|
|cycles_from_measure_TCC2|✅ proved - complete|shostak|0.353|
|cycles_from_measure_TCC3|✅ proved - incomplete|shostak|0.209|
|cycles_from_TCC1|✅ proved - incomplete|shostak|0.354|
|cycles_from_TCC2|✅ proved - incomplete|shostak|0.649|
|cycles_from_TCC3|✅ proved - incomplete|shostak|0.210|
|cycles_from_TCC4|✅ proved - incomplete|shostak|0.389|
|cycles_from_TCC5|✅ proved - incomplete|shostak|0.000|
|cycles_from_TCC6|✅ proved - incomplete|shostak|0.215|
|cycles_from_TCC7|✅ proved - incomplete|shostak|0.374|
|cycles_from_TCC8|✅ proved - incomplete|shostak|0.785|
|cycles_from_TCC9|✅ proved - incomplete|shostak|0.236|
|cycles_from_TCC10|✅ proved - incomplete|shostak|0.241|
|cycles_from_TCC11|✅ proved - incomplete|shostak|0.239|
|cycles_from_TCC12|✅ proved - incomplete|shostak|0.337|
|cycles_from_TCC13|✅ proved - incomplete|shostak|0.278|
|cycles_from_TCC14|✅ proved - incomplete|shostak|0.386|
|cycles_from_TCC15|✅ proved - incomplete|shostak|2.525|
|cycles_for_TCC1|✅ proved - incomplete|shostak|0.279|
|cycles_for_TCC2|✅ proved - incomplete|shostak|0.534|
|cycles_for_TCC3|✅ proved - complete|shostak|0.270|
|cycles_for_TCC4|✅ proved - incomplete|shostak|0.251|
|cycles_for_TCC5|✅ proved - incomplete|shostak|0.615|
|all_cycles_rec_TCC1|✅ proved - incomplete|shostak|0.239|
|all_cycles_rec_TCC2|✅ proved - incomplete|shostak|0.240|
|all_cycles_rec_TCC3|✅ proved - complete|shostak|0.270|
|all_cycles_rec_TCC4|✅ proved - complete|shostak|0.199|
|all_cycles_rec_TCC5|✅ proved - incomplete|shostak|0.247|
|all_cycles_rec_TCC6|✅ proved - incomplete|shostak|1.042|
|all_cycles_TCC1|✅ proved - incomplete|shostak|0.278|
|all_cycles_TCC2|✅ proved - incomplete|shostak|0.291|
|all_cycles_TCC3|✅ proved - complete|shostak|0.217|
|w?2w_TCC1|✅ proved - complete|shostak|0.562|
|w?2w_TCC2|✅ proved - incomplete|shostak|1.176|
|w2w?_rec_TCC1|✅ proved - incomplete|shostak|0.000|
|w2w?_rec_TCC2|✅ proved - incomplete|shostak|0.433|
|w2w?_rec_TCC3|✅ proved - incomplete|shostak|0.212|
|w2w?_rec_TCC4|✅ proved - incomplete|shostak|0.856|
|w2w?_rec_TCC5|✅ proved - incomplete|shostak|0.960|
|w2w?_rec_TCC6|✅ proved - incomplete|shostak|0.871|
|w2w?_rec_TCC7|✅ proved - incomplete|shostak|1.766|
|w2w?_TCC1|✅ proved - incomplete|shostak|0.423|
|w2w?_TCC2|✅ proved - incomplete|shostak|0.248|
|w2w?_circuit|✅ proved - incomplete|shostak|0.336|
|w2w?_cycle_TCC1|✅ proved - incomplete|shostak|0.214|
|w2w?_cycle|✅ proved - incomplete|shostak|0.501|
|lc?2lw_TCC1|✅ proved - incomplete|shostak|0.211|
|lc?2lw_TCC2|✅ proved - incomplete|shostak|0.455|
|lc?2lw_TCC3|✅ proved - incomplete|shostak|1.072|
|lc?2lw_TCC4|✅ proved - incomplete|shostak|0.320|
|lc?2lw_TCC5|✅ proved - incomplete|shostak|0.403|
|lc?2lw_TCC6|✅ proved - incomplete|shostak|1.358|
|ac2vl_rec_TCC1|✅ proved - incomplete|shostak|0.266|
|ac2vl_rec_TCC2|✅ proved - incomplete|shostak|1.164|
|ac2vl_rec_TCC3|✅ proved - incomplete|shostak|0.263|
|ac2vl_rec_TCC4|✅ proved - incomplete|shostak|0.000|
|ac2vl_rec_TCC5|✅ proved - incomplete|shostak|0.367|
|ac2vl_rec_TCC6|✅ proved - incomplete|shostak|0.328|
|ac2vl_rec_TCC7|✅ proved - incomplete|shostak|1.794|
|ac2vl_rec_TCC8|✅ proved - incomplete|shostak|0.390|
|ac2vl_rec_TCC9|✅ proved - incomplete|shostak|0.440|
|ac2vl_rec_TCC10|✅ proved - incomplete|shostak|1.970|
|all_cycles_vl_TCC1|✅ proved - incomplete|shostak|0.215|
|all_cycles_vl_TCC2|✅ proved - incomplete|shostak|0.184|
|all_cycles_vl_TCC3|✅ proved - incomplete|shostak|0.249|
|all_cycles_vl_TCC4|✅ proved - incomplete|shostak|0.493|

## `c_cycles`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_cycles__TCC1|✅ proved - incomplete|shostak|0.263|

## `c_digraphs_imp`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cdigraphs_implement_digraphs_|✅ proved - incomplete|shostak|1.051|

## `c_digraphs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_digraphs__TCC1|✅ proved - incomplete|shostak|0.226|
|data_vert_list|✅ proved - incomplete|shostak|0.285|
|fully_connected_edges_TCC1|✅ proved - incomplete|shostak|0.217|
|fully_connected_edges_TCC2|✅ proved - incomplete|shostak|0.199|
|fully_connected_edges_TCC3|✅ proved - incomplete|shostak|0.311|
|fully_connected_edges_TCC4|✅ proved - incomplete|shostak|0.252|
|make_fully_connected_TCC1|✅ proved - incomplete|shostak|0.254|
|mfc_is_fully_connected|✅ proved - incomplete|shostak|0.318|

## `c_walks`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_walks__TCC1|✅ proved - incomplete|shostak|0.233|

## `c_paths`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_paths__TCC1|✅ proved - incomplete|shostak|0.233|

## `c_dags`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_dags__TCC1|✅ proved - incomplete|shostak|0.230|

## `c_circuits`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_circuits__TCC1|✅ proved - incomplete|shostak|0.234|

## `c_di_subgraphs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_di_subgraphs__TCC1|✅ proved - incomplete|shostak|0.232|

## `c_weighted_digraphs_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|weight_TCC1|✅ proved - incomplete|shostak|0.354|
|weight_TCC2|✅ proved - incomplete|shostak|0.218|
|weight_TCC3|✅ proved - incomplete|shostak|0.221|
|get_value_TCC1|✅ proved - complete|shostak|0.226|
|get_value_TCC2|✅ proved - complete|shostak|0.224|
|get_value_TCC3|✅ proved - complete|shostak|0.245|
|keys_no_rep?_TCC1|✅ proved - complete|shostak|0.246|
|keys_no_rep?_cdr|✅ proved - complete|shostak|0.319|
|keys_no_rep?_cons|✅ proved - incomplete|shostak|0.438|
|keys_no_rep?_no_rep|✅ proved - incomplete|shostak|0.290|
|keys_no_rep?_append|✅ proved - incomplete|shostak|1.020|
|get_val_no_rep_TCC1|✅ proved - complete|shostak|0.220|
|get_val_no_rep|✅ proved - incomplete|shostak|0.387|
|get_val_member|✅ proved - complete|shostak|0.241|
|get_wgt_TCC1|✅ proved - incomplete|shostak|0.219|

## `c_weighted_digraphs_imp`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_weighted_digraphs_abs_TCC1|✅ proved - incomplete|shostak|0.258|
|IMP_weighted_digraphs_abs_TCC2|✅ proved - incomplete|shostak|0.000|
|cwdigraphs_implement_wdigraphs_|✅ proved - incomplete|shostak|1.064|

## `c_weighted_digraphs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_weighted_digraphs__TCC1|✅ proved - incomplete|shostak|0.296|
|IMP_weighted_digraphs__TCC2|✅ proved - incomplete|shostak|0.203|
|IMP_weighted_digraphs__TCC3|✅ proved - incomplete|shostak|0.200|

## `c_circuit_decomp`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_circuit_decomp__TCC1|✅ proved - incomplete|shostak|0.246|

## `c_topological_sort`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|topological_ordering?_TCC1|✅ proved - incomplete|shostak|0.494|
|topological_ordering?_TCC2|✅ proved - incomplete|shostak|0.420|
|topological_ordering_path_TCC1|✅ proved - incomplete|shostak|0.931|
|topological_ordering_path_TCC2|✅ proved - incomplete|shostak|0.921|
|topological_ordering_path|✅ proved - incomplete|shostak|1.747|
|temp_count_same|✅ proved - complete|shostak|0.263|
|temp_count_incr|✅ proved - incomplete|shostak|0.471|
|temp_count_bound|✅ proved - complete|shostak|0.244|
|perm_count_same|✅ proved - complete|shostak|0.284|
|perm_count_same2|✅ proved - complete|shostak|0.290|
|perm_count_incr|✅ proved - complete|shostak|0.284|
|perm_count_bound|✅ proved - complete|shostak|0.329|
|greater_marking_update|✅ proved - complete|shostak|0.223|
|greater_marking_temp_count|✅ proved - complete|shostak|0.304|
|greater_marking_perm_count|✅ proved - complete|shostak|0.511|
|visit_TCC1|✅ proved - incomplete|shostak|0.210|
|visit_TCC2|✅ proved - incomplete|shostak|0.276|
|visit_TCC3|✅ proved - incomplete|shostak|0.280|
|visit_TCC4|✅ proved - incomplete|shostak|0.263|
|visit_TCC5|✅ proved - incomplete|shostak|0.245|
|visit_TCC6|✅ proved - incomplete|shostak|0.253|
|visit_TCC7|✅ proved - complete|shostak|0.245|
|visit_TCC8|✅ proved - complete|shostak|0.234|
|visit_TCC9|✅ proved - incomplete|shostak|0.438|
|visit_TCC10|✅ proved - incomplete|shostak|0.000|
|visit_TCC11|✅ proved - incomplete|shostak|1.024|
|visit_TCC12|✅ proved - incomplete|shostak|1.141|
|visit_TCC13|✅ proved - incomplete|shostak|0.241|
|visit_TCC14|✅ proved - incomplete|shostak|1.222|
|visit_TCC15|✅ proved - incomplete|shostak|0.252|
|visit_TCC16|✅ proved - incomplete|shostak|2.359|
|visit_TCC17|✅ proved - incomplete|shostak|0.265|
|visit_TCC18|✅ proved - incomplete|shostak|1.789|
|visit_TCC19|✅ proved - incomplete|shostak|0.515|
|visit_TCC20|✅ proved - incomplete|shostak|0.409|
|visit_TCC21|✅ proved - incomplete|shostak|0.000|
|visit_TCC22|✅ proved - incomplete|shostak|3.701|
|visit_TCC23|✅ proved - incomplete|shostak|5.148|
|visit_TCC24|✅ proved - incomplete|shostak|0.000|
|visit_TCC25|✅ proved - incomplete|shostak|2.127|
|visit_TCC26|✅ proved - incomplete|shostak|9.805|
|topological_sort_aux_TCC1|✅ proved - incomplete|shostak|0.530|
|topological_sort_aux_TCC2|✅ proved - incomplete|shostak|0.000|
|topological_sort_aux_TCC3|✅ proved - incomplete|shostak|0.993|
|topological_sort_aux_TCC4|✅ proved - incomplete|shostak|0.873|
|topological_sort_aux_TCC5|✅ proved - incomplete|shostak|1.406|
|topological_sort_aux_TCC6|✅ proved - incomplete|shostak|0.224|
|topological_sort_aux_TCC7|✅ proved - incomplete|shostak|0.260|
|topological_sort_aux_TCC8|✅ proved - incomplete|shostak|0.886|
|topological_sort_aux_TCC9|✅ proved - incomplete|shostak|1.081|
|topological_sort_aux_TCC10|✅ proved - incomplete|shostak|0.982|
|topological_sort_aux_TCC11|✅ proved - incomplete|shostak|1.240|
|topological_sort_aux_TCC12|✅ proved - incomplete|shostak|0.301|
|topological_sort_aux_TCC13|✅ proved - incomplete|shostak|0.000|
|topological_sort_aux_TCC14|✅ proved - incomplete|shostak|0.305|
|topological_sort_aux_TCC15|✅ proved - incomplete|shostak|0.486|
|topological_sort_aux_TCC16|✅ proved - incomplete|shostak|0.426|
|topological_sort_aux_TCC17|✅ proved - incomplete|shostak|0.299|
|topological_sort_aux_TCC18|✅ proved - incomplete|shostak|2.281|
|member_length|✅ proved - incomplete|shostak|0.445|
|topological_sort_TCC1|✅ proved - incomplete|shostak|0.238|
|topological_sort_TCC2|✅ proved - incomplete|shostak|1.270|
|topological_sort_TCC3|✅ proved - incomplete|shostak|0.258|
|topological_sort_TCC4|✅ proved - complete|shostak|0.247|
|topological_sort_TCC5|✅ proved - complete|shostak|0.220|
|topological_sort_TCC6|✅ proved - incomplete|shostak|1.088|
|topological_sort_TCC7|✅ proved - incomplete|shostak|0.290|
|topological_sort_TCC8|✅ proved - incomplete|shostak|0.313|
|topological_sort_TCC9|✅ proved - incomplete|shostak|2.222|
|topological_sort_exists|✅ proved - incomplete|shostak|0.329|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Mac OS X (Intel)] (Nov 14, 2020 23:13)|
| Patch Version| n/a|
| Library Path| `/Applications/pvs-7.1.0/pvslib/`<br/>`/Applications/pvs-7.1.0/lib/`<br/>`/Applications/pvs-7.1.0/pvslib/float/`<br/>`/Applications/pvs-7.1.0/pvslib/pvsio_utils/`|
| Loaded Patches | `/Applications/pvs-7.1.0/pvslib/.pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230712-static-update.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230710-tcc-gen.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230707-defattach.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230706-extrategies.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210323-wish.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210225-cl2pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210715a.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210715.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210707.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210706.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210511.lisp`|
