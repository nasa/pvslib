# Summary for `graphs`
Run started at 0:10:27 9/20/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **792**   | **792**    | **792**    | **0**  | **5:18.930 s**   |
|top|0|0|0|0|0.000|
|graphs|14|14|14|0|1.520|
|graph_deg|16|16|16|0|2.096|
|graph_ops|22|22|22|0|2.342|
|graph_deg_sum|8|8|8|0|2.133|
|subgraphs|7|7|7|0|0.703|
|walks|46|46|46|0|8.108|
|paths|17|17|17|0|2.926|
|path_ops|11|11|11|0|4.864|
|sep_sets|13|13|13|0|2.497|
|walk_inductions|2|2|2|0|0.202|
|path_circ|65|65|65|0|25.555|
|circuits|4|4|4|0|0.494|
|path_lems|1|1|1|0|0.146|
|subgraphs_from_walk|9|9|9|0|1.217|
|graph_from_edges|10|10|10|0|1.135|
|max_subgraphs|7|7|7|0|0.845|
|max_subtrees|7|7|7|0|1.194|
|trees|9|9|9|0|4.952|
|graph_inductions|5|5|5|0|0.601|
|tree_circ|6|6|6|0|1.212|
|circuit_deg|3|3|3|0|2.429|
|subtrees|8|8|8|0|1.964|
|graph_conn_defs|3|3|3|0|0.329|
|graph_connected|4|4|4|0|0.525|
|graph_conn_piece|9|9|9|0|2.088|
|graph_piece_path|3|3|3|0|1.405|
|graph_path_conn|5|5|5|0|2.085|
|graph_complected|12|12|12|0|2.589|
|ramsey_new|8|8|8|0|2.940|
|min_walk_reduced|4|4|4|0|1.956|
|min_walks|4|4|4|0|0.710|
|reduce_walks|11|11|11|0|2.454|
|menger|2|2|2|0|0.646|
|ind_paths|8|8|8|0|1.051|
|k_menger|110|110|110|0|1:21.919|
|easy_menger|2|2|2|0|0.992|
|subgraph_paths|2|2|2|0|0.314|
|complem|45|45|45|0|16.651|
|los_graph|2|2|2|0|0.247|
|sep_set_lems|12|12|12|0|2.619|
|tree_paths|31|31|31|0|16.570|
|cycles|7|7|7|0|1.240|
|cycle_deg|14|14|14|0|8.719|
|old_menger|3|3|3|0|1.450|
|h_menger|14|14|14|0|4.939|
|meng_scaff_prelude|52|52|52|0|22.275|
|meng_scaff|33|33|33|0|12.139|
|meng_scaff_defs|21|21|21|0|3.595|
|mantel|26|26|26|0|6.026|
|graph_pair|6|6|6|0|1.162|
|mappings|49|49|49|0|50.160|
## Detailed Summary 
## `top`
No formula declaration found.
## `graphs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|edg_TCC1|✅ proved - complete|shostak|0.128|
|edge?_TCC1|✅ proved - incomplete|shostak|0.122|
|edge?_comm|✅ proved - incomplete|shostak|0.080|
|edges_vert|✅ proved - incomplete|shostak|0.124|
|other_vert|✅ proved - incomplete|shostak|0.103|
|edge_has_2_verts|✅ proved - incomplete|shostak|0.103|
|edges_vert_in|✅ proved - incomplete|shostak|0.094|
|vert_in|✅ proved - incomplete|shostak|0.100|
|empty?_rew|✅ proved - complete|shostak|0.087|
|edges_of_empty|✅ proved - incomplete|shostak|0.106|
|singleton_edges|✅ proved - incomplete|shostak|0.115|
|edge_in_card_gt_1|✅ proved - incomplete|shostak|0.173|
|not_singleton_2_vert|✅ proved - complete|shostak|0.110|
|singleton_graph_TCC1|✅ proved - complete|shostak|0.075|

## `graph_deg`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|incident_edges_TCC1|✅ proved - complete|shostak|0.120|
|incident_edges_subset|✅ proved - complete|shostak|0.096|
|incident_edges_emptyset|✅ proved - complete|shostak|0.095|
|deg_del_edge|✅ proved - incomplete|shostak|0.228|
|deg_del_edge2|✅ proved - incomplete|shostak|0.124|
|deg_del_edge3|✅ proved - complete|shostak|0.125|
|deg_del_edge_ge|✅ proved - incomplete|shostak|0.115|
|deg_del_edge_le|✅ proved - incomplete|shostak|0.120|
|deg_edge_exists|✅ proved - complete|shostak|0.086|
|deg_to_card|✅ proved - complete|shostak|0.182|
|del_vert_deg_0|✅ proved - incomplete|shostak|0.115|
|deg_del_vert_TCC1|✅ proved - complete|shostak|0.100|
|deg_del_vert|✅ proved - incomplete|shostak|0.243|
|del_vert_not_incident|✅ proved - incomplete|shostak|0.115|
|singleton_deg|✅ proved - incomplete|shostak|0.116|
|deg_1_sing|✅ proved - complete|shostak|0.116|

## `graph_ops`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|union_TCC1|✅ proved - complete|shostak|0.106|
|del_vert_TCC1|✅ proved - complete|shostak|0.100|
|del_vert_TCC2|✅ proved - incomplete|shostak|0.136|
|del_edge_TCC1|✅ proved - complete|shostak|0.087|
|adjacent_TCC1|✅ proved - incomplete|shostak|0.105|
|del_vert_still_in|✅ proved - incomplete|shostak|0.080|
|size_del_vert|✅ proved - incomplete|shostak|0.103|
|del_vert_le|✅ proved - incomplete|shostak|0.110|
|del_vert_ge|✅ proved - incomplete|shostak|0.118|
|edge_in_del_vert|✅ proved - incomplete|shostak|0.080|
|edges_del_vert|✅ proved - incomplete|shostak|0.087|
|del_vert_comm|✅ proved - incomplete|shostak|0.146|
|del_vert_empty?|✅ proved - incomplete|shostak|0.110|
|del_edge_lem|✅ proved - complete|shostak|0.078|
|del_edge_lem2|✅ proved - complete|shostak|0.100|
|del_edge_lem3|✅ proved - complete|shostak|0.075|
|del_edge_lem5|✅ proved - complete|shostak|0.126|
|vert_del_edge|✅ proved - complete|shostak|0.080|
|del_edge_num|✅ proved - complete|shostak|0.156|
|del_edge_singleton|✅ proved - complete|shostak|0.087|
|del_vert_edge_comm|✅ proved - incomplete|shostak|0.136|
|del_vert_edge|✅ proved - incomplete|shostak|0.136|

## `graph_deg_sum`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|deg_lem0|✅ proved - incomplete|shostak|0.231|
|deg_lem2_TCC1|✅ proved - incomplete|shostak|0.090|
|deg_lem2|✅ proved - incomplete|shostak|0.199|
|edge_induction|✅ proved - complete|shostak|0.095|
|deg_thm|✅ proved - incomplete|shostak|0.828|
|subgraph_deg|✅ proved - complete|shostak|0.225|
|sum_gt_bound|✅ proved - incomplete|shostak|0.283|
|deg_gt_one|✅ proved - incomplete|shostak|0.182|

## `subgraphs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|finite_vert_subset|✅ proved - complete|shostak|0.121|
|subgraph_TCC1|✅ proved - complete|shostak|0.114|
|subgraph_TCC2|✅ proved - complete|shostak|0.070|
|subgraph_TCC3|✅ proved - complete|shostak|0.113|
|subgraph_vert_sub|✅ proved - complete|shostak|0.105|
|subgraph_lem|✅ proved - complete|shostak|0.080|
|subgraph_smaller|✅ proved - complete|shostak|0.100|

## `walks`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|walk?_TCC1|✅ proved - complete|shostak|0.125|
|walk?_TCC2|✅ proved - complete|shostak|0.133|
|list2prewalk_TCC1|✅ proved - complete|shostak|0.080|
|from?_TCC1|✅ proved - complete|shostak|0.080|
|from?_TCC2|✅ proved - complete|shostak|0.080|
|verts_of_TCC1|✅ proved - incomplete|shostak|0.169|
|edges_of_TCC1|✅ proved - complete|shostak|0.080|
|edges_of_TCC2|✅ proved - complete|shostak|0.095|
|edges_of_TCC3|✅ proved - incomplete|shostak|0.215|
|pre_circuit?_TCC1|✅ proved - incomplete|shostak|0.105|
|pre_circuit?_TCC2|✅ proved - incomplete|shostak|0.080|
|verts_in?_concat_TCC1|✅ proved - complete|shostak|0.106|
|verts_in?_concat|✅ proved - complete|shostak|0.176|
|verts_in?_caret_TCC1|✅ proved - complete|shostak|0.175|
|verts_in?_caret|✅ proved - complete|shostak|0.292|
|vert_seq_lem|✅ proved - complete|shostak|0.097|
|verts_of_subset|✅ proved - incomplete|shostak|0.096|
|edges_of_subset|✅ proved - incomplete|shostak|0.136|
|walk_verts_in|✅ proved - incomplete|shostak|0.090|
|walk_from_vert|✅ proved - incomplete|shostak|0.106|
|walk_edge_in|✅ proved - incomplete|shostak|0.166|
|trunc1_TCC1|✅ proved - complete|shostak|0.080|
|trunc1_TCC2|✅ proved - complete|shostak|0.136|
|add1_TCC1|✅ proved - complete|shostak|0.070|
|gen_seq1_is_walk|✅ proved - incomplete|shostak|0.090|
|edge_to_walk_TCC1|✅ proved - complete|shostak|0.087|
|edge_to_walk_TCC2|✅ proved - incomplete|shostak|0.090|
|edge_to_walk_TCC3|✅ proved - complete|shostak|0.096|
|edge_to_walk|✅ proved - incomplete|shostak|0.107|
|walk?_rev_TCC1|✅ proved - incomplete|shostak|0.110|
|walk?_rev|✅ proved - incomplete|shostak|0.176|
|walk?_reverse|✅ proved - incomplete|shostak|0.182|
|walk?_caret_TCC1|✅ proved - incomplete|shostak|0.225|
|walk?_caret|✅ proved - incomplete|shostak|0.272|
|l_trunc1_TCC1|✅ proved - complete|shostak|0.085|
|l_trunc1|✅ proved - complete|shostak|0.150|
|walk?_add1|✅ proved - incomplete|shostak|0.177|
|walk_concat_edge_TCC1|✅ proved - incomplete|shostak|0.137|
|walk_concat_edge|✅ proved - incomplete|shostak|0.322|
|walk_concat_TCC1|✅ proved - incomplete|shostak|0.155|
|walk_concat_TCC2|✅ proved - incomplete|shostak|0.223|
|walk_concat|✅ proved - incomplete|shostak|0.532|
|walk?_cut_TCC1|✅ proved - incomplete|shostak|0.100|
|walk?_cut_TCC2|✅ proved - incomplete|shostak|0.245|
|walk?_cut|✅ proved - incomplete|shostak|0.935|
|walk_merge|✅ proved - incomplete|shostak|0.644|

## `paths`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|path?_verts|✅ proved - incomplete|shostak|0.108|
|path_from_l|✅ proved - incomplete|shostak|0.111|
|path_from_in|✅ proved - incomplete|shostak|0.110|
|path?_caret_TCC1|✅ proved - incomplete|shostak|0.232|
|path?_caret|✅ proved - incomplete|shostak|0.448|
|path_from?_caret_TCC1|✅ proved - incomplete|shostak|0.246|
|path_from?_caret_TCC2|✅ proved - incomplete|shostak|0.173|
|path_from?_caret|✅ proved - incomplete|shostak|0.200|
|path?_rev_TCC1|✅ proved - incomplete|shostak|0.100|
|path?_rev|✅ proved - incomplete|shostak|0.168|
|path?_gen_seq2|✅ proved - incomplete|shostak|0.000|
|path?_add1_TCC1|✅ proved - incomplete|shostak|0.140|
|path?_add1|✅ proved - incomplete|shostak|0.282|
|path?_trunc1_TCC1|✅ proved - incomplete|shostak|0.165|
|path?_trunc1_TCC2|✅ proved - incomplete|shostak|0.110|
|path?_trunc1_TCC3|✅ proved - incomplete|shostak|0.126|
|path?_trunc1|✅ proved - incomplete|shostak|0.207|

## `path_ops`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|walk?_del_vert|✅ proved - incomplete|shostak|0.196|
|walk?_del_vert_not|✅ proved - incomplete|shostak|0.182|
|path?_del_vert|✅ proved - incomplete|shostak|0.110|
|path?_del_verts|✅ proved - incomplete|shostak|0.179|
|walk_to_path|✅ proved - incomplete|shostak|0.581|
|walk_to_path_less|✅ proved - incomplete|shostak|1.494|
|walk_to_path_from|✅ proved - incomplete|shostak|0.109|
|walk_to_path_from_less|✅ proved - incomplete|shostak|0.108|
|path_disjoint_TCC1|✅ proved - incomplete|shostak|0.223|
|path_disjoint_TCC2|✅ proved - incomplete|shostak|0.387|
|path_disjoint|✅ proved - incomplete|shostak|1.295|

## `sep_sets`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|del_verts_TCC1|✅ proved - complete|shostak|0.121|
|del_verts_TCC2|✅ proved - complete|shostak|0.097|
|sep_set_exists|✅ proved - incomplete|shostak|0.324|
|min_sep_set_TCC1|✅ proved - incomplete|shostak|0.090|
|min_sep_set_edge|✅ proved - incomplete|shostak|0.156|
|min_sep_set_card|✅ proved - incomplete|shostak|0.244|
|min_sep_set_seps|✅ proved - incomplete|shostak|0.155|
|min_sep_set_vert|✅ proved - incomplete|shostak|0.325|
|ends_not_in_min_sep_set|✅ proved - incomplete|shostak|0.090|
|walk?_del_verts_not|✅ proved - incomplete|shostak|0.193|
|adj_verts_TCC1|✅ proved - incomplete|shostak|0.156|
|adj_verts_lem|✅ proved - incomplete|shostak|0.217|
|sep_num_min|✅ proved - incomplete|shostak|0.329|

## `walk_inductions`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|walk_prep|✅ proved - complete|shostak|0.100|
|graph_induction_walk|✅ proved - complete|shostak|0.102|

## `path_circ`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|path_reduc|✅ proved - incomplete|shostak|0.256|
|trunc_long|✅ proved - complete|shostak|0.248|
|trunc_walk|✅ proved - incomplete|shostak|0.320|
|walks_concat_red_TCC1|✅ proved - incomplete|shostak|0.126|
|walks_concat_red_TCC2|✅ proved - incomplete|shostak|0.156|
|walks_concat_red_TCC3|✅ proved - incomplete|shostak|0.130|
|walks_concat_red_TCC4|✅ proved - incomplete|shostak|0.136|
|walks_concat_red_TCC5|✅ proved - incomplete|shostak|0.205|
|walks_concat_red_TCC6|✅ proved - incomplete|shostak|0.216|
|walks_concat_red_TCC7|✅ proved - incomplete|shostak|1.943|
|walks_concat_red|✅ proved - incomplete|shostak|0.748|
|index_rev_TCC1|✅ proved - incomplete|shostak|0.090|
|index_rev_TCC2|✅ proved - incomplete|shostak|0.090|
|index_rev_TCC3|✅ proved - incomplete|shostak|0.100|
|index_rev_TCC4|✅ proved - incomplete|shostak|0.115|
|index_rev|✅ proved - incomplete|shostak|0.100|
|rev_rev|✅ proved - incomplete|shostak|0.100|
|ind_rev_rev_TCC1|✅ proved - incomplete|shostak|0.090|
|ind_rev_rev_TCC2|✅ proved - complete|shostak|0.080|
|ind_rev_rev_TCC3|✅ proved - incomplete|shostak|0.104|
|ind_rev_rev_TCC4|✅ proved - incomplete|shostak|0.100|
|ind_rev_rev|✅ proved - incomplete|shostak|0.101|
|second_in_cat_TCC1|✅ proved - complete|shostak|0.120|
|second_in_cat_TCC2|✅ proved - incomplete|shostak|0.273|
|second_in_cat_TCC3|✅ proved - complete|shostak|0.110|
|second_in_cat|✅ proved - incomplete|shostak|0.333|
|sec_from_last_TCC1|✅ proved - complete|shostak|0.125|
|sec_from_last_TCC2|✅ proved - incomplete|shostak|0.286|
|sec_from_last|✅ proved - incomplete|shostak|0.312|
|prewalk_same|✅ proved - complete|shostak|0.136|
|compose_long_TCC1|✅ proved - complete|shostak|0.116|
|compose_long_TCC2|✅ proved - complete|shostak|0.126|
|compose_long|✅ proved - incomplete|shostak|0.305|
|red_compos_TCC1|✅ proved - incomplete|shostak|0.210|
|red_compos_TCC2|✅ proved - incomplete|shostak|0.215|
|red_compos_TCC3|✅ proved - incomplete|shostak|0.216|
|red_compos_TCC4|✅ proved - incomplete|shostak|1.196|
|red_compos|✅ proved - incomplete|shostak|3.622|
|cycl_red_compos_TCC1|✅ proved - incomplete|shostak|0.233|
|cycl_red_compos_TCC2|✅ proved - incomplete|shostak|0.219|
|cycl_red_compos|✅ proved - incomplete|shostak|4.508|
|walkers_TCC1|✅ proved - complete|shostak|0.090|
|walkers_TCC2|✅ proved - complete|shostak|0.090|
|walkers_TCC3|✅ proved - complete|shostak|0.080|
|walkers|✅ proved - complete|shostak|0.108|
|path_one_TCC1|✅ proved - incomplete|shostak|0.143|
|path_one|✅ proved - incomplete|shostak|0.345|
|rev_eq|✅ proved - incomplete|shostak|0.120|
|front_back_TCC1|✅ proved - complete|shostak|0.095|
|front_back|✅ proved - complete|shostak|0.110|
|walk_from_l|✅ proved - complete|shostak|0.103|
|plus_up_TCC1|✅ proved - complete|shostak|0.090|
|plus_up|✅ proved - complete|shostak|0.441|
|two_walks_TCC1|✅ proved - incomplete|shostak|0.335|
|two_walks|✅ proved - incomplete|shostak|0.166|
|back_short|✅ proved - incomplete|shostak|1.374|
|from_rev_TCC1|✅ proved - incomplete|shostak|0.098|
|from_rev|✅ proved - incomplete|shostak|0.120|
|front_short_TCC1|✅ proved - incomplete|shostak|0.220|
|front_short_TCC2|✅ proved - incomplete|shostak|0.209|
|front_short|✅ proved - incomplete|shostak|2.262|
|add1_rev_TCC1|✅ proved - complete|shostak|0.090|
|add1_rev_TCC2|✅ proved - complete|shostak|0.118|
|add1_rev_TCC3|✅ proved - incomplete|shostak|0.154|
|add1_rev|✅ proved - incomplete|shostak|0.379|

## `circuits`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|reducible?_TCC1|✅ proved - complete|shostak|0.127|
|reducible?_TCC2|✅ proved - complete|shostak|0.135|
|cyclically_reduced?_TCC1|✅ proved - complete|shostak|0.120|
|cyclically_reduced?_TCC2|✅ proved - complete|shostak|0.112|

## `path_lems`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Pigeon_hole|✅ proved - incomplete|shostak|0.146|

## `subgraphs_from_walk`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|G_from_TCC1|✅ proved - incomplete|shostak|0.235|
|G_from_vert|✅ proved - incomplete|shostak|0.080|
|vert_G_from|✅ proved - incomplete|shostak|0.098|
|edge?_G_from_TCC1|✅ proved - incomplete|shostak|0.080|
|edge?_G_from_TCC2|✅ proved - incomplete|shostak|0.097|
|edge?_G_from|✅ proved - incomplete|shostak|0.140|
|edge?_G_from_rev|✅ proved - incomplete|shostak|0.171|
|vert_G_from_not|✅ proved - incomplete|shostak|0.106|
|del_vert_subgraph|✅ proved - incomplete|shostak|0.210|

## `graph_from_edges`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|finite_lem|✅ proved - incomplete|shostak|0.199|
|Union_to_pred|✅ proved - complete|shostak|0.123|
|pred_to_Union|✅ proved - complete|shostak|0.097|
|verts_of_TCC1|✅ proved - incomplete|shostak|0.080|
|verts_from_TCC1|✅ proved - incomplete|shostak|0.131|
|verts_from_of|✅ proved - incomplete|shostak|0.110|
|graph_from_edgeset_TCC1|✅ proved - incomplete|shostak|0.138|
|graph_from_edgeset_rew1|✅ proved - incomplete|shostak|0.090|
|graph_from_edgeset_rew2|✅ proved - incomplete|shostak|0.077|
|no_isolated_verts|✅ proved - incomplete|shostak|0.090|

## `max_subgraphs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|prep0|✅ proved - complete|shostak|0.116|
|max_size_TCC1|✅ proved - complete|shostak|0.105|
|prep|✅ proved - incomplete|shostak|0.145|
|max_subgraph_TCC1|✅ proved - incomplete|shostak|0.205|
|max_subgraph_def|✅ proved - incomplete|shostak|0.080|
|max_subgraph_in|✅ proved - incomplete|shostak|0.090|
|max_subgraph_is_max|✅ proved - incomplete|shostak|0.104|

## `max_subtrees`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sing_is_tree|✅ proved - incomplete|shostak|0.110|
|tree_in|✅ proved - incomplete|shostak|0.548|
|max_subtree_TCC1|✅ proved - incomplete|shostak|0.090|
|max_subtree_TCC2|✅ proved - incomplete|shostak|0.150|
|max_subtree_tree|✅ proved - incomplete|shostak|0.000|
|max_subtree_subgraph|✅ proved - incomplete|shostak|0.110|
|max_subtree_max|✅ proved - incomplete|shostak|0.186|

## `trees`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|tree?_TCC1|✅ proved - incomplete|shostak|0.154|
|tree_nonempty|✅ proved - incomplete|shostak|0.140|
|tree_edge_card|✅ proved - incomplete|shostak|0.552|
|tree_edge_k|✅ proved - incomplete|shostak|0.172|
|tree_edge|✅ proved - incomplete|shostak|1.230|
|tree_edge_all|✅ proved - incomplete|shostak|0.100|
|del_tree_k|✅ proved - incomplete|shostak|0.173|
|del_tree|✅ proved - incomplete|shostak|2.329|
|del_tree_all|✅ proved - incomplete|shostak|0.102|

## `graph_inductions`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|size_prep|✅ proved - complete|shostak|0.192|
|graph_induction_vert|✅ proved - complete|shostak|0.099|
|graph_induction_vert_not|✅ proved - complete|shostak|0.111|
|num_edges_prep|✅ proved - complete|shostak|0.090|
|graph_induction_edge|✅ proved - complete|shostak|0.109|

## `tree_circ`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|exists_c_tree|✅ proved - incomplete|shostak|0.102|
|c_tree_TCC1|✅ proved - incomplete|shostak|0.090|
|tree_containing_lem|✅ proved - incomplete|shostak|0.240|
|tree_deg|✅ proved - incomplete|shostak|0.175|
|small_tree_lem|✅ proved - incomplete|shostak|0.180|
|tree_no_circuits|✅ proved - incomplete|shostak|0.425|

## `circuit_deg`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cir_deg_G|✅ proved - incomplete|shostak|0.265|
|circuit_deg|✅ proved - incomplete|shostak|1.788|
|circuit_subgraph_len_1|✅ proved - incomplete|shostak|0.376|

## `subtrees`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|walk_acr_TCC1|✅ proved - incomplete|shostak|0.120|
|walk_acr_TCC2|✅ proved - incomplete|shostak|0.160|
|walk_acr_TCC3|✅ proved - incomplete|shostak|0.160|
|walk_acr|✅ proved - incomplete|shostak|0.231|
|walk_acr2|✅ proved - incomplete|shostak|0.231|
|add_dbl_TCC1|✅ proved - incomplete|shostak|0.140|
|add_dbl|✅ proved - incomplete|shostak|0.100|
|max_tree_all_verts|✅ proved - incomplete|shostak|0.822|

## `graph_conn_defs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|connected?_TCC1|✅ proved - incomplete|shostak|0.114|
|path_connected?_TCC1|✅ proved - incomplete|shostak|0.110|
|path_connected?_TCC2|✅ proved - incomplete|shostak|0.105|

## `graph_connected`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|conn_eq_path|✅ proved - incomplete|shostak|0.140|
|path_eq_piece|✅ proved - incomplete|shostak|0.126|
|piece_eq_conn|✅ proved - incomplete|shostak|0.129|
|conn_eq_complected|✅ proved - incomplete|shostak|0.130|

## `graph_conn_piece`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|singleton_piece|✅ proved - complete|shostak|0.211|
|not_piece_has_2|✅ proved - complete|shostak|0.207|
|edge_not_across|✅ proved - complete|shostak|0.117|
|lem1|✅ proved - incomplete|shostak|0.255|
|H1P_not_empty|✅ proved - incomplete|shostak|0.192|
|cip0|✅ proved - incomplete|shostak|0.294|
|cip3|✅ proved - incomplete|shostak|0.192|
|connected_not_empty|✅ proved - incomplete|shostak|0.130|
|conn_implies_piece|✅ proved - incomplete|shostak|0.490|

## `graph_piece_path`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|union_edge_disj_TCC1|✅ proved - complete|shostak|0.116|
|union_edge_disj|✅ proved - incomplete|shostak|0.284|
|piece_implies_path|✅ proved - incomplete|shostak|1.005|

## `graph_path_conn`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|isolated_not_path|✅ proved - incomplete|shostak|0.189|
|pic_A|✅ proved - incomplete|shostak|0.254|
|thw_A|✅ proved - incomplete|shostak|0.636|
|tree_has_walk|✅ proved - incomplete|shostak|0.298|
|path_implies_conn|✅ proved - incomplete|shostak|0.708|

## `graph_complected`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|two_vertices|✅ proved - incomplete|shostak|0.118|
|sub_T|✅ proved - incomplete|shostak|0.313|
|rev_lem2|✅ proved - incomplete|shostak|0.317|
|conn_lem2|✅ proved - incomplete|shostak|0.094|
|del_rem_lem|✅ proved - incomplete|shostak|0.157|
|conn_lem3|✅ proved - incomplete|shostak|0.253|
|BIG|✅ proved - incomplete|shostak|0.804|
|conn_lem6|✅ proved - incomplete|shostak|0.095|
|conn_eq_compl|✅ proved - incomplete|shostak|0.156|
|conn_del_vert|✅ proved - incomplete|shostak|0.157|
|connected_not_empty|✅ proved - incomplete|shostak|0.125|
|connect_deg_0|✅ proved - incomplete|shostak|0.000|

## `ramsey_new`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|subgraph_clique|✅ proved - incomplete|shostak|0.213|
|subgraph_indep|✅ proved - incomplete|shostak|0.220|
|r1_TCC1|✅ proved - complete|shostak|0.110|
|r1_TCC2|✅ proved - incomplete|shostak|0.109|
|r2_TCC1|✅ proved - incomplete|shostak|0.110|
|card_r1_r2|✅ proved - incomplete|shostak|0.255|
|ramsey_lem|✅ proved - incomplete|shostak|1.813|
|ramseys_theorem|✅ proved - incomplete|shostak|0.110|

## `min_walk_reduced`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|reduced?_TCC1|✅ proved - complete|shostak|0.111|
|reduced?_TCC2|✅ proved - complete|shostak|0.100|
|min_walk_vert|✅ proved - incomplete|shostak|0.128|
|min_walk_is_reduced|✅ proved - incomplete|shostak|1.617|

## `min_walks`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|min_walk_from_TCC1|✅ proved - incomplete|shostak|0.100|
|min_walk_def|✅ proved - incomplete|shostak|0.398|
|min_walk_in|✅ proved - incomplete|shostak|0.102|
|min_walk_is_min|✅ proved - incomplete|shostak|0.110|

## `reduce_walks`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|reduce_TCC1|✅ proved - incomplete|shostak|0.112|
|reduce_TCC2|✅ proved - incomplete|shostak|0.100|
|reduce_TCC3|✅ proved - incomplete|shostak|0.110|
|reduce_TCC4|✅ proved - incomplete|shostak|0.106|
|reduce_TCC5|✅ proved - incomplete|shostak|0.110|
|reduce_TCC6|✅ proved - incomplete|shostak|0.292|
|reduce_lem_TCC1|✅ proved - incomplete|shostak|0.100|
|reduce_lem_TCC2|✅ proved - incomplete|shostak|0.110|
|reduce_lem_TCC3|✅ proved - incomplete|shostak|0.102|
|reduce_lem_TCC4|✅ proved - incomplete|shostak|0.110|
|reduce_lem|✅ proved - incomplete|shostak|1.202|

## `menger`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|easy_menger|✅ proved - incomplete|shostak|0.499|
|hard_menger|✅ proved - incomplete|shostak|0.147|

## `ind_paths`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|independent?_TCC1|✅ proved - complete|shostak|0.129|
|independent?_TCC2|✅ proved - complete|shostak|0.118|
|independent?_comm|✅ proved - complete|shostak|0.110|
|independent_ne|✅ proved - complete|shostak|0.098|
|ind_path_set_2|✅ proved - incomplete|shostak|0.157|
|internal_verts_TCC1|✅ proved - complete|shostak|0.100|
|internal_verts_TCC2|✅ proved - incomplete|shostak|0.176|
|indep?_lem|✅ proved - incomplete|shostak|0.163|

## `k_menger`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sep_num_B|✅ proved - incomplete|shostak|0.135|
|sep_num_implies|✅ proved - incomplete|shostak|0.126|
|easy_menger_B|✅ proved - incomplete|shostak|2.578|
|sep_set_small|✅ proved - incomplete|shostak|0.159|
|B_many_1|✅ proved - incomplete|shostak|0.351|
|sub_tight|✅ proved - incomplete|shostak|0.102|
|smaller_tight|✅ proved - incomplete|shostak|1.279|
|small_tight|✅ proved - incomplete|shostak|0.342|
|exists_tight|✅ proved - incomplete|shostak|0.474|
|close_tight|✅ proved - incomplete|shostak|1.000|
|smaller_close|✅ proved - incomplete|shostak|0.982|
|small_close|✅ proved - incomplete|shostak|0.254|
|exists_close|✅ proved - incomplete|shostak|0.519|
|closed_minimal|✅ proved - incomplete|shostak|1.187|
|closed_verts|✅ proved - incomplete|shostak|0.174|
|attach_edges_TCC1|✅ proved - incomplete|shostak|0.183|
|Hverts_TCC1|✅ proved - incomplete|shostak|0.180|
|Mgraph_TCC1|✅ proved - incomplete|shostak|0.178|
|Hst_intersect|✅ proved - incomplete|shostak|0.121|
|subset_Ws|✅ proved - incomplete|shostak|0.110|
|subset_Wt|✅ proved - incomplete|shostak|0.118|
|size_Ws|✅ proved - incomplete|shostak|0.000|
|size_Wt|✅ proved - incomplete|shostak|2.071|
|Menger_hard|✅ proved - incomplete|shostak|0.110|
|subgraph_walks|✅ proved - incomplete|shostak|0.198|
|subgraph_paths|✅ proved - incomplete|shostak|0.117|
|greatest_is|✅ proved - complete|shostak|0.651|
|least_is|✅ proved - complete|shostak|0.433|
|set_small_s|✅ proved - incomplete|shostak|8.214|
|set_small_t|✅ proved - incomplete|shostak|6.243|
|separates_Ws|✅ proved - incomplete|shostak|0.225|
|separates_Wt|✅ proved - incomplete|shostak|0.230|
|separ_sub|✅ proved - incomplete|shostak|0.545|
|separ_plus|✅ proved - incomplete|shostak|0.241|
|super_separ|✅ proved - incomplete|shostak|0.343|
|intermediate_subgraph|✅ proved - incomplete|shostak|0.000|
|intermediate_verts|✅ proved - incomplete|shostak|0.420|
|one_wedge_s_TCC1|✅ proved - incomplete|shostak|0.337|
|one_wedge_s_TCC2|✅ proved - incomplete|shostak|0.255|
|one_wedge_s_TCC3|✅ proved - incomplete|shostak|0.197|
|one_wedge_s_TCC4|✅ proved - incomplete|shostak|0.422|
|one_wedge_s|✅ proved - incomplete|shostak|2.288|
|one_edge_s|✅ proved - incomplete|shostak|0.814|
|short_path_k|✅ proved - incomplete|shostak|1.532|
|indep_path_sub|✅ proved - incomplete|shostak|0.106|
|ips_lem1|✅ proved - complete|shostak|0.117|
|ips_lem2|✅ proved - incomplete|shostak|0.526|
|secoo_TCC1|✅ proved - complete|shostak|0.080|
|secpp_TCC1|✅ proved - complete|shostak|0.080|
|inj_ips_TCC1|✅ proved - complete|shostak|0.235|
|inj_ips|✅ proved - incomplete|shostak|0.340|
|long_ipss_paths|✅ proved - incomplete|shostak|0.134|
|ipss_W_TCC1|✅ proved - incomplete|shostak|2.062|
|ipss_W|✅ proved - incomplete|shostak|0.579|
|long_ipst_paths|✅ proved - incomplete|shostak|0.122|
|ipst_W_TCC1|✅ proved - incomplete|shostak|2.071|
|ipst_W|✅ proved - incomplete|shostak|0.905|
|long_ipss_2|✅ proved - incomplete|shostak|0.149|
|long_ipst_2|✅ proved - incomplete|shostak|0.153|
|ind_path_set_secoo_TCC1|✅ proved - incomplete|shostak|0.108|
|ind_path_set_secoo|✅ proved - incomplete|shostak|0.733|
|ind_path_set_secpp_TCC1|✅ proved - incomplete|shostak|0.116|
|ind_path_set_secpp|✅ proved - incomplete|shostak|0.780|
|uniq_w_ipss|✅ proved - incomplete|shostak|0.240|
|uniq_w_ipst|✅ proved - incomplete|shostak|0.246|
|low_card_sep|✅ proved - incomplete|shostak|0.147|
|smaller_ips|✅ proved - complete|shostak|0.586|
|few_many|✅ proved - incomplete|shostak|0.000|
|min_B|✅ proved - incomplete|shostak|0.140|
|no_sep_req|✅ proved - incomplete|shostak|0.135|
|k_sep_close|✅ proved - incomplete|shostak|0.164|
|p_Ht_TCC1|✅ proved - incomplete|shostak|1.045|
|p_Ht_TCC2|✅ proved - incomplete|shostak|0.657|
|p_Ht_TCC3|✅ proved - incomplete|shostak|1.069|
|p_Ht|✅ proved - incomplete|shostak|1.191|
|q_Hs_TCC1|✅ proved - incomplete|shostak|1.005|
|q_Hs_TCC2|✅ proved - incomplete|shostak|0.989|
|q_Hs_TCC3|✅ proved - incomplete|shostak|1.080|
|q_Hs|✅ proved - incomplete|shostak|0.769|
|disjoint_M_paths_TCC1|✅ proved - incomplete|shostak|0.100|
|disjoint_M_paths_TCC2|✅ proved - incomplete|shostak|0.111|
|disjoint_M_paths_TCC3|✅ proved - incomplete|shostak|0.180|
|disjoint_M_paths_TCC4|✅ proved - incomplete|shostak|0.120|
|disjoint_M_paths_TCC5|✅ proved - incomplete|shostak|0.180|
|disjoint_M_paths_TCC6|✅ proved - incomplete|shostak|0.116|
|disjoint_M_paths_TCC7|✅ proved - incomplete|shostak|0.222|
|disjoint_M_paths_TCC8|✅ proved - incomplete|shostak|0.116|
|disjoint_M_paths_TCC9|✅ proved - incomplete|shostak|0.225|
|disjoint_M_paths|✅ proved - incomplete|shostak|2.248|
|sec_image|✅ proved - incomplete|shostak|1.004|
|Map_s_TCC1|✅ proved - incomplete|shostak|0.142|
|Map_s|✅ proved - incomplete|shostak|0.388|
|Map_t_TCC1|✅ proved - incomplete|shostak|0.140|
|Map_t|✅ proved - incomplete|shostak|0.392|
|Mapper_ips|✅ proved - incomplete|shostak|9.964|
|non_attached_induct|✅ proved - incomplete|shostak|0.179|
|plus_sep_vert|✅ proved - incomplete|shostak|0.260|
|separ_del_vert|✅ proved - incomplete|shostak|0.249|
|plus_path_set_TCC1|✅ proved - incomplete|shostak|0.125|
|plus_path_set_TCC2|✅ proved - incomplete|shostak|0.311|
|plus_path_set|✅ proved - incomplete|shostak|1.653|
|short_path_attach|✅ proved - incomplete|shostak|1.521|
|bridge_one|✅ proved - incomplete|shostak|2.020|
|bridge_two_TCC1|✅ proved - incomplete|shostak|0.120|
|bridge_two|✅ proved - incomplete|shostak|2.058|
|bridge_three|✅ proved - incomplete|shostak|1.755|
|C_induct_lemma|✅ proved - incomplete|shostak|0.262|
|Menger_k_hard|✅ proved - incomplete|shostak|0.097|
|Many_indep_paths|✅ proved - incomplete|shostak|0.364|
|hard_menger_trad|✅ proved - incomplete|shostak|0.000|

## `easy_menger`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|easy_menger|✅ proved - incomplete|shostak|0.495|
|easy_meng_1|✅ proved - incomplete|shostak|0.497|

## `subgraph_paths`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|walk?_subgraph|✅ proved - incomplete|shostak|0.194|
|path?_subgraph|✅ proved - incomplete|shostak|0.120|

## `complem`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|powerset_finite|✅ proved - complete|shostak|0.188|
|all_edges_power|✅ proved - incomplete|shostak|0.159|
|all_edges_finite|✅ proved - incomplete|shostak|0.279|
|completion_TCC1|✅ proved - incomplete|shostak|0.094|
|completion_TCC2|✅ proved - incomplete|shostak|0.125|
|completion_is_subgraph|✅ proved - incomplete|shostak|0.378|
|complement_TCC1|✅ proved - incomplete|shostak|0.136|
|complement_TCC2|✅ proved - incomplete|shostak|0.146|
|comp_comp_lem|✅ proved - incomplete|shostak|0.147|
|isol_TCC1|✅ proved - complete|shostak|0.097|
|path_or_not_path|✅ proved - incomplete|shostak|3.094|
|five_degrees_separation|✅ proved - incomplete|shostak|2.721|
|paths_or_not|✅ proved - incomplete|shostak|0.335|
|five_degrees_separated|✅ proved - incomplete|shostak|0.197|
|strong_implies|✅ proved - incomplete|shostak|0.224|
|imply_strong|✅ proved - incomplete|shostak|0.090|
|completion_is_transitive|✅ proved - incomplete|shostak|0.180|
|trans_complem|✅ proved - incomplete|shostak|0.677|
|t_close_TCC1|✅ proved - incomplete|shostak|0.188|
|t_close_1|✅ proved - incomplete|shostak|0.143|
|t_close_2|✅ proved - incomplete|shostak|0.135|
|t_close_3|✅ proved - incomplete|shostak|0.161|
|trans_fill|✅ proved - incomplete|shostak|0.393|
|complem_fill|✅ proved - incomplete|shostak|0.129|
|subgraph_conn|✅ proved - incomplete|shostak|0.262|
|complete_conn|✅ proved - incomplete|shostak|0.267|
|short_path_TCC1|✅ proved - incomplete|shostak|0.225|
|short_path_TCC2|✅ proved - incomplete|shostak|0.166|
|short_path|✅ proved - incomplete|shostak|1.569|
|trans_walk|✅ proved - incomplete|shostak|0.368|
|trans_connected|✅ proved - incomplete|shostak|0.293|
|disjoint_trans|✅ proved - incomplete|shostak|0.224|
|disjoint_trans_strong|✅ proved - incomplete|shostak|0.100|
|subgraph_trans|✅ proved - incomplete|shostak|0.177|
|subgraph_trans_strong|✅ proved - incomplete|shostak|0.110|
|t_close_4|✅ proved - incomplete|shostak|0.208|
|closure_connect|✅ proved - incomplete|shostak|0.674|
|connected_complem|✅ proved - incomplete|shostak|0.360|
|p_close_TCC1|✅ proved - incomplete|shostak|0.225|
|p_close_TCC2|✅ proved - incomplete|shostak|0.157|
|p_subgraph_t|✅ proved - incomplete|shostak|0.229|
|p_transitive|✅ proved - incomplete|shostak|0.201|
|p_close_1|✅ proved - incomplete|shostak|0.000|
|p_close_trans|✅ proved - incomplete|shostak|0.140|
|t_subgraph|✅ proved - incomplete|shostak|0.280|

## `los_graph`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|los_graphic|✅ proved - complete|shostak|0.127|
|Los|✅ proved - complete|shostak|0.120|

## `sep_set_lems`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sep_num_0|✅ proved - incomplete|shostak|0.124|
|sep_num_gt_0|✅ proved - incomplete|shostak|0.272|
|sep_num_is_1|✅ proved - incomplete|shostak|0.263|
|sep_num_le1|✅ proved - incomplete|shostak|0.344|
|separable?_comm|✅ proved - incomplete|shostak|0.101|
|separates_comm|✅ proved - incomplete|shostak|0.132|
|sep_num_comm|✅ proved - incomplete|shostak|0.172|
|v_not_in|✅ proved - incomplete|shostak|0.242|
|path_thru_each|✅ proved - incomplete|shostak|0.242|
|one_to_each|✅ proved - incomplete|shostak|0.397|
|walk?_del_verts|✅ proved - incomplete|shostak|0.162|
|del_verts_eq|✅ proved - incomplete|shostak|0.168|

## `tree_paths`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|dual_paths?_TCC1|✅ proved - incomplete|shostak|0.130|
|dual_paths?_TCC2|✅ proved - incomplete|shostak|0.112|
|dual_paths?_TCC3|✅ proved - incomplete|shostak|0.120|
|dual_paths?_TCC4|✅ proved - incomplete|shostak|0.120|
|min_dual_paths_TCC1|✅ proved - incomplete|shostak|0.104|
|min_dual_def|✅ proved - incomplete|shostak|0.499|
|min_dual_exists|✅ proved - incomplete|shostak|0.130|
|dual_path_trunc_TCC1|✅ proved - incomplete|shostak|0.104|
|dual_path_trunc_TCC2|✅ proved - incomplete|shostak|0.266|
|dual_path_trunc_TCC3|✅ proved - incomplete|shostak|0.256|
|dual_path_trunc_TCC4|✅ proved - incomplete|shostak|0.300|
|dual_path_trunc_TCC5|✅ proved - incomplete|shostak|0.206|
|dual_path_trunc_TCC6|✅ proved - incomplete|shostak|0.345|
|dual_path_trunc_TCC7|✅ proved - incomplete|shostak|0.236|
|dual_path_trunc_TCC8|✅ proved - incomplete|shostak|0.392|
|dual_path_trunc|✅ proved - incomplete|shostak|0.282|
|dual_path_length|✅ proved - incomplete|shostak|0.364|
|min_dual_reduc_TCC1|✅ proved - incomplete|shostak|0.120|
|min_dual_reduc_TCC2|✅ proved - incomplete|shostak|0.120|
|min_dual_reduc_TCC3|✅ proved - incomplete|shostak|0.130|
|min_dual_reduc_TCC4|✅ proved - incomplete|shostak|0.127|
|min_dual_reduc|✅ proved - incomplete|shostak|1.221|
|min_dual_distin_TCC1|✅ proved - incomplete|shostak|0.194|
|min_dual_distin_TCC2|✅ proved - incomplete|shostak|0.212|
|min_dual_distin|✅ proved - incomplete|shostak|0.777|
|dual_cycle_TCC1|✅ proved - incomplete|shostak|0.190|
|dual_cycle_TCC2|✅ proved - incomplete|shostak|0.187|
|dual_cycle_TCC3|✅ proved - incomplete|shostak|0.120|
|dual_cycle_TCC4|✅ proved - incomplete|shostak|0.377|
|dual_cycle|✅ proved - incomplete|shostak|6.188|
|tree_one_path|✅ proved - incomplete|shostak|2.641|

## `cycles`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cycle?_TCC1|✅ proved - incomplete|shostak|0.158|
|cycle?_TCC2|✅ proved - incomplete|shostak|0.150|
|cycle_l_gt_3|✅ proved - incomplete|shostak|0.123|
|cycle_has_path_TCC1|✅ proved - incomplete|shostak|0.170|
|cycle_has_path|✅ proved - incomplete|shostak|0.328|
|cycle_gt3|✅ proved - incomplete|shostak|0.136|
|cycle_def|✅ proved - incomplete|shostak|0.175|

## `cycle_deg`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|reachable_TCC1|✅ proved - incomplete|shostak|0.146|
|reachable_subset|✅ proved - incomplete|shostak|0.150|
|reachable_conn|✅ proved - incomplete|shostak|1.673|
|conn_compon|✅ proved - incomplete|shostak|2.221|
|sub_cycle_TCC1|✅ proved - incomplete|shostak|0.130|
|sub_cycle|✅ proved - incomplete|shostak|0.171|
|uniq_del_vert|✅ proved - incomplete|shostak|0.131|
|del_edge_uniq|✅ proved - incomplete|shostak|1.553|
|charact_tree|✅ proved - incomplete|shostak|0.411|
|exclus_cycl|✅ proved - incomplete|shostak|0.000|
|num_edge_tree|✅ proved - incomplete|shostak|1.003|
|iff_tree|✅ proved - incomplete|shostak|0.431|
|tree_num_iff|✅ proved - incomplete|shostak|0.277|
|deg_gt_1_cycle|✅ proved - incomplete|shostak|0.422|

## `old_menger`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|easy_menger|✅ proved - incomplete|shostak|0.508|
|hard_menger|✅ proved - incomplete|shostak|0.433|
|easy_meng_1|✅ proved - incomplete|shostak|0.509|

## `h_menger`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|path_not_thru|✅ proved - incomplete|shostak|0.324|
|adjacent_fact|✅ proved - incomplete|shostak|0.480|
|sep_num_del|✅ proved - incomplete|shostak|0.314|
|separates_del|✅ proved - incomplete|shostak|0.269|
|induction_step_comm|✅ proved - incomplete|shostak|0.120|
|separable?_del|✅ proved - incomplete|shostak|0.128|
|seq_j_TCC1|✅ proved - complete|shostak|0.110|
|seq_j_TCC2|✅ proved - incomplete|shostak|0.109|
|seq_j_TCC3|✅ proved - incomplete|shostak|0.140|
|seq_j|✅ proved - incomplete|shostak|0.370|
|short_path_case|✅ proved - incomplete|shostak|0.406|
|finale|✅ proved - incomplete|shostak|1.583|
|h_menger|✅ proved - incomplete|shostak|0.169|
|hard_menger|✅ proved - incomplete|shostak|0.417|

## `meng_scaff_prelude`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|line20_TCC1|✅ proved - incomplete|shostak|0.109|
|line20_TCC2|✅ proved - incomplete|shostak|0.110|
|line20_TCC3|✅ proved - incomplete|shostak|0.111|
|line20_TCC4|✅ proved - incomplete|shostak|0.110|
|line20_TCC5|✅ proved - incomplete|shostak|0.121|
|line20_TCC6|✅ proved - incomplete|shostak|0.110|
|line20|✅ proved - incomplete|shostak|0.667|
|join2_TCC1|✅ proved - incomplete|shostak|0.116|
|join2_TCC2|✅ proved - incomplete|shostak|0.434|
|path_meng_t|✅ proved - incomplete|shostak|0.140|
|path_H_def_TCC1|✅ proved - incomplete|shostak|0.167|
|path_H_def|✅ proved - incomplete|shostak|0.430|
|path_H_ind_TCC1|✅ proved - complete|shostak|0.110|
|path_H_ind_TCC2|✅ proved - incomplete|shostak|0.418|
|path_H_ind_TCC3|✅ proved - incomplete|shostak|0.105|
|path_H_ind_TCC4|✅ proved - incomplete|shostak|0.610|
|path_H_ind|✅ proved - incomplete|shostak|1.043|
|path_comps_ind3_TCC1|✅ proved - complete|shostak|0.105|
|path_comps_ind3_TCC2|✅ proved - complete|shostak|0.201|
|path_comps_ind3_TCC3|✅ proved - incomplete|shostak|0.456|
|path_comps_ind3_TCC4|✅ proved - incomplete|shostak|0.497|
|path_comps_ind3_TCC5|✅ proved - incomplete|shostak|0.115|
|path_comps_ind3_TCC6|✅ proved - incomplete|shostak|0.110|
|path_comps_ind3|✅ proved - incomplete|shostak|0.223|
|path_H_trunc_TCC1|✅ proved - incomplete|shostak|0.439|
|path_H_trunc_TCC2|✅ proved - incomplete|shostak|0.374|
|path_H_trunc|✅ proved - incomplete|shostak|0.661|
|meng_last_TCC1|✅ proved - complete|shostak|0.110|
|meng_last_TCC2|✅ proved - complete|shostak|0.101|
|meng_last_TCC3|✅ proved - incomplete|shostak|0.725|
|meng_last_TCC4|✅ proved - incomplete|shostak|0.721|
|meng_last|✅ proved - incomplete|shostak|0.331|
|ind_verts_W_TCC1|✅ proved - incomplete|shostak|0.239|
|ind_verts_W_TCC2|✅ proved - incomplete|shostak|0.247|
|ind_verts_W|✅ proved - incomplete|shostak|0.185|
|ind_verts_w_TCC1|✅ proved - incomplete|shostak|0.231|
|ind_verts_w_TCC2|✅ proved - incomplete|shostak|0.255|
|ind_verts_w|✅ proved - incomplete|shostak|0.186|
|path_meng_in_TCC1|✅ proved - incomplete|shostak|0.107|
|path_meng_in_TCC2|✅ proved - incomplete|shostak|0.100|
|path_meng_in_TCC3|✅ proved - incomplete|shostak|0.799|
|path_meng_in|✅ proved - incomplete|shostak|1.413|
|join2_lem_TCC1|✅ proved - incomplete|shostak|0.237|
|join2_lem_TCC2|✅ proved - incomplete|shostak|0.246|
|join2_lem_TCC3|✅ proved - incomplete|shostak|0.154|
|join2_lem_TCC4|✅ proved - incomplete|shostak|0.136|
|join2_lem|✅ proved - incomplete|shostak|1.484|
|path_from_to_walk_from|✅ proved - incomplete|shostak|0.137|
|paths_H_disj_TCC1|✅ proved - incomplete|shostak|0.105|
|paths_H_disj_TCC2|✅ proved - incomplete|shostak|0.110|
|paths_H_disj|✅ proved - incomplete|shostak|0.000|
|prelude|✅ proved - incomplete|shostak|5.824|

## `meng_scaff`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|first_TCC1|✅ proved - complete|shostak|0.120|
|first_lem|✅ proved - incomplete|shostak|0.150|
|first_not_TCC1|✅ proved - complete|shostak|0.099|
|first_not|✅ proved - incomplete|shostak|0.177|
|meng_to_G_sep_TCC1|✅ proved - incomplete|shostak|0.168|
|meng_to_G_sep_TCC2|✅ proved - incomplete|shostak|0.161|
|meng_to_G_sep_TCC3|✅ proved - incomplete|shostak|0.165|
|meng_to_G_sep_TCC4|✅ proved - incomplete|shostak|0.176|
|meng_to_G_sep|✅ proved - incomplete|shostak|3.154|
|prep_14_TCC1|✅ proved - complete|shostak|0.120|
|prep_14_TCC2|✅ proved - complete|shostak|0.130|
|prep_14|✅ proved - incomplete|shostak|0.359|
|line14_TCC1|✅ proved - incomplete|shostak|0.105|
|line14_TCC2|✅ proved - incomplete|shostak|0.244|
|line14_TCC3|✅ proved - incomplete|shostak|0.247|
|line14_TCC4|✅ proved - incomplete|shostak|0.250|
|line14|✅ proved - incomplete|shostak|0.616|
|line15ab|✅ proved - incomplete|shostak|0.354|
|prep_16|✅ proved - incomplete|shostak|1.157|
|line16|✅ proved - incomplete|shostak|0.565|
|line19_TCC1|✅ proved - incomplete|shostak|0.110|
|line19_TCC2|✅ proved - incomplete|shostak|0.128|
|line19_TCC3|✅ proved - incomplete|shostak|0.137|
|line19_TCC4|✅ proved - incomplete|shostak|0.143|
|line19_TCC5|✅ proved - incomplete|shostak|0.110|
|line19|✅ proved - incomplete|shostak|0.811|
|line17_prep|✅ proved - incomplete|shostak|0.197|
|line17_TCC1|✅ proved - incomplete|shostak|0.312|
|line17_TCC2|✅ proved - incomplete|shostak|0.330|
|line17_TCC3|✅ proved - incomplete|shostak|0.349|
|line17_TCC4|✅ proved - incomplete|shostak|0.358|
|line17|✅ proved - incomplete|shostak|0.331|
|pre20|✅ proved - incomplete|shostak|0.306|

## `meng_scaff_defs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|H_TCC1|✅ proved - incomplete|shostak|0.144|
|incident_TCC1|✅ proved - incomplete|shostak|0.129|
|meng_TCC1|✅ proved - complete|shostak|0.100|
|meng_TCC2|✅ proved - complete|shostak|0.107|
|meng_TCC3|✅ proved - incomplete|shostak|0.148|
|vert_H_s|✅ proved - incomplete|shostak|0.182|
|path_H_W|✅ proved - incomplete|shostak|0.183|
|path_comp_in|✅ proved - incomplete|shostak|0.145|
|walk?_H_TCC1|✅ proved - incomplete|shostak|0.130|
|walk?_H|✅ proved - incomplete|shostak|0.912|
|vert_meng_sub_TCC1|✅ proved - complete|shostak|0.120|
|vert_meng_sub_TCC2|✅ proved - complete|shostak|0.115|
|vert_meng_sub_TCC3|✅ proved - complete|shostak|0.124|
|vert_meng_sub_TCC4|✅ proved - complete|shostak|0.117|
|vert_meng_sub|✅ proved - incomplete|shostak|0.145|
|del_vert_comm|✅ proved - incomplete|shostak|0.155|
|H_comm|✅ proved - incomplete|shostak|0.115|
|incident_comm|✅ proved - incomplete|shostak|0.090|
|meng_comm_TCC1|✅ proved - complete|shostak|0.107|
|meng_comm_TCC2|✅ proved - complete|shostak|0.116|
|meng_comm|✅ proved - incomplete|shostak|0.211|

## `mantel`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|one_to_some|✅ proved - incomplete|shostak|0.120|
|some_to_lots|✅ proved - incomplete|shostak|0.104|
|one_to_lots|✅ proved - incomplete|shostak|0.105|
|exst_tri|✅ proved - incomplete|shostak|0.130|
|one_vert_edges|✅ proved - incomplete|shostak|0.140|
|edge_adjacent|✅ proved - incomplete|shostak|0.120|
|disj_neighbor_sets|✅ proved - incomplete|shostak|0.161|
|adj_is_subset|✅ proved - incomplete|shostak|0.137|
|adj_is_subset2|✅ proved - incomplete|shostak|0.126|
|no_cn|✅ proved - incomplete|shostak|0.186|
|disj_adj_card|✅ proved - incomplete|shostak|0.236|
|pre_edges_del21|✅ proved - incomplete|shostak|0.175|
|pre_edges_del22|✅ proved - incomplete|shostak|0.216|
|edges_del2|✅ proved - incomplete|shostak|0.187|
|verts_del2|✅ proved - incomplete|shostak|0.210|
|tri_del2|✅ proved - incomplete|shostak|0.244|
|int_lem|✅ proved - incomplete|shostak|0.165|
|card_union|✅ proved - incomplete|shostak|0.444|
|adj_helper|✅ proved - incomplete|shostak|0.175|
|adj_helper2|✅ proved - incomplete|shostak|0.185|
|inc_ind1|✅ proved - complete|shostak|0.154|
|adj_ind1|✅ proved - incomplete|shostak|0.214|
|inc_ind2|✅ proved - complete|shostak|0.270|
|adj_ind2|✅ proved - incomplete|shostak|0.000|
|inc_equals_adj|✅ proved - incomplete|shostak|0.890|
|Mantel|✅ proved - incomplete|shostak|0.932|

## `graph_pair`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|wf_lsth|✅ proved - complete|shostak|0.173|
|NAT_pair_induct|✅ proved - complete|shostak|0.129|
|size_up|✅ proved - complete|shostak|0.479|
|graph_induct_pair|✅ proved - complete|shostak|0.166|
|graph_induct_pair_B|✅ proved - complete|shostak|0.100|
|graph_pair_induct_not|✅ proved - complete|shostak|0.115|

## `mappings`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|reachable_TCC1|✅ proved - incomplete|shostak|0.126|
|reachable_subset|✅ proved - incomplete|shostak|0.150|
|path_reach1|✅ proved - incomplete|shostak|0.314|
|path_reach2|✅ proved - incomplete|shostak|0.393|
|reachable_conn|✅ proved - incomplete|shostak|1.724|
|sub_tree_k|✅ proved - incomplete|shostak|0.146|
|sub_tree_0|✅ proved - incomplete|shostak|3.239|
|sub_tree_k_lemm|✅ proved - incomplete|shostak|2.028|
|sub_tree_all|✅ proved - incomplete|shostak|0.116|
|path_reach4|✅ proved - incomplete|shostak|0.441|
|size_subgraph_path_TCC1|✅ proved - incomplete|shostak|0.120|
|size_subgraph_path|✅ proved - incomplete|shostak|0.614|
|path_gap|✅ proved - incomplete|shostak|1.283|
|set_card_less|✅ proved - complete|shostak|0.172|
|conn_compon|✅ proved - incomplete|shostak|2.405|
|Bush_less|✅ proved - incomplete|shostak|3.312|
|Fox_TCC1|✅ proved - incomplete|shostak|0.100|
|Fox_TCC2|✅ proved - incomplete|shostak|0.100|
|Fox_TCC3|✅ proved - incomplete|shostak|0.126|
|Fox_TCC4|✅ proved - incomplete|shostak|0.261|
|Fox_TCC5|✅ proved - incomplete|shostak|0.000|
|Fox_TCC6|✅ proved - incomplete|shostak|0.378|
|short_hound|✅ proved - incomplete|shostak|0.185|
|back_hound_TCC1|✅ proved - incomplete|shostak|0.105|
|back_hound_TCC2|✅ proved - incomplete|shostak|0.190|
|back_hound|✅ proved - incomplete|shostak|0.492|
|stuck_hound_TCC1|✅ proved - incomplete|shostak|0.110|
|stuck_hound_TCC2|✅ proved - incomplete|shostak|0.177|
|stuck_hound_TCC3|✅ proved - incomplete|shostak|0.125|
|stuck_hound_TCC4|✅ proved - incomplete|shostak|0.110|
|stuck_hound|✅ proved - incomplete|shostak|0.728|
|whole_hound_TCC1|✅ proved - incomplete|shostak|0.106|
|whole_hound_TCC2|✅ proved - incomplete|shostak|0.230|
|whole_hound_TCC3|✅ proved - incomplete|shostak|0.120|
|whole_hound_TCC4|✅ proved - incomplete|shostak|0.121|
|whole_hound|✅ proved - incomplete|shostak|0.561|
|fixed_fox|✅ proved - incomplete|shostak|1.430|
|small_fox|✅ proved - incomplete|shostak|22.490|
|num_edge_tree|✅ proved - incomplete|shostak|1.228|
|uniq_del_vert|✅ proved - incomplete|shostak|0.141|
|del_edge_uniq|✅ proved - incomplete|shostak|1.721|
|charact_tree|✅ proved - incomplete|shostak|0.410|
|iff_tree|✅ proved - incomplete|shostak|0.453|
|tree_num_iff|✅ proved - incomplete|shostak|0.277|
|tree_map|✅ proved - incomplete|shostak|0.299|
|sub_cycle_TCC1|✅ proved - incomplete|shostak|0.183|
|sub_cycle|✅ proved - incomplete|shostak|0.174|
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
