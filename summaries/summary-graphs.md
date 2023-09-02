# Summary for `graphs`
Run started at 17:3:5 9/1/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **792**   | **792**    | **792**    | **0**  | **5:24.738 s**   |
|top|0|0|0|0|0.000|
|graphs|14|14|14|0|1.590|
|graph_deg|16|16|16|0|2.126|
|graph_ops|22|22|22|0|2.348|
|graph_deg_sum|8|8|8|0|2.208|
|subgraphs|7|7|7|0|0.712|
|walks|46|46|46|0|8.476|
|paths|17|17|17|0|2.983|
|path_ops|11|11|11|0|4.971|
|sep_sets|13|13|13|0|2.540|
|walk_inductions|2|2|2|0|0.203|
|path_circ|65|65|65|0|26.534|
|circuits|4|4|4|0|0.507|
|path_lems|1|1|1|0|0.147|
|subgraphs_from_walk|9|9|9|0|1.231|
|graph_from_edges|10|10|10|0|1.152|
|max_subgraphs|7|7|7|0|0.864|
|max_subtrees|7|7|7|0|1.259|
|trees|9|9|9|0|4.919|
|graph_inductions|5|5|5|0|0.620|
|tree_circ|6|6|6|0|1.215|
|circuit_deg|3|3|3|0|2.620|
|subtrees|8|8|8|0|1.944|
|graph_conn_defs|3|3|3|0|0.325|
|graph_connected|4|4|4|0|0.556|
|graph_conn_piece|9|9|9|0|2.106|
|graph_piece_path|3|3|3|0|1.417|
|graph_path_conn|5|5|5|0|2.093|
|graph_complected|12|12|12|0|2.611|
|ramsey_new|8|8|8|0|3.001|
|min_walk_reduced|4|4|4|0|1.993|
|min_walks|4|4|4|0|0.720|
|reduce_walks|11|11|11|0|2.493|
|menger|2|2|2|0|0.671|
|ind_paths|8|8|8|0|1.082|
|k_menger|110|110|110|0|1:24.207|
|easy_menger|2|2|2|0|1.027|
|subgraph_paths|2|2|2|0|0.317|
|complem|45|45|45|0|17.110|
|los_graph|2|2|2|0|0.265|
|sep_set_lems|12|12|12|0|2.673|
|tree_paths|31|31|31|0|16.745|
|cycles|7|7|7|0|1.246|
|cycle_deg|14|14|14|0|9.359|
|old_menger|3|3|3|0|1.447|
|h_menger|14|14|14|0|4.903|
|meng_scaff_prelude|52|52|52|0|21.412|
|meng_scaff|33|33|33|0|12.187|
|meng_scaff_defs|21|21|21|0|3.651|
|mantel|26|26|26|0|5.968|
|graph_pair|6|6|6|0|1.159|
|mappings|49|49|49|0|50.825|
## Detailed Summary 
## `top`
No formula declaration found.
## `graphs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|edg_TCC1|✅ proved - complete|shostak|0.128|
|edge?_TCC1|✅ proved - incomplete|shostak|0.125|
|edge?_comm|✅ proved - incomplete|shostak|0.093|
|edges_vert|✅ proved - incomplete|shostak|0.130|
|other_vert|✅ proved - incomplete|shostak|0.126|
|edge_has_2_verts|✅ proved - incomplete|shostak|0.110|
|edges_vert_in|✅ proved - incomplete|shostak|0.094|
|vert_in|✅ proved - incomplete|shostak|0.095|
|empty?_rew|✅ proved - complete|shostak|0.090|
|edges_of_empty|✅ proved - incomplete|shostak|0.096|
|singleton_edges|✅ proved - incomplete|shostak|0.126|
|edge_in_card_gt_1|✅ proved - incomplete|shostak|0.181|
|not_singleton_2_vert|✅ proved - complete|shostak|0.110|
|singleton_graph_TCC1|✅ proved - complete|shostak|0.086|

## `graph_deg`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|incident_edges_TCC1|✅ proved - complete|shostak|0.125|
|incident_edges_subset|✅ proved - complete|shostak|0.100|
|incident_edges_emptyset|✅ proved - complete|shostak|0.095|
|deg_del_edge|✅ proved - incomplete|shostak|0.218|
|deg_del_edge2|✅ proved - incomplete|shostak|0.124|
|deg_del_edge3|✅ proved - complete|shostak|0.125|
|deg_del_edge_ge|✅ proved - incomplete|shostak|0.116|
|deg_del_edge_le|✅ proved - incomplete|shostak|0.115|
|deg_edge_exists|✅ proved - complete|shostak|0.110|
|deg_to_card|✅ proved - complete|shostak|0.173|
|del_vert_deg_0|✅ proved - incomplete|shostak|0.125|
|deg_del_vert_TCC1|✅ proved - complete|shostak|0.086|
|deg_del_vert|✅ proved - incomplete|shostak|0.256|
|del_vert_not_incident|✅ proved - incomplete|shostak|0.116|
|singleton_deg|✅ proved - incomplete|shostak|0.126|
|deg_1_sing|✅ proved - complete|shostak|0.116|

## `graph_ops`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|union_TCC1|✅ proved - complete|shostak|0.115|
|del_vert_TCC1|✅ proved - complete|shostak|0.100|
|del_vert_TCC2|✅ proved - incomplete|shostak|0.127|
|del_edge_TCC1|✅ proved - complete|shostak|0.097|
|adjacent_TCC1|✅ proved - incomplete|shostak|0.095|
|del_vert_still_in|✅ proved - incomplete|shostak|0.090|
|size_del_vert|✅ proved - incomplete|shostak|0.103|
|del_vert_le|✅ proved - incomplete|shostak|0.120|
|del_vert_ge|✅ proved - incomplete|shostak|0.107|
|edge_in_del_vert|✅ proved - incomplete|shostak|0.090|
|edges_del_vert|✅ proved - incomplete|shostak|0.067|
|del_vert_comm|✅ proved - incomplete|shostak|0.146|
|del_vert_empty?|✅ proved - incomplete|shostak|0.110|
|del_edge_lem|✅ proved - complete|shostak|0.078|
|del_edge_lem2|✅ proved - complete|shostak|0.100|
|del_edge_lem3|✅ proved - complete|shostak|0.096|
|del_edge_lem5|✅ proved - complete|shostak|0.120|
|vert_del_edge|✅ proved - complete|shostak|0.087|
|del_edge_num|✅ proved - complete|shostak|0.146|
|del_edge_singleton|✅ proved - complete|shostak|0.076|
|del_vert_edge_comm|✅ proved - incomplete|shostak|0.140|
|del_vert_edge|✅ proved - incomplete|shostak|0.138|

## `graph_deg_sum`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|deg_lem0|✅ proved - incomplete|shostak|0.242|
|deg_lem2_TCC1|✅ proved - incomplete|shostak|0.086|
|deg_lem2|✅ proved - incomplete|shostak|0.217|
|edge_induction|✅ proved - complete|shostak|0.100|
|deg_thm|✅ proved - incomplete|shostak|0.868|
|subgraph_deg|✅ proved - complete|shostak|0.223|
|sum_gt_bound|✅ proved - incomplete|shostak|0.287|
|deg_gt_one|✅ proved - incomplete|shostak|0.185|

## `subgraphs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|finite_vert_subset|✅ proved - complete|shostak|0.115|
|subgraph_TCC1|✅ proved - complete|shostak|0.110|
|subgraph_TCC2|✅ proved - complete|shostak|0.086|
|subgraph_TCC3|✅ proved - complete|shostak|0.120|
|subgraph_vert_sub|✅ proved - complete|shostak|0.096|
|subgraph_lem|✅ proved - complete|shostak|0.080|
|subgraph_smaller|✅ proved - complete|shostak|0.105|

## `walks`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|walk?_TCC1|✅ proved - complete|shostak|0.124|
|walk?_TCC2|✅ proved - complete|shostak|0.130|
|list2prewalk_TCC1|✅ proved - complete|shostak|0.090|
|from?_TCC1|✅ proved - complete|shostak|0.076|
|from?_TCC2|✅ proved - complete|shostak|0.080|
|verts_of_TCC1|✅ proved - incomplete|shostak|0.188|
|edges_of_TCC1|✅ proved - complete|shostak|0.080|
|edges_of_TCC2|✅ proved - complete|shostak|0.090|
|edges_of_TCC3|✅ proved - incomplete|shostak|0.220|
|pre_circuit?_TCC1|✅ proved - incomplete|shostak|0.100|
|pre_circuit?_TCC2|✅ proved - incomplete|shostak|0.110|
|verts_in?_concat_TCC1|✅ proved - complete|shostak|0.117|
|verts_in?_concat|✅ proved - complete|shostak|0.176|
|verts_in?_caret_TCC1|✅ proved - complete|shostak|0.181|
|verts_in?_caret|✅ proved - complete|shostak|0.291|
|vert_seq_lem|✅ proved - complete|shostak|0.090|
|verts_of_subset|✅ proved - incomplete|shostak|0.097|
|edges_of_subset|✅ proved - incomplete|shostak|0.136|
|walk_verts_in|✅ proved - incomplete|shostak|0.090|
|walk_from_vert|✅ proved - incomplete|shostak|0.106|
|walk_edge_in|✅ proved - incomplete|shostak|0.166|
|trunc1_TCC1|✅ proved - complete|shostak|0.090|
|trunc1_TCC2|✅ proved - complete|shostak|0.137|
|add1_TCC1|✅ proved - complete|shostak|0.090|
|gen_seq1_is_walk|✅ proved - incomplete|shostak|0.095|
|edge_to_walk_TCC1|✅ proved - complete|shostak|0.080|
|edge_to_walk_TCC2|✅ proved - incomplete|shostak|0.100|
|edge_to_walk_TCC3|✅ proved - complete|shostak|0.097|
|edge_to_walk|✅ proved - incomplete|shostak|0.107|
|walk?_rev_TCC1|✅ proved - incomplete|shostak|0.110|
|walk?_rev|✅ proved - incomplete|shostak|0.176|
|walk?_reverse|✅ proved - incomplete|shostak|0.181|
|walk?_caret_TCC1|✅ proved - incomplete|shostak|0.236|
|walk?_caret|✅ proved - incomplete|shostak|0.291|
|l_trunc1_TCC1|✅ proved - complete|shostak|0.090|
|l_trunc1|✅ proved - complete|shostak|0.157|
|walk?_add1|✅ proved - incomplete|shostak|0.167|
|walk_concat_edge_TCC1|✅ proved - incomplete|shostak|0.145|
|walk_concat_edge|✅ proved - incomplete|shostak|0.332|
|walk_concat_TCC1|✅ proved - incomplete|shostak|0.177|
|walk_concat_TCC2|✅ proved - incomplete|shostak|0.241|
|walk_concat|✅ proved - incomplete|shostak|0.586|
|walk?_cut_TCC1|✅ proved - incomplete|shostak|0.107|
|walk?_cut_TCC2|✅ proved - incomplete|shostak|0.256|
|walk?_cut|✅ proved - incomplete|shostak|1.023|
|walk_merge|✅ proved - incomplete|shostak|0.667|

## `paths`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|path?_verts|✅ proved - incomplete|shostak|0.106|
|path_from_l|✅ proved - incomplete|shostak|0.116|
|path_from_in|✅ proved - incomplete|shostak|0.121|
|path?_caret_TCC1|✅ proved - incomplete|shostak|0.226|
|path?_caret|✅ proved - incomplete|shostak|0.459|
|path_from?_caret_TCC1|✅ proved - incomplete|shostak|0.253|
|path_from?_caret_TCC2|✅ proved - incomplete|shostak|0.171|
|path_from?_caret|✅ proved - incomplete|shostak|0.207|
|path?_rev_TCC1|✅ proved - incomplete|shostak|0.128|
|path?_rev|✅ proved - incomplete|shostak|0.000|
|path?_gen_seq2|✅ proved - incomplete|shostak|0.165|
|path?_add1_TCC1|✅ proved - incomplete|shostak|0.150|
|path?_add1|✅ proved - incomplete|shostak|0.282|
|path?_trunc1_TCC1|✅ proved - incomplete|shostak|0.146|
|path?_trunc1_TCC2|✅ proved - incomplete|shostak|0.110|
|path?_trunc1_TCC3|✅ proved - incomplete|shostak|0.137|
|path?_trunc1|✅ proved - incomplete|shostak|0.206|

## `path_ops`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|walk?_del_vert|✅ proved - incomplete|shostak|0.196|
|walk?_del_vert_not|✅ proved - incomplete|shostak|0.191|
|path?_del_vert|✅ proved - incomplete|shostak|0.110|
|path?_del_verts|✅ proved - incomplete|shostak|0.188|
|walk_to_path|✅ proved - incomplete|shostak|0.599|
|walk_to_path_less|✅ proved - incomplete|shostak|1.528|
|walk_to_path_from|✅ proved - incomplete|shostak|0.119|
|walk_to_path_from_less|✅ proved - incomplete|shostak|0.099|
|path_disjoint_TCC1|✅ proved - incomplete|shostak|0.221|
|path_disjoint_TCC2|✅ proved - incomplete|shostak|0.394|
|path_disjoint|✅ proved - incomplete|shostak|1.326|

## `sep_sets`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|del_verts_TCC1|✅ proved - complete|shostak|0.130|
|del_verts_TCC2|✅ proved - complete|shostak|0.090|
|sep_set_exists|✅ proved - incomplete|shostak|0.332|
|min_sep_set_TCC1|✅ proved - incomplete|shostak|0.080|
|min_sep_set_edge|✅ proved - incomplete|shostak|0.173|
|min_sep_set_card|✅ proved - incomplete|shostak|0.245|
|min_sep_set_seps|✅ proved - incomplete|shostak|0.165|
|min_sep_set_vert|✅ proved - incomplete|shostak|0.334|
|ends_not_in_min_sep_set|✅ proved - incomplete|shostak|0.090|
|walk?_del_verts_not|✅ proved - incomplete|shostak|0.203|
|adj_verts_TCC1|✅ proved - incomplete|shostak|0.155|
|adj_verts_lem|✅ proved - incomplete|shostak|0.217|
|sep_num_min|✅ proved - incomplete|shostak|0.326|

## `walk_inductions`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|walk_prep|✅ proved - complete|shostak|0.101|
|graph_induction_walk|✅ proved - complete|shostak|0.102|

## `path_circ`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|path_reduc|✅ proved - incomplete|shostak|0.269|
|trunc_long|✅ proved - complete|shostak|0.243|
|trunc_walk|✅ proved - incomplete|shostak|0.333|
|walks_concat_red_TCC1|✅ proved - incomplete|shostak|0.130|
|walks_concat_red_TCC2|✅ proved - incomplete|shostak|0.146|
|walks_concat_red_TCC3|✅ proved - incomplete|shostak|0.136|
|walks_concat_red_TCC4|✅ proved - incomplete|shostak|0.140|
|walks_concat_red_TCC5|✅ proved - incomplete|shostak|0.206|
|walks_concat_red_TCC6|✅ proved - incomplete|shostak|0.215|
|walks_concat_red_TCC7|✅ proved - incomplete|shostak|1.982|
|walks_concat_red|✅ proved - incomplete|shostak|0.764|
|index_rev_TCC1|✅ proved - incomplete|shostak|0.097|
|index_rev_TCC2|✅ proved - incomplete|shostak|0.090|
|index_rev_TCC3|✅ proved - incomplete|shostak|0.100|
|index_rev_TCC4|✅ proved - incomplete|shostak|0.119|
|index_rev|✅ proved - incomplete|shostak|0.100|
|rev_rev|✅ proved - incomplete|shostak|0.106|
|ind_rev_rev_TCC1|✅ proved - incomplete|shostak|0.090|
|ind_rev_rev_TCC2|✅ proved - complete|shostak|0.080|
|ind_rev_rev_TCC3|✅ proved - incomplete|shostak|0.117|
|ind_rev_rev_TCC4|✅ proved - incomplete|shostak|0.100|
|ind_rev_rev|✅ proved - incomplete|shostak|0.116|
|second_in_cat_TCC1|✅ proved - complete|shostak|0.110|
|second_in_cat_TCC2|✅ proved - incomplete|shostak|0.370|
|second_in_cat_TCC3|✅ proved - complete|shostak|0.150|
|second_in_cat|✅ proved - incomplete|shostak|0.430|
|sec_from_last_TCC1|✅ proved - complete|shostak|0.145|
|sec_from_last_TCC2|✅ proved - incomplete|shostak|0.286|
|sec_from_last|✅ proved - incomplete|shostak|0.321|
|prewalk_same|✅ proved - complete|shostak|0.136|
|compose_long_TCC1|✅ proved - complete|shostak|0.126|
|compose_long_TCC2|✅ proved - complete|shostak|0.116|
|compose_long|✅ proved - incomplete|shostak|0.305|
|red_compos_TCC1|✅ proved - incomplete|shostak|0.225|
|red_compos_TCC2|✅ proved - incomplete|shostak|0.220|
|red_compos_TCC3|✅ proved - incomplete|shostak|0.225|
|red_compos_TCC4|✅ proved - incomplete|shostak|1.292|
|red_compos|✅ proved - incomplete|shostak|3.721|
|cycl_red_compos_TCC1|✅ proved - incomplete|shostak|0.242|
|cycl_red_compos_TCC2|✅ proved - incomplete|shostak|0.232|
|cycl_red_compos|✅ proved - incomplete|shostak|4.589|
|walkers_TCC1|✅ proved - complete|shostak|0.080|
|walkers_TCC2|✅ proved - complete|shostak|0.090|
|walkers_TCC3|✅ proved - complete|shostak|0.090|
|walkers|✅ proved - complete|shostak|0.108|
|path_one_TCC1|✅ proved - incomplete|shostak|0.146|
|path_one|✅ proved - incomplete|shostak|0.345|
|rev_eq|✅ proved - incomplete|shostak|0.125|
|front_back_TCC1|✅ proved - complete|shostak|0.097|
|front_back|✅ proved - complete|shostak|0.110|
|walk_from_l|✅ proved - complete|shostak|0.106|
|plus_up_TCC1|✅ proved - complete|shostak|0.090|
|plus_up|✅ proved - complete|shostak|0.440|
|two_walks_TCC1|✅ proved - incomplete|shostak|0.345|
|two_walks|✅ proved - incomplete|shostak|0.161|
|back_short|✅ proved - incomplete|shostak|1.406|
|from_rev_TCC1|✅ proved - incomplete|shostak|0.100|
|from_rev|✅ proved - incomplete|shostak|0.110|
|front_short_TCC1|✅ proved - incomplete|shostak|0.214|
|front_short_TCC2|✅ proved - incomplete|shostak|0.227|
|front_short|✅ proved - incomplete|shostak|2.471|
|add1_rev_TCC1|✅ proved - complete|shostak|0.090|
|add1_rev_TCC2|✅ proved - complete|shostak|0.124|
|add1_rev_TCC3|✅ proved - incomplete|shostak|0.154|
|add1_rev|✅ proved - incomplete|shostak|0.385|

## `circuits`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|reducible?_TCC1|✅ proved - complete|shostak|0.123|
|reducible?_TCC2|✅ proved - complete|shostak|0.143|
|cyclically_reduced?_TCC1|✅ proved - complete|shostak|0.120|
|cyclically_reduced?_TCC2|✅ proved - complete|shostak|0.121|

## `path_lems`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Pigeon_hole|✅ proved - incomplete|shostak|0.147|

## `subgraphs_from_walk`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|G_from_TCC1|✅ proved - incomplete|shostak|0.232|
|G_from_vert|✅ proved - incomplete|shostak|0.090|
|vert_G_from|✅ proved - incomplete|shostak|0.095|
|edge?_G_from_TCC1|✅ proved - incomplete|shostak|0.090|
|edge?_G_from_TCC2|✅ proved - incomplete|shostak|0.090|
|edge?_G_from|✅ proved - incomplete|shostak|0.145|
|edge?_G_from_rev|✅ proved - incomplete|shostak|0.180|
|vert_G_from_not|✅ proved - incomplete|shostak|0.099|
|del_vert_subgraph|✅ proved - incomplete|shostak|0.210|

## `graph_from_edges`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|finite_lem|✅ proved - incomplete|shostak|0.210|
|Union_to_pred|✅ proved - complete|shostak|0.121|
|pred_to_Union|✅ proved - complete|shostak|0.100|
|verts_of_TCC1|✅ proved - incomplete|shostak|0.079|
|verts_from_TCC1|✅ proved - incomplete|shostak|0.132|
|verts_from_of|✅ proved - incomplete|shostak|0.100|
|graph_from_edgeset_TCC1|✅ proved - incomplete|shostak|0.150|
|graph_from_edgeset_rew1|✅ proved - incomplete|shostak|0.080|
|graph_from_edgeset_rew2|✅ proved - incomplete|shostak|0.090|
|no_isolated_verts|✅ proved - incomplete|shostak|0.090|

## `max_subgraphs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|prep0|✅ proved - complete|shostak|0.126|
|max_size_TCC1|✅ proved - complete|shostak|0.100|
|prep|✅ proved - incomplete|shostak|0.145|
|max_subgraph_TCC1|✅ proved - incomplete|shostak|0.220|
|max_subgraph_def|✅ proved - incomplete|shostak|0.070|
|max_subgraph_in|✅ proved - incomplete|shostak|0.093|
|max_subgraph_is_max|✅ proved - incomplete|shostak|0.110|

## `max_subtrees`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sing_is_tree|✅ proved - incomplete|shostak|0.121|
|tree_in|✅ proved - incomplete|shostak|0.549|
|max_subtree_TCC1|✅ proved - incomplete|shostak|0.093|
|max_subtree_TCC2|✅ proved - incomplete|shostak|0.000|
|max_subtree_tree|✅ proved - incomplete|shostak|0.190|
|max_subtree_subgraph|✅ proved - incomplete|shostak|0.116|
|max_subtree_max|✅ proved - incomplete|shostak|0.190|

## `trees`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|tree?_TCC1|✅ proved - incomplete|shostak|0.146|
|tree_nonempty|✅ proved - incomplete|shostak|0.115|
|tree_edge_card|✅ proved - incomplete|shostak|0.549|
|tree_edge_k|✅ proved - incomplete|shostak|0.168|
|tree_edge|✅ proved - incomplete|shostak|1.240|
|tree_edge_all|✅ proved - incomplete|shostak|0.090|
|del_tree_k|✅ proved - incomplete|shostak|0.182|
|del_tree|✅ proved - incomplete|shostak|2.339|
|del_tree_all|✅ proved - incomplete|shostak|0.090|

## `graph_inductions`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|size_prep|✅ proved - complete|shostak|0.202|
|graph_induction_vert|✅ proved - complete|shostak|0.109|
|graph_induction_vert_not|✅ proved - complete|shostak|0.100|
|num_edges_prep|✅ proved - complete|shostak|0.101|
|graph_induction_edge|✅ proved - complete|shostak|0.108|

## `tree_circ`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|exists_c_tree|✅ proved - incomplete|shostak|0.100|
|c_tree_TCC1|✅ proved - incomplete|shostak|0.086|
|tree_containing_lem|✅ proved - incomplete|shostak|0.245|
|tree_deg|✅ proved - incomplete|shostak|0.174|
|small_tree_lem|✅ proved - incomplete|shostak|0.175|
|tree_no_circuits|✅ proved - incomplete|shostak|0.435|

## `circuit_deg`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cir_deg_G|✅ proved - incomplete|shostak|0.275|
|circuit_deg|✅ proved - incomplete|shostak|1.950|
|circuit_subgraph_len_1|✅ proved - incomplete|shostak|0.395|

## `subtrees`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|walk_acr_TCC1|✅ proved - incomplete|shostak|0.110|
|walk_acr_TCC2|✅ proved - incomplete|shostak|0.160|
|walk_acr_TCC3|✅ proved - incomplete|shostak|0.169|
|walk_acr|✅ proved - incomplete|shostak|0.232|
|walk_acr2|✅ proved - incomplete|shostak|0.230|
|add_dbl_TCC1|✅ proved - incomplete|shostak|0.132|
|add_dbl|✅ proved - incomplete|shostak|0.109|
|max_tree_all_verts|✅ proved - incomplete|shostak|0.802|

## `graph_conn_defs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|connected?_TCC1|✅ proved - incomplete|shostak|0.110|
|path_connected?_TCC1|✅ proved - incomplete|shostak|0.110|
|path_connected?_TCC2|✅ proved - incomplete|shostak|0.105|

## `graph_connected`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|conn_eq_path|✅ proved - incomplete|shostak|0.150|
|path_eq_piece|✅ proved - incomplete|shostak|0.129|
|piece_eq_conn|✅ proved - incomplete|shostak|0.137|
|conn_eq_complected|✅ proved - incomplete|shostak|0.140|

## `graph_conn_piece`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|singleton_piece|✅ proved - complete|shostak|0.211|
|not_piece_has_2|✅ proved - complete|shostak|0.207|
|edge_not_across|✅ proved - complete|shostak|0.120|
|lem1|✅ proved - incomplete|shostak|0.263|
|H1P_not_empty|✅ proved - incomplete|shostak|0.190|
|cip0|✅ proved - incomplete|shostak|0.289|
|cip3|✅ proved - incomplete|shostak|0.201|
|connected_not_empty|✅ proved - incomplete|shostak|0.126|
|conn_implies_piece|✅ proved - incomplete|shostak|0.499|

## `graph_piece_path`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|union_edge_disj_TCC1|✅ proved - complete|shostak|0.110|
|union_edge_disj|✅ proved - incomplete|shostak|0.290|
|piece_implies_path|✅ proved - incomplete|shostak|1.017|

## `graph_path_conn`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|isolated_not_path|✅ proved - incomplete|shostak|0.189|
|pic_A|✅ proved - incomplete|shostak|0.253|
|thw_A|✅ proved - incomplete|shostak|0.644|
|tree_has_walk|✅ proved - incomplete|shostak|0.308|
|path_implies_conn|✅ proved - incomplete|shostak|0.699|

## `graph_complected`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|two_vertices|✅ proved - incomplete|shostak|0.127|
|sub_T|✅ proved - incomplete|shostak|0.322|
|rev_lem2|✅ proved - incomplete|shostak|0.308|
|conn_lem2|✅ proved - incomplete|shostak|0.100|
|del_rem_lem|✅ proved - incomplete|shostak|0.155|
|conn_lem3|✅ proved - incomplete|shostak|0.257|
|BIG|✅ proved - incomplete|shostak|0.822|
|conn_lem6|✅ proved - incomplete|shostak|0.100|
|conn_eq_compl|✅ proved - incomplete|shostak|0.156|
|conn_del_vert|✅ proved - incomplete|shostak|0.138|
|connected_not_empty|✅ proved - incomplete|shostak|0.126|
|connect_deg_0|✅ proved - incomplete|shostak|0.000|

## `ramsey_new`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|subgraph_clique|✅ proved - incomplete|shostak|0.200|
|subgraph_indep|✅ proved - incomplete|shostak|0.219|
|r1_TCC1|✅ proved - complete|shostak|0.115|
|r1_TCC2|✅ proved - incomplete|shostak|0.120|
|r2_TCC1|✅ proved - incomplete|shostak|0.120|
|card_r1_r2|✅ proved - incomplete|shostak|0.272|
|ramsey_lem|✅ proved - incomplete|shostak|1.835|
|ramseys_theorem|✅ proved - incomplete|shostak|0.120|

## `min_walk_reduced`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|reduced?_TCC1|✅ proved - complete|shostak|0.111|
|reduced?_TCC2|✅ proved - complete|shostak|0.110|
|min_walk_vert|✅ proved - incomplete|shostak|0.119|
|min_walk_is_reduced|✅ proved - incomplete|shostak|1.653|

## `min_walks`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|min_walk_from_TCC1|✅ proved - incomplete|shostak|0.110|
|min_walk_def|✅ proved - incomplete|shostak|0.406|
|min_walk_in|✅ proved - incomplete|shostak|0.094|
|min_walk_is_min|✅ proved - incomplete|shostak|0.110|

## `reduce_walks`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|reduce_TCC1|✅ proved - incomplete|shostak|0.110|
|reduce_TCC2|✅ proved - incomplete|shostak|0.102|
|reduce_TCC3|✅ proved - incomplete|shostak|0.110|
|reduce_TCC4|✅ proved - incomplete|shostak|0.110|
|reduce_TCC5|✅ proved - incomplete|shostak|0.107|
|reduce_TCC6|✅ proved - incomplete|shostak|0.296|
|reduce_lem_TCC1|✅ proved - incomplete|shostak|0.106|
|reduce_lem_TCC2|✅ proved - incomplete|shostak|0.100|
|reduce_lem_TCC3|✅ proved - incomplete|shostak|0.110|
|reduce_lem_TCC4|✅ proved - incomplete|shostak|0.112|
|reduce_lem|✅ proved - incomplete|shostak|1.230|

## `menger`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|easy_menger|✅ proved - incomplete|shostak|0.521|
|hard_menger|✅ proved - incomplete|shostak|0.150|

## `ind_paths`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|independent?_TCC1|✅ proved - complete|shostak|0.129|
|independent?_TCC2|✅ proved - complete|shostak|0.124|
|independent?_comm|✅ proved - complete|shostak|0.108|
|independent_ne|✅ proved - complete|shostak|0.110|
|ind_path_set_2|✅ proved - incomplete|shostak|0.157|
|internal_verts_TCC1|✅ proved - complete|shostak|0.112|
|internal_verts_TCC2|✅ proved - incomplete|shostak|0.176|
|indep?_lem|✅ proved - incomplete|shostak|0.166|

## `k_menger`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sep_num_B|✅ proved - incomplete|shostak|0.136|
|sep_num_implies|✅ proved - incomplete|shostak|0.125|
|easy_menger_B|✅ proved - incomplete|shostak|2.616|
|sep_set_small|✅ proved - incomplete|shostak|0.158|
|B_many_1|✅ proved - incomplete|shostak|0.359|
|sub_tight|✅ proved - incomplete|shostak|0.111|
|smaller_tight|✅ proved - incomplete|shostak|1.310|
|small_tight|✅ proved - incomplete|shostak|0.354|
|exists_tight|✅ proved - incomplete|shostak|0.481|
|close_tight|✅ proved - incomplete|shostak|1.018|
|smaller_close|✅ proved - incomplete|shostak|0.988|
|small_close|✅ proved - incomplete|shostak|0.256|
|exists_close|✅ proved - incomplete|shostak|0.526|
|closed_minimal|✅ proved - incomplete|shostak|1.182|
|closed_verts|✅ proved - incomplete|shostak|0.171|
|attach_edges_TCC1|✅ proved - incomplete|shostak|0.192|
|Hverts_TCC1|✅ proved - incomplete|shostak|0.177|
|Mgraph_TCC1|✅ proved - incomplete|shostak|0.181|
|Hst_intersect|✅ proved - incomplete|shostak|0.125|
|subset_Ws|✅ proved - incomplete|shostak|0.117|
|subset_Wt|✅ proved - incomplete|shostak|0.116|
|size_Ws|✅ proved - incomplete|shostak|0.000|
|size_Wt|✅ proved - incomplete|shostak|2.080|
|Menger_hard|✅ proved - incomplete|shostak|0.120|
|subgraph_walks|✅ proved - incomplete|shostak|0.198|
|subgraph_paths|✅ proved - incomplete|shostak|0.116|
|greatest_is|✅ proved - complete|shostak|0.659|
|least_is|✅ proved - complete|shostak|0.433|
|set_small_s|✅ proved - incomplete|shostak|8.437|
|set_small_t|✅ proved - incomplete|shostak|6.813|
|separates_Ws|✅ proved - incomplete|shostak|0.242|
|separates_Wt|✅ proved - incomplete|shostak|0.249|
|separ_sub|✅ proved - incomplete|shostak|0.582|
|separ_plus|✅ proved - incomplete|shostak|0.259|
|super_separ|✅ proved - incomplete|shostak|0.364|
|intermediate_subgraph|✅ proved - incomplete|shostak|0.705|
|intermediate_verts|✅ proved - incomplete|shostak|0.000|
|one_wedge_s_TCC1|✅ proved - incomplete|shostak|0.347|
|one_wedge_s_TCC2|✅ proved - incomplete|shostak|0.263|
|one_wedge_s_TCC3|✅ proved - incomplete|shostak|0.214|
|one_wedge_s_TCC4|✅ proved - incomplete|shostak|0.440|
|one_wedge_s|✅ proved - incomplete|shostak|2.419|
|one_edge_s|✅ proved - incomplete|shostak|0.855|
|short_path_k|✅ proved - incomplete|shostak|1.555|
|indep_path_sub|✅ proved - incomplete|shostak|0.110|
|ips_lem1|✅ proved - complete|shostak|0.123|
|ips_lem2|✅ proved - incomplete|shostak|0.530|
|secoo_TCC1|✅ proved - complete|shostak|0.090|
|secpp_TCC1|✅ proved - complete|shostak|0.090|
|inj_ips_TCC1|✅ proved - complete|shostak|0.230|
|inj_ips|✅ proved - incomplete|shostak|0.351|
|long_ipss_paths|✅ proved - incomplete|shostak|0.123|
|ipss_W_TCC1|✅ proved - incomplete|shostak|2.086|
|ipss_W|✅ proved - incomplete|shostak|0.589|
|long_ipst_paths|✅ proved - incomplete|shostak|0.121|
|ipst_W_TCC1|✅ proved - incomplete|shostak|2.080|
|ipst_W|✅ proved - incomplete|shostak|0.930|
|long_ipss_2|✅ proved - incomplete|shostak|0.154|
|long_ipst_2|✅ proved - incomplete|shostak|0.161|
|ind_path_set_secoo_TCC1|✅ proved - incomplete|shostak|0.117|
|ind_path_set_secoo|✅ proved - incomplete|shostak|0.733|
|ind_path_set_secpp_TCC1|✅ proved - incomplete|shostak|0.111|
|ind_path_set_secpp|✅ proved - incomplete|shostak|0.791|
|uniq_w_ipss|✅ proved - incomplete|shostak|0.246|
|uniq_w_ipst|✅ proved - incomplete|shostak|0.259|
|low_card_sep|✅ proved - incomplete|shostak|0.147|
|smaller_ips|✅ proved - complete|shostak|0.000|
|few_many|✅ proved - incomplete|shostak|0.174|
|min_B|✅ proved - incomplete|shostak|0.102|
|no_sep_req|✅ proved - incomplete|shostak|0.099|
|k_sep_close|✅ proved - incomplete|shostak|0.127|
|p_Ht_TCC1|✅ proved - incomplete|shostak|1.019|
|p_Ht_TCC2|✅ proved - incomplete|shostak|0.660|
|p_Ht_TCC3|✅ proved - incomplete|shostak|1.087|
|p_Ht|✅ proved - incomplete|shostak|1.200|
|q_Hs_TCC1|✅ proved - incomplete|shostak|1.022|
|q_Hs_TCC2|✅ proved - incomplete|shostak|1.017|
|q_Hs_TCC3|✅ proved - incomplete|shostak|1.138|
|q_Hs|✅ proved - incomplete|shostak|0.801|
|disjoint_M_paths_TCC1|✅ proved - incomplete|shostak|0.112|
|disjoint_M_paths_TCC2|✅ proved - incomplete|shostak|0.131|
|disjoint_M_paths_TCC3|✅ proved - incomplete|shostak|0.188|
|disjoint_M_paths_TCC4|✅ proved - incomplete|shostak|0.120|
|disjoint_M_paths_TCC5|✅ proved - incomplete|shostak|0.189|
|disjoint_M_paths_TCC6|✅ proved - incomplete|shostak|0.127|
|disjoint_M_paths_TCC7|✅ proved - incomplete|shostak|0.232|
|disjoint_M_paths_TCC8|✅ proved - incomplete|shostak|0.120|
|disjoint_M_paths_TCC9|✅ proved - incomplete|shostak|0.232|
|disjoint_M_paths|✅ proved - incomplete|shostak|2.365|
|sec_image|✅ proved - incomplete|shostak|1.061|
|Map_s_TCC1|✅ proved - incomplete|shostak|0.145|
|Map_s|✅ proved - incomplete|shostak|0.411|
|Map_t_TCC1|✅ proved - incomplete|shostak|0.149|
|Map_t|✅ proved - incomplete|shostak|0.406|
|Mapper_ips|✅ proved - incomplete|shostak|10.334|
|non_attached_induct|✅ proved - incomplete|shostak|0.209|
|plus_sep_vert|✅ proved - incomplete|shostak|0.268|
|separ_del_vert|✅ proved - incomplete|shostak|0.269|
|plus_path_set_TCC1|✅ proved - incomplete|shostak|0.135|
|plus_path_set_TCC2|✅ proved - incomplete|shostak|0.311|
|plus_path_set|✅ proved - incomplete|shostak|1.731|
|short_path_attach|✅ proved - incomplete|shostak|1.541|
|bridge_one|✅ proved - incomplete|shostak|2.036|
|bridge_two_TCC1|✅ proved - incomplete|shostak|0.117|
|bridge_two|✅ proved - incomplete|shostak|2.085|
|bridge_three|✅ proved - incomplete|shostak|1.784|
|C_induct_lemma|✅ proved - incomplete|shostak|0.263|
|Menger_k_hard|✅ proved - incomplete|shostak|0.100|
|Many_indep_paths|✅ proved - incomplete|shostak|0.369|
|hard_menger_trad|✅ proved - incomplete|shostak|0.000|

## `easy_menger`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|easy_menger|✅ proved - incomplete|shostak|0.517|
|easy_meng_1|✅ proved - incomplete|shostak|0.510|

## `subgraph_paths`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|walk?_subgraph|✅ proved - incomplete|shostak|0.197|
|path?_subgraph|✅ proved - incomplete|shostak|0.120|

## `complem`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|powerset_finite|✅ proved - complete|shostak|0.189|
|all_edges_power|✅ proved - incomplete|shostak|0.156|
|all_edges_finite|✅ proved - incomplete|shostak|0.282|
|completion_TCC1|✅ proved - incomplete|shostak|0.100|
|completion_TCC2|✅ proved - incomplete|shostak|0.114|
|completion_is_subgraph|✅ proved - incomplete|shostak|0.363|
|complement_TCC1|✅ proved - incomplete|shostak|0.135|
|complement_TCC2|✅ proved - incomplete|shostak|0.142|
|comp_comp_lem|✅ proved - incomplete|shostak|0.145|
|isol_TCC1|✅ proved - complete|shostak|0.080|
|path_or_not_path|✅ proved - incomplete|shostak|3.327|
|five_degrees_separation|✅ proved - incomplete|shostak|2.900|
|paths_or_not|✅ proved - incomplete|shostak|0.345|
|five_degrees_separated|✅ proved - incomplete|shostak|0.196|
|strong_implies|✅ proved - incomplete|shostak|0.214|
|imply_strong|✅ proved - incomplete|shostak|0.100|
|completion_is_transitive|✅ proved - incomplete|shostak|0.180|
|trans_complem|✅ proved - incomplete|shostak|0.674|
|t_close_TCC1|✅ proved - incomplete|shostak|0.197|
|t_close_1|✅ proved - incomplete|shostak|0.144|
|t_close_2|✅ proved - incomplete|shostak|0.135|
|t_close_3|✅ proved - incomplete|shostak|0.169|
|trans_fill|✅ proved - incomplete|shostak|0.399|
|complem_fill|✅ proved - incomplete|shostak|0.128|
|subgraph_conn|✅ proved - incomplete|shostak|0.260|
|complete_conn|✅ proved - incomplete|shostak|0.264|
|short_path_TCC1|✅ proved - incomplete|shostak|0.224|
|short_path_TCC2|✅ proved - incomplete|shostak|0.167|
|short_path|✅ proved - incomplete|shostak|1.593|
|trans_walk|✅ proved - incomplete|shostak|0.366|
|trans_connected|✅ proved - incomplete|shostak|0.301|
|disjoint_trans|✅ proved - incomplete|shostak|0.220|
|disjoint_trans_strong|✅ proved - incomplete|shostak|0.097|
|subgraph_trans|✅ proved - incomplete|shostak|0.178|
|subgraph_trans_strong|✅ proved - incomplete|shostak|0.112|
|t_close_4|✅ proved - incomplete|shostak|0.222|
|closure_connect|✅ proved - incomplete|shostak|0.668|
|connected_complem|✅ proved - incomplete|shostak|0.360|
|p_close_TCC1|✅ proved - incomplete|shostak|0.232|
|p_close_TCC2|✅ proved - incomplete|shostak|0.155|
|p_subgraph_t|✅ proved - incomplete|shostak|0.237|
|p_transitive|✅ proved - incomplete|shostak|0.221|
|p_close_1|✅ proved - incomplete|shostak|0.000|
|p_close_trans|✅ proved - incomplete|shostak|0.130|
|t_subgraph|✅ proved - incomplete|shostak|0.289|

## `los_graph`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|los_graphic|✅ proved - complete|shostak|0.142|
|Los|✅ proved - complete|shostak|0.123|

## `sep_set_lems`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sep_num_0|✅ proved - incomplete|shostak|0.125|
|sep_num_gt_0|✅ proved - incomplete|shostak|0.261|
|sep_num_is_1|✅ proved - incomplete|shostak|0.263|
|sep_num_le1|✅ proved - incomplete|shostak|0.342|
|separable?_comm|✅ proved - incomplete|shostak|0.110|
|separates_comm|✅ proved - incomplete|shostak|0.142|
|sep_num_comm|✅ proved - incomplete|shostak|0.172|
|v_not_in|✅ proved - incomplete|shostak|0.252|
|path_thru_each|✅ proved - incomplete|shostak|0.251|
|one_to_each|✅ proved - incomplete|shostak|0.409|
|walk?_del_verts|✅ proved - incomplete|shostak|0.159|
|del_verts_eq|✅ proved - incomplete|shostak|0.187|

## `tree_paths`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|dual_paths?_TCC1|✅ proved - incomplete|shostak|0.120|
|dual_paths?_TCC2|✅ proved - incomplete|shostak|0.110|
|dual_paths?_TCC3|✅ proved - incomplete|shostak|0.122|
|dual_paths?_TCC4|✅ proved - incomplete|shostak|0.120|
|min_dual_paths_TCC1|✅ proved - incomplete|shostak|0.104|
|min_dual_def|✅ proved - incomplete|shostak|0.504|
|min_dual_exists|✅ proved - incomplete|shostak|0.125|
|dual_path_trunc_TCC1|✅ proved - incomplete|shostak|0.105|
|dual_path_trunc_TCC2|✅ proved - incomplete|shostak|0.266|
|dual_path_trunc_TCC3|✅ proved - incomplete|shostak|0.265|
|dual_path_trunc_TCC4|✅ proved - incomplete|shostak|0.300|
|dual_path_trunc_TCC5|✅ proved - incomplete|shostak|0.210|
|dual_path_trunc_TCC6|✅ proved - incomplete|shostak|0.341|
|dual_path_trunc_TCC7|✅ proved - incomplete|shostak|0.236|
|dual_path_trunc_TCC8|✅ proved - incomplete|shostak|0.401|
|dual_path_trunc|✅ proved - incomplete|shostak|0.281|
|dual_path_length|✅ proved - incomplete|shostak|0.351|
|min_dual_reduc_TCC1|✅ proved - incomplete|shostak|0.118|
|min_dual_reduc_TCC2|✅ proved - incomplete|shostak|0.130|
|min_dual_reduc_TCC3|✅ proved - incomplete|shostak|0.124|
|min_dual_reduc_TCC4|✅ proved - incomplete|shostak|0.120|
|min_dual_reduc|✅ proved - incomplete|shostak|1.239|
|min_dual_distin_TCC1|✅ proved - incomplete|shostak|0.206|
|min_dual_distin_TCC2|✅ proved - incomplete|shostak|0.202|
|min_dual_distin|✅ proved - incomplete|shostak|0.795|
|dual_cycle_TCC1|✅ proved - incomplete|shostak|0.197|
|dual_cycle_TCC2|✅ proved - incomplete|shostak|0.188|
|dual_cycle_TCC3|✅ proved - incomplete|shostak|0.120|
|dual_cycle_TCC4|✅ proved - incomplete|shostak|0.386|
|dual_cycle|✅ proved - incomplete|shostak|6.289|
|tree_one_path|✅ proved - incomplete|shostak|2.670|

## `cycles`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cycle?_TCC1|✅ proved - incomplete|shostak|0.167|
|cycle?_TCC2|✅ proved - incomplete|shostak|0.160|
|cycle_l_gt_3|✅ proved - incomplete|shostak|0.122|
|cycle_has_path_TCC1|✅ proved - incomplete|shostak|0.159|
|cycle_has_path|✅ proved - incomplete|shostak|0.328|
|cycle_gt3|✅ proved - incomplete|shostak|0.135|
|cycle_def|✅ proved - incomplete|shostak|0.175|

## `cycle_deg`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|reachable_TCC1|✅ proved - incomplete|shostak|0.140|
|reachable_subset|✅ proved - incomplete|shostak|0.167|
|reachable_conn|✅ proved - incomplete|shostak|1.685|
|conn_compon|✅ proved - incomplete|shostak|2.241|
|sub_cycle_TCC1|✅ proved - incomplete|shostak|0.120|
|sub_cycle|✅ proved - incomplete|shostak|0.179|
|uniq_del_vert|✅ proved - incomplete|shostak|0.133|
|del_edge_uniq|✅ proved - incomplete|shostak|1.577|
|charact_tree|✅ proved - incomplete|shostak|0.000|
|exclus_cycl|✅ proved - incomplete|shostak|0.946|
|num_edge_tree|✅ proved - incomplete|shostak|1.022|
|iff_tree|✅ proved - incomplete|shostak|0.442|
|tree_num_iff|✅ proved - incomplete|shostak|0.277|
|deg_gt_1_cycle|✅ proved - incomplete|shostak|0.430|

## `old_menger`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|easy_menger|✅ proved - incomplete|shostak|0.510|
|hard_menger|✅ proved - incomplete|shostak|0.429|
|easy_meng_1|✅ proved - incomplete|shostak|0.508|

## `h_menger`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|path_not_thru|✅ proved - incomplete|shostak|0.324|
|adjacent_fact|✅ proved - incomplete|shostak|0.482|
|sep_num_del|✅ proved - incomplete|shostak|0.311|
|separates_del|✅ proved - incomplete|shostak|0.265|
|induction_step_comm|✅ proved - incomplete|shostak|0.121|
|separable?_del|✅ proved - incomplete|shostak|0.130|
|seq_j_TCC1|✅ proved - complete|shostak|0.107|
|seq_j_TCC2|✅ proved - incomplete|shostak|0.100|
|seq_j_TCC3|✅ proved - incomplete|shostak|0.136|
|seq_j|✅ proved - incomplete|shostak|0.375|
|short_path_case|✅ proved - incomplete|shostak|0.409|
|finale|✅ proved - incomplete|shostak|1.579|
|h_menger|✅ proved - incomplete|shostak|0.149|
|hard_menger|✅ proved - incomplete|shostak|0.415|

## `meng_scaff_prelude`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|line20_TCC1|✅ proved - incomplete|shostak|0.110|
|line20_TCC2|✅ proved - incomplete|shostak|0.099|
|line20_TCC3|✅ proved - incomplete|shostak|0.110|
|line20_TCC4|✅ proved - incomplete|shostak|0.102|
|line20_TCC5|✅ proved - incomplete|shostak|0.119|
|line20_TCC6|✅ proved - incomplete|shostak|0.120|
|line20|✅ proved - incomplete|shostak|0.672|
|join2_TCC1|✅ proved - incomplete|shostak|0.110|
|join2_TCC2|✅ proved - incomplete|shostak|0.441|
|path_meng_t|✅ proved - incomplete|shostak|0.140|
|path_H_def_TCC1|✅ proved - incomplete|shostak|0.175|
|path_H_def|✅ proved - incomplete|shostak|0.421|
|path_H_ind_TCC1|✅ proved - complete|shostak|0.110|
|path_H_ind_TCC2|✅ proved - incomplete|shostak|0.427|
|path_H_ind_TCC3|✅ proved - incomplete|shostak|0.106|
|path_H_ind_TCC4|✅ proved - incomplete|shostak|0.609|
|path_H_ind|✅ proved - incomplete|shostak|1.072|
|path_comps_ind3_TCC1|✅ proved - complete|shostak|0.112|
|path_comps_ind3_TCC2|✅ proved - complete|shostak|0.192|
|path_comps_ind3_TCC3|✅ proved - incomplete|shostak|0.467|
|path_comps_ind3_TCC4|✅ proved - incomplete|shostak|0.496|
|path_comps_ind3_TCC5|✅ proved - incomplete|shostak|0.105|
|path_comps_ind3_TCC6|✅ proved - incomplete|shostak|0.110|
|path_comps_ind3|✅ proved - incomplete|shostak|0.221|
|path_H_trunc_TCC1|✅ proved - incomplete|shostak|0.439|
|path_H_trunc_TCC2|✅ proved - incomplete|shostak|0.374|
|path_H_trunc|✅ proved - incomplete|shostak|0.660|
|meng_last_TCC1|✅ proved - complete|shostak|0.097|
|meng_last_TCC2|✅ proved - complete|shostak|0.100|
|meng_last_TCC3|✅ proved - incomplete|shostak|0.725|
|meng_last_TCC4|✅ proved - incomplete|shostak|0.726|
|meng_last|✅ proved - incomplete|shostak|0.334|
|ind_verts_W_TCC1|✅ proved - incomplete|shostak|0.237|
|ind_verts_W_TCC2|✅ proved - incomplete|shostak|0.253|
|ind_verts_W|✅ proved - incomplete|shostak|0.180|
|ind_verts_w_TCC1|✅ proved - incomplete|shostak|0.245|
|ind_verts_w_TCC2|✅ proved - incomplete|shostak|0.246|
|ind_verts_w|✅ proved - incomplete|shostak|0.191|
|path_meng_in_TCC1|✅ proved - incomplete|shostak|0.100|
|path_meng_in_TCC2|✅ proved - incomplete|shostak|0.106|
|path_meng_in_TCC3|✅ proved - incomplete|shostak|0.833|
|path_meng_in|✅ proved - incomplete|shostak|1.409|
|join2_lem_TCC1|✅ proved - incomplete|shostak|0.243|
|join2_lem_TCC2|✅ proved - incomplete|shostak|0.237|
|join2_lem_TCC3|✅ proved - incomplete|shostak|0.146|
|join2_lem_TCC4|✅ proved - incomplete|shostak|0.131|
|join2_lem|✅ proved - incomplete|shostak|0.000|
|path_from_to_walk_from|✅ proved - incomplete|shostak|0.130|
|paths_H_disj_TCC1|✅ proved - incomplete|shostak|0.100|
|paths_H_disj_TCC2|✅ proved - incomplete|shostak|0.100|
|paths_H_disj|✅ proved - incomplete|shostak|0.571|
|prelude|✅ proved - incomplete|shostak|5.853|

## `meng_scaff`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|first_TCC1|✅ proved - complete|shostak|0.120|
|first_lem|✅ proved - incomplete|shostak|0.150|
|first_not_TCC1|✅ proved - complete|shostak|0.108|
|first_not|✅ proved - incomplete|shostak|0.167|
|meng_to_G_sep_TCC1|✅ proved - incomplete|shostak|0.157|
|meng_to_G_sep_TCC2|✅ proved - incomplete|shostak|0.161|
|meng_to_G_sep_TCC3|✅ proved - incomplete|shostak|0.165|
|meng_to_G_sep_TCC4|✅ proved - incomplete|shostak|0.166|
|meng_to_G_sep|✅ proved - incomplete|shostak|3.201|
|prep_14_TCC1|✅ proved - complete|shostak|0.129|
|prep_14_TCC2|✅ proved - complete|shostak|0.128|
|prep_14|✅ proved - incomplete|shostak|0.359|
|line14_TCC1|✅ proved - incomplete|shostak|0.100|
|line14_TCC2|✅ proved - incomplete|shostak|0.235|
|line14_TCC3|✅ proved - incomplete|shostak|0.252|
|line14_TCC4|✅ proved - incomplete|shostak|0.244|
|line14|✅ proved - incomplete|shostak|0.623|
|line15ab|✅ proved - incomplete|shostak|0.361|
|prep_16|✅ proved - incomplete|shostak|1.177|
|line16|✅ proved - incomplete|shostak|0.565|
|line19_TCC1|✅ proved - incomplete|shostak|0.100|
|line19_TCC2|✅ proved - incomplete|shostak|0.136|
|line19_TCC3|✅ proved - incomplete|shostak|0.138|
|line19_TCC4|✅ proved - incomplete|shostak|0.133|
|line19_TCC5|✅ proved - incomplete|shostak|0.100|
|line19|✅ proved - incomplete|shostak|0.822|
|line17_prep|✅ proved - incomplete|shostak|0.188|
|line17_TCC1|✅ proved - incomplete|shostak|0.311|
|line17_TCC2|✅ proved - incomplete|shostak|0.330|
|line17_TCC3|✅ proved - incomplete|shostak|0.349|
|line17_TCC4|✅ proved - incomplete|shostak|0.364|
|line17|✅ proved - incomplete|shostak|0.334|
|pre20|✅ proved - incomplete|shostak|0.314|

## `meng_scaff_defs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|H_TCC1|✅ proved - incomplete|shostak|0.155|
|incident_TCC1|✅ proved - incomplete|shostak|0.120|
|meng_TCC1|✅ proved - complete|shostak|0.106|
|meng_TCC2|✅ proved - complete|shostak|0.100|
|meng_TCC3|✅ proved - incomplete|shostak|0.165|
|vert_H_s|✅ proved - incomplete|shostak|0.184|
|path_H_W|✅ proved - incomplete|shostak|0.205|
|path_comp_in|✅ proved - incomplete|shostak|0.146|
|walk?_H_TCC1|✅ proved - incomplete|shostak|0.130|
|walk?_H|✅ proved - incomplete|shostak|0.938|
|vert_meng_sub_TCC1|✅ proved - complete|shostak|0.120|
|vert_meng_sub_TCC2|✅ proved - complete|shostak|0.115|
|vert_meng_sub_TCC3|✅ proved - complete|shostak|0.124|
|vert_meng_sub_TCC4|✅ proved - complete|shostak|0.125|
|vert_meng_sub|✅ proved - incomplete|shostak|0.135|
|del_vert_comm|✅ proved - incomplete|shostak|0.144|
|H_comm|✅ proved - incomplete|shostak|0.096|
|incident_comm|✅ proved - incomplete|shostak|0.110|
|meng_comm_TCC1|✅ proved - complete|shostak|0.096|
|meng_comm_TCC2|✅ proved - complete|shostak|0.117|
|meng_comm|✅ proved - incomplete|shostak|0.220|

## `mantel`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|one_to_some|✅ proved - incomplete|shostak|0.120|
|some_to_lots|✅ proved - incomplete|shostak|0.104|
|one_to_lots|✅ proved - incomplete|shostak|0.110|
|exst_tri|✅ proved - incomplete|shostak|0.126|
|one_vert_edges|✅ proved - incomplete|shostak|0.130|
|edge_adjacent|✅ proved - incomplete|shostak|0.127|
|disj_neighbor_sets|✅ proved - incomplete|shostak|0.161|
|adj_is_subset|✅ proved - incomplete|shostak|0.135|
|adj_is_subset2|✅ proved - incomplete|shostak|0.126|
|no_cn|✅ proved - incomplete|shostak|0.185|
|disj_adj_card|✅ proved - incomplete|shostak|0.236|
|pre_edges_del21|✅ proved - incomplete|shostak|0.166|
|pre_edges_del22|✅ proved - incomplete|shostak|0.205|
|edges_del2|✅ proved - incomplete|shostak|0.186|
|verts_del2|✅ proved - incomplete|shostak|0.209|
|tri_del2|✅ proved - incomplete|shostak|0.244|
|int_lem|✅ proved - incomplete|shostak|0.155|
|card_union|✅ proved - incomplete|shostak|0.450|
|adj_helper|✅ proved - incomplete|shostak|0.176|
|adj_helper2|✅ proved - incomplete|shostak|0.185|
|inc_ind1|✅ proved - complete|shostak|0.146|
|adj_ind1|✅ proved - incomplete|shostak|0.214|
|inc_ind2|✅ proved - complete|shostak|0.260|
|adj_ind2|✅ proved - incomplete|shostak|0.000|
|inc_equals_adj|✅ proved - incomplete|shostak|0.874|
|Mantel|✅ proved - incomplete|shostak|0.938|

## `graph_pair`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|wf_lsth|✅ proved - complete|shostak|0.161|
|NAT_pair_induct|✅ proved - complete|shostak|0.133|
|size_up|✅ proved - complete|shostak|0.486|
|graph_induct_pair|✅ proved - complete|shostak|0.154|
|graph_induct_pair_B|✅ proved - complete|shostak|0.100|
|graph_pair_induct_not|✅ proved - complete|shostak|0.125|

## `mappings`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|reachable_TCC1|✅ proved - incomplete|shostak|0.135|
|reachable_subset|✅ proved - incomplete|shostak|0.135|
|path_reach1|✅ proved - incomplete|shostak|0.308|
|path_reach2|✅ proved - incomplete|shostak|0.400|
|reachable_conn|✅ proved - incomplete|shostak|1.733|
|sub_tree_k|✅ proved - incomplete|shostak|0.146|
|sub_tree_0|✅ proved - incomplete|shostak|3.273|
|sub_tree_k_lemm|✅ proved - incomplete|shostak|2.028|
|sub_tree_all|✅ proved - incomplete|shostak|0.107|
|path_reach4|✅ proved - incomplete|shostak|0.440|
|size_subgraph_path_TCC1|✅ proved - incomplete|shostak|0.110|
|size_subgraph_path|✅ proved - incomplete|shostak|0.614|
|path_gap|✅ proved - incomplete|shostak|1.341|
|set_card_less|✅ proved - complete|shostak|0.161|
|conn_compon|✅ proved - incomplete|shostak|2.514|
|Bush_less|✅ proved - incomplete|shostak|3.351|
|Fox_TCC1|✅ proved - incomplete|shostak|0.100|
|Fox_TCC2|✅ proved - incomplete|shostak|0.090|
|Fox_TCC3|✅ proved - incomplete|shostak|0.124|
|Fox_TCC4|✅ proved - incomplete|shostak|0.258|
|Fox_TCC5|✅ proved - incomplete|shostak|0.000|
|Fox_TCC6|✅ proved - incomplete|shostak|0.378|
|short_hound|✅ proved - incomplete|shostak|0.175|
|back_hound_TCC1|✅ proved - incomplete|shostak|0.100|
|back_hound_TCC2|✅ proved - incomplete|shostak|0.177|
|back_hound|✅ proved - incomplete|shostak|0.495|
|stuck_hound_TCC1|✅ proved - incomplete|shostak|0.096|
|stuck_hound_TCC2|✅ proved - incomplete|shostak|0.186|
|stuck_hound_TCC3|✅ proved - incomplete|shostak|0.120|
|stuck_hound_TCC4|✅ proved - incomplete|shostak|0.106|
|stuck_hound|✅ proved - incomplete|shostak|0.733|
|whole_hound_TCC1|✅ proved - incomplete|shostak|0.100|
|whole_hound_TCC2|✅ proved - incomplete|shostak|0.224|
|whole_hound_TCC3|✅ proved - incomplete|shostak|0.114|
|whole_hound_TCC4|✅ proved - incomplete|shostak|0.120|
|whole_hound|✅ proved - incomplete|shostak|0.559|
|fixed_fox|✅ proved - incomplete|shostak|1.462|
|small_fox|✅ proved - incomplete|shostak|22.919|
|num_edge_tree|✅ proved - incomplete|shostak|1.246|
|uniq_del_vert|✅ proved - incomplete|shostak|0.142|
|del_edge_uniq|✅ proved - incomplete|shostak|1.762|
|charact_tree|✅ proved - incomplete|shostak|0.414|
|iff_tree|✅ proved - incomplete|shostak|0.459|
|tree_num_iff|✅ proved - incomplete|shostak|0.268|
|tree_map|✅ proved - incomplete|shostak|0.295|
|sub_cycle_TCC1|✅ proved - incomplete|shostak|0.185|
|sub_cycle|✅ proved - incomplete|shostak|0.176|
|exclus_cycl|✅ proved - incomplete|shostak|0.000|
|deg_gt_1_cycle|✅ proved - incomplete|shostak|0.446|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib/pvsio_utils/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230712-static-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230710-tcc-gen.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230707-defattach.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230706-extrategies.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`|
