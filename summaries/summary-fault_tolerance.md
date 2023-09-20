# Summary for `fault_tolerance`
Run started at 0:6:39 9/20/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **595**   | **595**    | **595**    | **0**  | **2:49.362 s**   |
|top|0|0|0|0|0.000|
|core_top|0|0|0|0|0.000|
|majority_integration|2|2|2|0|0.831|
|protocol_integration|0|0|0|0|0.000|
|comm_integration|3|3|3|0|0.595|
|comm_integration_stage|15|15|15|0|2.296|
|integration_fault_model|1|1|1|0|0.130|
|finite_sets_below_extra|2|2|2|0|0.225|
|exact_comm_stage|3|3|3|0|0.429|
|fault_assumptions_stage|13|13|13|0|2.373|
|pigeonhole|18|18|18|0|3.626|
|tau_declaration|4|4|4|0|0.688|
|node_functions_stage|0|0|0|0|0.000|
|node|6|6|6|0|0.856|
|local|0|0|0|0|0.000|
|exact_comm|1|1|1|0|0.194|
|node_functions|0|0|0|0|0.000|
|protocol|1|1|1|0|0.124|
|majority|5|5|5|0|1.893|
|majority_stage|8|8|8|0|1.172|
|majority_properties|5|5|5|0|1.151|
|finite_seqs|12|12|12|0|1.582|
|exact_reduce_integration|3|3|3|0|1.312|
|ordered_message|3|3|3|0|0.692|
|exact_reduce|5|5|5|0|2.577|
|k_ordered|0|0|0|0|0.000|
|reduce_choice|7|7|7|0|1.544|
|reduce_properties|26|26|26|0|6.149|
|ordered_finite_sequences|41|41|41|0|7.894|
|relations_extra|25|25|25|0|2.961|
|select_minmax|9|9|9|0|1.232|
|exact_reduce_stage|7|7|7|0|1.631|
|reduce_synch|14|14|14|0|12.131|
|timing_integration|1|1|1|0|0.206|
|timing_integration_stage|31|31|31|0|5.949|
|timing_window|3|3|3|0|0.886|
|timing_imprecision|18|18|18|0|4.668|
|inverse_clocks|16|16|16|0|3.738|
|physical_clocks|21|21|21|0|6.258|
|abs_props|4|4|4|0|0.552|
|minmax_ineq|19|19|19|0|2.289|
|floor_ceiling_ineq|18|18|18|0|2.657|
|bounded_ints|3|3|3|0|0.435|
|inexact_comm_stage|9|9|9|0|1.575|
|real_finite_sequences|28|28|28|0|8.458|
|inexact_comm|0|0|0|0|0.000|
|reduce_synch_stage|9|9|9|0|6.886|
|clock_shift|11|11|11|0|2.580|
|inexact_reduce_stage|13|13|13|0|4.294|
|inexact_reduce|9|9|9|0|8.377|
|convergence_top|0|0|0|0|0.000|
|median_stage|2|2|2|0|0.607|
|median_overlap|1|1|1|0|0.511|
|middle_third_stage|14|14|14|0|5.334|
|middle_third_overlap|1|1|1|0|0.551|
|middle_third_pigeonhole|1|1|1|0|0.741|
|pigeonhole_int|14|14|14|0|2.619|
|weber_stage|4|4|4|0|1.112|
|weber_overlap|1|1|1|0|0.884|
|virtual_clock_top|0|0|0|0|0.000|
|virtual_clock_1|18|18|18|0|8.448|
|synch_protocol_invariants|14|14|14|0|2.863|
|synch_constant_definitions|14|14|14|0|9.162|
|synch_parameter_constraints|0|0|0|0|0.000|
|clock_minmax|6|6|6|0|1.055|
|function_image_nonempty|2|2|2|0|0.236|
|interval_clocks|11|11|11|0|4.394|
|virtual_clocks|12|12|12|0|6.437|
|event_sequences|12|12|12|0|1.991|
|virtual_clock_2|16|16|16|0|6.321|
## Detailed Summary 
## `top`
No formula declaration found.
## `core_top`
No formula declaration found.
## `majority_integration`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|consensus_validity|✅ proved - incomplete|shostak|0.455|
|agreement_generation|✅ proved - incomplete|shostak|0.376|

## `protocol_integration`
No formula declaration found.
## `comm_integration`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|quorum_correct_integration|✅ proved - incomplete|shostak|0.192|
|majority_correct_rw|✅ proved - incomplete|shostak|0.210|
|all_symmetric_integration|✅ proved - incomplete|shostak|0.193|

## `comm_integration_stage`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|msg_checker_TCC1|✅ proved - complete|shostak|0.110|
|osym_rcvd_TCC1|✅ proved - complete|shostak|0.110|
|oasym_rcvd_TCC1|✅ proved - complete|shostak|0.114|
|sv_rcvd_TCC1|✅ proved - complete|shostak|0.120|
|correct_denotation_send|✅ proved - complete|shostak|0.170|
|conforms_type|✅ proved - complete|shostak|0.125|
|scheduled_conform|✅ proved - incomplete|shostak|0.114|
|exact_correct_denotation|✅ proved - incomplete|shostak|0.130|
|quorum_correct_integration|✅ proved - incomplete|shostak|0.120|
|majority_correct_rw|✅ proved - incomplete|shostak|0.125|
|exact_single_denotation|✅ proved - incomplete|shostak|0.309|
|uniformly_enabled|✅ proved - incomplete|shostak|0.262|
|exact_symmetric_single|✅ proved - incomplete|shostak|0.232|
|all_symmetric_integration|✅ proved - incomplete|shostak|0.130|
|good_conforms|✅ proved - incomplete|shostak|0.125|

## `integration_fault_model`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|symmetric_single_denotation|✅ proved - complete|shostak|0.130|

## `finite_sets_below_extra`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|below_is_finite_type|✅ proved - complete|shostak|0.115|
|set_below_is_finite|✅ proved - incomplete|shostak|0.110|

## `exact_comm_stage`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|correct_uniform|✅ proved - incomplete|shostak|0.150|
|correct_uniform_alt|✅ proved - incomplete|shostak|0.145|
|majority_correct_rw|✅ proved - incomplete|shostak|0.134|

## `fault_assumptions_stage`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|enabled_TCC1|✅ proved - incomplete|shostak|0.120|
|enabled?_TCC1|✅ proved - incomplete|shostak|0.110|
|enabled_within|✅ proved - incomplete|shostak|0.134|
|quorum_implies_majority|✅ proved - incomplete|shostak|0.224|
|majority|✅ proved - incomplete|shostak|0.254|
|enabled_within_quorum|✅ proved - incomplete|shostak|0.183|
|enabled_within_quorum_nada|✅ proved - incomplete|shostak|0.195|
|quorum_nonempty|✅ proved - incomplete|shostak|0.145|
|max_TCC1|✅ proved - incomplete|shostak|0.190|
|intersection_majority_nonempty|✅ proved - incomplete|shostak|0.154|
|byzantine_intersection_nonempty|✅ proved - incomplete|shostak|0.274|
|intersection_majority|✅ proved - incomplete|shostak|0.250|
|enabled_agree|✅ proved - incomplete|shostak|0.140|

## `pigeonhole`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|pigeonhole|✅ proved - complete|shostak|0.206|
|card_difference_alt|✅ proved - complete|shostak|0.241|
|pigeonhole_difference|✅ proved - complete|shostak|0.215|
|simple_majority_subset|✅ proved - complete|shostak|0.160|
|majority_subset_nonempty|✅ proved - complete|shostak|0.162|
|simple_majority_nonempty|✅ proved - complete|shostak|0.110|
|majority_nonempty|✅ proved - complete|shostak|0.144|
|majority_pigeonhole|✅ proved - complete|shostak|0.220|
|simple_majority_pigeonhole|✅ proved - complete|shostak|0.275|
|median_pigeonhole|✅ proved - complete|shostak|0.447|
|intersection_nonempty|✅ proved - complete|shostak|0.170|
|two_thirds_overlap_pigeonhole|✅ proved - complete|shostak|0.350|
|quorum?_TCC1|✅ proved - complete|shostak|0.120|
|M_TCC1|✅ proved - complete|shostak|0.120|
|M_TCC2|✅ proved - complete|shostak|0.189|
|nada_reduce|✅ proved - complete|shostak|0.137|
|mid_reduce|✅ proved - complete|shostak|0.190|
|byz_reduce|✅ proved - complete|shostak|0.170|

## `tau_declaration`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|nada_TCC1|✅ proved - complete|shostak|0.115|
|mid_TCC1|✅ proved - complete|shostak|0.170|
|byz_TCC1|✅ proved - complete|shostak|0.180|
|weber_TCC1|✅ proved - complete|shostak|0.223|

## `node_functions_stage`
No formula declaration found.
## `node`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|uniform_char|✅ proved - complete|shostak|0.120|
|enabled_symmetric_uniform|✅ proved - complete|shostak|0.136|
|m_TCC1|✅ proved - complete|shostak|0.185|
|vec2seq_TCC1|✅ proved - complete|shostak|0.120|
|vec2seq_agreement|✅ proved - complete|shostak|0.165|
|vec2seq_type|✅ proved - complete|shostak|0.130|

## `local`
No formula declaration found.
## `exact_comm`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|majority_correct_rw|✅ proved - incomplete|shostak|0.194|

## `node_functions`
No formula declaration found.
## `protocol`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|protocol_rw|✅ proved - complete|shostak|0.124|

## `majority`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|consensus_validity|✅ proved - incomplete|shostak|0.568|
|agreement_generation|✅ proved - incomplete|shostak|0.499|
|faulty_source|✅ proved - incomplete|shostak|0.282|
|faulty_stage|✅ proved - incomplete|shostak|0.180|
|asymmetric_source|✅ proved - incomplete|shostak|0.364|

## `majority_stage`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|majority_at_destination|✅ proved - incomplete|shostak|0.170|
|majority_validity|✅ proved - incomplete|shostak|0.125|
|consensus_validity|✅ proved - incomplete|shostak|0.135|
|agreement_generation_alt|✅ proved - incomplete|shostak|0.164|
|agreement_generation|✅ proved - incomplete|shostak|0.130|
|faulty_source|✅ proved - incomplete|shostak|0.176|
|sources_disagree|✅ proved - incomplete|shostak|0.136|
|asymmetric_source|✅ proved - incomplete|shostak|0.136|

## `majority_properties`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|is_majority|✅ proved - incomplete|shostak|0.520|
|majority_value_subset|✅ proved - complete|shostak|0.173|
|uniform_majority|✅ proved - complete|shostak|0.223|
|majority_validity|✅ proved - incomplete|shostak|0.120|
|agreement_generation|✅ proved - incomplete|shostak|0.115|

## `finite_seqs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|choose_TCC1|✅ proved - complete|shostak|0.110|
|choose_in?|✅ proved - complete|shostak|0.130|
|choose_consensus|✅ proved - complete|shostak|0.120|
|maj_exists_same|✅ proved - incomplete|shostak|0.124|
|mf_lem|✅ proved - incomplete|shostak|0.120|
|majority_choose_consensus|✅ proved - incomplete|shostak|0.143|
|majority_choose2_TCC1|✅ proved - complete|shostak|0.110|
|majority_choose2_TCC2|✅ proved - complete|shostak|0.100|
|majority2_choose_majority|✅ proved - incomplete|shostak|0.216|
|uniform_TCC1|✅ proved - complete|shostak|0.114|
|uniform_TCC2|✅ proved - incomplete|shostak|0.120|
|majority_same|✅ proved - incomplete|shostak|0.175|

## `exact_reduce_integration`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|lower_validity|✅ proved - incomplete|shostak|0.433|
|upper_validity|✅ proved - incomplete|shostak|0.436|
|agreement_generation|✅ proved - incomplete|shostak|0.443|

## `ordered_message`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|valid_iff_ord1|✅ proved - complete|shostak|0.120|
|eq_iff|✅ proved - complete|shostak|0.145|
|message_total_order|✅ proved - complete|shostak|0.427|

## `exact_reduce`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|lower_validity|✅ proved - incomplete|shostak|0.786|
|upper_validity|✅ proved - incomplete|shostak|0.769|
|consensus_validity|✅ proved - incomplete|shostak|0.000|
|exact_agreement_propagation|✅ proved - incomplete|shostak|0.402|
|agreement_generation|✅ proved - incomplete|shostak|0.620|

## `k_ordered`
No formula declaration found.
## `reduce_choice`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|in_rcvd|✅ proved - incomplete|shostak|0.256|
|min_reduce_choice|✅ proved - incomplete|shostak|0.180|
|max_reduce_choice|✅ proved - incomplete|shostak|0.155|
|reduce_overlap?_TCC1|✅ proved - incomplete|shostak|0.154|
|reduce_overlap?_TCC2|✅ proved - incomplete|shostak|0.385|
|max_length_TCC1|✅ proved - incomplete|shostak|0.170|
|max_length_bound|✅ proved - incomplete|shostak|0.244|

## `reduce_properties`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|lowset_TCC1|✅ proved - incomplete|shostak|0.170|
|card_lower_leq_lowset_TCC1|✅ proved - complete|shostak|0.114|
|card_lower_leq_lowset|✅ proved - incomplete|shostak|0.233|
|card_lowset|✅ proved - incomplete|shostak|0.220|
|card_upper_leq_highset|✅ proved - incomplete|shostak|0.243|
|card_highset|✅ proved - incomplete|shostak|0.202|
|reduce_TCC1|✅ proved - complete|shostak|0.140|
|reduce_TCC2|✅ proved - complete|shostak|0.140|
|reduce_TCC3|✅ proved - incomplete|shostak|0.261|
|min_reduce_TCC1|✅ proved - complete|shostak|0.120|
|min_reduce_TCC2|✅ proved - incomplete|shostak|0.194|
|min_reduce|✅ proved - incomplete|shostak|0.234|
|max_reduce_TCC1|✅ proved - incomplete|shostak|0.233|
|max_reduce|✅ proved - incomplete|shostak|0.244|
|reduce_length|✅ proved - incomplete|shostak|0.345|
|reduce_rewrite_TCC1|✅ proved - incomplete|shostak|0.384|
|reduce_rewrite_TCC2|✅ proved - incomplete|shostak|0.285|
|reduce_rewrite|✅ proved - incomplete|shostak|0.326|
|reduce_overlap_TCC1|✅ proved - incomplete|shostak|0.498|
|reduce_overlap|✅ proved - incomplete|shostak|0.329|
|reduce_agreement|✅ proved - incomplete|shostak|0.150|
|min_validity|✅ proved - incomplete|shostak|0.254|
|max_validity|✅ proved - incomplete|shostak|0.255|
|choice_lower_validity|✅ proved - incomplete|shostak|0.205|
|choice_upper_validity|✅ proved - incomplete|shostak|0.205|
|choice_agreement_generation|✅ proved - incomplete|shostak|0.165|

## `ordered_finite_sequences`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|extract_one_TCC1|✅ proved - complete|shostak|0.225|
|extract_one_TCC2|✅ proved - complete|shostak|0.154|
|extract_one|✅ proved - complete|shostak|0.190|
|extract_upper_TCC1|✅ proved - complete|shostak|0.224|
|extract_upper|✅ proved - complete|shostak|0.215|
|min_extract_TCC1|✅ proved - incomplete|shostak|0.220|
|min_extract_TCC2|✅ proved - incomplete|shostak|0.140|
|min_extract|✅ proved - incomplete|shostak|0.365|
|max_extract_TCC1|✅ proved - incomplete|shostak|0.154|
|max_extract|✅ proved - incomplete|shostak|0.386|
|minmax_TCC1|✅ proved - incomplete|shostak|0.155|
|min_le_max|✅ proved - incomplete|shostak|0.150|
|min_minmax|✅ proved - incomplete|shostak|0.216|
|max_minmax|✅ proved - incomplete|shostak|0.250|
|min_in_consensus|✅ proved - incomplete|shostak|0.120|
|max_in_consensus|✅ proved - incomplete|shostak|0.120|
|in_consensus|✅ proved - incomplete|shostak|0.164|
|lower_TCC1|✅ proved - complete|shostak|0.130|
|lower_TCC2|✅ proved - incomplete|shostak|0.114|
|lower_TCC3|✅ proved - incomplete|shostak|0.150|
|upper_TCC1|✅ proved - incomplete|shostak|0.154|
|map_set_TCC1|✅ proved - complete|shostak|0.110|
|map_set_TCC2|✅ proved - incomplete|shostak|0.120|
|map_set_TCC3|✅ proved - incomplete|shostak|0.154|
|map_subset_lower_TCC1|✅ proved - incomplete|shostak|0.100|
|map_subset_lower|✅ proved - incomplete|shostak|0.235|
|map_subset_upper_TCC1|✅ proved - incomplete|shostak|0.115|
|map_subset_upper|✅ proved - incomplete|shostak|0.235|
|mapper_TCC1|✅ proved - incomplete|shostak|0.194|
|mapper_TCC2|✅ proved - incomplete|shostak|0.190|
|map_card_eq|✅ proved - incomplete|shostak|0.260|
|card_below_set_TCC1|✅ proved - incomplete|shostak|0.110|
|card_below_set|✅ proved - incomplete|shostak|0.389|
|card_above_set_TCC1|✅ proved - incomplete|shostak|0.114|
|card_above_set|✅ proved - incomplete|shostak|0.359|
|card_lower|✅ proved - incomplete|shostak|0.263|
|card_upper|✅ proved - incomplete|shostak|0.225|
|sort_overlap_TCC1|✅ proved - complete|shostak|0.140|
|sort_overlap_TCC2|✅ proved - incomplete|shostak|0.155|
|sort_overlap|✅ proved - incomplete|shostak|0.295|
|leq_validity|✅ proved - incomplete|shostak|0.135|

## `relations_extra`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|strict_order_is_asymmetric|✅ proved - complete|shostak|0.120|
|asymmetric_is_antisymmetric|✅ proved - complete|shostak|0.120|
|asymmetric_is_irreflexive|✅ proved - complete|shostak|0.116|
|reflexive|✅ proved - complete|shostak|0.110|
|irreflexive|✅ proved - complete|shostak|0.110|
|symmetric|✅ proved - complete|shostak|0.110|
|antisymmetric|✅ proved - complete|shostak|0.116|
|asymmetric|✅ proved - complete|shostak|0.100|
|transitive|✅ proved - complete|shostak|0.110|
|dichotomous|✅ proved - complete|shostak|0.110|
|trichotomous|✅ proved - complete|shostak|0.106|
|dichotomous_is_trichotomous|✅ proved - complete|shostak|0.110|
|well_founded|✅ proved - complete|shostak|0.110|
|reflexive_closure_TCC1|✅ proved - complete|shostak|0.120|
|irreflexive_kernel_TCC1|✅ proved - complete|shostak|0.114|
|symmetric_closure_TCC1|✅ proved - complete|shostak|0.140|
|symmetric_kernel_TCC1|✅ proved - complete|shostak|0.130|
|reflexive_closure_preserves_transitive|✅ proved - complete|shostak|0.126|
|strict_order_to_partial_order|✅ proved - complete|shostak|0.120|
|reflexive_closure_dichotomous|✅ proved - complete|shostak|0.127|
|strict_total_order_to_total_order|✅ proved - complete|shostak|0.100|
|partial_order_to_strict_order|✅ proved - complete|shostak|0.118|
|irreflexive_kernel_trichotomous|✅ proved - complete|shostak|0.140|
|total_order_to_strict_total_order|✅ proved - complete|shostak|0.120|
|symmetric_kernel_of_preorder|✅ proved - complete|shostak|0.158|

## `select_minmax`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|v_min_TCC1|✅ proved - complete|shostak|0.136|
|v_min_witness|✅ proved - incomplete|shostak|0.140|
|v_max_witness|✅ proved - incomplete|shostak|0.137|
|v_min_is_min|✅ proved - incomplete|shostak|0.120|
|v_max_is_max|✅ proved - incomplete|shostak|0.126|
|min_le_max|✅ proved - incomplete|shostak|0.120|
|min_le_max_alt|✅ proved - incomplete|shostak|0.126|
|v_minmax_choose|✅ proved - incomplete|shostak|0.152|
|v_minmax_choose_alt|✅ proved - incomplete|shostak|0.175|

## `exact_reduce_stage`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|reduce_lower_validity|✅ proved - incomplete|shostak|0.255|
|reduce_upper_validity|✅ proved - incomplete|shostak|0.234|
|reduce_agreement_generation|✅ proved - incomplete|shostak|0.236|
|reduce_min_validity|✅ proved - incomplete|shostak|0.230|
|reduce_max_validity|✅ proved - incomplete|shostak|0.216|
|reduce_consensus|✅ proved - incomplete|shostak|0.280|
|reduce_min_eq_max|✅ proved - incomplete|shostak|0.180|

## `reduce_synch`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Delay_TCC1|✅ proved - complete|shostak|0.185|
|Del_TCC1|✅ proved - complete|shostak|0.180|
|Del_Delay|✅ proved - complete|shostak|0.126|
|Lag_TCC1|✅ proved - complete|shostak|0.170|
|Delay_Lag|✅ proved - complete|shostak|0.110|
|offset_sent_nominal|✅ proved - incomplete|shostak|0.205|
|synch_protocol_sent|✅ proved - incomplete|shostak|0.536|
|k_stage_synch|✅ proved - incomplete|shostak|0.765|
|lower_validity|✅ proved - incomplete|shostak|1.700|
|upper_validity|✅ proved - incomplete|shostak|1.670|
|agreement_propagation|✅ proved - incomplete|shostak|1.408|
|convergence|✅ proved - incomplete|shostak|2.810|
|agreement_generation|✅ proved - incomplete|shostak|1.242|
|agreement_generation_edge|✅ proved - incomplete|shostak|1.024|

## `timing_integration`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|enabled_within_timing|✅ proved - incomplete|shostak|0.206|

## `timing_integration_stage`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|t_min_TCC1|✅ proved - incomplete|shostak|0.149|
|uniformly_outer_exists|✅ proved - incomplete|shostak|0.288|
|symmetric_timing_uniform|✅ proved - incomplete|shostak|0.170|
|uniformly_outer_single_denotation|✅ proved - incomplete|shostak|0.150|
|good_send_TCC1|✅ proved - complete|shostak|0.181|
|osym_send_TCC1|✅ proved - incomplete|shostak|0.213|
|oasym_send_TCC1|✅ proved - incomplete|shostak|0.200|
|tsym_send_TCC1|✅ proved - incomplete|shostak|0.152|
|sv_send_TCC1|✅ proved - incomplete|shostak|0.144|
|tsym_single_denotation|✅ proved - incomplete|shostak|0.135|
|received_clock_edge|✅ proved - incomplete|shostak|0.124|
|enabled_within_stage|✅ proved - incomplete|shostak|0.150|
|correct_denotation_send|✅ proved - incomplete|shostak|0.206|
|conforming_correct_denotation_send|✅ proved - incomplete|shostak|0.175|
|single_denotation_send|✅ proved - incomplete|shostak|0.582|
|symmetric_send|✅ proved - incomplete|shostak|0.133|
|symmetric_timing_conforms|✅ proved - incomplete|shostak|0.406|
|correct_lower_timing|✅ proved - incomplete|shostak|0.144|
|correct_quorum_lower|✅ proved - incomplete|shostak|0.125|
|correct_majority_lower|✅ proved - incomplete|shostak|0.130|
|correct_upper_timing|✅ proved - incomplete|shostak|0.124|
|correct_majority_upper|✅ proved - incomplete|shostak|0.134|
|correct_quorum_upper|✅ proved - incomplete|shostak|0.120|
|correct_accuracy_timing|✅ proved - incomplete|shostak|0.125|
|correct_imprecision_timing|✅ proved - incomplete|shostak|0.457|
|quorum_imprecision|✅ proved - incomplete|shostak|0.140|
|majority_imprecision|✅ proved - incomplete|shostak|0.117|
|single_imprecision_timing|✅ proved - incomplete|shostak|0.267|
|uniformly_enabled|✅ proved - incomplete|shostak|0.175|
|symmetric_imprecision_timing|✅ proved - incomplete|shostak|0.193|
|all_symmetric_timing|✅ proved - incomplete|shostak|0.140|

## `timing_window`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|timing_conforms_def|✅ proved - incomplete|shostak|0.204|
|good_range_always_conforms|✅ proved - incomplete|shostak|0.552|
|good_range_inner_window|✅ proved - incomplete|shostak|0.130|

## `timing_imprecision`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|mid_latency_ge_one_half|✅ proved - complete|shostak|0.184|
|W_TCC1|✅ proved - complete|shostak|0.240|
|W_TCC2|✅ proved - complete|shostak|0.264|
|drift_relation_alt|✅ proved - complete|shostak|0.222|
|W_bound|✅ proved - complete|shostak|0.382|
|W_bound_alt|✅ proved - complete|shostak|0.180|
|epsilon_l_TCC1|✅ proved - complete|shostak|0.170|
|epsilon_u_TCC1|✅ proved - complete|shostak|0.183|
|max_error_TCC1|✅ proved - complete|shostak|0.422|
|epsilon_relation|✅ proved - complete|shostak|0.210|
|event_observation_error|✅ proved - incomplete|shostak|0.236|
|link_lower_range|✅ proved - incomplete|shostak|0.364|
|link_upper_range|✅ proved - incomplete|shostak|0.430|
|link_abs_bound|✅ proved - incomplete|shostak|0.234|
|link_relative_range|✅ proved - incomplete|shostak|0.285|
|link_relative_symmetry|✅ proved - incomplete|shostak|0.276|
|good_range_bounded|✅ proved - complete|shostak|0.160|
|link_symmetry|✅ proved - incomplete|shostak|0.226|

## `inverse_clocks`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|lower_Clocktime_exists|✅ proved - complete|shostak|0.271|
|upper_Clocktime_exists|✅ proved - complete|shostak|0.215|
|past_ticks_max_set|✅ proved - incomplete|shostak|0.144|
|Clock_rewrite|✅ proved - incomplete|shostak|0.141|
|Clock_lower|✅ proved - incomplete|shostak|0.120|
|Clock_upper|✅ proved - incomplete|shostak|0.171|
|Clock_nondecreasing|✅ proved - incomplete|shostak|0.190|
|alt_clock_edge|✅ proved - incomplete|shostak|0.121|
|conversion_left|✅ proved - incomplete|shostak|0.120|
|conversion_left_alt|✅ proved - incomplete|shostak|0.189|
|conversion_right|✅ proved - incomplete|shostak|0.175|
|obs_bound|✅ proved - incomplete|shostak|0.185|
|precision_conversion_sym|✅ proved - incomplete|shostak|0.574|
|precision_conversion|✅ proved - incomplete|shostak|0.419|
|lower_accuracy_conversion|✅ proved - incomplete|shostak|0.409|
|upper_accuracy_conversion|✅ proved - incomplete|shostak|0.294|

## `physical_clocks`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|drift_TCC1|✅ proved - complete|shostak|0.255|
|drift_def|✅ proved - complete|shostak|0.180|
|drift_bound|✅ proved - complete|shostak|0.860|
|good_clock_TCC1|✅ proved - complete|shostak|0.200|
|drift_left_nat|✅ proved - complete|shostak|0.336|
|drift_right_nat|✅ proved - complete|shostak|0.391|
|drift_left|✅ proved - complete|shostak|0.331|
|drift_right|✅ proved - complete|shostak|0.360|
|abs_drift_lb|✅ proved - complete|shostak|0.235|
|clock_nondecreasing|✅ proved - complete|shostak|0.166|
|clock_increasing|✅ proved - complete|shostak|0.160|
|clock_nondecreasing_alt|✅ proved - complete|shostak|0.096|
|clock_eq_arg|✅ proved - complete|shostak|0.110|
|relative_drift|✅ proved - complete|shostak|0.237|
|nonoverlap_basis|✅ proved - complete|shostak|0.242|
|skew_basis_0|✅ proved - complete|shostak|0.251|
|skew_bound_1|✅ proved - complete|shostak|0.412|
|skew_bound_2|✅ proved - complete|shostak|0.433|
|skew_bound|✅ proved - complete|shostak|0.335|
|lower_offset|✅ proved - complete|shostak|0.332|
|upper_offset|✅ proved - complete|shostak|0.336|

## `abs_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|abs_max|✅ proved - complete|shostak|0.120|
|abs_add|✅ proved - complete|shostak|0.196|
|abs_le_nonneg|✅ proved - complete|shostak|0.120|
|abs_diff_commutes|✅ proved - complete|shostak|0.116|

## `minmax_ineq`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|min_le|✅ proved - complete|shostak|0.110|
|min_lt|✅ proved - complete|shostak|0.116|
|min_ge|✅ proved - complete|shostak|0.110|
|min_gt|✅ proved - complete|shostak|0.110|
|le_min|✅ proved - complete|shostak|0.116|
|lt_min|✅ proved - complete|shostak|0.130|
|ge_min|✅ proved - complete|shostak|0.126|
|gt_min|✅ proved - complete|shostak|0.130|
|max_le|✅ proved - complete|shostak|0.120|
|max_lt|✅ proved - complete|shostak|0.116|
|max_ge|✅ proved - complete|shostak|0.110|
|max_gt|✅ proved - complete|shostak|0.120|
|le_max|✅ proved - complete|shostak|0.115|
|lt_max|✅ proved - complete|shostak|0.120|
|ge_max|✅ proved - complete|shostak|0.120|
|gt_max|✅ proved - complete|shostak|0.125|
|max_triangle|✅ proved - complete|shostak|0.170|
|min_commutative|✅ proved - complete|shostak|0.110|
|max_commutative|✅ proved - complete|shostak|0.115|

## `floor_ceiling_ineq`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|ge_floor_l|✅ proved - complete|shostak|0.150|
|ge_floor_r|✅ proved - complete|shostak|0.170|
|gt_floor_l|✅ proved - complete|shostak|0.167|
|gt_floor_r|✅ proved - complete|shostak|0.150|
|le_floor_l|✅ proved - complete|shostak|0.180|
|le_floor_r|✅ proved - complete|shostak|0.158|
|lt_floor_l|✅ proved - complete|shostak|0.150|
|lt_floor_r|✅ proved - complete|shostak|0.155|
|floor_monotone|✅ proved - complete|shostak|0.120|
|ge_ceiling_l|✅ proved - complete|shostak|0.150|
|ge_ceiling_r|✅ proved - complete|shostak|0.140|
|gt_ceiling_l|✅ proved - complete|shostak|0.147|
|gt_ceiling_r|✅ proved - complete|shostak|0.140|
|le_ceiling_l|✅ proved - complete|shostak|0.140|
|le_ceiling_r|✅ proved - complete|shostak|0.154|
|lt_ceiling_l|✅ proved - complete|shostak|0.140|
|lt_ceiling_r|✅ proved - complete|shostak|0.130|
|ceiling_monotone|✅ proved - complete|shostak|0.116|

## `bounded_ints`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sup_int_int|✅ proved - incomplete|shostak|0.160|
|sup_int_in_set|✅ proved - incomplete|shostak|0.165|
|sup_int_is_in_set|✅ proved - incomplete|shostak|0.110|

## `inexact_comm_stage`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|majority_lower_rw|✅ proved - incomplete|shostak|0.126|
|majority_upper_rw|✅ proved - incomplete|shostak|0.120|
|quorum_accuracy|✅ proved - incomplete|shostak|0.115|
|majority_accuracy|✅ proved - incomplete|shostak|0.120|
|majority_accuracy_rw|✅ proved - incomplete|shostak|0.126|
|quorum_imprecision_nonempty|✅ proved - incomplete|shostak|0.120|
|majority_imprecision_rw|✅ proved - incomplete|shostak|0.125|
|correct_imprecision|✅ proved - incomplete|shostak|0.244|
|rcvd_diameter|✅ proved - incomplete|shostak|0.479|

## `real_finite_sequences`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|diameter?_TCC1|✅ proved - incomplete|shostak|0.175|
|agreement_propagation|✅ proved - incomplete|shostak|0.190|
|similar?_TCC1|✅ proved - complete|shostak|0.124|
|similar_sort_TCC1|✅ proved - incomplete|shostak|0.140|
|similar_sort_TCC2|✅ proved - incomplete|shostak|0.140|
|similar_sort|✅ proved - incomplete|shostak|0.201|
|sum_TCC1|✅ proved - complete|shostak|0.110|
|sum_TCC2|✅ proved - complete|shostak|0.110|
|sum_TCC3|✅ proved - complete|shostak|0.132|
|sum_lower|✅ proved - incomplete|shostak|0.920|
|sum_upper|✅ proved - incomplete|shostak|0.825|
|mean_TCC1|✅ proved - complete|shostak|0.110|
|min_le_mean|✅ proved - incomplete|shostak|0.299|
|mean_le_max|✅ proved - incomplete|shostak|0.293|
|midpoint_def|✅ proved - incomplete|shostak|0.354|
|mean_lower|✅ proved - incomplete|shostak|0.582|
|mean_upper|✅ proved - incomplete|shostak|0.535|
|mean_consensus|✅ proved - incomplete|shostak|0.150|
|midpoint_consensus|✅ proved - incomplete|shostak|0.243|
|inexact_min|✅ proved - incomplete|shostak|0.197|
|inexact_max|✅ proved - incomplete|shostak|0.203|
|inexact_choose|✅ proved - incomplete|shostak|0.132|
|inexact_mean|✅ proved - incomplete|shostak|0.000|
|inexact_midpoint|✅ proved - incomplete|shostak|0.331|
|mean_convergence|✅ proved - incomplete|shostak|0.563|
|midpoint_convergence|✅ proved - incomplete|shostak|0.384|
|convergent_mean|✅ proved - incomplete|shostak|0.757|
|convergent_midpoint|✅ proved - incomplete|shostak|0.258|

## `inexact_comm`
No formula declaration found.
## `reduce_synch_stage`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|synch_stage_offset|✅ proved - incomplete|shostak|0.236|
|lower_synch_validity|✅ proved - incomplete|shostak|0.967|
|upper_synch_validity|✅ proved - incomplete|shostak|0.606|
|synch_master_slave|✅ proved - incomplete|shostak|0.711|
|synch_agreement_propagation|✅ proved - incomplete|shostak|1.737|
|overlap_imprecision|✅ proved - incomplete|shostak|0.138|
|synch_convergence|✅ proved - incomplete|shostak|1.140|
|synch_agreement_generation|✅ proved - incomplete|shostak|0.648|
|synch_agreement_generation_edge|✅ proved - incomplete|shostak|0.703|

## `clock_shift`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|offset_left_edge|✅ proved - incomplete|shostak|0.189|
|offset_left|✅ proved - incomplete|shostak|0.312|
|offset_right_edge|✅ proved - incomplete|shostak|0.200|
|offset_right|✅ proved - incomplete|shostak|0.179|
|offset_zero|✅ proved - incomplete|shostak|0.131|
|offset_drift|✅ proved - incomplete|shostak|0.381|
|offset_nondecreasing|✅ proved - incomplete|shostak|0.174|
|offset_drift_edge|✅ proved - incomplete|shostak|0.216|
|double_offset|✅ proved - incomplete|shostak|0.195|
|offset_same|✅ proved - incomplete|shostak|0.468|
|offset_same2|✅ proved - incomplete|shostak|0.135|

## `inexact_reduce_stage`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|reduce_lower_validity|✅ proved - incomplete|shostak|0.274|
|reduce_upper_validity|✅ proved - incomplete|shostak|0.254|
|reduce_master_slave|✅ proved - incomplete|shostak|0.334|
|reduce_agreement_propagation|✅ proved - incomplete|shostak|0.491|
|convergence_overlap|✅ proved - incomplete|shostak|0.386|
|reduce_convergence|✅ proved - incomplete|shostak|0.606|
|reduce_agreement_generation|✅ proved - incomplete|shostak|0.451|
|reduce_min_validity|✅ proved - incomplete|shostak|0.243|
|reduce_max_validity|✅ proved - incomplete|shostak|0.249|
|minmax_diameter|✅ proved - incomplete|shostak|0.204|
|agreement_propagation|✅ proved - incomplete|shostak|0.294|
|agreement_generation|✅ proved - incomplete|shostak|0.203|
|convergence|✅ proved - incomplete|shostak|0.305|

## `inexact_reduce`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|lower_validity_TCC1|✅ proved - incomplete|shostak|0.414|
|lower_validity|✅ proved - incomplete|shostak|1.015|
|upper_validity_TCC1|✅ proved - incomplete|shostak|0.416|
|upper_validity|✅ proved - incomplete|shostak|1.078|
|agreement_propagation_TCC1|✅ proved - incomplete|shostak|0.614|
|agreement_propagation|✅ proved - incomplete|shostak|1.124|
|convergence|✅ proved - incomplete|shostak|2.013|
|agreement_generation_TCC1|✅ proved - incomplete|shostak|0.633|
|agreement_generation|✅ proved - incomplete|shostak|1.070|

## `convergence_top`
No formula declaration found.
## `median_stage`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|one_asymmetric_overlap|✅ proved - incomplete|shostak|0.321|
|median_convergence|✅ proved - incomplete|shostak|0.286|

## `median_overlap`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|median_overlap|✅ proved - incomplete|shostak|0.511|

## `middle_third_stage`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|byzantine_overlap|✅ proved - incomplete|shostak|0.334|
|middle_third_convergence|✅ proved - incomplete|shostak|0.252|
|reduce_convergence2|✅ proved - incomplete|shostak|0.632|
|convergence2|✅ proved - incomplete|shostak|0.317|
|middle_third_convergence_2|✅ proved - incomplete|shostak|0.227|
|mean_convergence_midpoint|✅ proved - incomplete|shostak|0.400|
|mean_convergence_midpoint_0|✅ proved - incomplete|shostak|0.718|
|midpoint_convergence_mean|✅ proved - incomplete|shostak|0.416|
|convergent_mean_midpoint|✅ proved - incomplete|shostak|0.536|
|convergent_midpoint_mean|✅ proved - incomplete|shostak|0.549|
|middle_third_convergence_mean_midpoint|✅ proved - incomplete|shostak|0.232|
|middle_third_convergence_midpoint_mean|✅ proved - incomplete|shostak|0.230|
|mean_convergence|✅ proved - incomplete|shostak|0.236|
|midpoint_convergence|✅ proved - incomplete|shostak|0.255|

## `middle_third_overlap`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|middle_third_overlap|✅ proved - incomplete|shostak|0.551|

## `middle_third_pigeonhole`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|middle_third_pigeonhole|✅ proved - complete|shostak|0.741|

## `pigeonhole_int`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|disjoint1|✅ proved - complete|shostak|0.132|
|disjoint2|✅ proved - complete|shostak|0.120|
|complement_complement|✅ proved - complete|shostak|0.114|
|mirror_TCC1|✅ proved - complete|shostak|0.120|
|mirror_mirror|✅ proved - complete|shostak|0.149|
|card_mirror|✅ proved - complete|shostak|0.140|
|subset_mirror|✅ proved - complete|shostak|0.110|
|mirror_nat|✅ proved - complete|shostak|0.154|
|mirror_negint|✅ proved - complete|shostak|0.160|
|subset_split|✅ proved - complete|shostak|0.160|
|card_split|✅ proved - complete|shostak|0.287|
|two_thirds_split|✅ proved - complete|shostak|0.195|
|two_thirds_overlap_lem|✅ proved - complete|shostak|0.165|
|fta_overlap_pigeonhole|✅ proved - complete|shostak|0.613|

## `weber_stage`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|overlap_imprecision|✅ proved - incomplete|shostak|0.347|
|weber_convergence|✅ proved - incomplete|shostak|0.240|
|weber_mean_convergence|✅ proved - incomplete|shostak|0.259|
|weber_midpoint_convergence|✅ proved - incomplete|shostak|0.266|

## `weber_overlap`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|weber_overlap|✅ proved - incomplete|shostak|0.884|

## `virtual_clock_top`
No formula declaration found.
## `virtual_clock_1`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|turns_TCC1|✅ proved - complete|shostak|0.435|
|turns_increasing|✅ proved - complete|shostak|0.612|
|turns_unbounded|✅ proved - complete|shostak|0.455|
|turns_event_sequence|✅ proved - complete|shostak|0.113|
|turns_nonoverlap|✅ proved - complete|shostak|0.661|
|turns_early|✅ proved - complete|shostak|0.585|
|turns_self|✅ proved - complete|shostak|0.182|
|turns_cross|✅ proved - complete|shostak|0.757|
|VC1_j_TCC1|✅ proved - complete|shostak|0.106|
|VC1_j|✅ proved - incomplete|shostak|0.120|
|VC1_precision_TCC1|✅ proved - incomplete|shostak|0.135|
|VC1_precision_TCC2|✅ proved - incomplete|shostak|0.140|
|VC1_precision|✅ proved - incomplete|shostak|0.000|
|VC1_accuracy_lower_TCC1|✅ proved - incomplete|shostak|0.130|
|VC1_accuracy_lower|✅ proved - incomplete|shostak|1.323|
|VC1_optimal_accuracy_lower|✅ proved - incomplete|shostak|0.948|
|VC1_accuracy_upper|✅ proved - incomplete|shostak|1.020|
|VC1_optimal_accuracy_upper|✅ proved - incomplete|shostak|0.726|

## `synch_protocol_invariants`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|all_periodic_precision_iff_peer_precision|✅ proved - incomplete|shostak|0.120|
|all_periodic_precision|✅ proved - incomplete|shostak|0.183|
|minmax_adjustment_lower_bound|✅ proved - incomplete|shostak|0.184|
|minmax_adjustment_upper_bound|✅ proved - incomplete|shostak|0.202|
|min_le_trace|✅ proved - incomplete|shostak|0.120|
|trace_le_max|✅ proved - incomplete|shostak|0.126|
|trace_diff|✅ proved - incomplete|shostak|0.140|
|traces_peer_precision|✅ proved - incomplete|shostak|0.183|
|traces_lower|✅ proved - incomplete|shostak|0.235|
|traces_upper|✅ proved - incomplete|shostak|0.256|
|traces_compatible|✅ proved - incomplete|shostak|0.476|
|trace_lower_accuracy|✅ proved - incomplete|shostak|0.224|
|trace_upper_accuracy|✅ proved - incomplete|shostak|0.214|
|trace_weakly_accurate|✅ proved - incomplete|shostak|0.200|

## `synch_constant_definitions`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|P_bound|✅ proved - complete|shostak|0.436|
|rho_bound|✅ proved - complete|shostak|4.540|
|ADJ_ineq|✅ proved - complete|shostak|0.305|
|ADJ_ineq_l|✅ proved - complete|shostak|0.685|
|ADJ_ineq_h|✅ proved - complete|shostak|0.676|
|ADJ_bound|✅ proved - complete|shostak|0.311|
|P_min_TCC1|✅ proved - complete|shostak|0.120|
|p_min_bound|✅ proved - complete|shostak|0.295|
|p_lower_TCC1|✅ proved - complete|shostak|0.366|
|p_min_TCC1|✅ proved - complete|shostak|0.389|
|p_min_lower|✅ proved - complete|shostak|0.110|
|p_max_upper|✅ proved - complete|shostak|0.106|
|drift_P_bound|✅ proved - complete|shostak|0.473|
|Pi_TCC1|✅ proved - complete|shostak|0.350|

## `synch_parameter_constraints`
No formula declaration found.
## `clock_minmax`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|clock_min_witness|✅ proved - incomplete|shostak|0.157|
|clock_max_witness|✅ proved - incomplete|shostak|0.150|
|clock_min_is_min|✅ proved - incomplete|shostak|0.147|
|clock_max_is_max|✅ proved - incomplete|shostak|0.130|
|clock_min_clock|✅ proved - incomplete|shostak|0.246|
|clock_max_clock|✅ proved - incomplete|shostak|0.225|

## `function_image_nonempty`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|nonempty_image|✅ proved - complete|shostak|0.116|
|nonempty_finite_image|✅ proved - complete|shostak|0.120|

## `interval_clocks`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|T_def|✅ proved - complete|shostak|0.185|
|T_rounds|✅ proved - complete|shostak|0.190|
|handover_precision_lower|✅ proved - complete|shostak|0.405|
|handover_precision_upper|✅ proved - complete|shostak|0.385|
|handover_precision|✅ proved - complete|shostak|0.531|
|nonoverlap_peers|✅ proved - complete|shostak|0.295|
|nonoverlap_lower|✅ proved - complete|shostak|0.535|
|nonoverlap_upper|✅ proved - complete|shostak|0.541|
|nonoverlap_round|✅ proved - complete|shostak|0.641|
|lower_interval_accuracy|✅ proved - complete|shostak|0.345|
|upper_interval_accuracy|✅ proved - complete|shostak|0.341|

## `virtual_clocks`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|VC_j|✅ proved - incomplete|shostak|0.110|
|observable_peers|✅ proved - complete|shostak|0.340|
|observable_master|✅ proved - complete|shostak|0.253|
|observable_slave|✅ proved - complete|shostak|0.263|
|adjustment_nonoverlap|✅ proved - complete|shostak|0.303|
|VC_precision_0|✅ proved - incomplete|shostak|0.567|
|VC_precision_1|✅ proved - incomplete|shostak|0.778|
|VC_precision_sym|✅ proved - incomplete|shostak|0.488|
|VC_precision|✅ proved - incomplete|shostak|0.195|
|index_upper_bound|✅ proved - complete|shostak|0.370|
|VC_lower_accuracy|✅ proved - incomplete|shostak|1.672|
|VC_upper_accuracy|✅ proved - incomplete|shostak|1.098|

## `event_sequences`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|increasing_ind|✅ proved - complete|shostak|0.213|
|nondecreasing|✅ proved - complete|shostak|0.180|
|future_events_nonempty|✅ proved - complete|shostak|0.142|
|index_le|✅ proved - complete|shostak|0.160|
|lt_index|✅ proved - complete|shostak|0.143|
|index_le_alt|✅ proved - complete|shostak|0.160|
|index_rewrite|✅ proved - complete|shostak|0.168|
|index_conversion_left|✅ proved - complete|shostak|0.150|
|index_conversion_right|✅ proved - complete|shostak|0.165|
|index_ordered|✅ proved - complete|shostak|0.130|
|cross_nondecreasing|✅ proved - complete|shostak|0.155|
|nonoverlap_index_bound|✅ proved - complete|shostak|0.225|

## `virtual_clock_2`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|t_increasing|✅ proved - complete|shostak|0.160|
|t_unbounded|✅ proved - complete|shostak|0.449|
|t_event_sequence|✅ proved - complete|shostak|0.110|
|t_nonoverlap|✅ proved - complete|shostak|0.348|
|t_early|✅ proved - complete|shostak|0.120|
|t_self|✅ proved - complete|shostak|0.471|
|t_cross|✅ proved - complete|shostak|0.559|
|VC_j|✅ proved - incomplete|shostak|0.120|
|VC2_precision_TCC1|✅ proved - incomplete|shostak|0.147|
|VC2_precision_TCC2|✅ proved - incomplete|shostak|0.140|
|VC2_precision|✅ proved - incomplete|shostak|0.799|
|VC2_accuracy_lower_TCC1|✅ proved - incomplete|shostak|0.120|
|VC2_accuracy_lower|✅ proved - incomplete|shostak|0.991|
|VC2_optimal_accuracy_lower|✅ proved - incomplete|shostak|0.553|
|VC2_accuracy_upper|✅ proved - incomplete|shostak|0.789|
|VC2_optimal_accuracy_upper|✅ proved - incomplete|shostak|0.445|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib/pvsio_utils/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230712-static-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230710-tcc-gen.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230707-defattach.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230706-extrategies.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`|
