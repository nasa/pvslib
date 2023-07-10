# Summary for `graphs`
Run started at 1:58:54 7/8/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **792**   | **792**    | **792**    | **0**  | **4:46.633 s**   |
|top|0|0|0|0|0.000|
|graphs|14|14|14|0|1.429|
|graph_deg|16|16|16|0|1.978|
|graph_ops|22|22|22|0|2.176|
|graph_deg_sum|8|8|8|0|1.976|
|subgraphs|7|7|7|0|0.630|
|walks|46|46|46|0|7.549|
|paths|17|17|17|0|2.712|
|path_ops|11|11|11|0|4.229|
|sep_sets|13|13|13|0|2.190|
|walk_inductions|2|2|2|0|0.174|
|path_circ|65|65|65|0|23.072|
|circuits|4|4|4|0|0.429|
|path_lems|1|1|1|0|0.128|
|subgraphs_from_walk|9|9|9|0|1.064|
|graph_from_edges|10|10|10|0|0.993|
|max_subgraphs|7|7|7|0|0.744|
|max_subtrees|7|7|7|0|1.007|
|trees|9|9|9|0|4.526|
|graph_inductions|5|5|5|0|0.503|
|tree_circ|6|6|6|0|1.067|
|circuit_deg|3|3|3|0|2.344|
|subtrees|8|8|8|0|1.713|
|graph_conn_defs|3|3|3|0|0.276|
|graph_connected|4|4|4|0|0.467|
|graph_conn_piece|9|9|9|0|1.922|
|graph_piece_path|3|3|3|0|1.290|
|graph_path_conn|5|5|5|0|1.849|
|graph_complected|12|12|12|0|2.319|
|ramsey_new|8|8|8|0|2.546|
|min_walk_reduced|4|4|4|0|1.716|
|min_walks|4|4|4|0|0.612|
|reduce_walks|11|11|11|0|2.132|
|menger|2|2|2|0|0.579|
|ind_paths|8|8|8|0|0.911|
|k_menger|110|110|110|0|1:13.816|
|easy_menger|2|2|2|0|0.877|
|subgraph_paths|2|2|2|0|0.264|
|complem|45|45|45|0|14.760|
|los_graph|2|2|2|0|0.209|
|sep_set_lems|12|12|12|0|2.289|
|tree_paths|31|31|31|0|14.885|
|cycles|7|7|7|0|1.037|
|cycle_deg|14|14|14|0|8.116|
|old_menger|3|3|3|0|1.272|
|h_menger|14|14|14|0|4.274|
|meng_scaff_prelude|52|52|52|0|18.898|
|meng_scaff|33|33|33|0|10.596|
|meng_scaff_defs|21|21|21|0|3.064|
|mantel|26|26|26|0|5.085|
|graph_pair|6|6|6|0|1.003|
|mappings|49|49|49|0|46.936|
## Detailed Summary 
## `top`
No formula declaration found.
## `graphs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|edg_TCC1|✅ proved - complete|shostak|0.119|
|edge?_TCC1|✅ proved - incomplete|shostak|0.114|
|edge?_comm|✅ proved - incomplete|shostak|0.083|
|edges_vert|✅ proved - incomplete|shostak|0.121|
|other_vert|✅ proved - incomplete|shostak|0.115|
|edge_has_2_verts|✅ proved - incomplete|shostak|0.100|
|edges_vert_in|✅ proved - incomplete|shostak|0.084|
|vert_in|✅ proved - incomplete|shostak|0.085|
|empty?_rew|✅ proved - complete|shostak|0.070|
|edges_of_empty|✅ proved - incomplete|shostak|0.107|
|singleton_edges|✅ proved - incomplete|shostak|0.095|
|edge_in_card_gt_1|✅ proved - incomplete|shostak|0.170|
|not_singleton_2_vert|✅ proved - complete|shostak|0.090|
|singleton_graph_TCC1|✅ proved - complete|shostak|0.076|

## `graph_deg`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|incident_edges_TCC1|✅ proved - complete|shostak|0.106|
|incident_edges_subset|✅ proved - complete|shostak|0.090|
|incident_edges_emptyset|✅ proved - complete|shostak|0.085|
|deg_del_edge|✅ proved - incomplete|shostak|0.219|
|deg_del_edge2|✅ proved - incomplete|shostak|0.113|
|deg_del_edge3|✅ proved - complete|shostak|0.116|
|deg_del_edge_ge|✅ proved - incomplete|shostak|0.115|
|deg_del_edge_le|✅ proved - incomplete|shostak|0.106|
|deg_edge_exists|✅ proved - complete|shostak|0.090|
|deg_to_card|✅ proved - complete|shostak|0.162|
|del_vert_deg_0|✅ proved - incomplete|shostak|0.116|
|deg_del_vert_TCC1|✅ proved - complete|shostak|0.086|
|deg_del_vert|✅ proved - incomplete|shostak|0.245|
|del_vert_not_incident|✅ proved - incomplete|shostak|0.117|
|singleton_deg|✅ proved - incomplete|shostak|0.106|
|deg_1_sing|✅ proved - complete|shostak|0.106|

## `graph_ops`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|union_TCC1|✅ proved - complete|shostak|0.095|
|del_vert_TCC1|✅ proved - complete|shostak|0.100|
|del_vert_TCC2|✅ proved - incomplete|shostak|0.145|
|del_edge_TCC1|✅ proved - complete|shostak|0.077|
|adjacent_TCC1|✅ proved - incomplete|shostak|0.105|
|del_vert_still_in|✅ proved - incomplete|shostak|0.080|
|size_del_vert|✅ proved - incomplete|shostak|0.083|
|del_vert_le|✅ proved - incomplete|shostak|0.100|
|del_vert_ge|✅ proved - incomplete|shostak|0.097|
|edge_in_del_vert|✅ proved - incomplete|shostak|0.080|
|edges_del_vert|✅ proved - incomplete|shostak|0.066|
|del_vert_comm|✅ proved - incomplete|shostak|0.136|
|del_vert_empty?|✅ proved - incomplete|shostak|0.110|
|del_edge_lem|✅ proved - complete|shostak|0.077|
|del_edge_lem2|✅ proved - complete|shostak|0.080|
|del_edge_lem3|✅ proved - complete|shostak|0.087|
|del_edge_lem5|✅ proved - complete|shostak|0.110|
|vert_del_edge|✅ proved - complete|shostak|0.077|
|del_edge_num|✅ proved - complete|shostak|0.136|
|del_edge_singleton|✅ proved - complete|shostak|0.077|
|del_vert_edge_comm|✅ proved - incomplete|shostak|0.130|
|del_vert_edge|✅ proved - incomplete|shostak|0.128|

## `graph_deg_sum`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|deg_lem0|✅ proved - incomplete|shostak|0.212|
|deg_lem2_TCC1|✅ proved - incomplete|shostak|0.085|
|deg_lem2|✅ proved - incomplete|shostak|0.197|
|edge_induction|✅ proved - complete|shostak|0.080|
|deg_thm|✅ proved - incomplete|shostak|0.779|
|subgraph_deg|✅ proved - complete|shostak|0.201|
|sum_gt_bound|✅ proved - incomplete|shostak|0.267|
|deg_gt_one|✅ proved - incomplete|shostak|0.155|

## `subgraphs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|finite_vert_subset|✅ proved - complete|shostak|0.084|
|subgraph_TCC1|✅ proved - complete|shostak|0.100|
|subgraph_TCC2|✅ proved - complete|shostak|0.074|
|subgraph_TCC3|✅ proved - complete|shostak|0.110|
|subgraph_vert_sub|✅ proved - complete|shostak|0.087|
|subgraph_lem|✅ proved - complete|shostak|0.080|
|subgraph_smaller|✅ proved - complete|shostak|0.095|

## `walks`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|walk?_TCC1|✅ proved - complete|shostak|0.104|
|walk?_TCC2|✅ proved - complete|shostak|0.120|
|list2prewalk_TCC1|✅ proved - complete|shostak|0.080|
|from?_TCC1|✅ proved - complete|shostak|0.076|
|from?_TCC2|✅ proved - complete|shostak|0.070|
|verts_of_TCC1|✅ proved - incomplete|shostak|0.161|
|edges_of_TCC1|✅ proved - complete|shostak|0.080|
|edges_of_TCC2|✅ proved - complete|shostak|0.080|
|edges_of_TCC3|✅ proved - incomplete|shostak|0.208|
|pre_circuit?_TCC1|✅ proved - incomplete|shostak|0.090|
|pre_circuit?_TCC2|✅ proved - incomplete|shostak|0.080|
|verts_in?_concat_TCC1|✅ proved - complete|shostak|0.104|
|verts_in?_concat|✅ proved - complete|shostak|0.163|
|verts_in?_caret_TCC1|✅ proved - complete|shostak|0.162|
|verts_in?_caret|✅ proved - complete|shostak|0.262|
|vert_seq_lem|✅ proved - complete|shostak|0.090|
|verts_of_subset|✅ proved - incomplete|shostak|0.096|
|edges_of_subset|✅ proved - incomplete|shostak|0.127|
|walk_verts_in|✅ proved - incomplete|shostak|0.070|
|walk_from_vert|✅ proved - incomplete|shostak|0.107|
|walk_edge_in|✅ proved - incomplete|shostak|0.146|
|trunc1_TCC1|✅ proved - complete|shostak|0.070|
|trunc1_TCC2|✅ proved - complete|shostak|0.107|
|add1_TCC1|✅ proved - complete|shostak|0.070|
|gen_seq1_is_walk|✅ proved - incomplete|shostak|0.086|
|edge_to_walk_TCC1|✅ proved - complete|shostak|0.080|
|edge_to_walk_TCC2|✅ proved - incomplete|shostak|0.090|
|edge_to_walk_TCC3|✅ proved - complete|shostak|0.078|
|edge_to_walk|✅ proved - incomplete|shostak|0.096|
|walk?_rev_TCC1|✅ proved - incomplete|shostak|0.090|
|walk?_rev|✅ proved - incomplete|shostak|0.157|
|walk?_reverse|✅ proved - incomplete|shostak|0.162|
|walk?_caret_TCC1|✅ proved - incomplete|shostak|0.206|
|walk?_caret|✅ proved - incomplete|shostak|0.281|
|l_trunc1_TCC1|✅ proved - complete|shostak|0.070|
|l_trunc1|✅ proved - complete|shostak|0.137|
|walk?_add1|✅ proved - incomplete|shostak|0.176|
|walk_concat_edge_TCC1|✅ proved - incomplete|shostak|0.135|
|walk_concat_edge|✅ proved - incomplete|shostak|0.296|
|walk_concat_TCC1|✅ proved - incomplete|shostak|0.156|
|walk_concat_TCC2|✅ proved - incomplete|shostak|0.213|
|walk_concat|✅ proved - incomplete|shostak|0.507|
|walk?_cut_TCC1|✅ proved - incomplete|shostak|0.096|
|walk?_cut_TCC2|✅ proved - incomplete|shostak|0.209|
|walk?_cut|✅ proved - incomplete|shostak|0.902|
|walk_merge|✅ proved - incomplete|shostak|0.603|

## `paths`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|path?_verts|✅ proved - incomplete|shostak|0.085|
|path_from_l|✅ proved - incomplete|shostak|0.114|
|path_from_in|✅ proved - incomplete|shostak|0.103|
|path?_caret_TCC1|✅ proved - incomplete|shostak|0.213|
|path?_caret|✅ proved - incomplete|shostak|0.417|
|path_from?_caret_TCC1|✅ proved - incomplete|shostak|0.224|
|path_from?_caret_TCC2|✅ proved - incomplete|shostak|0.171|
|path_from?_caret|✅ proved - incomplete|shostak|0.185|
|path?_rev_TCC1|✅ proved - incomplete|shostak|0.115|
|path?_rev|✅ proved - incomplete|shostak|0.157|
|path?_gen_seq2|✅ proved - incomplete|shostak|0.115|
|path?_add1_TCC1|✅ proved - incomplete|shostak|0.096|
|path?_add1|✅ proved - incomplete|shostak|0.196|
|path?_trunc1_TCC1|✅ proved - incomplete|shostak|0.117|
|path?_trunc1_TCC2|✅ proved - incomplete|shostak|0.100|
|path?_trunc1_TCC3|✅ proved - incomplete|shostak|0.117|
|path?_trunc1|✅ proved - incomplete|shostak|0.187|

## `path_ops`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|walk?_del_vert|✅ proved - incomplete|shostak|0.166|
|walk?_del_vert_not|✅ proved - incomplete|shostak|0.162|
|path?_del_vert|✅ proved - incomplete|shostak|0.100|
|path?_del_verts|✅ proved - incomplete|shostak|0.000|
|walk_to_path|✅ proved - incomplete|shostak|0.535|
|walk_to_path_less|✅ proved - incomplete|shostak|1.353|
|walk_to_path_from|✅ proved - incomplete|shostak|0.098|
|walk_to_path_from_less|✅ proved - incomplete|shostak|0.089|
|path_disjoint_TCC1|✅ proved - incomplete|shostak|0.192|
|path_disjoint_TCC2|✅ proved - incomplete|shostak|0.354|
|path_disjoint|✅ proved - incomplete|shostak|1.180|

## `sep_sets`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|del_verts_TCC1|✅ proved - complete|shostak|0.110|
|del_verts_TCC2|✅ proved - complete|shostak|0.082|
|sep_set_exists|✅ proved - incomplete|shostak|0.294|
|min_sep_set_TCC1|✅ proved - incomplete|shostak|0.080|
|min_sep_set_edge|✅ proved - incomplete|shostak|0.143|
|min_sep_set_card|✅ proved - incomplete|shostak|0.205|
|min_sep_set_seps|✅ proved - incomplete|shostak|0.135|
|min_sep_set_vert|✅ proved - incomplete|shostak|0.286|
|ends_not_in_min_sep_set|✅ proved - incomplete|shostak|0.080|
|walk?_del_verts_not|✅ proved - incomplete|shostak|0.163|
|adj_verts_TCC1|✅ proved - incomplete|shostak|0.145|
|adj_verts_lem|✅ proved - incomplete|shostak|0.188|
|sep_num_min|✅ proved - incomplete|shostak|0.279|

## `walk_inductions`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|walk_prep|✅ proved - complete|shostak|0.091|
|graph_induction_walk|✅ proved - complete|shostak|0.083|

## `path_circ`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|path_reduc|✅ proved - incomplete|shostak|0.229|
|trunc_long|✅ proved - complete|shostak|0.225|
|trunc_walk|✅ proved - incomplete|shostak|0.273|
|walks_concat_red_TCC1|✅ proved - incomplete|shostak|0.110|
|walks_concat_red_TCC2|✅ proved - incomplete|shostak|0.127|
|walks_concat_red_TCC3|✅ proved - incomplete|shostak|0.116|
|walks_concat_red_TCC4|✅ proved - incomplete|shostak|0.120|
|walks_concat_red_TCC5|✅ proved - incomplete|shostak|0.186|
|walks_concat_red_TCC6|✅ proved - incomplete|shostak|0.186|
|walks_concat_red_TCC7|✅ proved - incomplete|shostak|1.723|
|walks_concat_red|✅ proved - incomplete|shostak|0.676|
|index_rev_TCC1|✅ proved - incomplete|shostak|0.081|
|index_rev_TCC2|✅ proved - incomplete|shostak|0.070|
|index_rev_TCC3|✅ proved - incomplete|shostak|0.080|
|index_rev_TCC4|✅ proved - incomplete|shostak|0.094|
|index_rev|✅ proved - incomplete|shostak|0.090|
|rev_rev|✅ proved - incomplete|shostak|0.089|
|ind_rev_rev_TCC1|✅ proved - incomplete|shostak|0.080|
|ind_rev_rev_TCC2|✅ proved - complete|shostak|0.070|
|ind_rev_rev_TCC3|✅ proved - incomplete|shostak|0.096|
|ind_rev_rev_TCC4|✅ proved - incomplete|shostak|0.090|
|ind_rev_rev|✅ proved - incomplete|shostak|0.094|
|second_in_cat_TCC1|✅ proved - complete|shostak|0.100|
|second_in_cat_TCC2|✅ proved - incomplete|shostak|0.242|
|second_in_cat_TCC3|✅ proved - complete|shostak|0.100|
|second_in_cat|✅ proved - incomplete|shostak|0.303|
|sec_from_last_TCC1|✅ proved - complete|shostak|0.096|
|sec_from_last_TCC2|✅ proved - incomplete|shostak|0.266|
|sec_from_last|✅ proved - incomplete|shostak|0.292|
|prewalk_same|✅ proved - complete|shostak|0.116|
|compose_long_TCC1|✅ proved - complete|shostak|0.106|
|compose_long_TCC2|✅ proved - complete|shostak|0.096|
|compose_long|✅ proved - incomplete|shostak|0.285|
|red_compos_TCC1|✅ proved - incomplete|shostak|0.195|
|red_compos_TCC2|✅ proved - incomplete|shostak|0.192|
|red_compos_TCC3|✅ proved - incomplete|shostak|0.195|
|red_compos_TCC4|✅ proved - incomplete|shostak|1.072|
|red_compos|✅ proved - incomplete|shostak|3.261|
|cycl_red_compos_TCC1|✅ proved - incomplete|shostak|0.203|
|cycl_red_compos_TCC2|✅ proved - incomplete|shostak|0.209|
|cycl_red_compos|✅ proved - incomplete|shostak|4.212|
|walkers_TCC1|✅ proved - complete|shostak|0.070|
|walkers_TCC2|✅ proved - complete|shostak|0.080|
|walkers_TCC3|✅ proved - complete|shostak|0.070|
|walkers|✅ proved - complete|shostak|0.094|
|path_one_TCC1|✅ proved - incomplete|shostak|0.128|
|path_one|✅ proved - incomplete|shostak|0.315|
|rev_eq|✅ proved - incomplete|shostak|0.107|
|front_back_TCC1|✅ proved - complete|shostak|0.076|
|front_back|✅ proved - complete|shostak|0.100|
|walk_from_l|✅ proved - complete|shostak|0.087|
|plus_up_TCC1|✅ proved - complete|shostak|0.070|
|plus_up|✅ proved - complete|shostak|0.401|
|two_walks_TCC1|✅ proved - incomplete|shostak|0.307|
|two_walks|✅ proved - incomplete|shostak|0.148|
|back_short|✅ proved - incomplete|shostak|1.254|
|from_rev_TCC1|✅ proved - incomplete|shostak|0.090|
|from_rev|✅ proved - incomplete|shostak|0.090|
|front_short_TCC1|✅ proved - incomplete|shostak|0.198|
|front_short_TCC2|✅ proved - incomplete|shostak|0.182|
|front_short|✅ proved - incomplete|shostak|2.094|
|add1_rev_TCC1|✅ proved - complete|shostak|0.080|
|add1_rev_TCC2|✅ proved - complete|shostak|0.095|
|add1_rev_TCC3|✅ proved - incomplete|shostak|0.139|
|add1_rev|✅ proved - incomplete|shostak|0.351|

## `circuits`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|reducible?_TCC1|✅ proved - complete|shostak|0.109|
|reducible?_TCC2|✅ proved - complete|shostak|0.119|
|cyclically_reduced?_TCC1|✅ proved - complete|shostak|0.100|
|cyclically_reduced?_TCC2|✅ proved - complete|shostak|0.101|

## `path_lems`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Pigeon_hole|✅ proved - incomplete|shostak|0.128|

## `subgraphs_from_walk`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|G_from_TCC1|✅ proved - incomplete|shostak|0.193|
|G_from_vert|✅ proved - incomplete|shostak|0.080|
|vert_G_from|✅ proved - incomplete|shostak|0.085|
|edge?_G_from_TCC1|✅ proved - incomplete|shostak|0.070|
|edge?_G_from_TCC2|✅ proved - incomplete|shostak|0.090|
|edge?_G_from|✅ proved - incomplete|shostak|0.128|
|edge?_G_from_rev|✅ proved - incomplete|shostak|0.153|
|vert_G_from_not|✅ proved - incomplete|shostak|0.084|
|del_vert_subgraph|✅ proved - incomplete|shostak|0.181|

## `graph_from_edges`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|finite_lem|✅ proved - incomplete|shostak|0.160|
|Union_to_pred|✅ proved - complete|shostak|0.112|
|pred_to_Union|✅ proved - complete|shostak|0.080|
|verts_of_TCC1|✅ proved - incomplete|shostak|0.070|
|verts_from_TCC1|✅ proved - incomplete|shostak|0.116|
|verts_from_of|✅ proved - incomplete|shostak|0.095|
|graph_from_edgeset_TCC1|✅ proved - incomplete|shostak|0.135|
|graph_from_edgeset_rew1|✅ proved - incomplete|shostak|0.070|
|graph_from_edgeset_rew2|✅ proved - incomplete|shostak|0.070|
|no_isolated_verts|✅ proved - incomplete|shostak|0.085|

## `max_subgraphs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|prep0|✅ proved - complete|shostak|0.105|
|max_size_TCC1|✅ proved - complete|shostak|0.090|
|prep|✅ proved - incomplete|shostak|0.126|
|max_subgraph_TCC1|✅ proved - incomplete|shostak|0.181|
|max_subgraph_def|✅ proved - incomplete|shostak|0.080|
|max_subgraph_in|✅ proved - incomplete|shostak|0.072|
|max_subgraph_is_max|✅ proved - incomplete|shostak|0.090|

## `max_subtrees`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sing_is_tree|✅ proved - incomplete|shostak|0.102|
|tree_in|✅ proved - incomplete|shostak|0.497|
|max_subtree_TCC1|✅ proved - incomplete|shostak|0.081|
|max_subtree_TCC2|✅ proved - incomplete|shostak|0.000|
|max_subtree_tree|✅ proved - incomplete|shostak|0.130|
|max_subtree_subgraph|✅ proved - incomplete|shostak|0.067|
|max_subtree_max|✅ proved - incomplete|shostak|0.130|

## `trees`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|tree?_TCC1|✅ proved - incomplete|shostak|0.106|
|tree_nonempty|✅ proved - incomplete|shostak|0.105|
|tree_edge_card|✅ proved - incomplete|shostak|0.510|
|tree_edge_k|✅ proved - incomplete|shostak|0.149|
|tree_edge|✅ proved - incomplete|shostak|1.126|
|tree_edge_all|✅ proved - incomplete|shostak|0.080|
|del_tree_k|✅ proved - incomplete|shostak|0.153|
|del_tree|✅ proved - incomplete|shostak|2.217|
|del_tree_all|✅ proved - incomplete|shostak|0.080|

## `graph_inductions`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|size_prep|✅ proved - complete|shostak|0.164|
|graph_induction_vert|✅ proved - complete|shostak|0.090|
|graph_induction_vert_not|✅ proved - complete|shostak|0.080|
|num_edges_prep|✅ proved - complete|shostak|0.071|
|graph_induction_edge|✅ proved - complete|shostak|0.098|

## `tree_circ`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|exists_c_tree|✅ proved - incomplete|shostak|0.080|
|c_tree_TCC1|✅ proved - incomplete|shostak|0.070|
|tree_containing_lem|✅ proved - incomplete|shostak|0.212|
|tree_deg|✅ proved - incomplete|shostak|0.145|
|small_tree_lem|✅ proved - incomplete|shostak|0.154|
|tree_no_circuits|✅ proved - incomplete|shostak|0.406|

## `circuit_deg`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cir_deg_G|✅ proved - incomplete|shostak|0.244|
|circuit_deg|✅ proved - incomplete|shostak|1.753|
|circuit_subgraph_len_1|✅ proved - incomplete|shostak|0.347|

## `subtrees`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|walk_acr_TCC1|✅ proved - incomplete|shostak|0.100|
|walk_acr_TCC2|✅ proved - incomplete|shostak|0.141|
|walk_acr_TCC3|✅ proved - incomplete|shostak|0.149|
|walk_acr|✅ proved - incomplete|shostak|0.184|
|walk_acr2|✅ proved - incomplete|shostak|0.201|
|add_dbl_TCC1|✅ proved - incomplete|shostak|0.112|
|add_dbl|✅ proved - incomplete|shostak|0.089|
|max_tree_all_verts|✅ proved - incomplete|shostak|0.737|

## `graph_conn_defs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|connected?_TCC1|✅ proved - incomplete|shostak|0.090|
|path_connected?_TCC1|✅ proved - incomplete|shostak|0.100|
|path_connected?_TCC2|✅ proved - incomplete|shostak|0.086|

## `graph_connected`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|conn_eq_path|✅ proved - incomplete|shostak|0.120|
|path_eq_piece|✅ proved - incomplete|shostak|0.109|
|piece_eq_conn|✅ proved - incomplete|shostak|0.118|
|conn_eq_complected|✅ proved - incomplete|shostak|0.120|

## `graph_conn_piece`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|singleton_piece|✅ proved - complete|shostak|0.192|
|not_piece_has_2|✅ proved - complete|shostak|0.177|
|edge_not_across|✅ proved - complete|shostak|0.110|
|lem1|✅ proved - incomplete|shostak|0.235|
|H1P_not_empty|✅ proved - incomplete|shostak|0.170|
|cip0|✅ proved - incomplete|shostak|0.270|
|cip3|✅ proved - incomplete|shostak|0.182|
|connected_not_empty|✅ proved - incomplete|shostak|0.105|
|conn_implies_piece|✅ proved - incomplete|shostak|0.481|

## `graph_piece_path`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|union_edge_disj_TCC1|✅ proved - complete|shostak|0.090|
|union_edge_disj|✅ proved - incomplete|shostak|0.261|
|piece_implies_path|✅ proved - incomplete|shostak|0.939|

## `graph_path_conn`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|isolated_not_path|✅ proved - incomplete|shostak|0.149|
|pic_A|✅ proved - incomplete|shostak|0.224|
|thw_A|✅ proved - incomplete|shostak|0.565|
|tree_has_walk|✅ proved - incomplete|shostak|0.278|
|path_implies_conn|✅ proved - incomplete|shostak|0.633|

## `graph_complected`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|two_vertices|✅ proved - incomplete|shostak|0.097|
|sub_T|✅ proved - incomplete|shostak|0.305|
|rev_lem2|✅ proved - incomplete|shostak|0.289|
|conn_lem2|✅ proved - incomplete|shostak|0.080|
|del_rem_lem|✅ proved - incomplete|shostak|0.145|
|conn_lem3|✅ proved - incomplete|shostak|0.237|
|BIG|✅ proved - incomplete|shostak|0.715|
|conn_lem6|✅ proved - incomplete|shostak|0.080|
|conn_eq_compl|✅ proved - incomplete|shostak|0.136|
|conn_del_vert|✅ proved - incomplete|shostak|0.128|
|connected_not_empty|✅ proved - incomplete|shostak|0.107|
|connect_deg_0|✅ proved - incomplete|shostak|0.000|

## `ramsey_new`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|subgraph_clique|✅ proved - incomplete|shostak|0.150|
|subgraph_indep|✅ proved - incomplete|shostak|0.152|
|r1_TCC1|✅ proved - complete|shostak|0.079|
|r1_TCC2|✅ proved - incomplete|shostak|0.090|
|r2_TCC1|✅ proved - incomplete|shostak|0.101|
|card_r1_r2|✅ proved - incomplete|shostak|0.223|
|ramsey_lem|✅ proved - incomplete|shostak|1.641|
|ramseys_theorem|✅ proved - incomplete|shostak|0.110|

## `min_walk_reduced`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|reduced?_TCC1|✅ proved - complete|shostak|0.092|
|reduced?_TCC2|✅ proved - complete|shostak|0.090|
|min_walk_vert|✅ proved - incomplete|shostak|0.110|
|min_walk_is_reduced|✅ proved - incomplete|shostak|1.424|

## `min_walks`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|min_walk_from_TCC1|✅ proved - incomplete|shostak|0.080|
|min_walk_def|✅ proved - incomplete|shostak|0.358|
|min_walk_in|✅ proved - incomplete|shostak|0.084|
|min_walk_is_min|✅ proved - incomplete|shostak|0.090|

## `reduce_walks`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|reduce_TCC1|✅ proved - incomplete|shostak|0.090|
|reduce_TCC2|✅ proved - incomplete|shostak|0.093|
|reduce_TCC3|✅ proved - incomplete|shostak|0.100|
|reduce_TCC4|✅ proved - incomplete|shostak|0.090|
|reduce_TCC5|✅ proved - incomplete|shostak|0.097|
|reduce_TCC6|✅ proved - incomplete|shostak|0.246|
|reduce_lem_TCC1|✅ proved - incomplete|shostak|0.086|
|reduce_lem_TCC2|✅ proved - incomplete|shostak|0.090|
|reduce_lem_TCC3|✅ proved - incomplete|shostak|0.100|
|reduce_lem_TCC4|✅ proved - incomplete|shostak|0.082|
|reduce_lem|✅ proved - incomplete|shostak|1.058|

## `menger`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|easy_menger|✅ proved - incomplete|shostak|0.449|
|hard_menger|✅ proved - incomplete|shostak|0.130|

## `ind_paths`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|independent?_TCC1|✅ proved - complete|shostak|0.110|
|independent?_TCC2|✅ proved - complete|shostak|0.105|
|independent?_comm|✅ proved - complete|shostak|0.090|
|independent_ne|✅ proved - complete|shostak|0.081|
|ind_path_set_2|✅ proved - incomplete|shostak|0.137|
|internal_verts_TCC1|✅ proved - complete|shostak|0.090|
|internal_verts_TCC2|✅ proved - incomplete|shostak|0.156|
|indep?_lem|✅ proved - incomplete|shostak|0.142|

## `k_menger`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sep_num_B|✅ proved - incomplete|shostak|0.116|
|sep_num_implies|✅ proved - incomplete|shostak|0.105|
|easy_menger_B|✅ proved - incomplete|shostak|2.378|
|sep_set_small|✅ proved - incomplete|shostak|0.139|
|B_many_1|✅ proved - incomplete|shostak|0.319|
|sub_tight|✅ proved - incomplete|shostak|0.093|
|smaller_tight|✅ proved - incomplete|shostak|1.177|
|small_tight|✅ proved - incomplete|shostak|0.322|
|exists_tight|✅ proved - incomplete|shostak|0.406|
|close_tight|✅ proved - incomplete|shostak|0.906|
|smaller_close|✅ proved - incomplete|shostak|0.898|
|small_close|✅ proved - incomplete|shostak|0.226|
|exists_close|✅ proved - incomplete|shostak|0.461|
|closed_minimal|✅ proved - incomplete|shostak|1.043|
|closed_verts|✅ proved - incomplete|shostak|0.160|
|attach_edges_TCC1|✅ proved - incomplete|shostak|0.170|
|Hverts_TCC1|✅ proved - incomplete|shostak|0.155|
|Mgraph_TCC1|✅ proved - incomplete|shostak|0.161|
|Hst_intersect|✅ proved - incomplete|shostak|0.105|
|subset_Ws|✅ proved - incomplete|shostak|0.107|
|subset_Wt|✅ proved - incomplete|shostak|0.096|
|size_Ws|✅ proved - incomplete|shostak|0.000|
|size_Wt|✅ proved - incomplete|shostak|1.880|
|Menger_hard|✅ proved - incomplete|shostak|0.092|
|subgraph_walks|✅ proved - incomplete|shostak|0.177|
|subgraph_paths|✅ proved - incomplete|shostak|0.098|
|greatest_is|✅ proved - complete|shostak|0.582|
|least_is|✅ proved - complete|shostak|0.383|
|set_small_s|✅ proved - incomplete|shostak|7.375|
|set_small_t|✅ proved - incomplete|shostak|5.569|
|separates_Ws|✅ proved - incomplete|shostak|0.194|
|separates_Wt|✅ proved - incomplete|shostak|0.212|
|separ_sub|✅ proved - incomplete|shostak|0.487|
|separ_plus|✅ proved - incomplete|shostak|0.221|
|super_separ|✅ proved - incomplete|shostak|0.295|
|intermediate_subgraph|✅ proved - incomplete|shostak|0.605|
|intermediate_verts|✅ proved - incomplete|shostak|0.000|
|one_wedge_s_TCC1|✅ proved - incomplete|shostak|0.266|
|one_wedge_s_TCC2|✅ proved - incomplete|shostak|0.231|
|one_wedge_s_TCC3|✅ proved - incomplete|shostak|0.180|
|one_wedge_s_TCC4|✅ proved - incomplete|shostak|0.388|
|one_wedge_s|✅ proved - incomplete|shostak|2.106|
|one_edge_s|✅ proved - incomplete|shostak|0.755|
|short_path_k|✅ proved - incomplete|shostak|1.413|
|indep_path_sub|✅ proved - incomplete|shostak|0.099|
|ips_lem1|✅ proved - complete|shostak|0.105|
|ips_lem2|✅ proved - incomplete|shostak|0.493|
|secoo_TCC1|✅ proved - complete|shostak|0.070|
|secpp_TCC1|✅ proved - complete|shostak|0.070|
|inj_ips_TCC1|✅ proved - complete|shostak|0.204|
|inj_ips|✅ proved - incomplete|shostak|0.326|
|long_ipss_paths|✅ proved - incomplete|shostak|0.104|
|ipss_W_TCC1|✅ proved - incomplete|shostak|1.896|
|ipss_W|✅ proved - incomplete|shostak|0.515|
|long_ipst_paths|✅ proved - incomplete|shostak|0.113|
|ipst_W_TCC1|✅ proved - incomplete|shostak|1.878|
|ipst_W|✅ proved - incomplete|shostak|0.816|
|long_ipss_2|✅ proved - incomplete|shostak|0.131|
|long_ipst_2|✅ proved - incomplete|shostak|0.137|
|ind_path_set_secoo_TCC1|✅ proved - incomplete|shostak|0.096|
|ind_path_set_secoo|✅ proved - incomplete|shostak|0.656|
|ind_path_set_secpp_TCC1|✅ proved - incomplete|shostak|0.098|
|ind_path_set_secpp|✅ proved - incomplete|shostak|0.694|
|uniq_w_ipss|✅ proved - incomplete|shostak|0.205|
|uniq_w_ipst|✅ proved - incomplete|shostak|0.216|
|low_card_sep|✅ proved - incomplete|shostak|0.128|
|smaller_ips|✅ proved - complete|shostak|0.000|
|few_many|✅ proved - incomplete|shostak|0.122|
|min_B|✅ proved - incomplete|shostak|0.092|
|no_sep_req|✅ proved - incomplete|shostak|0.089|
|k_sep_close|✅ proved - incomplete|shostak|0.108|
|p_Ht_TCC1|✅ proved - incomplete|shostak|0.905|
|p_Ht_TCC2|✅ proved - incomplete|shostak|0.581|
|p_Ht_TCC3|✅ proved - incomplete|shostak|0.968|
|p_Ht|✅ proved - incomplete|shostak|1.057|
|q_Hs_TCC1|✅ proved - incomplete|shostak|0.934|
|q_Hs_TCC2|✅ proved - incomplete|shostak|0.908|
|q_Hs_TCC3|✅ proved - incomplete|shostak|0.970|
|q_Hs|✅ proved - incomplete|shostak|0.668|
|disjoint_M_paths_TCC1|✅ proved - incomplete|shostak|0.092|
|disjoint_M_paths_TCC2|✅ proved - incomplete|shostak|0.101|
|disjoint_M_paths_TCC3|✅ proved - incomplete|shostak|0.150|
|disjoint_M_paths_TCC4|✅ proved - incomplete|shostak|0.100|
|disjoint_M_paths_TCC5|✅ proved - incomplete|shostak|0.151|
|disjoint_M_paths_TCC6|✅ proved - incomplete|shostak|0.097|
|disjoint_M_paths_TCC7|✅ proved - incomplete|shostak|0.192|
|disjoint_M_paths_TCC8|✅ proved - incomplete|shostak|0.100|
|disjoint_M_paths_TCC9|✅ proved - incomplete|shostak|0.193|
|disjoint_M_paths|✅ proved - incomplete|shostak|1.964|
|sec_image|✅ proved - incomplete|shostak|0.935|
|Map_s_TCC1|✅ proved - incomplete|shostak|0.125|
|Map_s|✅ proved - incomplete|shostak|0.354|
|Map_t_TCC1|✅ proved - incomplete|shostak|0.119|
|Map_t|✅ proved - incomplete|shostak|0.350|
|Mapper_ips|✅ proved - incomplete|shostak|9.145|
|non_attached_induct|✅ proved - incomplete|shostak|0.162|
|plus_sep_vert|✅ proved - incomplete|shostak|0.220|
|separ_del_vert|✅ proved - incomplete|shostak|0.219|
|plus_path_set_TCC1|✅ proved - incomplete|shostak|0.115|
|plus_path_set_TCC2|✅ proved - incomplete|shostak|0.262|
|plus_path_set|✅ proved - incomplete|shostak|1.525|
|short_path_attach|✅ proved - incomplete|shostak|1.402|
|bridge_one|✅ proved - incomplete|shostak|1.943|
|bridge_two_TCC1|✅ proved - incomplete|shostak|0.097|
|bridge_two|✅ proved - incomplete|shostak|1.927|
|bridge_three|✅ proved - incomplete|shostak|1.632|
|C_induct_lemma|✅ proved - incomplete|shostak|0.238|
|Menger_k_hard|✅ proved - incomplete|shostak|0.080|
|Many_indep_paths|✅ proved - incomplete|shostak|0.322|
|hard_menger_trad|✅ proved - incomplete|shostak|0.000|

## `easy_menger`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|easy_menger|✅ proved - incomplete|shostak|0.441|
|easy_meng_1|✅ proved - incomplete|shostak|0.436|

## `subgraph_paths`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|walk?_subgraph|✅ proved - incomplete|shostak|0.170|
|path?_subgraph|✅ proved - incomplete|shostak|0.094|

## `complem`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|powerset_finite|✅ proved - complete|shostak|0.170|
|all_edges_power|✅ proved - incomplete|shostak|0.128|
|all_edges_finite|✅ proved - incomplete|shostak|0.261|
|completion_TCC1|✅ proved - incomplete|shostak|0.090|
|completion_TCC2|✅ proved - incomplete|shostak|0.105|
|completion_is_subgraph|✅ proved - incomplete|shostak|0.344|
|complement_TCC1|✅ proved - incomplete|shostak|0.120|
|complement_TCC2|✅ proved - incomplete|shostak|0.117|
|comp_comp_lem|✅ proved - incomplete|shostak|0.133|
|isol_TCC1|✅ proved - complete|shostak|0.080|
|path_or_not_path|✅ proved - incomplete|shostak|2.768|
|five_degrees_separation|✅ proved - incomplete|shostak|2.411|
|paths_or_not|✅ proved - incomplete|shostak|0.305|
|five_degrees_separated|✅ proved - incomplete|shostak|0.169|
|strong_implies|✅ proved - incomplete|shostak|0.198|
|imply_strong|✅ proved - incomplete|shostak|0.087|
|completion_is_transitive|✅ proved - incomplete|shostak|0.163|
|trans_complem|✅ proved - incomplete|shostak|0.602|
|t_close_TCC1|✅ proved - incomplete|shostak|0.176|
|t_close_1|✅ proved - incomplete|shostak|0.132|
|t_close_2|✅ proved - incomplete|shostak|0.130|
|t_close_3|✅ proved - incomplete|shostak|0.132|
|trans_fill|✅ proved - incomplete|shostak|0.346|
|complem_fill|✅ proved - incomplete|shostak|0.110|
|subgraph_conn|✅ proved - incomplete|shostak|0.216|
|complete_conn|✅ proved - incomplete|shostak|0.226|
|short_path_TCC1|✅ proved - incomplete|shostak|0.205|
|short_path_TCC2|✅ proved - incomplete|shostak|0.137|
|short_path|✅ proved - incomplete|shostak|1.410|
|trans_walk|✅ proved - incomplete|shostak|0.319|
|trans_connected|✅ proved - incomplete|shostak|0.268|
|disjoint_trans|✅ proved - incomplete|shostak|0.193|
|disjoint_trans_strong|✅ proved - incomplete|shostak|0.099|
|subgraph_trans|✅ proved - incomplete|shostak|0.155|
|subgraph_trans_strong|✅ proved - incomplete|shostak|0.093|
|t_close_4|✅ proved - incomplete|shostak|0.202|
|closure_connect|✅ proved - incomplete|shostak|0.603|
|connected_complem|✅ proved - incomplete|shostak|0.324|
|p_close_TCC1|✅ proved - incomplete|shostak|0.204|
|p_close_TCC2|✅ proved - incomplete|shostak|0.136|
|p_subgraph_t|✅ proved - incomplete|shostak|0.217|
|p_transitive|✅ proved - incomplete|shostak|0.188|
|p_close_1|✅ proved - incomplete|shostak|0.000|
|p_close_trans|✅ proved - incomplete|shostak|0.086|
|t_subgraph|✅ proved - incomplete|shostak|0.202|

## `los_graph`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|los_graphic|✅ proved - complete|shostak|0.117|
|Los|✅ proved - complete|shostak|0.092|

## `sep_set_lems`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sep_num_0|✅ proved - incomplete|shostak|0.114|
|sep_num_gt_0|✅ proved - incomplete|shostak|0.232|
|sep_num_is_1|✅ proved - incomplete|shostak|0.225|
|sep_num_le1|✅ proved - incomplete|shostak|0.286|
|separable?_comm|✅ proved - incomplete|shostak|0.081|
|separates_comm|✅ proved - incomplete|shostak|0.122|
|sep_num_comm|✅ proved - incomplete|shostak|0.142|
|v_not_in|✅ proved - incomplete|shostak|0.212|
|path_thru_each|✅ proved - incomplete|shostak|0.212|
|one_to_each|✅ proved - incomplete|shostak|0.364|
|walk?_del_verts|✅ proved - incomplete|shostak|0.150|
|del_verts_eq|✅ proved - incomplete|shostak|0.149|

## `tree_paths`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|dual_paths?_TCC1|✅ proved - incomplete|shostak|0.100|
|dual_paths?_TCC2|✅ proved - incomplete|shostak|0.100|
|dual_paths?_TCC3|✅ proved - incomplete|shostak|0.093|
|dual_paths?_TCC4|✅ proved - incomplete|shostak|0.100|
|min_dual_paths_TCC1|✅ proved - incomplete|shostak|0.084|
|min_dual_def|✅ proved - incomplete|shostak|0.436|
|min_dual_exists|✅ proved - incomplete|shostak|0.105|
|dual_path_trunc_TCC1|✅ proved - incomplete|shostak|0.086|
|dual_path_trunc_TCC2|✅ proved - incomplete|shostak|0.235|
|dual_path_trunc_TCC3|✅ proved - incomplete|shostak|0.226|
|dual_path_trunc_TCC4|✅ proved - incomplete|shostak|0.270|
|dual_path_trunc_TCC5|✅ proved - incomplete|shostak|0.190|
|dual_path_trunc_TCC6|✅ proved - incomplete|shostak|0.312|
|dual_path_trunc_TCC7|✅ proved - incomplete|shostak|0.196|
|dual_path_trunc_TCC8|✅ proved - incomplete|shostak|0.352|
|dual_path_trunc|✅ proved - incomplete|shostak|0.251|
|dual_path_length|✅ proved - incomplete|shostak|0.322|
|min_dual_reduc_TCC1|✅ proved - incomplete|shostak|0.099|
|min_dual_reduc_TCC2|✅ proved - incomplete|shostak|0.090|
|min_dual_reduc_TCC3|✅ proved - incomplete|shostak|0.104|
|min_dual_reduc_TCC4|✅ proved - incomplete|shostak|0.100|
|min_dual_reduc|✅ proved - incomplete|shostak|1.122|
|min_dual_distin_TCC1|✅ proved - incomplete|shostak|0.183|
|min_dual_distin_TCC2|✅ proved - incomplete|shostak|0.173|
|min_dual_distin|✅ proved - incomplete|shostak|0.682|
|dual_cycle_TCC1|✅ proved - incomplete|shostak|0.152|
|dual_cycle_TCC2|✅ proved - incomplete|shostak|0.157|
|dual_cycle_TCC3|✅ proved - incomplete|shostak|0.100|
|dual_cycle_TCC4|✅ proved - incomplete|shostak|0.328|
|dual_cycle|✅ proved - incomplete|shostak|5.659|
|tree_one_path|✅ proved - incomplete|shostak|2.478|

## `cycles`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cycle?_TCC1|✅ proved - incomplete|shostak|0.140|
|cycle?_TCC2|✅ proved - incomplete|shostak|0.129|
|cycle_l_gt_3|✅ proved - incomplete|shostak|0.098|
|cycle_has_path_TCC1|✅ proved - incomplete|shostak|0.140|
|cycle_has_path|✅ proved - incomplete|shostak|0.273|
|cycle_gt3|✅ proved - incomplete|shostak|0.110|
|cycle_def|✅ proved - incomplete|shostak|0.147|

## `cycle_deg`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|reachable_TCC1|✅ proved - incomplete|shostak|0.106|
|reachable_subset|✅ proved - incomplete|shostak|0.135|
|reachable_conn|✅ proved - incomplete|shostak|1.511|
|conn_compon|✅ proved - incomplete|shostak|2.121|
|sub_cycle_TCC1|✅ proved - incomplete|shostak|0.101|
|sub_cycle|✅ proved - incomplete|shostak|0.150|
|uniq_del_vert|✅ proved - incomplete|shostak|0.114|
|del_edge_uniq|✅ proved - incomplete|shostak|1.499|
|charact_tree|✅ proved - incomplete|shostak|0.362|
|exclus_cycl|✅ proved - incomplete|shostak|0.000|
|num_edge_tree|✅ proved - incomplete|shostak|0.916|
|iff_tree|✅ proved - incomplete|shostak|0.421|
|tree_num_iff|✅ proved - incomplete|shostak|0.268|
|deg_gt_1_cycle|✅ proved - incomplete|shostak|0.412|

## `old_menger`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|easy_menger|✅ proved - incomplete|shostak|0.443|
|hard_menger|✅ proved - incomplete|shostak|0.386|
|easy_meng_1|✅ proved - incomplete|shostak|0.443|

## `h_menger`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|path_not_thru|✅ proved - incomplete|shostak|0.289|
|adjacent_fact|✅ proved - incomplete|shostak|0.435|
|sep_num_del|✅ proved - incomplete|shostak|0.265|
|separates_del|✅ proved - incomplete|shostak|0.227|
|induction_step_comm|✅ proved - incomplete|shostak|0.091|
|separable?_del|✅ proved - incomplete|shostak|0.100|
|seq_j_TCC1|✅ proved - complete|shostak|0.087|
|seq_j_TCC2|✅ proved - incomplete|shostak|0.090|
|seq_j_TCC3|✅ proved - incomplete|shostak|0.117|
|seq_j|✅ proved - incomplete|shostak|0.325|
|short_path_case|✅ proved - incomplete|shostak|0.362|
|finale|✅ proved - incomplete|shostak|1.399|
|h_menger|✅ proved - incomplete|shostak|0.129|
|hard_menger|✅ proved - incomplete|shostak|0.358|

## `meng_scaff_prelude`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|line20_TCC1|✅ proved - incomplete|shostak|0.090|
|line20_TCC2|✅ proved - incomplete|shostak|0.091|
|line20_TCC3|✅ proved - incomplete|shostak|0.080|
|line20_TCC4|✅ proved - incomplete|shostak|0.092|
|line20_TCC5|✅ proved - incomplete|shostak|0.101|
|line20_TCC6|✅ proved - incomplete|shostak|0.090|
|line20|✅ proved - incomplete|shostak|0.588|
|join2_TCC1|✅ proved - incomplete|shostak|0.100|
|join2_TCC2|✅ proved - incomplete|shostak|0.373|
|path_meng_t|✅ proved - incomplete|shostak|0.122|
|path_H_def_TCC1|✅ proved - incomplete|shostak|0.151|
|path_H_def|✅ proved - incomplete|shostak|0.370|
|path_H_ind_TCC1|✅ proved - complete|shostak|0.085|
|path_H_ind_TCC2|✅ proved - incomplete|shostak|0.379|
|path_H_ind_TCC3|✅ proved - incomplete|shostak|0.090|
|path_H_ind_TCC4|✅ proved - incomplete|shostak|0.532|
|path_H_ind|✅ proved - incomplete|shostak|0.948|
|path_comps_ind3_TCC1|✅ proved - complete|shostak|0.090|
|path_comps_ind3_TCC2|✅ proved - complete|shostak|0.178|
|path_comps_ind3_TCC3|✅ proved - incomplete|shostak|0.397|
|path_comps_ind3_TCC4|✅ proved - incomplete|shostak|0.435|
|path_comps_ind3_TCC5|✅ proved - incomplete|shostak|0.096|
|path_comps_ind3_TCC6|✅ proved - incomplete|shostak|0.100|
|path_comps_ind3|✅ proved - incomplete|shostak|0.193|
|path_H_trunc_TCC1|✅ proved - incomplete|shostak|0.379|
|path_H_trunc_TCC2|✅ proved - incomplete|shostak|0.324|
|path_H_trunc|✅ proved - incomplete|shostak|0.574|
|meng_last_TCC1|✅ proved - complete|shostak|0.088|
|meng_last_TCC2|✅ proved - complete|shostak|0.080|
|meng_last_TCC3|✅ proved - incomplete|shostak|0.656|
|meng_last_TCC4|✅ proved - incomplete|shostak|0.635|
|meng_last|✅ proved - incomplete|shostak|0.266|
|ind_verts_W_TCC1|✅ proved - incomplete|shostak|0.207|
|ind_verts_W_TCC2|✅ proved - incomplete|shostak|0.234|
|ind_verts_W|✅ proved - incomplete|shostak|0.171|
|ind_verts_w_TCC1|✅ proved - incomplete|shostak|0.205|
|ind_verts_w_TCC2|✅ proved - incomplete|shostak|0.226|
|ind_verts_w|✅ proved - incomplete|shostak|0.151|
|path_meng_in_TCC1|✅ proved - incomplete|shostak|0.090|
|path_meng_in_TCC2|✅ proved - incomplete|shostak|0.087|
|path_meng_in_TCC3|✅ proved - incomplete|shostak|0.734|
|path_meng_in|✅ proved - incomplete|shostak|1.245|
|join2_lem_TCC1|✅ proved - incomplete|shostak|0.214|
|join2_lem_TCC2|✅ proved - incomplete|shostak|0.218|
|join2_lem_TCC3|✅ proved - incomplete|shostak|0.127|
|join2_lem_TCC4|✅ proved - incomplete|shostak|0.112|
|join2_lem|✅ proved - incomplete|shostak|0.000|
|path_from_to_walk_from|✅ proved - incomplete|shostak|0.111|
|paths_H_disj_TCC1|✅ proved - incomplete|shostak|0.080|
|paths_H_disj_TCC2|✅ proved - incomplete|shostak|0.090|
|paths_H_disj|✅ proved - incomplete|shostak|0.514|
|prelude|✅ proved - incomplete|shostak|5.309|

## `meng_scaff`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|first_TCC1|✅ proved - complete|shostak|0.110|
|first_lem|✅ proved - incomplete|shostak|0.121|
|first_not_TCC1|✅ proved - complete|shostak|0.089|
|first_not|✅ proved - incomplete|shostak|0.138|
|meng_to_G_sep_TCC1|✅ proved - incomplete|shostak|0.137|
|meng_to_G_sep_TCC2|✅ proved - incomplete|shostak|0.152|
|meng_to_G_sep_TCC3|✅ proved - incomplete|shostak|0.145|
|meng_to_G_sep_TCC4|✅ proved - incomplete|shostak|0.146|
|meng_to_G_sep|✅ proved - incomplete|shostak|2.828|
|prep_14_TCC1|✅ proved - complete|shostak|0.110|
|prep_14_TCC2|✅ proved - complete|shostak|0.099|
|prep_14|✅ proved - incomplete|shostak|0.311|
|line14_TCC1|✅ proved - incomplete|shostak|0.090|
|line14_TCC2|✅ proved - incomplete|shostak|0.206|
|line14_TCC3|✅ proved - incomplete|shostak|0.221|
|line14_TCC4|✅ proved - incomplete|shostak|0.225|
|line14|✅ proved - incomplete|shostak|0.536|
|line15ab|✅ proved - incomplete|shostak|0.313|
|prep_16|✅ proved - incomplete|shostak|1.023|
|line16|✅ proved - incomplete|shostak|0.502|
|line19_TCC1|✅ proved - incomplete|shostak|0.080|
|line19_TCC2|✅ proved - incomplete|shostak|0.106|
|line19_TCC3|✅ proved - incomplete|shostak|0.109|
|line19_TCC4|✅ proved - incomplete|shostak|0.114|
|line19_TCC5|✅ proved - incomplete|shostak|0.090|
|line19|✅ proved - incomplete|shostak|0.706|
|line17_prep|✅ proved - incomplete|shostak|0.160|
|line17_TCC1|✅ proved - incomplete|shostak|0.281|
|line17_TCC2|✅ proved - incomplete|shostak|0.290|
|line17_TCC3|✅ proved - incomplete|shostak|0.309|
|line17_TCC4|✅ proved - incomplete|shostak|0.315|
|line17|✅ proved - incomplete|shostak|0.277|
|pre20|✅ proved - incomplete|shostak|0.257|

## `meng_scaff_defs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|H_TCC1|✅ proved - incomplete|shostak|0.115|
|incident_TCC1|✅ proved - incomplete|shostak|0.101|
|meng_TCC1|✅ proved - complete|shostak|0.086|
|meng_TCC2|✅ proved - complete|shostak|0.080|
|meng_TCC3|✅ proved - incomplete|shostak|0.127|
|vert_H_s|✅ proved - incomplete|shostak|0.146|
|path_H_W|✅ proved - incomplete|shostak|0.166|
|path_comp_in|✅ proved - incomplete|shostak|0.116|
|walk?_H_TCC1|✅ proved - incomplete|shostak|0.110|
|walk?_H|✅ proved - incomplete|shostak|0.797|
|vert_meng_sub_TCC1|✅ proved - complete|shostak|0.100|
|vert_meng_sub_TCC2|✅ proved - complete|shostak|0.096|
|vert_meng_sub_TCC3|✅ proved - complete|shostak|0.104|
|vert_meng_sub_TCC4|✅ proved - complete|shostak|0.106|
|vert_meng_sub|✅ proved - incomplete|shostak|0.115|
|del_vert_comm|✅ proved - incomplete|shostak|0.135|
|H_comm|✅ proved - incomplete|shostak|0.085|
|incident_comm|✅ proved - incomplete|shostak|0.090|
|meng_comm_TCC1|✅ proved - complete|shostak|0.097|
|meng_comm_TCC2|✅ proved - complete|shostak|0.096|
|meng_comm|✅ proved - incomplete|shostak|0.196|

## `mantel`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|one_to_some|✅ proved - incomplete|shostak|0.087|
|some_to_lots|✅ proved - incomplete|shostak|0.094|
|one_to_lots|✅ proved - incomplete|shostak|0.090|
|exst_tri|✅ proved - incomplete|shostak|0.106|
|one_vert_edges|✅ proved - incomplete|shostak|0.111|
|edge_adjacent|✅ proved - incomplete|shostak|0.098|
|disj_neighbor_sets|✅ proved - incomplete|shostak|0.131|
|adj_is_subset|✅ proved - incomplete|shostak|0.116|
|adj_is_subset2|✅ proved - incomplete|shostak|0.116|
|no_cn|✅ proved - incomplete|shostak|0.146|
|disj_adj_card|✅ proved - incomplete|shostak|0.196|
|pre_edges_del21|✅ proved - incomplete|shostak|0.156|
|pre_edges_del22|✅ proved - incomplete|shostak|0.175|
|edges_del2|✅ proved - incomplete|shostak|0.166|
|verts_del2|✅ proved - incomplete|shostak|0.176|
|tri_del2|✅ proved - incomplete|shostak|0.200|
|int_lem|✅ proved - incomplete|shostak|0.135|
|card_union|✅ proved - incomplete|shostak|0.390|
|adj_helper|✅ proved - incomplete|shostak|0.145|
|adj_helper2|✅ proved - incomplete|shostak|0.166|
|inc_ind1|✅ proved - complete|shostak|0.126|
|adj_ind1|✅ proved - incomplete|shostak|0.184|
|inc_ind2|✅ proved - complete|shostak|0.231|
|adj_ind2|✅ proved - incomplete|shostak|0.000|
|inc_equals_adj|✅ proved - incomplete|shostak|0.711|
|Mantel|✅ proved - incomplete|shostak|0.833|

## `graph_pair`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|wf_lsth|✅ proved - complete|shostak|0.145|
|NAT_pair_induct|✅ proved - complete|shostak|0.104|
|size_up|✅ proved - complete|shostak|0.429|
|graph_induct_pair|✅ proved - complete|shostak|0.139|
|graph_induct_pair_B|✅ proved - complete|shostak|0.080|
|graph_pair_induct_not|✅ proved - complete|shostak|0.106|

## `mappings`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|reachable_TCC1|✅ proved - incomplete|shostak|0.105|
|reachable_subset|✅ proved - incomplete|shostak|0.115|
|path_reach1|✅ proved - incomplete|shostak|0.289|
|path_reach2|✅ proved - incomplete|shostak|0.357|
|reachable_conn|✅ proved - incomplete|shostak|1.563|
|sub_tree_k|✅ proved - incomplete|shostak|0.125|
|sub_tree_0|✅ proved - incomplete|shostak|3.146|
|sub_tree_k_lemm|✅ proved - incomplete|shostak|1.908|
|sub_tree_all|✅ proved - incomplete|shostak|0.098|
|path_reach4|✅ proved - incomplete|shostak|0.402|
|size_subgraph_path_TCC1|✅ proved - incomplete|shostak|0.090|
|size_subgraph_path|✅ proved - incomplete|shostak|0.546|
|path_gap|✅ proved - incomplete|shostak|1.227|
|set_card_less|✅ proved - complete|shostak|0.142|
|conn_compon|✅ proved - incomplete|shostak|2.365|
|Bush_less|✅ proved - incomplete|shostak|3.102|
|Fox_TCC1|✅ proved - incomplete|shostak|0.090|
|Fox_TCC2|✅ proved - incomplete|shostak|0.080|
|Fox_TCC3|✅ proved - incomplete|shostak|0.094|
|Fox_TCC4|✅ proved - incomplete|shostak|0.239|
|Fox_TCC5|✅ proved - incomplete|shostak|0.197|
|Fox_TCC6|✅ proved - incomplete|shostak|0.000|
|short_hound|✅ proved - incomplete|shostak|0.125|
|back_hound_TCC1|✅ proved - incomplete|shostak|0.080|
|back_hound_TCC2|✅ proved - incomplete|shostak|0.157|
|back_hound|✅ proved - incomplete|shostak|0.436|
|stuck_hound_TCC1|✅ proved - incomplete|shostak|0.087|
|stuck_hound_TCC2|✅ proved - incomplete|shostak|0.156|
|stuck_hound_TCC3|✅ proved - incomplete|shostak|0.100|
|stuck_hound_TCC4|✅ proved - incomplete|shostak|0.086|
|stuck_hound|✅ proved - incomplete|shostak|0.665|
|whole_hound_TCC1|✅ proved - incomplete|shostak|0.090|
|whole_hound_TCC2|✅ proved - incomplete|shostak|0.205|
|whole_hound_TCC3|✅ proved - incomplete|shostak|0.096|
|whole_hound_TCC4|✅ proved - incomplete|shostak|0.100|
|whole_hound|✅ proved - incomplete|shostak|0.511|
|fixed_fox|✅ proved - incomplete|shostak|1.389|
|small_fox|✅ proved - incomplete|shostak|21.430|
|num_edge_tree|✅ proved - incomplete|shostak|1.139|
|uniq_del_vert|✅ proved - incomplete|shostak|0.124|
|del_edge_uniq|✅ proved - incomplete|shostak|1.665|
|charact_tree|✅ proved - incomplete|shostak|0.384|
|iff_tree|✅ proved - incomplete|shostak|0.412|
|tree_num_iff|✅ proved - incomplete|shostak|0.239|
|tree_map|✅ proved - incomplete|shostak|0.256|
|sub_cycle_TCC1|✅ proved - incomplete|shostak|0.155|
|sub_cycle|✅ proved - incomplete|shostak|0.159|
|exclus_cycl|✅ proved - incomplete|shostak|0.000|
|deg_gt_1_cycle|✅ proved - incomplete|shostak|0.410|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib//float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-pvsio-fix.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210219-extratregies.lisp`|
