# Summary for `polygons`
Run started at 6:59:52 7/8/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **566**   | **566**    | **566**    | **0**  | **7:35.087 s**   |
|top|0|0|0|0|0.000|
|polygons_2d|143|143|143|0|1:28.318|
|topleft_vertex|23|23|23|0|5.461|
|polygon_attributes|31|31|31|0|23.238|
|rightward_crossings|20|20|20|0|13.695|
|reverse_polygons|38|38|38|0|20.996|
|horiz_edge_crossing|41|41|41|0|31.887|
|arb_direc_edge_crossing|64|64|64|0|32.237|
|polygon_miter_sequences|89|89|89|0|2:13.188|
|polygon_membership|117|117|117|0|1:46.067|
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
|prev_next_is_original|✅ proved - incomplete|shostak|0.050|
|next_prev_is_original|✅ proved - incomplete|shostak|0.030|
|rem_diff_eq_0|✅ proved - complete|shostak|0.219|
|rem_diff_eq_0_shift|✅ proved - complete|shostak|0.208|
|rem_add1_eq_next_index|✅ proved - incomplete|shostak|0.273|
|rem_sum3|✅ proved - complete|shostak|0.160|
|vertex_is_vertex|✅ proved - incomplete|shostak|0.020|
|vertex_is_not_nonvertex|✅ proved - incomplete|shostak|0.029|
|edges_of_polygon_TCC1|✅ proved - incomplete|shostak|0.100|
|edge_is_edge|✅ proved - incomplete|shostak|0.040|
|find_helper_TCC1|✅ proved - incomplete|shostak|0.030|
|find_helper_TCC2|✅ proved - incomplete|shostak|0.036|
|find_helper_TCC3|✅ proved - incomplete|shostak|0.020|
|find_helper_TCC4|✅ proved - incomplete|shostak|0.040|
|find_helper_TCC5|✅ proved - incomplete|shostak|0.040|
|find_helper_TCC6|✅ proved - incomplete|shostak|0.060|
|find_helper_invariant_TCC1|✅ proved - incomplete|shostak|0.036|
|find_helper_invariant_TCC2|✅ proved - incomplete|shostak|0.060|
|find_helper_invariant|✅ proved - incomplete|shostak|0.348|
|find_index_TCC1|✅ proved - incomplete|shostak|0.020|
|find_index_TCC2|✅ proved - incomplete|shostak|0.090|
|next_index_distinct|✅ proved - incomplete|shostak|0.036|
|vertex_find_helper_TCC1|✅ proved - incomplete|shostak|0.020|
|vertex_find_helper|✅ proved - incomplete|shostak|0.140|
|vertex_find_index|✅ proved - incomplete|shostak|0.036|
|find_helper_self_TCC1|✅ proved - incomplete|shostak|0.020|
|find_helper_self_TCC2|✅ proved - incomplete|shostak|0.030|
|find_helper_self|✅ proved - incomplete|shostak|0.286|
|find_index_self_TCC1|✅ proved - incomplete|shostak|0.040|
|find_index_self|✅ proved - incomplete|shostak|0.040|
|find_index_self_index|✅ proved - incomplete|shostak|0.075|
|segment_in_edges_TCC1|✅ proved - incomplete|shostak|0.120|
|segment_in_edges|✅ proved - incomplete|shostak|0.070|
|edge_segment_has_vertices|✅ proved - incomplete|shostak|0.036|
|find_index_segment_is_edge|✅ proved - incomplete|shostak|0.040|
|vertex_neq_next|✅ proved - incomplete|shostak|0.080|
|vertex_neq_next_2|✅ proved - incomplete|shostak|0.020|
|vertex_neq_prev|✅ proved - incomplete|shostak|0.056|
|vertex_neq_prev_2|✅ proved - incomplete|shostak|0.020|
|prev_vertex_neq_next_vertex|✅ proved - incomplete|shostak|0.100|
|vertices_diff_next_nonzero|✅ proved - incomplete|shostak|0.030|
|vertices_diff_prev_nonzero|✅ proved - incomplete|shostak|0.020|
|second_edge_does_not_double_back_TCC1|✅ proved - incomplete|shostak|0.036|
|second_edge_does_not_double_back_TCC2|✅ proved - incomplete|shostak|0.110|
|second_edge_does_not_double_back|✅ proved - incomplete|shostak|0.216|
|vertex_on_edge|✅ proved - incomplete|shostak|0.020|
|next_vertex_on_edge|✅ proved - incomplete|shostak|0.026|
|vertex_on_prev_edge|✅ proved - incomplete|shostak|0.070|
|norm_vertex_diff_next_pos|✅ proved - incomplete|shostak|0.050|
|norm_vertex_diff_prev_pos|✅ proved - incomplete|shostak|0.040|
|two_adjacent_edges_TCC1|✅ proved - incomplete|shostak|0.075|
|two_adjacent_edges_TCC2|✅ proved - incomplete|shostak|0.090|
|two_adjacent_edges|✅ proved - incomplete|shostak|0.096|
|same_edge_equiv_same_points|✅ proved - incomplete|shostak|0.561|
|rem_plus_1_eq_next_index|✅ proved - incomplete|shostak|0.411|
|rem_minus_1_eq_prev_index|✅ proved - incomplete|shostak|0.126|
|rem_plus_1_eq_next_index_2|✅ proved - incomplete|shostak|0.280|
|equal_or_adjacent_edge_reflexive|✅ proved - complete|shostak|0.020|
|equal_or_adjacent_edge_symmetric|✅ proved - complete|shostak|0.176|
|equal_or_adjacent_edge_not_transitive|✅ proved - complete|shostak|0.055|
|adj_edges_share_vertex|✅ proved - incomplete|shostak|0.200|
|short_antenna_edge_midpoint_on_longer_edge|✅ proved - incomplete|shostak|5.000|
|short_antenna_edge_midpoint_not_endpoint|✅ proved - incomplete|shostak|0.558|
|antenna_edges_share_many_points|✅ proved - incomplete|shostak|33.093|
|only_common_point_is_vertex_means_equal_or_adjacent|✅ proved - incomplete|shostak|3.758|
|common_pt_on_adj_edges_must_be_vertex_unless_antenna|✅ proved - incomplete|shostak|6.152|
|polygon_edges_do_not_cross_defs_eq|✅ proved - incomplete|shostak|0.942|
|example_right_triangle_TCC1|✅ proved - complete|shostak|0.070|
|simple_polygon_2d_TCC1|✅ proved - incomplete|shostak|1.883|
|example_diamond_TCC1|✅ proved - complete|shostak|0.108|
|example_diamond_TCC2|✅ proved - incomplete|shostak|3.696|
|next_edge_shares_only_vertex|✅ proved - incomplete|shostak|0.854|
|prev_edge_shares_only_vertex|✅ proved - incomplete|shostak|0.475|
|adjacent_edges_share_only_vertex|✅ proved - incomplete|shostak|0.378|
|next_edge_not_dir_parallel|✅ proved - incomplete|shostak|1.143|
|prev_edge_not_dir_parallel|✅ proved - incomplete|shostak|1.217|
|adjacent_edges_not_dir_parallel|✅ proved - incomplete|shostak|0.359|
|prev_vertex_not_on_ray_of_edge_TCC1|✅ proved - incomplete|shostak|0.030|
|prev_vertex_not_on_ray_of_edge|✅ proved - incomplete|shostak|0.514|
|only_adjacent_edges_intersect|✅ proved - incomplete|shostak|1.517|
|adjacent_edges_do_not_fold_back|✅ proved - incomplete|shostak|0.113|
|points_on_distinct_edges_differ|✅ proved - incomplete|shostak|0.130|
|edge_x_left_or_right_imp_cross_neq_0|✅ proved - incomplete|shostak|0.995|
|edge_y_above_or_below_imp_cross_neq_0|✅ proved - incomplete|shostak|0.984|
|shared_endpoints_imp_same_edge|✅ proved - incomplete|shostak|0.459|
|same_polygon_edge_overlaps_equal|✅ proved - incomplete|shostak|0.614|
|interior_point_is_nonvertex|✅ proved - incomplete|shostak|2.254|
|nonvertex_on_one_edge|✅ proved - incomplete|shostak|0.221|
|vertex_is_segment_endpoint|✅ proved - incomplete|shostak|0.094|
|vertex_is_edge_endpoint|✅ proved - incomplete|shostak|0.185|
|vertex_on_two_edges|✅ proved - incomplete|shostak|0.091|
|is_point_in_polygon_recursive?_TCC1|✅ proved - incomplete|shostak|0.030|
|is_point_in_polygon_recursive?_TCC2|✅ proved - incomplete|shostak|0.030|
|is_point_in_polygon_recursive_negation|✅ proved - incomplete|shostak|0.461|
|is_point_in_polygon_inclusive?_TCC1|✅ proved - incomplete|shostak|0.023|
|center_of_diamond_is_inside|✅ proved - incomplete|shostak|1.182|
|outside_left_of_diamond_is_outside|✅ proved - incomplete|shostak|0.485|
|above_center_of_diamond_is_inside|✅ proved - incomplete|shostak|1.516|
|above_outside_left_of_diamond_is_outside|✅ proved - incomplete|shostak|0.555|
|way_above_diamond_is_outside|✅ proved - incomplete|shostak|0.456|
|polygons_are_inside_themselves|✅ proved - incomplete|shostak|0.572|
|insert_vertex_TCC1|✅ proved - incomplete|shostak|0.060|
|insert_vertex_TCC2|✅ proved - incomplete|shostak|0.016|
|insert_vertex_TCC3|✅ proved - incomplete|shostak|0.040|
|insert_vertex_TCC4|✅ proved - incomplete|shostak|0.070|
|insert_vertex_TCC5|✅ proved - incomplete|shostak|0.461|
|insert_vertex_TCC6|✅ proved - incomplete|shostak|0.070|
|insert_vertex_seq_TCC1|✅ proved - incomplete|shostak|0.030|
|insert_vertex_seq_TCC2|✅ proved - incomplete|shostak|0.026|
|insert_vertex_seq_TCC3|✅ proved - incomplete|shostak|0.040|
|insert_vertex_seq_TCC4|✅ proved - incomplete|shostak|0.090|
|insert_vertex_seq_TCC5|✅ proved - incomplete|shostak|0.095|
|insert_vertex_seq_TCC6|✅ proved - incomplete|shostak|0.050|
|insert_vertex_seq_TCC7|✅ proved - incomplete|shostak|0.136|
|insert_vertex_seq_TCC8|✅ proved - incomplete|shostak|0.020|
|insert_vertex_seq_TCC9|✅ proved - incomplete|shostak|0.166|
|polygon_segment_is_not_outside_inclusive|✅ proved - incomplete|shostak|1.016|
|polygon_segment_is_outside_exclusive|✅ proved - incomplete|shostak|0.030|
|polygon_segment_is_inside_inclusive|✅ proved - incomplete|shostak|0.030|
|polygon_segment_is_not_inside_exclusive|✅ proved - incomplete|shostak|0.996|
|path_outside_inclusive?_TCC1|✅ proved - incomplete|shostak|0.030|
|path_outside_inclusive?_TCC2|✅ proved - incomplete|shostak|0.050|
|path_outside_inclusive?_TCC3|✅ proved - incomplete|shostak|0.090|
|point_on_polygon_perimeter?_eq_is_point_on_polygon_perimeter?|✅ proved - incomplete|shostak|0.029|
|find_index_any_rec_TCC1|✅ proved - incomplete|shostak|0.040|
|find_index_any_rec_TCC2|✅ proved - incomplete|shostak|0.050|
|find_index_any_rec_TCC3|✅ proved - incomplete|shostak|0.060|
|find_index_any_TCC1|✅ proved - incomplete|shostak|0.027|
|perimeter_find_index_any|✅ proved - incomplete|shostak|0.000|
|point_on_find_index_segment_TCC1|✅ proved - incomplete|shostak|0.030|
|point_on_find_index_segment|✅ proved - incomplete|shostak|0.306|
|find_index_any_segment_rec_TCC1|✅ proved - incomplete|shostak|0.030|
|find_index_any_segment_rec|✅ proved - incomplete|shostak|3.594|
|find_index_any_segment|✅ proved - incomplete|shostak|0.054|
|find_index_any_self|✅ proved - incomplete|shostak|0.040|
|point_on_segment_rem_endpoints_TCC1|✅ proved - incomplete|shostak|0.193|
|point_on_segment_rem_endpoints|✅ proved - incomplete|shostak|0.512|
|point_on_segment_rem_endpoints_2_TCC1|✅ proved - incomplete|shostak|0.162|
|point_on_segment_rem_endpoints_2|✅ proved - incomplete|shostak|0.230|

## `topleft_vertex`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|leftmost_vertex_val_TCC1|✅ proved - incomplete|shostak|0.033|
|exists_leftmost_vertex_val|✅ proved - incomplete|shostak|0.070|
|leftmost_vertex_val_is_min|✅ proved - incomplete|shostak|0.080|
|at_least_one_leftmost|✅ proved - incomplete|shostak|0.040|
|topleft_vertex_val_TCC1|✅ proved - incomplete|shostak|0.035|
|topleft_vertex_val_is_max|✅ proved - incomplete|shostak|0.070|
|topleft_vertex_idx_TCC1|✅ proved - incomplete|shostak|0.353|
|leftmost_is_topleft_x|✅ proved - incomplete|shostak|0.030|
|leftmost_has_min_x|✅ proved - incomplete|shostak|0.040|
|topmost_is_topleft_y|✅ proved - incomplete|shostak|0.030|
|topmost_has_max_y|✅ proved - incomplete|shostak|0.045|
|leftmost_xval_le_segment|✅ proved - incomplete|shostak|0.120|
|leftmost_xval_lt_segment|✅ proved - incomplete|shostak|0.128|
|leftmost_xval_lt_segment_eq|✅ proved - incomplete|shostak|0.253|
|leftmost_vtx_val_le_any_perim_point|✅ proved - incomplete|shostak|0.050|
|topmost_yval_ge_segment|✅ proved - incomplete|shostak|0.120|
|topmost_yval_gt_segment|✅ proved - incomplete|shostak|0.125|
|topleft_vertex_bounds_vertices|✅ proved - incomplete|shostak|0.124|
|topleft_vertex_bounds_all_points|✅ proved - incomplete|shostak|0.596|
|min_vertex_yval_TCC1|✅ proved - incomplete|shostak|0.040|
|not_all_vertices_collinear_horiz|✅ proved - incomplete|shostak|0.539|
|falling_edge_exists|✅ proved - incomplete|shostak|1.281|
|rising_edge_exists|✅ proved - incomplete|shostak|1.259|

## `polygon_attributes`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|min_edge_sep_vertex_TCC1|✅ proved - incomplete|shostak|0.033|
|min_edge_sep_vertex_TCC2|✅ proved - incomplete|shostak|0.100|
|min_edge_sep_vertex_TCC3|✅ proved - incomplete|shostak|0.198|
|min_edge_sep_vertex_TCC4|✅ proved - incomplete|shostak|0.190|
|min_edge_separation_TCC1|✅ proved - incomplete|shostak|0.032|
|min_edge_separation_TCC2|✅ proved - incomplete|shostak|0.080|
|min_edge_sep_vertex_le_dist_to_vtx|✅ proved - incomplete|shostak|3.260|
|min_edge_separation_is_min|✅ proved - incomplete|shostak|0.482|
|min_edge_sep_TCC1|✅ proved - incomplete|shostak|3.468|
|min_edge_sep_le_min_edge_separation|✅ proved - incomplete|shostak|0.846|
|separation_distance_bounds_edge_length|✅ proved - incomplete|shostak|6.391|
|min_edge_sep_all_points|✅ proved - incomplete|shostak|0.586|
|sines_of_edge_angles_TCC1|✅ proved - incomplete|shostak|0.034|
|sines_of_edge_angles_TCC2|✅ proved - incomplete|shostak|0.040|
|sines_of_edge_angles_nonempty|✅ proved - incomplete|shostak|0.214|
|min_edge_angle_sine_TCC1|✅ proved - incomplete|shostak|0.020|
|min_edge_angle_sine_TCC2|✅ proved - incomplete|shostak|0.674|
|edge_angle_sine_sq_bound|✅ proved - incomplete|shostak|0.130|
|sines_of_inward_edge_angles_TCC1|✅ proved - incomplete|shostak|0.030|
|sines_of_inward_edge_angles_TCC2|✅ proved - incomplete|shostak|0.030|
|sines_of_inward_edge_angles_nonempty|✅ proved - incomplete|shostak|0.204|
|min_inward_edge_angle_sine_TCC1|✅ proved - incomplete|shostak|0.020|
|min_inward_edge_angle_sine_TCC2|✅ proved - incomplete|shostak|0.617|
|in_out_offset_lt_min_edge_sep|✅ proved - incomplete|shostak|0.740|
|ccw_imp_cross_topleft_edges_neg|✅ proved - incomplete|shostak|1.293|
|cross_topleft_edges_neg_imp_ccw|✅ proved - incomplete|shostak|1.483|
|ccw_eqv_cross_topleft_edges_neg|✅ proved - incomplete|shostak|0.356|
|nearby_pt_between_edges_not_on_perim|✅ proved - incomplete|shostak|1.401|
|miter_point_between_edges_TCC1|✅ proved - incomplete|shostak|0.030|
|miter_point_between_edges_TCC2|✅ proved - incomplete|shostak|0.081|
|miter_point_between_edges|✅ proved - incomplete|shostak|0.175|

## `rightward_crossings`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|edge_crossing_point_TCC1|✅ proved - complete|shostak|0.030|
|rightward_crossing_set_nonempty|✅ proved - incomplete|shostak|0.040|
|leftmost_crossing_xval_TCC1|✅ proved - incomplete|shostak|0.020|
|edge_crossing_point_on_perim|✅ proved - incomplete|shostak|0.663|
|leftmost_crossing_on_perim|✅ proved - incomplete|shostak|0.526|
|edge_crossing_point_xval_bound|✅ proved - incomplete|shostak|1.542|
|leftmost_crossing_xval_bound|✅ proved - incomplete|shostak|0.091|
|leftmost_crossing_xval_is_min|✅ proved - incomplete|shostak|0.100|
|leftmost_has_horiz_dist_from_p|✅ proved - incomplete|shostak|0.172|
|has_crossing_off_right_side_falling|✅ proved - incomplete|shostak|1.135|
|no_point_x_left_of_leftmost_crossing_TCC1|✅ proved - incomplete|shostak|0.030|
|no_point_x_left_of_leftmost_crossing|✅ proved - incomplete|shostak|1.277|
|no_edge_point_left_of_leftmost_crossing|✅ proved - incomplete|shostak|0.768|
|left_of_leftmost_crossing_not_on_perim_TCC1|✅ proved - incomplete|shostak|0.020|
|left_of_leftmost_crossing_not_on_perim|✅ proved - incomplete|shostak|4.134|
|left_of_leftmost_crossing_not_on_perim_2|✅ proved - incomplete|shostak|1.157|
|leftmost_crossing_on_polygon_edge|✅ proved - incomplete|shostak|0.103|
|leftmost_is_horiz_edge_endpoint|✅ proved - incomplete|shostak|0.899|
|left_of_leftmost_not_on_perim_edge|✅ proved - incomplete|shostak|0.000|
|only_one_edge_adj_leftmost_is_horiz|✅ proved - incomplete|shostak|0.988|

## `reverse_polygons`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|rev_polygon_index_TCC1|✅ proved - incomplete|shostak|0.030|
|rev_polygon_index_TCC2|✅ proved - incomplete|shostak|0.040|
|reverse_polygon_TCC1|✅ proved - incomplete|shostak|0.080|
|rev_polygon_index_reverse_TCC1|✅ proved - incomplete|shostak|0.040|
|rev_polygon_index_reverse|✅ proved - incomplete|shostak|0.050|
|rev_rev_polygon_index|✅ proved - incomplete|shostak|0.040|
|reverse_reverse_polygon|✅ proved - incomplete|shostak|0.151|
|reverse_vertex_rev_index_TCC1|✅ proved - incomplete|shostak|0.050|
|reverse_vertex_rev_index|✅ proved - incomplete|shostak|0.050|
|prev_index_rev_index_next|✅ proved - incomplete|shostak|0.118|
|prev_index_of_reverse|✅ proved - incomplete|shostak|0.120|
|next_index_rev_index_prev|✅ proved - incomplete|shostak|0.130|
|next_index_of_reverse|✅ proved - incomplete|shostak|0.123|
|edges_of_reverse_polygon|✅ proved - incomplete|shostak|0.160|
|point_on_edge_of_rev_polygon|✅ proved - incomplete|shostak|0.040|
|edge_of_rev_polygon_rev_segment|✅ proved - incomplete|shostak|0.244|
|edge_of_rev_polygon_imp_edge_rev_seg|✅ proved - incomplete|shostak|0.184|
|rev_polygon_edge_is_rev_segment|✅ proved - incomplete|shostak|0.170|
|on_rev_perim_eqv_on_perim|✅ proved - incomplete|shostak|0.684|
|reverse_polygon_is_simple|✅ proved - incomplete|shostak|0.224|
|topleft_index_of_reverse|✅ proved - incomplete|shostak|0.406|
|topleft_vertex_of_reverse_is_same|✅ proved - incomplete|shostak|0.040|
|find_index_any_reverse|✅ proved - incomplete|shostak|0.175|
|find_index_any_vertex_reverse|✅ proved - incomplete|shostak|0.214|
|ccw_reverse_polygon|✅ proved - incomplete|shostak|4.169|
|ccw_miter_pt_left_of_topleft_vtx_TCC1|✅ proved - incomplete|shostak|0.050|
|ccw_miter_pt_left_of_topleft_vtx_TCC2|✅ proved - incomplete|shostak|0.090|
|ccw_miter_pt_left_of_topleft_vtx|✅ proved - incomplete|shostak|8.671|
|segment_falling_reverse_rising_TCC1|✅ proved - incomplete|shostak|0.599|
|segment_falling_reverse_rising|✅ proved - incomplete|shostak|0.236|
|segment_falling_reverse_image_TCC1|✅ proved - incomplete|shostak|0.603|
|segment_falling_reverse_image|✅ proved - incomplete|shostak|0.240|
|reverse_seg_rightward_edge_crossing|✅ proved - incomplete|shostak|0.053|
|reverse_has_rightward_crossings|✅ proved - incomplete|shostak|1.225|
|edge_crossing_point_same_in_reverse_TCC1|✅ proved - incomplete|shostak|0.020|
|edge_crossing_point_same_in_reverse|✅ proved - incomplete|shostak|1.098|
|leftmost_crossing_same_in_reverse_TCC1|✅ proved - incomplete|shostak|0.014|
|leftmost_crossing_same_in_reverse|✅ proved - incomplete|shostak|0.365|

## `horiz_edge_crossing`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|point_on_ray_reflexive|✅ proved - complete|shostak|0.010|
|point_on_ray_trans|✅ proved - complete|shostak|0.034|
|pt_above_p1_and_below_p2_and_x_in_range_imp_pt_on_seg_on_ray|✅ proved - complete|shostak|2.245|
|is_right_point_ray_intersect?_imp_exists_pt_on_seg_point_on_ray?|✅ proved - incomplete|shostak|0.621|
|rightmost_x_val_TCC1|✅ proved - incomplete|shostak|0.050|
|all_edges_to_left|✅ proved - incomplete|shostak|0.190|
|vertex_on_perimeter|✅ proved - incomplete|shostak|0.060|
|edge_right_crossing_point_TCC1|✅ proved - complete|shostak|0.020|
|is_vertex_with_V_edges?_TCC1|✅ proved - incomplete|shostak|0.047|
|right_crossing_edges_no_V_TCC1|✅ proved - incomplete|shostak|0.060|
|right_ray_crossing_x_TCC1|✅ proved - incomplete|shostak|0.060|
|edge_right_crossing_point_y_eq|✅ proved - complete|shostak|0.147|
|right_crossing_point_on_edge|✅ proved - incomplete|shostak|0.166|
|diamond_center_is_inside|✅ proved - incomplete|shostak|1.598|
|odd_rt_xing_edges_card_eqv_point_in_polygon_rec|✅ proved - incomplete|shostak|0.680|
|even_card_purged_V_edges|✅ proved - incomplete|shostak|0.490|
|subset_purged_V_right_crossing_edges_TCC1|✅ proved - incomplete|shostak|0.027|
|subset_purged_V_right_crossing_edges|✅ proved - incomplete|shostak|0.080|
|no_V_edges_eq_crossing_edges_sans_purged|✅ proved - incomplete|shostak|5.907|
|card_xing_edges_from_n_and_no_V_both_odd|✅ proved - incomplete|shostak|0.120|
|card_rt_xing_edges_eq_card_rt_xing_x|✅ proved - incomplete|shostak|2.335|
|right_crossing_x_eq_rt_crossing_set|✅ proved - incomplete|shostak|6.853|
|point_in_polygon?_eq_is_point_in_polygon_exclusive?|✅ proved - incomplete|shostak|0.083|
|counted_is_crossing|✅ proved - incomplete|shostak|0.591|
|counted_or_uncounted_crossing|✅ proved - incomplete|shostak|1.868|
|crossing_on_perimeter|✅ proved - incomplete|shostak|0.020|
|set_before_subset|✅ proved - complete|shostak|0.030|
|crossings_subset|✅ proved - incomplete|shostak|0.032|
|crossing_before_diff|✅ proved - incomplete|shostak|1.109|
|right_crossings_min|✅ proved - incomplete|shostak|2.049|
|right_crossings_max|✅ proved - incomplete|shostak|0.414|
|before_crossings_empty|✅ proved - incomplete|shostak|0.020|
|right_crossings_gap|✅ proved - incomplete|shostak|0.924|
|right_counted_gap|✅ proved - incomplete|shostak|0.385|
|between_crossings_even|✅ proved - incomplete|shostak|0.272|
|opposite_sides_of_crossing|✅ proved - incomplete|shostak|1.763|
|outgoing_follows_point_in|✅ proved - incomplete|shostak|0.052|
|before_crossing_in_polygon|✅ proved - incomplete|shostak|0.060|
|before_counted_odd_crossings|✅ proved - incomplete|shostak|0.048|
|before_counted_in_polygon|✅ proved - incomplete|shostak|0.100|
|counted_crossing_follows_point_inside|✅ proved - incomplete|shostak|0.267|

## `arb_direc_edge_crossing`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|points_on_ray_diff_norms|✅ proved - incomplete|shostak|0.249|
|points_on_ray_norms_on_ray|✅ proved - incomplete|shostak|0.313|
|counted_crossing_on_perimeter|✅ proved - incomplete|shostak|0.030|
|arb_crossings_subset|✅ proved - incomplete|shostak|0.263|
|arb_crossings_before_diff|✅ proved - incomplete|shostak|0.298|
|member_arb_crossings_on_perimeter|✅ proved - incomplete|shostak|0.084|
|arb_crossings_min|✅ proved - incomplete|shostak|0.080|
|arb_crossings_max|✅ proved - incomplete|shostak|0.120|
|before_arb_crossings_empty|✅ proved - incomplete|shostak|0.030|
|one_adjacent_edge_not_parallel|✅ proved - incomplete|shostak|0.185|
|key_arb_intersections_nonneg|✅ proved - incomplete|shostak|0.030|
|key_arb_intersections_subset|✅ proved - incomplete|shostak|0.633|
|on_parallel_not_adj_counted|✅ proved - incomplete|shostak|0.474|
|on_parallel_not_counted_crossing|✅ proved - incomplete|shostak|0.030|
|parallel_on_arb_line|✅ proved - incomplete|shostak|0.136|
|parallel_diff_norm|✅ proved - incomplete|shostak|0.090|
|parallel_vectors_diff_segment_endpoints|✅ proved - incomplete|shostak|0.874|
|parallel_point_diff_norm|✅ proved - incomplete|shostak|0.284|
|point_not_on_parallel_segment|✅ proved - incomplete|shostak|3.338|
|below_min_key_arb_not_on|✅ proved - incomplete|shostak|0.085|
|below_min_key_arb_crossing|✅ proved - incomplete|shostak|0.120|
|below_min_key_same_crossing_set|✅ proved - incomplete|shostak|0.916|
|key_intersections_subset_arb_crossings|✅ proved - incomplete|shostak|0.470|
|key_intersections_empty_arb_crossings|✅ proved - incomplete|shostak|0.040|
|empty_key_arb_only_parallel|✅ proved - incomplete|shostak|0.040|
|empty_key_arb_crossings_emptyset|✅ proved - incomplete|shostak|0.352|
|empty_key_arb_before_empty_crossings|✅ proved - incomplete|shostak|0.133|
|empty_key_arb_before_empty_crossings_neg_TCC1|✅ proved - incomplete|shostak|0.020|
|empty_key_arb_before_empty_crossings_neg|✅ proved - incomplete|shostak|0.315|
|empty_key_arb_no_crossings|✅ proved - incomplete|shostak|0.040|
|empty_key_arb_no_crossings_neg|✅ proved - incomplete|shostak|0.036|
|empty_key_arb_no_crossings_add|✅ proved - incomplete|shostak|0.090|
|card_add_crossing_set|✅ proved - incomplete|shostak|0.125|
|point_before_min_key_not_on|✅ proved - incomplete|shostak|0.080|
|point_before_min_neg_key_not_on|✅ proved - incomplete|shostak|0.085|
|bisect_vector_nonzero|✅ proved - incomplete|shostak|0.220|
|bisect_not_parallel_prev|✅ proved - incomplete|shostak|1.920|
|bisect_not_parallel_next|✅ proved - incomplete|shostak|1.201|
|counted_direction_not_parallel|✅ proved - incomplete|shostak|0.132|
|bisect_not_parallel_cross_nonzero_TCC1|✅ proved - incomplete|shostak|0.168|
|bisect_not_parallel_cross_nonzero|✅ proved - incomplete|shostak|10.340|
|key_arb_intersections_pos|✅ proved - incomplete|shostak|0.080|
|counted_key_arb_intersections_pos|✅ proved - incomplete|shostak|0.070|
|counted_key_arb_intersections_reverse_pos|✅ proved - incomplete|shostak|0.065|
|crossing_direction_counted|✅ proved - incomplete|shostak|0.100|
|crossing_direction_neg|✅ proved - incomplete|shostak|0.096|
|prev_point_ray_crossing_set|✅ proved - incomplete|shostak|0.315|
|later_point_ray_crossing_set|✅ proved - incomplete|shostak|0.267|
|empty_ray_intersection_sets|✅ proved - incomplete|shostak|0.053|
|parallel_intersections_pos|✅ proved - incomplete|shostak|0.080|
|min_all_intersections_key_TCC1|✅ proved - incomplete|shostak|0.045|
|min_all_intersections_key|✅ proved - incomplete|shostak|0.030|
|min_all_intersections_parallel_TCC1|✅ proved - incomplete|shostak|0.030|
|min_all_intersections_parallel|✅ proved - incomplete|shostak|0.050|
|all_intersections_pos|✅ proved - incomplete|shostak|0.175|
|nonempty_min_key_arb_intersections_TCC1|✅ proved - incomplete|shostak|0.020|
|nonempty_min_key_arb_intersections|✅ proved - incomplete|shostak|0.134|
|nonempty_min_parallel_intersections_TCC1|✅ proved - incomplete|shostak|0.030|
|nonempty_min_parallel_intersections|✅ proved - incomplete|shostak|0.144|
|no_parallel_intersections_not_on_segment|✅ proved - incomplete|shostak|2.825|
|empty_parallel_intersections_not_on|✅ proved - incomplete|shostak|2.827|
|empty_all_not_on_perimeter|✅ proved - incomplete|shostak|0.106|
|below_min_all_arb_not_on|✅ proved - incomplete|shostak|0.080|
|below_min_all_arb_not_on_neg|✅ proved - incomplete|shostak|0.146|

## `polygon_miter_sequences`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|rightward_crossing_index_TCC1|✅ proved - incomplete|shostak|0.060|
|rightward_crossing_index_reverse_TCC1|✅ proved - incomplete|shostak|0.020|
|rightward_crossing_index_reverse_TCC2|✅ proved - incomplete|shostak|0.014|
|rightward_crossing_index_reverse|✅ proved - incomplete|shostak|1.613|
|crossed_edge_rising_or_falling|✅ proved - incomplete|shostak|0.527|
|leftmost_intersection_on_crossed_edge|✅ proved - incomplete|shostak|0.528|
|crossing_within_falling_edge_y_range|✅ proved - incomplete|shostak|0.766|
|cross_horiz_seq_with_falling_edge_pos|✅ proved - incomplete|shostak|1.868|
|between_edges_at_falling_edge_vertex|✅ proved - incomplete|shostak|3.899|
|crossing_falling_off_right_side|✅ proved - incomplete|shostak|0.293|
|three_pt_miniseq_in_polygon|✅ proved - incomplete|shostak|0.098|
|four_pt_miniseq_in_polygon|✅ proved - incomplete|shostak|0.141|
|polygon_vertex_seq_single_loop_TCC1|✅ proved - incomplete|shostak|0.060|
|polygon_vertex_seq_single_loop_TCC2|✅ proved - incomplete|shostak|0.246|
|polygon_vertex_seq_single_loop|✅ proved - incomplete|shostak|0.245|
|polygon_vertex_seq_intercept_eq_0_TCC1|✅ proved - incomplete|shostak|0.274|
|polygon_vertex_seq_intercept_eq_0|✅ proved - incomplete|shostak|0.230|
|polygon_vertex_seq_TCC1|✅ proved - incomplete|shostak|1.223|
|polygon_vertex_seq_intercept|✅ proved - incomplete|shostak|0.250|
|min_seg_separation_eq_min_edge_separation|✅ proved - incomplete|shostak|4.700|
|max_miter_offset_lt_min_edge_sep|✅ proved - incomplete|shostak|0.498|
|three_pt_offset_dist_in_polygon_TCC1|✅ proved - incomplete|shostak|0.040|
|three_pt_offset_dist_in_polygon|✅ proved - incomplete|shostak|0.572|
|four_pt_offset_dist_in_polygon_TCC1|✅ proved - incomplete|shostak|0.080|
|four_pt_offset_dist_in_polygon|✅ proved - incomplete|shostak|1.217|
|polygon_miter_point_seq_element_TCC1|✅ proved - incomplete|shostak|0.242|
|polygon_miter_point_seq_element_TCC2|✅ proved - incomplete|shostak|0.223|
|polygon_miter_point_seq_element_TCC3|✅ proved - incomplete|shostak|0.070|
|polygon_miter_point_seq_element_TCC4|✅ proved - incomplete|shostak|0.050|
|polygon_miter_point_seq_element|✅ proved - incomplete|shostak|0.573|
|point_on_perim_iff_on_vertex_seq|✅ proved - incomplete|shostak|0.315|
|min_seg_sep_le_edge_length|✅ proved - incomplete|shostak|0.474|
|min_miter_sine_le_vertex_sine_TCC1|✅ proved - incomplete|shostak|0.064|
|min_miter_sine_le_vertex_sine_TCC2|✅ proved - incomplete|shostak|0.060|
|min_miter_sine_le_vertex_sine|✅ proved - incomplete|shostak|0.628|
|vertex_miter_point_TCC1|✅ proved - incomplete|shostak|0.030|
|vertex_miter_point_TCC2|✅ proved - incomplete|shostak|0.040|
|seg_from_miter_point_not_on_perim_TCC1|✅ proved - incomplete|shostak|0.699|
|seg_from_miter_point_not_on_perim|✅ proved - incomplete|shostak|20.836|
|miter_point_seqs_not_on_perim_TCC1|✅ proved - incomplete|shostak|0.090|
|miter_point_seqs_not_on_perim|✅ proved - incomplete|shostak|0.494|
|miter_point_in_polygon_miter_seg_seq|✅ proved - incomplete|shostak|1.699|
|miter_point_not_on_perim|✅ proved - incomplete|shostak|0.150|
|miter_point_dist_to_vertex_bound|✅ proved - incomplete|shostak|0.763|
|singleton_contact_free_path|✅ proved - incomplete|shostak|0.030|
|append_contact_free_paths_TCC1|✅ proved - incomplete|shostak|0.040|
|append_contact_free_paths_TCC2|✅ proved - incomplete|shostak|0.040|
|append_contact_free_paths|✅ proved - incomplete|shostak|0.056|
|append_contact_free_paths_excl|✅ proved - incomplete|shostak|0.050|
|polygon_miter_pt_seq_contact_free|✅ proved - incomplete|shostak|0.277|
|polygon_miter_pt_subseq_contact_free_TCC1|✅ proved - incomplete|shostak|0.746|
|polygon_miter_pt_subseq_contact_free|✅ proved - incomplete|shostak|0.582|
|polygon_miter_pt_subseq_pair_contact_free_TCC1|✅ proved - incomplete|shostak|0.507|
|polygon_miter_pt_subseq_pair_contact_free_TCC2|✅ proved - incomplete|shostak|0.648|
|polygon_miter_pt_subseq_pair_contact_free|✅ proved - incomplete|shostak|2.084|
|below_left_falling_seg_point_right_TCC1|✅ proved - complete|shostak|0.030|
|below_left_falling_seg_point_right|✅ proved - incomplete|shostak|1.441|
|above_left_falling_seg_point_right_TCC1|✅ proved - complete|shostak|0.030|
|above_left_falling_seg_point_right_TCC2|✅ proved - complete|shostak|0.030|
|above_left_falling_seg_point_right|✅ proved - incomplete|shostak|0.207|
|on_seg_from_miter_pt_to_endpoint_TCC1|✅ proved - incomplete|shostak|0.130|
|on_seg_from_miter_pt_to_endpoint_TCC2|✅ proved - incomplete|shostak|0.206|
|on_seg_from_miter_pt_to_endpoint_TCC3|✅ proved - incomplete|shostak|0.096|
|on_seg_from_miter_pt_to_endpoint_TCC4|✅ proved - incomplete|shostak|0.183|
|on_seg_from_miter_pt_to_endpoint|✅ proved - incomplete|shostak|14.251|
|on_seg_from_miter_pt_contact_free_TCC1|✅ proved - incomplete|shostak|0.130|
|on_seg_from_miter_pt_contact_free_TCC2|✅ proved - incomplete|shostak|0.053|
|on_seg_from_miter_pt_contact_free|✅ proved - incomplete|shostak|4.858|
|vertex_to_miter_pt_seq_contact_free_TCC1|✅ proved - incomplete|shostak|0.123|
|vertex_to_miter_pt_seq_contact_free_TCC2|✅ proved - incomplete|shostak|0.050|
|vertex_to_miter_pt_seq_contact_free|✅ proved - incomplete|shostak|17.199|
|next_vtx_to_miter_pt_subcase_zero_TCC1|✅ proved - incomplete|shostak|0.414|
|next_vtx_to_miter_pt_subcase_zero_TCC2|✅ proved - incomplete|shostak|0.094|
|next_vtx_to_miter_pt_subcase_zero_TCC3|✅ proved - incomplete|shostak|0.213|
|next_vtx_to_miter_pt_subcase_zero|✅ proved - incomplete|shostak|12.943|
|next_vtx_to_miter_pt_subcase_TCC1|✅ proved - incomplete|shostak|0.070|
|next_vtx_to_miter_pt_subcase_TCC2|✅ proved - incomplete|shostak|0.089|
|next_vtx_to_miter_pt_subcase_TCC3|✅ proved - incomplete|shostak|0.881|
|next_vtx_to_miter_pt_subcase|✅ proved - incomplete|shostak|1.381|
|next_vtx_to_miter_pt_seq_contact_free_TCC1|✅ proved - incomplete|shostak|0.140|
|next_vtx_to_miter_pt_seq_contact_free_TCC2|✅ proved - incomplete|shostak|0.145|
|next_vtx_to_miter_pt_seq_contact_free|✅ proved - incomplete|shostak|18.766|
|nonvertex_to_miter_pt_seq_contact_free_TCC1|✅ proved - incomplete|shostak|0.134|
|nonvertex_to_miter_pt_seq_contact_free_TCC2|✅ proved - incomplete|shostak|0.060|
|nonvertex_to_miter_pt_seq_contact_free|✅ proved - incomplete|shostak|2.027|
|rightward_crossing_falling_edge_cases|✅ proved - incomplete|shostak|1.004|
|path_to_miter_pt_seq_contact_free_TCC1|✅ proved - incomplete|shostak|0.129|
|path_to_miter_pt_seq_contact_free_TCC2|✅ proved - incomplete|shostak|0.050|
|path_to_miter_pt_seq_contact_free|✅ proved - incomplete|shostak|3.609|

## `polygon_membership`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|serpentine_ray_TCC1|✅ proved - incomplete|shostak|0.040|
|serpentine_ray_TCC2|✅ proved - incomplete|shostak|0.050|
|serp_ray_outside?_TCC1|✅ proved - incomplete|shostak|0.040|
|serp_ray_outside?_TCC2|✅ proved - incomplete|shostak|0.053|
|serp_ray_outside?_TCC3|✅ proved - incomplete|shostak|0.070|
|serp_ray_outside?_TCC4|✅ proved - incomplete|shostak|0.030|
|point_outside_polygon?_TCC1|✅ proved - incomplete|shostak|0.030|
|perimeter_not_outside|✅ proved - incomplete|shostak|0.112|
|point_on_serp_ray?_TCC1|✅ proved - incomplete|shostak|0.040|
|downstream_point_outside|✅ proved - incomplete|shostak|1.769|
|pt_inside_imp_inside_rev_polygon_TCC1|✅ proved - incomplete|shostak|0.020|
|pt_inside_imp_inside_rev_polygon|✅ proved - incomplete|shostak|0.586|
|pt_inside_eqv_inside_rev_polygon_TCC1|✅ proved - incomplete|shostak|0.020|
|pt_inside_eqv_inside_rev_polygon|✅ proved - incomplete|shostak|0.040|
|pt_outside_eqv_outside_rev_polygon|✅ proved - incomplete|shostak|0.163|
|prev_edge_not_crossed_by_perp_left_segment_TCC1|✅ proved - incomplete|shostak|0.020|
|prev_edge_not_crossed_by_perp_left_segment|✅ proved - incomplete|shostak|2.693|
|prev_edge_not_crossed_by_perp_right_segment_TCC1|✅ proved - incomplete|shostak|0.030|
|prev_edge_not_crossed_by_perp_right_segment|✅ proved - incomplete|shostak|2.721|
|next_edge_not_crossed_by_perp_left_segment_TCC1|✅ proved - incomplete|shostak|0.020|
|next_edge_not_crossed_by_perp_left_segment|✅ proved - incomplete|shostak|3.011|
|next_edge_not_crossed_by_perp_right_segment_TCC1|✅ proved - incomplete|shostak|0.030|
|next_edge_not_crossed_by_perp_right_segment|✅ proved - incomplete|shostak|3.258|
|nearby_perp_right_segment_not_on_perim_TCC1|✅ proved - incomplete|shostak|0.034|
|nearby_perp_right_segment_not_on_perim|✅ proved - incomplete|shostak|3.131|
|nearby_perp_left_segment_not_on_perim_TCC1|✅ proved - incomplete|shostak|0.030|
|nearby_perp_left_segment_not_on_perim|✅ proved - incomplete|shostak|3.128|
|rightward_offset_pt_not_on_perim|✅ proved - incomplete|shostak|0.268|
|leftward_offset_pt_not_on_perim|✅ proved - incomplete|shostak|0.277|
|on_perimeter_edge_path?_TCC1|✅ proved - incomplete|shostak|0.255|
|on_perimeter_vertex_path?_TCC1|✅ proved - incomplete|shostak|0.279|
|perimeter_segment_path_TCC1|✅ proved - incomplete|shostak|0.076|
|perimeter_segment_path_TCC2|✅ proved - incomplete|shostak|13.787|
|perimeter_segment_path_TCC3|✅ proved - incomplete|shostak|0.160|
|perimeter_segment_path_TCC4|✅ proved - incomplete|shostak|0.237|
|perimeter_segment_path_TCC5|✅ proved - incomplete|shostak|0.166|
|perimeter_segment_path_TCC6|✅ proved - incomplete|shostak|2.070|
|initial_point_perimeter_segment_path_TCC1|✅ proved - incomplete|shostak|0.040|
|initial_point_perimeter_segment_path|✅ proved - incomplete|shostak|0.530|
|final_point_perimeter_segment_path_TCC1|✅ proved - incomplete|shostak|0.050|
|final_point_perimeter_segment_path|✅ proved - incomplete|shostak|1.186|
|perim_segment_path_on_perim|✅ proved - incomplete|shostak|0.425|
|append_path_to_s_ray_TCC1|✅ proved - incomplete|shostak|0.050|
|append_path_to_s_ray_TCC2|✅ proved - incomplete|shostak|0.046|
|append_path_to_s_ray_TCC3|✅ proved - incomplete|shostak|0.030|
|append_path_to_s_ray_TCC4|✅ proved - incomplete|shostak|0.050|
|append_path_to_s_ray_TCC5|✅ proved - incomplete|shostak|0.555|
|truncated_serp_ray_TCC1|✅ proved - incomplete|shostak|0.047|
|truncated_serp_ray_TCC2|✅ proved - incomplete|shostak|0.282|
|truncated_serp_ray_TCC3|✅ proved - incomplete|shostak|0.302|
|truncated_serp_ray_TCC4|✅ proved - incomplete|shostak|0.373|
|truncated_serp_ray_TCC5|✅ proved - incomplete|shostak|0.140|
|truncated_serp_ray_TCC6|✅ proved - incomplete|shostak|0.244|
|truncated_serp_ray_TCC7|✅ proved - incomplete|shostak|0.305|
|truncated_serp_ray_TCC8|✅ proved - incomplete|shostak|1.778|
|initial_point_append_path_to_s_ray_TCC1|✅ proved - incomplete|shostak|0.060|
|initial_point_append_path_to_s_ray_TCC2|✅ proved - incomplete|shostak|0.050|
|initial_point_append_path_to_s_ray|✅ proved - incomplete|shostak|0.172|
|append_outside_seq_to_s_ray|✅ proved - incomplete|shostak|1.159|
|initial_point_of_truncated_s_ray_TCC1|✅ proved - incomplete|shostak|0.050|
|initial_point_of_truncated_s_ray|✅ proved - incomplete|shostak|0.304|
|point_on_truncated_s_ray_on_s_ray|✅ proved - incomplete|shostak|0.971|
|truncated_s_ray_outside|✅ proved - incomplete|shostak|0.050|
|point_in_polygon_conds_equiv_horiz_TCC1|✅ proved - incomplete|shostak|0.020|
|point_in_polygon_conds_equiv_horiz|✅ proved - incomplete|shostak|3.896|
|extend_points_inside_polygon|✅ proved - incomplete|shostak|0.716|
|extend_points_inside_polygon_excl|✅ proved - incomplete|shostak|0.725|
|extend_points_outside_polygon|✅ proved - incomplete|shostak|0.187|
|extend_points_outside_polygon_excl|✅ proved - incomplete|shostak|1.255|
|point_out_pts_on_non_perim_path_out_TCC1|✅ proved - incomplete|shostak|0.030|
|point_out_pts_on_non_perim_path_out|✅ proved - incomplete|shostak|0.888|
|point_in_pts_on_non_perim_path_in_TCC1|✅ proved - incomplete|shostak|0.040|
|point_in_pts_on_non_perim_path_in|✅ proved - incomplete|shostak|0.843|
|topleft_miter_point_in_or_out_TCC1|✅ proved - incomplete|shostak|0.080|
|topleft_miter_point_in_or_out_TCC2|✅ proved - incomplete|shostak|0.065|
|topleft_miter_point_in_or_out|✅ proved - incomplete|shostak|3.452|
|polygon_miter_sequence_in_or_out_TCC1|✅ proved - incomplete|shostak|0.094|
|polygon_miter_sequence_in_or_out|✅ proved - incomplete|shostak|10.028|
|falling_edge_imp_ccw_in_or_out|✅ proved - incomplete|shostak|0.664|
|ccw_imp_falling_edge_in_or_out|✅ proved - incomplete|shostak|0.000|
|point_in_has_rightward_crossings|✅ proved - incomplete|shostak|1.083|
|point_outside_imp_not_inside|✅ proved - incomplete|shostak|1.821|
|point_outside_imp_not_in|✅ proved - incomplete|shostak|0.050|
|point_not_in_imp_outside|✅ proved - incomplete|shostak|1.037|
|point_out_not_in|✅ proved - incomplete|shostak|0.030|
|same_perim_pts_imp_same_exterior_pts|✅ proved - incomplete|shostak|0.170|
|same_perim_pts_imp_same_interior_pts|✅ proved - incomplete|shostak|0.050|
|falling_edge_ccw_in_or_out|✅ proved - incomplete|shostak|0.373|
|ccw_falling_edge_in_or_out|✅ proved - incomplete|shostak|0.516|
|nearest_rightward_crossing_in_or_out|✅ proved - incomplete|shostak|0.050|
|point_in_has_inside_segments_TCC1|✅ proved - incomplete|shostak|0.040|
|point_in_has_inside_segments|✅ proved - incomplete|shostak|7.281|
|point_outside_not_in_polygon_arb|✅ proved - incomplete|shostak|0.030|
|point_outside_not_in_polygon_arb_neg|✅ proved - incomplete|shostak|0.020|
|left_right_midpoints_in_out|✅ proved - incomplete|shostak|5.159|
|right_left_midpoints_in_out|✅ proved - incomplete|shostak|5.002|
|left_right_midpoints_out_in|✅ proved - incomplete|shostak|4.994|
|right_left_midpoints_out_in|✅ proved - incomplete|shostak|1.697|
|counted_crossing_direction_exists|✅ proved - incomplete|shostak|0.834|
|free_ray_point_outside|✅ proved - incomplete|shostak|0.131|
|only_parallel_ray_point_outside|✅ proved - incomplete|shostak|0.104|
|one_dir_empty_intersections_TCC1|✅ proved - incomplete|shostak|0.020|
|one_dir_empty_intersections|✅ proved - incomplete|shostak|0.382|
|one_dir_empty_point_outside|✅ proved - incomplete|shostak|0.253|
|one_dir_out_other_in_polygon|✅ proved - incomplete|shostak|0.314|
|opposite_sides_of_crossing_arb|✅ proved - incomplete|shostak|0.353|
|nearby_point_outside_exists_either|✅ proved - incomplete|shostak|1.355|
|nearby_point_outside_exists|✅ proved - incomplete|shostak|0.102|
|nearby_point_in_polygon_TCC1|✅ proved - incomplete|shostak|0.070|
|nearby_point_in_polygon|✅ proved - incomplete|shostak|0.113|
|A_perim_outside_imp_B_perim_inside|✅ proved - incomplete|shostak|0.311|
|overlap_imp_inside_pt_on_perim|✅ proved - incomplete|shostak|0.140|
|outside_C_inside_A|✅ proved - incomplete|shostak|0.579|
|container_edges_not_inside|✅ proved - incomplete|shostak|0.393|
|contained_not_on_perimeter|✅ proved - incomplete|shostak|0.024|
|contained_membership|✅ proved - incomplete|shostak|0.165|
|contained_membership_cor|✅ proved - incomplete|shostak|0.045|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib//float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-pvsio-fix.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210219-extratregies.lisp`|
