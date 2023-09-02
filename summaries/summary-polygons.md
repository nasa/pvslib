# Summary for `polygons`
Run started at 22:16:16 9/1/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **566**   | **566**    | **566**    | **0**  | **7:52.951 s**   |
|top|0|0|0|0|0.000|
|polygons_2d|143|143|143|0|1:26.873|
|topleft_vertex|23|23|23|0|5.721|
|polygon_attributes|31|31|31|0|24.090|
|rightward_crossings|20|20|20|0|14.008|
|reverse_polygons|38|38|38|0|22.193|
|horiz_edge_crossing|41|41|41|0|33.733|
|arb_direc_edge_crossing|64|64|64|0|31.023|
|polygon_miter_sequences|89|89|89|0|2:24.280|
|polygon_membership|117|117|117|0|1:51.030|
## Detailed Summary 
## `top`
No formula declaration found.
## `polygons_2d`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|prev_index_TCC1|✅ proved - incomplete|shostak|0.163|
|prev_index_TCC2|✅ proved - incomplete|shostak|0.030|
|next_index_TCC1|✅ proved - incomplete|shostak|0.040|
|next_index_TCC2|✅ proved - incomplete|shostak|0.040|
|prev_next_is_original|✅ proved - incomplete|shostak|0.050|
|next_prev_is_original|✅ proved - incomplete|shostak|0.040|
|rem_diff_eq_0|✅ proved - complete|shostak|0.228|
|rem_diff_eq_0_shift|✅ proved - complete|shostak|0.217|
|rem_add1_eq_next_index|✅ proved - incomplete|shostak|0.269|
|rem_sum3|✅ proved - complete|shostak|0.160|
|vertex_is_vertex|✅ proved - incomplete|shostak|0.040|
|vertex_is_not_nonvertex|✅ proved - incomplete|shostak|0.031|
|edges_of_polygon_TCC1|✅ proved - incomplete|shostak|0.100|
|edge_is_edge|✅ proved - incomplete|shostak|0.040|
|find_helper_TCC1|✅ proved - incomplete|shostak|0.040|
|find_helper_TCC2|✅ proved - incomplete|shostak|0.035|
|find_helper_TCC3|✅ proved - incomplete|shostak|0.020|
|find_helper_TCC4|✅ proved - incomplete|shostak|0.040|
|find_helper_TCC5|✅ proved - incomplete|shostak|0.040|
|find_helper_TCC6|✅ proved - incomplete|shostak|0.056|
|find_helper_invariant_TCC1|✅ proved - incomplete|shostak|0.040|
|find_helper_invariant_TCC2|✅ proved - incomplete|shostak|0.060|
|find_helper_invariant|✅ proved - incomplete|shostak|0.340|
|find_index_TCC1|✅ proved - incomplete|shostak|0.020|
|find_index_TCC2|✅ proved - incomplete|shostak|0.076|
|next_index_distinct|✅ proved - incomplete|shostak|0.040|
|vertex_find_helper_TCC1|✅ proved - incomplete|shostak|0.030|
|vertex_find_helper|✅ proved - incomplete|shostak|0.136|
|vertex_find_index|✅ proved - incomplete|shostak|0.040|
|find_helper_self_TCC1|✅ proved - incomplete|shostak|0.020|
|find_helper_self_TCC2|✅ proved - incomplete|shostak|0.030|
|find_helper_self|✅ proved - incomplete|shostak|0.276|
|find_index_self_TCC1|✅ proved - incomplete|shostak|0.036|
|find_index_self|✅ proved - incomplete|shostak|0.030|
|find_index_self_index|✅ proved - incomplete|shostak|0.070|
|segment_in_edges_TCC1|✅ proved - incomplete|shostak|0.115|
|segment_in_edges|✅ proved - incomplete|shostak|0.070|
|edge_segment_has_vertices|✅ proved - incomplete|shostak|0.030|
|find_index_segment_is_edge|✅ proved - incomplete|shostak|0.040|
|vertex_neq_next|✅ proved - incomplete|shostak|0.086|
|vertex_neq_next_2|✅ proved - incomplete|shostak|0.020|
|vertex_neq_prev|✅ proved - incomplete|shostak|0.070|
|vertex_neq_prev_2|✅ proved - incomplete|shostak|0.020|
|prev_vertex_neq_next_vertex|✅ proved - incomplete|shostak|0.106|
|vertices_diff_next_nonzero|✅ proved - incomplete|shostak|0.030|
|vertices_diff_prev_nonzero|✅ proved - incomplete|shostak|0.020|
|second_edge_does_not_double_back_TCC1|✅ proved - incomplete|shostak|0.040|
|second_edge_does_not_double_back_TCC2|✅ proved - incomplete|shostak|0.106|
|second_edge_does_not_double_back|✅ proved - incomplete|shostak|0.215|
|vertex_on_edge|✅ proved - incomplete|shostak|0.030|
|next_vertex_on_edge|✅ proved - incomplete|shostak|0.020|
|vertex_on_prev_edge|✅ proved - incomplete|shostak|0.076|
|norm_vertex_diff_next_pos|✅ proved - incomplete|shostak|0.050|
|norm_vertex_diff_prev_pos|✅ proved - incomplete|shostak|0.040|
|two_adjacent_edges_TCC1|✅ proved - incomplete|shostak|0.075|
|two_adjacent_edges_TCC2|✅ proved - incomplete|shostak|0.090|
|two_adjacent_edges|✅ proved - incomplete|shostak|0.110|
|same_edge_equiv_same_points|✅ proved - incomplete|shostak|0.566|
|rem_plus_1_eq_next_index|✅ proved - incomplete|shostak|0.412|
|rem_minus_1_eq_prev_index|✅ proved - incomplete|shostak|0.136|
|rem_plus_1_eq_next_index_2|✅ proved - incomplete|shostak|0.295|
|equal_or_adjacent_edge_reflexive|✅ proved - complete|shostak|0.020|
|equal_or_adjacent_edge_symmetric|✅ proved - complete|shostak|0.185|
|equal_or_adjacent_edge_not_transitive|✅ proved - complete|shostak|0.060|
|adj_edges_share_vertex|✅ proved - incomplete|shostak|0.220|
|short_antenna_edge_midpoint_on_longer_edge|✅ proved - incomplete|shostak|4.924|
|short_antenna_edge_midpoint_not_endpoint|✅ proved - incomplete|shostak|0.538|
|antenna_edges_share_many_points|✅ proved - incomplete|shostak|32.606|
|only_common_point_is_vertex_means_equal_or_adjacent|✅ proved - incomplete|shostak|3.785|
|common_pt_on_adj_edges_must_be_vertex_unless_antenna|✅ proved - incomplete|shostak|6.172|
|polygon_edges_do_not_cross_defs_eq|✅ proved - incomplete|shostak|0.925|
|example_right_triangle_TCC1|✅ proved - complete|shostak|0.070|
|simple_polygon_2d_TCC1|✅ proved - incomplete|shostak|1.826|
|example_diamond_TCC1|✅ proved - complete|shostak|0.101|
|example_diamond_TCC2|✅ proved - incomplete|shostak|3.606|
|next_edge_shares_only_vertex|✅ proved - incomplete|shostak|0.841|
|prev_edge_shares_only_vertex|✅ proved - incomplete|shostak|0.484|
|adjacent_edges_share_only_vertex|✅ proved - incomplete|shostak|0.365|
|next_edge_not_dir_parallel|✅ proved - incomplete|shostak|1.162|
|prev_edge_not_dir_parallel|✅ proved - incomplete|shostak|1.245|
|adjacent_edges_not_dir_parallel|✅ proved - incomplete|shostak|0.384|
|prev_vertex_not_on_ray_of_edge_TCC1|✅ proved - incomplete|shostak|0.030|
|prev_vertex_not_on_ray_of_edge|✅ proved - incomplete|shostak|0.524|
|only_adjacent_edges_intersect|✅ proved - incomplete|shostak|1.528|
|adjacent_edges_do_not_fold_back|✅ proved - incomplete|shostak|0.102|
|points_on_distinct_edges_differ|✅ proved - incomplete|shostak|0.131|
|edge_x_left_or_right_imp_cross_neq_0|✅ proved - incomplete|shostak|0.991|
|edge_y_above_or_below_imp_cross_neq_0|✅ proved - incomplete|shostak|0.978|
|shared_endpoints_imp_same_edge|✅ proved - incomplete|shostak|0.453|
|same_polygon_edge_overlaps_equal|✅ proved - incomplete|shostak|0.629|
|interior_point_is_nonvertex|✅ proved - incomplete|shostak|0.000|
|nonvertex_on_one_edge|✅ proved - incomplete|shostak|0.235|
|vertex_is_segment_endpoint|✅ proved - incomplete|shostak|0.105|
|vertex_is_edge_endpoint|✅ proved - incomplete|shostak|0.212|
|vertex_on_two_edges|✅ proved - incomplete|shostak|0.100|
|is_point_in_polygon_recursive?_TCC1|✅ proved - incomplete|shostak|0.040|
|is_point_in_polygon_recursive?_TCC2|✅ proved - incomplete|shostak|0.040|
|is_point_in_polygon_recursive_negation|✅ proved - incomplete|shostak|0.495|
|is_point_in_polygon_inclusive?_TCC1|✅ proved - incomplete|shostak|0.020|
|center_of_diamond_is_inside|✅ proved - incomplete|shostak|1.248|
|outside_left_of_diamond_is_outside|✅ proved - incomplete|shostak|0.514|
|above_center_of_diamond_is_inside|✅ proved - incomplete|shostak|1.640|
|above_outside_left_of_diamond_is_outside|✅ proved - incomplete|shostak|0.594|
|way_above_diamond_is_outside|✅ proved - incomplete|shostak|0.527|
|polygons_are_inside_themselves|✅ proved - incomplete|shostak|0.611|
|insert_vertex_TCC1|✅ proved - incomplete|shostak|0.056|
|insert_vertex_TCC2|✅ proved - incomplete|shostak|0.030|
|insert_vertex_TCC3|✅ proved - incomplete|shostak|0.030|
|insert_vertex_TCC4|✅ proved - incomplete|shostak|0.070|
|insert_vertex_TCC5|✅ proved - incomplete|shostak|0.492|
|insert_vertex_TCC6|✅ proved - incomplete|shostak|0.065|
|insert_vertex_seq_TCC1|✅ proved - incomplete|shostak|0.030|
|insert_vertex_seq_TCC2|✅ proved - incomplete|shostak|0.020|
|insert_vertex_seq_TCC3|✅ proved - incomplete|shostak|0.040|
|insert_vertex_seq_TCC4|✅ proved - incomplete|shostak|0.087|
|insert_vertex_seq_TCC5|✅ proved - incomplete|shostak|0.100|
|insert_vertex_seq_TCC6|✅ proved - incomplete|shostak|0.066|
|insert_vertex_seq_TCC7|✅ proved - incomplete|shostak|0.140|
|insert_vertex_seq_TCC8|✅ proved - incomplete|shostak|0.030|
|insert_vertex_seq_TCC9|✅ proved - incomplete|shostak|0.176|
|polygon_segment_is_not_outside_inclusive|✅ proved - incomplete|shostak|1.053|
|polygon_segment_is_outside_exclusive|✅ proved - incomplete|shostak|0.030|
|polygon_segment_is_inside_inclusive|✅ proved - incomplete|shostak|0.030|
|polygon_segment_is_not_inside_exclusive|✅ proved - incomplete|shostak|1.070|
|path_outside_inclusive?_TCC1|✅ proved - incomplete|shostak|0.030|
|path_outside_inclusive?_TCC2|✅ proved - incomplete|shostak|0.050|
|path_outside_inclusive?_TCC3|✅ proved - incomplete|shostak|0.100|
|point_on_polygon_perimeter?_eq_is_point_on_polygon_perimeter?|✅ proved - incomplete|shostak|0.032|
|find_index_any_rec_TCC1|✅ proved - incomplete|shostak|0.040|
|find_index_any_rec_TCC2|✅ proved - incomplete|shostak|0.050|
|find_index_any_rec_TCC3|✅ proved - incomplete|shostak|0.070|
|find_index_any_TCC1|✅ proved - incomplete|shostak|0.030|
|perimeter_find_index_any|✅ proved - incomplete|shostak|0.426|
|point_on_find_index_segment_TCC1|✅ proved - incomplete|shostak|0.040|
|point_on_find_index_segment|✅ proved - incomplete|shostak|0.324|
|find_index_any_segment_rec_TCC1|✅ proved - incomplete|shostak|0.030|
|find_index_any_segment_rec|✅ proved - incomplete|shostak|3.707|
|find_index_any_segment|✅ proved - incomplete|shostak|0.070|
|find_index_any_self|✅ proved - incomplete|shostak|0.034|
|point_on_segment_rem_endpoints_TCC1|✅ proved - incomplete|shostak|0.210|
|point_on_segment_rem_endpoints|✅ proved - incomplete|shostak|0.534|
|point_on_segment_rem_endpoints_2_TCC1|✅ proved - incomplete|shostak|0.170|
|point_on_segment_rem_endpoints_2|✅ proved - incomplete|shostak|0.254|

## `topleft_vertex`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|leftmost_vertex_val_TCC1|✅ proved - incomplete|shostak|0.040|
|exists_leftmost_vertex_val|✅ proved - incomplete|shostak|0.073|
|leftmost_vertex_val_is_min|✅ proved - incomplete|shostak|0.090|
|at_least_one_leftmost|✅ proved - incomplete|shostak|0.030|
|topleft_vertex_val_TCC1|✅ proved - incomplete|shostak|0.045|
|topleft_vertex_val_is_max|✅ proved - incomplete|shostak|0.070|
|topleft_vertex_idx_TCC1|✅ proved - incomplete|shostak|0.352|
|leftmost_is_topleft_x|✅ proved - incomplete|shostak|0.040|
|leftmost_has_min_x|✅ proved - incomplete|shostak|0.040|
|topmost_is_topleft_y|✅ proved - incomplete|shostak|0.030|
|topmost_has_max_y|✅ proved - incomplete|shostak|0.054|
|leftmost_xval_le_segment|✅ proved - incomplete|shostak|0.130|
|leftmost_xval_lt_segment|✅ proved - incomplete|shostak|0.128|
|leftmost_xval_lt_segment_eq|✅ proved - incomplete|shostak|0.260|
|leftmost_vtx_val_le_any_perim_point|✅ proved - incomplete|shostak|0.054|
|topmost_yval_ge_segment|✅ proved - incomplete|shostak|0.120|
|topmost_yval_gt_segment|✅ proved - incomplete|shostak|0.135|
|topleft_vertex_bounds_vertices|✅ proved - incomplete|shostak|0.124|
|topleft_vertex_bounds_all_points|✅ proved - incomplete|shostak|0.617|
|min_vertex_yval_TCC1|✅ proved - incomplete|shostak|0.050|
|not_all_vertices_collinear_horiz|✅ proved - incomplete|shostak|0.563|
|falling_edge_exists|✅ proved - incomplete|shostak|1.361|
|rising_edge_exists|✅ proved - incomplete|shostak|1.315|

## `polygon_attributes`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|min_edge_sep_vertex_TCC1|✅ proved - incomplete|shostak|0.040|
|min_edge_sep_vertex_TCC2|✅ proved - incomplete|shostak|0.103|
|min_edge_sep_vertex_TCC3|✅ proved - incomplete|shostak|0.198|
|min_edge_sep_vertex_TCC4|✅ proved - incomplete|shostak|0.212|
|min_edge_separation_TCC1|✅ proved - incomplete|shostak|0.038|
|min_edge_separation_TCC2|✅ proved - incomplete|shostak|0.080|
|min_edge_sep_vertex_le_dist_to_vtx|✅ proved - incomplete|shostak|3.393|
|min_edge_separation_is_min|✅ proved - incomplete|shostak|0.491|
|min_edge_sep_TCC1|✅ proved - incomplete|shostak|3.659|
|min_edge_sep_le_min_edge_separation|✅ proved - incomplete|shostak|0.881|
|separation_distance_bounds_edge_length|✅ proved - incomplete|shostak|6.198|
|min_edge_sep_all_points|✅ proved - incomplete|shostak|0.612|
|sines_of_edge_angles_TCC1|✅ proved - incomplete|shostak|0.040|
|sines_of_edge_angles_TCC2|✅ proved - incomplete|shostak|0.030|
|sines_of_edge_angles_nonempty|✅ proved - incomplete|shostak|0.219|
|min_edge_angle_sine_TCC1|✅ proved - incomplete|shostak|0.020|
|min_edge_angle_sine_TCC2|✅ proved - incomplete|shostak|0.724|
|edge_angle_sine_sq_bound|✅ proved - incomplete|shostak|0.140|
|sines_of_inward_edge_angles_TCC1|✅ proved - incomplete|shostak|0.040|
|sines_of_inward_edge_angles_TCC2|✅ proved - incomplete|shostak|0.035|
|sines_of_inward_edge_angles_nonempty|✅ proved - incomplete|shostak|0.230|
|min_inward_edge_angle_sine_TCC1|✅ proved - incomplete|shostak|0.024|
|min_inward_edge_angle_sine_TCC2|✅ proved - incomplete|shostak|0.696|
|in_out_offset_lt_min_edge_sep|✅ proved - incomplete|shostak|0.836|
|ccw_imp_cross_topleft_edges_neg|✅ proved - incomplete|shostak|1.380|
|cross_topleft_edges_neg_imp_ccw|✅ proved - incomplete|shostak|1.589|
|ccw_eqv_cross_topleft_edges_neg|✅ proved - incomplete|shostak|0.378|
|nearby_pt_between_edges_not_on_perim|✅ proved - incomplete|shostak|1.489|
|miter_point_between_edges_TCC1|✅ proved - incomplete|shostak|0.031|
|miter_point_between_edges_TCC2|✅ proved - incomplete|shostak|0.090|
|miter_point_between_edges|✅ proved - incomplete|shostak|0.194|

## `rightward_crossings`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|edge_crossing_point_TCC1|✅ proved - complete|shostak|0.040|
|rightward_crossing_set_nonempty|✅ proved - incomplete|shostak|0.050|
|leftmost_crossing_xval_TCC1|✅ proved - incomplete|shostak|0.020|
|edge_crossing_point_on_perim|✅ proved - incomplete|shostak|0.739|
|leftmost_crossing_on_perim|✅ proved - incomplete|shostak|0.579|
|edge_crossing_point_xval_bound|✅ proved - incomplete|shostak|1.694|
|leftmost_crossing_xval_bound|✅ proved - incomplete|shostak|0.098|
|leftmost_crossing_xval_is_min|✅ proved - incomplete|shostak|0.100|
|leftmost_has_horiz_dist_from_p|✅ proved - incomplete|shostak|0.185|
|has_crossing_off_right_side_falling|✅ proved - incomplete|shostak|1.230|
|no_point_x_left_of_leftmost_crossing_TCC1|✅ proved - incomplete|shostak|0.030|
|no_point_x_left_of_leftmost_crossing|✅ proved - incomplete|shostak|1.368|
|no_edge_point_left_of_leftmost_crossing|✅ proved - incomplete|shostak|0.818|
|left_of_leftmost_crossing_not_on_perim_TCC1|✅ proved - incomplete|shostak|0.020|
|left_of_leftmost_crossing_not_on_perim|✅ proved - incomplete|shostak|1.203|
|left_of_leftmost_crossing_not_on_perim_2|✅ proved - incomplete|shostak|1.199|
|leftmost_crossing_on_polygon_edge|✅ proved - incomplete|shostak|0.108|
|leftmost_is_horiz_edge_endpoint|✅ proved - incomplete|shostak|0.937|
|left_of_leftmost_not_on_perim_edge|✅ proved - incomplete|shostak|2.582|
|only_one_edge_adj_leftmost_is_horiz|✅ proved - incomplete|shostak|1.008|

## `reverse_polygons`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|rev_polygon_index_TCC1|✅ proved - incomplete|shostak|0.020|
|rev_polygon_index_TCC2|✅ proved - incomplete|shostak|0.040|
|reverse_polygon_TCC1|✅ proved - incomplete|shostak|0.078|
|rev_polygon_index_reverse_TCC1|✅ proved - incomplete|shostak|0.050|
|rev_polygon_index_reverse|✅ proved - incomplete|shostak|0.050|
|rev_rev_polygon_index|✅ proved - incomplete|shostak|0.040|
|reverse_reverse_polygon|✅ proved - incomplete|shostak|0.160|
|reverse_vertex_rev_index_TCC1|✅ proved - incomplete|shostak|0.050|
|reverse_vertex_rev_index|✅ proved - incomplete|shostak|0.060|
|prev_index_rev_index_next|✅ proved - incomplete|shostak|0.121|
|prev_index_of_reverse|✅ proved - incomplete|shostak|0.120|
|next_index_rev_index_prev|✅ proved - incomplete|shostak|0.150|
|next_index_of_reverse|✅ proved - incomplete|shostak|0.124|
|edges_of_reverse_polygon|✅ proved - incomplete|shostak|0.160|
|point_on_edge_of_rev_polygon|✅ proved - incomplete|shostak|0.050|
|edge_of_rev_polygon_rev_segment|✅ proved - incomplete|shostak|0.263|
|edge_of_rev_polygon_imp_edge_rev_seg|✅ proved - incomplete|shostak|0.195|
|rev_polygon_edge_is_rev_segment|✅ proved - incomplete|shostak|0.180|
|on_rev_perim_eqv_on_perim|✅ proved - incomplete|shostak|0.734|
|reverse_polygon_is_simple|✅ proved - incomplete|shostak|0.233|
|topleft_index_of_reverse|✅ proved - incomplete|shostak|0.467|
|topleft_vertex_of_reverse_is_same|✅ proved - incomplete|shostak|0.040|
|find_index_any_reverse|✅ proved - incomplete|shostak|0.206|
|find_index_any_vertex_reverse|✅ proved - incomplete|shostak|0.248|
|ccw_reverse_polygon|✅ proved - incomplete|shostak|4.418|
|ccw_miter_pt_left_of_topleft_vtx_TCC1|✅ proved - incomplete|shostak|0.050|
|ccw_miter_pt_left_of_topleft_vtx_TCC2|✅ proved - incomplete|shostak|0.100|
|ccw_miter_pt_left_of_topleft_vtx|✅ proved - incomplete|shostak|9.028|
|segment_falling_reverse_rising_TCC1|✅ proved - incomplete|shostak|0.607|
|segment_falling_reverse_rising|✅ proved - incomplete|shostak|0.248|
|segment_falling_reverse_image_TCC1|✅ proved - incomplete|shostak|0.616|
|segment_falling_reverse_image|✅ proved - incomplete|shostak|0.259|
|reverse_seg_rightward_edge_crossing|✅ proved - incomplete|shostak|0.060|
|reverse_has_rightward_crossings|✅ proved - incomplete|shostak|1.332|
|edge_crossing_point_same_in_reverse_TCC1|✅ proved - incomplete|shostak|0.020|
|edge_crossing_point_same_in_reverse|✅ proved - incomplete|shostak|1.200|
|leftmost_crossing_same_in_reverse_TCC1|✅ proved - incomplete|shostak|0.020|
|leftmost_crossing_same_in_reverse|✅ proved - incomplete|shostak|0.396|

## `horiz_edge_crossing`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|point_on_ray_reflexive|✅ proved - complete|shostak|0.020|
|point_on_ray_trans|✅ proved - complete|shostak|0.031|
|pt_above_p1_and_below_p2_and_x_in_range_imp_pt_on_seg_on_ray|✅ proved - complete|shostak|2.377|
|is_right_point_ray_intersect?_imp_exists_pt_on_seg_point_on_ray?|✅ proved - incomplete|shostak|0.659|
|rightmost_x_val_TCC1|✅ proved - incomplete|shostak|0.050|
|all_edges_to_left|✅ proved - incomplete|shostak|0.201|
|vertex_on_perimeter|✅ proved - incomplete|shostak|0.066|
|edge_right_crossing_point_TCC1|✅ proved - complete|shostak|0.020|
|is_vertex_with_V_edges?_TCC1|✅ proved - incomplete|shostak|0.050|
|right_crossing_edges_no_V_TCC1|✅ proved - incomplete|shostak|0.070|
|right_ray_crossing_x_TCC1|✅ proved - incomplete|shostak|0.066|
|edge_right_crossing_point_y_eq|✅ proved - complete|shostak|0.160|
|right_crossing_point_on_edge|✅ proved - incomplete|shostak|0.186|
|diamond_center_is_inside|✅ proved - incomplete|shostak|1.723|
|odd_rt_xing_edges_card_eqv_point_in_polygon_rec|✅ proved - incomplete|shostak|0.773|
|even_card_purged_V_edges|✅ proved - incomplete|shostak|0.524|
|subset_purged_V_right_crossing_edges_TCC1|✅ proved - incomplete|shostak|0.020|
|subset_purged_V_right_crossing_edges|✅ proved - incomplete|shostak|0.081|
|no_V_edges_eq_crossing_edges_sans_purged|✅ proved - incomplete|shostak|6.295|
|card_xing_edges_from_n_and_no_V_both_odd|✅ proved - incomplete|shostak|0.132|
|card_rt_xing_edges_eq_card_rt_xing_x|✅ proved - incomplete|shostak|2.469|
|right_crossing_x_eq_rt_crossing_set|✅ proved - incomplete|shostak|7.047|
|point_in_polygon?_eq_is_point_in_polygon_exclusive?|✅ proved - incomplete|shostak|0.080|
|counted_is_crossing|✅ proved - incomplete|shostak|0.605|
|counted_or_uncounted_crossing|✅ proved - incomplete|shostak|1.920|
|crossing_on_perimeter|✅ proved - incomplete|shostak|0.020|
|set_before_subset|✅ proved - complete|shostak|0.030|
|crossings_subset|✅ proved - incomplete|shostak|0.040|
|crossing_before_diff|✅ proved - incomplete|shostak|1.181|
|right_crossings_min|✅ proved - incomplete|shostak|2.192|
|right_crossings_max|✅ proved - incomplete|shostak|0.436|
|before_crossings_empty|✅ proved - incomplete|shostak|0.029|
|right_crossings_gap|✅ proved - incomplete|shostak|0.986|
|right_counted_gap|✅ proved - incomplete|shostak|0.420|
|between_crossings_even|✅ proved - incomplete|shostak|0.301|
|opposite_sides_of_crossing|✅ proved - incomplete|shostak|1.879|
|outgoing_follows_point_in|✅ proved - incomplete|shostak|0.057|
|before_crossing_in_polygon|✅ proved - incomplete|shostak|0.080|
|before_counted_odd_crossings|✅ proved - incomplete|shostak|0.059|
|before_counted_in_polygon|✅ proved - incomplete|shostak|0.120|
|counted_crossing_follows_point_inside|✅ proved - incomplete|shostak|0.278|

## `arb_direc_edge_crossing`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|points_on_ray_diff_norms|✅ proved - incomplete|shostak|0.270|
|points_on_ray_norms_on_ray|✅ proved - incomplete|shostak|0.343|
|counted_crossing_on_perimeter|✅ proved - incomplete|shostak|0.032|
|arb_crossings_subset|✅ proved - incomplete|shostak|0.277|
|arb_crossings_before_diff|✅ proved - incomplete|shostak|0.321|
|member_arb_crossings_on_perimeter|✅ proved - incomplete|shostak|0.085|
|arb_crossings_min|✅ proved - incomplete|shostak|0.084|
|arb_crossings_max|✅ proved - incomplete|shostak|0.135|
|before_arb_crossings_empty|✅ proved - incomplete|shostak|0.030|
|one_adjacent_edge_not_parallel|✅ proved - incomplete|shostak|0.196|
|key_arb_intersections_nonneg|✅ proved - incomplete|shostak|0.035|
|key_arb_intersections_subset|✅ proved - incomplete|shostak|0.668|
|on_parallel_not_adj_counted|✅ proved - incomplete|shostak|0.497|
|on_parallel_not_counted_crossing|✅ proved - incomplete|shostak|0.030|
|parallel_on_arb_line|✅ proved - incomplete|shostak|0.155|
|parallel_diff_norm|✅ proved - incomplete|shostak|0.110|
|parallel_vectors_diff_segment_endpoints|✅ proved - incomplete|shostak|0.924|
|parallel_point_diff_norm|✅ proved - incomplete|shostak|0.305|
|point_not_on_parallel_segment|✅ proved - incomplete|shostak|3.588|
|below_min_key_arb_not_on|✅ proved - incomplete|shostak|0.090|
|below_min_key_arb_crossing|✅ proved - incomplete|shostak|0.125|
|below_min_key_same_crossing_set|✅ proved - incomplete|shostak|1.001|
|key_intersections_subset_arb_crossings|✅ proved - incomplete|shostak|0.523|
|key_intersections_empty_arb_crossings|✅ proved - incomplete|shostak|0.040|
|empty_key_arb_only_parallel|✅ proved - incomplete|shostak|0.040|
|empty_key_arb_crossings_emptyset|✅ proved - incomplete|shostak|0.363|
|empty_key_arb_before_empty_crossings|✅ proved - incomplete|shostak|0.134|
|empty_key_arb_before_empty_crossings_neg_TCC1|✅ proved - incomplete|shostak|0.030|
|empty_key_arb_before_empty_crossings_neg|✅ proved - incomplete|shostak|0.335|
|empty_key_arb_no_crossings|✅ proved - incomplete|shostak|0.035|
|empty_key_arb_no_crossings_neg|✅ proved - incomplete|shostak|0.030|
|empty_key_arb_no_crossings_add|✅ proved - incomplete|shostak|0.095|
|card_add_crossing_set|✅ proved - incomplete|shostak|0.140|
|point_before_min_key_not_on|✅ proved - incomplete|shostak|0.085|
|point_before_min_neg_key_not_on|✅ proved - incomplete|shostak|0.100|
|bisect_vector_nonzero|✅ proved - incomplete|shostak|0.224|
|bisect_not_parallel_prev|✅ proved - incomplete|shostak|2.038|
|bisect_not_parallel_next|✅ proved - incomplete|shostak|1.282|
|counted_direction_not_parallel|✅ proved - incomplete|shostak|0.143|
|bisect_not_parallel_cross_nonzero_TCC1|✅ proved - incomplete|shostak|0.178|
|bisect_not_parallel_cross_nonzero|✅ proved - incomplete|shostak|10.538|
|key_arb_intersections_pos|✅ proved - incomplete|shostak|0.086|
|counted_key_arb_intersections_pos|✅ proved - incomplete|shostak|0.070|
|counted_key_arb_intersections_reverse_pos|✅ proved - incomplete|shostak|0.070|
|crossing_direction_counted|✅ proved - incomplete|shostak|0.120|
|crossing_direction_neg|✅ proved - incomplete|shostak|0.110|
|prev_point_ray_crossing_set|✅ proved - incomplete|shostak|0.326|
|later_point_ray_crossing_set|✅ proved - incomplete|shostak|0.288|
|empty_ray_intersection_sets|✅ proved - incomplete|shostak|0.054|
|parallel_intersections_pos|✅ proved - incomplete|shostak|0.090|
|min_all_intersections_key_TCC1|✅ proved - incomplete|shostak|0.040|
|min_all_intersections_key|✅ proved - incomplete|shostak|0.035|
|min_all_intersections_parallel_TCC1|✅ proved - incomplete|shostak|0.020|
|min_all_intersections_parallel|✅ proved - incomplete|shostak|0.050|
|all_intersections_pos|✅ proved - incomplete|shostak|0.195|
|nonempty_min_key_arb_intersections_TCC1|✅ proved - incomplete|shostak|0.020|
|nonempty_min_key_arb_intersections|✅ proved - incomplete|shostak|0.154|
|nonempty_min_parallel_intersections_TCC1|✅ proved - incomplete|shostak|0.020|
|nonempty_min_parallel_intersections|✅ proved - incomplete|shostak|0.155|
|no_parallel_intersections_not_on_segment|✅ proved - incomplete|shostak|3.031|
|empty_parallel_intersections_not_on|✅ proved - incomplete|shostak|0.000|
|empty_all_not_on_perimeter|✅ proved - incomplete|shostak|0.143|
|below_min_all_arb_not_on|✅ proved - incomplete|shostak|0.110|
|below_min_all_arb_not_on_neg|✅ proved - incomplete|shostak|0.182|

## `polygon_miter_sequences`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|rightward_crossing_index_TCC1|✅ proved - incomplete|shostak|0.070|
|rightward_crossing_index_reverse_TCC1|✅ proved - incomplete|shostak|0.020|
|rightward_crossing_index_reverse_TCC2|✅ proved - incomplete|shostak|0.014|
|rightward_crossing_index_reverse|✅ proved - incomplete|shostak|1.808|
|crossed_edge_rising_or_falling|✅ proved - incomplete|shostak|0.615|
|leftmost_intersection_on_crossed_edge|✅ proved - incomplete|shostak|0.596|
|crossing_within_falling_edge_y_range|✅ proved - incomplete|shostak|0.825|
|cross_horiz_seq_with_falling_edge_pos|✅ proved - incomplete|shostak|5.094|
|between_edges_at_falling_edge_vertex|✅ proved - incomplete|shostak|4.181|
|crossing_falling_off_right_side|✅ proved - incomplete|shostak|0.311|
|three_pt_miniseq_in_polygon|✅ proved - incomplete|shostak|0.108|
|four_pt_miniseq_in_polygon|✅ proved - incomplete|shostak|0.168|
|polygon_vertex_seq_single_loop_TCC1|✅ proved - incomplete|shostak|0.060|
|polygon_vertex_seq_single_loop_TCC2|✅ proved - incomplete|shostak|0.276|
|polygon_vertex_seq_single_loop|✅ proved - incomplete|shostak|0.265|
|polygon_vertex_seq_intercept_eq_0_TCC1|✅ proved - incomplete|shostak|0.295|
|polygon_vertex_seq_intercept_eq_0|✅ proved - incomplete|shostak|0.264|
|polygon_vertex_seq_TCC1|✅ proved - incomplete|shostak|1.360|
|polygon_vertex_seq_intercept|✅ proved - incomplete|shostak|0.291|
|min_seg_separation_eq_min_edge_separation|✅ proved - incomplete|shostak|5.023|
|max_miter_offset_lt_min_edge_sep|✅ proved - incomplete|shostak|0.563|
|three_pt_offset_dist_in_polygon_TCC1|✅ proved - incomplete|shostak|0.053|
|three_pt_offset_dist_in_polygon|✅ proved - incomplete|shostak|0.628|
|four_pt_offset_dist_in_polygon_TCC1|✅ proved - incomplete|shostak|0.090|
|four_pt_offset_dist_in_polygon|✅ proved - incomplete|shostak|1.341|
|polygon_miter_point_seq_element_TCC1|✅ proved - incomplete|shostak|0.281|
|polygon_miter_point_seq_element_TCC2|✅ proved - incomplete|shostak|0.254|
|polygon_miter_point_seq_element_TCC3|✅ proved - incomplete|shostak|0.070|
|polygon_miter_point_seq_element_TCC4|✅ proved - incomplete|shostak|0.060|
|polygon_miter_point_seq_element|✅ proved - incomplete|shostak|0.662|
|point_on_perim_iff_on_vertex_seq|✅ proved - incomplete|shostak|0.362|
|min_seg_sep_le_edge_length|✅ proved - incomplete|shostak|0.526|
|min_miter_sine_le_vertex_sine_TCC1|✅ proved - incomplete|shostak|0.080|
|min_miter_sine_le_vertex_sine_TCC2|✅ proved - incomplete|shostak|0.070|
|min_miter_sine_le_vertex_sine|✅ proved - incomplete|shostak|0.718|
|vertex_miter_point_TCC1|✅ proved - incomplete|shostak|0.033|
|vertex_miter_point_TCC2|✅ proved - incomplete|shostak|0.040|
|seg_from_miter_point_not_on_perim_TCC1|✅ proved - incomplete|shostak|0.787|
|seg_from_miter_point_not_on_perim|✅ proved - incomplete|shostak|21.748|
|miter_point_seqs_not_on_perim_TCC1|✅ proved - incomplete|shostak|0.100|
|miter_point_seqs_not_on_perim|✅ proved - incomplete|shostak|0.527|
|miter_point_in_polygon_miter_seg_seq|✅ proved - incomplete|shostak|1.820|
|miter_point_not_on_perim|✅ proved - incomplete|shostak|0.160|
|miter_point_dist_to_vertex_bound|✅ proved - incomplete|shostak|0.823|
|singleton_contact_free_path|✅ proved - incomplete|shostak|0.028|
|append_contact_free_paths_TCC1|✅ proved - incomplete|shostak|0.050|
|append_contact_free_paths_TCC2|✅ proved - incomplete|shostak|0.040|
|append_contact_free_paths|✅ proved - incomplete|shostak|0.060|
|append_contact_free_paths_excl|✅ proved - incomplete|shostak|0.068|
|polygon_miter_pt_seq_contact_free|✅ proved - incomplete|shostak|0.327|
|polygon_miter_pt_subseq_contact_free_TCC1|✅ proved - incomplete|shostak|0.844|
|polygon_miter_pt_subseq_contact_free|✅ proved - incomplete|shostak|0.631|
|polygon_miter_pt_subseq_pair_contact_free_TCC1|✅ proved - incomplete|shostak|0.549|
|polygon_miter_pt_subseq_pair_contact_free_TCC2|✅ proved - incomplete|shostak|0.712|
|polygon_miter_pt_subseq_pair_contact_free|✅ proved - incomplete|shostak|2.235|
|below_left_falling_seg_point_right_TCC1|✅ proved - complete|shostak|0.030|
|below_left_falling_seg_point_right|✅ proved - incomplete|shostak|1.485|
|above_left_falling_seg_point_right_TCC1|✅ proved - complete|shostak|0.030|
|above_left_falling_seg_point_right_TCC2|✅ proved - complete|shostak|0.030|
|above_left_falling_seg_point_right|✅ proved - incomplete|shostak|0.229|
|on_seg_from_miter_pt_to_endpoint_TCC1|✅ proved - incomplete|shostak|0.140|
|on_seg_from_miter_pt_to_endpoint_TCC2|✅ proved - incomplete|shostak|0.224|
|on_seg_from_miter_pt_to_endpoint_TCC3|✅ proved - incomplete|shostak|0.108|
|on_seg_from_miter_pt_to_endpoint_TCC4|✅ proved - incomplete|shostak|0.203|
|on_seg_from_miter_pt_to_endpoint|✅ proved - incomplete|shostak|14.946|
|on_seg_from_miter_pt_contact_free_TCC1|✅ proved - incomplete|shostak|0.131|
|on_seg_from_miter_pt_contact_free_TCC2|✅ proved - incomplete|shostak|0.069|
|on_seg_from_miter_pt_contact_free|✅ proved - incomplete|shostak|5.154|
|vertex_to_miter_pt_seq_contact_free_TCC1|✅ proved - incomplete|shostak|0.140|
|vertex_to_miter_pt_seq_contact_free_TCC2|✅ proved - incomplete|shostak|0.060|
|vertex_to_miter_pt_seq_contact_free|✅ proved - incomplete|shostak|18.150|
|next_vtx_to_miter_pt_subcase_zero_TCC1|✅ proved - incomplete|shostak|0.434|
|next_vtx_to_miter_pt_subcase_zero_TCC2|✅ proved - incomplete|shostak|0.110|
|next_vtx_to_miter_pt_subcase_zero_TCC3|✅ proved - incomplete|shostak|0.224|
|next_vtx_to_miter_pt_subcase_zero|✅ proved - incomplete|shostak|13.708|
|next_vtx_to_miter_pt_subcase_TCC1|✅ proved - incomplete|shostak|0.070|
|next_vtx_to_miter_pt_subcase_TCC2|✅ proved - incomplete|shostak|0.098|
|next_vtx_to_miter_pt_subcase_TCC3|✅ proved - incomplete|shostak|0.930|
|next_vtx_to_miter_pt_subcase|✅ proved - incomplete|shostak|1.449|
|next_vtx_to_miter_pt_seq_contact_free_TCC1|✅ proved - incomplete|shostak|0.136|
|next_vtx_to_miter_pt_seq_contact_free_TCC2|✅ proved - incomplete|shostak|0.160|
|next_vtx_to_miter_pt_seq_contact_free|✅ proved - incomplete|shostak|15.942|
|nonvertex_to_miter_pt_seq_contact_free_TCC1|✅ proved - incomplete|shostak|0.134|
|nonvertex_to_miter_pt_seq_contact_free_TCC2|✅ proved - incomplete|shostak|0.064|
|nonvertex_to_miter_pt_seq_contact_free|✅ proved - incomplete|shostak|2.191|
|rightward_crossing_falling_edge_cases|✅ proved - incomplete|shostak|1.099|
|path_to_miter_pt_seq_contact_free_TCC1|✅ proved - incomplete|shostak|0.140|
|path_to_miter_pt_seq_contact_free_TCC2|✅ proved - incomplete|shostak|0.061|
|path_to_miter_pt_seq_contact_free|✅ proved - incomplete|shostak|7.217|

## `polygon_membership`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|serpentine_ray_TCC1|✅ proved - incomplete|shostak|0.040|
|serpentine_ray_TCC2|✅ proved - incomplete|shostak|0.061|
|serp_ray_outside?_TCC1|✅ proved - incomplete|shostak|0.040|
|serp_ray_outside?_TCC2|✅ proved - incomplete|shostak|0.060|
|serp_ray_outside?_TCC3|✅ proved - incomplete|shostak|0.080|
|serp_ray_outside?_TCC4|✅ proved - incomplete|shostak|0.043|
|point_outside_polygon?_TCC1|✅ proved - incomplete|shostak|0.040|
|perimeter_not_outside|✅ proved - incomplete|shostak|0.120|
|point_on_serp_ray?_TCC1|✅ proved - incomplete|shostak|0.045|
|downstream_point_outside|✅ proved - incomplete|shostak|1.982|
|pt_inside_imp_inside_rev_polygon_TCC1|✅ proved - incomplete|shostak|0.020|
|pt_inside_imp_inside_rev_polygon|✅ proved - incomplete|shostak|0.635|
|pt_inside_eqv_inside_rev_polygon_TCC1|✅ proved - incomplete|shostak|0.020|
|pt_inside_eqv_inside_rev_polygon|✅ proved - incomplete|shostak|0.040|
|pt_outside_eqv_outside_rev_polygon|✅ proved - incomplete|shostak|0.192|
|prev_edge_not_crossed_by_perp_left_segment_TCC1|✅ proved - incomplete|shostak|0.030|
|prev_edge_not_crossed_by_perp_left_segment|✅ proved - incomplete|shostak|2.914|
|prev_edge_not_crossed_by_perp_right_segment_TCC1|✅ proved - incomplete|shostak|0.020|
|prev_edge_not_crossed_by_perp_right_segment|✅ proved - incomplete|shostak|3.010|
|next_edge_not_crossed_by_perp_left_segment_TCC1|✅ proved - incomplete|shostak|0.030|
|next_edge_not_crossed_by_perp_left_segment|✅ proved - incomplete|shostak|3.234|
|next_edge_not_crossed_by_perp_right_segment_TCC1|✅ proved - incomplete|shostak|0.030|
|next_edge_not_crossed_by_perp_right_segment|✅ proved - incomplete|shostak|3.481|
|nearby_perp_right_segment_not_on_perim_TCC1|✅ proved - incomplete|shostak|0.030|
|nearby_perp_right_segment_not_on_perim|✅ proved - incomplete|shostak|3.332|
|nearby_perp_left_segment_not_on_perim_TCC1|✅ proved - incomplete|shostak|0.030|
|nearby_perp_left_segment_not_on_perim|✅ proved - incomplete|shostak|0.003|
|rightward_offset_pt_not_on_perim|✅ proved - incomplete|shostak|0.289|
|leftward_offset_pt_not_on_perim|✅ proved - incomplete|shostak|0.293|
|on_perimeter_edge_path?_TCC1|✅ proved - incomplete|shostak|0.267|
|on_perimeter_vertex_path?_TCC1|✅ proved - incomplete|shostak|0.256|
|perimeter_segment_path_TCC1|✅ proved - incomplete|shostak|0.070|
|perimeter_segment_path_TCC2|✅ proved - incomplete|shostak|13.938|
|perimeter_segment_path_TCC3|✅ proved - incomplete|shostak|0.187|
|perimeter_segment_path_TCC4|✅ proved - incomplete|shostak|0.266|
|perimeter_segment_path_TCC5|✅ proved - incomplete|shostak|0.175|
|perimeter_segment_path_TCC6|✅ proved - incomplete|shostak|2.253|
|initial_point_perimeter_segment_path_TCC1|✅ proved - incomplete|shostak|0.040|
|initial_point_perimeter_segment_path|✅ proved - incomplete|shostak|0.582|
|final_point_perimeter_segment_path_TCC1|✅ proved - incomplete|shostak|0.060|
|final_point_perimeter_segment_path|✅ proved - incomplete|shostak|1.294|
|perim_segment_path_on_perim|✅ proved - incomplete|shostak|3.921|
|append_path_to_s_ray_TCC1|✅ proved - incomplete|shostak|0.060|
|append_path_to_s_ray_TCC2|✅ proved - incomplete|shostak|0.050|
|append_path_to_s_ray_TCC3|✅ proved - incomplete|shostak|0.035|
|append_path_to_s_ray_TCC4|✅ proved - incomplete|shostak|0.050|
|append_path_to_s_ray_TCC5|✅ proved - incomplete|shostak|0.613|
|truncated_serp_ray_TCC1|✅ proved - incomplete|shostak|0.046|
|truncated_serp_ray_TCC2|✅ proved - incomplete|shostak|0.303|
|truncated_serp_ray_TCC3|✅ proved - incomplete|shostak|0.312|
|truncated_serp_ray_TCC4|✅ proved - incomplete|shostak|0.402|
|truncated_serp_ray_TCC5|✅ proved - incomplete|shostak|0.150|
|truncated_serp_ray_TCC6|✅ proved - incomplete|shostak|0.275|
|truncated_serp_ray_TCC7|✅ proved - incomplete|shostak|0.314|
|truncated_serp_ray_TCC8|✅ proved - incomplete|shostak|1.858|
|initial_point_append_path_to_s_ray_TCC1|✅ proved - incomplete|shostak|0.060|
|initial_point_append_path_to_s_ray_TCC2|✅ proved - incomplete|shostak|0.051|
|initial_point_append_path_to_s_ray|✅ proved - incomplete|shostak|0.180|
|append_outside_seq_to_s_ray|✅ proved - incomplete|shostak|1.241|
|initial_point_of_truncated_s_ray_TCC1|✅ proved - incomplete|shostak|0.043|
|initial_point_of_truncated_s_ray|✅ proved - incomplete|shostak|0.333|
|point_on_truncated_s_ray_on_s_ray|✅ proved - incomplete|shostak|1.044|
|truncated_s_ray_outside|✅ proved - incomplete|shostak|0.050|
|point_in_polygon_conds_equiv_horiz_TCC1|✅ proved - incomplete|shostak|0.030|
|point_in_polygon_conds_equiv_horiz|✅ proved - incomplete|shostak|4.092|
|extend_points_inside_polygon|✅ proved - incomplete|shostak|0.769|
|extend_points_inside_polygon_excl|✅ proved - incomplete|shostak|0.783|
|extend_points_outside_polygon|✅ proved - incomplete|shostak|0.209|
|extend_points_outside_polygon_excl|✅ proved - incomplete|shostak|1.317|
|point_out_pts_on_non_perim_path_out_TCC1|✅ proved - incomplete|shostak|0.040|
|point_out_pts_on_non_perim_path_out|✅ proved - incomplete|shostak|1.016|
|point_in_pts_on_non_perim_path_in_TCC1|✅ proved - incomplete|shostak|0.030|
|point_in_pts_on_non_perim_path_in|✅ proved - incomplete|shostak|0.961|
|topleft_miter_point_in_or_out_TCC1|✅ proved - incomplete|shostak|0.104|
|topleft_miter_point_in_or_out_TCC2|✅ proved - incomplete|shostak|0.070|
|topleft_miter_point_in_or_out|✅ proved - incomplete|shostak|3.722|
|polygon_miter_sequence_in_or_out_TCC1|✅ proved - incomplete|shostak|0.110|
|polygon_miter_sequence_in_or_out|✅ proved - incomplete|shostak|7.375|
|falling_edge_imp_ccw_in_or_out|✅ proved - incomplete|shostak|0.730|
|ccw_imp_falling_edge_in_or_out|✅ proved - incomplete|shostak|1.239|
|point_in_has_rightward_crossings|✅ proved - incomplete|shostak|1.107|
|point_outside_imp_not_inside|✅ proved - incomplete|shostak|1.931|
|point_outside_imp_not_in|✅ proved - incomplete|shostak|0.061|
|point_not_in_imp_outside|✅ proved - incomplete|shostak|1.145|
|point_out_not_in|✅ proved - incomplete|shostak|0.030|
|same_perim_pts_imp_same_exterior_pts|✅ proved - incomplete|shostak|0.180|
|same_perim_pts_imp_same_interior_pts|✅ proved - incomplete|shostak|0.050|
|falling_edge_ccw_in_or_out|✅ proved - incomplete|shostak|0.393|
|ccw_falling_edge_in_or_out|✅ proved - incomplete|shostak|0.536|
|nearest_rightward_crossing_in_or_out|✅ proved - incomplete|shostak|0.060|
|point_in_has_inside_segments_TCC1|✅ proved - incomplete|shostak|0.047|
|point_in_has_inside_segments|✅ proved - incomplete|shostak|7.737|
|point_outside_not_in_polygon_arb|✅ proved - incomplete|shostak|0.020|
|point_outside_not_in_polygon_arb_neg|✅ proved - incomplete|shostak|0.020|
|left_right_midpoints_in_out|✅ proved - incomplete|shostak|1.988|
|right_left_midpoints_in_out|✅ proved - incomplete|shostak|5.280|
|left_right_midpoints_out_in|✅ proved - incomplete|shostak|5.303|
|right_left_midpoints_out_in|✅ proved - incomplete|shostak|5.316|
|counted_crossing_direction_exists|✅ proved - incomplete|shostak|0.979|
|free_ray_point_outside|✅ proved - incomplete|shostak|0.168|
|only_parallel_ray_point_outside|✅ proved - incomplete|shostak|0.113|
|one_dir_empty_intersections_TCC1|✅ proved - incomplete|shostak|0.030|
|one_dir_empty_intersections|✅ proved - incomplete|shostak|0.418|
|one_dir_empty_point_outside|✅ proved - incomplete|shostak|0.275|
|one_dir_out_other_in_polygon|✅ proved - incomplete|shostak|0.344|
|opposite_sides_of_crossing_arb|✅ proved - incomplete|shostak|0.378|
|nearby_point_outside_exists_either|✅ proved - incomplete|shostak|1.466|
|nearby_point_outside_exists|✅ proved - incomplete|shostak|0.120|
|nearby_point_in_polygon_TCC1|✅ proved - incomplete|shostak|0.071|
|nearby_point_in_polygon|✅ proved - incomplete|shostak|0.118|
|A_perim_outside_imp_B_perim_inside|✅ proved - incomplete|shostak|0.331|
|overlap_imp_inside_pt_on_perim|✅ proved - incomplete|shostak|0.163|
|outside_C_inside_A|✅ proved - incomplete|shostak|0.636|
|container_edges_not_inside|✅ proved - incomplete|shostak|0.433|
|contained_not_on_perimeter|✅ proved - incomplete|shostak|0.034|
|contained_membership|✅ proved - incomplete|shostak|0.185|
|contained_membership_cor|✅ proved - incomplete|shostak|0.044|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib/pvsio_utils/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230712-static-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230710-tcc-gen.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230707-defattach.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230706-extrategies.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`|
