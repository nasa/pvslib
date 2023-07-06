# Summary for `polygons`
Run started at 7:52:0 7/4/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **566**   | **566**    | **566**    | **0**  | **7:23.164 s**   |
|top|0|0|0|0|0.000|
|polygons_2d|143|143|143|0|1:24.107|
|topleft_vertex|23|23|23|0|5.289|
|polygon_attributes|31|31|31|0|22.875|
|rightward_crossings|20|20|20|0|13.726|
|reverse_polygons|38|38|38|0|20.550|
|horiz_edge_crossing|41|41|41|0|30.539|
|arb_direc_edge_crossing|64|64|64|0|32.427|
|polygon_miter_sequences|89|89|89|0|2:7.539|
|polygon_membership|117|117|117|0|1:46.112|
## Detailed Summary 
## `top`
No formula declaration found.
## `polygons_2d`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|prev_index_TCC1|✅ proved - incomplete|shostak|0.170|
|prev_index_TCC2|✅ proved - incomplete|shostak|0.030|
|next_index_TCC1|✅ proved - incomplete|shostak|0.030|
|next_index_TCC2|✅ proved - incomplete|shostak|0.040|
|prev_next_is_original|✅ proved - incomplete|shostak|0.040|
|next_prev_is_original|✅ proved - incomplete|shostak|0.020|
|rem_diff_eq_0|✅ proved - complete|shostak|0.218|
|rem_diff_eq_0_shift|✅ proved - complete|shostak|0.218|
|rem_add1_eq_next_index|✅ proved - incomplete|shostak|0.271|
|rem_sum3|✅ proved - complete|shostak|0.160|
|vertex_is_vertex|✅ proved - incomplete|shostak|0.030|
|vertex_is_not_nonvertex|✅ proved - incomplete|shostak|0.030|
|edges_of_polygon_TCC1|✅ proved - incomplete|shostak|0.094|
|edge_is_edge|✅ proved - incomplete|shostak|0.040|
|find_helper_TCC1|✅ proved - incomplete|shostak|0.030|
|find_helper_TCC2|✅ proved - incomplete|shostak|0.030|
|find_helper_TCC3|✅ proved - incomplete|shostak|0.025|
|find_helper_TCC4|✅ proved - incomplete|shostak|0.030|
|find_helper_TCC5|✅ proved - incomplete|shostak|0.040|
|find_helper_TCC6|✅ proved - incomplete|shostak|0.050|
|find_helper_invariant_TCC1|✅ proved - incomplete|shostak|0.046|
|find_helper_invariant_TCC2|✅ proved - incomplete|shostak|0.060|
|find_helper_invariant|✅ proved - incomplete|shostak|0.320|
|find_index_TCC1|✅ proved - incomplete|shostak|0.010|
|find_index_TCC2|✅ proved - incomplete|shostak|0.080|
|next_index_distinct|✅ proved - incomplete|shostak|0.036|
|vertex_find_helper_TCC1|✅ proved - incomplete|shostak|0.030|
|vertex_find_helper|✅ proved - incomplete|shostak|0.130|
|vertex_find_index|✅ proved - incomplete|shostak|0.036|
|find_helper_self_TCC1|✅ proved - incomplete|shostak|0.020|
|find_helper_self_TCC2|✅ proved - incomplete|shostak|0.030|
|find_helper_self|✅ proved - incomplete|shostak|0.265|
|find_index_self_TCC1|✅ proved - incomplete|shostak|0.040|
|find_index_self|✅ proved - incomplete|shostak|0.040|
|find_index_self_index|✅ proved - incomplete|shostak|0.065|
|segment_in_edges_TCC1|✅ proved - incomplete|shostak|0.100|
|segment_in_edges|✅ proved - incomplete|shostak|0.070|
|edge_segment_has_vertices|✅ proved - incomplete|shostak|0.036|
|find_index_segment_is_edge|✅ proved - incomplete|shostak|0.040|
|vertex_neq_next|✅ proved - incomplete|shostak|0.080|
|vertex_neq_next_2|✅ proved - incomplete|shostak|0.030|
|vertex_neq_prev|✅ proved - incomplete|shostak|0.056|
|vertex_neq_prev_2|✅ proved - incomplete|shostak|0.020|
|prev_vertex_neq_next_vertex|✅ proved - incomplete|shostak|0.100|
|vertices_diff_next_nonzero|✅ proved - incomplete|shostak|0.020|
|vertices_diff_prev_nonzero|✅ proved - incomplete|shostak|0.030|
|second_edge_does_not_double_back_TCC1|✅ proved - incomplete|shostak|0.036|
|second_edge_does_not_double_back_TCC2|✅ proved - incomplete|shostak|0.100|
|second_edge_does_not_double_back|✅ proved - incomplete|shostak|0.196|
|vertex_on_edge|✅ proved - incomplete|shostak|0.020|
|next_vertex_on_edge|✅ proved - incomplete|shostak|0.026|
|vertex_on_prev_edge|✅ proved - incomplete|shostak|0.070|
|norm_vertex_diff_next_pos|✅ proved - incomplete|shostak|0.040|
|norm_vertex_diff_prev_pos|✅ proved - incomplete|shostak|0.050|
|two_adjacent_edges_TCC1|✅ proved - incomplete|shostak|0.066|
|two_adjacent_edges_TCC2|✅ proved - incomplete|shostak|0.090|
|two_adjacent_edges|✅ proved - incomplete|shostak|0.095|
|same_edge_equiv_same_points|✅ proved - incomplete|shostak|0.529|
|rem_plus_1_eq_next_index|✅ proved - incomplete|shostak|0.392|
|rem_minus_1_eq_prev_index|✅ proved - incomplete|shostak|0.125|
|rem_plus_1_eq_next_index_2|✅ proved - incomplete|shostak|0.270|
|equal_or_adjacent_edge_reflexive|✅ proved - complete|shostak|0.020|
|equal_or_adjacent_edge_symmetric|✅ proved - complete|shostak|0.167|
|equal_or_adjacent_edge_not_transitive|✅ proved - complete|shostak|0.055|
|adj_edges_share_vertex|✅ proved - incomplete|shostak|0.200|
|short_antenna_edge_midpoint_on_longer_edge|✅ proved - incomplete|shostak|4.888|
|short_antenna_edge_midpoint_not_endpoint|✅ proved - incomplete|shostak|0.542|
|antenna_edges_share_many_points|✅ proved - incomplete|shostak|30.715|
|only_common_point_is_vertex_means_equal_or_adjacent|✅ proved - incomplete|shostak|3.671|
|common_pt_on_adj_edges_must_be_vertex_unless_antenna|✅ proved - incomplete|shostak|6.018|
|polygon_edges_do_not_cross_defs_eq|✅ proved - incomplete|shostak|0.902|
|example_right_triangle_TCC1|✅ proved - complete|shostak|0.070|
|simple_polygon_2d_TCC1|✅ proved - incomplete|shostak|1.751|
|example_diamond_TCC1|✅ proved - complete|shostak|0.114|
|example_diamond_TCC2|✅ proved - incomplete|shostak|3.603|
|next_edge_shares_only_vertex|✅ proved - incomplete|shostak|0.807|
|prev_edge_shares_only_vertex|✅ proved - incomplete|shostak|0.479|
|adjacent_edges_share_only_vertex|✅ proved - incomplete|shostak|0.363|
|next_edge_not_dir_parallel|✅ proved - incomplete|shostak|1.097|
|prev_edge_not_dir_parallel|✅ proved - incomplete|shostak|1.177|
|adjacent_edges_not_dir_parallel|✅ proved - incomplete|shostak|0.341|
|prev_vertex_not_on_ray_of_edge_TCC1|✅ proved - incomplete|shostak|0.030|
|prev_vertex_not_on_ray_of_edge|✅ proved - incomplete|shostak|0.489|
|only_adjacent_edges_intersect|✅ proved - incomplete|shostak|1.464|
|adjacent_edges_do_not_fold_back|✅ proved - incomplete|shostak|0.090|
|points_on_distinct_edges_differ|✅ proved - incomplete|shostak|0.130|
|edge_x_left_or_right_imp_cross_neq_0|✅ proved - incomplete|shostak|0.948|
|edge_y_above_or_below_imp_cross_neq_0|✅ proved - incomplete|shostak|0.946|
|shared_endpoints_imp_same_edge|✅ proved - incomplete|shostak|0.445|
|same_polygon_edge_overlaps_equal|✅ proved - incomplete|shostak|0.590|
|interior_point_is_nonvertex|✅ proved - incomplete|shostak|2.159|
|nonvertex_on_one_edge|✅ proved - incomplete|shostak|0.209|
|vertex_is_segment_endpoint|✅ proved - incomplete|shostak|0.082|
|vertex_is_edge_endpoint|✅ proved - incomplete|shostak|0.180|
|vertex_on_two_edges|✅ proved - incomplete|shostak|0.088|
|is_point_in_polygon_recursive?_TCC1|✅ proved - incomplete|shostak|0.030|
|is_point_in_polygon_recursive?_TCC2|✅ proved - incomplete|shostak|0.030|
|is_point_in_polygon_recursive_negation|✅ proved - incomplete|shostak|0.441|
|is_point_in_polygon_inclusive?_TCC1|✅ proved - incomplete|shostak|0.019|
|center_of_diamond_is_inside|✅ proved - incomplete|shostak|1.101|
|outside_left_of_diamond_is_outside|✅ proved - incomplete|shostak|0.462|
|above_center_of_diamond_is_inside|✅ proved - incomplete|shostak|1.435|
|above_outside_left_of_diamond_is_outside|✅ proved - incomplete|shostak|0.516|
|way_above_diamond_is_outside|✅ proved - incomplete|shostak|0.456|
|polygons_are_inside_themselves|✅ proved - incomplete|shostak|0.551|
|insert_vertex_TCC1|✅ proved - incomplete|shostak|0.060|
|insert_vertex_TCC2|✅ proved - incomplete|shostak|0.027|
|insert_vertex_TCC3|✅ proved - incomplete|shostak|0.030|
|insert_vertex_TCC4|✅ proved - incomplete|shostak|0.060|
|insert_vertex_TCC5|✅ proved - incomplete|shostak|0.451|
|insert_vertex_TCC6|✅ proved - incomplete|shostak|0.060|
|insert_vertex_seq_TCC1|✅ proved - incomplete|shostak|0.030|
|insert_vertex_seq_TCC2|✅ proved - incomplete|shostak|0.026|
|insert_vertex_seq_TCC3|✅ proved - incomplete|shostak|0.030|
|insert_vertex_seq_TCC4|✅ proved - incomplete|shostak|0.090|
|insert_vertex_seq_TCC5|✅ proved - incomplete|shostak|0.096|
|insert_vertex_seq_TCC6|✅ proved - incomplete|shostak|0.050|
|insert_vertex_seq_TCC7|✅ proved - incomplete|shostak|0.136|
|insert_vertex_seq_TCC8|✅ proved - incomplete|shostak|0.030|
|insert_vertex_seq_TCC9|✅ proved - incomplete|shostak|0.154|
|polygon_segment_is_not_outside_inclusive|✅ proved - incomplete|shostak|0.966|
|polygon_segment_is_outside_exclusive|✅ proved - incomplete|shostak|0.030|
|polygon_segment_is_inside_inclusive|✅ proved - incomplete|shostak|0.020|
|polygon_segment_is_not_inside_exclusive|✅ proved - incomplete|shostak|0.952|
|path_outside_inclusive?_TCC1|✅ proved - incomplete|shostak|0.030|
|path_outside_inclusive?_TCC2|✅ proved - incomplete|shostak|0.050|
|path_outside_inclusive?_TCC3|✅ proved - incomplete|shostak|0.090|
|point_on_polygon_perimeter?_eq_is_point_on_polygon_perimeter?|✅ proved - incomplete|shostak|0.027|
|find_index_any_rec_TCC1|✅ proved - incomplete|shostak|0.040|
|find_index_any_rec_TCC2|✅ proved - incomplete|shostak|0.050|
|find_index_any_rec_TCC3|✅ proved - incomplete|shostak|0.050|
|find_index_any_TCC1|✅ proved - incomplete|shostak|0.036|
|perimeter_find_index_any|✅ proved - incomplete|shostak|0.000|
|point_on_find_index_segment_TCC1|✅ proved - incomplete|shostak|0.030|
|point_on_find_index_segment|✅ proved - incomplete|shostak|0.286|
|find_index_any_segment_rec_TCC1|✅ proved - incomplete|shostak|0.030|
|find_index_any_segment_rec|✅ proved - incomplete|shostak|3.597|
|find_index_any_segment|✅ proved - incomplete|shostak|0.064|
|find_index_any_self|✅ proved - incomplete|shostak|0.030|
|point_on_segment_rem_endpoints_TCC1|✅ proved - incomplete|shostak|0.183|
|point_on_segment_rem_endpoints|✅ proved - incomplete|shostak|0.482|
|point_on_segment_rem_endpoints_2_TCC1|✅ proved - incomplete|shostak|0.152|
|point_on_segment_rem_endpoints_2|✅ proved - incomplete|shostak|0.220|

## `topleft_vertex`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|leftmost_vertex_val_TCC1|✅ proved - incomplete|shostak|0.032|
|exists_leftmost_vertex_val|✅ proved - incomplete|shostak|0.070|
|leftmost_vertex_val_is_min|✅ proved - incomplete|shostak|0.080|
|at_least_one_leftmost|✅ proved - incomplete|shostak|0.040|
|topleft_vertex_val_TCC1|✅ proved - incomplete|shostak|0.034|
|topleft_vertex_val_is_max|✅ proved - incomplete|shostak|0.070|
|topleft_vertex_idx_TCC1|✅ proved - incomplete|shostak|0.333|
|leftmost_is_topleft_x|✅ proved - incomplete|shostak|0.030|
|leftmost_has_min_x|✅ proved - incomplete|shostak|0.040|
|topmost_is_topleft_y|✅ proved - incomplete|shostak|0.030|
|topmost_has_max_y|✅ proved - incomplete|shostak|0.046|
|leftmost_xval_le_segment|✅ proved - incomplete|shostak|0.120|
|leftmost_xval_lt_segment|✅ proved - incomplete|shostak|0.127|
|leftmost_xval_lt_segment_eq|✅ proved - incomplete|shostak|0.243|
|leftmost_vtx_val_le_any_perim_point|✅ proved - incomplete|shostak|0.050|
|topmost_yval_ge_segment|✅ proved - incomplete|shostak|0.120|
|topmost_yval_gt_segment|✅ proved - incomplete|shostak|0.116|
|topleft_vertex_bounds_vertices|✅ proved - incomplete|shostak|0.114|
|topleft_vertex_bounds_all_points|✅ proved - incomplete|shostak|0.577|
|min_vertex_yval_TCC1|✅ proved - incomplete|shostak|0.040|
|not_all_vertices_collinear_horiz|✅ proved - incomplete|shostak|0.509|
|falling_edge_exists|✅ proved - incomplete|shostak|1.251|
|rising_edge_exists|✅ proved - incomplete|shostak|1.217|

## `polygon_attributes`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|min_edge_sep_vertex_TCC1|✅ proved - incomplete|shostak|0.033|
|min_edge_sep_vertex_TCC2|✅ proved - incomplete|shostak|0.090|
|min_edge_sep_vertex_TCC3|✅ proved - incomplete|shostak|0.178|
|min_edge_sep_vertex_TCC4|✅ proved - incomplete|shostak|0.191|
|min_edge_separation_TCC1|✅ proved - incomplete|shostak|0.036|
|min_edge_separation_TCC2|✅ proved - incomplete|shostak|0.080|
|min_edge_sep_vertex_le_dist_to_vtx|✅ proved - incomplete|shostak|3.172|
|min_edge_separation_is_min|✅ proved - incomplete|shostak|0.462|
|min_edge_sep_TCC1|✅ proved - incomplete|shostak|3.392|
|min_edge_sep_le_min_edge_separation|✅ proved - incomplete|shostak|0.827|
|separation_distance_bounds_edge_length|✅ proved - incomplete|shostak|6.212|
|min_edge_sep_all_points|✅ proved - incomplete|shostak|0.566|
|sines_of_edge_angles_TCC1|✅ proved - incomplete|shostak|0.045|
|sines_of_edge_angles_TCC2|✅ proved - incomplete|shostak|0.030|
|sines_of_edge_angles_nonempty|✅ proved - incomplete|shostak|0.194|
|min_edge_angle_sine_TCC1|✅ proved - incomplete|shostak|0.020|
|min_edge_angle_sine_TCC2|✅ proved - incomplete|shostak|0.665|
|edge_angle_sine_sq_bound|✅ proved - incomplete|shostak|0.120|
|sines_of_inward_edge_angles_TCC1|✅ proved - incomplete|shostak|0.030|
|sines_of_inward_edge_angles_TCC2|✅ proved - incomplete|shostak|0.040|
|sines_of_inward_edge_angles_nonempty|✅ proved - incomplete|shostak|0.204|
|min_inward_edge_angle_sine_TCC1|✅ proved - incomplete|shostak|0.020|
|min_inward_edge_angle_sine_TCC2|✅ proved - incomplete|shostak|0.627|
|in_out_offset_lt_min_edge_sep|✅ proved - incomplete|shostak|0.760|
|ccw_imp_cross_topleft_edges_neg|✅ proved - incomplete|shostak|1.313|
|cross_topleft_edges_neg_imp_ccw|✅ proved - incomplete|shostak|1.494|
|ccw_eqv_cross_topleft_edges_neg|✅ proved - incomplete|shostak|0.356|
|nearby_pt_between_edges_not_on_perim|✅ proved - incomplete|shostak|1.412|
|miter_point_between_edges_TCC1|✅ proved - incomplete|shostak|0.030|
|miter_point_between_edges_TCC2|✅ proved - incomplete|shostak|0.090|
|miter_point_between_edges|✅ proved - incomplete|shostak|0.186|

## `rightward_crossings`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|edge_crossing_point_TCC1|✅ proved - complete|shostak|0.030|
|rightward_crossing_set_nonempty|✅ proved - incomplete|shostak|0.040|
|leftmost_crossing_xval_TCC1|✅ proved - incomplete|shostak|0.020|
|edge_crossing_point_on_perim|✅ proved - incomplete|shostak|0.693|
|leftmost_crossing_on_perim|✅ proved - incomplete|shostak|0.516|
|edge_crossing_point_xval_bound|✅ proved - incomplete|shostak|1.546|
|leftmost_crossing_xval_bound|✅ proved - incomplete|shostak|0.100|
|leftmost_crossing_xval_is_min|✅ proved - incomplete|shostak|0.090|
|leftmost_has_horiz_dist_from_p|✅ proved - incomplete|shostak|0.191|
|has_crossing_off_right_side_falling|✅ proved - incomplete|shostak|1.145|
|no_point_x_left_of_leftmost_crossing_TCC1|✅ proved - incomplete|shostak|0.031|
|no_point_x_left_of_leftmost_crossing|✅ proved - incomplete|shostak|1.296|
|no_edge_point_left_of_leftmost_crossing|✅ proved - incomplete|shostak|0.758|
|left_of_leftmost_crossing_not_on_perim_TCC1|✅ proved - incomplete|shostak|0.030|
|left_of_leftmost_crossing_not_on_perim|✅ proved - incomplete|shostak|4.169|
|left_of_leftmost_crossing_not_on_perim_2|✅ proved - incomplete|shostak|1.126|
|leftmost_crossing_on_polygon_edge|✅ proved - incomplete|shostak|0.100|
|leftmost_is_horiz_edge_endpoint|✅ proved - incomplete|shostak|0.883|
|left_of_leftmost_not_on_perim_edge|✅ proved - incomplete|shostak|0.000|
|only_one_edge_adj_leftmost_is_horiz|✅ proved - incomplete|shostak|0.962|

## `reverse_polygons`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|rev_polygon_index_TCC1|✅ proved - incomplete|shostak|0.030|
|rev_polygon_index_TCC2|✅ proved - incomplete|shostak|0.040|
|reverse_polygon_TCC1|✅ proved - incomplete|shostak|0.080|
|rev_polygon_index_reverse_TCC1|✅ proved - incomplete|shostak|0.040|
|rev_polygon_index_reverse|✅ proved - incomplete|shostak|0.040|
|rev_rev_polygon_index|✅ proved - incomplete|shostak|0.040|
|reverse_reverse_polygon|✅ proved - incomplete|shostak|0.155|
|reverse_vertex_rev_index_TCC1|✅ proved - incomplete|shostak|0.040|
|reverse_vertex_rev_index|✅ proved - incomplete|shostak|0.050|
|prev_index_rev_index_next|✅ proved - incomplete|shostak|0.119|
|prev_index_of_reverse|✅ proved - incomplete|shostak|0.110|
|next_index_rev_index_prev|✅ proved - incomplete|shostak|0.140|
|next_index_of_reverse|✅ proved - incomplete|shostak|0.113|
|edges_of_reverse_polygon|✅ proved - incomplete|shostak|0.150|
|point_on_edge_of_rev_polygon|✅ proved - incomplete|shostak|0.050|
|edge_of_rev_polygon_rev_segment|✅ proved - incomplete|shostak|0.244|
|edge_of_rev_polygon_imp_edge_rev_seg|✅ proved - incomplete|shostak|0.195|
|rev_polygon_edge_is_rev_segment|✅ proved - incomplete|shostak|0.170|
|on_rev_perim_eqv_on_perim|✅ proved - incomplete|shostak|0.693|
|reverse_polygon_is_simple|✅ proved - incomplete|shostak|0.213|
|topleft_index_of_reverse|✅ proved - incomplete|shostak|0.407|
|topleft_vertex_of_reverse_is_same|✅ proved - incomplete|shostak|0.040|
|find_index_any_reverse|✅ proved - incomplete|shostak|0.185|
|find_index_any_vertex_reverse|✅ proved - incomplete|shostak|0.234|
|ccw_reverse_polygon|✅ proved - incomplete|shostak|4.002|
|ccw_miter_pt_left_of_topleft_vtx_TCC1|✅ proved - incomplete|shostak|0.040|
|ccw_miter_pt_left_of_topleft_vtx_TCC2|✅ proved - incomplete|shostak|0.080|
|ccw_miter_pt_left_of_topleft_vtx|✅ proved - incomplete|shostak|8.432|
|segment_falling_reverse_rising_TCC1|✅ proved - incomplete|shostak|0.578|
|segment_falling_reverse_rising|✅ proved - incomplete|shostak|0.230|
|segment_falling_reverse_image_TCC1|✅ proved - incomplete|shostak|0.573|
|segment_falling_reverse_image|✅ proved - incomplete|shostak|0.240|
|reverse_seg_rightward_edge_crossing|✅ proved - incomplete|shostak|0.053|
|reverse_has_rightward_crossings|✅ proved - incomplete|shostak|1.254|
|edge_crossing_point_same_in_reverse_TCC1|✅ proved - incomplete|shostak|0.010|
|edge_crossing_point_same_in_reverse|✅ proved - incomplete|shostak|1.101|
|leftmost_crossing_same_in_reverse_TCC1|✅ proved - incomplete|shostak|0.025|
|leftmost_crossing_same_in_reverse|✅ proved - incomplete|shostak|0.354|

## `horiz_edge_crossing`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|point_on_ray_reflexive|✅ proved - complete|shostak|0.010|
|point_on_ray_trans|✅ proved - complete|shostak|0.044|
|pt_above_p1_and_below_p2_and_x_in_range_imp_pt_on_seg_on_ray|✅ proved - complete|shostak|2.261|
|is_right_point_ray_intersect?_imp_exists_pt_on_seg_point_on_ray?|✅ proved - incomplete|shostak|0.608|
|rightmost_x_val_TCC1|✅ proved - incomplete|shostak|0.050|
|all_edges_to_left|✅ proved - incomplete|shostak|0.190|
|vertex_on_perimeter|✅ proved - incomplete|shostak|0.060|
|edge_right_crossing_point_TCC1|✅ proved - complete|shostak|0.016|
|is_vertex_with_V_edges?_TCC1|✅ proved - incomplete|shostak|0.050|
|right_crossing_edges_no_V_TCC1|✅ proved - incomplete|shostak|0.060|
|right_ray_crossing_x_TCC1|✅ proved - incomplete|shostak|0.070|
|edge_right_crossing_point_y_eq|✅ proved - complete|shostak|0.147|
|right_crossing_point_on_edge|✅ proved - incomplete|shostak|0.166|
|diamond_center_is_inside|✅ proved - incomplete|shostak|1.603|
|odd_rt_xing_edges_card_eqv_point_in_polygon_rec|✅ proved - incomplete|shostak|0.689|
|even_card_purged_V_edges|✅ proved - incomplete|shostak|0.479|
|subset_purged_V_right_crossing_edges_TCC1|✅ proved - incomplete|shostak|0.030|
|subset_purged_V_right_crossing_edges|✅ proved - incomplete|shostak|0.070|
|no_V_edges_eq_crossing_edges_sans_purged|✅ proved - incomplete|shostak|5.797|
|card_xing_edges_from_n_and_no_V_both_odd|✅ proved - incomplete|shostak|0.120|
|card_rt_xing_edges_eq_card_rt_xing_x|✅ proved - incomplete|shostak|2.242|
|right_crossing_x_eq_rt_crossing_set|✅ proved - incomplete|shostak|5.632|
|point_in_polygon?_eq_is_point_in_polygon_exclusive?|✅ proved - incomplete|shostak|0.084|
|counted_is_crossing|✅ proved - incomplete|shostak|0.561|
|counted_or_uncounted_crossing|✅ proved - incomplete|shostak|1.838|
|crossing_on_perimeter|✅ proved - incomplete|shostak|0.020|
|set_before_subset|✅ proved - complete|shostak|0.030|
|crossings_subset|✅ proved - incomplete|shostak|0.032|
|crossing_before_diff|✅ proved - incomplete|shostak|1.117|
|right_crossings_min|✅ proved - incomplete|shostak|2.108|
|right_crossings_max|✅ proved - incomplete|shostak|0.414|
|before_crossings_empty|✅ proved - incomplete|shostak|0.030|
|right_crossings_gap|✅ proved - incomplete|shostak|0.944|
|right_counted_gap|✅ proved - incomplete|shostak|0.395|
|between_crossings_even|✅ proved - incomplete|shostak|0.272|
|opposite_sides_of_crossing|✅ proved - incomplete|shostak|1.763|
|outgoing_follows_point_in|✅ proved - incomplete|shostak|0.052|
|before_crossing_in_polygon|✅ proved - incomplete|shostak|0.070|
|before_counted_odd_crossings|✅ proved - incomplete|shostak|0.058|
|before_counted_in_polygon|✅ proved - incomplete|shostak|0.100|
|counted_crossing_follows_point_inside|✅ proved - incomplete|shostak|0.257|

## `arb_direc_edge_crossing`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|points_on_ray_diff_norms|✅ proved - incomplete|shostak|0.259|
|points_on_ray_norms_on_ray|✅ proved - incomplete|shostak|0.323|
|counted_crossing_on_perimeter|✅ proved - incomplete|shostak|0.030|
|arb_crossings_subset|✅ proved - incomplete|shostak|0.273|
|arb_crossings_before_diff|✅ proved - incomplete|shostak|0.298|
|member_arb_crossings_on_perimeter|✅ proved - incomplete|shostak|0.084|
|arb_crossings_min|✅ proved - incomplete|shostak|0.080|
|arb_crossings_max|✅ proved - incomplete|shostak|0.130|
|before_arb_crossings_empty|✅ proved - incomplete|shostak|0.030|
|one_adjacent_edge_not_parallel|✅ proved - incomplete|shostak|0.175|
|key_arb_intersections_nonneg|✅ proved - incomplete|shostak|0.030|
|key_arb_intersections_subset|✅ proved - incomplete|shostak|0.633|
|on_parallel_not_adj_counted|✅ proved - incomplete|shostak|0.473|
|on_parallel_not_counted_crossing|✅ proved - incomplete|shostak|0.030|
|parallel_on_arb_line|✅ proved - incomplete|shostak|0.136|
|parallel_diff_norm|✅ proved - incomplete|shostak|0.100|
|parallel_vectors_diff_segment_endpoints|✅ proved - incomplete|shostak|0.874|
|parallel_point_diff_norm|✅ proved - incomplete|shostak|0.274|
|point_not_on_parallel_segment|✅ proved - incomplete|shostak|3.362|
|below_min_key_arb_not_on|✅ proved - incomplete|shostak|0.085|
|below_min_key_arb_crossing|✅ proved - incomplete|shostak|0.130|
|below_min_key_same_crossing_set|✅ proved - incomplete|shostak|0.927|
|key_intersections_subset_arb_crossings|✅ proved - incomplete|shostak|0.489|
|key_intersections_empty_arb_crossings|✅ proved - incomplete|shostak|0.040|
|empty_key_arb_only_parallel|✅ proved - incomplete|shostak|0.040|
|empty_key_arb_crossings_emptyset|✅ proved - incomplete|shostak|0.352|
|empty_key_arb_before_empty_crossings|✅ proved - incomplete|shostak|0.134|
|empty_key_arb_before_empty_crossings_neg_TCC1|✅ proved - incomplete|shostak|0.020|
|empty_key_arb_before_empty_crossings_neg|✅ proved - incomplete|shostak|0.315|
|empty_key_arb_no_crossings|✅ proved - incomplete|shostak|0.030|
|empty_key_arb_no_crossings_neg|✅ proved - incomplete|shostak|0.025|
|empty_key_arb_no_crossings_add|✅ proved - incomplete|shostak|0.080|
|card_add_crossing_set|✅ proved - incomplete|shostak|0.125|
|point_before_min_key_not_on|✅ proved - incomplete|shostak|0.080|
|point_before_min_neg_key_not_on|✅ proved - incomplete|shostak|0.095|
|bisect_vector_nonzero|✅ proved - incomplete|shostak|0.220|
|bisect_not_parallel_prev|✅ proved - incomplete|shostak|1.941|
|bisect_not_parallel_next|✅ proved - incomplete|shostak|1.201|
|counted_direction_not_parallel|✅ proved - incomplete|shostak|0.142|
|bisect_not_parallel_cross_nonzero_TCC1|✅ proved - incomplete|shostak|0.168|
|bisect_not_parallel_cross_nonzero|✅ proved - incomplete|shostak|10.436|
|key_arb_intersections_pos|✅ proved - incomplete|shostak|0.070|
|counted_key_arb_intersections_pos|✅ proved - incomplete|shostak|0.060|
|counted_key_arb_intersections_reverse_pos|✅ proved - incomplete|shostak|0.066|
|crossing_direction_counted|✅ proved - incomplete|shostak|0.110|
|crossing_direction_neg|✅ proved - incomplete|shostak|0.106|
|prev_point_ray_crossing_set|✅ proved - incomplete|shostak|0.306|
|later_point_ray_crossing_set|✅ proved - incomplete|shostak|0.266|
|empty_ray_intersection_sets|✅ proved - incomplete|shostak|0.054|
|parallel_intersections_pos|✅ proved - incomplete|shostak|0.080|
|min_all_intersections_key_TCC1|✅ proved - incomplete|shostak|0.045|
|min_all_intersections_key|✅ proved - incomplete|shostak|0.030|
|min_all_intersections_parallel_TCC1|✅ proved - incomplete|shostak|0.020|
|min_all_intersections_parallel|✅ proved - incomplete|shostak|0.050|
|all_intersections_pos|✅ proved - incomplete|shostak|0.175|
|nonempty_min_key_arb_intersections_TCC1|✅ proved - incomplete|shostak|0.020|
|nonempty_min_key_arb_intersections|✅ proved - incomplete|shostak|0.134|
|nonempty_min_parallel_intersections_TCC1|✅ proved - incomplete|shostak|0.020|
|nonempty_min_parallel_intersections|✅ proved - incomplete|shostak|0.145|
|no_parallel_intersections_not_on_segment|✅ proved - incomplete|shostak|2.818|
|empty_parallel_intersections_not_on|✅ proved - incomplete|shostak|2.854|
|empty_all_not_on_perimeter|✅ proved - incomplete|shostak|0.110|
|below_min_all_arb_not_on|✅ proved - incomplete|shostak|0.080|
|below_min_all_arb_not_on_neg|✅ proved - incomplete|shostak|0.139|

## `polygon_miter_sequences`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|rightward_crossing_index_TCC1|✅ proved - incomplete|shostak|0.050|
|rightward_crossing_index_reverse_TCC1|✅ proved - incomplete|shostak|0.020|
|rightward_crossing_index_reverse_TCC2|✅ proved - incomplete|shostak|0.025|
|rightward_crossing_index_reverse|✅ proved - incomplete|shostak|1.662|
|crossed_edge_rising_or_falling|✅ proved - incomplete|shostak|0.529|
|leftmost_intersection_on_crossed_edge|✅ proved - incomplete|shostak|0.528|
|crossing_within_falling_edge_y_range|✅ proved - incomplete|shostak|0.774|
|cross_horiz_seq_with_falling_edge_pos|✅ proved - incomplete|shostak|0.918|
|between_edges_at_falling_edge_vertex|✅ proved - incomplete|shostak|3.937|
|crossing_falling_off_right_side|✅ proved - incomplete|shostak|0.293|
|three_pt_miniseq_in_polygon|✅ proved - incomplete|shostak|0.100|
|four_pt_miniseq_in_polygon|✅ proved - incomplete|shostak|0.148|
|polygon_vertex_seq_single_loop_TCC1|✅ proved - incomplete|shostak|0.060|
|polygon_vertex_seq_single_loop_TCC2|✅ proved - incomplete|shostak|0.246|
|polygon_vertex_seq_single_loop|✅ proved - incomplete|shostak|0.255|
|polygon_vertex_seq_intercept_eq_0_TCC1|✅ proved - incomplete|shostak|0.275|
|polygon_vertex_seq_intercept_eq_0|✅ proved - incomplete|shostak|0.235|
|polygon_vertex_seq_TCC1|✅ proved - incomplete|shostak|1.230|
|polygon_vertex_seq_intercept|✅ proved - incomplete|shostak|0.250|
|min_seg_separation_eq_min_edge_separation|✅ proved - incomplete|shostak|4.626|
|max_miter_offset_lt_min_edge_sep|✅ proved - incomplete|shostak|0.510|
|three_pt_offset_dist_in_polygon_TCC1|✅ proved - incomplete|shostak|0.040|
|three_pt_offset_dist_in_polygon|✅ proved - incomplete|shostak|0.570|
|four_pt_offset_dist_in_polygon_TCC1|✅ proved - incomplete|shostak|0.084|
|four_pt_offset_dist_in_polygon|✅ proved - incomplete|shostak|1.209|
|polygon_miter_point_seq_element_TCC1|✅ proved - incomplete|shostak|0.251|
|polygon_miter_point_seq_element_TCC2|✅ proved - incomplete|shostak|0.211|
|polygon_miter_point_seq_element_TCC3|✅ proved - incomplete|shostak|0.060|
|polygon_miter_point_seq_element_TCC4|✅ proved - incomplete|shostak|0.050|
|polygon_miter_point_seq_element|✅ proved - incomplete|shostak|0.587|
|point_on_perim_iff_on_vertex_seq|✅ proved - incomplete|shostak|0.303|
|min_seg_sep_le_edge_length|✅ proved - incomplete|shostak|0.466|
|min_miter_sine_le_vertex_sine_TCC1|✅ proved - incomplete|shostak|0.060|
|min_miter_sine_le_vertex_sine_TCC2|✅ proved - incomplete|shostak|0.060|
|min_miter_sine_le_vertex_sine|✅ proved - incomplete|shostak|0.629|
|vertex_miter_point_TCC1|✅ proved - incomplete|shostak|0.020|
|vertex_miter_point_TCC2|✅ proved - incomplete|shostak|0.044|
|seg_from_miter_point_not_on_perim_TCC1|✅ proved - incomplete|shostak|0.706|
|seg_from_miter_point_not_on_perim|✅ proved - incomplete|shostak|18.662|
|miter_point_seqs_not_on_perim_TCC1|✅ proved - incomplete|shostak|0.090|
|miter_point_seqs_not_on_perim|✅ proved - incomplete|shostak|0.486|
|miter_point_in_polygon_miter_seg_seq|✅ proved - incomplete|shostak|1.774|
|miter_point_not_on_perim|✅ proved - incomplete|shostak|0.140|
|miter_point_dist_to_vertex_bound|✅ proved - incomplete|shostak|0.734|
|singleton_contact_free_path|✅ proved - incomplete|shostak|0.020|
|append_contact_free_paths_TCC1|✅ proved - incomplete|shostak|0.040|
|append_contact_free_paths_TCC2|✅ proved - incomplete|shostak|0.039|
|append_contact_free_paths|✅ proved - incomplete|shostak|0.050|
|append_contact_free_paths_excl|✅ proved - incomplete|shostak|0.050|
|polygon_miter_pt_seq_contact_free|✅ proved - incomplete|shostak|0.285|
|polygon_miter_pt_subseq_contact_free_TCC1|✅ proved - incomplete|shostak|0.737|
|polygon_miter_pt_subseq_contact_free|✅ proved - incomplete|shostak|0.563|
|polygon_miter_pt_subseq_pair_contact_free_TCC1|✅ proved - incomplete|shostak|0.480|
|polygon_miter_pt_subseq_pair_contact_free_TCC2|✅ proved - incomplete|shostak|0.624|
|polygon_miter_pt_subseq_pair_contact_free|✅ proved - incomplete|shostak|2.033|
|below_left_falling_seg_point_right_TCC1|✅ proved - complete|shostak|0.029|
|below_left_falling_seg_point_right|✅ proved - incomplete|shostak|1.411|
|above_left_falling_seg_point_right_TCC1|✅ proved - complete|shostak|0.030|
|above_left_falling_seg_point_right_TCC2|✅ proved - complete|shostak|0.033|
|above_left_falling_seg_point_right|✅ proved - incomplete|shostak|0.211|
|on_seg_from_miter_pt_to_endpoint_TCC1|✅ proved - incomplete|shostak|0.123|
|on_seg_from_miter_pt_to_endpoint_TCC2|✅ proved - incomplete|shostak|0.193|
|on_seg_from_miter_pt_to_endpoint_TCC3|✅ proved - incomplete|shostak|0.100|
|on_seg_from_miter_pt_to_endpoint_TCC4|✅ proved - incomplete|shostak|0.182|
|on_seg_from_miter_pt_to_endpoint|✅ proved - incomplete|shostak|13.941|
|on_seg_from_miter_pt_contact_free_TCC1|✅ proved - incomplete|shostak|0.133|
|on_seg_from_miter_pt_contact_free_TCC2|✅ proved - incomplete|shostak|0.060|
|on_seg_from_miter_pt_contact_free|✅ proved - incomplete|shostak|3.412|
|vertex_to_miter_pt_seq_contact_free_TCC1|✅ proved - incomplete|shostak|0.133|
|vertex_to_miter_pt_seq_contact_free_TCC2|✅ proved - incomplete|shostak|0.061|
|vertex_to_miter_pt_seq_contact_free|✅ proved - incomplete|shostak|16.777|
|next_vtx_to_miter_pt_subcase_zero_TCC1|✅ proved - incomplete|shostak|0.409|
|next_vtx_to_miter_pt_subcase_zero_TCC2|✅ proved - incomplete|shostak|0.090|
|next_vtx_to_miter_pt_subcase_zero_TCC3|✅ proved - incomplete|shostak|0.214|
|next_vtx_to_miter_pt_subcase_zero|✅ proved - incomplete|shostak|11.307|
|next_vtx_to_miter_pt_subcase_TCC1|✅ proved - incomplete|shostak|0.062|
|next_vtx_to_miter_pt_subcase_TCC2|✅ proved - incomplete|shostak|0.090|
|next_vtx_to_miter_pt_subcase_TCC3|✅ proved - incomplete|shostak|0.862|
|next_vtx_to_miter_pt_subcase|✅ proved - incomplete|shostak|1.342|
|next_vtx_to_miter_pt_seq_contact_free_TCC1|✅ proved - incomplete|shostak|0.136|
|next_vtx_to_miter_pt_seq_contact_free_TCC2|✅ proved - incomplete|shostak|0.145|
|next_vtx_to_miter_pt_seq_contact_free|✅ proved - incomplete|shostak|18.248|
|nonvertex_to_miter_pt_seq_contact_free_TCC1|✅ proved - incomplete|shostak|0.130|
|nonvertex_to_miter_pt_seq_contact_free_TCC2|✅ proved - incomplete|shostak|0.054|
|nonvertex_to_miter_pt_seq_contact_free|✅ proved - incomplete|shostak|1.997|
|rightward_crossing_falling_edge_cases|✅ proved - incomplete|shostak|0.000|
|path_to_miter_pt_seq_contact_free_TCC1|✅ proved - incomplete|shostak|0.122|
|path_to_miter_pt_seq_contact_free_TCC2|✅ proved - incomplete|shostak|0.050|
|path_to_miter_pt_seq_contact_free|✅ proved - incomplete|shostak|6.624|

## `polygon_membership`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|serpentine_ray_TCC1|✅ proved - incomplete|shostak|0.040|
|serpentine_ray_TCC2|✅ proved - incomplete|shostak|0.042|
|serp_ray_outside?_TCC1|✅ proved - incomplete|shostak|0.040|
|serp_ray_outside?_TCC2|✅ proved - incomplete|shostak|0.050|
|serp_ray_outside?_TCC3|✅ proved - incomplete|shostak|0.060|
|serp_ray_outside?_TCC4|✅ proved - incomplete|shostak|0.043|
|point_outside_polygon?_TCC1|✅ proved - incomplete|shostak|0.030|
|perimeter_not_outside|✅ proved - incomplete|shostak|0.100|
|point_on_serp_ray?_TCC1|✅ proved - incomplete|shostak|0.040|
|downstream_point_outside|✅ proved - incomplete|shostak|1.778|
|pt_inside_imp_inside_rev_polygon_TCC1|✅ proved - incomplete|shostak|0.020|
|pt_inside_imp_inside_rev_polygon|✅ proved - incomplete|shostak|0.593|
|pt_inside_eqv_inside_rev_polygon_TCC1|✅ proved - incomplete|shostak|0.020|
|pt_inside_eqv_inside_rev_polygon|✅ proved - incomplete|shostak|0.040|
|pt_outside_eqv_outside_rev_polygon|✅ proved - incomplete|shostak|0.180|
|prev_edge_not_crossed_by_perp_left_segment_TCC1|✅ proved - incomplete|shostak|0.023|
|prev_edge_not_crossed_by_perp_left_segment|✅ proved - incomplete|shostak|2.644|
|prev_edge_not_crossed_by_perp_right_segment_TCC1|✅ proved - incomplete|shostak|0.033|
|prev_edge_not_crossed_by_perp_right_segment|✅ proved - incomplete|shostak|2.656|
|next_edge_not_crossed_by_perp_left_segment_TCC1|✅ proved - incomplete|shostak|0.022|
|next_edge_not_crossed_by_perp_left_segment|✅ proved - incomplete|shostak|2.935|
|next_edge_not_crossed_by_perp_right_segment_TCC1|✅ proved - incomplete|shostak|0.030|
|next_edge_not_crossed_by_perp_right_segment|✅ proved - incomplete|shostak|3.143|
|nearby_perp_right_segment_not_on_perim_TCC1|✅ proved - incomplete|shostak|0.020|
|nearby_perp_right_segment_not_on_perim|✅ proved - incomplete|shostak|3.058|
|nearby_perp_left_segment_not_on_perim_TCC1|✅ proved - incomplete|shostak|0.020|
|nearby_perp_left_segment_not_on_perim|✅ proved - incomplete|shostak|3.036|
|rightward_offset_pt_not_on_perim|✅ proved - incomplete|shostak|0.263|
|leftward_offset_pt_not_on_perim|✅ proved - incomplete|shostak|0.270|
|on_perimeter_edge_path?_TCC1|✅ proved - incomplete|shostak|0.253|
|on_perimeter_vertex_path?_TCC1|✅ proved - incomplete|shostak|0.270|
|perimeter_segment_path_TCC1|✅ proved - incomplete|shostak|0.076|
|perimeter_segment_path_TCC2|✅ proved - incomplete|shostak|13.500|
|perimeter_segment_path_TCC3|✅ proved - incomplete|shostak|0.168|
|perimeter_segment_path_TCC4|✅ proved - incomplete|shostak|0.225|
|perimeter_segment_path_TCC5|✅ proved - incomplete|shostak|0.150|
|perimeter_segment_path_TCC6|✅ proved - incomplete|shostak|2.016|
|initial_point_perimeter_segment_path_TCC1|✅ proved - incomplete|shostak|0.038|
|initial_point_perimeter_segment_path|✅ proved - incomplete|shostak|0.000|
|final_point_perimeter_segment_path_TCC1|✅ proved - incomplete|shostak|0.060|
|final_point_perimeter_segment_path|✅ proved - incomplete|shostak|1.166|
|perim_segment_path_on_perim|✅ proved - incomplete|shostak|3.463|
|append_path_to_s_ray_TCC1|✅ proved - incomplete|shostak|0.067|
|append_path_to_s_ray_TCC2|✅ proved - incomplete|shostak|0.040|
|append_path_to_s_ray_TCC3|✅ proved - incomplete|shostak|0.030|
|append_path_to_s_ray_TCC4|✅ proved - incomplete|shostak|0.050|
|append_path_to_s_ray_TCC5|✅ proved - incomplete|shostak|0.539|
|truncated_serp_ray_TCC1|✅ proved - incomplete|shostak|0.050|
|truncated_serp_ray_TCC2|✅ proved - incomplete|shostak|0.281|
|truncated_serp_ray_TCC3|✅ proved - incomplete|shostak|0.283|
|truncated_serp_ray_TCC4|✅ proved - incomplete|shostak|0.373|
|truncated_serp_ray_TCC5|✅ proved - incomplete|shostak|0.140|
|truncated_serp_ray_TCC6|✅ proved - incomplete|shostak|0.245|
|truncated_serp_ray_TCC7|✅ proved - incomplete|shostak|0.305|
|truncated_serp_ray_TCC8|✅ proved - incomplete|shostak|1.741|
|initial_point_append_path_to_s_ray_TCC1|✅ proved - incomplete|shostak|0.060|
|initial_point_append_path_to_s_ray_TCC2|✅ proved - incomplete|shostak|0.050|
|initial_point_append_path_to_s_ray|✅ proved - incomplete|shostak|0.170|
|append_outside_seq_to_s_ray|✅ proved - incomplete|shostak|1.141|
|initial_point_of_truncated_s_ray_TCC1|✅ proved - incomplete|shostak|0.040|
|initial_point_of_truncated_s_ray|✅ proved - incomplete|shostak|0.304|
|point_on_truncated_s_ray_on_s_ray|✅ proved - incomplete|shostak|0.943|
|truncated_s_ray_outside|✅ proved - incomplete|shostak|0.040|
|point_in_polygon_conds_equiv_horiz_TCC1|✅ proved - incomplete|shostak|0.020|
|point_in_polygon_conds_equiv_horiz|✅ proved - incomplete|shostak|3.799|
|extend_points_inside_polygon|✅ proved - incomplete|shostak|0.728|
|extend_points_inside_polygon_excl|✅ proved - incomplete|shostak|0.733|
|extend_points_outside_polygon|✅ proved - incomplete|shostak|0.191|
|extend_points_outside_polygon_excl|✅ proved - incomplete|shostak|1.225|
|point_out_pts_on_non_perim_path_out_TCC1|✅ proved - incomplete|shostak|0.040|
|point_out_pts_on_non_perim_path_out|✅ proved - incomplete|shostak|0.864|
|point_in_pts_on_non_perim_path_in_TCC1|✅ proved - incomplete|shostak|0.042|
|point_in_pts_on_non_perim_path_in|✅ proved - incomplete|shostak|0.833|
|topleft_miter_point_in_or_out_TCC1|✅ proved - incomplete|shostak|0.080|
|topleft_miter_point_in_or_out_TCC2|✅ proved - incomplete|shostak|0.050|
|topleft_miter_point_in_or_out|✅ proved - incomplete|shostak|3.364|
|polygon_miter_sequence_in_or_out_TCC1|✅ proved - incomplete|shostak|0.090|
|polygon_miter_sequence_in_or_out|✅ proved - incomplete|shostak|9.659|
|falling_edge_imp_ccw_in_or_out|✅ proved - incomplete|shostak|0.655|
|ccw_imp_falling_edge_in_or_out|✅ proved - incomplete|shostak|0.000|
|point_in_has_rightward_crossings|✅ proved - incomplete|shostak|1.043|
|point_outside_imp_not_inside|✅ proved - incomplete|shostak|1.777|
|point_outside_imp_not_in|✅ proved - incomplete|shostak|0.051|
|point_not_in_imp_outside|✅ proved - incomplete|shostak|1.007|
|point_out_not_in|✅ proved - incomplete|shostak|0.025|
|same_perim_pts_imp_same_exterior_pts|✅ proved - incomplete|shostak|0.173|
|same_perim_pts_imp_same_interior_pts|✅ proved - incomplete|shostak|0.050|
|falling_edge_ccw_in_or_out|✅ proved - incomplete|shostak|0.373|
|ccw_falling_edge_in_or_out|✅ proved - incomplete|shostak|0.505|
|nearest_rightward_crossing_in_or_out|✅ proved - incomplete|shostak|0.060|
|point_in_has_inside_segments_TCC1|✅ proved - incomplete|shostak|0.050|
|point_in_has_inside_segments|✅ proved - incomplete|shostak|7.040|
|point_outside_not_in_polygon_arb|✅ proved - incomplete|shostak|0.020|
|point_outside_not_in_polygon_arb_neg|✅ proved - incomplete|shostak|0.030|
|left_right_midpoints_in_out|✅ proved - incomplete|shostak|5.100|
|right_left_midpoints_in_out|✅ proved - incomplete|shostak|5.045|
|left_right_midpoints_out_in|✅ proved - incomplete|shostak|5.037|
|right_left_midpoints_out_in|✅ proved - incomplete|shostak|0.778|
|counted_crossing_direction_exists|✅ proved - incomplete|shostak|0.837|
|free_ray_point_outside|✅ proved - incomplete|shostak|0.140|
|only_parallel_ray_point_outside|✅ proved - incomplete|shostak|0.105|
|one_dir_empty_intersections_TCC1|✅ proved - incomplete|shostak|0.030|
|one_dir_empty_intersections|✅ proved - incomplete|shostak|0.393|
|one_dir_empty_point_outside|✅ proved - incomplete|shostak|0.253|
|one_dir_out_other_in_polygon|✅ proved - incomplete|shostak|0.314|
|opposite_sides_of_crossing_arb|✅ proved - incomplete|shostak|0.362|
|nearby_point_outside_exists_either|✅ proved - incomplete|shostak|1.363|
|nearby_point_outside_exists|✅ proved - incomplete|shostak|0.102|
|nearby_point_in_polygon_TCC1|✅ proved - incomplete|shostak|0.070|
|nearby_point_in_polygon|✅ proved - incomplete|shostak|0.115|
|A_perim_outside_imp_B_perim_inside|✅ proved - incomplete|shostak|0.311|
|overlap_imp_inside_pt_on_perim|✅ proved - incomplete|shostak|0.150|
|outside_C_inside_A|✅ proved - incomplete|shostak|0.714|
|container_edges_not_inside|✅ proved - incomplete|shostak|0.551|
|contained_not_on_perimeter|✅ proved - incomplete|shostak|0.040|
|contained_membership|✅ proved - incomplete|shostak|0.174|
|contained_membership_cor|✅ proved - incomplete|shostak|0.045|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib//float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-pvsio-fix.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210219-extratregies.lisp`|
