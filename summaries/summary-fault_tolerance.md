# Summary for `fault_tolerance`
Run started at 1:55:28 7/8/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **585**   | **585**    | **585**    | **0**  | **2:32.047 s**   |
|top|0|0|0|0|0.000|
|core_top|0|0|0|0|0.000|
|majority_integration|2|2|2|0|0.783|
|protocol_integration|0|0|0|0|0.000|
|comm_integration|3|3|3|0|0.555|
|comm_integration_stage|15|15|15|0|2.032|
|integration_fault_model|1|1|1|0|0.112|
|finite_sets_below_extra|2|2|2|0|0.200|
|exact_comm_stage|3|3|3|0|0.401|
|fault_assumptions_stage|13|13|13|0|2.113|
|pigeonhole|18|18|18|0|3.209|
|tau_declaration|4|4|4|0|0.565|
|node_functions_stage|0|0|0|0|0.000|
|node|6|6|6|0|0.777|
|local|0|0|0|0|0.000|
|exact_comm|1|1|1|0|0.185|
|node_functions|0|0|0|0|0.000|
|protocol|1|1|1|0|0.105|
|majority|5|5|5|0|1.666|
|majority_stage|8|8|8|0|1.092|
|majority_properties|5|5|5|0|1.065|
|finite_seqs|12|12|12|0|1.485|
|exact_reduce_integration|3|3|3|0|1.181|
|ordered_message|3|3|3|0|0.653|
|exact_reduce|5|5|5|0|2.464|
|k_ordered|0|0|0|0|0.000|
|reduce_choice|7|7|7|0|1.375|
|reduce_properties|26|26|26|0|5.503|
|ordered_finite_sequences|41|41|41|0|7.450|
|relations_extra|25|25|25|0|2.714|
|select_minmax|9|9|9|0|1.169|
|exact_reduce_stage|7|7|7|0|1.470|
|reduce_synch|14|14|14|0|11.673|
|timing_integration|1|1|1|0|0.204|
|timing_integration_stage|31|31|31|0|5.609|
|timing_window|3|3|3|0|0.874|
|timing_imprecision|18|18|18|0|4.403|
|inverse_clocks|16|16|16|0|3.500|
|physical_clocks|21|21|21|0|6.015|
|abs_props|4|4|4|0|0.522|
|minmax_ineq|19|19|19|0|1.959|
|floor_ceiling_ineq|18|18|18|0|2.477|
|bounded_ints|3|3|3|0|0.388|
|inexact_comm_stage|9|9|9|0|1.508|
|real_finite_sequences|28|28|28|0|10.221|
|inexact_comm|0|0|0|0|0.000|
|reduce_synch_stage|9|9|9|0|5.595|
|clock_shift|11|11|11|0|2.286|
|inexact_reduce_stage|13|13|13|0|3.925|
|inexact_reduce|9|9|9|0|7.335|
|convergence_top|0|0|0|0|0.000|
|median_stage|2|2|2|0|0.531|
|median_overlap|1|1|1|0|0.473|
|middle_third_stage|4|4|4|0|0.948|
|middle_third_overlap|1|1|1|0|0.518|
|middle_third_pigeonhole|1|1|1|0|0.583|
|pigeonhole_int|14|14|14|0|2.297|
|weber_stage|4|4|4|0|0.964|
|weber_overlap|1|1|1|0|0.802|
|virtual_clock_top|0|0|0|0|0.000|
|virtual_clock_1|18|18|18|0|8.368|
|synch_protocol_invariants|14|14|14|0|2.522|
|synch_constant_definitions|14|14|14|0|8.207|
|synch_parameter_constraints|0|0|0|0|0.000|
|clock_minmax|6|6|6|0|0.893|
|function_image_nonempty|2|2|2|0|0.206|
|interval_clocks|11|11|11|0|3.791|
|virtual_clocks|12|12|12|0|4.730|
|event_sequences|12|12|12|0|1.694|
|virtual_clock_2|16|16|16|0|5.702|
## Detailed Summary 
## `top`
No formula declaration found.
## `core_top`
No formula declaration found.
## `majority_integration`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|consensus_validity|✅ proved - incomplete|shostak|0.422|
|agreement_generation|✅ proved - incomplete|shostak|0.361|

## `protocol_integration`
No formula declaration found.
## `comm_integration`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|quorum_correct_integration|✅ proved - incomplete|shostak|0.181|
|majority_correct_rw|✅ proved - incomplete|shostak|0.191|
|all_symmetric_integration|✅ proved - incomplete|shostak|0.183|

## `comm_integration_stage`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|msg_checker_TCC1|✅ proved - complete|shostak|0.090|
|osym_rcvd_TCC1|✅ proved - complete|shostak|0.110|
|oasym_rcvd_TCC1|✅ proved - complete|shostak|0.090|
|sv_rcvd_TCC1|✅ proved - complete|shostak|0.103|
|correct_denotation_send|✅ proved - complete|shostak|0.140|
|conforms_type|✅ proved - complete|shostak|0.122|
|scheduled_conform|✅ proved - incomplete|shostak|0.120|
|exact_correct_denotation|✅ proved - incomplete|shostak|0.104|
|quorum_correct_integration|✅ proved - incomplete|shostak|0.120|
|majority_correct_rw|✅ proved - incomplete|shostak|0.092|
|exact_single_denotation|✅ proved - incomplete|shostak|0.270|
|uniformly_enabled|✅ proved - incomplete|shostak|0.238|
|exact_symmetric_single|✅ proved - incomplete|shostak|0.203|
|all_symmetric_integration|✅ proved - incomplete|shostak|0.120|
|good_conforms|✅ proved - incomplete|shostak|0.110|

## `integration_fault_model`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|symmetric_single_denotation|✅ proved - complete|shostak|0.112|

## `finite_sets_below_extra`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|below_is_finite_type|✅ proved - complete|shostak|0.110|
|set_below_is_finite|✅ proved - incomplete|shostak|0.090|

## `exact_comm_stage`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|correct_uniform|✅ proved - incomplete|shostak|0.147|
|correct_uniform_alt|✅ proved - incomplete|shostak|0.134|
|majority_correct_rw|✅ proved - incomplete|shostak|0.120|

## `fault_assumptions_stage`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|enabled_TCC1|✅ proved - incomplete|shostak|0.120|
|enabled?_TCC1|✅ proved - incomplete|shostak|0.099|
|enabled_within|✅ proved - incomplete|shostak|0.110|
|quorum_implies_majority|✅ proved - incomplete|shostak|0.204|
|majority|✅ proved - incomplete|shostak|0.223|
|enabled_within_quorum|✅ proved - incomplete|shostak|0.155|
|enabled_within_quorum_nada|✅ proved - incomplete|shostak|0.174|
|quorum_nonempty|✅ proved - incomplete|shostak|0.125|
|max_TCC1|✅ proved - incomplete|shostak|0.185|
|intersection_majority_nonempty|✅ proved - incomplete|shostak|0.130|
|byzantine_intersection_nonempty|✅ proved - incomplete|shostak|0.240|
|intersection_majority|✅ proved - incomplete|shostak|0.213|
|enabled_agree|✅ proved - incomplete|shostak|0.135|

## `pigeonhole`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|pigeonhole|✅ proved - complete|shostak|0.180|
|card_difference_alt|✅ proved - complete|shostak|0.232|
|pigeonhole_difference|✅ proved - complete|shostak|0.174|
|simple_majority_subset|✅ proved - complete|shostak|0.143|
|majority_subset_nonempty|✅ proved - complete|shostak|0.150|
|simple_majority_nonempty|✅ proved - complete|shostak|0.095|
|majority_nonempty|✅ proved - complete|shostak|0.140|
|majority_pigeonhole|✅ proved - complete|shostak|0.184|
|simple_majority_pigeonhole|✅ proved - complete|shostak|0.243|
|median_pigeonhole|✅ proved - complete|shostak|0.405|
|intersection_nonempty|✅ proved - complete|shostak|0.150|
|two_thirds_overlap_pigeonhole|✅ proved - complete|shostak|0.304|
|quorum?_TCC1|✅ proved - complete|shostak|0.110|
|M_TCC1|✅ proved - complete|shostak|0.105|
|M_TCC2|✅ proved - complete|shostak|0.170|
|nada_reduce|✅ proved - complete|shostak|0.120|
|mid_reduce|✅ proved - complete|shostak|0.160|
|byz_reduce|✅ proved - complete|shostak|0.144|

## `tau_declaration`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|nada_TCC1|✅ proved - complete|shostak|0.090|
|mid_TCC1|✅ proved - complete|shostak|0.150|
|byz_TCC1|✅ proved - complete|shostak|0.150|
|weber_TCC1|✅ proved - complete|shostak|0.175|

## `node_functions_stage`
No formula declaration found.
## `node`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|uniform_char|✅ proved - complete|shostak|0.120|
|enabled_symmetric_uniform|✅ proved - complete|shostak|0.117|
|m_TCC1|✅ proved - complete|shostak|0.165|
|vec2seq_TCC1|✅ proved - complete|shostak|0.100|
|vec2seq_agreement|✅ proved - complete|shostak|0.155|
|vec2seq_type|✅ proved - complete|shostak|0.120|

## `local`
No formula declaration found.
## `exact_comm`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|majority_correct_rw|✅ proved - incomplete|shostak|0.185|

## `node_functions`
No formula declaration found.
## `protocol`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|protocol_rw|✅ proved - complete|shostak|0.105|

## `majority`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|consensus_validity|✅ proved - incomplete|shostak|0.506|
|agreement_generation|✅ proved - incomplete|shostak|0.436|
|faulty_source|✅ proved - incomplete|shostak|0.251|
|faulty_stage|✅ proved - incomplete|shostak|0.155|
|asymmetric_source|✅ proved - incomplete|shostak|0.318|

## `majority_stage`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|majority_at_destination|✅ proved - incomplete|shostak|0.140|
|majority_validity|✅ proved - incomplete|shostak|0.125|
|consensus_validity|✅ proved - incomplete|shostak|0.135|
|agreement_generation_alt|✅ proved - incomplete|shostak|0.154|
|agreement_generation|✅ proved - incomplete|shostak|0.130|
|faulty_source|✅ proved - incomplete|shostak|0.153|
|sources_disagree|✅ proved - incomplete|shostak|0.123|
|asymmetric_source|✅ proved - incomplete|shostak|0.132|

## `majority_properties`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|is_majority|✅ proved - incomplete|shostak|0.480|
|majority_value_subset|✅ proved - complete|shostak|0.153|
|uniform_majority|✅ proved - complete|shostak|0.212|
|majority_validity|✅ proved - incomplete|shostak|0.120|
|agreement_generation|✅ proved - incomplete|shostak|0.100|

## `finite_seqs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|choose_TCC1|✅ proved - complete|shostak|0.104|
|choose_in?|✅ proved - complete|shostak|0.120|
|choose_consensus|✅ proved - complete|shostak|0.100|
|maj_exists_same|✅ proved - incomplete|shostak|0.115|
|mf_lem|✅ proved - incomplete|shostak|0.120|
|majority_choose_consensus|✅ proved - incomplete|shostak|0.125|
|majority_choose2_TCC1|✅ proved - complete|shostak|0.100|
|majority_choose2_TCC2|✅ proved - complete|shostak|0.100|
|majority2_choose_majority|✅ proved - incomplete|shostak|0.204|
|uniform_TCC1|✅ proved - complete|shostak|0.112|
|uniform_TCC2|✅ proved - incomplete|shostak|0.120|
|majority_same|✅ proved - incomplete|shostak|0.165|

## `exact_reduce_integration`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|lower_validity|✅ proved - incomplete|shostak|0.383|
|upper_validity|✅ proved - incomplete|shostak|0.397|
|agreement_generation|✅ proved - incomplete|shostak|0.401|

## `ordered_message`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|valid_iff_ord1|✅ proved - complete|shostak|0.111|
|eq_iff|✅ proved - complete|shostak|0.140|
|message_total_order|✅ proved - complete|shostak|0.402|

## `exact_reduce`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|lower_validity|✅ proved - incomplete|shostak|0.685|
|upper_validity|✅ proved - incomplete|shostak|0.668|
|consensus_validity|✅ proved - incomplete|shostak|0.319|
|exact_agreement_propagation|✅ proved - incomplete|shostak|0.265|
|agreement_generation|✅ proved - incomplete|shostak|0.527|

## `k_ordered`
No formula declaration found.
## `reduce_choice`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|in_rcvd|✅ proved - incomplete|shostak|0.226|
|min_reduce_choice|✅ proved - incomplete|shostak|0.150|
|max_reduce_choice|✅ proved - incomplete|shostak|0.156|
|reduce_overlap?_TCC1|✅ proved - incomplete|shostak|0.144|
|reduce_overlap?_TCC2|✅ proved - incomplete|shostak|0.334|
|max_length_TCC1|✅ proved - incomplete|shostak|0.140|
|max_length_bound|✅ proved - incomplete|shostak|0.225|

## `reduce_properties`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|lowset_TCC1|✅ proved - incomplete|shostak|0.150|
|card_lower_leq_lowset_TCC1|✅ proved - complete|shostak|0.100|
|card_lower_leq_lowset|✅ proved - incomplete|shostak|0.225|
|card_lowset|✅ proved - incomplete|shostak|0.203|
|card_upper_leq_highset|✅ proved - incomplete|shostak|0.222|
|card_highset|✅ proved - incomplete|shostak|0.191|
|reduce_TCC1|✅ proved - complete|shostak|0.110|
|reduce_TCC2|✅ proved - complete|shostak|0.140|
|reduce_TCC3|✅ proved - incomplete|shostak|0.229|
|min_reduce_TCC1|✅ proved - complete|shostak|0.100|
|min_reduce_TCC2|✅ proved - incomplete|shostak|0.172|
|min_reduce|✅ proved - incomplete|shostak|0.221|
|max_reduce_TCC1|✅ proved - incomplete|shostak|0.000|
|max_reduce|✅ proved - incomplete|shostak|0.235|
|reduce_length|✅ proved - incomplete|shostak|0.325|
|reduce_rewrite_TCC1|✅ proved - incomplete|shostak|0.374|
|reduce_rewrite_TCC2|✅ proved - incomplete|shostak|0.266|
|reduce_rewrite|✅ proved - incomplete|shostak|0.315|
|reduce_overlap_TCC1|✅ proved - incomplete|shostak|0.479|
|reduce_overlap|✅ proved - incomplete|shostak|0.315|
|reduce_agreement|✅ proved - incomplete|shostak|0.136|
|min_validity|✅ proved - incomplete|shostak|0.225|
|max_validity|✅ proved - incomplete|shostak|0.235|
|choice_lower_validity|✅ proved - incomplete|shostak|0.205|
|choice_upper_validity|✅ proved - incomplete|shostak|0.185|
|choice_agreement_generation|✅ proved - incomplete|shostak|0.145|

## `ordered_finite_sequences`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|extract_one_TCC1|✅ proved - complete|shostak|0.234|
|extract_one_TCC2|✅ proved - complete|shostak|0.155|
|extract_one|✅ proved - complete|shostak|0.180|
|extract_upper_TCC1|✅ proved - complete|shostak|0.225|
|extract_upper|✅ proved - complete|shostak|0.200|
|min_extract_TCC1|✅ proved - incomplete|shostak|0.216|
|min_extract_TCC2|✅ proved - incomplete|shostak|0.121|
|min_extract|✅ proved - incomplete|shostak|0.345|
|max_extract_TCC1|✅ proved - incomplete|shostak|0.120|
|max_extract|✅ proved - incomplete|shostak|0.362|
|minmax_TCC1|✅ proved - incomplete|shostak|0.155|
|min_le_max|✅ proved - incomplete|shostak|0.150|
|min_minmax|✅ proved - incomplete|shostak|0.195|
|max_minmax|✅ proved - incomplete|shostak|0.218|
|min_in_consensus|✅ proved - incomplete|shostak|0.110|
|max_in_consensus|✅ proved - incomplete|shostak|0.110|
|in_consensus|✅ proved - incomplete|shostak|0.175|
|lower_TCC1|✅ proved - complete|shostak|0.110|
|lower_TCC2|✅ proved - incomplete|shostak|0.103|
|lower_TCC3|✅ proved - incomplete|shostak|0.150|
|upper_TCC1|✅ proved - incomplete|shostak|0.135|
|map_set_TCC1|✅ proved - complete|shostak|0.090|
|map_set_TCC2|✅ proved - incomplete|shostak|0.110|
|map_set_TCC3|✅ proved - incomplete|shostak|0.163|
|map_subset_lower_TCC1|✅ proved - incomplete|shostak|0.090|
|map_subset_lower|✅ proved - incomplete|shostak|0.225|
|map_subset_upper_TCC1|✅ proved - incomplete|shostak|0.090|
|map_subset_upper|✅ proved - incomplete|shostak|0.211|
|mapper_TCC1|✅ proved - incomplete|shostak|0.170|
|mapper_TCC2|✅ proved - incomplete|shostak|0.186|
|map_card_eq|✅ proved - incomplete|shostak|0.225|
|card_below_set_TCC1|✅ proved - incomplete|shostak|0.095|
|card_below_set|✅ proved - incomplete|shostak|0.388|
|card_above_set_TCC1|✅ proved - incomplete|shostak|0.110|
|card_above_set|✅ proved - incomplete|shostak|0.349|
|card_lower|✅ proved - incomplete|shostak|0.255|
|card_upper|✅ proved - incomplete|shostak|0.226|
|sort_overlap_TCC1|✅ proved - complete|shostak|0.125|
|sort_overlap_TCC2|✅ proved - incomplete|shostak|0.140|
|sort_overlap|✅ proved - incomplete|shostak|0.303|
|leq_validity|✅ proved - incomplete|shostak|0.130|

## `relations_extra`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|strict_order_is_asymmetric|✅ proved - complete|shostak|0.100|
|asymmetric_is_antisymmetric|✅ proved - complete|shostak|0.116|
|asymmetric_is_irreflexive|✅ proved - complete|shostak|0.090|
|reflexive|✅ proved - complete|shostak|0.100|
|irreflexive|✅ proved - complete|shostak|0.106|
|symmetric|✅ proved - complete|shostak|0.100|
|antisymmetric|✅ proved - complete|shostak|0.090|
|asymmetric|✅ proved - complete|shostak|0.090|
|transitive|✅ proved - complete|shostak|0.096|
|dichotomous|✅ proved - complete|shostak|0.080|
|trichotomous|✅ proved - complete|shostak|0.110|
|dichotomous_is_trichotomous|✅ proved - complete|shostak|0.090|
|well_founded|✅ proved - complete|shostak|0.107|
|reflexive_closure_TCC1|✅ proved - complete|shostak|0.100|
|irreflexive_kernel_TCC1|✅ proved - complete|shostak|0.110|
|symmetric_closure_TCC1|✅ proved - complete|shostak|0.130|
|symmetric_kernel_TCC1|✅ proved - complete|shostak|0.124|
|reflexive_closure_preserves_transitive|✅ proved - complete|shostak|0.120|
|strict_order_to_partial_order|✅ proved - complete|shostak|0.106|
|reflexive_closure_dichotomous|✅ proved - complete|shostak|0.120|
|strict_total_order_to_total_order|✅ proved - complete|shostak|0.117|
|partial_order_to_strict_order|✅ proved - complete|shostak|0.120|
|irreflexive_kernel_trichotomous|✅ proved - complete|shostak|0.126|
|total_order_to_strict_total_order|✅ proved - complete|shostak|0.130|
|symmetric_kernel_of_preorder|✅ proved - complete|shostak|0.136|

## `select_minmax`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|v_min_TCC1|✅ proved - complete|shostak|0.130|
|v_min_witness|✅ proved - incomplete|shostak|0.137|
|v_max_witness|✅ proved - incomplete|shostak|0.130|
|v_min_is_min|✅ proved - incomplete|shostak|0.127|
|v_max_is_max|✅ proved - incomplete|shostak|0.130|
|min_le_max|✅ proved - incomplete|shostak|0.116|
|min_le_max_alt|✅ proved - incomplete|shostak|0.110|
|v_minmax_choose|✅ proved - incomplete|shostak|0.145|
|v_minmax_choose_alt|✅ proved - incomplete|shostak|0.144|

## `exact_reduce_stage`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|reduce_lower_validity|✅ proved - incomplete|shostak|0.236|
|reduce_upper_validity|✅ proved - incomplete|shostak|0.210|
|reduce_agreement_generation|✅ proved - incomplete|shostak|0.203|
|reduce_min_validity|✅ proved - incomplete|shostak|0.210|
|reduce_max_validity|✅ proved - incomplete|shostak|0.195|
|reduce_consensus|✅ proved - incomplete|shostak|0.260|
|reduce_min_eq_max|✅ proved - incomplete|shostak|0.156|

## `reduce_synch`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Delay_TCC1|✅ proved - complete|shostak|0.190|
|Del_TCC1|✅ proved - complete|shostak|0.173|
|Del_Delay|✅ proved - complete|shostak|0.100|
|Lag_TCC1|✅ proved - complete|shostak|0.160|
|Delay_Lag|✅ proved - complete|shostak|0.107|
|offset_sent_nominal|✅ proved - incomplete|shostak|0.200|
|synch_protocol_sent|✅ proved - incomplete|shostak|0.497|
|k_stage_synch|✅ proved - incomplete|shostak|0.748|
|lower_validity|✅ proved - incomplete|shostak|1.624|
|upper_validity|✅ proved - incomplete|shostak|1.634|
|agreement_propagation|✅ proved - incomplete|shostak|1.372|
|convergence|✅ proved - incomplete|shostak|2.676|
|agreement_generation|✅ proved - incomplete|shostak|1.193|
|agreement_generation_edge|✅ proved - incomplete|shostak|0.999|

## `timing_integration`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|enabled_within_timing|✅ proved - incomplete|shostak|0.204|

## `timing_integration_stage`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|t_min_TCC1|✅ proved - incomplete|shostak|0.145|
|uniformly_outer_exists|✅ proved - incomplete|shostak|0.264|
|symmetric_timing_uniform|✅ proved - incomplete|shostak|0.164|
|uniformly_outer_single_denotation|✅ proved - incomplete|shostak|0.144|
|good_send_TCC1|✅ proved - complete|shostak|0.165|
|osym_send_TCC1|✅ proved - incomplete|shostak|0.190|
|oasym_send_TCC1|✅ proved - incomplete|shostak|0.184|
|tsym_send_TCC1|✅ proved - incomplete|shostak|0.144|
|sv_send_TCC1|✅ proved - incomplete|shostak|0.164|
|tsym_single_denotation|✅ proved - incomplete|shostak|0.144|
|received_clock_edge|✅ proved - incomplete|shostak|0.100|
|enabled_within_stage|✅ proved - incomplete|shostak|0.146|
|correct_denotation_send|✅ proved - incomplete|shostak|0.174|
|conforming_correct_denotation_send|✅ proved - incomplete|shostak|0.155|
|single_denotation_send|✅ proved - incomplete|shostak|0.530|
|symmetric_send|✅ proved - incomplete|shostak|0.134|
|symmetric_timing_conforms|✅ proved - incomplete|shostak|0.387|
|correct_lower_timing|✅ proved - incomplete|shostak|0.134|
|correct_quorum_lower|✅ proved - incomplete|shostak|0.120|
|correct_majority_lower|✅ proved - incomplete|shostak|0.125|
|correct_upper_timing|✅ proved - incomplete|shostak|0.125|
|correct_majority_upper|✅ proved - incomplete|shostak|0.120|
|correct_quorum_upper|✅ proved - incomplete|shostak|0.115|
|correct_accuracy_timing|✅ proved - incomplete|shostak|0.140|
|correct_imprecision_timing|✅ proved - incomplete|shostak|0.430|
|quorum_imprecision|✅ proved - incomplete|shostak|0.134|
|majority_imprecision|✅ proved - incomplete|shostak|0.120|
|single_imprecision_timing|✅ proved - incomplete|shostak|0.249|
|uniformly_enabled|✅ proved - incomplete|shostak|0.155|
|symmetric_imprecision_timing|✅ proved - incomplete|shostak|0.184|
|all_symmetric_timing|✅ proved - incomplete|shostak|0.124|

## `timing_window`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|timing_conforms_def|✅ proved - incomplete|shostak|0.194|
|good_range_always_conforms|✅ proved - incomplete|shostak|0.558|
|good_range_inner_window|✅ proved - incomplete|shostak|0.122|

## `timing_imprecision`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|mid_latency_ge_one_half|✅ proved - complete|shostak|0.170|
|W_TCC1|✅ proved - complete|shostak|0.233|
|W_TCC2|✅ proved - complete|shostak|0.250|
|drift_relation_alt|✅ proved - complete|shostak|0.199|
|W_bound|✅ proved - complete|shostak|0.374|
|W_bound_alt|✅ proved - complete|shostak|0.170|
|epsilon_l_TCC1|✅ proved - complete|shostak|0.155|
|epsilon_u_TCC1|✅ proved - complete|shostak|0.170|
|max_error_TCC1|✅ proved - complete|shostak|0.405|
|epsilon_relation|✅ proved - complete|shostak|0.206|
|event_observation_error|✅ proved - incomplete|shostak|0.220|
|link_lower_range|✅ proved - incomplete|shostak|0.359|
|link_upper_range|✅ proved - incomplete|shostak|0.385|
|link_abs_bound|✅ proved - incomplete|shostak|0.215|
|link_relative_range|✅ proved - incomplete|shostak|0.275|
|link_relative_symmetry|✅ proved - incomplete|shostak|0.256|
|good_range_bounded|✅ proved - complete|shostak|0.146|
|link_symmetry|✅ proved - incomplete|shostak|0.215|

## `inverse_clocks`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|lower_Clocktime_exists|✅ proved - complete|shostak|0.255|
|upper_Clocktime_exists|✅ proved - complete|shostak|0.205|
|past_ticks_max_set|✅ proved - incomplete|shostak|0.145|
|Clock_rewrite|✅ proved - incomplete|shostak|0.133|
|Clock_lower|✅ proved - incomplete|shostak|0.120|
|Clock_upper|✅ proved - incomplete|shostak|0.145|
|Clock_nondecreasing|✅ proved - incomplete|shostak|0.195|
|alt_clock_edge|✅ proved - incomplete|shostak|0.100|
|conversion_left|✅ proved - incomplete|shostak|0.110|
|conversion_left_alt|✅ proved - incomplete|shostak|0.165|
|conversion_right|✅ proved - incomplete|shostak|0.156|
|obs_bound|✅ proved - incomplete|shostak|0.183|
|precision_conversion_sym|✅ proved - incomplete|shostak|0.535|
|precision_conversion|✅ proved - incomplete|shostak|0.430|
|lower_accuracy_conversion|✅ proved - incomplete|shostak|0.359|
|upper_accuracy_conversion|✅ proved - incomplete|shostak|0.264|

## `physical_clocks`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|drift_TCC1|✅ proved - complete|shostak|0.276|
|drift_def|✅ proved - complete|shostak|0.200|
|drift_bound|✅ proved - complete|shostak|0.814|
|good_clock_TCC1|✅ proved - complete|shostak|0.180|
|drift_left_nat|✅ proved - complete|shostak|0.322|
|drift_right_nat|✅ proved - complete|shostak|0.379|
|drift_left|✅ proved - complete|shostak|0.312|
|drift_right|✅ proved - complete|shostak|0.310|
|abs_drift_lb|✅ proved - complete|shostak|0.216|
|clock_nondecreasing|✅ proved - complete|shostak|0.146|
|clock_increasing|✅ proved - complete|shostak|0.170|
|clock_nondecreasing_alt|✅ proved - complete|shostak|0.116|
|clock_eq_arg|✅ proved - complete|shostak|0.100|
|relative_drift|✅ proved - complete|shostak|0.255|
|nonoverlap_basis|✅ proved - complete|shostak|0.252|
|skew_basis_0|✅ proved - complete|shostak|0.219|
|skew_bound_1|✅ proved - complete|shostak|0.409|
|skew_bound_2|✅ proved - complete|shostak|0.411|
|skew_bound|✅ proved - complete|shostak|0.282|
|lower_offset|✅ proved - complete|shostak|0.318|
|upper_offset|✅ proved - complete|shostak|0.328|

## `abs_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|abs_max|✅ proved - complete|shostak|0.100|
|abs_add|✅ proved - complete|shostak|0.196|
|abs_le_nonneg|✅ proved - complete|shostak|0.120|
|abs_diff_commutes|✅ proved - complete|shostak|0.106|

## `minmax_ineq`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|min_le|✅ proved - complete|shostak|0.120|
|min_lt|✅ proved - complete|shostak|0.100|
|min_ge|✅ proved - complete|shostak|0.096|
|min_gt|✅ proved - complete|shostak|0.110|
|le_min|✅ proved - complete|shostak|0.107|
|lt_min|✅ proved - complete|shostak|0.100|
|ge_min|✅ proved - complete|shostak|0.110|
|gt_min|✅ proved - complete|shostak|0.107|
|max_le|✅ proved - complete|shostak|0.090|
|max_lt|✅ proved - complete|shostak|0.090|
|max_ge|✅ proved - complete|shostak|0.095|
|max_gt|✅ proved - complete|shostak|0.100|
|le_max|✅ proved - complete|shostak|0.100|
|lt_max|✅ proved - complete|shostak|0.107|
|ge_max|✅ proved - complete|shostak|0.100|
|gt_max|✅ proved - complete|shostak|0.100|
|max_triangle|✅ proved - complete|shostak|0.137|
|min_commutative|✅ proved - complete|shostak|0.100|
|max_commutative|✅ proved - complete|shostak|0.090|

## `floor_ceiling_ineq`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|ge_floor_l|✅ proved - complete|shostak|0.137|
|ge_floor_r|✅ proved - complete|shostak|0.140|
|gt_floor_l|✅ proved - complete|shostak|0.160|
|gt_floor_r|✅ proved - complete|shostak|0.147|
|le_floor_l|✅ proved - complete|shostak|0.160|
|le_floor_r|✅ proved - complete|shostak|0.140|
|lt_floor_l|✅ proved - complete|shostak|0.147|
|lt_floor_r|✅ proved - complete|shostak|0.160|
|floor_monotone|✅ proved - complete|shostak|0.110|
|ge_ceiling_l|✅ proved - complete|shostak|0.136|
|ge_ceiling_r|✅ proved - complete|shostak|0.130|
|gt_ceiling_l|✅ proved - complete|shostak|0.130|
|gt_ceiling_r|✅ proved - complete|shostak|0.145|
|le_ceiling_l|✅ proved - complete|shostak|0.130|
|le_ceiling_r|✅ proved - complete|shostak|0.130|
|lt_ceiling_l|✅ proved - complete|shostak|0.135|
|lt_ceiling_r|✅ proved - complete|shostak|0.130|
|ceiling_monotone|✅ proved - complete|shostak|0.110|

## `bounded_ints`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sup_int_int|✅ proved - incomplete|shostak|0.134|
|sup_int_in_set|✅ proved - incomplete|shostak|0.150|
|sup_int_is_in_set|✅ proved - incomplete|shostak|0.104|

## `inexact_comm_stage`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|majority_lower_rw|✅ proved - incomplete|shostak|0.100|
|majority_upper_rw|✅ proved - incomplete|shostak|0.120|
|quorum_accuracy|✅ proved - incomplete|shostak|0.120|
|majority_accuracy|✅ proved - incomplete|shostak|0.106|
|majority_accuracy_rw|✅ proved - incomplete|shostak|0.100|
|quorum_imprecision_nonempty|✅ proved - incomplete|shostak|0.115|
|majority_imprecision_rw|✅ proved - incomplete|shostak|0.100|
|correct_imprecision|✅ proved - incomplete|shostak|0.275|
|rcvd_diameter|✅ proved - incomplete|shostak|0.472|

## `real_finite_sequences`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|diameter?_TCC1|✅ proved - incomplete|shostak|0.150|
|agreement_propagation|✅ proved - incomplete|shostak|0.182|
|similar?_TCC1|✅ proved - complete|shostak|0.120|
|similar_sort_TCC1|✅ proved - incomplete|shostak|0.130|
|similar_sort_TCC2|✅ proved - incomplete|shostak|0.135|
|similar_sort|✅ proved - incomplete|shostak|0.190|
|sum_TCC1|✅ proved - complete|shostak|0.099|
|sum_TCC2|✅ proved - complete|shostak|0.100|
|sum_TCC3|✅ proved - complete|shostak|0.130|
|sum_lower|✅ proved - incomplete|shostak|0.871|
|sum_upper|✅ proved - incomplete|shostak|0.825|
|mean_TCC1|✅ proved - complete|shostak|0.097|
|min_le_mean|✅ proved - incomplete|shostak|0.312|
|mean_le_max|✅ proved - incomplete|shostak|0.310|
|midpoint_def|✅ proved - incomplete|shostak|0.358|
|mean_lower|✅ proved - incomplete|shostak|0.554|
|mean_upper|✅ proved - incomplete|shostak|0.532|
|mean_consensus|✅ proved - incomplete|shostak|0.150|
|midpoint_consensus|✅ proved - incomplete|shostak|0.221|
|inexact_min|✅ proved - incomplete|shostak|0.192|
|inexact_max|✅ proved - incomplete|shostak|0.211|
|inexact_choose|✅ proved - incomplete|shostak|0.150|
|inexact_mean|✅ proved - incomplete|shostak|2.060|
|inexact_midpoint|✅ proved - incomplete|shostak|0.314|
|mean_convergence|✅ proved - incomplete|shostak|0.527|
|midpoint_convergence|✅ proved - incomplete|shostak|0.358|
|convergent_mean|✅ proved - incomplete|shostak|0.717|
|convergent_midpoint|✅ proved - incomplete|shostak|0.226|

## `inexact_comm`
No formula declaration found.
## `reduce_synch_stage`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|synch_stage_offset|✅ proved - incomplete|shostak|0.226|
|lower_synch_validity|✅ proved - incomplete|shostak|0.896|
|upper_synch_validity|✅ proved - incomplete|shostak|0.561|
|synch_master_slave|✅ proved - incomplete|shostak|0.000|
|synch_agreement_propagation|✅ proved - incomplete|shostak|1.539|
|overlap_imprecision|✅ proved - incomplete|shostak|0.121|
|synch_convergence|✅ proved - incomplete|shostak|1.057|
|synch_agreement_generation|✅ proved - incomplete|shostak|0.570|
|synch_agreement_generation_edge|✅ proved - incomplete|shostak|0.625|

## `clock_shift`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|offset_left_edge|✅ proved - incomplete|shostak|0.161|
|offset_left|✅ proved - incomplete|shostak|0.262|
|offset_right_edge|✅ proved - incomplete|shostak|0.170|
|offset_right|✅ proved - incomplete|shostak|0.161|
|offset_zero|✅ proved - incomplete|shostak|0.111|
|offset_drift|✅ proved - incomplete|shostak|0.361|
|offset_nondecreasing|✅ proved - incomplete|shostak|0.145|
|offset_drift_edge|✅ proved - incomplete|shostak|0.216|
|double_offset|✅ proved - incomplete|shostak|0.175|
|offset_same|✅ proved - incomplete|shostak|0.409|
|offset_same2|✅ proved - incomplete|shostak|0.115|

## `inexact_reduce_stage`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|reduce_lower_validity|✅ proved - incomplete|shostak|0.255|
|reduce_upper_validity|✅ proved - incomplete|shostak|0.245|
|reduce_master_slave|✅ proved - incomplete|shostak|0.299|
|reduce_agreement_propagation|✅ proved - incomplete|shostak|0.442|
|convergence_overlap|✅ proved - incomplete|shostak|0.349|
|reduce_convergence|✅ proved - incomplete|shostak|0.539|
|reduce_agreement_generation|✅ proved - incomplete|shostak|0.424|
|reduce_min_validity|✅ proved - incomplete|shostak|0.242|
|reduce_max_validity|✅ proved - incomplete|shostak|0.212|
|minmax_diameter|✅ proved - incomplete|shostak|0.184|
|agreement_propagation|✅ proved - incomplete|shostak|0.255|
|agreement_generation|✅ proved - incomplete|shostak|0.194|
|convergence|✅ proved - incomplete|shostak|0.285|

## `inexact_reduce`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|lower_validity_TCC1|✅ proved - incomplete|shostak|0.403|
|lower_validity|✅ proved - incomplete|shostak|0.898|
|upper_validity_TCC1|✅ proved - incomplete|shostak|0.386|
|upper_validity|✅ proved - incomplete|shostak|0.952|
|agreement_propagation_TCC1|✅ proved - incomplete|shostak|0.582|
|agreement_propagation|✅ proved - incomplete|shostak|1.012|
|convergence|✅ proved - incomplete|shostak|1.729|
|agreement_generation_TCC1|✅ proved - incomplete|shostak|0.606|
|agreement_generation|✅ proved - incomplete|shostak|0.767|

## `convergence_top`
No formula declaration found.
## `median_stage`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|one_asymmetric_overlap|✅ proved - incomplete|shostak|0.277|
|median_convergence|✅ proved - incomplete|shostak|0.254|

## `median_overlap`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|median_overlap|✅ proved - incomplete|shostak|0.473|

## `middle_third_stage`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|byzantine_overlap|✅ proved - incomplete|shostak|0.297|
|middle_third_convergence|✅ proved - incomplete|shostak|0.218|
|mean_convergence|✅ proved - incomplete|shostak|0.202|
|midpoint_convergence|✅ proved - incomplete|shostak|0.231|

## `middle_third_overlap`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|middle_third_overlap|✅ proved - incomplete|shostak|0.518|

## `middle_third_pigeonhole`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|middle_third_pigeonhole|✅ proved - complete|shostak|0.583|

## `pigeonhole_int`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|disjoint1|✅ proved - complete|shostak|0.110|
|disjoint2|✅ proved - complete|shostak|0.103|
|complement_complement|✅ proved - complete|shostak|0.090|
|mirror_TCC1|✅ proved - complete|shostak|0.090|
|mirror_mirror|✅ proved - complete|shostak|0.136|
|card_mirror|✅ proved - complete|shostak|0.130|
|subset_mirror|✅ proved - complete|shostak|0.100|
|mirror_nat|✅ proved - complete|shostak|0.140|
|mirror_negint|✅ proved - complete|shostak|0.130|
|subset_split|✅ proved - complete|shostak|0.124|
|card_split|✅ proved - complete|shostak|0.259|
|two_thirds_split|✅ proved - complete|shostak|0.180|
|two_thirds_overlap_lem|✅ proved - complete|shostak|0.136|
|fta_overlap_pigeonhole|✅ proved - complete|shostak|0.569|

## `weber_stage`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|overlap_imprecision|✅ proved - incomplete|shostak|0.304|
|weber_convergence|✅ proved - incomplete|shostak|0.210|
|weber_mean_convergence|✅ proved - incomplete|shostak|0.222|
|weber_midpoint_convergence|✅ proved - incomplete|shostak|0.228|

## `weber_overlap`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|weber_overlap|✅ proved - incomplete|shostak|0.802|

## `virtual_clock_top`
No formula declaration found.
## `virtual_clock_1`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|turns_TCC1|✅ proved - complete|shostak|0.387|
|turns_increasing|✅ proved - complete|shostak|0.560|
|turns_unbounded|✅ proved - complete|shostak|0.394|
|turns_event_sequence|✅ proved - complete|shostak|0.090|
|turns_nonoverlap|✅ proved - complete|shostak|0.603|
|turns_early|✅ proved - complete|shostak|0.539|
|turns_self|✅ proved - complete|shostak|0.155|
|turns_cross|✅ proved - complete|shostak|0.677|
|VC1_j_TCC1|✅ proved - complete|shostak|0.110|
|VC1_j|✅ proved - incomplete|shostak|0.120|
|VC1_precision_TCC1|✅ proved - incomplete|shostak|0.136|
|VC1_precision_TCC2|✅ proved - incomplete|shostak|0.120|
|VC1_precision|✅ proved - incomplete|shostak|0.717|
|VC1_accuracy_lower_TCC1|✅ proved - incomplete|shostak|0.110|
|VC1_accuracy_lower|✅ proved - incomplete|shostak|1.178|
|VC1_optimal_accuracy_lower|✅ proved - incomplete|shostak|0.838|
|VC1_accuracy_upper|✅ proved - incomplete|shostak|0.970|
|VC1_optimal_accuracy_upper|✅ proved - incomplete|shostak|0.664|

## `synch_protocol_invariants`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|all_periodic_precision_iff_peer_precision|✅ proved - incomplete|shostak|0.103|
|all_periodic_precision|✅ proved - incomplete|shostak|0.170|
|minmax_adjustment_lower_bound|✅ proved - incomplete|shostak|0.154|
|minmax_adjustment_upper_bound|✅ proved - incomplete|shostak|0.171|
|min_le_trace|✅ proved - incomplete|shostak|0.100|
|trace_le_max|✅ proved - incomplete|shostak|0.125|
|trace_diff|✅ proved - incomplete|shostak|0.140|
|traces_peer_precision|✅ proved - incomplete|shostak|0.154|
|traces_lower|✅ proved - incomplete|shostak|0.195|
|traces_upper|✅ proved - incomplete|shostak|0.225|
|traces_compatible|✅ proved - incomplete|shostak|0.426|
|trace_lower_accuracy|✅ proved - incomplete|shostak|0.184|
|trace_upper_accuracy|✅ proved - incomplete|shostak|0.195|
|trace_weakly_accurate|✅ proved - incomplete|shostak|0.180|

## `synch_constant_definitions`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|P_bound|✅ proved - complete|shostak|0.375|
|rho_bound|✅ proved - complete|shostak|4.134|
|ADJ_ineq|✅ proved - complete|shostak|0.250|
|ADJ_ineq_l|✅ proved - complete|shostak|0.624|
|ADJ_ineq_h|✅ proved - complete|shostak|0.591|
|ADJ_bound|✅ proved - complete|shostak|0.270|
|P_min_TCC1|✅ proved - complete|shostak|0.100|
|p_min_bound|✅ proved - complete|shostak|0.245|
|p_lower_TCC1|✅ proved - complete|shostak|0.332|
|p_min_TCC1|✅ proved - complete|shostak|0.337|
|p_min_lower|✅ proved - complete|shostak|0.090|
|p_max_upper|✅ proved - complete|shostak|0.090|
|drift_P_bound|✅ proved - complete|shostak|0.433|
|Pi_TCC1|✅ proved - complete|shostak|0.336|

## `synch_parameter_constraints`
No formula declaration found.
## `clock_minmax`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|clock_min_witness|✅ proved - incomplete|shostak|0.127|
|clock_max_witness|✅ proved - incomplete|shostak|0.120|
|clock_min_is_min|✅ proved - incomplete|shostak|0.125|
|clock_max_is_max|✅ proved - incomplete|shostak|0.130|
|clock_min_clock|✅ proved - incomplete|shostak|0.206|
|clock_max_clock|✅ proved - incomplete|shostak|0.185|

## `function_image_nonempty`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|nonempty_image|✅ proved - complete|shostak|0.106|
|nonempty_finite_image|✅ proved - complete|shostak|0.100|

## `interval_clocks`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|T_def|✅ proved - complete|shostak|0.160|
|T_rounds|✅ proved - complete|shostak|0.174|
|handover_precision_lower|✅ proved - complete|shostak|0.366|
|handover_precision_upper|✅ proved - complete|shostak|0.375|
|handover_precision|✅ proved - complete|shostak|0.445|
|nonoverlap_peers|✅ proved - complete|shostak|0.246|
|nonoverlap_lower|✅ proved - complete|shostak|0.453|
|nonoverlap_upper|✅ proved - complete|shostak|0.451|
|nonoverlap_round|✅ proved - complete|shostak|0.545|
|lower_interval_accuracy|✅ proved - complete|shostak|0.291|
|upper_interval_accuracy|✅ proved - complete|shostak|0.285|

## `virtual_clocks`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|VC_j|✅ proved - incomplete|shostak|0.096|
|observable_peers|✅ proved - complete|shostak|0.285|
|observable_master|✅ proved - complete|shostak|0.215|
|observable_slave|✅ proved - complete|shostak|0.222|
|adjustment_nonoverlap|✅ proved - complete|shostak|0.251|
|VC_precision_0|✅ proved - incomplete|shostak|0.496|
|VC_precision_1|✅ proved - incomplete|shostak|0.668|
|VC_precision_sym|✅ proved - incomplete|shostak|0.430|
|VC_precision|✅ proved - incomplete|shostak|0.166|
|index_upper_bound|✅ proved - complete|shostak|0.340|
|VC_lower_accuracy|✅ proved - incomplete|shostak|1.561|
|VC_upper_accuracy|✅ proved - incomplete|shostak|0.000|

## `event_sequences`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|increasing_ind|✅ proved - complete|shostak|0.195|
|nondecreasing|✅ proved - complete|shostak|0.143|
|future_events_nonempty|✅ proved - complete|shostak|0.120|
|index_le|✅ proved - complete|shostak|0.133|
|lt_index|✅ proved - complete|shostak|0.120|
|index_le_alt|✅ proved - complete|shostak|0.140|
|index_rewrite|✅ proved - complete|shostak|0.140|
|index_conversion_left|✅ proved - complete|shostak|0.143|
|index_conversion_right|✅ proved - complete|shostak|0.130|
|index_ordered|✅ proved - complete|shostak|0.095|
|cross_nondecreasing|✅ proved - complete|shostak|0.140|
|nonoverlap_index_bound|✅ proved - complete|shostak|0.195|

## `virtual_clock_2`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|t_increasing|✅ proved - complete|shostak|0.130|
|t_unbounded|✅ proved - complete|shostak|0.391|
|t_event_sequence|✅ proved - complete|shostak|0.095|
|t_nonoverlap|✅ proved - complete|shostak|0.325|
|t_early|✅ proved - complete|shostak|0.100|
|t_self|✅ proved - complete|shostak|0.401|
|t_cross|✅ proved - complete|shostak|0.500|
|VC_j|✅ proved - incomplete|shostak|0.106|
|VC2_precision_TCC1|✅ proved - incomplete|shostak|0.130|
|VC2_precision_TCC2|✅ proved - incomplete|shostak|0.116|
|VC2_precision|✅ proved - incomplete|shostak|0.715|
|VC2_accuracy_lower_TCC1|✅ proved - incomplete|shostak|0.120|
|VC2_accuracy_lower|✅ proved - incomplete|shostak|0.932|
|VC2_optimal_accuracy_lower|✅ proved - incomplete|shostak|0.545|
|VC2_accuracy_upper|✅ proved - incomplete|shostak|0.672|
|VC2_optimal_accuracy_upper|✅ proved - incomplete|shostak|0.424|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib//float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-pvsio-fix.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210219-extratregies.lisp`|
