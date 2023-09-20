# Summary for `polygons`
Run started at 4:57:26 9/20/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **566**   | **566**    | **566**    | **0**  | **7:55.818 s**   |
|top|0|0|0|0|0.000|
|polygons_2d|143|143|143|0|1:28.173|
|topleft_vertex|23|23|23|0|5.190|
|polygon_attributes|31|31|31|0|24.855|
|rightward_crossings|20|20|20|0|16.431|
|reverse_polygons|38|38|38|0|22.270|
|horiz_edge_crossing|41|41|41|0|33.183|
|arb_direc_edge_crossing|64|64|64|0|34.619|
|polygon_miter_sequences|89|89|89|0|2:20.361|
|polygon_membership|117|117|117|0|1:50.736|
## Detailed Summary 
## `top`
No formula declaration found.
## `polygons_2d`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|prev_index_TCC1|✅ proved - incomplete|shostak|0.152|
|prev_index_TCC2|✅ proved - incomplete|shostak|0.030|
|next_index_TCC1|✅ proved - incomplete|shostak|0.030|
|next_index_TCC2|✅ proved - incomplete|shostak|0.050|
|prev_next_is_original|✅ proved - incomplete|shostak|0.048|
|next_prev_is_original|✅ proved - incomplete|shostak|0.030|
|rem_diff_eq_0|✅ proved - complete|shostak|0.219|
|rem_diff_eq_0_shift|✅ proved - complete|shostak|0.214|
|rem_add1_eq_next_index|✅ proved - incomplete|shostak|0.275|
|rem_sum3|✅ proved - complete|shostak|0.156|
|vertex_is_vertex|✅ proved - incomplete|shostak|0.036|
|vertex_is_not_nonvertex|✅ proved - incomplete|shostak|0.030|
|edges_of_polygon_TCC1|✅ proved - incomplete|shostak|0.106|
|edge_is_edge|✅ proved - incomplete|shostak|0.040|
|find_helper_TCC1|✅ proved - incomplete|shostak|0.040|
|find_helper_TCC2|✅ proved - incomplete|shostak|0.037|
|find_helper_TCC3|✅ proved - incomplete|shostak|0.020|
|find_helper_TCC4|✅ proved - incomplete|shostak|0.030|
|find_helper_TCC5|✅ proved - incomplete|shostak|0.037|
|find_helper_TCC6|✅ proved - incomplete|shostak|0.060|
|find_helper_invariant_TCC1|✅ proved - incomplete|shostak|0.047|
|find_helper_invariant_TCC2|✅ proved - incomplete|shostak|0.055|
|find_helper_invariant|✅ proved - incomplete|shostak|0.318|
|find_index_TCC1|✅ proved - incomplete|shostak|0.020|
|find_index_TCC2|✅ proved - incomplete|shostak|0.087|
|next_index_distinct|✅ proved - incomplete|shostak|0.040|
|vertex_find_helper_TCC1|✅ proved - incomplete|shostak|0.026|
|vertex_find_helper|✅ proved - incomplete|shostak|0.136|
|vertex_find_index|✅ proved - incomplete|shostak|0.040|
|find_helper_self_TCC1|✅ proved - incomplete|shostak|0.020|
|find_helper_self_TCC2|✅ proved - incomplete|shostak|0.028|
|find_helper_self|✅ proved - incomplete|shostak|0.292|
|find_index_self_TCC1|✅ proved - incomplete|shostak|0.040|
|find_index_self|✅ proved - incomplete|shostak|0.040|
|find_index_self_index|✅ proved - incomplete|shostak|0.076|
|segment_in_edges_TCC1|✅ proved - incomplete|shostak|0.106|
|segment_in_edges|✅ proved - incomplete|shostak|0.070|
|edge_segment_has_vertices|✅ proved - incomplete|shostak|0.036|
|find_index_segment_is_edge|✅ proved - incomplete|shostak|0.040|
|vertex_neq_next|✅ proved - incomplete|shostak|0.087|
|vertex_neq_next_2|✅ proved - incomplete|shostak|0.020|
|vertex_neq_prev|✅ proved - incomplete|shostak|0.070|
|vertex_neq_prev_2|✅ proved - incomplete|shostak|0.020|
|prev_vertex_neq_next_vertex|✅ proved - incomplete|shostak|0.107|
|vertices_diff_next_nonzero|✅ proved - incomplete|shostak|0.030|
|vertices_diff_prev_nonzero|✅ proved - incomplete|shostak|0.020|
|second_edge_does_not_double_back_TCC1|✅ proved - incomplete|shostak|0.047|
|second_edge_does_not_double_back_TCC2|✅ proved - incomplete|shostak|0.100|
|second_edge_does_not_double_back|✅ proved - incomplete|shostak|0.218|
|vertex_on_edge|✅ proved - incomplete|shostak|0.020|
|next_vertex_on_edge|✅ proved - incomplete|shostak|0.030|
|vertex_on_prev_edge|✅ proved - incomplete|shostak|0.067|
|norm_vertex_diff_next_pos|✅ proved - incomplete|shostak|0.050|
|norm_vertex_diff_prev_pos|✅ proved - incomplete|shostak|0.047|
|two_adjacent_edges_TCC1|✅ proved - incomplete|shostak|0.070|
|two_adjacent_edges_TCC2|✅ proved - incomplete|shostak|0.086|
|two_adjacent_edges|✅ proved - incomplete|shostak|0.097|
|same_edge_equiv_same_points|✅ proved - incomplete|shostak|0.542|
|rem_plus_1_eq_next_index|✅ proved - incomplete|shostak|0.387|
|rem_minus_1_eq_prev_index|✅ proved - incomplete|shostak|0.126|
|rem_plus_1_eq_next_index_2|✅ proved - incomplete|shostak|0.265|
|equal_or_adjacent_edge_reflexive|✅ proved - complete|shostak|0.020|
|equal_or_adjacent_edge_symmetric|✅ proved - complete|shostak|0.168|
|equal_or_adjacent_edge_not_transitive|✅ proved - complete|shostak|0.060|
|adj_edges_share_vertex|✅ proved - incomplete|shostak|0.214|
|short_antenna_edge_midpoint_on_longer_edge|✅ proved - incomplete|shostak|4.797|
|short_antenna_edge_midpoint_not_endpoint|✅ proved - incomplete|shostak|0.525|
|antenna_edges_share_many_points|✅ proved - incomplete|shostak|32.568|
|only_common_point_is_vertex_means_equal_or_adjacent|✅ proved - incomplete|shostak|0.685|
|common_pt_on_adj_edges_must_be_vertex_unless_antenna|✅ proved - incomplete|shostak|6.967|
|polygon_edges_do_not_cross_defs_eq|✅ proved - incomplete|shostak|0.989|
|example_right_triangle_TCC1|✅ proved - complete|shostak|0.075|
|simple_polygon_2d_TCC1|✅ proved - incomplete|shostak|2.051|
|example_diamond_TCC1|✅ proved - complete|shostak|0.119|
|example_diamond_TCC2|✅ proved - incomplete|shostak|3.953|
|next_edge_shares_only_vertex|✅ proved - incomplete|shostak|0.902|
|prev_edge_shares_only_vertex|✅ proved - incomplete|shostak|0.511|
|adjacent_edges_share_only_vertex|✅ proved - incomplete|shostak|0.413|
|next_edge_not_dir_parallel|✅ proved - incomplete|shostak|1.155|
|prev_edge_not_dir_parallel|✅ proved - incomplete|shostak|1.254|
|adjacent_edges_not_dir_parallel|✅ proved - incomplete|shostak|0.358|
|prev_vertex_not_on_ray_of_edge_TCC1|✅ proved - incomplete|shostak|0.040|
|prev_vertex_not_on_ray_of_edge|✅ proved - incomplete|shostak|0.528|
|only_adjacent_edges_intersect|✅ proved - incomplete|shostak|1.766|
|adjacent_edges_do_not_fold_back|✅ proved - incomplete|shostak|0.106|
|points_on_distinct_edges_differ|✅ proved - incomplete|shostak|0.155|
|edge_x_left_or_right_imp_cross_neq_0|✅ proved - incomplete|shostak|1.032|
|edge_y_above_or_below_imp_cross_neq_0|✅ proved - incomplete|shostak|1.020|
|shared_endpoints_imp_same_edge|✅ proved - incomplete|shostak|0.519|
|same_polygon_edge_overlaps_equal|✅ proved - incomplete|shostak|0.690|
|interior_point_is_nonvertex|✅ proved - incomplete|shostak|2.392|
|nonvertex_on_one_edge|✅ proved - incomplete|shostak|0.231|
|vertex_is_segment_endpoint|✅ proved - incomplete|shostak|0.094|
|vertex_is_edge_endpoint|✅ proved - incomplete|shostak|0.218|
|vertex_on_two_edges|✅ proved - incomplete|shostak|0.096|
|is_point_in_polygon_recursive?_TCC1|✅ proved - incomplete|shostak|0.045|
|is_point_in_polygon_recursive?_TCC2|✅ proved - incomplete|shostak|0.030|
|is_point_in_polygon_recursive_negation|✅ proved - incomplete|shostak|0.491|
|is_point_in_polygon_inclusive?_TCC1|✅ proved - incomplete|shostak|0.027|
|center_of_diamond_is_inside|✅ proved - incomplete|shostak|1.275|
|outside_left_of_diamond_is_outside|✅ proved - incomplete|shostak|0.526|
|above_center_of_diamond_is_inside|✅ proved - incomplete|shostak|1.657|
|above_outside_left_of_diamond_is_outside|✅ proved - incomplete|shostak|0.620|
|way_above_diamond_is_outside|✅ proved - incomplete|shostak|0.535|
|polygons_are_inside_themselves|✅ proved - incomplete|shostak|0.627|
|insert_vertex_TCC1|✅ proved - incomplete|shostak|0.050|
|insert_vertex_TCC2|✅ proved - incomplete|shostak|0.035|
|insert_vertex_TCC3|✅ proved - incomplete|shostak|0.040|
|insert_vertex_TCC4|✅ proved - incomplete|shostak|0.072|
|insert_vertex_TCC5|✅ proved - incomplete|shostak|0.519|
|insert_vertex_TCC6|✅ proved - incomplete|shostak|0.070|
|insert_vertex_seq_TCC1|✅ proved - incomplete|shostak|0.038|
|insert_vertex_seq_TCC2|✅ proved - incomplete|shostak|0.030|
|insert_vertex_seq_TCC3|✅ proved - incomplete|shostak|0.027|
|insert_vertex_seq_TCC4|✅ proved - incomplete|shostak|0.100|
|insert_vertex_seq_TCC5|✅ proved - incomplete|shostak|0.106|
|insert_vertex_seq_TCC6|✅ proved - incomplete|shostak|0.066|
|insert_vertex_seq_TCC7|✅ proved - incomplete|shostak|0.147|
|insert_vertex_seq_TCC8|✅ proved - incomplete|shostak|0.030|
|insert_vertex_seq_TCC9|✅ proved - incomplete|shostak|0.173|
|polygon_segment_is_not_outside_inclusive|✅ proved - incomplete|shostak|1.096|
|polygon_segment_is_outside_exclusive|✅ proved - incomplete|shostak|0.030|
|polygon_segment_is_inside_inclusive|✅ proved - incomplete|shostak|0.023|
|polygon_segment_is_not_inside_exclusive|✅ proved - incomplete|shostak|1.086|
|path_outside_inclusive?_TCC1|✅ proved - incomplete|shostak|0.030|
|path_outside_inclusive?_TCC2|✅ proved - incomplete|shostak|0.052|
|path_outside_inclusive?_TCC3|✅ proved - incomplete|shostak|0.100|
|point_on_polygon_perimeter?_eq_is_point_on_polygon_perimeter?|✅ proved - incomplete|shostak|0.035|
|find_index_any_rec_TCC1|✅ proved - incomplete|shostak|0.050|
|find_index_any_rec_TCC2|✅ proved - incomplete|shostak|0.053|
|find_index_any_rec_TCC3|✅ proved - incomplete|shostak|0.060|
|find_index_any_TCC1|✅ proved - incomplete|shostak|0.030|
|perimeter_find_index_any|✅ proved - incomplete|shostak|0.400|
|point_on_find_index_segment_TCC1|✅ proved - incomplete|shostak|0.040|
|point_on_find_index_segment|✅ proved - incomplete|shostak|0.322|
|find_index_any_segment_rec_TCC1|✅ proved - incomplete|shostak|0.030|
|find_index_any_segment_rec|✅ proved - incomplete|shostak|3.785|
|find_index_any_segment|✅ proved - incomplete|shostak|0.069|
|find_index_any_self|✅ proved - incomplete|shostak|0.050|
|point_on_segment_rem_endpoints_TCC1|✅ proved - incomplete|shostak|0.194|
|point_on_segment_rem_endpoints|✅ proved - incomplete|shostak|0.550|
|point_on_segment_rem_endpoints_2_TCC1|✅ proved - incomplete|shostak|0.171|
|point_on_segment_rem_endpoints_2|✅ proved - incomplete|shostak|0.247|

## `topleft_vertex`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|leftmost_vertex_val_TCC1|✅ proved - incomplete|shostak|0.040|
|exists_leftmost_vertex_val|✅ proved - incomplete|shostak|0.070|
|leftmost_vertex_val_is_min|✅ proved - incomplete|shostak|0.085|
|at_least_one_leftmost|✅ proved - incomplete|shostak|0.030|
|topleft_vertex_val_TCC1|✅ proved - incomplete|shostak|0.036|
|topleft_vertex_val_is_max|✅ proved - incomplete|shostak|0.073|
|topleft_vertex_idx_TCC1|✅ proved - incomplete|shostak|0.363|
|leftmost_is_topleft_x|✅ proved - incomplete|shostak|0.040|
|leftmost_has_min_x|✅ proved - incomplete|shostak|0.042|
|topmost_is_topleft_y|✅ proved - incomplete|shostak|0.030|
|topmost_has_max_y|✅ proved - incomplete|shostak|0.051|
|leftmost_xval_le_segment|✅ proved - incomplete|shostak|0.120|
|leftmost_xval_lt_segment|✅ proved - incomplete|shostak|0.115|
|leftmost_xval_lt_segment_eq|✅ proved - incomplete|shostak|0.255|
|leftmost_vtx_val_le_any_perim_point|✅ proved - incomplete|shostak|0.055|
|topmost_yval_ge_segment|✅ proved - incomplete|shostak|0.133|
|topmost_yval_gt_segment|✅ proved - incomplete|shostak|0.127|
|topleft_vertex_bounds_vertices|✅ proved - incomplete|shostak|0.126|
|topleft_vertex_bounds_all_points|✅ proved - incomplete|shostak|0.626|
|min_vertex_yval_TCC1|✅ proved - incomplete|shostak|0.050|
|not_all_vertices_collinear_horiz|✅ proved - incomplete|shostak|0.000|
|falling_edge_exists|✅ proved - incomplete|shostak|1.377|
|rising_edge_exists|✅ proved - incomplete|shostak|1.346|

## `polygon_attributes`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|min_edge_sep_vertex_TCC1|✅ proved - incomplete|shostak|0.045|
|min_edge_sep_vertex_TCC2|✅ proved - incomplete|shostak|0.095|
|min_edge_sep_vertex_TCC3|✅ proved - incomplete|shostak|0.205|
|min_edge_sep_vertex_TCC4|✅ proved - incomplete|shostak|0.218|
|min_edge_separation_TCC1|✅ proved - incomplete|shostak|0.030|
|min_edge_separation_TCC2|✅ proved - incomplete|shostak|0.086|
|min_edge_sep_vertex_le_dist_to_vtx|✅ proved - incomplete|shostak|3.437|
|min_edge_separation_is_min|✅ proved - incomplete|shostak|0.500|
|min_edge_sep_TCC1|✅ proved - incomplete|shostak|3.751|
|min_edge_sep_le_min_edge_separation|✅ proved - incomplete|shostak|0.921|
|separation_distance_bounds_edge_length|✅ proved - incomplete|shostak|6.615|
|min_edge_sep_all_points|✅ proved - incomplete|shostak|0.633|
|sines_of_edge_angles_TCC1|✅ proved - incomplete|shostak|0.039|
|sines_of_edge_angles_TCC2|✅ proved - incomplete|shostak|0.042|
|sines_of_edge_angles_nonempty|✅ proved - incomplete|shostak|0.223|
|min_edge_angle_sine_TCC1|✅ proved - incomplete|shostak|0.020|
|min_edge_angle_sine_TCC2|✅ proved - incomplete|shostak|0.730|
|edge_angle_sine_sq_bound|✅ proved - incomplete|shostak|0.130|
|sines_of_inward_edge_angles_TCC1|✅ proved - incomplete|shostak|0.037|
|sines_of_inward_edge_angles_TCC2|✅ proved - incomplete|shostak|0.041|
|sines_of_inward_edge_angles_nonempty|✅ proved - incomplete|shostak|0.224|
|min_inward_edge_angle_sine_TCC1|✅ proved - incomplete|shostak|0.020|
|min_inward_edge_angle_sine_TCC2|✅ proved - incomplete|shostak|0.707|
|in_out_offset_lt_min_edge_sep|✅ proved - incomplete|shostak|0.852|
|ccw_imp_cross_topleft_edges_neg|✅ proved - incomplete|shostak|1.427|
|cross_topleft_edges_neg_imp_ccw|✅ proved - incomplete|shostak|1.623|
|ccw_eqv_cross_topleft_edges_neg|✅ proved - incomplete|shostak|0.389|
|nearby_pt_between_edges_not_on_perim|✅ proved - incomplete|shostak|1.503|
|miter_point_between_edges_TCC1|✅ proved - incomplete|shostak|0.020|
|miter_point_between_edges_TCC2|✅ proved - incomplete|shostak|0.100|
|miter_point_between_edges|✅ proved - incomplete|shostak|0.192|

## `rightward_crossings`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|edge_crossing_point_TCC1|✅ proved - complete|shostak|0.040|
|rightward_crossing_set_nonempty|✅ proved - incomplete|shostak|0.044|
|leftmost_crossing_xval_TCC1|✅ proved - incomplete|shostak|0.020|
|edge_crossing_point_on_perim|✅ proved - incomplete|shostak|0.739|
|leftmost_crossing_on_perim|✅ proved - incomplete|shostak|0.562|
|edge_crossing_point_xval_bound|✅ proved - incomplete|shostak|1.644|
|leftmost_crossing_xval_bound|✅ proved - incomplete|shostak|0.106|
|leftmost_crossing_xval_is_min|✅ proved - incomplete|shostak|0.106|
|leftmost_has_horiz_dist_from_p|✅ proved - incomplete|shostak|0.190|
|has_crossing_off_right_side_falling|✅ proved - incomplete|shostak|1.250|
|no_point_x_left_of_leftmost_crossing_TCC1|✅ proved - incomplete|shostak|0.030|
|no_point_x_left_of_leftmost_crossing|✅ proved - incomplete|shostak|1.405|
|no_edge_point_left_of_leftmost_crossing|✅ proved - incomplete|shostak|0.000|
|left_of_leftmost_crossing_not_on_perim_TCC1|✅ proved - incomplete|shostak|0.026|
|left_of_leftmost_crossing_not_on_perim|✅ proved - incomplete|shostak|4.418|
|left_of_leftmost_crossing_not_on_perim_2|✅ proved - incomplete|shostak|1.187|
|leftmost_crossing_on_polygon_edge|✅ proved - incomplete|shostak|0.110|
|leftmost_is_horiz_edge_endpoint|✅ proved - incomplete|shostak|0.936|
|left_of_leftmost_not_on_perim_edge|✅ proved - incomplete|shostak|2.598|
|only_one_edge_adj_leftmost_is_horiz|✅ proved - incomplete|shostak|1.020|

## `reverse_polygons`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|rev_polygon_index_TCC1|✅ proved - incomplete|shostak|0.020|
|rev_polygon_index_TCC2|✅ proved - incomplete|shostak|0.050|
|reverse_polygon_TCC1|✅ proved - incomplete|shostak|0.082|
|rev_polygon_index_reverse_TCC1|✅ proved - incomplete|shostak|0.043|
|rev_polygon_index_reverse|✅ proved - incomplete|shostak|0.050|
|rev_rev_polygon_index|✅ proved - incomplete|shostak|0.050|
|reverse_reverse_polygon|✅ proved - incomplete|shostak|0.156|
|reverse_vertex_rev_index_TCC1|✅ proved - incomplete|shostak|0.045|
|reverse_vertex_rev_index|✅ proved - incomplete|shostak|0.060|
|prev_index_rev_index_next|✅ proved - incomplete|shostak|0.114|
|prev_index_of_reverse|✅ proved - incomplete|shostak|0.130|
|next_index_rev_index_prev|✅ proved - incomplete|shostak|0.146|
|next_index_of_reverse|✅ proved - incomplete|shostak|0.126|
|edges_of_reverse_polygon|✅ proved - incomplete|shostak|0.160|
|point_on_edge_of_rev_polygon|✅ proved - incomplete|shostak|0.057|
|edge_of_rev_polygon_rev_segment|✅ proved - incomplete|shostak|0.266|
|edge_of_rev_polygon_imp_edge_rev_seg|✅ proved - incomplete|shostak|0.211|
|rev_polygon_edge_is_rev_segment|✅ proved - incomplete|shostak|0.185|
|on_rev_perim_eqv_on_perim|✅ proved - incomplete|shostak|0.736|
|reverse_polygon_is_simple|✅ proved - incomplete|shostak|0.243|
|topleft_index_of_reverse|✅ proved - incomplete|shostak|0.455|
|topleft_vertex_of_reverse_is_same|✅ proved - incomplete|shostak|0.045|
|find_index_any_reverse|✅ proved - incomplete|shostak|0.206|
|find_index_any_vertex_reverse|✅ proved - incomplete|shostak|0.237|
|ccw_reverse_polygon|✅ proved - incomplete|shostak|4.367|
|ccw_miter_pt_left_of_topleft_vtx_TCC1|✅ proved - incomplete|shostak|0.050|
|ccw_miter_pt_left_of_topleft_vtx_TCC2|✅ proved - incomplete|shostak|0.090|
|ccw_miter_pt_left_of_topleft_vtx|✅ proved - incomplete|shostak|9.025|
|segment_falling_reverse_rising_TCC1|✅ proved - incomplete|shostak|0.621|
|segment_falling_reverse_rising|✅ proved - incomplete|shostak|0.259|
|segment_falling_reverse_image_TCC1|✅ proved - incomplete|shostak|0.625|
|segment_falling_reverse_image|✅ proved - incomplete|shostak|0.267|
|reverse_seg_rightward_edge_crossing|✅ proved - incomplete|shostak|0.067|
|reverse_has_rightward_crossings|✅ proved - incomplete|shostak|1.356|
|edge_crossing_point_same_in_reverse_TCC1|✅ proved - incomplete|shostak|0.020|
|edge_crossing_point_same_in_reverse|✅ proved - incomplete|shostak|1.238|
|leftmost_crossing_same_in_reverse_TCC1|✅ proved - incomplete|shostak|0.020|
|leftmost_crossing_same_in_reverse|✅ proved - incomplete|shostak|0.392|

## `horiz_edge_crossing`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|point_on_ray_reflexive|✅ proved - complete|shostak|0.020|
|point_on_ray_trans|✅ proved - complete|shostak|0.042|
|pt_above_p1_and_below_p2_and_x_in_range_imp_pt_on_seg_on_ray|✅ proved - complete|shostak|0.000|
|is_right_point_ray_intersect?_imp_exists_pt_on_seg_point_on_ray?|✅ proved - incomplete|shostak|0.687|
|rightmost_x_val_TCC1|✅ proved - incomplete|shostak|0.050|
|all_edges_to_left|✅ proved - incomplete|shostak|0.204|
|vertex_on_perimeter|✅ proved - incomplete|shostak|0.066|
|edge_right_crossing_point_TCC1|✅ proved - complete|shostak|0.020|
|is_vertex_with_V_edges?_TCC1|✅ proved - incomplete|shostak|0.050|
|right_crossing_edges_no_V_TCC1|✅ proved - incomplete|shostak|0.057|
|right_ray_crossing_x_TCC1|✅ proved - incomplete|shostak|0.073|
|edge_right_crossing_point_y_eq|✅ proved - complete|shostak|0.157|
|right_crossing_point_on_edge|✅ proved - incomplete|shostak|0.192|
|diamond_center_is_inside|✅ proved - incomplete|shostak|1.753|
|odd_rt_xing_edges_card_eqv_point_in_polygon_rec|✅ proved - incomplete|shostak|0.776|
|even_card_purged_V_edges|✅ proved - incomplete|shostak|0.526|
|subset_purged_V_right_crossing_edges_TCC1|✅ proved - incomplete|shostak|0.020|
|subset_purged_V_right_crossing_edges|✅ proved - incomplete|shostak|0.080|
|no_V_edges_eq_crossing_edges_sans_purged|✅ proved - incomplete|shostak|6.366|
|card_xing_edges_from_n_and_no_V_both_odd|✅ proved - incomplete|shostak|0.135|
|card_rt_xing_edges_eq_card_rt_xing_x|✅ proved - incomplete|shostak|2.494|
|right_crossing_x_eq_rt_crossing_set|✅ proved - incomplete|shostak|10.370|
|point_in_polygon?_eq_is_point_in_polygon_exclusive?|✅ proved - incomplete|shostak|0.085|
|counted_is_crossing|✅ proved - incomplete|shostak|0.620|
|counted_or_uncounted_crossing|✅ proved - incomplete|shostak|1.965|
|crossing_on_perimeter|✅ proved - incomplete|shostak|0.020|
|set_before_subset|✅ proved - complete|shostak|0.030|
|crossings_subset|✅ proved - incomplete|shostak|0.042|
|crossing_before_diff|✅ proved - incomplete|shostak|1.201|
|right_crossings_min|✅ proved - incomplete|shostak|2.234|
|right_crossings_max|✅ proved - incomplete|shostak|0.450|
|before_crossings_empty|✅ proved - incomplete|shostak|0.026|
|right_crossings_gap|✅ proved - incomplete|shostak|1.022|
|right_counted_gap|✅ proved - incomplete|shostak|0.427|
|between_crossings_even|✅ proved - incomplete|shostak|0.311|
|opposite_sides_of_crossing|✅ proved - incomplete|shostak|0.000|
|outgoing_follows_point_in|✅ proved - incomplete|shostak|0.060|
|before_crossing_in_polygon|✅ proved - incomplete|shostak|0.073|
|before_counted_odd_crossings|✅ proved - incomplete|shostak|0.060|
|before_counted_in_polygon|✅ proved - incomplete|shostak|0.129|
|counted_crossing_follows_point_inside|✅ proved - incomplete|shostak|0.290|

## `arb_direc_edge_crossing`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|points_on_ray_diff_norms|✅ proved - incomplete|shostak|0.271|
|points_on_ray_norms_on_ray|✅ proved - incomplete|shostak|0.357|
|counted_crossing_on_perimeter|✅ proved - incomplete|shostak|0.030|
|arb_crossings_subset|✅ proved - incomplete|shostak|0.290|
|arb_crossings_before_diff|✅ proved - incomplete|shostak|0.336|
|member_arb_crossings_on_perimeter|✅ proved - incomplete|shostak|0.093|
|arb_crossings_min|✅ proved - incomplete|shostak|0.092|
|arb_crossings_max|✅ proved - incomplete|shostak|0.133|
|before_arb_crossings_empty|✅ proved - incomplete|shostak|0.027|
|one_adjacent_edge_not_parallel|✅ proved - incomplete|shostak|0.193|
|key_arb_intersections_nonneg|✅ proved - incomplete|shostak|0.030|
|key_arb_intersections_subset|✅ proved - incomplete|shostak|0.694|
|on_parallel_not_adj_counted|✅ proved - incomplete|shostak|0.504|
|on_parallel_not_counted_crossing|✅ proved - incomplete|shostak|0.040|
|parallel_on_arb_line|✅ proved - incomplete|shostak|0.154|
|parallel_diff_norm|✅ proved - incomplete|shostak|0.105|
|parallel_vectors_diff_segment_endpoints|✅ proved - incomplete|shostak|0.942|
|parallel_point_diff_norm|✅ proved - incomplete|shostak|0.317|
|point_not_on_parallel_segment|✅ proved - incomplete|shostak|3.635|
|below_min_key_arb_not_on|✅ proved - incomplete|shostak|0.092|
|below_min_key_arb_crossing|✅ proved - incomplete|shostak|0.134|
|below_min_key_same_crossing_set|✅ proved - incomplete|shostak|1.007|
|key_intersections_subset_arb_crossings|✅ proved - incomplete|shostak|0.520|
|key_intersections_empty_arb_crossings|✅ proved - incomplete|shostak|0.040|
|empty_key_arb_only_parallel|✅ proved - incomplete|shostak|0.043|
|empty_key_arb_crossings_emptyset|✅ proved - incomplete|shostak|0.376|
|empty_key_arb_before_empty_crossings|✅ proved - incomplete|shostak|0.146|
|empty_key_arb_before_empty_crossings_neg_TCC1|✅ proved - incomplete|shostak|0.030|
|empty_key_arb_before_empty_crossings_neg|✅ proved - incomplete|shostak|0.349|
|empty_key_arb_no_crossings|✅ proved - incomplete|shostak|0.030|
|empty_key_arb_no_crossings_neg|✅ proved - incomplete|shostak|0.036|
|empty_key_arb_no_crossings_add|✅ proved - incomplete|shostak|0.097|
|card_add_crossing_set|✅ proved - incomplete|shostak|0.146|
|point_before_min_key_not_on|✅ proved - incomplete|shostak|0.087|
|point_before_min_neg_key_not_on|✅ proved - incomplete|shostak|0.097|
|bisect_vector_nonzero|✅ proved - incomplete|shostak|0.246|
|bisect_not_parallel_prev|✅ proved - incomplete|shostak|2.085|
|bisect_not_parallel_next|✅ proved - incomplete|shostak|1.290|
|counted_direction_not_parallel|✅ proved - incomplete|shostak|0.144|
|bisect_not_parallel_cross_nonzero_TCC1|✅ proved - incomplete|shostak|0.182|
|bisect_not_parallel_cross_nonzero|✅ proved - incomplete|shostak|10.728|
|key_arb_intersections_pos|✅ proved - incomplete|shostak|0.083|
|counted_key_arb_intersections_pos|✅ proved - incomplete|shostak|0.080|
|counted_key_arb_intersections_reverse_pos|✅ proved - incomplete|shostak|0.072|
|crossing_direction_counted|✅ proved - incomplete|shostak|0.124|
|crossing_direction_neg|✅ proved - incomplete|shostak|0.111|
|prev_point_ray_crossing_set|✅ proved - incomplete|shostak|0.339|
|later_point_ray_crossing_set|✅ proved - incomplete|shostak|0.293|
|empty_ray_intersection_sets|✅ proved - incomplete|shostak|0.061|
|parallel_intersections_pos|✅ proved - incomplete|shostak|0.091|
|min_all_intersections_key_TCC1|✅ proved - incomplete|shostak|0.050|
|min_all_intersections_key|✅ proved - incomplete|shostak|0.036|
|min_all_intersections_parallel_TCC1|✅ proved - incomplete|shostak|0.020|
|min_all_intersections_parallel|✅ proved - incomplete|shostak|0.056|
|all_intersections_pos|✅ proved - incomplete|shostak|0.196|
|nonempty_min_key_arb_intersections_TCC1|✅ proved - incomplete|shostak|0.020|
|nonempty_min_key_arb_intersections|✅ proved - incomplete|shostak|0.147|
|nonempty_min_parallel_intersections_TCC1|✅ proved - incomplete|shostak|0.026|
|nonempty_min_parallel_intersections|✅ proved - incomplete|shostak|0.157|
|no_parallel_intersections_not_on_segment|✅ proved - incomplete|shostak|3.063|
|empty_parallel_intersections_not_on|✅ proved - incomplete|shostak|3.088|
|empty_all_not_on_perimeter|✅ proved - incomplete|shostak|0.116|
|below_min_all_arb_not_on|✅ proved - incomplete|shostak|0.084|
|below_min_all_arb_not_on_neg|✅ proved - incomplete|shostak|0.158|

## `polygon_miter_sequences`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|rightward_crossing_index_TCC1|✅ proved - incomplete|shostak|0.050|
|rightward_crossing_index_reverse_TCC1|✅ proved - incomplete|shostak|0.021|
|rightward_crossing_index_reverse_TCC2|✅ proved - incomplete|shostak|0.010|
|rightward_crossing_index_reverse|✅ proved - incomplete|shostak|1.765|
|crossed_edge_rising_or_falling|✅ proved - incomplete|shostak|0.568|
|leftmost_intersection_on_crossed_edge|✅ proved - incomplete|shostak|0.574|
|crossing_within_falling_edge_y_range|✅ proved - incomplete|shostak|0.000|
|cross_horiz_seq_with_falling_edge_pos|✅ proved - incomplete|shostak|5.276|
|between_edges_at_falling_edge_vertex|✅ proved - incomplete|shostak|4.303|
|crossing_falling_off_right_side|✅ proved - incomplete|shostak|0.301|
|three_pt_miniseq_in_polygon|✅ proved - incomplete|shostak|0.104|
|four_pt_miniseq_in_polygon|✅ proved - incomplete|shostak|0.160|
|polygon_vertex_seq_single_loop_TCC1|✅ proved - incomplete|shostak|0.065|
|polygon_vertex_seq_single_loop_TCC2|✅ proved - incomplete|shostak|0.282|
|polygon_vertex_seq_single_loop|✅ proved - incomplete|shostak|0.282|
|polygon_vertex_seq_intercept_eq_0_TCC1|✅ proved - incomplete|shostak|0.302|
|polygon_vertex_seq_intercept_eq_0|✅ proved - incomplete|shostak|0.267|
|polygon_vertex_seq_TCC1|✅ proved - incomplete|shostak|1.381|
|polygon_vertex_seq_intercept|✅ proved - incomplete|shostak|0.290|
|min_seg_separation_eq_min_edge_separation|✅ proved - incomplete|shostak|5.096|
|max_miter_offset_lt_min_edge_sep|✅ proved - incomplete|shostak|0.559|
|three_pt_offset_dist_in_polygon_TCC1|✅ proved - incomplete|shostak|0.050|
|three_pt_offset_dist_in_polygon|✅ proved - incomplete|shostak|0.562|
|four_pt_offset_dist_in_polygon_TCC1|✅ proved - incomplete|shostak|0.090|
|four_pt_offset_dist_in_polygon|✅ proved - incomplete|shostak|1.244|
|polygon_miter_point_seq_element_TCC1|✅ proved - incomplete|shostak|0.291|
|polygon_miter_point_seq_element_TCC2|✅ proved - incomplete|shostak|0.242|
|polygon_miter_point_seq_element_TCC3|✅ proved - incomplete|shostak|0.070|
|polygon_miter_point_seq_element_TCC4|✅ proved - incomplete|shostak|0.050|
|polygon_miter_point_seq_element|✅ proved - incomplete|shostak|0.640|
|point_on_perim_iff_on_vertex_seq|✅ proved - incomplete|shostak|0.353|
|min_seg_sep_le_edge_length|✅ proved - incomplete|shostak|0.481|
|min_miter_sine_le_vertex_sine_TCC1|✅ proved - incomplete|shostak|0.070|
|min_miter_sine_le_vertex_sine_TCC2|✅ proved - incomplete|shostak|0.078|
|min_miter_sine_le_vertex_sine|✅ proved - incomplete|shostak|0.676|
|vertex_miter_point_TCC1|✅ proved - incomplete|shostak|0.020|
|vertex_miter_point_TCC2|✅ proved - incomplete|shostak|0.052|
|seg_from_miter_point_not_on_perim_TCC1|✅ proved - incomplete|shostak|0.780|
|seg_from_miter_point_not_on_perim|✅ proved - incomplete|shostak|21.790|
|miter_point_seqs_not_on_perim_TCC1|✅ proved - incomplete|shostak|0.112|
|miter_point_seqs_not_on_perim|✅ proved - incomplete|shostak|0.536|
|miter_point_in_polygon_miter_seg_seq|✅ proved - incomplete|shostak|1.835|
|miter_point_not_on_perim|✅ proved - incomplete|shostak|0.169|
|miter_point_dist_to_vertex_bound|✅ proved - incomplete|shostak|0.744|
|singleton_contact_free_path|✅ proved - incomplete|shostak|0.024|
|append_contact_free_paths_TCC1|✅ proved - incomplete|shostak|0.050|
|append_contact_free_paths_TCC2|✅ proved - incomplete|shostak|0.039|
|append_contact_free_paths|✅ proved - incomplete|shostak|0.060|
|append_contact_free_paths_excl|✅ proved - incomplete|shostak|0.068|
|polygon_miter_pt_seq_contact_free|✅ proved - incomplete|shostak|0.293|
|polygon_miter_pt_subseq_contact_free_TCC1|✅ proved - incomplete|shostak|0.819|
|polygon_miter_pt_subseq_contact_free|✅ proved - incomplete|shostak|0.613|
|polygon_miter_pt_subseq_pair_contact_free_TCC1|✅ proved - incomplete|shostak|0.561|
|polygon_miter_pt_subseq_pair_contact_free_TCC2|✅ proved - incomplete|shostak|0.716|
|polygon_miter_pt_subseq_pair_contact_free|✅ proved - incomplete|shostak|2.284|
|below_left_falling_seg_point_right_TCC1|✅ proved - complete|shostak|0.030|
|below_left_falling_seg_point_right|✅ proved - incomplete|shostak|1.495|
|above_left_falling_seg_point_right_TCC1|✅ proved - complete|shostak|0.030|
|above_left_falling_seg_point_right_TCC2|✅ proved - complete|shostak|0.036|
|above_left_falling_seg_point_right|✅ proved - incomplete|shostak|0.217|
|on_seg_from_miter_pt_to_endpoint_TCC1|✅ proved - incomplete|shostak|0.130|
|on_seg_from_miter_pt_to_endpoint_TCC2|✅ proved - incomplete|shostak|0.223|
|on_seg_from_miter_pt_to_endpoint_TCC3|✅ proved - incomplete|shostak|0.106|
|on_seg_from_miter_pt_to_endpoint_TCC4|✅ proved - incomplete|shostak|0.192|
|on_seg_from_miter_pt_to_endpoint|✅ proved - incomplete|shostak|11.863|
|on_seg_from_miter_pt_contact_free_TCC1|✅ proved - incomplete|shostak|0.130|
|on_seg_from_miter_pt_contact_free_TCC2|✅ proved - incomplete|shostak|0.061|
|on_seg_from_miter_pt_contact_free|✅ proved - incomplete|shostak|8.427|
|vertex_to_miter_pt_seq_contact_free_TCC1|✅ proved - incomplete|shostak|0.151|
|vertex_to_miter_pt_seq_contact_free_TCC2|✅ proved - incomplete|shostak|0.060|
|vertex_to_miter_pt_seq_contact_free|✅ proved - incomplete|shostak|14.374|
|next_vtx_to_miter_pt_subcase_zero_TCC1|✅ proved - incomplete|shostak|0.450|
|next_vtx_to_miter_pt_subcase_zero_TCC2|✅ proved - incomplete|shostak|0.108|
|next_vtx_to_miter_pt_subcase_zero_TCC3|✅ proved - incomplete|shostak|0.242|
|next_vtx_to_miter_pt_subcase_zero|✅ proved - incomplete|shostak|17.034|
|next_vtx_to_miter_pt_subcase_TCC1|✅ proved - incomplete|shostak|0.081|
|next_vtx_to_miter_pt_subcase_TCC2|✅ proved - incomplete|shostak|0.097|
|next_vtx_to_miter_pt_subcase_TCC3|✅ proved - incomplete|shostak|1.019|
|next_vtx_to_miter_pt_subcase|✅ proved - incomplete|shostak|1.468|
|next_vtx_to_miter_pt_seq_contact_free_TCC1|✅ proved - incomplete|shostak|0.138|
|next_vtx_to_miter_pt_seq_contact_free_TCC2|✅ proved - incomplete|shostak|0.161|
|next_vtx_to_miter_pt_seq_contact_free|✅ proved - incomplete|shostak|16.304|
|nonvertex_to_miter_pt_seq_contact_free_TCC1|✅ proved - incomplete|shostak|0.140|
|nonvertex_to_miter_pt_seq_contact_free_TCC2|✅ proved - incomplete|shostak|0.066|
|nonvertex_to_miter_pt_seq_contact_free|✅ proved - incomplete|shostak|2.198|
|rightward_crossing_falling_edge_cases|✅ proved - incomplete|shostak|1.105|
|path_to_miter_pt_seq_contact_free_TCC1|✅ proved - incomplete|shostak|0.144|
|path_to_miter_pt_seq_contact_free_TCC2|✅ proved - incomplete|shostak|0.059|
|path_to_miter_pt_seq_contact_free|✅ proved - incomplete|shostak|3.904|

## `polygon_membership`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|serpentine_ray_TCC1|✅ proved - incomplete|shostak|0.040|
|serpentine_ray_TCC2|✅ proved - incomplete|shostak|0.059|
|serp_ray_outside?_TCC1|✅ proved - incomplete|shostak|0.040|
|serp_ray_outside?_TCC2|✅ proved - incomplete|shostak|0.060|
|serp_ray_outside?_TCC3|✅ proved - incomplete|shostak|0.083|
|serp_ray_outside?_TCC4|✅ proved - incomplete|shostak|0.050|
|point_outside_polygon?_TCC1|✅ proved - incomplete|shostak|0.036|
|perimeter_not_outside|✅ proved - incomplete|shostak|0.123|
|point_on_serp_ray?_TCC1|✅ proved - incomplete|shostak|0.040|
|downstream_point_outside|✅ proved - incomplete|shostak|1.987|
|pt_inside_imp_inside_rev_polygon_TCC1|✅ proved - incomplete|shostak|0.020|
|pt_inside_imp_inside_rev_polygon|✅ proved - incomplete|shostak|0.620|
|pt_inside_eqv_inside_rev_polygon_TCC1|✅ proved - incomplete|shostak|0.010|
|pt_inside_eqv_inside_rev_polygon|✅ proved - incomplete|shostak|0.041|
|pt_outside_eqv_outside_rev_polygon|✅ proved - incomplete|shostak|0.199|
|prev_edge_not_crossed_by_perp_left_segment_TCC1|✅ proved - incomplete|shostak|0.032|
|prev_edge_not_crossed_by_perp_left_segment|✅ proved - incomplete|shostak|2.857|
|prev_edge_not_crossed_by_perp_right_segment_TCC1|✅ proved - incomplete|shostak|0.030|
|prev_edge_not_crossed_by_perp_right_segment|✅ proved - incomplete|shostak|2.855|
|next_edge_not_crossed_by_perp_left_segment_TCC1|✅ proved - incomplete|shostak|0.024|
|next_edge_not_crossed_by_perp_left_segment|✅ proved - incomplete|shostak|3.225|
|next_edge_not_crossed_by_perp_right_segment_TCC1|✅ proved - incomplete|shostak|0.033|
|next_edge_not_crossed_by_perp_right_segment|✅ proved - incomplete|shostak|3.460|
|nearby_perp_right_segment_not_on_perim_TCC1|✅ proved - incomplete|shostak|0.040|
|nearby_perp_right_segment_not_on_perim|✅ proved - incomplete|shostak|3.314|
|nearby_perp_left_segment_not_on_perim_TCC1|✅ proved - incomplete|shostak|0.020|
|nearby_perp_left_segment_not_on_perim|✅ proved - incomplete|shostak|3.287|
|rightward_offset_pt_not_on_perim|✅ proved - incomplete|shostak|0.295|
|leftward_offset_pt_not_on_perim|✅ proved - incomplete|shostak|0.305|
|on_perimeter_edge_path?_TCC1|✅ proved - incomplete|shostak|0.283|
|on_perimeter_vertex_path?_TCC1|✅ proved - incomplete|shostak|0.311|
|perimeter_segment_path_TCC1|✅ proved - incomplete|shostak|0.080|
|perimeter_segment_path_TCC2|✅ proved - incomplete|shostak|14.236|
|perimeter_segment_path_TCC3|✅ proved - incomplete|shostak|0.187|
|perimeter_segment_path_TCC4|✅ proved - incomplete|shostak|0.272|
|perimeter_segment_path_TCC5|✅ proved - incomplete|shostak|0.182|
|perimeter_segment_path_TCC6|✅ proved - incomplete|shostak|0.000|
|initial_point_perimeter_segment_path_TCC1|✅ proved - incomplete|shostak|0.049|
|initial_point_perimeter_segment_path|✅ proved - incomplete|shostak|0.595|
|final_point_perimeter_segment_path_TCC1|✅ proved - incomplete|shostak|0.052|
|final_point_perimeter_segment_path|✅ proved - incomplete|shostak|1.307|
|perim_segment_path_on_perim|✅ proved - incomplete|shostak|3.928|
|append_path_to_s_ray_TCC1|✅ proved - incomplete|shostak|0.070|
|append_path_to_s_ray_TCC2|✅ proved - incomplete|shostak|0.051|
|append_path_to_s_ray_TCC3|✅ proved - incomplete|shostak|0.030|
|append_path_to_s_ray_TCC4|✅ proved - incomplete|shostak|0.050|
|append_path_to_s_ray_TCC5|✅ proved - incomplete|shostak|0.612|
|truncated_serp_ray_TCC1|✅ proved - incomplete|shostak|0.044|
|truncated_serp_ray_TCC2|✅ proved - incomplete|shostak|0.316|
|truncated_serp_ray_TCC3|✅ proved - incomplete|shostak|0.330|
|truncated_serp_ray_TCC4|✅ proved - incomplete|shostak|0.411|
|truncated_serp_ray_TCC5|✅ proved - incomplete|shostak|0.157|
|truncated_serp_ray_TCC6|✅ proved - incomplete|shostak|0.280|
|truncated_serp_ray_TCC7|✅ proved - incomplete|shostak|0.320|
|truncated_serp_ray_TCC8|✅ proved - incomplete|shostak|1.898|
|initial_point_append_path_to_s_ray_TCC1|✅ proved - incomplete|shostak|0.060|
|initial_point_append_path_to_s_ray_TCC2|✅ proved - incomplete|shostak|0.053|
|initial_point_append_path_to_s_ray|✅ proved - incomplete|shostak|0.189|
|append_outside_seq_to_s_ray|✅ proved - incomplete|shostak|1.247|
|initial_point_of_truncated_s_ray_TCC1|✅ proved - incomplete|shostak|0.054|
|initial_point_of_truncated_s_ray|✅ proved - incomplete|shostak|0.332|
|point_on_truncated_s_ray_on_s_ray|✅ proved - incomplete|shostak|1.074|
|truncated_s_ray_outside|✅ proved - incomplete|shostak|0.048|
|point_in_polygon_conds_equiv_horiz_TCC1|✅ proved - incomplete|shostak|0.020|
|point_in_polygon_conds_equiv_horiz|✅ proved - incomplete|shostak|4.220|
|extend_points_inside_polygon|✅ proved - incomplete|shostak|0.798|
|extend_points_inside_polygon_excl|✅ proved - incomplete|shostak|0.808|
|extend_points_outside_polygon|✅ proved - incomplete|shostak|0.209|
|extend_points_outside_polygon_excl|✅ proved - incomplete|shostak|1.344|
|point_out_pts_on_non_perim_path_out_TCC1|✅ proved - incomplete|shostak|0.040|
|point_out_pts_on_non_perim_path_out|✅ proved - incomplete|shostak|0.980|
|point_in_pts_on_non_perim_path_in_TCC1|✅ proved - incomplete|shostak|0.040|
|point_in_pts_on_non_perim_path_in|✅ proved - incomplete|shostak|0.933|
|topleft_miter_point_in_or_out_TCC1|✅ proved - incomplete|shostak|0.085|
|topleft_miter_point_in_or_out_TCC2|✅ proved - incomplete|shostak|0.060|
|topleft_miter_point_in_or_out|✅ proved - incomplete|shostak|0.217|
|polygon_miter_sequence_in_or_out_TCC1|✅ proved - incomplete|shostak|0.106|
|polygon_miter_sequence_in_or_out|✅ proved - incomplete|shostak|10.479|
|falling_edge_imp_ccw_in_or_out|✅ proved - incomplete|shostak|0.732|
|ccw_imp_falling_edge_in_or_out|✅ proved - incomplete|shostak|1.241|
|point_in_has_rightward_crossings|✅ proved - incomplete|shostak|1.144|
|point_outside_imp_not_inside|✅ proved - incomplete|shostak|1.980|
|point_outside_imp_not_in|✅ proved - incomplete|shostak|0.058|
|point_not_in_imp_outside|✅ proved - incomplete|shostak|1.105|
|point_out_not_in|✅ proved - incomplete|shostak|0.040|
|same_perim_pts_imp_same_exterior_pts|✅ proved - incomplete|shostak|0.184|
|same_perim_pts_imp_same_interior_pts|✅ proved - incomplete|shostak|0.051|
|falling_edge_ccw_in_or_out|✅ proved - incomplete|shostak|0.390|
|ccw_falling_edge_in_or_out|✅ proved - incomplete|shostak|0.529|
|nearest_rightward_crossing_in_or_out|✅ proved - incomplete|shostak|0.060|
|point_in_has_inside_segments_TCC1|✅ proved - incomplete|shostak|0.052|
|point_in_has_inside_segments|✅ proved - incomplete|shostak|4.259|
|point_outside_not_in_polygon_arb|✅ proved - incomplete|shostak|0.030|
|point_outside_not_in_polygon_arb_neg|✅ proved - incomplete|shostak|0.030|
|left_right_midpoints_in_out|✅ proved - incomplete|shostak|5.361|
|right_left_midpoints_in_out|✅ proved - incomplete|shostak|5.349|
|left_right_midpoints_out_in|✅ proved - incomplete|shostak|5.406|
|right_left_midpoints_out_in|✅ proved - incomplete|shostak|5.388|
|counted_crossing_direction_exists|✅ proved - incomplete|shostak|0.904|
|free_ray_point_outside|✅ proved - incomplete|shostak|0.157|
|only_parallel_ray_point_outside|✅ proved - incomplete|shostak|0.114|
|one_dir_empty_intersections_TCC1|✅ proved - incomplete|shostak|0.027|
|one_dir_empty_intersections|✅ proved - incomplete|shostak|0.415|
|one_dir_empty_point_outside|✅ proved - incomplete|shostak|0.271|
|one_dir_out_other_in_polygon|✅ proved - incomplete|shostak|0.345|
|opposite_sides_of_crossing_arb|✅ proved - incomplete|shostak|0.380|
|nearby_point_outside_exists_either|✅ proved - incomplete|shostak|0.000|
|nearby_point_outside_exists|✅ proved - incomplete|shostak|0.111|
|nearby_point_in_polygon_TCC1|✅ proved - incomplete|shostak|0.071|
|nearby_point_in_polygon|✅ proved - incomplete|shostak|0.119|
|A_perim_outside_imp_B_perim_inside|✅ proved - incomplete|shostak|0.316|
|overlap_imp_inside_pt_on_perim|✅ proved - incomplete|shostak|0.159|
|outside_C_inside_A|✅ proved - incomplete|shostak|0.627|
|container_edges_not_inside|✅ proved - incomplete|shostak|0.441|
|contained_not_on_perimeter|✅ proved - incomplete|shostak|0.030|
|contained_membership|✅ proved - incomplete|shostak|0.188|
|contained_membership_cor|✅ proved - incomplete|shostak|0.040|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib/pvsio_utils/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230712-static-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230710-tcc-gen.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230707-defattach.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230706-extrategies.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`|
