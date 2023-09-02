# Summary for `fault_tolerance`
Run started at 16:59:13 9/1/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **595**   | **595**    | **595**    | **0**  | **2:54.882 s**   |
|top|0|0|0|0|0.000|
|core_top|0|0|0|0|0.000|
|majority_integration|2|2|2|0|0.859|
|protocol_integration|0|0|0|0|0.000|
|comm_integration|3|3|3|0|0.613|
|comm_integration_stage|15|15|15|0|2.357|
|integration_fault_model|1|1|1|0|0.133|
|finite_sets_below_extra|2|2|2|0|0.240|
|exact_comm_stage|3|3|3|0|0.439|
|fault_assumptions_stage|13|13|13|0|2.421|
|pigeonhole|18|18|18|0|3.788|
|tau_declaration|4|4|4|0|0.722|
|node_functions_stage|0|0|0|0|0.000|
|node|6|6|6|0|0.885|
|local|0|0|0|0|0.000|
|exact_comm|1|1|1|0|0.205|
|node_functions|0|0|0|0|0.000|
|protocol|1|1|1|0|0.130|
|majority|5|5|5|0|1.965|
|majority_stage|8|8|8|0|1.230|
|majority_properties|5|5|5|0|1.207|
|finite_seqs|12|12|12|0|1.657|
|exact_reduce_integration|3|3|3|0|1.359|
|ordered_message|3|3|3|0|0.713|
|exact_reduce|5|5|5|0|2.583|
|k_ordered|0|0|0|0|0.000|
|reduce_choice|7|7|7|0|1.548|
|reduce_properties|26|26|26|0|6.235|
|ordered_finite_sequences|41|41|41|0|8.077|
|relations_extra|25|25|25|0|3.037|
|select_minmax|9|9|9|0|1.259|
|exact_reduce_stage|7|7|7|0|1.682|
|reduce_synch|14|14|14|0|12.473|
|timing_integration|1|1|1|0|0.221|
|timing_integration_stage|31|31|31|0|6.028|
|timing_window|3|3|3|0|0.924|
|timing_imprecision|18|18|18|0|4.858|
|inverse_clocks|16|16|16|0|3.774|
|physical_clocks|21|21|21|0|6.610|
|abs_props|4|4|4|0|0.602|
|minmax_ineq|19|19|19|0|2.385|
|floor_ceiling_ineq|18|18|18|0|2.715|
|bounded_ints|3|3|3|0|0.451|
|inexact_comm_stage|9|9|9|0|1.650|
|real_finite_sequences|28|28|28|0|10.957|
|inexact_comm|0|0|0|0|0.000|
|reduce_synch_stage|9|9|9|0|6.426|
|clock_shift|11|11|11|0|2.641|
|inexact_reduce_stage|13|13|13|0|4.481|
|inexact_reduce|9|9|9|0|8.279|
|convergence_top|0|0|0|0|0.000|
|median_stage|2|2|2|0|0.608|
|median_overlap|1|1|1|0|0.531|
|middle_third_stage|14|14|14|0|5.475|
|middle_third_overlap|1|1|1|0|0.577|
|middle_third_pigeonhole|1|1|1|0|0.681|
|pigeonhole_int|14|14|14|0|2.608|
|weber_stage|4|4|4|0|1.105|
|weber_overlap|1|1|1|0|0.889|
|virtual_clock_top|0|0|0|0|0.000|
|virtual_clock_1|18|18|18|0|9.550|
|synch_protocol_invariants|14|14|14|0|2.912|
|synch_constant_definitions|14|14|14|0|9.266|
|synch_parameter_constraints|0|0|0|0|0.000|
|clock_minmax|6|6|6|0|1.041|
|function_image_nonempty|2|2|2|0|0.245|
|interval_clocks|11|11|11|0|4.475|
|virtual_clocks|12|12|12|0|5.491|
|event_sequences|12|12|12|0|2.048|
|virtual_clock_2|16|16|16|0|6.561|
## Detailed Summary 
## `top`
No formula declaration found.
## `core_top`
No formula declaration found.
## `majority_integration`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|consensus_validity|✅ proved - incomplete|shostak|0.477|
|agreement_generation|✅ proved - incomplete|shostak|0.382|

## `protocol_integration`
No formula declaration found.
## `comm_integration`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|quorum_correct_integration|✅ proved - incomplete|shostak|0.201|
|majority_correct_rw|✅ proved - incomplete|shostak|0.210|
|all_symmetric_integration|✅ proved - incomplete|shostak|0.202|

## `comm_integration_stage`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|msg_checker_TCC1|✅ proved - complete|shostak|0.110|
|osym_rcvd_TCC1|✅ proved - complete|shostak|0.120|
|oasym_rcvd_TCC1|✅ proved - complete|shostak|0.120|
|sv_rcvd_TCC1|✅ proved - complete|shostak|0.114|
|correct_denotation_send|✅ proved - complete|shostak|0.170|
|conforms_type|✅ proved - complete|shostak|0.143|
|scheduled_conform|✅ proved - incomplete|shostak|0.130|
|exact_correct_denotation|✅ proved - incomplete|shostak|0.124|
|quorum_correct_integration|✅ proved - incomplete|shostak|0.130|
|majority_correct_rw|✅ proved - incomplete|shostak|0.122|
|exact_single_denotation|✅ proved - incomplete|shostak|0.310|
|uniformly_enabled|✅ proved - incomplete|shostak|0.272|
|exact_symmetric_single|✅ proved - incomplete|shostak|0.232|
|all_symmetric_integration|✅ proved - incomplete|shostak|0.130|
|good_conforms|✅ proved - incomplete|shostak|0.130|

## `integration_fault_model`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|symmetric_single_denotation|✅ proved - complete|shostak|0.133|

## `finite_sets_below_extra`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|below_is_finite_type|✅ proved - complete|shostak|0.120|
|set_below_is_finite|✅ proved - incomplete|shostak|0.120|

## `exact_comm_stage`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|correct_uniform|✅ proved - incomplete|shostak|0.153|
|correct_uniform_alt|✅ proved - incomplete|shostak|0.160|
|majority_correct_rw|✅ proved - incomplete|shostak|0.126|

## `fault_assumptions_stage`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|enabled_TCC1|✅ proved - incomplete|shostak|0.120|
|enabled?_TCC1|✅ proved - incomplete|shostak|0.125|
|enabled_within|✅ proved - incomplete|shostak|0.120|
|quorum_implies_majority|✅ proved - incomplete|shostak|0.234|
|majority|✅ proved - incomplete|shostak|0.263|
|enabled_within_quorum|✅ proved - incomplete|shostak|0.183|
|enabled_within_quorum_nada|✅ proved - incomplete|shostak|0.204|
|quorum_nonempty|✅ proved - incomplete|shostak|0.142|
|max_TCC1|✅ proved - incomplete|shostak|0.190|
|intersection_majority_nonempty|✅ proved - incomplete|shostak|0.164|
|byzantine_intersection_nonempty|✅ proved - incomplete|shostak|0.285|
|intersection_majority|✅ proved - incomplete|shostak|0.245|
|enabled_agree|✅ proved - incomplete|shostak|0.146|

## `pigeonhole`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|pigeonhole|✅ proved - complete|shostak|0.225|
|card_difference_alt|✅ proved - complete|shostak|0.245|
|pigeonhole_difference|✅ proved - complete|shostak|0.194|
|simple_majority_subset|✅ proved - complete|shostak|0.176|
|majority_subset_nonempty|✅ proved - complete|shostak|0.160|
|simple_majority_nonempty|✅ proved - complete|shostak|0.114|
|majority_nonempty|✅ proved - complete|shostak|0.150|
|majority_pigeonhole|✅ proved - complete|shostak|0.222|
|simple_majority_pigeonhole|✅ proved - complete|shostak|0.282|
|median_pigeonhole|✅ proved - complete|shostak|0.453|
|intersection_nonempty|✅ proved - complete|shostak|0.170|
|two_thirds_overlap_pigeonhole|✅ proved - complete|shostak|0.383|
|quorum?_TCC1|✅ proved - complete|shostak|0.140|
|M_TCC1|✅ proved - complete|shostak|0.122|
|M_TCC2|✅ proved - complete|shostak|0.200|
|nada_reduce|✅ proved - complete|shostak|0.152|
|mid_reduce|✅ proved - complete|shostak|0.200|
|byz_reduce|✅ proved - complete|shostak|0.200|

## `tau_declaration`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|nada_TCC1|✅ proved - complete|shostak|0.126|
|mid_TCC1|✅ proved - complete|shostak|0.180|
|byz_TCC1|✅ proved - complete|shostak|0.190|
|weber_TCC1|✅ proved - complete|shostak|0.226|

## `node_functions_stage`
No formula declaration found.
## `node`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|uniform_char|✅ proved - complete|shostak|0.130|
|enabled_symmetric_uniform|✅ proved - complete|shostak|0.136|
|m_TCC1|✅ proved - complete|shostak|0.194|
|vec2seq_TCC1|✅ proved - complete|shostak|0.120|
|vec2seq_agreement|✅ proved - complete|shostak|0.175|
|vec2seq_type|✅ proved - complete|shostak|0.130|

## `local`
No formula declaration found.
## `exact_comm`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|majority_correct_rw|✅ proved - incomplete|shostak|0.205|

## `node_functions`
No formula declaration found.
## `protocol`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|protocol_rw|✅ proved - complete|shostak|0.130|

## `majority`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|consensus_validity|✅ proved - incomplete|shostak|0.590|
|agreement_generation|✅ proved - incomplete|shostak|0.512|
|faulty_source|✅ proved - incomplete|shostak|0.306|
|faulty_stage|✅ proved - incomplete|shostak|0.186|
|asymmetric_source|✅ proved - incomplete|shostak|0.371|

## `majority_stage`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|majority_at_destination|✅ proved - incomplete|shostak|0.181|
|majority_validity|✅ proved - incomplete|shostak|0.134|
|consensus_validity|✅ proved - incomplete|shostak|0.140|
|agreement_generation_alt|✅ proved - incomplete|shostak|0.175|
|agreement_generation|✅ proved - incomplete|shostak|0.139|
|faulty_source|✅ proved - incomplete|shostak|0.179|
|sources_disagree|✅ proved - incomplete|shostak|0.142|
|asymmetric_source|✅ proved - incomplete|shostak|0.140|

## `majority_properties`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|is_majority|✅ proved - incomplete|shostak|0.551|
|majority_value_subset|✅ proved - complete|shostak|0.170|
|uniform_majority|✅ proved - complete|shostak|0.232|
|majority_validity|✅ proved - incomplete|shostak|0.120|
|agreement_generation|✅ proved - incomplete|shostak|0.134|

## `finite_seqs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|choose_TCC1|✅ proved - complete|shostak|0.110|
|choose_in?|✅ proved - complete|shostak|0.140|
|choose_consensus|✅ proved - complete|shostak|0.111|
|maj_exists_same|✅ proved - incomplete|shostak|0.130|
|mf_lem|✅ proved - incomplete|shostak|0.134|
|majority_choose_consensus|✅ proved - incomplete|shostak|0.150|
|majority_choose2_TCC1|✅ proved - complete|shostak|0.110|
|majority_choose2_TCC2|✅ proved - complete|shostak|0.103|
|majority2_choose_majority|✅ proved - incomplete|shostak|0.220|
|uniform_TCC1|✅ proved - complete|shostak|0.126|
|uniform_TCC2|✅ proved - incomplete|shostak|0.130|
|majority_same|✅ proved - incomplete|shostak|0.193|

## `exact_reduce_integration`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|lower_validity|✅ proved - incomplete|shostak|0.453|
|upper_validity|✅ proved - incomplete|shostak|0.454|
|agreement_generation|✅ proved - incomplete|shostak|0.452|

## `ordered_message`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|valid_iff_ord1|✅ proved - complete|shostak|0.123|
|eq_iff|✅ proved - complete|shostak|0.150|
|message_total_order|✅ proved - complete|shostak|0.440|

## `exact_reduce`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|lower_validity|✅ proved - incomplete|shostak|0.799|
|upper_validity|✅ proved - incomplete|shostak|0.795|
|consensus_validity|✅ proved - incomplete|shostak|0.000|
|exact_agreement_propagation|✅ proved - incomplete|shostak|0.392|
|agreement_generation|✅ proved - incomplete|shostak|0.597|

## `k_ordered`
No formula declaration found.
## `reduce_choice`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|in_rcvd|✅ proved - incomplete|shostak|0.259|
|min_reduce_choice|✅ proved - incomplete|shostak|0.177|
|max_reduce_choice|✅ proved - incomplete|shostak|0.160|
|reduce_overlap?_TCC1|✅ proved - incomplete|shostak|0.154|
|reduce_overlap?_TCC2|✅ proved - incomplete|shostak|0.384|
|max_length_TCC1|✅ proved - incomplete|shostak|0.170|
|max_length_bound|✅ proved - incomplete|shostak|0.244|

## `reduce_properties`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|lowset_TCC1|✅ proved - incomplete|shostak|0.170|
|card_lower_leq_lowset_TCC1|✅ proved - complete|shostak|0.113|
|card_lower_leq_lowset|✅ proved - incomplete|shostak|0.240|
|card_lowset|✅ proved - incomplete|shostak|0.224|
|card_upper_leq_highset|✅ proved - incomplete|shostak|0.243|
|card_highset|✅ proved - incomplete|shostak|0.202|
|reduce_TCC1|✅ proved - complete|shostak|0.140|
|reduce_TCC2|✅ proved - complete|shostak|0.150|
|reduce_TCC3|✅ proved - incomplete|shostak|0.270|
|min_reduce_TCC1|✅ proved - complete|shostak|0.120|
|min_reduce_TCC2|✅ proved - incomplete|shostak|0.193|
|min_reduce|✅ proved - incomplete|shostak|0.243|
|max_reduce_TCC1|✅ proved - incomplete|shostak|0.233|
|max_reduce|✅ proved - incomplete|shostak|0.244|
|reduce_length|✅ proved - incomplete|shostak|0.354|
|reduce_rewrite_TCC1|✅ proved - incomplete|shostak|0.394|
|reduce_rewrite_TCC2|✅ proved - incomplete|shostak|0.273|
|reduce_rewrite|✅ proved - incomplete|shostak|0.345|
|reduce_overlap_TCC1|✅ proved - incomplete|shostak|0.497|
|reduce_overlap|✅ proved - incomplete|shostak|0.334|
|reduce_agreement|✅ proved - incomplete|shostak|0.144|
|min_validity|✅ proved - incomplete|shostak|0.245|
|max_validity|✅ proved - incomplete|shostak|0.263|
|choice_lower_validity|✅ proved - incomplete|shostak|0.223|
|choice_upper_validity|✅ proved - incomplete|shostak|0.214|
|choice_agreement_generation|✅ proved - incomplete|shostak|0.164|

## `ordered_finite_sequences`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|extract_one_TCC1|✅ proved - complete|shostak|0.223|
|extract_one_TCC2|✅ proved - complete|shostak|0.170|
|extract_one|✅ proved - complete|shostak|0.185|
|extract_upper_TCC1|✅ proved - complete|shostak|0.240|
|extract_upper|✅ proved - complete|shostak|0.214|
|min_extract_TCC1|✅ proved - incomplete|shostak|0.232|
|min_extract_TCC2|✅ proved - incomplete|shostak|0.150|
|min_extract|✅ proved - incomplete|shostak|0.363|
|max_extract_TCC1|✅ proved - incomplete|shostak|0.146|
|max_extract|✅ proved - incomplete|shostak|0.395|
|minmax_TCC1|✅ proved - incomplete|shostak|0.177|
|min_le_max|✅ proved - incomplete|shostak|0.150|
|min_minmax|✅ proved - incomplete|shostak|0.215|
|max_minmax|✅ proved - incomplete|shostak|0.249|
|min_in_consensus|✅ proved - incomplete|shostak|0.130|
|max_in_consensus|✅ proved - incomplete|shostak|0.120|
|in_consensus|✅ proved - incomplete|shostak|0.174|
|lower_TCC1|✅ proved - complete|shostak|0.130|
|lower_TCC2|✅ proved - incomplete|shostak|0.124|
|lower_TCC3|✅ proved - incomplete|shostak|0.150|
|upper_TCC1|✅ proved - incomplete|shostak|0.153|
|map_set_TCC1|✅ proved - complete|shostak|0.120|
|map_set_TCC2|✅ proved - incomplete|shostak|0.130|
|map_set_TCC3|✅ proved - incomplete|shostak|0.154|
|map_subset_lower_TCC1|✅ proved - incomplete|shostak|0.100|
|map_subset_lower|✅ proved - incomplete|shostak|0.235|
|map_subset_upper_TCC1|✅ proved - incomplete|shostak|0.120|
|map_subset_upper|✅ proved - incomplete|shostak|0.236|
|mapper_TCC1|✅ proved - incomplete|shostak|0.196|
|mapper_TCC2|✅ proved - incomplete|shostak|0.195|
|map_card_eq|✅ proved - incomplete|shostak|0.265|
|card_below_set_TCC1|✅ proved - incomplete|shostak|0.110|
|card_below_set|✅ proved - incomplete|shostak|0.403|
|card_above_set_TCC1|✅ proved - incomplete|shostak|0.120|
|card_above_set|✅ proved - incomplete|shostak|0.378|
|card_lower|✅ proved - incomplete|shostak|0.274|
|card_upper|✅ proved - incomplete|shostak|0.224|
|sort_overlap_TCC1|✅ proved - complete|shostak|0.130|
|sort_overlap_TCC2|✅ proved - incomplete|shostak|0.157|
|sort_overlap|✅ proved - incomplete|shostak|0.305|
|leq_validity|✅ proved - incomplete|shostak|0.135|

## `relations_extra`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|strict_order_is_asymmetric|✅ proved - complete|shostak|0.120|
|asymmetric_is_antisymmetric|✅ proved - complete|shostak|0.120|
|asymmetric_is_irreflexive|✅ proved - complete|shostak|0.106|
|reflexive|✅ proved - complete|shostak|0.110|
|irreflexive|✅ proved - complete|shostak|0.110|
|symmetric|✅ proved - complete|shostak|0.110|
|antisymmetric|✅ proved - complete|shostak|0.116|
|asymmetric|✅ proved - complete|shostak|0.110|
|transitive|✅ proved - complete|shostak|0.110|
|dichotomous|✅ proved - complete|shostak|0.120|
|trichotomous|✅ proved - complete|shostak|0.106|
|dichotomous_is_trichotomous|✅ proved - complete|shostak|0.120|
|well_founded|✅ proved - complete|shostak|0.110|
|reflexive_closure_TCC1|✅ proved - complete|shostak|0.120|
|irreflexive_kernel_TCC1|✅ proved - complete|shostak|0.120|
|symmetric_closure_TCC1|✅ proved - complete|shostak|0.135|
|symmetric_kernel_TCC1|✅ proved - complete|shostak|0.130|
|reflexive_closure_preserves_transitive|✅ proved - complete|shostak|0.135|
|strict_order_to_partial_order|✅ proved - complete|shostak|0.120|
|reflexive_closure_dichotomous|✅ proved - complete|shostak|0.127|
|strict_total_order_to_total_order|✅ proved - complete|shostak|0.110|
|partial_order_to_strict_order|✅ proved - complete|shostak|0.146|
|irreflexive_kernel_trichotomous|✅ proved - complete|shostak|0.140|
|total_order_to_strict_total_order|✅ proved - complete|shostak|0.120|
|symmetric_kernel_of_preorder|✅ proved - complete|shostak|0.166|

## `select_minmax`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|v_min_TCC1|✅ proved - complete|shostak|0.136|
|v_min_witness|✅ proved - incomplete|shostak|0.140|
|v_max_witness|✅ proved - incomplete|shostak|0.125|
|v_min_is_min|✅ proved - incomplete|shostak|0.140|
|v_max_is_max|✅ proved - incomplete|shostak|0.136|
|min_le_max|✅ proved - incomplete|shostak|0.120|
|min_le_max_alt|✅ proved - incomplete|shostak|0.125|
|v_minmax_choose|✅ proved - incomplete|shostak|0.163|
|v_minmax_choose_alt|✅ proved - incomplete|shostak|0.174|

## `exact_reduce_stage`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|reduce_lower_validity|✅ proved - incomplete|shostak|0.254|
|reduce_upper_validity|✅ proved - incomplete|shostak|0.245|
|reduce_agreement_generation|✅ proved - incomplete|shostak|0.253|
|reduce_min_validity|✅ proved - incomplete|shostak|0.241|
|reduce_max_validity|✅ proved - incomplete|shostak|0.213|
|reduce_consensus|✅ proved - incomplete|shostak|0.290|
|reduce_min_eq_max|✅ proved - incomplete|shostak|0.186|

## `reduce_synch`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Delay_TCC1|✅ proved - complete|shostak|0.200|
|Del_TCC1|✅ proved - complete|shostak|0.193|
|Del_Delay|✅ proved - complete|shostak|0.120|
|Lag_TCC1|✅ proved - complete|shostak|0.170|
|Delay_Lag|✅ proved - complete|shostak|0.116|
|offset_sent_nominal|✅ proved - incomplete|shostak|0.210|
|synch_protocol_sent|✅ proved - incomplete|shostak|0.527|
|k_stage_synch|✅ proved - incomplete|shostak|0.782|
|lower_validity|✅ proved - incomplete|shostak|1.716|
|upper_validity|✅ proved - incomplete|shostak|1.712|
|agreement_propagation|✅ proved - incomplete|shostak|1.435|
|convergence|✅ proved - incomplete|shostak|2.976|
|agreement_generation|✅ proved - incomplete|shostak|1.262|
|agreement_generation_edge|✅ proved - incomplete|shostak|1.054|

## `timing_integration`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|enabled_within_timing|✅ proved - incomplete|shostak|0.221|

## `timing_integration_stage`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|t_min_TCC1|✅ proved - incomplete|shostak|0.150|
|uniformly_outer_exists|✅ proved - incomplete|shostak|0.288|
|symmetric_timing_uniform|✅ proved - incomplete|shostak|0.169|
|uniformly_outer_single_denotation|✅ proved - incomplete|shostak|0.154|
|good_send_TCC1|✅ proved - complete|shostak|0.190|
|osym_send_TCC1|✅ proved - incomplete|shostak|0.209|
|oasym_send_TCC1|✅ proved - incomplete|shostak|0.198|
|tsym_send_TCC1|✅ proved - incomplete|shostak|0.164|
|sv_send_TCC1|✅ proved - incomplete|shostak|0.153|
|tsym_single_denotation|✅ proved - incomplete|shostak|0.140|
|received_clock_edge|✅ proved - incomplete|shostak|0.125|
|enabled_within_stage|✅ proved - incomplete|shostak|0.160|
|correct_denotation_send|✅ proved - incomplete|shostak|0.205|
|conforming_correct_denotation_send|✅ proved - incomplete|shostak|0.174|
|single_denotation_send|✅ proved - incomplete|shostak|0.589|
|symmetric_send|✅ proved - incomplete|shostak|0.132|
|symmetric_timing_conforms|✅ proved - incomplete|shostak|0.417|
|correct_lower_timing|✅ proved - incomplete|shostak|0.144|
|correct_quorum_lower|✅ proved - incomplete|shostak|0.120|
|correct_majority_lower|✅ proved - incomplete|shostak|0.115|
|correct_upper_timing|✅ proved - incomplete|shostak|0.124|
|correct_majority_upper|✅ proved - incomplete|shostak|0.140|
|correct_quorum_upper|✅ proved - incomplete|shostak|0.134|
|correct_accuracy_timing|✅ proved - incomplete|shostak|0.130|
|correct_imprecision_timing|✅ proved - incomplete|shostak|0.447|
|quorum_imprecision|✅ proved - incomplete|shostak|0.132|
|majority_imprecision|✅ proved - incomplete|shostak|0.130|
|single_imprecision_timing|✅ proved - incomplete|shostak|0.268|
|uniformly_enabled|✅ proved - incomplete|shostak|0.183|
|symmetric_imprecision_timing|✅ proved - incomplete|shostak|0.204|
|all_symmetric_timing|✅ proved - incomplete|shostak|0.140|

## `timing_window`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|timing_conforms_def|✅ proved - incomplete|shostak|0.208|
|good_range_always_conforms|✅ proved - incomplete|shostak|0.586|
|good_range_inner_window|✅ proved - incomplete|shostak|0.130|

## `timing_imprecision`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|mid_latency_ge_one_half|✅ proved - complete|shostak|0.185|
|W_TCC1|✅ proved - complete|shostak|0.250|
|W_TCC2|✅ proved - complete|shostak|0.282|
|drift_relation_alt|✅ proved - complete|shostak|0.234|
|W_bound|✅ proved - complete|shostak|0.414|
|W_bound_alt|✅ proved - complete|shostak|0.194|
|epsilon_l_TCC1|✅ proved - complete|shostak|0.190|
|epsilon_u_TCC1|✅ proved - complete|shostak|0.194|
|max_error_TCC1|✅ proved - complete|shostak|0.420|
|epsilon_relation|✅ proved - complete|shostak|0.227|
|event_observation_error|✅ proved - incomplete|shostak|0.234|
|link_lower_range|✅ proved - incomplete|shostak|0.384|
|link_upper_range|✅ proved - incomplete|shostak|0.434|
|link_abs_bound|✅ proved - incomplete|shostak|0.226|
|link_relative_range|✅ proved - incomplete|shostak|0.294|
|link_relative_symmetry|✅ proved - incomplete|shostak|0.275|
|good_range_bounded|✅ proved - complete|shostak|0.166|
|link_symmetry|✅ proved - incomplete|shostak|0.255|

## `inverse_clocks`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|lower_Clocktime_exists|✅ proved - complete|shostak|0.264|
|upper_Clocktime_exists|✅ proved - complete|shostak|0.226|
|past_ticks_max_set|✅ proved - incomplete|shostak|0.145|
|Clock_rewrite|✅ proved - incomplete|shostak|0.142|
|Clock_lower|✅ proved - incomplete|shostak|0.120|
|Clock_upper|✅ proved - incomplete|shostak|0.162|
|Clock_nondecreasing|✅ proved - incomplete|shostak|0.210|
|alt_clock_edge|✅ proved - incomplete|shostak|0.122|
|conversion_left|✅ proved - incomplete|shostak|0.110|
|conversion_left_alt|✅ proved - incomplete|shostak|0.180|
|conversion_right|✅ proved - incomplete|shostak|0.184|
|obs_bound|✅ proved - incomplete|shostak|0.200|
|precision_conversion_sym|✅ proved - incomplete|shostak|0.570|
|precision_conversion|✅ proved - incomplete|shostak|0.443|
|lower_accuracy_conversion|✅ proved - incomplete|shostak|0.401|
|upper_accuracy_conversion|✅ proved - incomplete|shostak|0.295|

## `physical_clocks`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|drift_TCC1|✅ proved - complete|shostak|0.285|
|drift_def|✅ proved - complete|shostak|0.205|
|drift_bound|✅ proved - complete|shostak|0.881|
|good_clock_TCC1|✅ proved - complete|shostak|0.200|
|drift_left_nat|✅ proved - complete|shostak|0.348|
|drift_right_nat|✅ proved - complete|shostak|0.395|
|drift_left|✅ proved - complete|shostak|0.346|
|drift_right|✅ proved - complete|shostak|0.360|
|abs_drift_lb|✅ proved - complete|shostak|0.235|
|clock_nondecreasing|✅ proved - complete|shostak|0.180|
|clock_increasing|✅ proved - complete|shostak|0.175|
|clock_nondecreasing_alt|✅ proved - complete|shostak|0.120|
|clock_eq_arg|✅ proved - complete|shostak|0.136|
|relative_drift|✅ proved - complete|shostak|0.314|
|nonoverlap_basis|✅ proved - complete|shostak|0.255|
|skew_basis_0|✅ proved - complete|shostak|0.260|
|skew_bound_1|✅ proved - complete|shostak|0.451|
|skew_bound_2|✅ proved - complete|shostak|0.442|
|skew_bound|✅ proved - complete|shostak|0.331|
|lower_offset|✅ proved - complete|shostak|0.335|
|upper_offset|✅ proved - complete|shostak|0.356|

## `abs_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|abs_max|✅ proved - complete|shostak|0.120|
|abs_add|✅ proved - complete|shostak|0.216|
|abs_le_nonneg|✅ proved - complete|shostak|0.130|
|abs_diff_commutes|✅ proved - complete|shostak|0.136|

## `minmax_ineq`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|min_le|✅ proved - complete|shostak|0.130|
|min_lt|✅ proved - complete|shostak|0.120|
|min_ge|✅ proved - complete|shostak|0.127|
|min_gt|✅ proved - complete|shostak|0.130|
|le_min|✅ proved - complete|shostak|0.126|
|lt_min|✅ proved - complete|shostak|0.130|
|ge_min|✅ proved - complete|shostak|0.130|
|gt_min|✅ proved - complete|shostak|0.127|
|max_le|✅ proved - complete|shostak|0.120|
|max_lt|✅ proved - complete|shostak|0.120|
|max_ge|✅ proved - complete|shostak|0.115|
|max_gt|✅ proved - complete|shostak|0.120|
|le_max|✅ proved - complete|shostak|0.120|
|lt_max|✅ proved - complete|shostak|0.124|
|ge_max|✅ proved - complete|shostak|0.120|
|gt_max|✅ proved - complete|shostak|0.120|
|max_triangle|✅ proved - complete|shostak|0.166|
|min_commutative|✅ proved - complete|shostak|0.120|
|max_commutative|✅ proved - complete|shostak|0.120|

## `floor_ceiling_ineq`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|ge_floor_l|✅ proved - complete|shostak|0.156|
|ge_floor_r|✅ proved - complete|shostak|0.170|
|gt_floor_l|✅ proved - complete|shostak|0.180|
|gt_floor_r|✅ proved - complete|shostak|0.156|
|le_floor_l|✅ proved - complete|shostak|0.160|
|le_floor_r|✅ proved - complete|shostak|0.150|
|lt_floor_l|✅ proved - complete|shostak|0.167|
|lt_floor_r|✅ proved - complete|shostak|0.180|
|floor_monotone|✅ proved - complete|shostak|0.120|
|ge_ceiling_l|✅ proved - complete|shostak|0.146|
|ge_ceiling_r|✅ proved - complete|shostak|0.140|
|gt_ceiling_l|✅ proved - complete|shostak|0.130|
|gt_ceiling_r|✅ proved - complete|shostak|0.155|
|le_ceiling_l|✅ proved - complete|shostak|0.140|
|le_ceiling_r|✅ proved - complete|shostak|0.150|
|lt_ceiling_l|✅ proved - complete|shostak|0.145|
|lt_ceiling_r|✅ proved - complete|shostak|0.150|
|ceiling_monotone|✅ proved - complete|shostak|0.120|

## `bounded_ints`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sup_int_int|✅ proved - incomplete|shostak|0.155|
|sup_int_in_set|✅ proved - incomplete|shostak|0.180|
|sup_int_is_in_set|✅ proved - incomplete|shostak|0.116|

## `inexact_comm_stage`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|majority_lower_rw|✅ proved - incomplete|shostak|0.130|
|majority_upper_rw|✅ proved - incomplete|shostak|0.120|
|quorum_accuracy|✅ proved - incomplete|shostak|0.126|
|majority_accuracy|✅ proved - incomplete|shostak|0.130|
|majority_accuracy_rw|✅ proved - incomplete|shostak|0.127|
|quorum_imprecision_nonempty|✅ proved - incomplete|shostak|0.120|
|majority_imprecision_rw|✅ proved - incomplete|shostak|0.125|
|correct_imprecision|✅ proved - incomplete|shostak|0.274|
|rcvd_diameter|✅ proved - incomplete|shostak|0.498|

## `real_finite_sequences`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|diameter?_TCC1|✅ proved - incomplete|shostak|0.183|
|agreement_propagation|✅ proved - incomplete|shostak|0.190|
|similar?_TCC1|✅ proved - complete|shostak|0.124|
|similar_sort_TCC1|✅ proved - incomplete|shostak|0.140|
|similar_sort_TCC2|✅ proved - incomplete|shostak|0.140|
|similar_sort|✅ proved - incomplete|shostak|0.203|
|sum_TCC1|✅ proved - complete|shostak|0.120|
|sum_TCC2|✅ proved - complete|shostak|0.110|
|sum_TCC3|✅ proved - complete|shostak|0.131|
|sum_lower|✅ proved - incomplete|shostak|0.951|
|sum_upper|✅ proved - incomplete|shostak|0.888|
|mean_TCC1|✅ proved - complete|shostak|0.110|
|min_le_mean|✅ proved - incomplete|shostak|0.327|
|mean_le_max|✅ proved - incomplete|shostak|0.328|
|midpoint_def|✅ proved - incomplete|shostak|0.373|
|mean_lower|✅ proved - incomplete|shostak|0.583|
|mean_upper|✅ proved - incomplete|shostak|0.564|
|mean_consensus|✅ proved - incomplete|shostak|0.150|
|midpoint_consensus|✅ proved - incomplete|shostak|0.259|
|inexact_min|✅ proved - incomplete|shostak|0.199|
|inexact_max|✅ proved - incomplete|shostak|0.215|
|inexact_choose|✅ proved - incomplete|shostak|0.140|
|inexact_mean|✅ proved - incomplete|shostak|2.195|
|inexact_midpoint|✅ proved - incomplete|shostak|0.344|
|mean_convergence|✅ proved - incomplete|shostak|0.568|
|midpoint_convergence|✅ proved - incomplete|shostak|0.381|
|convergent_mean|✅ proved - incomplete|shostak|0.776|
|convergent_midpoint|✅ proved - incomplete|shostak|0.265|

## `inexact_comm`
No formula declaration found.
## `reduce_synch_stage`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|synch_stage_offset|✅ proved - incomplete|shostak|0.237|
|lower_synch_validity|✅ proved - incomplete|shostak|0.997|
|upper_synch_validity|✅ proved - incomplete|shostak|0.000|
|synch_master_slave|✅ proved - incomplete|shostak|0.703|
|synch_agreement_propagation|✅ proved - incomplete|shostak|1.744|
|overlap_imprecision|✅ proved - incomplete|shostak|0.150|
|synch_convergence|✅ proved - incomplete|shostak|1.232|
|synch_agreement_generation|✅ proved - incomplete|shostak|0.651|
|synch_agreement_generation_edge|✅ proved - incomplete|shostak|0.712|

## `clock_shift`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|offset_left_edge|✅ proved - incomplete|shostak|0.190|
|offset_left|✅ proved - incomplete|shostak|0.320|
|offset_right_edge|✅ proved - incomplete|shostak|0.201|
|offset_right|✅ proved - incomplete|shostak|0.201|
|offset_zero|✅ proved - incomplete|shostak|0.140|
|offset_drift|✅ proved - incomplete|shostak|0.413|
|offset_nondecreasing|✅ proved - incomplete|shostak|0.180|
|offset_drift_edge|✅ proved - incomplete|shostak|0.206|
|double_offset|✅ proved - incomplete|shostak|0.195|
|offset_same|✅ proved - incomplete|shostak|0.469|
|offset_same2|✅ proved - incomplete|shostak|0.126|

## `inexact_reduce_stage`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|reduce_lower_validity|✅ proved - incomplete|shostak|0.285|
|reduce_upper_validity|✅ proved - incomplete|shostak|0.262|
|reduce_master_slave|✅ proved - incomplete|shostak|0.358|
|reduce_agreement_propagation|✅ proved - incomplete|shostak|0.509|
|convergence_overlap|✅ proved - incomplete|shostak|0.416|
|reduce_convergence|✅ proved - incomplete|shostak|0.654|
|reduce_agreement_generation|✅ proved - incomplete|shostak|0.470|
|reduce_min_validity|✅ proved - incomplete|shostak|0.257|
|reduce_max_validity|✅ proved - incomplete|shostak|0.241|
|minmax_diameter|✅ proved - incomplete|shostak|0.204|
|agreement_propagation|✅ proved - incomplete|shostak|0.295|
|agreement_generation|✅ proved - incomplete|shostak|0.206|
|convergence|✅ proved - incomplete|shostak|0.324|

## `inexact_reduce`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|lower_validity_TCC1|✅ proved - incomplete|shostak|0.416|
|lower_validity|✅ proved - incomplete|shostak|1.024|
|upper_validity_TCC1|✅ proved - incomplete|shostak|0.427|
|upper_validity|✅ proved - incomplete|shostak|1.085|
|agreement_propagation_TCC1|✅ proved - incomplete|shostak|0.621|
|agreement_propagation|✅ proved - incomplete|shostak|1.132|
|convergence|✅ proved - incomplete|shostak|2.035|
|agreement_generation_TCC1|✅ proved - incomplete|shostak|0.653|
|agreement_generation|✅ proved - incomplete|shostak|0.886|

## `convergence_top`
No formula declaration found.
## `median_stage`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|one_asymmetric_overlap|✅ proved - incomplete|shostak|0.316|
|median_convergence|✅ proved - incomplete|shostak|0.292|

## `median_overlap`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|median_overlap|✅ proved - incomplete|shostak|0.531|

## `middle_third_stage`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|byzantine_overlap|✅ proved - incomplete|shostak|0.337|
|middle_third_convergence|✅ proved - incomplete|shostak|0.267|
|reduce_convergence2|✅ proved - incomplete|shostak|0.633|
|convergence2|✅ proved - incomplete|shostak|0.333|
|middle_third_convergence_2|✅ proved - incomplete|shostak|0.265|
|mean_convergence_midpoint|✅ proved - incomplete|shostak|0.409|
|mean_convergence_midpoint_0|✅ proved - incomplete|shostak|0.730|
|midpoint_convergence_mean|✅ proved - incomplete|shostak|0.417|
|convergent_mean_midpoint|✅ proved - incomplete|shostak|0.549|
|convergent_midpoint_mean|✅ proved - incomplete|shostak|0.556|
|middle_third_convergence_mean_midpoint|✅ proved - incomplete|shostak|0.235|
|middle_third_convergence_midpoint_mean|✅ proved - incomplete|shostak|0.235|
|mean_convergence|✅ proved - incomplete|shostak|0.245|
|midpoint_convergence|✅ proved - incomplete|shostak|0.264|

## `middle_third_overlap`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|middle_third_overlap|✅ proved - incomplete|shostak|0.577|

## `middle_third_pigeonhole`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|middle_third_pigeonhole|✅ proved - complete|shostak|0.681|

## `pigeonhole_int`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|disjoint1|✅ proved - complete|shostak|0.130|
|disjoint2|✅ proved - complete|shostak|0.121|
|complement_complement|✅ proved - complete|shostak|0.110|
|mirror_TCC1|✅ proved - complete|shostak|0.110|
|mirror_mirror|✅ proved - complete|shostak|0.150|
|card_mirror|✅ proved - complete|shostak|0.140|
|subset_mirror|✅ proved - complete|shostak|0.112|
|mirror_nat|✅ proved - complete|shostak|0.150|
|mirror_negint|✅ proved - complete|shostak|0.150|
|subset_split|✅ proved - complete|shostak|0.154|
|card_split|✅ proved - complete|shostak|0.284|
|two_thirds_split|✅ proved - complete|shostak|0.206|
|two_thirds_overlap_lem|✅ proved - complete|shostak|0.154|
|fta_overlap_pigeonhole|✅ proved - complete|shostak|0.637|

## `weber_stage`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|overlap_imprecision|✅ proved - incomplete|shostak|0.336|
|weber_convergence|✅ proved - incomplete|shostak|0.245|
|weber_mean_convergence|✅ proved - incomplete|shostak|0.246|
|weber_midpoint_convergence|✅ proved - incomplete|shostak|0.278|

## `weber_overlap`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|weber_overlap|✅ proved - incomplete|shostak|0.889|

## `virtual_clock_top`
No formula declaration found.
## `virtual_clock_1`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|turns_TCC1|✅ proved - complete|shostak|0.430|
|turns_increasing|✅ proved - complete|shostak|0.623|
|turns_unbounded|✅ proved - complete|shostak|0.460|
|turns_event_sequence|✅ proved - complete|shostak|0.120|
|turns_nonoverlap|✅ proved - complete|shostak|0.663|
|turns_early|✅ proved - complete|shostak|0.594|
|turns_self|✅ proved - complete|shostak|0.185|
|turns_cross|✅ proved - complete|shostak|0.762|
|VC1_j_TCC1|✅ proved - complete|shostak|0.120|
|VC1_j|✅ proved - incomplete|shostak|0.120|
|VC1_precision_TCC1|✅ proved - incomplete|shostak|0.145|
|VC1_precision_TCC2|✅ proved - incomplete|shostak|0.140|
|VC1_precision|✅ proved - incomplete|shostak|0.846|
|VC1_accuracy_lower_TCC1|✅ proved - incomplete|shostak|0.130|
|VC1_accuracy_lower|✅ proved - incomplete|shostak|1.375|
|VC1_optimal_accuracy_lower|✅ proved - incomplete|shostak|0.987|
|VC1_accuracy_upper|✅ proved - incomplete|shostak|1.098|
|VC1_optimal_accuracy_upper|✅ proved - incomplete|shostak|0.752|

## `synch_protocol_invariants`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|all_periodic_precision_iff_peer_precision|✅ proved - incomplete|shostak|0.130|
|all_periodic_precision|✅ proved - incomplete|shostak|0.190|
|minmax_adjustment_lower_bound|✅ proved - incomplete|shostak|0.192|
|minmax_adjustment_upper_bound|✅ proved - incomplete|shostak|0.200|
|min_le_trace|✅ proved - incomplete|shostak|0.122|
|trace_le_max|✅ proved - incomplete|shostak|0.110|
|trace_diff|✅ proved - incomplete|shostak|0.125|
|traces_peer_precision|✅ proved - incomplete|shostak|0.192|
|traces_lower|✅ proved - incomplete|shostak|0.235|
|traces_upper|✅ proved - incomplete|shostak|0.264|
|traces_compatible|✅ proved - incomplete|shostak|0.499|
|trace_lower_accuracy|✅ proved - incomplete|shostak|0.225|
|trace_upper_accuracy|✅ proved - incomplete|shostak|0.224|
|trace_weakly_accurate|✅ proved - incomplete|shostak|0.204|

## `synch_constant_definitions`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|P_bound|✅ proved - complete|shostak|0.435|
|rho_bound|✅ proved - complete|shostak|4.621|
|ADJ_ineq|✅ proved - complete|shostak|0.305|
|ADJ_ineq_l|✅ proved - complete|shostak|0.702|
|ADJ_ineq_h|✅ proved - complete|shostak|0.692|
|ADJ_bound|✅ proved - complete|shostak|0.320|
|P_min_TCC1|✅ proved - complete|shostak|0.110|
|p_min_bound|✅ proved - complete|shostak|0.262|
|p_lower_TCC1|✅ proved - complete|shostak|0.384|
|p_min_TCC1|✅ proved - complete|shostak|0.406|
|p_min_lower|✅ proved - complete|shostak|0.110|
|p_max_upper|✅ proved - complete|shostak|0.110|
|drift_P_bound|✅ proved - complete|shostak|0.473|
|Pi_TCC1|✅ proved - complete|shostak|0.336|

## `synch_parameter_constraints`
No formula declaration found.
## `clock_minmax`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|clock_min_witness|✅ proved - incomplete|shostak|0.145|
|clock_max_witness|✅ proved - incomplete|shostak|0.150|
|clock_min_is_min|✅ proved - incomplete|shostak|0.146|
|clock_max_is_max|✅ proved - incomplete|shostak|0.140|
|clock_min_clock|✅ proved - incomplete|shostak|0.245|
|clock_max_clock|✅ proved - incomplete|shostak|0.215|

## `function_image_nonempty`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|nonempty_image|✅ proved - complete|shostak|0.125|
|nonempty_finite_image|✅ proved - complete|shostak|0.120|

## `interval_clocks`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|T_def|✅ proved - complete|shostak|0.190|
|T_rounds|✅ proved - complete|shostak|0.194|
|handover_precision_lower|✅ proved - complete|shostak|0.405|
|handover_precision_upper|✅ proved - complete|shostak|0.415|
|handover_precision|✅ proved - complete|shostak|0.524|
|nonoverlap_peers|✅ proved - complete|shostak|0.304|
|nonoverlap_lower|✅ proved - complete|shostak|0.551|
|nonoverlap_upper|✅ proved - complete|shostak|0.555|
|nonoverlap_round|✅ proved - complete|shostak|0.662|
|lower_interval_accuracy|✅ proved - complete|shostak|0.340|
|upper_interval_accuracy|✅ proved - complete|shostak|0.335|

## `virtual_clocks`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|VC_j|✅ proved - incomplete|shostak|0.110|
|observable_peers|✅ proved - complete|shostak|0.350|
|observable_master|✅ proved - complete|shostak|0.265|
|observable_slave|✅ proved - complete|shostak|0.260|
|adjustment_nonoverlap|✅ proved - complete|shostak|0.301|
|VC_precision_0|✅ proved - incomplete|shostak|0.566|
|VC_precision_1|✅ proved - incomplete|shostak|0.794|
|VC_precision_sym|✅ proved - incomplete|shostak|0.508|
|VC_precision|✅ proved - incomplete|shostak|0.194|
|index_upper_bound|✅ proved - complete|shostak|0.369|
|VC_lower_accuracy|✅ proved - incomplete|shostak|1.774|
|VC_upper_accuracy|✅ proved - incomplete|shostak|0.000|

## `event_sequences`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|increasing_ind|✅ proved - complete|shostak|0.216|
|nondecreasing|✅ proved - complete|shostak|0.175|
|future_events_nonempty|✅ proved - complete|shostak|0.150|
|index_le|✅ proved - complete|shostak|0.174|
|lt_index|✅ proved - complete|shostak|0.150|
|index_le_alt|✅ proved - complete|shostak|0.162|
|index_rewrite|✅ proved - complete|shostak|0.170|
|index_conversion_left|✅ proved - complete|shostak|0.161|
|index_conversion_right|✅ proved - complete|shostak|0.170|
|index_ordered|✅ proved - complete|shostak|0.125|
|cross_nondecreasing|✅ proved - complete|shostak|0.160|
|nonoverlap_index_bound|✅ proved - complete|shostak|0.235|

## `virtual_clock_2`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|t_increasing|✅ proved - complete|shostak|0.170|
|t_unbounded|✅ proved - complete|shostak|0.440|
|t_event_sequence|✅ proved - complete|shostak|0.115|
|t_nonoverlap|✅ proved - complete|shostak|0.365|
|t_early|✅ proved - complete|shostak|0.120|
|t_self|✅ proved - complete|shostak|0.479|
|t_cross|✅ proved - complete|shostak|0.580|
|VC_j|✅ proved - incomplete|shostak|0.130|
|VC2_precision_TCC1|✅ proved - incomplete|shostak|0.147|
|VC2_precision_TCC2|✅ proved - incomplete|shostak|0.140|
|VC2_precision|✅ proved - incomplete|shostak|0.810|
|VC2_accuracy_lower_TCC1|✅ proved - incomplete|shostak|0.130|
|VC2_accuracy_lower|✅ proved - incomplete|shostak|1.055|
|VC2_optimal_accuracy_lower|✅ proved - incomplete|shostak|0.599|
|VC2_accuracy_upper|✅ proved - incomplete|shostak|0.797|
|VC2_optimal_accuracy_upper|✅ proved - incomplete|shostak|0.484|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib/pvsio_utils/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230712-static-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230710-tcc-gen.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230707-defattach.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230706-extrategies.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`|
