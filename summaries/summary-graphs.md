# Summary for `graphs`
Run started at 2:55:59 7/4/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **792**   | **792**    | **792**    | **0**  | **4:41.057 s**   |
|top|0|0|0|0|0.000|
|graphs|14|14|14|0|1.446|
|graph_deg|16|16|16|0|1.970|
|graph_ops|22|22|22|0|2.153|
|graph_deg_sum|8|8|8|0|2.008|
|subgraphs|7|7|7|0|0.640|
|walks|46|46|46|0|7.580|
|paths|17|17|17|0|2.740|
|path_ops|11|11|11|0|3.051|
|sep_sets|13|13|13|0|2.229|
|walk_inductions|2|2|2|0|0.176|
|path_circ|65|65|65|0|23.047|
|circuits|4|4|4|0|0.457|
|path_lems|1|1|1|0|0.130|
|subgraphs_from_walk|9|9|9|0|1.081|
|graph_from_edges|10|10|10|0|1.025|
|max_subgraphs|7|7|7|0|0.775|
|max_subtrees|7|7|7|0|1.155|
|trees|9|9|9|0|4.567|
|graph_inductions|5|5|5|0|0.546|
|tree_circ|6|6|6|0|1.012|
|circuit_deg|3|3|3|0|2.304|
|subtrees|8|8|8|0|1.759|
|graph_conn_defs|3|3|3|0|0.297|
|graph_connected|4|4|4|0|0.488|
|graph_conn_piece|9|9|9|0|1.929|
|graph_piece_path|3|3|3|0|1.296|
|graph_path_conn|5|5|5|0|1.869|
|graph_complected|12|12|12|0|2.936|
|ramsey_new|8|8|8|0|2.544|
|min_walk_reduced|4|4|4|0|1.748|
|min_walks|4|4|4|0|0.617|
|reduce_walks|11|11|11|0|2.197|
|menger|2|2|2|0|0.585|
|ind_paths|8|8|8|0|0.910|
|k_menger|110|110|110|0|1:10.955|
|easy_menger|2|2|2|0|0.893|
|subgraph_paths|2|2|2|0|0.279|
|complem|45|45|45|0|15.081|
|los_graph|2|2|2|0|0.224|
|sep_set_lems|12|12|12|0|2.359|
|tree_paths|31|31|31|0|14.869|
|cycles|7|7|7|0|1.060|
|cycle_deg|14|14|14|0|7.898|
|old_menger|3|3|3|0|1.285|
|h_menger|14|14|14|0|4.379|
|meng_scaff_prelude|52|52|52|0|20.446|
|meng_scaff|33|33|33|0|7.892|
|meng_scaff_defs|21|21|21|0|3.163|
|mantel|26|26|26|0|5.756|
|graph_pair|6|6|6|0|1.025|
|mappings|49|49|49|0|44.226|
## Detailed Summary 
## `top`
No formula declaration found.
## `graphs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|edg_TCC1|✅ proved - complete|shostak|0.127|
|edge?_TCC1|✅ proved - incomplete|shostak|0.120|
|edge?_comm|✅ proved - incomplete|shostak|0.073|
|edges_vert|✅ proved - incomplete|shostak|0.121|
|other_vert|✅ proved - incomplete|shostak|0.100|
|edge_has_2_verts|✅ proved - incomplete|shostak|0.093|
|edges_vert_in|✅ proved - incomplete|shostak|0.090|
|vert_in|✅ proved - incomplete|shostak|0.083|
|empty?_rew|✅ proved - complete|shostak|0.090|
|edges_of_empty|✅ proved - incomplete|shostak|0.094|
|singleton_edges|✅ proved - incomplete|shostak|0.100|
|edge_in_card_gt_1|✅ proved - incomplete|shostak|0.162|
|not_singleton_2_vert|✅ proved - complete|shostak|0.120|
|singleton_graph_TCC1|✅ proved - complete|shostak|0.073|

## `graph_deg`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|incident_edges_TCC1|✅ proved - complete|shostak|0.110|
|incident_edges_subset|✅ proved - complete|shostak|0.084|
|incident_edges_emptyset|✅ proved - complete|shostak|0.090|
|deg_del_edge|✅ proved - incomplete|shostak|0.198|
|deg_del_edge2|✅ proved - incomplete|shostak|0.120|
|deg_del_edge3|✅ proved - complete|shostak|0.116|
|deg_del_edge_ge|✅ proved - incomplete|shostak|0.114|
|deg_del_edge_le|✅ proved - incomplete|shostak|0.110|
|deg_edge_exists|✅ proved - complete|shostak|0.095|
|deg_to_card|✅ proved - complete|shostak|0.165|
|del_vert_deg_0|✅ proved - incomplete|shostak|0.116|
|deg_del_vert_TCC1|✅ proved - complete|shostak|0.090|
|deg_del_vert|✅ proved - incomplete|shostak|0.241|
|del_vert_not_incident|✅ proved - incomplete|shostak|0.100|
|singleton_deg|✅ proved - incomplete|shostak|0.115|
|deg_1_sing|✅ proved - complete|shostak|0.106|

## `graph_ops`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|union_TCC1|✅ proved - complete|shostak|0.100|
|del_vert_TCC1|✅ proved - complete|shostak|0.095|
|del_vert_TCC2|✅ proved - incomplete|shostak|0.115|
|del_edge_TCC1|✅ proved - complete|shostak|0.080|
|adjacent_TCC1|✅ proved - incomplete|shostak|0.100|
|del_vert_still_in|✅ proved - incomplete|shostak|0.077|
|size_del_vert|✅ proved - incomplete|shostak|0.090|
|del_vert_le|✅ proved - incomplete|shostak|0.104|
|del_vert_ge|✅ proved - incomplete|shostak|0.100|
|edge_in_del_vert|✅ proved - incomplete|shostak|0.080|
|edges_del_vert|✅ proved - incomplete|shostak|0.065|
|del_vert_comm|✅ proved - incomplete|shostak|0.136|
|del_vert_empty?|✅ proved - incomplete|shostak|0.110|
|del_edge_lem|✅ proved - complete|shostak|0.080|
|del_edge_lem2|✅ proved - complete|shostak|0.076|
|del_edge_lem3|✅ proved - complete|shostak|0.090|
|del_edge_lem5|✅ proved - complete|shostak|0.106|
|vert_del_edge|✅ proved - complete|shostak|0.080|
|del_edge_num|✅ proved - complete|shostak|0.136|
|del_edge_singleton|✅ proved - complete|shostak|0.080|
|del_vert_edge_comm|✅ proved - incomplete|shostak|0.127|
|del_vert_edge|✅ proved - incomplete|shostak|0.126|

## `graph_deg_sum`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|deg_lem0|✅ proved - incomplete|shostak|0.225|
|deg_lem2_TCC1|✅ proved - incomplete|shostak|0.084|
|deg_lem2|✅ proved - incomplete|shostak|0.195|
|edge_induction|✅ proved - complete|shostak|0.090|
|deg_thm|✅ proved - incomplete|shostak|0.775|
|subgraph_deg|✅ proved - complete|shostak|0.207|
|sum_gt_bound|✅ proved - incomplete|shostak|0.259|
|deg_gt_one|✅ proved - incomplete|shostak|0.173|

## `subgraphs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|finite_vert_subset|✅ proved - complete|shostak|0.100|
|subgraph_TCC1|✅ proved - complete|shostak|0.101|
|subgraph_TCC2|✅ proved - complete|shostak|0.070|
|subgraph_TCC3|✅ proved - complete|shostak|0.114|
|subgraph_vert_sub|✅ proved - complete|shostak|0.090|
|subgraph_lem|✅ proved - complete|shostak|0.070|
|subgraph_smaller|✅ proved - complete|shostak|0.095|

## `walks`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|walk?_TCC1|✅ proved - complete|shostak|0.100|
|walk?_TCC2|✅ proved - complete|shostak|0.126|
|list2prewalk_TCC1|✅ proved - complete|shostak|0.080|
|from?_TCC1|✅ proved - complete|shostak|0.080|
|from?_TCC2|✅ proved - complete|shostak|0.070|
|verts_of_TCC1|✅ proved - incomplete|shostak|0.150|
|edges_of_TCC1|✅ proved - complete|shostak|0.080|
|edges_of_TCC2|✅ proved - complete|shostak|0.080|
|edges_of_TCC3|✅ proved - incomplete|shostak|0.204|
|pre_circuit?_TCC1|✅ proved - incomplete|shostak|0.100|
|pre_circuit?_TCC2|✅ proved - incomplete|shostak|0.084|
|verts_in?_concat_TCC1|✅ proved - complete|shostak|0.110|
|verts_in?_concat|✅ proved - complete|shostak|0.173|
|verts_in?_caret_TCC1|✅ proved - complete|shostak|0.166|
|verts_in?_caret|✅ proved - complete|shostak|0.271|
|vert_seq_lem|✅ proved - complete|shostak|0.090|
|verts_of_subset|✅ proved - incomplete|shostak|0.075|
|edges_of_subset|✅ proved - incomplete|shostak|0.130|
|walk_verts_in|✅ proved - incomplete|shostak|0.067|
|walk_from_vert|✅ proved - incomplete|shostak|0.100|
|walk_edge_in|✅ proved - incomplete|shostak|0.156|
|trunc1_TCC1|✅ proved - complete|shostak|0.070|
|trunc1_TCC2|✅ proved - complete|shostak|0.126|
|add1_TCC1|✅ proved - complete|shostak|0.070|
|gen_seq1_is_walk|✅ proved - incomplete|shostak|0.090|
|edge_to_walk_TCC1|✅ proved - complete|shostak|0.080|
|edge_to_walk_TCC2|✅ proved - incomplete|shostak|0.087|
|edge_to_walk_TCC3|✅ proved - complete|shostak|0.080|
|edge_to_walk|✅ proved - incomplete|shostak|0.096|
|walk?_rev_TCC1|✅ proved - incomplete|shostak|0.090|
|walk?_rev|✅ proved - incomplete|shostak|0.157|
|walk?_reverse|✅ proved - incomplete|shostak|0.165|
|walk?_caret_TCC1|✅ proved - incomplete|shostak|0.206|
|walk?_caret|✅ proved - incomplete|shostak|0.266|
|l_trunc1_TCC1|✅ proved - complete|shostak|0.087|
|l_trunc1|✅ proved - complete|shostak|0.140|
|walk?_add1|✅ proved - incomplete|shostak|0.166|
|walk_concat_edge_TCC1|✅ proved - incomplete|shostak|0.130|
|walk_concat_edge|✅ proved - incomplete|shostak|0.302|
|walk_concat_TCC1|✅ proved - incomplete|shostak|0.154|
|walk_concat_TCC2|✅ proved - incomplete|shostak|0.216|
|walk_concat|✅ proved - incomplete|shostak|0.507|
|walk?_cut_TCC1|✅ proved - incomplete|shostak|0.100|
|walk?_cut_TCC2|✅ proved - incomplete|shostak|0.207|
|walk?_cut|✅ proved - incomplete|shostak|0.894|
|walk_merge|✅ proved - incomplete|shostak|0.602|

## `paths`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|path?_verts|✅ proved - incomplete|shostak|0.090|
|path_from_l|✅ proved - incomplete|shostak|0.112|
|path_from_in|✅ proved - incomplete|shostak|0.100|
|path?_caret_TCC1|✅ proved - incomplete|shostak|0.200|
|path?_caret|✅ proved - incomplete|shostak|0.436|
|path_from?_caret_TCC1|✅ proved - incomplete|shostak|0.235|
|path_from?_caret_TCC2|✅ proved - incomplete|shostak|0.166|
|path_from?_caret|✅ proved - incomplete|shostak|0.186|
|path?_rev_TCC1|✅ proved - incomplete|shostak|0.106|
|path?_rev|✅ proved - incomplete|shostak|0.146|
|path?_gen_seq2|✅ proved - incomplete|shostak|0.110|
|path?_add1_TCC1|✅ proved - incomplete|shostak|0.097|
|path?_add1|✅ proved - incomplete|shostak|0.206|
|path?_trunc1_TCC1|✅ proved - incomplete|shostak|0.125|
|path?_trunc1_TCC2|✅ proved - incomplete|shostak|0.110|
|path?_trunc1_TCC3|✅ proved - incomplete|shostak|0.125|
|path?_trunc1|✅ proved - incomplete|shostak|0.190|

## `path_ops`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|walk?_del_vert|✅ proved - incomplete|shostak|0.167|
|walk?_del_vert_not|✅ proved - incomplete|shostak|0.156|
|path?_del_vert|✅ proved - incomplete|shostak|0.095|
|path?_del_verts|✅ proved - incomplete|shostak|0.155|
|walk_to_path|✅ proved - incomplete|shostak|0.561|
|walk_to_path_less|✅ proved - incomplete|shostak|0.000|
|walk_to_path_from|✅ proved - incomplete|shostak|0.110|
|walk_to_path_from_less|✅ proved - incomplete|shostak|0.092|
|path_disjoint_TCC1|✅ proved - incomplete|shostak|0.209|
|path_disjoint_TCC2|✅ proved - incomplete|shostak|0.351|
|path_disjoint|✅ proved - incomplete|shostak|1.155|

## `sep_sets`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|del_verts_TCC1|✅ proved - complete|shostak|0.120|
|del_verts_TCC2|✅ proved - complete|shostak|0.080|
|sep_set_exists|✅ proved - incomplete|shostak|0.295|
|min_sep_set_TCC1|✅ proved - incomplete|shostak|0.080|
|min_sep_set_edge|✅ proved - incomplete|shostak|0.147|
|min_sep_set_card|✅ proved - incomplete|shostak|0.206|
|min_sep_set_seps|✅ proved - incomplete|shostak|0.140|
|min_sep_set_vert|✅ proved - incomplete|shostak|0.293|
|ends_not_in_min_sep_set|✅ proved - incomplete|shostak|0.080|
|walk?_del_verts_not|✅ proved - incomplete|shostak|0.166|
|adj_verts_TCC1|✅ proved - incomplete|shostak|0.136|
|adj_verts_lem|✅ proved - incomplete|shostak|0.201|
|sep_num_min|✅ proved - incomplete|shostak|0.285|

## `walk_inductions`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|walk_prep|✅ proved - complete|shostak|0.090|
|graph_induction_walk|✅ proved - complete|shostak|0.086|

## `path_circ`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|path_reduc|✅ proved - incomplete|shostak|0.241|
|trunc_long|✅ proved - complete|shostak|0.225|
|trunc_walk|✅ proved - incomplete|shostak|0.274|
|walks_concat_red_TCC1|✅ proved - incomplete|shostak|0.124|
|walks_concat_red_TCC2|✅ proved - incomplete|shostak|0.131|
|walks_concat_red_TCC3|✅ proved - incomplete|shostak|0.120|
|walks_concat_red_TCC4|✅ proved - incomplete|shostak|0.120|
|walks_concat_red_TCC5|✅ proved - incomplete|shostak|0.186|
|walks_concat_red_TCC6|✅ proved - incomplete|shostak|0.186|
|walks_concat_red_TCC7|✅ proved - incomplete|shostak|1.755|
|walks_concat_red|✅ proved - incomplete|shostak|0.675|
|index_rev_TCC1|✅ proved - incomplete|shostak|0.082|
|index_rev_TCC2|✅ proved - incomplete|shostak|0.090|
|index_rev_TCC3|✅ proved - incomplete|shostak|0.100|
|index_rev_TCC4|✅ proved - incomplete|shostak|0.093|
|index_rev|✅ proved - incomplete|shostak|0.100|
|rev_rev|✅ proved - incomplete|shostak|0.090|
|ind_rev_rev_TCC1|✅ proved - incomplete|shostak|0.076|
|ind_rev_rev_TCC2|✅ proved - complete|shostak|0.070|
|ind_rev_rev_TCC3|✅ proved - incomplete|shostak|0.100|
|ind_rev_rev_TCC4|✅ proved - incomplete|shostak|0.080|
|ind_rev_rev|✅ proved - incomplete|shostak|0.096|
|second_in_cat_TCC1|✅ proved - complete|shostak|0.100|
|second_in_cat_TCC2|✅ proved - incomplete|shostak|0.256|
|second_in_cat_TCC3|✅ proved - complete|shostak|0.096|
|second_in_cat|✅ proved - incomplete|shostak|0.315|
|sec_from_last_TCC1|✅ proved - complete|shostak|0.106|
|sec_from_last_TCC2|✅ proved - incomplete|shostak|0.255|
|sec_from_last|✅ proved - incomplete|shostak|0.295|
|prewalk_same|✅ proved - complete|shostak|0.136|
|compose_long_TCC1|✅ proved - complete|shostak|0.100|
|compose_long_TCC2|✅ proved - complete|shostak|0.106|
|compose_long|✅ proved - incomplete|shostak|0.276|
|red_compos_TCC1|✅ proved - incomplete|shostak|0.205|
|red_compos_TCC2|✅ proved - incomplete|shostak|0.195|
|red_compos_TCC3|✅ proved - incomplete|shostak|0.205|
|red_compos_TCC4|✅ proved - incomplete|shostak|1.087|
|red_compos|✅ proved - incomplete|shostak|3.183|
|cycl_red_compos_TCC1|✅ proved - incomplete|shostak|0.201|
|cycl_red_compos_TCC2|✅ proved - incomplete|shostak|0.210|
|cycl_red_compos|✅ proved - incomplete|shostak|4.115|
|walkers_TCC1|✅ proved - complete|shostak|0.080|
|walkers_TCC2|✅ proved - complete|shostak|0.070|
|walkers_TCC3|✅ proved - complete|shostak|0.079|
|walkers|✅ proved - complete|shostak|0.100|
|path_one_TCC1|✅ proved - incomplete|shostak|0.123|
|path_one|✅ proved - incomplete|shostak|0.323|
|rev_eq|✅ proved - incomplete|shostak|0.100|
|front_back_TCC1|✅ proved - complete|shostak|0.092|
|front_back|✅ proved - complete|shostak|0.090|
|walk_from_l|✅ proved - complete|shostak|0.090|
|plus_up_TCC1|✅ proved - complete|shostak|0.077|
|plus_up|✅ proved - complete|shostak|0.395|
|two_walks_TCC1|✅ proved - incomplete|shostak|0.304|
|two_walks|✅ proved - incomplete|shostak|0.155|
|back_short|✅ proved - incomplete|shostak|1.247|
|from_rev_TCC1|✅ proved - incomplete|shostak|0.097|
|from_rev|✅ proved - incomplete|shostak|0.100|
|front_short_TCC1|✅ proved - incomplete|shostak|0.189|
|front_short_TCC2|✅ proved - incomplete|shostak|0.201|
|front_short|✅ proved - incomplete|shostak|2.020|
|add1_rev_TCC1|✅ proved - complete|shostak|0.080|
|add1_rev_TCC2|✅ proved - complete|shostak|0.094|
|add1_rev_TCC3|✅ proved - incomplete|shostak|0.143|
|add1_rev|✅ proved - incomplete|shostak|0.342|

## `circuits`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|reducible?_TCC1|✅ proved - complete|shostak|0.122|
|reducible?_TCC2|✅ proved - complete|shostak|0.120|
|cyclically_reduced?_TCC1|✅ proved - complete|shostak|0.105|
|cyclically_reduced?_TCC2|✅ proved - complete|shostak|0.110|

## `path_lems`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Pigeon_hole|✅ proved - incomplete|shostak|0.130|

## `subgraphs_from_walk`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|G_from_TCC1|✅ proved - incomplete|shostak|0.197|
|G_from_vert|✅ proved - incomplete|shostak|0.073|
|vert_G_from|✅ proved - incomplete|shostak|0.090|
|edge?_G_from_TCC1|✅ proved - incomplete|shostak|0.070|
|edge?_G_from_TCC2|✅ proved - incomplete|shostak|0.085|
|edge?_G_from|✅ proved - incomplete|shostak|0.130|
|edge?_G_from_rev|✅ proved - incomplete|shostak|0.153|
|vert_G_from_not|✅ proved - incomplete|shostak|0.095|
|del_vert_subgraph|✅ proved - incomplete|shostak|0.188|

## `graph_from_edges`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|finite_lem|✅ proved - incomplete|shostak|0.178|
|Union_to_pred|✅ proved - complete|shostak|0.110|
|pred_to_Union|✅ proved - complete|shostak|0.085|
|verts_of_TCC1|✅ proved - incomplete|shostak|0.070|
|verts_from_TCC1|✅ proved - incomplete|shostak|0.118|
|verts_from_of|✅ proved - incomplete|shostak|0.100|
|graph_from_edgeset_TCC1|✅ proved - incomplete|shostak|0.132|
|graph_from_edgeset_rew1|✅ proved - incomplete|shostak|0.080|
|graph_from_edgeset_rew2|✅ proved - incomplete|shostak|0.072|
|no_isolated_verts|✅ proved - incomplete|shostak|0.080|

## `max_subgraphs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|prep0|✅ proved - complete|shostak|0.111|
|max_size_TCC1|✅ proved - complete|shostak|0.090|
|prep|✅ proved - incomplete|shostak|0.135|
|max_subgraph_TCC1|✅ proved - incomplete|shostak|0.185|
|max_subgraph_def|✅ proved - incomplete|shostak|0.084|
|max_subgraph_in|✅ proved - incomplete|shostak|0.080|
|max_subgraph_is_max|✅ proved - incomplete|shostak|0.090|

## `max_subtrees`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sing_is_tree|✅ proved - incomplete|shostak|0.102|
|tree_in|✅ proved - incomplete|shostak|0.505|
|max_subtree_TCC1|✅ proved - incomplete|shostak|0.083|
|max_subtree_TCC2|✅ proved - incomplete|shostak|0.130|
|max_subtree_tree|✅ proved - incomplete|shostak|0.126|
|max_subtree_subgraph|✅ proved - incomplete|shostak|0.090|
|max_subtree_max|✅ proved - incomplete|shostak|0.119|

## `trees`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|tree?_TCC1|✅ proved - incomplete|shostak|0.120|
|tree_nonempty|✅ proved - incomplete|shostak|0.102|
|tree_edge_card|✅ proved - incomplete|shostak|0.519|
|tree_edge_k|✅ proved - incomplete|shostak|0.156|
|tree_edge|✅ proved - incomplete|shostak|1.130|
|tree_edge_all|✅ proved - incomplete|shostak|0.090|
|del_tree_k|✅ proved - incomplete|shostak|0.152|
|del_tree|✅ proved - incomplete|shostak|2.216|
|del_tree_all|✅ proved - incomplete|shostak|0.082|

## `graph_inductions`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|size_prep|✅ proved - complete|shostak|0.164|
|graph_induction_vert|✅ proved - complete|shostak|0.100|
|graph_induction_vert_not|✅ proved - complete|shostak|0.097|
|num_edges_prep|✅ proved - complete|shostak|0.080|
|graph_induction_edge|✅ proved - complete|shostak|0.105|

## `tree_circ`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|exists_c_tree|✅ proved - incomplete|shostak|0.090|
|c_tree_TCC1|✅ proved - incomplete|shostak|0.000|
|tree_containing_lem|✅ proved - incomplete|shostak|0.225|
|tree_deg|✅ proved - incomplete|shostak|0.144|
|small_tree_lem|✅ proved - incomplete|shostak|0.160|
|tree_no_circuits|✅ proved - incomplete|shostak|0.393|

## `circuit_deg`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cir_deg_G|✅ proved - incomplete|shostak|0.248|
|circuit_deg|✅ proved - incomplete|shostak|1.706|
|circuit_subgraph_len_1|✅ proved - incomplete|shostak|0.350|

## `subtrees`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|walk_acr_TCC1|✅ proved - incomplete|shostak|0.100|
|walk_acr_TCC2|✅ proved - incomplete|shostak|0.140|
|walk_acr_TCC3|✅ proved - incomplete|shostak|0.149|
|walk_acr|✅ proved - incomplete|shostak|0.210|
|walk_acr2|✅ proved - incomplete|shostak|0.196|
|add_dbl_TCC1|✅ proved - incomplete|shostak|0.126|
|add_dbl|✅ proved - incomplete|shostak|0.100|
|max_tree_all_verts|✅ proved - incomplete|shostak|0.738|

## `graph_conn_defs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|connected?_TCC1|✅ proved - incomplete|shostak|0.097|
|path_connected?_TCC1|✅ proved - incomplete|shostak|0.100|
|path_connected?_TCC2|✅ proved - incomplete|shostak|0.100|

## `graph_connected`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|conn_eq_path|✅ proved - incomplete|shostak|0.131|
|path_eq_piece|✅ proved - incomplete|shostak|0.120|
|piece_eq_conn|✅ proved - incomplete|shostak|0.117|
|conn_eq_complected|✅ proved - incomplete|shostak|0.120|

## `graph_conn_piece`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|singleton_piece|✅ proved - complete|shostak|0.194|
|not_piece_has_2|✅ proved - complete|shostak|0.193|
|edge_not_across|✅ proved - complete|shostak|0.110|
|lem1|✅ proved - incomplete|shostak|0.234|
|H1P_not_empty|✅ proved - incomplete|shostak|0.175|
|cip0|✅ proved - incomplete|shostak|0.269|
|cip3|✅ proved - incomplete|shostak|0.185|
|connected_not_empty|✅ proved - incomplete|shostak|0.105|
|conn_implies_piece|✅ proved - incomplete|shostak|0.464|

## `graph_piece_path`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|union_edge_disj_TCC1|✅ proved - complete|shostak|0.107|
|union_edge_disj|✅ proved - incomplete|shostak|0.258|
|piece_implies_path|✅ proved - incomplete|shostak|0.931|

## `graph_path_conn`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|isolated_not_path|✅ proved - incomplete|shostak|0.168|
|pic_A|✅ proved - incomplete|shostak|0.214|
|thw_A|✅ proved - incomplete|shostak|0.575|
|tree_has_walk|✅ proved - incomplete|shostak|0.286|
|path_implies_conn|✅ proved - incomplete|shostak|0.626|

## `graph_complected`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|two_vertices|✅ proved - incomplete|shostak|0.113|
|sub_T|✅ proved - incomplete|shostak|0.296|
|rev_lem2|✅ proved - incomplete|shostak|0.288|
|conn_lem2|✅ proved - incomplete|shostak|0.080|
|del_rem_lem|✅ proved - incomplete|shostak|0.152|
|conn_lem3|✅ proved - incomplete|shostak|0.217|
|BIG|✅ proved - incomplete|shostak|0.731|
|conn_lem6|✅ proved - incomplete|shostak|0.080|
|conn_eq_compl|✅ proved - incomplete|shostak|0.134|
|conn_del_vert|✅ proved - incomplete|shostak|0.126|
|connected_not_empty|✅ proved - incomplete|shostak|0.110|
|connect_deg_0|✅ proved - incomplete|shostak|0.609|

## `ramsey_new`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|subgraph_clique|✅ proved - incomplete|shostak|0.154|
|subgraph_indep|✅ proved - incomplete|shostak|0.150|
|r1_TCC1|✅ proved - complete|shostak|0.079|
|r1_TCC2|✅ proved - incomplete|shostak|0.100|
|r2_TCC1|✅ proved - incomplete|shostak|0.096|
|card_r1_r2|✅ proved - incomplete|shostak|0.236|
|ramsey_lem|✅ proved - incomplete|shostak|1.629|
|ramseys_theorem|✅ proved - incomplete|shostak|0.100|

## `min_walk_reduced`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|reduced?_TCC1|✅ proved - complete|shostak|0.099|
|reduced?_TCC2|✅ proved - complete|shostak|0.090|
|min_walk_vert|✅ proved - incomplete|shostak|0.118|
|min_walk_is_reduced|✅ proved - incomplete|shostak|1.441|

## `min_walks`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|min_walk_from_TCC1|✅ proved - incomplete|shostak|0.090|
|min_walk_def|✅ proved - incomplete|shostak|0.351|
|min_walk_in|✅ proved - incomplete|shostak|0.086|
|min_walk_is_min|✅ proved - incomplete|shostak|0.090|

## `reduce_walks`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|reduce_TCC1|✅ proved - incomplete|shostak|0.100|
|reduce_TCC2|✅ proved - incomplete|shostak|0.100|
|reduce_TCC3|✅ proved - incomplete|shostak|0.090|
|reduce_TCC4|✅ proved - incomplete|shostak|0.100|
|reduce_TCC5|✅ proved - incomplete|shostak|0.100|
|reduce_TCC6|✅ proved - incomplete|shostak|0.246|
|reduce_lem_TCC1|✅ proved - incomplete|shostak|0.090|
|reduce_lem_TCC2|✅ proved - incomplete|shostak|0.100|
|reduce_lem_TCC3|✅ proved - incomplete|shostak|0.090|
|reduce_lem_TCC4|✅ proved - incomplete|shostak|0.086|
|reduce_lem|✅ proved - incomplete|shostak|1.095|

## `menger`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|easy_menger|✅ proved - incomplete|shostak|0.448|
|hard_menger|✅ proved - incomplete|shostak|0.137|

## `ind_paths`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|independent?_TCC1|✅ proved - complete|shostak|0.110|
|independent?_TCC2|✅ proved - complete|shostak|0.100|
|independent?_comm|✅ proved - complete|shostak|0.090|
|independent_ne|✅ proved - complete|shostak|0.086|
|ind_path_set_2|✅ proved - incomplete|shostak|0.130|
|internal_verts_TCC1|✅ proved - complete|shostak|0.096|
|internal_verts_TCC2|✅ proved - incomplete|shostak|0.154|
|indep?_lem|✅ proved - incomplete|shostak|0.144|

## `k_menger`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sep_num_B|✅ proved - incomplete|shostak|0.115|
|sep_num_implies|✅ proved - incomplete|shostak|0.110|
|easy_menger_B|✅ proved - incomplete|shostak|0.000|
|sep_set_small|✅ proved - incomplete|shostak|0.150|
|B_many_1|✅ proved - incomplete|shostak|0.322|
|sub_tight|✅ proved - incomplete|shostak|0.090|
|smaller_tight|✅ proved - incomplete|shostak|1.181|
|small_tight|✅ proved - incomplete|shostak|0.324|
|exists_tight|✅ proved - incomplete|shostak|0.429|
|close_tight|✅ proved - incomplete|shostak|0.900|
|smaller_close|✅ proved - incomplete|shostak|0.912|
|small_close|✅ proved - incomplete|shostak|0.229|
|exists_close|✅ proved - incomplete|shostak|0.485|
|closed_minimal|✅ proved - incomplete|shostak|1.052|
|closed_verts|✅ proved - incomplete|shostak|0.156|
|attach_edges_TCC1|✅ proved - incomplete|shostak|0.178|
|Hverts_TCC1|✅ proved - incomplete|shostak|0.161|
|Mgraph_TCC1|✅ proved - incomplete|shostak|0.162|
|Hst_intersect|✅ proved - incomplete|shostak|0.116|
|subset_Ws|✅ proved - incomplete|shostak|0.106|
|subset_Wt|✅ proved - incomplete|shostak|0.097|
|size_Ws|✅ proved - incomplete|shostak|1.814|
|size_Wt|✅ proved - incomplete|shostak|1.864|
|Menger_hard|✅ proved - incomplete|shostak|0.097|
|subgraph_walks|✅ proved - incomplete|shostak|0.185|
|subgraph_paths|✅ proved - incomplete|shostak|0.110|
|greatest_is|✅ proved - complete|shostak|0.577|
|least_is|✅ proved - complete|shostak|0.386|
|set_small_s|✅ proved - incomplete|shostak|3.863|
|set_small_t|✅ proved - incomplete|shostak|5.603|
|separates_Ws|✅ proved - incomplete|shostak|0.206|
|separates_Wt|✅ proved - incomplete|shostak|0.214|
|separ_sub|✅ proved - incomplete|shostak|0.506|
|separ_plus|✅ proved - incomplete|shostak|0.219|
|super_separ|✅ proved - incomplete|shostak|0.317|
|intermediate_subgraph|✅ proved - incomplete|shostak|0.603|
|intermediate_verts|✅ proved - incomplete|shostak|0.310|
|one_wedge_s_TCC1|✅ proved - incomplete|shostak|0.265|
|one_wedge_s_TCC2|✅ proved - incomplete|shostak|0.227|
|one_wedge_s_TCC3|✅ proved - incomplete|shostak|0.185|
|one_wedge_s_TCC4|✅ proved - incomplete|shostak|0.395|
|one_wedge_s|✅ proved - incomplete|shostak|2.121|
|one_edge_s|✅ proved - incomplete|shostak|0.744|
|short_path_k|✅ proved - incomplete|shostak|1.433|
|indep_path_sub|✅ proved - incomplete|shostak|0.100|
|ips_lem1|✅ proved - complete|shostak|0.100|
|ips_lem2|✅ proved - incomplete|shostak|0.495|
|secoo_TCC1|✅ proved - complete|shostak|0.080|
|secpp_TCC1|✅ proved - complete|shostak|0.080|
|inj_ips_TCC1|✅ proved - complete|shostak|0.213|
|inj_ips|✅ proved - incomplete|shostak|0.319|
|long_ipss_paths|✅ proved - incomplete|shostak|0.110|
|ipss_W_TCC1|✅ proved - incomplete|shostak|1.873|
|ipss_W|✅ proved - incomplete|shostak|0.530|
|long_ipst_paths|✅ proved - incomplete|shostak|0.113|
|ipst_W_TCC1|✅ proved - incomplete|shostak|1.889|
|ipst_W|✅ proved - incomplete|shostak|0.836|
|long_ipss_2|✅ proved - incomplete|shostak|0.125|
|long_ipst_2|✅ proved - incomplete|shostak|0.142|
|ind_path_set_secoo_TCC1|✅ proved - incomplete|shostak|0.100|
|ind_path_set_secoo|✅ proved - incomplete|shostak|0.000|
|ind_path_set_secpp_TCC1|✅ proved - incomplete|shostak|0.110|
|ind_path_set_secpp|✅ proved - incomplete|shostak|0.703|
|uniq_w_ipss|✅ proved - incomplete|shostak|0.216|
|uniq_w_ipst|✅ proved - incomplete|shostak|0.227|
|low_card_sep|✅ proved - incomplete|shostak|0.130|
|smaller_ips|✅ proved - complete|shostak|0.537|
|few_many|✅ proved - incomplete|shostak|0.117|
|min_B|✅ proved - incomplete|shostak|0.095|
|no_sep_req|✅ proved - incomplete|shostak|0.090|
|k_sep_close|✅ proved - incomplete|shostak|0.110|
|p_Ht_TCC1|✅ proved - incomplete|shostak|0.932|
|p_Ht_TCC2|✅ proved - incomplete|shostak|0.595|
|p_Ht_TCC3|✅ proved - incomplete|shostak|0.984|
|p_Ht|✅ proved - incomplete|shostak|1.071|
|q_Hs_TCC1|✅ proved - incomplete|shostak|0.926|
|q_Hs_TCC2|✅ proved - incomplete|shostak|0.923|
|q_Hs_TCC3|✅ proved - incomplete|shostak|0.990|
|q_Hs|✅ proved - incomplete|shostak|0.668|
|disjoint_M_paths_TCC1|✅ proved - incomplete|shostak|0.097|
|disjoint_M_paths_TCC2|✅ proved - incomplete|shostak|0.100|
|disjoint_M_paths_TCC3|✅ proved - incomplete|shostak|0.159|
|disjoint_M_paths_TCC4|✅ proved - incomplete|shostak|0.110|
|disjoint_M_paths_TCC5|✅ proved - incomplete|shostak|0.167|
|disjoint_M_paths_TCC6|✅ proved - incomplete|shostak|0.099|
|disjoint_M_paths_TCC7|✅ proved - incomplete|shostak|0.196|
|disjoint_M_paths_TCC8|✅ proved - incomplete|shostak|0.106|
|disjoint_M_paths_TCC9|✅ proved - incomplete|shostak|0.205|
|disjoint_M_paths|✅ proved - incomplete|shostak|1.980|
|sec_image|✅ proved - incomplete|shostak|0.960|
|Map_s_TCC1|✅ proved - incomplete|shostak|0.131|
|Map_s|✅ proved - incomplete|shostak|0.354|
|Map_t_TCC1|✅ proved - incomplete|shostak|0.132|
|Map_t|✅ proved - incomplete|shostak|0.358|
|Mapper_ips|✅ proved - incomplete|shostak|8.407|
|non_attached_induct|✅ proved - incomplete|shostak|0.161|
|plus_sep_vert|✅ proved - incomplete|shostak|0.229|
|separ_del_vert|✅ proved - incomplete|shostak|0.219|
|plus_path_set_TCC1|✅ proved - incomplete|shostak|0.125|
|plus_path_set_TCC2|✅ proved - incomplete|shostak|0.270|
|plus_path_set|✅ proved - incomplete|shostak|1.505|
|short_path_attach|✅ proved - incomplete|shostak|1.376|
|bridge_one|✅ proved - incomplete|shostak|1.920|
|bridge_two_TCC1|✅ proved - incomplete|shostak|0.100|
|bridge_two|✅ proved - incomplete|shostak|1.937|
|bridge_three|✅ proved - incomplete|shostak|1.639|
|C_induct_lemma|✅ proved - incomplete|shostak|0.241|
|Menger_k_hard|✅ proved - incomplete|shostak|0.080|
|Many_indep_paths|✅ proved - incomplete|shostak|0.000|
|hard_menger_trad|✅ proved - incomplete|shostak|1.544|

## `easy_menger`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|easy_menger|✅ proved - incomplete|shostak|0.451|
|easy_meng_1|✅ proved - incomplete|shostak|0.442|

## `subgraph_paths`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|walk?_subgraph|✅ proved - incomplete|shostak|0.179|
|path?_subgraph|✅ proved - incomplete|shostak|0.100|

## `complem`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|powerset_finite|✅ proved - complete|shostak|0.173|
|all_edges_power|✅ proved - incomplete|shostak|0.147|
|all_edges_finite|✅ proved - incomplete|shostak|0.252|
|completion_TCC1|✅ proved - incomplete|shostak|0.090|
|completion_TCC2|✅ proved - incomplete|shostak|0.105|
|completion_is_subgraph|✅ proved - incomplete|shostak|0.351|
|complement_TCC1|✅ proved - incomplete|shostak|0.127|
|complement_TCC2|✅ proved - incomplete|shostak|0.136|
|comp_comp_lem|✅ proved - incomplete|shostak|0.136|
|isol_TCC1|✅ proved - complete|shostak|0.080|
|path_or_not_path|✅ proved - incomplete|shostak|2.753|
|five_degrees_separation|✅ proved - incomplete|shostak|2.433|
|paths_or_not|✅ proved - incomplete|shostak|0.303|
|five_degrees_separated|✅ proved - incomplete|shostak|0.176|
|strong_implies|✅ proved - incomplete|shostak|0.199|
|imply_strong|✅ proved - incomplete|shostak|0.090|
|completion_is_transitive|✅ proved - incomplete|shostak|0.163|
|trans_complem|✅ proved - incomplete|shostak|0.610|
|t_close_TCC1|✅ proved - incomplete|shostak|0.168|
|t_close_1|✅ proved - incomplete|shostak|0.129|
|t_close_2|✅ proved - incomplete|shostak|0.140|
|t_close_3|✅ proved - incomplete|shostak|0.143|
|trans_fill|✅ proved - incomplete|shostak|0.346|
|complem_fill|✅ proved - incomplete|shostak|0.115|
|subgraph_conn|✅ proved - incomplete|shostak|0.230|
|complete_conn|✅ proved - incomplete|shostak|0.225|
|short_path_TCC1|✅ proved - incomplete|shostak|0.206|
|short_path_TCC2|✅ proved - incomplete|shostak|0.144|
|short_path|✅ proved - incomplete|shostak|1.403|
|trans_walk|✅ proved - incomplete|shostak|0.330|
|trans_connected|✅ proved - incomplete|shostak|0.274|
|disjoint_trans|✅ proved - incomplete|shostak|0.189|
|disjoint_trans_strong|✅ proved - incomplete|shostak|0.100|
|subgraph_trans|✅ proved - incomplete|shostak|0.162|
|subgraph_trans_strong|✅ proved - incomplete|shostak|0.106|
|t_close_4|✅ proved - incomplete|shostak|0.193|
|closure_connect|✅ proved - incomplete|shostak|0.603|
|connected_complem|✅ proved - incomplete|shostak|0.327|
|p_close_TCC1|✅ proved - incomplete|shostak|0.211|
|p_close_TCC2|✅ proved - incomplete|shostak|0.136|
|p_subgraph_t|✅ proved - incomplete|shostak|0.205|
|p_transitive|✅ proved - incomplete|shostak|0.193|
|p_close_1|✅ proved - incomplete|shostak|0.204|
|p_close_trans|✅ proved - incomplete|shostak|0.082|
|t_subgraph|✅ proved - incomplete|shostak|0.193|

## `los_graph`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|los_graphic|✅ proved - complete|shostak|0.122|
|Los|✅ proved - complete|shostak|0.102|

## `sep_set_lems`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sep_num_0|✅ proved - incomplete|shostak|0.120|
|sep_num_gt_0|✅ proved - incomplete|shostak|0.238|
|sep_num_is_1|✅ proved - incomplete|shostak|0.235|
|sep_num_le1|✅ proved - incomplete|shostak|0.293|
|separable?_comm|✅ proved - incomplete|shostak|0.090|
|separates_comm|✅ proved - incomplete|shostak|0.137|
|sep_num_comm|✅ proved - incomplete|shostak|0.141|
|v_not_in|✅ proved - incomplete|shostak|0.215|
|path_thru_each|✅ proved - incomplete|shostak|0.221|
|one_to_each|✅ proved - incomplete|shostak|0.363|
|walk?_del_verts|✅ proved - incomplete|shostak|0.144|
|del_verts_eq|✅ proved - incomplete|shostak|0.162|

## `tree_paths`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|dual_paths?_TCC1|✅ proved - incomplete|shostak|0.106|
|dual_paths?_TCC2|✅ proved - incomplete|shostak|0.100|
|dual_paths?_TCC3|✅ proved - incomplete|shostak|0.100|
|dual_paths?_TCC4|✅ proved - incomplete|shostak|0.100|
|min_dual_paths_TCC1|✅ proved - incomplete|shostak|0.095|
|min_dual_def|✅ proved - incomplete|shostak|0.436|
|min_dual_exists|✅ proved - incomplete|shostak|0.116|
|dual_path_trunc_TCC1|✅ proved - incomplete|shostak|0.090|
|dual_path_trunc_TCC2|✅ proved - incomplete|shostak|0.236|
|dual_path_trunc_TCC3|✅ proved - incomplete|shostak|0.234|
|dual_path_trunc_TCC4|✅ proved - incomplete|shostak|0.266|
|dual_path_trunc_TCC5|✅ proved - incomplete|shostak|0.185|
|dual_path_trunc_TCC6|✅ proved - incomplete|shostak|0.304|
|dual_path_trunc_TCC7|✅ proved - incomplete|shostak|0.205|
|dual_path_trunc_TCC8|✅ proved - incomplete|shostak|0.355|
|dual_path_trunc|✅ proved - incomplete|shostak|0.252|
|dual_path_length|✅ proved - incomplete|shostak|0.330|
|min_dual_reduc_TCC1|✅ proved - incomplete|shostak|0.105|
|min_dual_reduc_TCC2|✅ proved - incomplete|shostak|0.110|
|min_dual_reduc_TCC3|✅ proved - incomplete|shostak|0.000|
|min_dual_reduc_TCC4|✅ proved - incomplete|shostak|0.110|
|min_dual_reduc|✅ proved - incomplete|shostak|1.107|
|min_dual_distin_TCC1|✅ proved - incomplete|shostak|0.176|
|min_dual_distin_TCC2|✅ proved - incomplete|shostak|0.194|
|min_dual_distin|✅ proved - incomplete|shostak|0.691|
|dual_cycle_TCC1|✅ proved - incomplete|shostak|0.164|
|dual_cycle_TCC2|✅ proved - incomplete|shostak|0.170|
|dual_cycle_TCC3|✅ proved - incomplete|shostak|0.110|
|dual_cycle_TCC4|✅ proved - incomplete|shostak|0.325|
|dual_cycle|✅ proved - incomplete|shostak|5.697|
|tree_one_path|✅ proved - incomplete|shostak|2.400|

## `cycles`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cycle?_TCC1|✅ proved - incomplete|shostak|0.140|
|cycle?_TCC2|✅ proved - incomplete|shostak|0.135|
|cycle_l_gt_3|✅ proved - incomplete|shostak|0.110|
|cycle_has_path_TCC1|✅ proved - incomplete|shostak|0.137|
|cycle_has_path|✅ proved - incomplete|shostak|0.286|
|cycle_gt3|✅ proved - incomplete|shostak|0.120|
|cycle_def|✅ proved - incomplete|shostak|0.132|

## `cycle_deg`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|reachable_TCC1|✅ proved - incomplete|shostak|0.110|
|reachable_subset|✅ proved - incomplete|shostak|0.136|
|reachable_conn|✅ proved - incomplete|shostak|1.512|
|conn_compon|✅ proved - incomplete|shostak|2.099|
|sub_cycle_TCC1|✅ proved - incomplete|shostak|0.120|
|sub_cycle|✅ proved - incomplete|shostak|0.148|
|uniq_del_vert|✅ proved - incomplete|shostak|0.110|
|del_edge_uniq|✅ proved - incomplete|shostak|1.486|
|charact_tree|✅ proved - incomplete|shostak|0.366|
|exclus_cycl|✅ proved - incomplete|shostak|0.723|
|num_edge_tree|✅ proved - incomplete|shostak|0.000|
|iff_tree|✅ proved - incomplete|shostak|0.413|
|tree_num_iff|✅ proved - incomplete|shostak|0.274|
|deg_gt_1_cycle|✅ proved - incomplete|shostak|0.401|

## `old_menger`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|easy_menger|✅ proved - incomplete|shostak|0.454|
|hard_menger|✅ proved - incomplete|shostak|0.390|
|easy_meng_1|✅ proved - incomplete|shostak|0.441|

## `h_menger`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|path_not_thru|✅ proved - incomplete|shostak|0.299|
|adjacent_fact|✅ proved - incomplete|shostak|0.443|
|sep_num_del|✅ proved - incomplete|shostak|0.269|
|separates_del|✅ proved - incomplete|shostak|0.226|
|induction_step_comm|✅ proved - incomplete|shostak|0.110|
|separable?_del|✅ proved - incomplete|shostak|0.111|
|seq_j_TCC1|✅ proved - complete|shostak|0.090|
|seq_j_TCC2|✅ proved - incomplete|shostak|0.090|
|seq_j_TCC3|✅ proved - incomplete|shostak|0.126|
|seq_j|✅ proved - incomplete|shostak|0.330|
|short_path_case|✅ proved - incomplete|shostak|0.361|
|finale|✅ proved - incomplete|shostak|1.399|
|h_menger|✅ proved - incomplete|shostak|0.146|
|hard_menger|✅ proved - incomplete|shostak|0.379|

## `meng_scaff_prelude`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|line20_TCC1|✅ proved - incomplete|shostak|0.100|
|line20_TCC2|✅ proved - incomplete|shostak|0.080|
|line20_TCC3|✅ proved - incomplete|shostak|0.100|
|line20_TCC4|✅ proved - incomplete|shostak|0.080|
|line20_TCC5|✅ proved - incomplete|shostak|0.100|
|line20_TCC6|✅ proved - incomplete|shostak|0.100|
|line20|✅ proved - incomplete|shostak|0.596|
|join2_TCC1|✅ proved - incomplete|shostak|0.100|
|join2_TCC2|✅ proved - incomplete|shostak|0.381|
|path_meng_t|✅ proved - incomplete|shostak|0.118|
|path_H_def_TCC1|✅ proved - incomplete|shostak|0.160|
|path_H_def|✅ proved - incomplete|shostak|0.372|
|path_H_ind_TCC1|✅ proved - complete|shostak|0.100|
|path_H_ind_TCC2|✅ proved - incomplete|shostak|0.381|
|path_H_ind_TCC3|✅ proved - incomplete|shostak|0.100|
|path_H_ind_TCC4|✅ proved - incomplete|shostak|0.539|
|path_H_ind|✅ proved - incomplete|shostak|0.948|
|path_comps_ind3_TCC1|✅ proved - complete|shostak|0.093|
|path_comps_ind3_TCC2|✅ proved - complete|shostak|0.180|
|path_comps_ind3_TCC3|✅ proved - incomplete|shostak|0.415|
|path_comps_ind3_TCC4|✅ proved - incomplete|shostak|0.433|
|path_comps_ind3_TCC5|✅ proved - incomplete|shostak|0.100|
|path_comps_ind3_TCC6|✅ proved - incomplete|shostak|0.106|
|path_comps_ind3|✅ proved - incomplete|shostak|0.195|
|path_H_trunc_TCC1|✅ proved - incomplete|shostak|0.384|
|path_H_trunc_TCC2|✅ proved - incomplete|shostak|0.335|
|path_H_trunc|✅ proved - incomplete|shostak|0.575|
|meng_last_TCC1|✅ proved - complete|shostak|0.089|
|meng_last_TCC2|✅ proved - complete|shostak|0.090|
|meng_last_TCC3|✅ proved - incomplete|shostak|0.650|
|meng_last_TCC4|✅ proved - incomplete|shostak|0.644|
|meng_last|✅ proved - incomplete|shostak|0.290|
|ind_verts_W_TCC1|✅ proved - incomplete|shostak|0.214|
|ind_verts_W_TCC2|✅ proved - incomplete|shostak|0.234|
|ind_verts_W|✅ proved - incomplete|shostak|0.166|
|ind_verts_w_TCC1|✅ proved - incomplete|shostak|0.214|
|ind_verts_w_TCC2|✅ proved - incomplete|shostak|0.225|
|ind_verts_w|✅ proved - incomplete|shostak|0.166|
|path_meng_in_TCC1|✅ proved - incomplete|shostak|0.096|
|path_meng_in_TCC2|✅ proved - incomplete|shostak|0.090|
|path_meng_in_TCC3|✅ proved - incomplete|shostak|0.739|
|path_meng_in|✅ proved - incomplete|shostak|1.252|
|join2_lem_TCC1|✅ proved - incomplete|shostak|0.221|
|join2_lem_TCC2|✅ proved - incomplete|shostak|0.222|
|join2_lem_TCC3|✅ proved - incomplete|shostak|0.138|
|join2_lem_TCC4|✅ proved - incomplete|shostak|0.111|
|join2_lem|✅ proved - incomplete|shostak|1.323|
|path_from_to_walk_from|✅ proved - incomplete|shostak|0.114|
|paths_H_disj_TCC1|✅ proved - incomplete|shostak|0.090|
|paths_H_disj_TCC2|✅ proved - incomplete|shostak|0.086|
|paths_H_disj|✅ proved - incomplete|shostak|0.518|
|prelude|✅ proved - incomplete|shostak|5.293|

## `meng_scaff`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|first_TCC1|✅ proved - complete|shostak|0.104|
|first_lem|✅ proved - incomplete|shostak|0.131|
|first_not_TCC1|✅ proved - complete|shostak|0.090|
|first_not|✅ proved - incomplete|shostak|0.135|
|meng_to_G_sep_TCC1|✅ proved - incomplete|shostak|0.155|
|meng_to_G_sep_TCC2|✅ proved - incomplete|shostak|0.150|
|meng_to_G_sep_TCC3|✅ proved - incomplete|shostak|0.152|
|meng_to_G_sep_TCC4|✅ proved - incomplete|shostak|0.155|
|meng_to_G_sep|✅ proved - incomplete|shostak|0.000|
|prep_14_TCC1|✅ proved - complete|shostak|0.100|
|prep_14_TCC2|✅ proved - complete|shostak|0.109|
|prep_14|✅ proved - incomplete|shostak|0.325|
|line14_TCC1|✅ proved - incomplete|shostak|0.090|
|line14_TCC2|✅ proved - incomplete|shostak|0.213|
|line14_TCC3|✅ proved - incomplete|shostak|0.225|
|line14_TCC4|✅ proved - incomplete|shostak|0.225|
|line14|✅ proved - incomplete|shostak|0.543|
|line15ab|✅ proved - incomplete|shostak|0.325|
|prep_16|✅ proved - incomplete|shostak|1.035|
|line16|✅ proved - incomplete|shostak|0.490|
|line19_TCC1|✅ proved - incomplete|shostak|0.090|
|line19_TCC2|✅ proved - incomplete|shostak|0.111|
|line19_TCC3|✅ proved - incomplete|shostak|0.116|
|line19_TCC4|✅ proved - incomplete|shostak|0.120|
|line19_TCC5|✅ proved - incomplete|shostak|0.096|
|line19|✅ proved - incomplete|shostak|0.706|
|line17_prep|✅ proved - incomplete|shostak|0.159|
|line17_TCC1|✅ proved - incomplete|shostak|0.278|
|line17_TCC2|✅ proved - incomplete|shostak|0.284|
|line17_TCC3|✅ proved - incomplete|shostak|0.317|
|line17_TCC4|✅ proved - incomplete|shostak|0.304|
|line17|✅ proved - incomplete|shostak|0.290|
|pre20|✅ proved - incomplete|shostak|0.269|

## `meng_scaff_defs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|H_TCC1|✅ proved - incomplete|shostak|0.126|
|incident_TCC1|✅ proved - incomplete|shostak|0.105|
|meng_TCC1|✅ proved - complete|shostak|0.090|
|meng_TCC2|✅ proved - complete|shostak|0.083|
|meng_TCC3|✅ proved - incomplete|shostak|0.127|
|vert_H_s|✅ proved - incomplete|shostak|0.158|
|path_H_W|✅ proved - incomplete|shostak|0.165|
|path_comp_in|✅ proved - incomplete|shostak|0.120|
|walk?_H_TCC1|✅ proved - incomplete|shostak|0.116|
|walk?_H|✅ proved - incomplete|shostak|0.807|
|vert_meng_sub_TCC1|✅ proved - complete|shostak|0.110|
|vert_meng_sub_TCC2|✅ proved - complete|shostak|0.098|
|vert_meng_sub_TCC3|✅ proved - complete|shostak|0.108|
|vert_meng_sub_TCC4|✅ proved - complete|shostak|0.100|
|vert_meng_sub|✅ proved - incomplete|shostak|0.127|
|del_vert_comm|✅ proved - incomplete|shostak|0.137|
|H_comm|✅ proved - incomplete|shostak|0.090|
|incident_comm|✅ proved - incomplete|shostak|0.102|
|meng_comm_TCC1|✅ proved - complete|shostak|0.100|
|meng_comm_TCC2|✅ proved - complete|shostak|0.108|
|meng_comm|✅ proved - incomplete|shostak|0.186|

## `mantel`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|one_to_some|✅ proved - incomplete|shostak|0.094|
|some_to_lots|✅ proved - incomplete|shostak|0.100|
|one_to_lots|✅ proved - incomplete|shostak|0.085|
|exst_tri|✅ proved - incomplete|shostak|0.115|
|one_vert_edges|✅ proved - incomplete|shostak|0.120|
|edge_adjacent|✅ proved - incomplete|shostak|0.111|
|disj_neighbor_sets|✅ proved - incomplete|shostak|0.137|
|adj_is_subset|✅ proved - incomplete|shostak|0.120|
|adj_is_subset2|✅ proved - incomplete|shostak|0.105|
|no_cn|✅ proved - incomplete|shostak|0.165|
|disj_adj_card|✅ proved - incomplete|shostak|0.210|
|pre_edges_del21|✅ proved - incomplete|shostak|0.147|
|pre_edges_del22|✅ proved - incomplete|shostak|0.186|
|edges_del2|✅ proved - incomplete|shostak|0.175|
|verts_del2|✅ proved - incomplete|shostak|0.185|
|tri_del2|✅ proved - incomplete|shostak|0.204|
|int_lem|✅ proved - incomplete|shostak|0.135|
|card_union|✅ proved - incomplete|shostak|0.404|
|adj_helper|✅ proved - incomplete|shostak|0.155|
|adj_helper2|✅ proved - incomplete|shostak|0.165|
|inc_ind1|✅ proved - complete|shostak|0.135|
|adj_ind1|✅ proved - incomplete|shostak|0.200|
|inc_ind2|✅ proved - complete|shostak|0.230|
|adj_ind2|✅ proved - incomplete|shostak|0.530|
|inc_equals_adj|✅ proved - incomplete|shostak|0.719|
|Mantel|✅ proved - incomplete|shostak|0.824|

## `graph_pair`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|wf_lsth|✅ proved - complete|shostak|0.149|
|NAT_pair_induct|✅ proved - complete|shostak|0.120|
|size_up|✅ proved - complete|shostak|0.426|
|graph_induct_pair|✅ proved - complete|shostak|0.137|
|graph_induct_pair_B|✅ proved - complete|shostak|0.090|
|graph_pair_induct_not|✅ proved - complete|shostak|0.103|

## `mappings`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|reachable_TCC1|✅ proved - incomplete|shostak|0.110|
|reachable_subset|✅ proved - incomplete|shostak|0.124|
|path_reach1|✅ proved - incomplete|shostak|0.288|
|path_reach2|✅ proved - incomplete|shostak|0.362|
|reachable_conn|✅ proved - incomplete|shostak|1.589|
|sub_tree_k|✅ proved - incomplete|shostak|0.120|
|sub_tree_0|✅ proved - incomplete|shostak|3.132|
|sub_tree_k_lemm|✅ proved - incomplete|shostak|1.863|
|sub_tree_all|✅ proved - incomplete|shostak|0.100|
|path_reach4|✅ proved - incomplete|shostak|0.000|
|size_subgraph_path_TCC1|✅ proved - incomplete|shostak|0.100|
|size_subgraph_path|✅ proved - incomplete|shostak|0.558|
|path_gap|✅ proved - incomplete|shostak|1.212|
|set_card_less|✅ proved - complete|shostak|0.151|
|conn_compon|✅ proved - incomplete|shostak|2.357|
|Bush_less|✅ proved - incomplete|shostak|3.095|
|Fox_TCC1|✅ proved - incomplete|shostak|0.090|
|Fox_TCC2|✅ proved - incomplete|shostak|0.080|
|Fox_TCC3|✅ proved - incomplete|shostak|0.105|
|Fox_TCC4|✅ proved - incomplete|shostak|0.233|
|Fox_TCC5|✅ proved - incomplete|shostak|0.204|
|Fox_TCC6|✅ proved - incomplete|shostak|0.258|
|short_hound|✅ proved - incomplete|shostak|0.130|
|back_hound_TCC1|✅ proved - incomplete|shostak|0.090|
|back_hound_TCC2|✅ proved - incomplete|shostak|0.155|
|back_hound|✅ proved - incomplete|shostak|0.448|
|stuck_hound_TCC1|✅ proved - incomplete|shostak|0.090|
|stuck_hound_TCC2|✅ proved - incomplete|shostak|0.156|
|stuck_hound_TCC3|✅ proved - incomplete|shostak|0.110|
|stuck_hound_TCC4|✅ proved - incomplete|shostak|0.097|
|stuck_hound|✅ proved - incomplete|shostak|0.664|
|whole_hound_TCC1|✅ proved - incomplete|shostak|0.086|
|whole_hound_TCC2|✅ proved - incomplete|shostak|0.190|
|whole_hound_TCC3|✅ proved - incomplete|shostak|0.106|
|whole_hound_TCC4|✅ proved - incomplete|shostak|0.100|
|whole_hound|✅ proved - incomplete|shostak|0.515|
|fixed_fox|✅ proved - incomplete|shostak|1.341|
|small_fox|✅ proved - incomplete|shostak|17.516|
|num_edge_tree|✅ proved - incomplete|shostak|1.149|
|uniq_del_vert|✅ proved - incomplete|shostak|0.118|
|del_edge_uniq|✅ proved - incomplete|shostak|1.669|
|charact_tree|✅ proved - incomplete|shostak|0.378|
|iff_tree|✅ proved - incomplete|shostak|0.425|
|tree_num_iff|✅ proved - incomplete|shostak|0.245|
|tree_map|✅ proved - incomplete|shostak|0.264|
|sub_cycle_TCC1|✅ proved - incomplete|shostak|0.165|
|sub_cycle|✅ proved - incomplete|shostak|0.160|
|exclus_cycl|✅ proved - incomplete|shostak|1.307|
|deg_gt_1_cycle|✅ proved - incomplete|shostak|0.421|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib//float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-pvsio-fix.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210219-extratregies.lisp`|
