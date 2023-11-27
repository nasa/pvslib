# Summary for `polygons`
Run started at 3:29:20 11/25/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **566**   | **566**    | **566**    | **0**  | **5:15.584 s**   |
|top|0|0|0|0|0.000|
|polygons_2d|143|143|143|0|58.829|
|topleft_vertex|23|23|23|0|3.651|
|polygon_attributes|31|31|31|0|15.598|
|rightward_crossings|20|20|20|0|11.207|
|reverse_polygons|38|38|38|0|12.276|
|horiz_edge_crossing|41|41|41|0|23.666|
|arb_direc_edge_crossing|64|64|64|0|22.755|
|polygon_miter_sequences|89|89|89|0|1:36.669|
|polygon_membership|117|117|117|0|1:10.933|
## Detailed Summary 
## `top`
No formula declaration found.
## `polygons_2d`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|prev_index_TCC1|✅ proved - incomplete|shostak|0.103|
|prev_index_TCC2|✅ proved - incomplete|shostak|0.020|
|next_index_TCC1|✅ proved - incomplete|shostak|0.020|
|next_index_TCC2|✅ proved - incomplete|shostak|0.030|
|prev_next_is_original|✅ proved - incomplete|shostak|0.040|
|next_prev_is_original|✅ proved - incomplete|shostak|0.019|
|rem_diff_eq_0|✅ proved - complete|shostak|0.140|
|rem_diff_eq_0_shift|✅ proved - complete|shostak|0.139|
|rem_add1_eq_next_index|✅ proved - incomplete|shostak|0.180|
|rem_sum3|✅ proved - complete|shostak|0.106|
|vertex_is_vertex|✅ proved - incomplete|shostak|0.020|
|vertex_is_not_nonvertex|✅ proved - incomplete|shostak|0.020|
|edges_of_polygon_TCC1|✅ proved - incomplete|shostak|0.060|
|edge_is_edge|✅ proved - incomplete|shostak|0.029|
|find_helper_TCC1|✅ proved - incomplete|shostak|0.030|
|find_helper_TCC2|✅ proved - incomplete|shostak|0.020|
|find_helper_TCC3|✅ proved - incomplete|shostak|0.010|
|find_helper_TCC4|✅ proved - incomplete|shostak|0.030|
|find_helper_TCC5|✅ proved - incomplete|shostak|0.025|
|find_helper_TCC6|✅ proved - incomplete|shostak|0.060|
|find_helper_invariant_TCC1|✅ proved - incomplete|shostak|0.030|
|find_helper_invariant_TCC2|✅ proved - incomplete|shostak|0.040|
|find_helper_invariant|✅ proved - incomplete|shostak|0.231|
|find_index_TCC1|✅ proved - incomplete|shostak|0.010|
|find_index_TCC2|✅ proved - incomplete|shostak|0.050|
|next_index_distinct|✅ proved - incomplete|shostak|0.030|
|vertex_find_helper_TCC1|✅ proved - incomplete|shostak|0.016|
|vertex_find_helper|✅ proved - incomplete|shostak|0.090|
|vertex_find_index|✅ proved - incomplete|shostak|0.020|
|find_helper_self_TCC1|✅ proved - incomplete|shostak|0.020|
|find_helper_self_TCC2|✅ proved - incomplete|shostak|0.016|
|find_helper_self|✅ proved - incomplete|shostak|0.190|
|find_index_self_TCC1|✅ proved - incomplete|shostak|0.026|
|find_index_self|✅ proved - incomplete|shostak|0.020|
|find_index_self_index|✅ proved - incomplete|shostak|0.050|
|segment_in_edges_TCC1|✅ proved - incomplete|shostak|0.090|
|segment_in_edges|✅ proved - incomplete|shostak|0.046|
|edge_segment_has_vertices|✅ proved - incomplete|shostak|0.020|
|find_index_segment_is_edge|✅ proved - incomplete|shostak|0.030|
|vertex_neq_next|✅ proved - incomplete|shostak|0.060|
|vertex_neq_next_2|✅ proved - incomplete|shostak|0.020|
|vertex_neq_prev|✅ proved - incomplete|shostak|0.046|
|vertex_neq_prev_2|✅ proved - incomplete|shostak|0.010|
|prev_vertex_neq_next_vertex|✅ proved - incomplete|shostak|0.070|
|vertices_diff_next_nonzero|✅ proved - incomplete|shostak|0.020|
|vertices_diff_prev_nonzero|✅ proved - incomplete|shostak|0.010|
|second_edge_does_not_double_back_TCC1|✅ proved - incomplete|shostak|0.027|
|second_edge_does_not_double_back_TCC2|✅ proved - incomplete|shostak|0.070|
|second_edge_does_not_double_back|✅ proved - incomplete|shostak|0.145|
|vertex_on_edge|✅ proved - incomplete|shostak|0.010|
|next_vertex_on_edge|✅ proved - incomplete|shostak|0.010|
|vertex_on_prev_edge|✅ proved - incomplete|shostak|0.050|
|norm_vertex_diff_next_pos|✅ proved - incomplete|shostak|0.026|
|norm_vertex_diff_prev_pos|✅ proved - incomplete|shostak|0.030|
|two_adjacent_edges_TCC1|✅ proved - incomplete|shostak|0.040|
|two_adjacent_edges_TCC2|✅ proved - incomplete|shostak|0.066|
|two_adjacent_edges|✅ proved - incomplete|shostak|0.070|
|same_edge_equiv_same_points|✅ proved - incomplete|shostak|0.362|
|rem_plus_1_eq_next_index|✅ proved - incomplete|shostak|0.260|
|rem_minus_1_eq_prev_index|✅ proved - incomplete|shostak|0.082|
|rem_plus_1_eq_next_index_2|✅ proved - incomplete|shostak|0.170|
|equal_or_adjacent_edge_reflexive|✅ proved - complete|shostak|0.010|
|equal_or_adjacent_edge_symmetric|✅ proved - complete|shostak|0.126|
|equal_or_adjacent_edge_not_transitive|✅ proved - complete|shostak|0.030|
|adj_edges_share_vertex|✅ proved - incomplete|shostak|0.135|
|short_antenna_edge_midpoint_on_longer_edge|✅ proved - incomplete|shostak|3.491|
|short_antenna_edge_midpoint_not_endpoint|✅ proved - incomplete|shostak|0.371|
|antenna_edges_share_many_points|✅ proved - incomplete|shostak|22.830|
|only_common_point_is_vertex_means_equal_or_adjacent|✅ proved - incomplete|shostak|2.642|
|common_pt_on_adj_edges_must_be_vertex_unless_antenna|✅ proved - incomplete|shostak|4.529|
|polygon_edges_do_not_cross_defs_eq|✅ proved - incomplete|shostak|0.618|
|example_right_triangle_TCC1|✅ proved - complete|shostak|0.050|
|simple_polygon_2d_TCC1|✅ proved - incomplete|shostak|1.254|
|example_diamond_TCC1|✅ proved - complete|shostak|0.082|
|example_diamond_TCC2|✅ proved - incomplete|shostak|2.504|
|next_edge_shares_only_vertex|✅ proved - incomplete|shostak|0.570|
|prev_edge_shares_only_vertex|✅ proved - incomplete|shostak|0.324|
|adjacent_edges_share_only_vertex|✅ proved - incomplete|shostak|0.261|
|next_edge_not_dir_parallel|✅ proved - incomplete|shostak|0.774|
|prev_edge_not_dir_parallel|✅ proved - incomplete|shostak|0.824|
|adjacent_edges_not_dir_parallel|✅ proved - incomplete|shostak|0.251|
|prev_vertex_not_on_ray_of_edge_TCC1|✅ proved - incomplete|shostak|0.020|
|prev_vertex_not_on_ray_of_edge|✅ proved - incomplete|shostak|0.345|
|only_adjacent_edges_intersect|✅ proved - incomplete|shostak|1.101|
|adjacent_edges_do_not_fold_back|✅ proved - incomplete|shostak|0.070|
|points_on_distinct_edges_differ|✅ proved - incomplete|shostak|0.095|
|edge_x_left_or_right_imp_cross_neq_0|✅ proved - incomplete|shostak|0.660|
|edge_y_above_or_below_imp_cross_neq_0|✅ proved - incomplete|shostak|0.659|
|shared_endpoints_imp_same_edge|✅ proved - incomplete|shostak|0.308|
|same_polygon_edge_overlaps_equal|✅ proved - incomplete|shostak|0.415|
|interior_point_is_nonvertex|✅ proved - incomplete|shostak|1.524|
|nonvertex_on_one_edge|✅ proved - incomplete|shostak|0.160|
|vertex_is_segment_endpoint|✅ proved - incomplete|shostak|0.070|
|vertex_is_edge_endpoint|✅ proved - incomplete|shostak|0.124|
|vertex_on_two_edges|✅ proved - incomplete|shostak|0.065|
|is_point_in_polygon_recursive?_TCC1|✅ proved - incomplete|shostak|0.020|
|is_point_in_polygon_recursive?_TCC2|✅ proved - incomplete|shostak|0.020|
|is_point_in_polygon_recursive_negation|✅ proved - incomplete|shostak|0.314|
|is_point_in_polygon_inclusive?_TCC1|✅ proved - incomplete|shostak|0.020|
|center_of_diamond_is_inside|✅ proved - incomplete|shostak|0.802|
|outside_left_of_diamond_is_outside|✅ proved - incomplete|shostak|0.315|
|above_center_of_diamond_is_inside|✅ proved - incomplete|shostak|1.071|
|above_outside_left_of_diamond_is_outside|✅ proved - incomplete|shostak|0.376|
|way_above_diamond_is_outside|✅ proved - incomplete|shostak|0.317|
|polygons_are_inside_themselves|✅ proved - incomplete|shostak|0.382|
|insert_vertex_TCC1|✅ proved - incomplete|shostak|0.040|
|insert_vertex_TCC2|✅ proved - incomplete|shostak|0.010|
|insert_vertex_TCC3|✅ proved - incomplete|shostak|0.017|
|insert_vertex_TCC4|✅ proved - incomplete|shostak|0.040|
|insert_vertex_TCC5|✅ proved - incomplete|shostak|0.306|
|insert_vertex_TCC6|✅ proved - incomplete|shostak|0.046|
|insert_vertex_seq_TCC1|✅ proved - incomplete|shostak|0.020|
|insert_vertex_seq_TCC2|✅ proved - incomplete|shostak|0.020|
|insert_vertex_seq_TCC3|✅ proved - incomplete|shostak|0.020|
|insert_vertex_seq_TCC4|✅ proved - incomplete|shostak|0.056|
|insert_vertex_seq_TCC5|✅ proved - incomplete|shostak|0.060|
|insert_vertex_seq_TCC6|✅ proved - incomplete|shostak|0.040|
|insert_vertex_seq_TCC7|✅ proved - incomplete|shostak|0.087|
|insert_vertex_seq_TCC8|✅ proved - incomplete|shostak|0.020|
|insert_vertex_seq_TCC9|✅ proved - incomplete|shostak|0.110|
|polygon_segment_is_not_outside_inclusive|✅ proved - incomplete|shostak|0.703|
|polygon_segment_is_outside_exclusive|✅ proved - incomplete|shostak|0.020|
|polygon_segment_is_inside_inclusive|✅ proved - incomplete|shostak|0.016|
|polygon_segment_is_not_inside_exclusive|✅ proved - incomplete|shostak|0.676|
|path_outside_inclusive?_TCC1|✅ proved - incomplete|shostak|0.020|
|path_outside_inclusive?_TCC2|✅ proved - incomplete|shostak|0.030|
|path_outside_inclusive?_TCC3|✅ proved - incomplete|shostak|0.057|
|point_on_polygon_perimeter?_eq_is_point_on_polygon_perimeter?|✅ proved - incomplete|shostak|0.020|
|find_index_any_rec_TCC1|✅ proved - incomplete|shostak|0.030|
|find_index_any_rec_TCC2|✅ proved - incomplete|shostak|0.030|
|find_index_any_rec_TCC3|✅ proved - incomplete|shostak|0.040|
|find_index_any_TCC1|✅ proved - incomplete|shostak|0.016|
|perimeter_find_index_any|✅ proved - incomplete|shostak|0.266|
|point_on_find_index_segment_TCC1|✅ proved - incomplete|shostak|0.020|
|point_on_find_index_segment|✅ proved - incomplete|shostak|0.195|
|find_index_any_segment_rec_TCC1|✅ proved - incomplete|shostak|0.020|
|find_index_any_segment_rec|✅ proved - incomplete|shostak|0.269|
|find_index_any_segment|✅ proved - incomplete|shostak|0.047|
|find_index_any_self|✅ proved - incomplete|shostak|0.030|
|point_on_segment_rem_endpoints_TCC1|✅ proved - incomplete|shostak|0.130|
|point_on_segment_rem_endpoints|✅ proved - incomplete|shostak|0.339|
|point_on_segment_rem_endpoints_2_TCC1|✅ proved - incomplete|shostak|0.100|
|point_on_segment_rem_endpoints_2|✅ proved - incomplete|shostak|0.154|

## `topleft_vertex`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|leftmost_vertex_val_TCC1|✅ proved - incomplete|shostak|0.030|
|exists_leftmost_vertex_val|✅ proved - incomplete|shostak|0.040|
|leftmost_vertex_val_is_min|✅ proved - incomplete|shostak|0.060|
|at_least_one_leftmost|✅ proved - incomplete|shostak|0.020|
|topleft_vertex_val_TCC1|✅ proved - incomplete|shostak|0.035|
|topleft_vertex_val_is_max|✅ proved - incomplete|shostak|0.040|
|topleft_vertex_idx_TCC1|✅ proved - incomplete|shostak|0.234|
|leftmost_is_topleft_x|✅ proved - incomplete|shostak|0.020|
|leftmost_has_min_x|✅ proved - incomplete|shostak|0.030|
|topmost_is_topleft_y|✅ proved - incomplete|shostak|0.020|
|topmost_has_max_y|✅ proved - incomplete|shostak|0.030|
|leftmost_xval_le_segment|✅ proved - incomplete|shostak|0.075|
|leftmost_xval_lt_segment|✅ proved - incomplete|shostak|0.080|
|leftmost_xval_lt_segment_eq|✅ proved - incomplete|shostak|0.163|
|leftmost_vtx_val_le_any_perim_point|✅ proved - incomplete|shostak|0.030|
|topmost_yval_ge_segment|✅ proved - incomplete|shostak|0.075|
|topmost_yval_gt_segment|✅ proved - incomplete|shostak|0.080|
|topleft_vertex_bounds_vertices|✅ proved - incomplete|shostak|0.085|
|topleft_vertex_bounds_all_points|✅ proved - incomplete|shostak|0.389|
|min_vertex_yval_TCC1|✅ proved - incomplete|shostak|0.030|
|not_all_vertices_collinear_horiz|✅ proved - incomplete|shostak|0.369|
|falling_edge_exists|✅ proved - incomplete|shostak|0.870|
|rising_edge_exists|✅ proved - incomplete|shostak|0.846|

## `polygon_attributes`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|min_edge_sep_vertex_TCC1|✅ proved - incomplete|shostak|0.030|
|min_edge_sep_vertex_TCC2|✅ proved - incomplete|shostak|0.061|
|min_edge_sep_vertex_TCC3|✅ proved - incomplete|shostak|0.121|
|min_edge_sep_vertex_TCC4|✅ proved - incomplete|shostak|0.133|
|min_edge_separation_TCC1|✅ proved - incomplete|shostak|0.020|
|min_edge_separation_TCC2|✅ proved - incomplete|shostak|0.050|
|min_edge_sep_vertex_le_dist_to_vtx|✅ proved - incomplete|shostak|2.235|
|min_edge_separation_is_min|✅ proved - incomplete|shostak|0.314|
|min_edge_sep_TCC1|✅ proved - incomplete|shostak|2.395|
|min_edge_sep_le_min_edge_separation|✅ proved - incomplete|shostak|0.578|
|separation_distance_bounds_edge_length|✅ proved - incomplete|shostak|3.970|
|min_edge_sep_all_points|✅ proved - incomplete|shostak|0.410|
|sines_of_edge_angles_TCC1|✅ proved - incomplete|shostak|0.030|
|sines_of_edge_angles_TCC2|✅ proved - incomplete|shostak|0.026|
|sines_of_edge_angles_nonempty|✅ proved - incomplete|shostak|0.130|
|min_edge_angle_sine_TCC1|✅ proved - incomplete|shostak|0.020|
|min_edge_angle_sine_TCC2|✅ proved - incomplete|shostak|0.455|
|edge_angle_sine_sq_bound|✅ proved - incomplete|shostak|0.090|
|sines_of_inward_edge_angles_TCC1|✅ proved - incomplete|shostak|0.026|
|sines_of_inward_edge_angles_TCC2|✅ proved - incomplete|shostak|0.030|
|sines_of_inward_edge_angles_nonempty|✅ proved - incomplete|shostak|0.125|
|min_inward_edge_angle_sine_TCC1|✅ proved - incomplete|shostak|0.020|
|min_inward_edge_angle_sine_TCC2|✅ proved - incomplete|shostak|0.434|
|in_out_offset_lt_min_edge_sep|✅ proved - incomplete|shostak|0.533|
|ccw_imp_cross_topleft_edges_neg|✅ proved - incomplete|shostak|0.898|
|cross_topleft_edges_neg_imp_ccw|✅ proved - incomplete|shostak|1.054|
|ccw_eqv_cross_topleft_edges_neg|✅ proved - incomplete|shostak|0.243|
|nearby_pt_between_edges_not_on_perim|✅ proved - incomplete|shostak|0.952|
|miter_point_between_edges_TCC1|✅ proved - incomplete|shostak|0.020|
|miter_point_between_edges_TCC2|✅ proved - incomplete|shostak|0.063|
|miter_point_between_edges|✅ proved - incomplete|shostak|0.132|

## `rightward_crossings`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|edge_crossing_point_TCC1|✅ proved - complete|shostak|0.020|
|rightward_crossing_set_nonempty|✅ proved - incomplete|shostak|0.030|
|leftmost_crossing_xval_TCC1|✅ proved - incomplete|shostak|0.010|
|edge_crossing_point_on_perim|✅ proved - incomplete|shostak|0.496|
|leftmost_crossing_on_perim|✅ proved - incomplete|shostak|0.351|
|edge_crossing_point_xval_bound|✅ proved - incomplete|shostak|1.074|
|leftmost_crossing_xval_bound|✅ proved - incomplete|shostak|0.060|
|leftmost_crossing_xval_is_min|✅ proved - incomplete|shostak|0.070|
|leftmost_has_horiz_dist_from_p|✅ proved - incomplete|shostak|0.125|
|has_crossing_off_right_side_falling|✅ proved - incomplete|shostak|0.787|
|no_point_x_left_of_leftmost_crossing_TCC1|✅ proved - incomplete|shostak|0.020|
|no_point_x_left_of_leftmost_crossing|✅ proved - incomplete|shostak|0.898|
|no_edge_point_left_of_leftmost_crossing|✅ proved - incomplete|shostak|0.565|
|left_of_leftmost_crossing_not_on_perim_TCC1|✅ proved - incomplete|shostak|0.010|
|left_of_leftmost_crossing_not_on_perim|✅ proved - incomplete|shostak|2.890|
|left_of_leftmost_crossing_not_on_perim_2|✅ proved - incomplete|shostak|0.790|
|leftmost_crossing_on_polygon_edge|✅ proved - incomplete|shostak|0.070|
|leftmost_is_horiz_edge_endpoint|✅ proved - incomplete|shostak|0.615|
|left_of_leftmost_not_on_perim_edge|✅ proved - incomplete|shostak|1.674|
|only_one_edge_adj_leftmost_is_horiz|✅ proved - incomplete|shostak|0.652|

## `reverse_polygons`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|rev_polygon_index_TCC1|✅ proved - incomplete|shostak|0.019|
|rev_polygon_index_TCC2|✅ proved - incomplete|shostak|0.020|
|reverse_polygon_TCC1|✅ proved - incomplete|shostak|0.050|
|rev_polygon_index_reverse_TCC1|✅ proved - incomplete|shostak|0.020|
|rev_polygon_index_reverse|✅ proved - incomplete|shostak|0.030|
|rev_rev_polygon_index|✅ proved - incomplete|shostak|0.027|
|reverse_reverse_polygon|✅ proved - incomplete|shostak|0.110|
|reverse_vertex_rev_index_TCC1|✅ proved - incomplete|shostak|0.030|
|reverse_vertex_rev_index|✅ proved - incomplete|shostak|0.028|
|prev_index_rev_index_next|✅ proved - incomplete|shostak|0.080|
|prev_index_of_reverse|✅ proved - incomplete|shostak|0.070|
|next_index_rev_index_prev|✅ proved - incomplete|shostak|0.100|
|next_index_of_reverse|✅ proved - incomplete|shostak|0.073|
|edges_of_reverse_polygon|✅ proved - incomplete|shostak|0.100|
|point_on_edge_of_rev_polygon|✅ proved - incomplete|shostak|0.030|
|edge_of_rev_polygon_rev_segment|✅ proved - incomplete|shostak|0.153|
|edge_of_rev_polygon_imp_edge_rev_seg|✅ proved - incomplete|shostak|0.131|
|rev_polygon_edge_is_rev_segment|✅ proved - incomplete|shostak|0.120|
|on_rev_perim_eqv_on_perim|✅ proved - incomplete|shostak|0.459|
|reverse_polygon_is_simple|✅ proved - incomplete|shostak|0.145|
|topleft_index_of_reverse|✅ proved - incomplete|shostak|0.287|
|topleft_vertex_of_reverse_is_same|✅ proved - incomplete|shostak|0.020|
|find_index_any_reverse|✅ proved - incomplete|shostak|0.135|
|find_index_any_vertex_reverse|✅ proved - incomplete|shostak|0.153|
|ccw_reverse_polygon|✅ proved - incomplete|shostak|0.839|
|ccw_miter_pt_left_of_topleft_vtx_TCC1|✅ proved - incomplete|shostak|0.030|
|ccw_miter_pt_left_of_topleft_vtx_TCC2|✅ proved - incomplete|shostak|0.060|
|ccw_miter_pt_left_of_topleft_vtx|✅ proved - incomplete|shostak|5.907|
|segment_falling_reverse_rising_TCC1|✅ proved - incomplete|shostak|0.409|
|segment_falling_reverse_rising|✅ proved - incomplete|shostak|0.150|
|segment_falling_reverse_image_TCC1|✅ proved - incomplete|shostak|0.404|
|segment_falling_reverse_image|✅ proved - incomplete|shostak|0.150|
|reverse_seg_rightward_edge_crossing|✅ proved - incomplete|shostak|0.031|
|reverse_has_rightward_crossings|✅ proved - incomplete|shostak|0.853|
|edge_crossing_point_same_in_reverse_TCC1|✅ proved - incomplete|shostak|0.020|
|edge_crossing_point_same_in_reverse|✅ proved - incomplete|shostak|0.772|
|leftmost_crossing_same_in_reverse_TCC1|✅ proved - incomplete|shostak|0.010|
|leftmost_crossing_same_in_reverse|✅ proved - incomplete|shostak|0.251|

## `horiz_edge_crossing`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|point_on_ray_reflexive|✅ proved - complete|shostak|0.010|
|point_on_ray_trans|✅ proved - complete|shostak|0.020|
|pt_above_p1_and_below_p2_and_x_in_range_imp_pt_on_seg_on_ray|✅ proved - complete|shostak|1.577|
|is_right_point_ray_intersect?_imp_exists_pt_on_seg_point_on_ray?|✅ proved - incomplete|shostak|0.419|
|rightmost_x_val_TCC1|✅ proved - incomplete|shostak|0.030|
|all_edges_to_left|✅ proved - incomplete|shostak|0.130|
|vertex_on_perimeter|✅ proved - incomplete|shostak|0.042|
|edge_right_crossing_point_TCC1|✅ proved - complete|shostak|0.010|
|is_vertex_with_V_edges?_TCC1|✅ proved - incomplete|shostak|0.030|
|right_crossing_edges_no_V_TCC1|✅ proved - incomplete|shostak|0.040|
|right_ray_crossing_x_TCC1|✅ proved - incomplete|shostak|0.050|
|edge_right_crossing_point_y_eq|✅ proved - complete|shostak|0.097|
|right_crossing_point_on_edge|✅ proved - incomplete|shostak|0.116|
|diamond_center_is_inside|✅ proved - incomplete|shostak|1.080|
|odd_rt_xing_edges_card_eqv_point_in_polygon_rec|✅ proved - incomplete|shostak|0.482|
|even_card_purged_V_edges|✅ proved - incomplete|shostak|0.318|
|subset_purged_V_right_crossing_edges_TCC1|✅ proved - incomplete|shostak|0.020|
|subset_purged_V_right_crossing_edges|✅ proved - incomplete|shostak|0.050|
|no_V_edges_eq_crossing_edges_sans_purged|✅ proved - incomplete|shostak|4.094|
|card_xing_edges_from_n_and_no_V_both_odd|✅ proved - incomplete|shostak|0.080|
|card_rt_xing_edges_eq_card_rt_xing_x|✅ proved - incomplete|shostak|1.578|
|right_crossing_x_eq_rt_crossing_set|✅ proved - incomplete|shostak|6.816|
|point_in_polygon?_eq_is_point_in_polygon_exclusive?|✅ proved - incomplete|shostak|0.050|
|counted_is_crossing|✅ proved - incomplete|shostak|0.375|
|counted_or_uncounted_crossing|✅ proved - incomplete|shostak|1.192|
|crossing_on_perimeter|✅ proved - incomplete|shostak|0.013|
|set_before_subset|✅ proved - complete|shostak|0.020|
|crossings_subset|✅ proved - incomplete|shostak|0.020|
|crossing_before_diff|✅ proved - incomplete|shostak|0.729|
|right_crossings_min|✅ proved - incomplete|shostak|1.346|
|right_crossings_max|✅ proved - incomplete|shostak|0.268|
|before_crossings_empty|✅ proved - incomplete|shostak|0.023|
|right_crossings_gap|✅ proved - incomplete|shostak|0.613|
|right_counted_gap|✅ proved - incomplete|shostak|0.264|
|between_crossings_even|✅ proved - incomplete|shostak|0.186|
|opposite_sides_of_crossing|✅ proved - incomplete|shostak|1.183|
|outgoing_follows_point_in|✅ proved - incomplete|shostak|0.030|
|before_crossing_in_polygon|✅ proved - incomplete|shostak|0.039|
|before_counted_odd_crossings|✅ proved - incomplete|shostak|0.040|
|before_counted_in_polygon|✅ proved - incomplete|shostak|0.000|
|counted_crossing_follows_point_inside|✅ proved - incomplete|shostak|0.186|

## `arb_direc_edge_crossing`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|points_on_ray_diff_norms|✅ proved - incomplete|shostak|0.175|
|points_on_ray_norms_on_ray|✅ proved - incomplete|shostak|0.214|
|counted_crossing_on_perimeter|✅ proved - incomplete|shostak|0.010|
|arb_crossings_subset|✅ proved - incomplete|shostak|0.185|
|arb_crossings_before_diff|✅ proved - incomplete|shostak|0.211|
|member_arb_crossings_on_perimeter|✅ proved - incomplete|shostak|0.064|
|arb_crossings_min|✅ proved - incomplete|shostak|0.050|
|arb_crossings_max|✅ proved - incomplete|shostak|0.096|
|before_arb_crossings_empty|✅ proved - incomplete|shostak|0.016|
|one_adjacent_edge_not_parallel|✅ proved - incomplete|shostak|0.126|
|key_arb_intersections_nonneg|✅ proved - incomplete|shostak|0.020|
|key_arb_intersections_subset|✅ proved - incomplete|shostak|0.429|
|on_parallel_not_adj_counted|✅ proved - incomplete|shostak|0.353|
|on_parallel_not_counted_crossing|✅ proved - incomplete|shostak|0.020|
|parallel_on_arb_line|✅ proved - incomplete|shostak|0.096|
|parallel_diff_norm|✅ proved - incomplete|shostak|0.060|
|parallel_vectors_diff_segment_endpoints|✅ proved - incomplete|shostak|0.572|
|parallel_point_diff_norm|✅ proved - incomplete|shostak|0.204|
|point_not_on_parallel_segment|✅ proved - incomplete|shostak|2.339|
|below_min_key_arb_not_on|✅ proved - incomplete|shostak|0.050|
|below_min_key_arb_crossing|✅ proved - incomplete|shostak|0.086|
|below_min_key_same_crossing_set|✅ proved - incomplete|shostak|0.626|
|key_intersections_subset_arb_crossings|✅ proved - incomplete|shostak|0.337|
|key_intersections_empty_arb_crossings|✅ proved - incomplete|shostak|0.030|
|empty_key_arb_only_parallel|✅ proved - incomplete|shostak|0.033|
|empty_key_arb_crossings_emptyset|✅ proved - incomplete|shostak|0.232|
|empty_key_arb_before_empty_crossings|✅ proved - incomplete|shostak|0.094|
|empty_key_arb_before_empty_crossings_neg_TCC1|✅ proved - incomplete|shostak|0.020|
|empty_key_arb_before_empty_crossings_neg|✅ proved - incomplete|shostak|0.216|
|empty_key_arb_no_crossings|✅ proved - incomplete|shostak|0.020|
|empty_key_arb_no_crossings_neg|✅ proved - incomplete|shostak|0.030|
|empty_key_arb_no_crossings_add|✅ proved - incomplete|shostak|0.056|
|card_add_crossing_set|✅ proved - incomplete|shostak|0.090|
|point_before_min_key_not_on|✅ proved - incomplete|shostak|0.057|
|point_before_min_neg_key_not_on|✅ proved - incomplete|shostak|0.060|
|bisect_vector_nonzero|✅ proved - incomplete|shostak|0.145|
|bisect_not_parallel_prev|✅ proved - incomplete|shostak|1.331|
|bisect_not_parallel_next|✅ proved - incomplete|shostak|0.817|
|counted_direction_not_parallel|✅ proved - incomplete|shostak|0.090|
|bisect_not_parallel_cross_nonzero_TCC1|✅ proved - incomplete|shostak|0.114|
|bisect_not_parallel_cross_nonzero|✅ proved - incomplete|shostak|7.452|
|key_arb_intersections_pos|✅ proved - incomplete|shostak|0.060|
|counted_key_arb_intersections_pos|✅ proved - incomplete|shostak|0.040|
|counted_key_arb_intersections_reverse_pos|✅ proved - incomplete|shostak|0.050|
|crossing_direction_counted|✅ proved - incomplete|shostak|0.070|
|crossing_direction_neg|✅ proved - incomplete|shostak|0.076|
|prev_point_ray_crossing_set|✅ proved - incomplete|shostak|0.216|
|later_point_ray_crossing_set|✅ proved - incomplete|shostak|0.192|
|empty_ray_intersection_sets|✅ proved - incomplete|shostak|0.030|
|parallel_intersections_pos|✅ proved - incomplete|shostak|0.055|
|min_all_intersections_key_TCC1|✅ proved - incomplete|shostak|0.030|
|min_all_intersections_key|✅ proved - incomplete|shostak|0.030|
|min_all_intersections_parallel_TCC1|✅ proved - incomplete|shostak|0.010|
|min_all_intersections_parallel|✅ proved - incomplete|shostak|0.040|
|all_intersections_pos|✅ proved - incomplete|shostak|0.116|
|nonempty_min_key_arb_intersections_TCC1|✅ proved - incomplete|shostak|0.020|
|nonempty_min_key_arb_intersections|✅ proved - incomplete|shostak|0.095|
|nonempty_min_parallel_intersections_TCC1|✅ proved - incomplete|shostak|0.010|
|nonempty_min_parallel_intersections|✅ proved - incomplete|shostak|0.100|
|no_parallel_intersections_not_on_segment|✅ proved - incomplete|shostak|2.008|
|empty_parallel_intersections_not_on|✅ proved - incomplete|shostak|2.044|
|empty_all_not_on_perimeter|✅ proved - incomplete|shostak|0.072|
|below_min_all_arb_not_on|✅ proved - incomplete|shostak|0.060|
|below_min_all_arb_not_on_neg|✅ proved - incomplete|shostak|0.105|

## `polygon_miter_sequences`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|rightward_crossing_index_TCC1|✅ proved - incomplete|shostak|0.040|
|rightward_crossing_index_reverse_TCC1|✅ proved - incomplete|shostak|0.010|
|rightward_crossing_index_reverse_TCC2|✅ proved - incomplete|shostak|0.010|
|rightward_crossing_index_reverse|✅ proved - incomplete|shostak|1.144|
|crossed_edge_rising_or_falling|✅ proved - incomplete|shostak|0.370|
|leftmost_intersection_on_crossed_edge|✅ proved - incomplete|shostak|0.369|
|crossing_within_falling_edge_y_range|✅ proved - incomplete|shostak|0.545|
|cross_horiz_seq_with_falling_edge_pos|✅ proved - incomplete|shostak|3.361|
|between_edges_at_falling_edge_vertex|✅ proved - incomplete|shostak|2.760|
|crossing_falling_off_right_side|✅ proved - incomplete|shostak|0.203|
|three_pt_miniseq_in_polygon|✅ proved - incomplete|shostak|0.072|
|four_pt_miniseq_in_polygon|✅ proved - incomplete|shostak|0.102|
|polygon_vertex_seq_single_loop_TCC1|✅ proved - incomplete|shostak|0.040|
|polygon_vertex_seq_single_loop_TCC2|✅ proved - incomplete|shostak|0.171|
|polygon_vertex_seq_single_loop|✅ proved - incomplete|shostak|0.175|
|polygon_vertex_seq_intercept_eq_0_TCC1|✅ proved - incomplete|shostak|0.190|
|polygon_vertex_seq_intercept_eq_0|✅ proved - incomplete|shostak|0.166|
|polygon_vertex_seq_TCC1|✅ proved - incomplete|shostak|0.866|
|polygon_vertex_seq_intercept|✅ proved - incomplete|shostak|0.184|
|min_seg_separation_eq_min_edge_separation|✅ proved - incomplete|shostak|1.086|
|max_miter_offset_lt_min_edge_sep|✅ proved - incomplete|shostak|0.361|
|three_pt_offset_dist_in_polygon_TCC1|✅ proved - incomplete|shostak|0.030|
|three_pt_offset_dist_in_polygon|✅ proved - incomplete|shostak|0.396|
|four_pt_offset_dist_in_polygon_TCC1|✅ proved - incomplete|shostak|0.060|
|four_pt_offset_dist_in_polygon|✅ proved - incomplete|shostak|0.843|
|polygon_miter_point_seq_element_TCC1|✅ proved - incomplete|shostak|0.163|
|polygon_miter_point_seq_element_TCC2|✅ proved - incomplete|shostak|0.156|
|polygon_miter_point_seq_element_TCC3|✅ proved - incomplete|shostak|0.040|
|polygon_miter_point_seq_element_TCC4|✅ proved - incomplete|shostak|0.030|
|polygon_miter_point_seq_element|✅ proved - incomplete|shostak|0.390|
|point_on_perim_iff_on_vertex_seq|✅ proved - incomplete|shostak|0.214|
|min_seg_sep_le_edge_length|✅ proved - incomplete|shostak|0.359|
|min_miter_sine_le_vertex_sine_TCC1|✅ proved - incomplete|shostak|0.050|
|min_miter_sine_le_vertex_sine_TCC2|✅ proved - incomplete|shostak|0.040|
|min_miter_sine_le_vertex_sine|✅ proved - incomplete|shostak|0.440|
|vertex_miter_point_TCC1|✅ proved - incomplete|shostak|0.020|
|vertex_miter_point_TCC2|✅ proved - incomplete|shostak|0.030|
|seg_from_miter_point_not_on_perim_TCC1|✅ proved - incomplete|shostak|0.489|
|seg_from_miter_point_not_on_perim|✅ proved - incomplete|shostak|16.555|
|miter_point_seqs_not_on_perim_TCC1|✅ proved - incomplete|shostak|0.060|
|miter_point_seqs_not_on_perim|✅ proved - incomplete|shostak|0.337|
|miter_point_in_polygon_miter_seg_seq|✅ proved - incomplete|shostak|1.147|
|miter_point_not_on_perim|✅ proved - incomplete|shostak|0.125|
|miter_point_dist_to_vertex_bound|✅ proved - incomplete|shostak|0.506|
|singleton_contact_free_path|✅ proved - incomplete|shostak|0.020|
|append_contact_free_paths_TCC1|✅ proved - incomplete|shostak|0.030|
|append_contact_free_paths_TCC2|✅ proved - incomplete|shostak|0.020|
|append_contact_free_paths|✅ proved - incomplete|shostak|0.040|
|append_contact_free_paths_excl|✅ proved - incomplete|shostak|0.040|
|polygon_miter_pt_seq_contact_free|✅ proved - incomplete|shostak|0.191|
|polygon_miter_pt_subseq_contact_free_TCC1|✅ proved - incomplete|shostak|0.488|
|polygon_miter_pt_subseq_contact_free|✅ proved - incomplete|shostak|0.390|
|polygon_miter_pt_subseq_pair_contact_free_TCC1|✅ proved - incomplete|shostak|0.326|
|polygon_miter_pt_subseq_pair_contact_free_TCC2|✅ proved - incomplete|shostak|0.425|
|polygon_miter_pt_subseq_pair_contact_free|✅ proved - incomplete|shostak|1.422|
|below_left_falling_seg_point_right_TCC1|✅ proved - complete|shostak|0.020|
|below_left_falling_seg_point_right|✅ proved - incomplete|shostak|0.966|
|above_left_falling_seg_point_right_TCC1|✅ proved - complete|shostak|0.020|
|above_left_falling_seg_point_right_TCC2|✅ proved - complete|shostak|0.020|
|above_left_falling_seg_point_right|✅ proved - incomplete|shostak|0.155|
|on_seg_from_miter_pt_to_endpoint_TCC1|✅ proved - incomplete|shostak|0.000|
|on_seg_from_miter_pt_to_endpoint_TCC2|✅ proved - incomplete|shostak|0.136|
|on_seg_from_miter_pt_to_endpoint_TCC3|✅ proved - incomplete|shostak|0.060|
|on_seg_from_miter_pt_to_endpoint_TCC4|✅ proved - incomplete|shostak|0.126|
|on_seg_from_miter_pt_to_endpoint|✅ proved - incomplete|shostak|9.910|
|on_seg_from_miter_pt_contact_free_TCC1|✅ proved - incomplete|shostak|0.082|
|on_seg_from_miter_pt_contact_free_TCC2|✅ proved - incomplete|shostak|0.040|
|on_seg_from_miter_pt_contact_free|✅ proved - incomplete|shostak|5.499|
|vertex_to_miter_pt_seq_contact_free_TCC1|✅ proved - incomplete|shostak|0.080|
|vertex_to_miter_pt_seq_contact_free_TCC2|✅ proved - incomplete|shostak|0.036|
|vertex_to_miter_pt_seq_contact_free|✅ proved - incomplete|shostak|9.853|
|next_vtx_to_miter_pt_subcase_zero_TCC1|✅ proved - incomplete|shostak|0.271|
|next_vtx_to_miter_pt_subcase_zero_TCC2|✅ proved - incomplete|shostak|0.055|
|next_vtx_to_miter_pt_subcase_zero_TCC3|✅ proved - incomplete|shostak|0.134|
|next_vtx_to_miter_pt_subcase_zero|✅ proved - incomplete|shostak|11.270|
|next_vtx_to_miter_pt_subcase_TCC1|✅ proved - incomplete|shostak|0.050|
|next_vtx_to_miter_pt_subcase_TCC2|✅ proved - incomplete|shostak|0.062|
|next_vtx_to_miter_pt_subcase_TCC3|✅ proved - incomplete|shostak|0.600|
|next_vtx_to_miter_pt_subcase|✅ proved - incomplete|shostak|0.939|
|next_vtx_to_miter_pt_seq_contact_free_TCC1|✅ proved - incomplete|shostak|0.090|
|next_vtx_to_miter_pt_seq_contact_free_TCC2|✅ proved - incomplete|shostak|0.094|
|next_vtx_to_miter_pt_seq_contact_free|✅ proved - incomplete|shostak|10.906|
|nonvertex_to_miter_pt_seq_contact_free_TCC1|✅ proved - incomplete|shostak|0.085|
|nonvertex_to_miter_pt_seq_contact_free_TCC2|✅ proved - incomplete|shostak|0.040|
|nonvertex_to_miter_pt_seq_contact_free|✅ proved - incomplete|shostak|1.446|
|rightward_crossing_falling_edge_cases|✅ proved - incomplete|shostak|0.707|
|path_to_miter_pt_seq_contact_free_TCC1|✅ proved - incomplete|shostak|0.084|
|path_to_miter_pt_seq_contact_free_TCC2|✅ proved - incomplete|shostak|0.040|
|path_to_miter_pt_seq_contact_free|✅ proved - incomplete|shostak|4.696|

## `polygon_membership`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|serpentine_ray_TCC1|✅ proved - incomplete|shostak|0.020|
|serpentine_ray_TCC2|✅ proved - incomplete|shostak|0.027|
|serp_ray_outside?_TCC1|✅ proved - incomplete|shostak|0.030|
|serp_ray_outside?_TCC2|✅ proved - incomplete|shostak|0.040|
|serp_ray_outside?_TCC3|✅ proved - incomplete|shostak|0.040|
|serp_ray_outside?_TCC4|✅ proved - incomplete|shostak|0.020|
|point_outside_polygon?_TCC1|✅ proved - incomplete|shostak|0.023|
|perimeter_not_outside|✅ proved - incomplete|shostak|0.080|
|point_on_serp_ray?_TCC1|✅ proved - incomplete|shostak|0.030|
|downstream_point_outside|✅ proved - incomplete|shostak|1.245|
|pt_inside_imp_inside_rev_polygon_TCC1|✅ proved - incomplete|shostak|0.020|
|pt_inside_imp_inside_rev_polygon|✅ proved - incomplete|shostak|0.414|
|pt_inside_eqv_inside_rev_polygon_TCC1|✅ proved - incomplete|shostak|0.020|
|pt_inside_eqv_inside_rev_polygon|✅ proved - incomplete|shostak|0.018|
|pt_outside_eqv_outside_rev_polygon|✅ proved - incomplete|shostak|0.130|
|prev_edge_not_crossed_by_perp_left_segment_TCC1|✅ proved - incomplete|shostak|0.020|
|prev_edge_not_crossed_by_perp_left_segment|✅ proved - incomplete|shostak|1.910|
|prev_edge_not_crossed_by_perp_right_segment_TCC1|✅ proved - incomplete|shostak|0.020|
|prev_edge_not_crossed_by_perp_right_segment|✅ proved - incomplete|shostak|1.913|
|next_edge_not_crossed_by_perp_left_segment_TCC1|✅ proved - incomplete|shostak|0.020|
|next_edge_not_crossed_by_perp_left_segment|✅ proved - incomplete|shostak|2.149|
|next_edge_not_crossed_by_perp_right_segment_TCC1|✅ proved - incomplete|shostak|0.020|
|next_edge_not_crossed_by_perp_right_segment|✅ proved - incomplete|shostak|0.168|
|nearby_perp_right_segment_not_on_perim_TCC1|✅ proved - incomplete|shostak|0.020|
|nearby_perp_right_segment_not_on_perim|✅ proved - incomplete|shostak|2.162|
|nearby_perp_left_segment_not_on_perim_TCC1|✅ proved - incomplete|shostak|0.020|
|nearby_perp_left_segment_not_on_perim|✅ proved - incomplete|shostak|2.166|
|rightward_offset_pt_not_on_perim|✅ proved - incomplete|shostak|0.175|
|leftward_offset_pt_not_on_perim|✅ proved - incomplete|shostak|0.189|
|on_perimeter_edge_path?_TCC1|✅ proved - incomplete|shostak|0.180|
|on_perimeter_vertex_path?_TCC1|✅ proved - incomplete|shostak|0.206|
|perimeter_segment_path_TCC1|✅ proved - incomplete|shostak|0.050|
|perimeter_segment_path_TCC2|✅ proved - incomplete|shostak|8.531|
|perimeter_segment_path_TCC3|✅ proved - incomplete|shostak|0.120|
|perimeter_segment_path_TCC4|✅ proved - incomplete|shostak|0.157|
|perimeter_segment_path_TCC5|✅ proved - incomplete|shostak|0.106|
|perimeter_segment_path_TCC6|✅ proved - incomplete|shostak|1.443|
|initial_point_perimeter_segment_path_TCC1|✅ proved - incomplete|shostak|0.030|
|initial_point_perimeter_segment_path|✅ proved - incomplete|shostak|0.358|
|final_point_perimeter_segment_path_TCC1|✅ proved - incomplete|shostak|0.040|
|final_point_perimeter_segment_path|✅ proved - incomplete|shostak|0.819|
|perim_segment_path_on_perim|✅ proved - incomplete|shostak|2.438|
|append_path_to_s_ray_TCC1|✅ proved - incomplete|shostak|0.040|
|append_path_to_s_ray_TCC2|✅ proved - incomplete|shostak|0.030|
|append_path_to_s_ray_TCC3|✅ proved - incomplete|shostak|0.019|
|append_path_to_s_ray_TCC4|✅ proved - incomplete|shostak|0.030|
|append_path_to_s_ray_TCC5|✅ proved - incomplete|shostak|0.398|
|truncated_serp_ray_TCC1|✅ proved - incomplete|shostak|0.030|
|truncated_serp_ray_TCC2|✅ proved - incomplete|shostak|0.189|
|truncated_serp_ray_TCC3|✅ proved - incomplete|shostak|0.203|
|truncated_serp_ray_TCC4|✅ proved - incomplete|shostak|0.244|
|truncated_serp_ray_TCC5|✅ proved - incomplete|shostak|0.100|
|truncated_serp_ray_TCC6|✅ proved - incomplete|shostak|0.164|
|truncated_serp_ray_TCC7|✅ proved - incomplete|shostak|0.195|
|truncated_serp_ray_TCC8|✅ proved - incomplete|shostak|1.170|
|initial_point_append_path_to_s_ray_TCC1|✅ proved - incomplete|shostak|0.030|
|initial_point_append_path_to_s_ray_TCC2|✅ proved - incomplete|shostak|0.030|
|initial_point_append_path_to_s_ray|✅ proved - incomplete|shostak|0.105|
|append_outside_seq_to_s_ray|✅ proved - incomplete|shostak|0.748|
|initial_point_of_truncated_s_ray_TCC1|✅ proved - incomplete|shostak|0.030|
|initial_point_of_truncated_s_ray|✅ proved - incomplete|shostak|0.205|
|point_on_truncated_s_ray_on_s_ray|✅ proved - incomplete|shostak|0.660|
|truncated_s_ray_outside|✅ proved - incomplete|shostak|0.031|
|point_in_polygon_conds_equiv_horiz_TCC1|✅ proved - incomplete|shostak|0.010|
|point_in_polygon_conds_equiv_horiz|✅ proved - incomplete|shostak|2.600|
|extend_points_inside_polygon|✅ proved - incomplete|shostak|0.488|
|extend_points_inside_polygon_excl|✅ proved - incomplete|shostak|0.493|
|extend_points_outside_polygon|✅ proved - incomplete|shostak|0.131|
|extend_points_outside_polygon_excl|✅ proved - incomplete|shostak|0.897|
|point_out_pts_on_non_perim_path_out_TCC1|✅ proved - incomplete|shostak|0.020|
|point_out_pts_on_non_perim_path_out|✅ proved - incomplete|shostak|0.606|
|point_in_pts_on_non_perim_path_in_TCC1|✅ proved - incomplete|shostak|0.022|
|point_in_pts_on_non_perim_path_in|✅ proved - incomplete|shostak|0.581|
|topleft_miter_point_in_or_out_TCC1|✅ proved - incomplete|shostak|0.060|
|topleft_miter_point_in_or_out_TCC2|✅ proved - incomplete|shostak|0.035|
|topleft_miter_point_in_or_out|✅ proved - incomplete|shostak|2.441|
|polygon_miter_sequence_in_or_out_TCC1|✅ proved - incomplete|shostak|0.065|
|polygon_miter_sequence_in_or_out|✅ proved - incomplete|shostak|4.687|
|falling_edge_imp_ccw_in_or_out|✅ proved - incomplete|shostak|0.450|
|ccw_imp_falling_edge_in_or_out|✅ proved - incomplete|shostak|0.801|
|point_in_has_rightward_crossings|✅ proved - incomplete|shostak|0.721|
|point_outside_imp_not_inside|✅ proved - incomplete|shostak|1.211|
|point_outside_imp_not_in|✅ proved - incomplete|shostak|0.030|
|point_not_in_imp_outside|✅ proved - incomplete|shostak|0.712|
|point_out_not_in|✅ proved - incomplete|shostak|0.020|
|same_perim_pts_imp_same_exterior_pts|✅ proved - incomplete|shostak|0.116|
|same_perim_pts_imp_same_interior_pts|✅ proved - incomplete|shostak|0.030|
|falling_edge_ccw_in_or_out|✅ proved - incomplete|shostak|0.264|
|ccw_falling_edge_in_or_out|✅ proved - incomplete|shostak|0.340|
|nearest_rightward_crossing_in_or_out|✅ proved - incomplete|shostak|0.040|
|point_in_has_inside_segments_TCC1|✅ proved - incomplete|shostak|0.030|
|point_in_has_inside_segments|✅ proved - incomplete|shostak|5.135|
|point_outside_not_in_polygon_arb|✅ proved - incomplete|shostak|0.010|
|point_outside_not_in_polygon_arb_neg|✅ proved - incomplete|shostak|0.020|
|left_right_midpoints_in_out|✅ proved - incomplete|shostak|3.481|
|right_left_midpoints_in_out|✅ proved - incomplete|shostak|1.212|
|left_right_midpoints_out_in|✅ proved - incomplete|shostak|3.447|
|right_left_midpoints_out_in|✅ proved - incomplete|shostak|3.417|
|counted_crossing_direction_exists|✅ proved - incomplete|shostak|0.611|
|free_ray_point_outside|✅ proved - incomplete|shostak|0.107|
|only_parallel_ray_point_outside|✅ proved - incomplete|shostak|0.082|
|one_dir_empty_intersections_TCC1|✅ proved - incomplete|shostak|0.020|
|one_dir_empty_intersections|✅ proved - incomplete|shostak|0.280|
|one_dir_empty_point_outside|✅ proved - incomplete|shostak|0.184|
|one_dir_out_other_in_polygon|✅ proved - incomplete|shostak|0.225|
|opposite_sides_of_crossing_arb|✅ proved - incomplete|shostak|0.246|
|nearby_point_outside_exists_either|✅ proved - incomplete|shostak|0.949|
|nearby_point_outside_exists|✅ proved - incomplete|shostak|0.068|
|nearby_point_in_polygon_TCC1|✅ proved - incomplete|shostak|0.050|
|nearby_point_in_polygon|✅ proved - incomplete|shostak|0.077|
|A_perim_outside_imp_B_perim_inside|✅ proved - incomplete|shostak|0.214|
|overlap_imp_inside_pt_on_perim|✅ proved - incomplete|shostak|0.109|
|outside_C_inside_A|✅ proved - incomplete|shostak|0.397|
|container_edges_not_inside|✅ proved - incomplete|shostak|0.273|
|contained_not_on_perimeter|✅ proved - incomplete|shostak|0.025|
|contained_membership|✅ proved - incomplete|shostak|0.125|
|contained_membership_cor|✅ proved - incomplete|shostak|0.030|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Mac OS X (Intel)] (Nov 14, 2020 23:13)|
| Patch Version| n/a|
| Library Path| `/Applications/pvs-7.1.0/pvslib/`<br/>`/Applications/pvs-7.1.0/lib/`<br/>`/Applications/pvs-7.1.0/pvslib/float/`<br/>`/Applications/pvs-7.1.0/pvslib/pvsio_utils/`|
| Loaded Patches | `/Applications/pvs-7.1.0/pvslib/.pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230712-static-update.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230710-tcc-gen.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230707-defattach.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230706-extrategies.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210323-wish.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210225-cl2pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210715a.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210715.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210707.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210706.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210511.lisp`|
