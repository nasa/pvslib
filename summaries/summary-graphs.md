# Summary for `graphs`
Run started at 19:46:21 11/24/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **792**   | **792**    | **792**    | **0**  | **3:9.068 s**   |
|top|0|0|0|0|0.000|
|graphs|14|14|14|0|0.964|
|graph_deg|16|16|16|0|1.368|
|graph_ops|22|22|22|0|1.453|
|graph_deg_sum|8|8|8|0|1.349|
|subgraphs|7|7|7|0|0.436|
|walks|46|46|46|0|5.085|
|paths|17|17|17|0|1.698|
|path_ops|11|11|11|0|2.976|
|sep_sets|13|13|13|0|1.566|
|walk_inductions|2|2|2|0|0.124|
|path_circ|65|65|65|0|15.827|
|circuits|4|4|4|0|0.316|
|path_lems|1|1|1|0|0.094|
|subgraphs_from_walk|9|9|9|0|0.770|
|graph_from_edges|10|10|10|0|0.761|
|max_subgraphs|7|7|7|0|0.574|
|max_subtrees|7|7|7|0|0.817|
|trees|9|9|9|0|3.062|
|graph_inductions|5|5|5|0|0.386|
|tree_circ|6|6|6|0|0.752|
|circuit_deg|3|3|3|0|1.465|
|subtrees|8|8|8|0|1.217|
|graph_conn_defs|3|3|3|0|0.199|
|graph_connected|4|4|4|0|0.346|
|graph_conn_piece|9|9|9|0|1.366|
|graph_piece_path|3|3|3|0|0.891|
|graph_path_conn|5|5|5|0|1.313|
|graph_complected|12|12|12|0|1.878|
|ramsey_new|8|8|8|0|1.767|
|min_walk_reduced|4|4|4|0|1.238|
|min_walks|4|4|4|0|0.454|
|reduce_walks|11|11|11|0|1.545|
|menger|2|2|2|0|0.408|
|ind_paths|8|8|8|0|0.666|
|k_menger|110|110|110|0|50.372|
|easy_menger|2|2|2|0|0.645|
|subgraph_paths|2|2|2|0|0.192|
|complem|45|45|45|0|8.848|
|los_graph|2|2|2|0|0.142|
|sep_set_lems|12|12|12|0|1.614|
|tree_paths|31|31|31|0|8.042|
|cycles|7|7|7|0|0.729|
|cycle_deg|14|14|14|0|5.701|
|old_menger|3|3|3|0|0.894|
|h_menger|14|14|14|0|2.752|
|meng_scaff_prelude|52|52|52|0|13.999|
|meng_scaff|33|33|33|0|5.477|
|meng_scaff_defs|21|21|21|0|2.199|
|mantel|26|26|26|0|3.979|
|graph_pair|6|6|6|0|0.711|
|mappings|49|49|49|0|27.641|
## Detailed Summary 
## `top`
No formula declaration found.
## `graphs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|edg_TCC1|✅ proved - complete|shostak|0.079|
|edge?_TCC1|✅ proved - incomplete|shostak|0.074|
|edge?_comm|✅ proved - incomplete|shostak|0.055|
|edges_vert|✅ proved - incomplete|shostak|0.083|
|other_vert|✅ proved - incomplete|shostak|0.075|
|edge_has_2_verts|✅ proved - incomplete|shostak|0.064|
|edges_vert_in|✅ proved - incomplete|shostak|0.056|
|vert_in|✅ proved - incomplete|shostak|0.060|
|empty?_rew|✅ proved - complete|shostak|0.057|
|edges_of_empty|✅ proved - incomplete|shostak|0.056|
|singleton_edges|✅ proved - incomplete|shostak|0.076|
|edge_in_card_gt_1|✅ proved - incomplete|shostak|0.107|
|not_singleton_2_vert|✅ proved - complete|shostak|0.066|
|singleton_graph_TCC1|✅ proved - complete|shostak|0.056|

## `graph_deg`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|incident_edges_TCC1|✅ proved - complete|shostak|0.080|
|incident_edges_subset|✅ proved - complete|shostak|0.077|
|incident_edges_emptyset|✅ proved - complete|shostak|0.060|
|deg_del_edge|✅ proved - incomplete|shostak|0.142|
|deg_del_edge2|✅ proved - incomplete|shostak|0.081|
|deg_del_edge3|✅ proved - complete|shostak|0.080|
|deg_del_edge_ge|✅ proved - incomplete|shostak|0.077|
|deg_del_edge_le|✅ proved - incomplete|shostak|0.076|
|deg_edge_exists|✅ proved - complete|shostak|0.067|
|deg_to_card|✅ proved - complete|shostak|0.106|
|del_vert_deg_0|✅ proved - incomplete|shostak|0.087|
|deg_del_vert_TCC1|✅ proved - complete|shostak|0.056|
|deg_del_vert|✅ proved - incomplete|shostak|0.152|
|del_vert_not_incident|✅ proved - incomplete|shostak|0.070|
|singleton_deg|✅ proved - incomplete|shostak|0.080|
|deg_1_sing|✅ proved - complete|shostak|0.077|

## `graph_ops`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|union_TCC1|✅ proved - complete|shostak|0.066|
|del_vert_TCC1|✅ proved - complete|shostak|0.060|
|del_vert_TCC2|✅ proved - incomplete|shostak|0.076|
|del_edge_TCC1|✅ proved - complete|shostak|0.057|
|adjacent_TCC1|✅ proved - incomplete|shostak|0.066|
|del_vert_still_in|✅ proved - incomplete|shostak|0.060|
|size_del_vert|✅ proved - incomplete|shostak|0.055|
|del_vert_le|✅ proved - incomplete|shostak|0.060|
|del_vert_ge|✅ proved - incomplete|shostak|0.067|
|edge_in_del_vert|✅ proved - incomplete|shostak|0.050|
|edges_del_vert|✅ proved - incomplete|shostak|0.056|
|del_vert_comm|✅ proved - incomplete|shostak|0.086|
|del_vert_empty?|✅ proved - incomplete|shostak|0.070|
|del_edge_lem|✅ proved - complete|shostak|0.048|
|del_edge_lem2|✅ proved - complete|shostak|0.060|
|del_edge_lem3|✅ proved - complete|shostak|0.057|
|del_edge_lem5|✅ proved - complete|shostak|0.080|
|vert_del_edge|✅ proved - complete|shostak|0.048|
|del_edge_num|✅ proved - complete|shostak|0.097|
|del_edge_singleton|✅ proved - complete|shostak|0.057|
|del_vert_edge_comm|✅ proved - incomplete|shostak|0.090|
|del_vert_edge|✅ proved - incomplete|shostak|0.087|

## `graph_deg_sum`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|deg_lem0|✅ proved - incomplete|shostak|0.144|
|deg_lem2_TCC1|✅ proved - incomplete|shostak|0.055|
|deg_lem2|✅ proved - incomplete|shostak|0.141|
|edge_induction|✅ proved - complete|shostak|0.060|
|deg_thm|✅ proved - incomplete|shostak|0.527|
|subgraph_deg|✅ proved - complete|shostak|0.130|
|sum_gt_bound|✅ proved - incomplete|shostak|0.180|
|deg_gt_one|✅ proved - incomplete|shostak|0.112|

## `subgraphs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|finite_vert_subset|✅ proved - complete|shostak|0.070|
|subgraph_TCC1|✅ proved - complete|shostak|0.067|
|subgraph_TCC2|✅ proved - complete|shostak|0.050|
|subgraph_TCC3|✅ proved - complete|shostak|0.076|
|subgraph_vert_sub|✅ proved - complete|shostak|0.057|
|subgraph_lem|✅ proved - complete|shostak|0.050|
|subgraph_smaller|✅ proved - complete|shostak|0.066|

## `walks`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|walk?_TCC1|✅ proved - complete|shostak|0.070|
|walk?_TCC2|✅ proved - complete|shostak|0.086|
|list2prewalk_TCC1|✅ proved - complete|shostak|0.050|
|from?_TCC1|✅ proved - complete|shostak|0.050|
|from?_TCC2|✅ proved - complete|shostak|0.047|
|verts_of_TCC1|✅ proved - incomplete|shostak|0.116|
|edges_of_TCC1|✅ proved - complete|shostak|0.046|
|edges_of_TCC2|✅ proved - complete|shostak|0.050|
|edges_of_TCC3|✅ proved - incomplete|shostak|0.136|
|pre_circuit?_TCC1|✅ proved - incomplete|shostak|0.067|
|pre_circuit?_TCC2|✅ proved - incomplete|shostak|0.060|
|verts_in?_concat_TCC1|✅ proved - complete|shostak|0.076|
|verts_in?_concat|✅ proved - complete|shostak|0.107|
|verts_in?_caret_TCC1|✅ proved - complete|shostak|0.106|
|verts_in?_caret|✅ proved - complete|shostak|0.173|
|vert_seq_lem|✅ proved - complete|shostak|0.057|
|verts_of_subset|✅ proved - incomplete|shostak|0.057|
|edges_of_subset|✅ proved - incomplete|shostak|0.076|
|walk_verts_in|✅ proved - incomplete|shostak|0.060|
|walk_from_vert|✅ proved - incomplete|shostak|0.057|
|walk_edge_in|✅ proved - incomplete|shostak|0.107|
|trunc1_TCC1|✅ proved - complete|shostak|0.050|
|trunc1_TCC2|✅ proved - complete|shostak|0.090|
|add1_TCC1|✅ proved - complete|shostak|0.048|
|gen_seq1_is_walk|✅ proved - incomplete|shostak|0.050|
|edge_to_walk_TCC1|✅ proved - complete|shostak|0.056|
|edge_to_walk_TCC2|✅ proved - incomplete|shostak|0.060|
|edge_to_walk_TCC3|✅ proved - complete|shostak|0.057|
|edge_to_walk|✅ proved - incomplete|shostak|0.060|
|walk?_rev_TCC1|✅ proved - incomplete|shostak|0.067|
|walk?_rev|✅ proved - incomplete|shostak|0.116|
|walk?_reverse|✅ proved - incomplete|shostak|0.107|
|walk?_caret_TCC1|✅ proved - incomplete|shostak|0.142|
|walk?_caret|✅ proved - incomplete|shostak|0.183|
|l_trunc1_TCC1|✅ proved - complete|shostak|0.060|
|l_trunc1|✅ proved - complete|shostak|0.087|
|walk?_add1|✅ proved - incomplete|shostak|0.106|
|walk_concat_edge_TCC1|✅ proved - incomplete|shostak|0.080|
|walk_concat_edge|✅ proved - incomplete|shostak|0.202|
|walk_concat_TCC1|✅ proved - incomplete|shostak|0.116|
|walk_concat_TCC2|✅ proved - incomplete|shostak|0.137|
|walk_concat|✅ proved - incomplete|shostak|0.335|
|walk?_cut_TCC1|✅ proved - incomplete|shostak|0.090|
|walk?_cut_TCC2|✅ proved - incomplete|shostak|0.144|
|walk?_cut|✅ proved - incomplete|shostak|0.582|
|walk_merge|✅ proved - incomplete|shostak|0.406|

## `paths`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|path?_verts|✅ proved - incomplete|shostak|0.057|
|path_from_l|✅ proved - incomplete|shostak|0.074|
|path_from_in|✅ proved - incomplete|shostak|0.070|
|path?_caret_TCC1|✅ proved - incomplete|shostak|0.149|
|path?_caret|✅ proved - incomplete|shostak|0.283|
|path_from?_caret_TCC1|✅ proved - incomplete|shostak|0.000|
|path_from?_caret_TCC2|✅ proved - incomplete|shostak|0.117|
|path_from?_caret|✅ proved - incomplete|shostak|0.120|
|path?_rev_TCC1|✅ proved - incomplete|shostak|0.080|
|path?_rev|✅ proved - incomplete|shostak|0.097|
|path?_gen_seq2|✅ proved - incomplete|shostak|0.087|
|path?_add1_TCC1|✅ proved - incomplete|shostak|0.077|
|path?_add1|✅ proved - incomplete|shostak|0.133|
|path?_trunc1_TCC1|✅ proved - incomplete|shostak|0.080|
|path?_trunc1_TCC2|✅ proved - incomplete|shostak|0.067|
|path?_trunc1_TCC3|✅ proved - incomplete|shostak|0.080|
|path?_trunc1|✅ proved - incomplete|shostak|0.127|

## `path_ops`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|walk?_del_vert|✅ proved - incomplete|shostak|0.118|
|walk?_del_vert_not|✅ proved - incomplete|shostak|0.113|
|path?_del_vert|✅ proved - incomplete|shostak|0.070|
|path?_del_verts|✅ proved - incomplete|shostak|0.111|
|walk_to_path|✅ proved - incomplete|shostak|0.356|
|walk_to_path_less|✅ proved - incomplete|shostak|0.918|
|walk_to_path_from|✅ proved - incomplete|shostak|0.073|
|walk_to_path_from_less|✅ proved - incomplete|shostak|0.060|
|path_disjoint_TCC1|✅ proved - incomplete|shostak|0.148|
|path_disjoint_TCC2|✅ proved - incomplete|shostak|0.229|
|path_disjoint|✅ proved - incomplete|shostak|0.780|

## `sep_sets`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|del_verts_TCC1|✅ proved - complete|shostak|0.079|
|del_verts_TCC2|✅ proved - complete|shostak|0.063|
|sep_set_exists|✅ proved - incomplete|shostak|0.206|
|min_sep_set_TCC1|✅ proved - incomplete|shostak|0.050|
|min_sep_set_edge|✅ proved - incomplete|shostak|0.106|
|min_sep_set_card|✅ proved - incomplete|shostak|0.151|
|min_sep_set_seps|✅ proved - incomplete|shostak|0.097|
|min_sep_set_vert|✅ proved - incomplete|shostak|0.197|
|ends_not_in_min_sep_set|✅ proved - incomplete|shostak|0.046|
|walk?_del_verts_not|✅ proved - incomplete|shostak|0.127|
|adj_verts_TCC1|✅ proved - incomplete|shostak|0.104|
|adj_verts_lem|✅ proved - incomplete|shostak|0.142|
|sep_num_min|✅ proved - incomplete|shostak|0.198|

## `walk_inductions`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|walk_prep|✅ proved - complete|shostak|0.060|
|graph_induction_walk|✅ proved - complete|shostak|0.064|

## `path_circ`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|path_reduc|✅ proved - incomplete|shostak|0.165|
|trunc_long|✅ proved - complete|shostak|0.152|
|trunc_walk|✅ proved - incomplete|shostak|0.186|
|walks_concat_red_TCC1|✅ proved - incomplete|shostak|0.076|
|walks_concat_red_TCC2|✅ proved - incomplete|shostak|0.090|
|walks_concat_red_TCC3|✅ proved - incomplete|shostak|0.088|
|walks_concat_red_TCC4|✅ proved - incomplete|shostak|0.080|
|walks_concat_red_TCC5|✅ proved - incomplete|shostak|0.137|
|walks_concat_red_TCC6|✅ proved - incomplete|shostak|0.147|
|walks_concat_red_TCC7|✅ proved - incomplete|shostak|1.309|
|walks_concat_red|✅ proved - incomplete|shostak|0.642|
|index_rev_TCC1|✅ proved - incomplete|shostak|0.050|
|index_rev_TCC2|✅ proved - incomplete|shostak|0.063|
|index_rev_TCC3|✅ proved - incomplete|shostak|0.070|
|index_rev_TCC4|✅ proved - incomplete|shostak|0.061|
|index_rev|✅ proved - incomplete|shostak|0.070|
|rev_rev|✅ proved - incomplete|shostak|0.079|
|ind_rev_rev_TCC1|✅ proved - incomplete|shostak|0.050|
|ind_rev_rev_TCC2|✅ proved - complete|shostak|0.050|
|ind_rev_rev_TCC3|✅ proved - incomplete|shostak|0.075|
|ind_rev_rev_TCC4|✅ proved - incomplete|shostak|0.060|
|ind_rev_rev|✅ proved - incomplete|shostak|0.076|
|second_in_cat_TCC1|✅ proved - complete|shostak|0.070|
|second_in_cat_TCC2|✅ proved - incomplete|shostak|0.170|
|second_in_cat_TCC3|✅ proved - complete|shostak|0.067|
|second_in_cat|✅ proved - incomplete|shostak|0.211|
|sec_from_last_TCC1|✅ proved - complete|shostak|0.067|
|sec_from_last_TCC2|✅ proved - incomplete|shostak|0.176|
|sec_from_last|✅ proved - incomplete|shostak|0.194|
|prewalk_same|✅ proved - complete|shostak|0.093|
|compose_long_TCC1|✅ proved - complete|shostak|0.070|
|compose_long_TCC2|✅ proved - complete|shostak|0.066|
|compose_long|✅ proved - incomplete|shostak|0.182|
|red_compos_TCC1|✅ proved - incomplete|shostak|0.145|
|red_compos_TCC2|✅ proved - incomplete|shostak|0.146|
|red_compos_TCC3|✅ proved - incomplete|shostak|0.133|
|red_compos_TCC4|✅ proved - incomplete|shostak|0.726|
|red_compos|✅ proved - incomplete|shostak|2.223|
|cycl_red_compos_TCC1|✅ proved - incomplete|shostak|0.134|
|cycl_red_compos_TCC2|✅ proved - incomplete|shostak|0.144|
|cycl_red_compos|✅ proved - incomplete|shostak|2.763|
|walkers_TCC1|✅ proved - complete|shostak|0.050|
|walkers_TCC2|✅ proved - complete|shostak|0.061|
|walkers_TCC3|✅ proved - complete|shostak|0.060|
|walkers|✅ proved - complete|shostak|0.060|
|path_one_TCC1|✅ proved - incomplete|shostak|0.087|
|path_one|✅ proved - incomplete|shostak|0.212|
|rev_eq|✅ proved - incomplete|shostak|0.079|
|front_back_TCC1|✅ proved - complete|shostak|0.060|
|front_back|✅ proved - complete|shostak|0.066|
|walk_from_l|✅ proved - complete|shostak|0.060|
|plus_up_TCC1|✅ proved - complete|shostak|0.056|
|plus_up|✅ proved - complete|shostak|0.294|
|two_walks_TCC1|✅ proved - incomplete|shostak|0.203|
|two_walks|✅ proved - incomplete|shostak|0.104|
|back_short|✅ proved - incomplete|shostak|0.840|
|from_rev_TCC1|✅ proved - incomplete|shostak|0.060|
|from_rev|✅ proved - incomplete|shostak|0.060|
|front_short_TCC1|✅ proved - incomplete|shostak|0.146|
|front_short_TCC2|✅ proved - incomplete|shostak|0.129|
|front_short|✅ proved - incomplete|shostak|1.359|
|add1_rev_TCC1|✅ proved - complete|shostak|0.056|
|add1_rev_TCC2|✅ proved - complete|shostak|0.070|
|add1_rev_TCC3|✅ proved - incomplete|shostak|0.099|
|add1_rev|✅ proved - incomplete|shostak|0.000|

## `circuits`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|reducible?_TCC1|✅ proved - complete|shostak|0.086|
|reducible?_TCC2|✅ proved - complete|shostak|0.085|
|cyclically_reduced?_TCC1|✅ proved - complete|shostak|0.070|
|cyclically_reduced?_TCC2|✅ proved - complete|shostak|0.075|

## `path_lems`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Pigeon_hole|✅ proved - incomplete|shostak|0.094|

## `subgraphs_from_walk`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|G_from_TCC1|✅ proved - incomplete|shostak|0.141|
|G_from_vert|✅ proved - incomplete|shostak|0.057|
|vert_G_from|✅ proved - incomplete|shostak|0.050|
|edge?_G_from_TCC1|✅ proved - incomplete|shostak|0.063|
|edge?_G_from_TCC2|✅ proved - incomplete|shostak|0.070|
|edge?_G_from|✅ proved - incomplete|shostak|0.085|
|edge?_G_from_rev|✅ proved - incomplete|shostak|0.106|
|vert_G_from_not|✅ proved - incomplete|shostak|0.067|
|del_vert_subgraph|✅ proved - incomplete|shostak|0.131|

## `graph_from_edges`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|finite_lem|✅ proved - incomplete|shostak|0.135|
|Union_to_pred|✅ proved - complete|shostak|0.075|
|pred_to_Union|✅ proved - complete|shostak|0.055|
|verts_of_TCC1|✅ proved - incomplete|shostak|0.050|
|verts_from_TCC1|✅ proved - incomplete|shostak|0.086|
|verts_from_of|✅ proved - incomplete|shostak|0.076|
|graph_from_edgeset_TCC1|✅ proved - incomplete|shostak|0.096|
|graph_from_edgeset_rew1|✅ proved - incomplete|shostak|0.060|
|graph_from_edgeset_rew2|✅ proved - incomplete|shostak|0.058|
|no_isolated_verts|✅ proved - incomplete|shostak|0.070|

## `max_subgraphs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|prep0|✅ proved - complete|shostak|0.066|
|max_size_TCC1|✅ proved - complete|shostak|0.076|
|prep|✅ proved - incomplete|shostak|0.116|
|max_subgraph_TCC1|✅ proved - incomplete|shostak|0.140|
|max_subgraph_def|✅ proved - incomplete|shostak|0.050|
|max_subgraph_in|✅ proved - incomplete|shostak|0.056|
|max_subgraph_is_max|✅ proved - incomplete|shostak|0.070|

## `max_subtrees`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sing_is_tree|✅ proved - incomplete|shostak|0.076|
|tree_in|✅ proved - incomplete|shostak|0.342|
|max_subtree_TCC1|✅ proved - incomplete|shostak|0.060|
|max_subtree_TCC2|✅ proved - incomplete|shostak|0.103|
|max_subtree_tree|✅ proved - incomplete|shostak|0.083|
|max_subtree_subgraph|✅ proved - incomplete|shostak|0.060|
|max_subtree_max|✅ proved - incomplete|shostak|0.093|

## `trees`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|tree?_TCC1|✅ proved - incomplete|shostak|0.073|
|tree_nonempty|✅ proved - incomplete|shostak|0.080|
|tree_edge_card|✅ proved - incomplete|shostak|0.348|
|tree_edge_k|✅ proved - incomplete|shostak|0.102|
|tree_edge|✅ proved - incomplete|shostak|0.770|
|tree_edge_all|✅ proved - incomplete|shostak|0.060|
|del_tree_k|✅ proved - incomplete|shostak|0.113|
|del_tree|✅ proved - incomplete|shostak|1.466|
|del_tree_all|✅ proved - incomplete|shostak|0.050|

## `graph_inductions`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|size_prep|✅ proved - complete|shostak|0.127|
|graph_induction_vert|✅ proved - complete|shostak|0.063|
|graph_induction_vert_not|✅ proved - complete|shostak|0.060|
|num_edges_prep|✅ proved - complete|shostak|0.063|
|graph_induction_edge|✅ proved - complete|shostak|0.073|

## `tree_circ`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|exists_c_tree|✅ proved - incomplete|shostak|0.060|
|c_tree_TCC1|✅ proved - incomplete|shostak|0.056|
|tree_containing_lem|✅ proved - incomplete|shostak|0.156|
|tree_deg|✅ proved - incomplete|shostak|0.105|
|small_tree_lem|✅ proved - incomplete|shostak|0.105|
|tree_no_circuits|✅ proved - incomplete|shostak|0.270|

## `circuit_deg`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cir_deg_G|✅ proved - incomplete|shostak|0.164|
|circuit_deg|✅ proved - incomplete|shostak|1.065|
|circuit_subgraph_len_1|✅ proved - incomplete|shostak|0.236|

## `subtrees`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|walk_acr_TCC1|✅ proved - incomplete|shostak|0.063|
|walk_acr_TCC2|✅ proved - incomplete|shostak|0.093|
|walk_acr_TCC3|✅ proved - incomplete|shostak|0.093|
|walk_acr|✅ proved - incomplete|shostak|0.142|
|walk_acr2|✅ proved - incomplete|shostak|0.149|
|add_dbl_TCC1|✅ proved - incomplete|shostak|0.084|
|add_dbl|✅ proved - incomplete|shostak|0.074|
|max_tree_all_verts|✅ proved - incomplete|shostak|0.519|

## `graph_conn_defs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|connected?_TCC1|✅ proved - incomplete|shostak|0.060|
|path_connected?_TCC1|✅ proved - incomplete|shostak|0.069|
|path_connected?_TCC2|✅ proved - incomplete|shostak|0.070|

## `graph_connected`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|conn_eq_path|✅ proved - incomplete|shostak|0.091|
|path_eq_piece|✅ proved - incomplete|shostak|0.080|
|piece_eq_conn|✅ proved - incomplete|shostak|0.083|
|conn_eq_complected|✅ proved - incomplete|shostak|0.092|

## `graph_conn_piece`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|singleton_piece|✅ proved - complete|shostak|0.148|
|not_piece_has_2|✅ proved - complete|shostak|0.149|
|edge_not_across|✅ proved - complete|shostak|0.073|
|lem1|✅ proved - incomplete|shostak|0.171|
|H1P_not_empty|✅ proved - incomplete|shostak|0.111|
|cip0|✅ proved - incomplete|shostak|0.191|
|cip3|✅ proved - incomplete|shostak|0.132|
|connected_not_empty|✅ proved - incomplete|shostak|0.076|
|conn_implies_piece|✅ proved - incomplete|shostak|0.315|

## `graph_piece_path`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|union_edge_disj_TCC1|✅ proved - complete|shostak|0.080|
|union_edge_disj|✅ proved - incomplete|shostak|0.187|
|piece_implies_path|✅ proved - incomplete|shostak|0.624|

## `graph_path_conn`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|isolated_not_path|✅ proved - incomplete|shostak|0.114|
|pic_A|✅ proved - incomplete|shostak|0.152|
|thw_A|✅ proved - incomplete|shostak|0.407|
|tree_has_walk|✅ proved - incomplete|shostak|0.203|
|path_implies_conn|✅ proved - incomplete|shostak|0.437|

## `graph_complected`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|two_vertices|✅ proved - incomplete|shostak|0.071|
|sub_T|✅ proved - incomplete|shostak|0.000|
|rev_lem2|✅ proved - incomplete|shostak|0.203|
|conn_lem2|✅ proved - incomplete|shostak|0.064|
|del_rem_lem|✅ proved - incomplete|shostak|0.114|
|conn_lem3|✅ proved - incomplete|shostak|0.169|
|BIG|✅ proved - incomplete|shostak|0.512|
|conn_lem6|✅ proved - incomplete|shostak|0.060|
|conn_eq_compl|✅ proved - incomplete|shostak|0.102|
|conn_del_vert|✅ proved - incomplete|shostak|0.092|
|connected_not_empty|✅ proved - incomplete|shostak|0.081|
|connect_deg_0|✅ proved - incomplete|shostak|0.410|

## `ramsey_new`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|subgraph_clique|✅ proved - incomplete|shostak|0.103|
|subgraph_indep|✅ proved - incomplete|shostak|0.103|
|r1_TCC1|✅ proved - complete|shostak|0.062|
|r1_TCC2|✅ proved - incomplete|shostak|0.070|
|r2_TCC1|✅ proved - incomplete|shostak|0.063|
|card_r1_r2|✅ proved - incomplete|shostak|0.158|
|ramsey_lem|✅ proved - incomplete|shostak|1.138|
|ramseys_theorem|✅ proved - incomplete|shostak|0.070|

## `min_walk_reduced`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|reduced?_TCC1|✅ proved - complete|shostak|0.063|
|reduced?_TCC2|✅ proved - complete|shostak|0.070|
|min_walk_vert|✅ proved - incomplete|shostak|0.083|
|min_walk_is_reduced|✅ proved - incomplete|shostak|1.022|

## `min_walks`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|min_walk_from_TCC1|✅ proved - incomplete|shostak|0.063|
|min_walk_def|✅ proved - incomplete|shostak|0.258|
|min_walk_in|✅ proved - incomplete|shostak|0.060|
|min_walk_is_min|✅ proved - incomplete|shostak|0.073|

## `reduce_walks`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|reduce_TCC1|✅ proved - incomplete|shostak|0.070|
|reduce_TCC2|✅ proved - incomplete|shostak|0.060|
|reduce_TCC3|✅ proved - incomplete|shostak|0.077|
|reduce_TCC4|✅ proved - incomplete|shostak|0.070|
|reduce_TCC5|✅ proved - incomplete|shostak|0.070|
|reduce_TCC6|✅ proved - incomplete|shostak|0.184|
|reduce_lem_TCC1|✅ proved - incomplete|shostak|0.060|
|reduce_lem_TCC2|✅ proved - incomplete|shostak|0.067|
|reduce_lem_TCC3|✅ proved - incomplete|shostak|0.070|
|reduce_lem_TCC4|✅ proved - incomplete|shostak|0.060|
|reduce_lem|✅ proved - incomplete|shostak|0.757|

## `menger`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|easy_menger|✅ proved - incomplete|shostak|0.318|
|hard_menger|✅ proved - incomplete|shostak|0.090|

## `ind_paths`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|independent?_TCC1|✅ proved - complete|shostak|0.079|
|independent?_TCC2|✅ proved - complete|shostak|0.071|
|independent?_comm|✅ proved - complete|shostak|0.070|
|independent_ne|✅ proved - complete|shostak|0.064|
|ind_path_set_2|✅ proved - incomplete|shostak|0.100|
|internal_verts_TCC1|✅ proved - complete|shostak|0.069|
|internal_verts_TCC2|✅ proved - incomplete|shostak|0.107|
|indep?_lem|✅ proved - incomplete|shostak|0.106|

## `k_menger`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sep_num_B|✅ proved - incomplete|shostak|0.076|
|sep_num_implies|✅ proved - incomplete|shostak|0.076|
|easy_menger_B|✅ proved - incomplete|shostak|1.577|
|sep_set_small|✅ proved - incomplete|shostak|0.103|
|B_many_1|✅ proved - incomplete|shostak|0.223|
|sub_tight|✅ proved - incomplete|shostak|0.065|
|smaller_tight|✅ proved - incomplete|shostak|0.786|
|small_tight|✅ proved - incomplete|shostak|0.224|
|exists_tight|✅ proved - incomplete|shostak|0.283|
|close_tight|✅ proved - incomplete|shostak|0.622|
|smaller_close|✅ proved - incomplete|shostak|0.000|
|small_close|✅ proved - incomplete|shostak|0.157|
|exists_close|✅ proved - incomplete|shostak|0.349|
|closed_minimal|✅ proved - incomplete|shostak|0.738|
|closed_verts|✅ proved - incomplete|shostak|0.107|
|attach_edges_TCC1|✅ proved - incomplete|shostak|0.109|
|Hverts_TCC1|✅ proved - incomplete|shostak|0.105|
|Mgraph_TCC1|✅ proved - incomplete|shostak|0.112|
|Hst_intersect|✅ proved - incomplete|shostak|0.073|
|subset_Ws|✅ proved - incomplete|shostak|0.070|
|subset_Wt|✅ proved - incomplete|shostak|0.078|
|size_Ws|✅ proved - incomplete|shostak|1.244|
|size_Wt|✅ proved - incomplete|shostak|1.296|
|Menger_hard|✅ proved - incomplete|shostak|0.070|
|subgraph_walks|✅ proved - incomplete|shostak|0.132|
|subgraph_paths|✅ proved - incomplete|shostak|0.073|
|greatest_is|✅ proved - complete|shostak|0.400|
|least_is|✅ proved - complete|shostak|0.274|
|set_small_s|✅ proved - incomplete|shostak|5.312|
|set_small_t|✅ proved - incomplete|shostak|1.945|
|separates_Ws|✅ proved - incomplete|shostak|0.137|
|separates_Wt|✅ proved - incomplete|shostak|0.150|
|separ_sub|✅ proved - incomplete|shostak|0.333|
|separ_plus|✅ proved - incomplete|shostak|0.155|
|super_separ|✅ proved - incomplete|shostak|0.213|
|intermediate_subgraph|✅ proved - incomplete|shostak|0.433|
|intermediate_verts|✅ proved - incomplete|shostak|0.216|
|one_wedge_s_TCC1|✅ proved - incomplete|shostak|0.172|
|one_wedge_s_TCC2|✅ proved - incomplete|shostak|0.152|
|one_wedge_s_TCC3|✅ proved - incomplete|shostak|0.120|
|one_wedge_s_TCC4|✅ proved - incomplete|shostak|0.263|
|one_wedge_s|✅ proved - incomplete|shostak|1.399|
|one_edge_s|✅ proved - incomplete|shostak|0.508|
|short_path_k|✅ proved - incomplete|shostak|0.925|
|indep_path_sub|✅ proved - incomplete|shostak|0.060|
|ips_lem1|✅ proved - complete|shostak|0.083|
|ips_lem2|✅ proved - incomplete|shostak|0.320|
|secoo_TCC1|✅ proved - complete|shostak|0.050|
|secpp_TCC1|✅ proved - complete|shostak|0.056|
|inj_ips_TCC1|✅ proved - complete|shostak|0.157|
|inj_ips|✅ proved - incomplete|shostak|0.211|
|long_ipss_paths|✅ proved - incomplete|shostak|0.091|
|ipss_W_TCC1|✅ proved - incomplete|shostak|1.282|
|ipss_W|✅ proved - incomplete|shostak|0.354|
|long_ipst_paths|✅ proved - incomplete|shostak|0.080|
|ipst_W_TCC1|✅ proved - incomplete|shostak|0.000|
|ipst_W|✅ proved - incomplete|shostak|0.564|
|long_ipss_2|✅ proved - incomplete|shostak|0.091|
|long_ipst_2|✅ proved - incomplete|shostak|0.101|
|ind_path_set_secoo_TCC1|✅ proved - incomplete|shostak|0.070|
|ind_path_set_secoo|✅ proved - incomplete|shostak|0.461|
|ind_path_set_secpp_TCC1|✅ proved - incomplete|shostak|0.076|
|ind_path_set_secpp|✅ proved - incomplete|shostak|0.481|
|uniq_w_ipss|✅ proved - incomplete|shostak|0.167|
|uniq_w_ipst|✅ proved - incomplete|shostak|0.161|
|low_card_sep|✅ proved - incomplete|shostak|0.093|
|smaller_ips|✅ proved - complete|shostak|0.356|
|few_many|✅ proved - incomplete|shostak|0.090|
|min_B|✅ proved - incomplete|shostak|0.063|
|no_sep_req|✅ proved - incomplete|shostak|0.072|
|k_sep_close|✅ proved - incomplete|shostak|0.081|
|p_Ht_TCC1|✅ proved - incomplete|shostak|0.631|
|p_Ht_TCC2|✅ proved - incomplete|shostak|0.403|
|p_Ht_TCC3|✅ proved - incomplete|shostak|0.646|
|p_Ht|✅ proved - incomplete|shostak|0.725|
|q_Hs_TCC1|✅ proved - incomplete|shostak|0.614|
|q_Hs_TCC2|✅ proved - incomplete|shostak|0.598|
|q_Hs_TCC3|✅ proved - incomplete|shostak|0.661|
|q_Hs|✅ proved - incomplete|shostak|0.478|
|disjoint_M_paths_TCC1|✅ proved - incomplete|shostak|0.074|
|disjoint_M_paths_TCC2|✅ proved - incomplete|shostak|0.070|
|disjoint_M_paths_TCC3|✅ proved - incomplete|shostak|0.102|
|disjoint_M_paths_TCC4|✅ proved - incomplete|shostak|0.090|
|disjoint_M_paths_TCC5|✅ proved - incomplete|shostak|0.118|
|disjoint_M_paths_TCC6|✅ proved - incomplete|shostak|0.070|
|disjoint_M_paths_TCC7|✅ proved - incomplete|shostak|0.134|
|disjoint_M_paths_TCC8|✅ proved - incomplete|shostak|0.077|
|disjoint_M_paths_TCC9|✅ proved - incomplete|shostak|0.136|
|disjoint_M_paths|✅ proved - incomplete|shostak|1.402|
|sec_image|✅ proved - incomplete|shostak|0.615|
|Map_s_TCC1|✅ proved - incomplete|shostak|0.090|
|Map_s|✅ proved - incomplete|shostak|0.243|
|Map_t_TCC1|✅ proved - incomplete|shostak|0.086|
|Map_t|✅ proved - incomplete|shostak|0.000|
|Mapper_ips|✅ proved - incomplete|shostak|8.260|
|non_attached_induct|✅ proved - incomplete|shostak|0.144|
|plus_sep_vert|✅ proved - incomplete|shostak|0.165|
|separ_del_vert|✅ proved - incomplete|shostak|0.155|
|plus_path_set_TCC1|✅ proved - incomplete|shostak|0.076|
|plus_path_set_TCC2|✅ proved - incomplete|shostak|0.193|
|plus_path_set|✅ proved - incomplete|shostak|0.999|
|short_path_attach|✅ proved - incomplete|shostak|0.961|
|bridge_one|✅ proved - incomplete|shostak|0.000|
|bridge_two_TCC1|✅ proved - incomplete|shostak|0.070|
|bridge_two|✅ proved - incomplete|shostak|1.234|
|bridge_three|✅ proved - incomplete|shostak|1.057|
|C_induct_lemma|✅ proved - incomplete|shostak|0.176|
|Menger_k_hard|✅ proved - incomplete|shostak|0.060|
|Many_indep_paths|✅ proved - incomplete|shostak|0.227|
|hard_menger_trad|✅ proved - incomplete|shostak|1.006|

## `easy_menger`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|easy_menger|✅ proved - incomplete|shostak|0.340|
|easy_meng_1|✅ proved - incomplete|shostak|0.305|

## `subgraph_paths`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|walk?_subgraph|✅ proved - incomplete|shostak|0.122|
|path?_subgraph|✅ proved - incomplete|shostak|0.070|

## `complem`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|powerset_finite|✅ proved - complete|shostak|0.116|
|all_edges_power|✅ proved - incomplete|shostak|0.103|
|all_edges_finite|✅ proved - incomplete|shostak|0.170|
|completion_TCC1|✅ proved - incomplete|shostak|0.060|
|completion_TCC2|✅ proved - incomplete|shostak|0.096|
|completion_is_subgraph|✅ proved - incomplete|shostak|0.249|
|complement_TCC1|✅ proved - incomplete|shostak|0.087|
|complement_TCC2|✅ proved - incomplete|shostak|0.086|
|comp_comp_lem|✅ proved - incomplete|shostak|0.097|
|isol_TCC1|✅ proved - complete|shostak|0.058|
|path_or_not_path|✅ proved - incomplete|shostak|1.960|
|five_degrees_separation|✅ proved - incomplete|shostak|0.000|
|paths_or_not|✅ proved - incomplete|shostak|0.210|
|five_degrees_separated|✅ proved - incomplete|shostak|0.113|
|strong_implies|✅ proved - incomplete|shostak|0.128|
|imply_strong|✅ proved - incomplete|shostak|0.060|
|completion_is_transitive|✅ proved - incomplete|shostak|0.111|
|trans_complem|✅ proved - incomplete|shostak|0.419|
|t_close_TCC1|✅ proved - incomplete|shostak|0.127|
|t_close_1|✅ proved - incomplete|shostak|0.091|
|t_close_2|✅ proved - incomplete|shostak|0.092|
|t_close_3|✅ proved - incomplete|shostak|0.105|
|trans_fill|✅ proved - incomplete|shostak|0.243|
|complem_fill|✅ proved - incomplete|shostak|0.084|
|subgraph_conn|✅ proved - incomplete|shostak|0.155|
|complete_conn|✅ proved - incomplete|shostak|0.163|
|short_path_TCC1|✅ proved - incomplete|shostak|0.142|
|short_path_TCC2|✅ proved - incomplete|shostak|0.094|
|short_path|✅ proved - incomplete|shostak|0.998|
|trans_walk|✅ proved - incomplete|shostak|0.218|
|trans_connected|✅ proved - incomplete|shostak|0.188|
|disjoint_trans|✅ proved - incomplete|shostak|0.136|
|disjoint_trans_strong|✅ proved - incomplete|shostak|0.063|
|subgraph_trans|✅ proved - incomplete|shostak|0.114|
|subgraph_trans_strong|✅ proved - incomplete|shostak|0.065|
|t_close_4|✅ proved - incomplete|shostak|0.133|
|closure_connect|✅ proved - incomplete|shostak|0.433|
|connected_complem|✅ proved - incomplete|shostak|0.236|
|p_close_TCC1|✅ proved - incomplete|shostak|0.135|
|p_close_TCC2|✅ proved - incomplete|shostak|0.092|
|p_subgraph_t|✅ proved - incomplete|shostak|0.145|
|p_transitive|✅ proved - incomplete|shostak|0.130|
|p_close_1|✅ proved - incomplete|shostak|0.137|
|p_close_trans|✅ proved - incomplete|shostak|0.064|
|t_subgraph|✅ proved - incomplete|shostak|0.142|

## `los_graph`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|los_graphic|✅ proved - complete|shostak|0.079|
|Los|✅ proved - complete|shostak|0.063|

## `sep_set_lems`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sep_num_0|✅ proved - incomplete|shostak|0.076|
|sep_num_gt_0|✅ proved - incomplete|shostak|0.162|
|sep_num_is_1|✅ proved - incomplete|shostak|0.157|
|sep_num_le1|✅ proved - incomplete|shostak|0.207|
|separable?_comm|✅ proved - incomplete|shostak|0.062|
|separates_comm|✅ proved - incomplete|shostak|0.094|
|sep_num_comm|✅ proved - incomplete|shostak|0.093|
|v_not_in|✅ proved - incomplete|shostak|0.143|
|path_thru_each|✅ proved - incomplete|shostak|0.151|
|one_to_each|✅ proved - incomplete|shostak|0.253|
|walk?_del_verts|✅ proved - incomplete|shostak|0.102|
|del_verts_eq|✅ proved - incomplete|shostak|0.114|

## `tree_paths`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|dual_paths?_TCC1|✅ proved - incomplete|shostak|0.070|
|dual_paths?_TCC2|✅ proved - incomplete|shostak|0.070|
|dual_paths?_TCC3|✅ proved - incomplete|shostak|0.074|
|dual_paths?_TCC4|✅ proved - incomplete|shostak|0.070|
|min_dual_paths_TCC1|✅ proved - incomplete|shostak|0.066|
|min_dual_def|✅ proved - incomplete|shostak|0.309|
|min_dual_exists|✅ proved - incomplete|shostak|0.086|
|dual_path_trunc_TCC1|✅ proved - incomplete|shostak|0.076|
|dual_path_trunc_TCC2|✅ proved - incomplete|shostak|0.165|
|dual_path_trunc_TCC3|✅ proved - incomplete|shostak|0.166|
|dual_path_trunc_TCC4|✅ proved - incomplete|shostak|0.191|
|dual_path_trunc_TCC5|✅ proved - incomplete|shostak|0.120|
|dual_path_trunc_TCC6|✅ proved - incomplete|shostak|0.214|
|dual_path_trunc_TCC7|✅ proved - incomplete|shostak|0.136|
|dual_path_trunc_TCC8|✅ proved - incomplete|shostak|0.242|
|dual_path_trunc|✅ proved - incomplete|shostak|0.172|
|dual_path_length|✅ proved - incomplete|shostak|0.235|
|min_dual_reduc_TCC1|✅ proved - incomplete|shostak|0.081|
|min_dual_reduc_TCC2|✅ proved - incomplete|shostak|0.070|
|min_dual_reduc_TCC3|✅ proved - incomplete|shostak|0.075|
|min_dual_reduc_TCC4|✅ proved - incomplete|shostak|0.086|
|min_dual_reduc|✅ proved - incomplete|shostak|0.767|
|min_dual_distin_TCC1|✅ proved - incomplete|shostak|0.130|
|min_dual_distin_TCC2|✅ proved - incomplete|shostak|0.118|
|min_dual_distin|✅ proved - incomplete|shostak|0.475|
|dual_cycle_TCC1|✅ proved - incomplete|shostak|0.112|
|dual_cycle_TCC2|✅ proved - incomplete|shostak|0.111|
|dual_cycle_TCC3|✅ proved - incomplete|shostak|0.070|
|dual_cycle_TCC4|✅ proved - incomplete|shostak|0.258|
|dual_cycle|✅ proved - incomplete|shostak|1.667|
|tree_one_path|✅ proved - incomplete|shostak|1.560|

## `cycles`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cycle?_TCC1|✅ proved - incomplete|shostak|0.091|
|cycle?_TCC2|✅ proved - incomplete|shostak|0.090|
|cycle_l_gt_3|✅ proved - incomplete|shostak|0.063|
|cycle_has_path_TCC1|✅ proved - incomplete|shostak|0.104|
|cycle_has_path|✅ proved - incomplete|shostak|0.198|
|cycle_gt3|✅ proved - incomplete|shostak|0.076|
|cycle_def|✅ proved - incomplete|shostak|0.107|

## `cycle_deg`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|reachable_TCC1|✅ proved - incomplete|shostak|0.076|
|reachable_subset|✅ proved - incomplete|shostak|0.100|
|reachable_conn|✅ proved - incomplete|shostak|1.017|
|conn_compon|✅ proved - incomplete|shostak|1.311|
|sub_cycle_TCC1|✅ proved - incomplete|shostak|0.083|
|sub_cycle|✅ proved - incomplete|shostak|0.102|
|uniq_del_vert|✅ proved - incomplete|shostak|0.091|
|del_edge_uniq|✅ proved - incomplete|shostak|0.896|
|charact_tree|✅ proved - incomplete|shostak|0.256|
|exclus_cycl|✅ proved - incomplete|shostak|0.466|
|num_edge_tree|✅ proved - incomplete|shostak|0.638|
|iff_tree|✅ proved - incomplete|shostak|0.251|
|tree_num_iff|✅ proved - incomplete|shostak|0.165|
|deg_gt_1_cycle|✅ proved - incomplete|shostak|0.249|

## `old_menger`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|easy_menger|✅ proved - incomplete|shostak|0.310|
|hard_menger|✅ proved - incomplete|shostak|0.274|
|easy_meng_1|✅ proved - incomplete|shostak|0.310|

## `h_menger`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|path_not_thru|✅ proved - incomplete|shostak|0.205|
|adjacent_fact|✅ proved - incomplete|shostak|0.000|
|sep_num_del|✅ proved - incomplete|shostak|0.189|
|separates_del|✅ proved - incomplete|shostak|0.155|
|induction_step_comm|✅ proved - incomplete|shostak|0.065|
|separable?_del|✅ proved - incomplete|shostak|0.080|
|seq_j_TCC1|✅ proved - complete|shostak|0.067|
|seq_j_TCC2|✅ proved - incomplete|shostak|0.060|
|seq_j_TCC3|✅ proved - incomplete|shostak|0.086|
|seq_j|✅ proved - incomplete|shostak|0.247|
|short_path_case|✅ proved - incomplete|shostak|0.254|
|finale|✅ proved - incomplete|shostak|0.981|
|h_menger|✅ proved - incomplete|shostak|0.103|
|hard_menger|✅ proved - incomplete|shostak|0.260|

## `meng_scaff_prelude`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|line20_TCC1|✅ proved - incomplete|shostak|0.070|
|line20_TCC2|✅ proved - incomplete|shostak|0.084|
|line20_TCC3|✅ proved - incomplete|shostak|0.080|
|line20_TCC4|✅ proved - incomplete|shostak|0.062|
|line20_TCC5|✅ proved - incomplete|shostak|0.075|
|line20_TCC6|✅ proved - incomplete|shostak|0.070|
|line20|✅ proved - incomplete|shostak|0.420|
|join2_TCC1|✅ proved - incomplete|shostak|0.070|
|join2_TCC2|✅ proved - incomplete|shostak|0.265|
|path_meng_t|✅ proved - incomplete|shostak|0.085|
|path_H_def_TCC1|✅ proved - incomplete|shostak|0.106|
|path_H_def|✅ proved - incomplete|shostak|0.253|
|path_H_ind_TCC1|✅ proved - complete|shostak|0.070|
|path_H_ind_TCC2|✅ proved - incomplete|shostak|0.257|
|path_H_ind_TCC3|✅ proved - incomplete|shostak|0.060|
|path_H_ind_TCC4|✅ proved - incomplete|shostak|0.371|
|path_H_ind|✅ proved - incomplete|shostak|0.635|
|path_comps_ind3_TCC1|✅ proved - complete|shostak|0.063|
|path_comps_ind3_TCC2|✅ proved - complete|shostak|0.123|
|path_comps_ind3_TCC3|✅ proved - incomplete|shostak|0.272|
|path_comps_ind3_TCC4|✅ proved - incomplete|shostak|0.290|
|path_comps_ind3_TCC5|✅ proved - incomplete|shostak|0.066|
|path_comps_ind3_TCC6|✅ proved - incomplete|shostak|0.070|
|path_comps_ind3|✅ proved - incomplete|shostak|0.133|
|path_H_trunc_TCC1|✅ proved - incomplete|shostak|0.261|
|path_H_trunc_TCC2|✅ proved - incomplete|shostak|0.215|
|path_H_trunc|✅ proved - incomplete|shostak|0.396|
|meng_last_TCC1|✅ proved - complete|shostak|0.058|
|meng_last_TCC2|✅ proved - complete|shostak|0.070|
|meng_last_TCC3|✅ proved - incomplete|shostak|0.432|
|meng_last_TCC4|✅ proved - incomplete|shostak|0.439|
|meng_last|✅ proved - incomplete|shostak|0.190|
|ind_verts_W_TCC1|✅ proved - incomplete|shostak|0.157|
|ind_verts_W_TCC2|✅ proved - incomplete|shostak|0.145|
|ind_verts_W|✅ proved - incomplete|shostak|0.113|
|ind_verts_w_TCC1|✅ proved - incomplete|shostak|0.135|
|ind_verts_w_TCC2|✅ proved - incomplete|shostak|0.156|
|ind_verts_w|✅ proved - incomplete|shostak|0.113|
|path_meng_in_TCC1|✅ proved - incomplete|shostak|0.060|
|path_meng_in_TCC2|✅ proved - incomplete|shostak|0.067|
|path_meng_in_TCC3|✅ proved - incomplete|shostak|0.505|
|path_meng_in|✅ proved - incomplete|shostak|0.867|
|join2_lem_TCC1|✅ proved - incomplete|shostak|0.141|
|join2_lem_TCC2|✅ proved - incomplete|shostak|0.143|
|join2_lem_TCC3|✅ proved - incomplete|shostak|0.090|
|join2_lem_TCC4|✅ proved - incomplete|shostak|0.071|
|join2_lem|✅ proved - incomplete|shostak|0.925|
|path_from_to_walk_from|✅ proved - incomplete|shostak|0.082|
|paths_H_disj_TCC1|✅ proved - incomplete|shostak|0.060|
|paths_H_disj_TCC2|✅ proved - incomplete|shostak|0.063|
|paths_H_disj|✅ proved - incomplete|shostak|0.346|
|prelude|✅ proved - incomplete|shostak|3.649|

## `meng_scaff`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|first_TCC1|✅ proved - complete|shostak|0.071|
|first_lem|✅ proved - incomplete|shostak|0.082|
|first_not_TCC1|✅ proved - complete|shostak|0.060|
|first_not|✅ proved - incomplete|shostak|0.102|
|meng_to_G_sep_TCC1|✅ proved - incomplete|shostak|0.093|
|meng_to_G_sep_TCC2|✅ proved - incomplete|shostak|0.101|
|meng_to_G_sep_TCC3|✅ proved - incomplete|shostak|0.107|
|meng_to_G_sep_TCC4|✅ proved - incomplete|shostak|0.097|
|meng_to_G_sep|✅ proved - incomplete|shostak|0.000|
|prep_14_TCC1|✅ proved - complete|shostak|0.074|
|prep_14_TCC2|✅ proved - complete|shostak|0.080|
|prep_14|✅ proved - incomplete|shostak|0.225|
|line14_TCC1|✅ proved - incomplete|shostak|0.055|
|line14_TCC2|✅ proved - incomplete|shostak|0.151|
|line14_TCC3|✅ proved - incomplete|shostak|0.152|
|line14_TCC4|✅ proved - incomplete|shostak|0.148|
|line14|✅ proved - incomplete|shostak|0.394|
|line15ab|✅ proved - incomplete|shostak|0.233|
|prep_16|✅ proved - incomplete|shostak|0.740|
|line16|✅ proved - incomplete|shostak|0.344|
|line19_TCC1|✅ proved - incomplete|shostak|0.060|
|line19_TCC2|✅ proved - incomplete|shostak|0.081|
|line19_TCC3|✅ proved - incomplete|shostak|0.081|
|line19_TCC4|✅ proved - incomplete|shostak|0.082|
|line19_TCC5|✅ proved - incomplete|shostak|0.060|
|line19|✅ proved - incomplete|shostak|0.496|
|line17_prep|✅ proved - incomplete|shostak|0.120|
|line17_TCC1|✅ proved - incomplete|shostak|0.198|
|line17_TCC2|✅ proved - incomplete|shostak|0.193|
|line17_TCC3|✅ proved - incomplete|shostak|0.210|
|line17_TCC4|✅ proved - incomplete|shostak|0.206|
|line17|✅ proved - incomplete|shostak|0.198|
|pre20|✅ proved - incomplete|shostak|0.183|

## `meng_scaff_defs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|H_TCC1|✅ proved - incomplete|shostak|0.092|
|incident_TCC1|✅ proved - incomplete|shostak|0.074|
|meng_TCC1|✅ proved - complete|shostak|0.062|
|meng_TCC2|✅ proved - complete|shostak|0.060|
|meng_TCC3|✅ proved - incomplete|shostak|0.093|
|vert_H_s|✅ proved - incomplete|shostak|0.111|
|path_H_W|✅ proved - incomplete|shostak|0.106|
|path_comp_in|✅ proved - incomplete|shostak|0.087|
|walk?_H_TCC1|✅ proved - incomplete|shostak|0.080|
|walk?_H|✅ proved - incomplete|shostak|0.549|
|vert_meng_sub_TCC1|✅ proved - complete|shostak|0.070|
|vert_meng_sub_TCC2|✅ proved - complete|shostak|0.072|
|vert_meng_sub_TCC3|✅ proved - complete|shostak|0.082|
|vert_meng_sub_TCC4|✅ proved - complete|shostak|0.070|
|vert_meng_sub|✅ proved - incomplete|shostak|0.084|
|del_vert_comm|✅ proved - incomplete|shostak|0.100|
|H_comm|✅ proved - incomplete|shostak|0.060|
|incident_comm|✅ proved - incomplete|shostak|0.067|
|meng_comm_TCC1|✅ proved - complete|shostak|0.076|
|meng_comm_TCC2|✅ proved - complete|shostak|0.070|
|meng_comm|✅ proved - incomplete|shostak|0.134|

## `mantel`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|one_to_some|✅ proved - incomplete|shostak|0.066|
|some_to_lots|✅ proved - incomplete|shostak|0.070|
|one_to_lots|✅ proved - incomplete|shostak|0.066|
|exst_tri|✅ proved - incomplete|shostak|0.076|
|one_vert_edges|✅ proved - incomplete|shostak|0.073|
|edge_adjacent|✅ proved - incomplete|shostak|0.090|
|disj_neighbor_sets|✅ proved - incomplete|shostak|0.090|
|adj_is_subset|✅ proved - incomplete|shostak|0.086|
|adj_is_subset2|✅ proved - incomplete|shostak|0.080|
|no_cn|✅ proved - incomplete|shostak|0.116|
|disj_adj_card|✅ proved - incomplete|shostak|0.138|
|pre_edges_del21|✅ proved - incomplete|shostak|0.110|
|pre_edges_del22|✅ proved - incomplete|shostak|0.122|
|edges_del2|✅ proved - incomplete|shostak|0.120|
|verts_del2|✅ proved - incomplete|shostak|0.125|
|tri_del2|✅ proved - incomplete|shostak|0.145|
|int_lem|✅ proved - incomplete|shostak|0.106|
|card_union|✅ proved - incomplete|shostak|0.287|
|adj_helper|✅ proved - incomplete|shostak|0.105|
|adj_helper2|✅ proved - incomplete|shostak|0.105|
|inc_ind1|✅ proved - complete|shostak|0.095|
|adj_ind1|✅ proved - incomplete|shostak|0.126|
|inc_ind2|✅ proved - complete|shostak|0.166|
|adj_ind2|✅ proved - incomplete|shostak|0.360|
|inc_equals_adj|✅ proved - incomplete|shostak|0.450|
|Mantel|✅ proved - incomplete|shostak|0.606|

## `graph_pair`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|wf_lsth|✅ proved - complete|shostak|0.097|
|NAT_pair_induct|✅ proved - complete|shostak|0.085|
|size_up|✅ proved - complete|shostak|0.294|
|graph_induct_pair|✅ proved - complete|shostak|0.099|
|graph_induct_pair_B|✅ proved - complete|shostak|0.060|
|graph_pair_induct_not|✅ proved - complete|shostak|0.076|

## `mappings`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|reachable_TCC1|✅ proved - incomplete|shostak|0.076|
|reachable_subset|✅ proved - incomplete|shostak|0.080|
|path_reach1|✅ proved - incomplete|shostak|0.190|
|path_reach2|✅ proved - incomplete|shostak|0.229|
|reachable_conn|✅ proved - incomplete|shostak|0.000|
|sub_tree_k|✅ proved - incomplete|shostak|0.080|
|sub_tree_0|✅ proved - incomplete|shostak|1.932|
|sub_tree_k_lemm|✅ proved - incomplete|shostak|1.231|
|sub_tree_all|✅ proved - incomplete|shostak|0.070|
|path_reach4|✅ proved - incomplete|shostak|0.275|
|size_subgraph_path_TCC1|✅ proved - incomplete|shostak|0.070|
|size_subgraph_path|✅ proved - incomplete|shostak|0.365|
|path_gap|✅ proved - incomplete|shostak|0.750|
|set_card_less|✅ proved - complete|shostak|0.100|
|conn_compon|✅ proved - incomplete|shostak|1.445|
|Bush_less|✅ proved - incomplete|shostak|1.975|
|Fox_TCC1|✅ proved - incomplete|shostak|0.060|
|Fox_TCC2|✅ proved - incomplete|shostak|0.060|
|Fox_TCC3|✅ proved - incomplete|shostak|0.070|
|Fox_TCC4|✅ proved - incomplete|shostak|0.160|
|Fox_TCC5|✅ proved - incomplete|shostak|0.141|
|Fox_TCC6|✅ proved - incomplete|shostak|0.175|
|short_hound|✅ proved - incomplete|shostak|0.086|
|back_hound_TCC1|✅ proved - incomplete|shostak|0.070|
|back_hound_TCC2|✅ proved - incomplete|shostak|0.107|
|back_hound|✅ proved - incomplete|shostak|0.287|
|stuck_hound_TCC1|✅ proved - incomplete|shostak|0.056|
|stuck_hound_TCC2|✅ proved - incomplete|shostak|0.116|
|stuck_hound_TCC3|✅ proved - incomplete|shostak|0.070|
|stuck_hound_TCC4|✅ proved - incomplete|shostak|0.067|
|stuck_hound|✅ proved - incomplete|shostak|0.432|
|whole_hound_TCC1|✅ proved - incomplete|shostak|0.062|
|whole_hound_TCC2|✅ proved - incomplete|shostak|0.141|
|whole_hound_TCC3|✅ proved - incomplete|shostak|0.070|
|whole_hound_TCC4|✅ proved - incomplete|shostak|0.070|
|whole_hound|✅ proved - incomplete|shostak|0.336|
|fixed_fox|✅ proved - incomplete|shostak|0.844|
|small_fox|✅ proved - incomplete|shostak|11.316|
|num_edge_tree|✅ proved - incomplete|shostak|0.754|
|uniq_del_vert|✅ proved - incomplete|shostak|0.088|
|del_edge_uniq|✅ proved - incomplete|shostak|0.972|
|charact_tree|✅ proved - incomplete|shostak|0.265|
|iff_tree|✅ proved - incomplete|shostak|0.276|
|tree_num_iff|✅ proved - incomplete|shostak|0.163|
|tree_map|✅ proved - incomplete|shostak|0.182|
|sub_cycle_TCC1|✅ proved - incomplete|shostak|0.116|
|sub_cycle|✅ proved - incomplete|shostak|0.106|
|exclus_cycl|✅ proved - incomplete|shostak|0.794|
|deg_gt_1_cycle|✅ proved - incomplete|shostak|0.261|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Mac OS X (Intel)] (Nov 14, 2020 23:13)|
| Patch Version| n/a|
| Library Path| `/Applications/pvs-7.1.0/pvslib/`<br/>`/Applications/pvs-7.1.0/lib/`<br/>`/Applications/pvs-7.1.0/pvslib/float/`<br/>`/Applications/pvs-7.1.0/pvslib/pvsio_utils/`|
| Loaded Patches | `/Applications/pvs-7.1.0/pvslib/.pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230712-static-update.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230710-tcc-gen.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230707-defattach.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230706-extrategies.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210323-wish.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210225-cl2pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210715a.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210715.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210707.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210706.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210511.lisp`|
