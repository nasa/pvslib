# Summary for `fault_tolerance`
Run started at 2:52:36 7/4/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **585**   | **585**    | **585**    | **0**  | **2:29.266 s**   |
|top|0|0|0|0|0.000|
|core_top|0|0|0|0|0.000|
|majority_integration|2|2|2|0|0.763|
|protocol_integration|0|0|0|0|0.000|
|comm_integration|3|3|3|0|0.541|
|comm_integration_stage|15|15|15|0|2.035|
|integration_fault_model|1|1|1|0|0.100|
|finite_sets_below_extra|2|2|2|0|0.205|
|exact_comm_stage|3|3|3|0|0.399|
|fault_assumptions_stage|13|13|13|0|2.147|
|pigeonhole|18|18|18|0|3.261|
|tau_declaration|4|4|4|0|0.601|
|node_functions_stage|0|0|0|0|0.000|
|node|6|6|6|0|0.769|
|local|0|0|0|0|0.000|
|exact_comm|1|1|1|0|0.185|
|node_functions|0|0|0|0|0.000|
|protocol|1|1|1|0|0.110|
|majority|5|5|5|0|1.670|
|majority_stage|8|8|8|0|1.119|
|majority_properties|5|5|5|0|1.032|
|finite_seqs|12|12|12|0|1.462|
|exact_reduce_integration|3|3|3|0|1.185|
|ordered_message|3|3|3|0|0.630|
|exact_reduce|5|5|5|0|2.491|
|k_ordered|0|0|0|0|0.000|
|reduce_choice|7|7|7|0|1.254|
|reduce_properties|26|26|26|0|5.698|
|ordered_finite_sequences|41|41|41|0|7.293|
|relations_extra|25|25|25|0|2.706|
|select_minmax|9|9|9|0|1.135|
|exact_reduce_stage|7|7|7|0|1.495|
|reduce_synch|14|14|14|0|10.951|
|timing_integration|1|1|1|0|0.201|
|timing_integration_stage|31|31|31|0|5.427|
|timing_window|3|3|3|0|0.828|
|timing_imprecision|18|18|18|0|4.262|
|inverse_clocks|16|16|16|0|3.373|
|physical_clocks|21|21|21|0|5.737|
|abs_props|4|4|4|0|0.532|
|minmax_ineq|19|19|19|0|2.092|
|floor_ceiling_ineq|18|18|18|0|2.379|
|bounded_ints|3|3|3|0|0.402|
|inexact_comm_stage|9|9|9|0|1.477|
|real_finite_sequences|28|28|28|0|9.509|
|inexact_comm|0|0|0|0|0.000|
|reduce_synch_stage|9|9|9|0|6.075|
|clock_shift|11|11|11|0|2.252|
|inexact_reduce_stage|13|13|13|0|3.907|
|inexact_reduce|9|9|9|0|7.281|
|convergence_top|0|0|0|0|0.000|
|median_stage|2|2|2|0|0.527|
|median_overlap|1|1|1|0|0.476|
|middle_third_stage|4|4|4|0|0.948|
|middle_third_overlap|1|1|1|0|0.509|
|middle_third_pigeonhole|1|1|1|0|0.594|
|pigeonhole_int|14|14|14|0|2.260|
|weber_stage|4|4|4|0|0.951|
|weber_overlap|1|1|1|0|0.790|
|virtual_clock_top|0|0|0|0|0.000|
|virtual_clock_1|18|18|18|0|8.137|
|synch_protocol_invariants|14|14|14|0|2.538|
|synch_constant_definitions|14|14|14|0|8.199|
|synch_parameter_constraints|0|0|0|0|0.000|
|clock_minmax|6|6|6|0|0.902|
|function_image_nonempty|2|2|2|0|0.200|
|interval_clocks|11|11|11|0|3.774|
|virtual_clocks|12|12|12|0|4.188|
|event_sequences|12|12|12|0|1.741|
|virtual_clock_2|16|16|16|0|5.561|
## Detailed Summary 
## `top`
No formula declaration found.
## `core_top`
No formula declaration found.
## `majority_integration`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|consensus_validity|✅ proved - incomplete|shostak|0.421|
|agreement_generation|✅ proved - incomplete|shostak|0.342|

## `protocol_integration`
No formula declaration found.
## `comm_integration`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|quorum_correct_integration|✅ proved - incomplete|shostak|0.180|
|majority_correct_rw|✅ proved - incomplete|shostak|0.192|
|all_symmetric_integration|✅ proved - incomplete|shostak|0.169|

## `comm_integration_stage`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|msg_checker_TCC1|✅ proved - complete|shostak|0.090|
|osym_rcvd_TCC1|✅ proved - complete|shostak|0.102|
|oasym_rcvd_TCC1|✅ proved - complete|shostak|0.100|
|sv_rcvd_TCC1|✅ proved - complete|shostak|0.100|
|correct_denotation_send|✅ proved - complete|shostak|0.140|
|conforms_type|✅ proved - complete|shostak|0.120|
|scheduled_conform|✅ proved - incomplete|shostak|0.120|
|exact_correct_denotation|✅ proved - incomplete|shostak|0.110|
|quorum_correct_integration|✅ proved - incomplete|shostak|0.102|
|majority_correct_rw|✅ proved - incomplete|shostak|0.100|
|exact_single_denotation|✅ proved - incomplete|shostak|0.268|
|uniformly_enabled|✅ proved - incomplete|shostak|0.252|
|exact_symmetric_single|✅ proved - incomplete|shostak|0.211|
|all_symmetric_integration|✅ proved - incomplete|shostak|0.110|
|good_conforms|✅ proved - incomplete|shostak|0.110|

## `integration_fault_model`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|symmetric_single_denotation|✅ proved - complete|shostak|0.100|

## `finite_sets_below_extra`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|below_is_finite_type|✅ proved - complete|shostak|0.095|
|set_below_is_finite|✅ proved - incomplete|shostak|0.110|

## `exact_comm_stage`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|correct_uniform|✅ proved - incomplete|shostak|0.134|
|correct_uniform_alt|✅ proved - incomplete|shostak|0.150|
|majority_correct_rw|✅ proved - incomplete|shostak|0.115|

## `fault_assumptions_stage`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|enabled_TCC1|✅ proved - incomplete|shostak|0.110|
|enabled?_TCC1|✅ proved - incomplete|shostak|0.110|
|enabled_within|✅ proved - incomplete|shostak|0.115|
|quorum_implies_majority|✅ proved - incomplete|shostak|0.203|
|majority|✅ proved - incomplete|shostak|0.224|
|enabled_within_quorum|✅ proved - incomplete|shostak|0.164|
|enabled_within_quorum_nada|✅ proved - incomplete|shostak|0.175|
|quorum_nonempty|✅ proved - incomplete|shostak|0.124|
|max_TCC1|✅ proved - incomplete|shostak|0.180|
|intersection_majority_nonempty|✅ proved - incomplete|shostak|0.145|
|byzantine_intersection_nonempty|✅ proved - incomplete|shostak|0.245|
|intersection_majority|✅ proved - incomplete|shostak|0.216|
|enabled_agree|✅ proved - incomplete|shostak|0.136|

## `pigeonhole`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|pigeonhole|✅ proved - complete|shostak|0.185|
|card_difference_alt|✅ proved - complete|shostak|0.215|
|pigeonhole_difference|✅ proved - complete|shostak|0.190|
|simple_majority_subset|✅ proved - complete|shostak|0.150|
|majority_subset_nonempty|✅ proved - complete|shostak|0.143|
|simple_majority_nonempty|✅ proved - complete|shostak|0.100|
|majority_nonempty|✅ proved - complete|shostak|0.135|
|majority_pigeonhole|✅ proved - complete|shostak|0.200|
|simple_majority_pigeonhole|✅ proved - complete|shostak|0.244|
|median_pigeonhole|✅ proved - complete|shostak|0.407|
|intersection_nonempty|✅ proved - complete|shostak|0.150|
|two_thirds_overlap_pigeonhole|✅ proved - complete|shostak|0.311|
|quorum?_TCC1|✅ proved - complete|shostak|0.120|
|M_TCC1|✅ proved - complete|shostak|0.100|
|M_TCC2|✅ proved - complete|shostak|0.174|
|nada_reduce|✅ proved - complete|shostak|0.110|
|mid_reduce|✅ proved - complete|shostak|0.167|
|byz_reduce|✅ proved - complete|shostak|0.160|

## `tau_declaration`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|nada_TCC1|✅ proved - complete|shostak|0.090|
|mid_TCC1|✅ proved - complete|shostak|0.166|
|byz_TCC1|✅ proved - complete|shostak|0.160|
|weber_TCC1|✅ proved - complete|shostak|0.185|

## `node_functions_stage`
No formula declaration found.
## `node`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|uniform_char|✅ proved - complete|shostak|0.110|
|enabled_symmetric_uniform|✅ proved - complete|shostak|0.116|
|m_TCC1|✅ proved - complete|shostak|0.170|
|vec2seq_TCC1|✅ proved - complete|shostak|0.107|
|vec2seq_agreement|✅ proved - complete|shostak|0.150|
|vec2seq_type|✅ proved - complete|shostak|0.116|

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
|protocol_rw|✅ proved - complete|shostak|0.110|

## `majority`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|consensus_validity|✅ proved - incomplete|shostak|0.501|
|agreement_generation|✅ proved - incomplete|shostak|0.433|
|faulty_source|✅ proved - incomplete|shostak|0.264|
|faulty_stage|✅ proved - incomplete|shostak|0.159|
|asymmetric_source|✅ proved - incomplete|shostak|0.313|

## `majority_stage`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|majority_at_destination|✅ proved - incomplete|shostak|0.157|
|majority_validity|✅ proved - incomplete|shostak|0.125|
|consensus_validity|✅ proved - incomplete|shostak|0.130|
|agreement_generation_alt|✅ proved - incomplete|shostak|0.156|
|agreement_generation|✅ proved - incomplete|shostak|0.121|
|faulty_source|✅ proved - incomplete|shostak|0.159|
|sources_disagree|✅ proved - incomplete|shostak|0.131|
|asymmetric_source|✅ proved - incomplete|shostak|0.140|

## `majority_properties`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|is_majority|✅ proved - incomplete|shostak|0.454|
|majority_value_subset|✅ proved - complete|shostak|0.160|
|uniform_majority|✅ proved - complete|shostak|0.203|
|majority_validity|✅ proved - incomplete|shostak|0.115|
|agreement_generation|✅ proved - incomplete|shostak|0.100|

## `finite_seqs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|choose_TCC1|✅ proved - complete|shostak|0.090|
|choose_in?|✅ proved - complete|shostak|0.115|
|choose_consensus|✅ proved - complete|shostak|0.100|
|maj_exists_same|✅ proved - incomplete|shostak|0.120|
|mf_lem|✅ proved - incomplete|shostak|0.114|
|majority_choose_consensus|✅ proved - incomplete|shostak|0.130|
|majority_choose2_TCC1|✅ proved - complete|shostak|0.105|
|majority_choose2_TCC2|✅ proved - complete|shostak|0.110|
|majority2_choose_majority|✅ proved - incomplete|shostak|0.195|
|uniform_TCC1|✅ proved - complete|shostak|0.120|
|uniform_TCC2|✅ proved - incomplete|shostak|0.113|
|majority_same|✅ proved - incomplete|shostak|0.150|

## `exact_reduce_integration`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|lower_validity|✅ proved - incomplete|shostak|0.396|
|upper_validity|✅ proved - incomplete|shostak|0.393|
|agreement_generation|✅ proved - incomplete|shostak|0.396|

## `ordered_message`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|valid_iff_ord1|✅ proved - complete|shostak|0.112|
|eq_iff|✅ proved - complete|shostak|0.130|
|message_total_order|✅ proved - complete|shostak|0.388|

## `exact_reduce`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|lower_validity|✅ proved - incomplete|shostak|0.679|
|upper_validity|✅ proved - incomplete|shostak|0.692|
|consensus_validity|✅ proved - incomplete|shostak|0.315|
|exact_agreement_propagation|✅ proved - incomplete|shostak|0.283|
|agreement_generation|✅ proved - incomplete|shostak|0.522|

## `k_ordered`
No formula declaration found.
## `reduce_choice`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|in_rcvd|✅ proved - incomplete|shostak|0.231|
|min_reduce_choice|✅ proved - incomplete|shostak|0.158|
|max_reduce_choice|✅ proved - incomplete|shostak|0.160|
|reduce_overlap?_TCC1|✅ proved - incomplete|shostak|0.143|
|reduce_overlap?_TCC2|✅ proved - incomplete|shostak|0.342|
|max_length_TCC1|✅ proved - incomplete|shostak|0.000|
|max_length_bound|✅ proved - incomplete|shostak|0.220|

## `reduce_properties`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|lowset_TCC1|✅ proved - incomplete|shostak|0.164|
|card_lower_leq_lowset_TCC1|✅ proved - complete|shostak|0.100|
|card_lower_leq_lowset|✅ proved - incomplete|shostak|0.224|
|card_lowset|✅ proved - incomplete|shostak|0.204|
|card_upper_leq_highset|✅ proved - incomplete|shostak|0.210|
|card_highset|✅ proved - incomplete|shostak|0.194|
|reduce_TCC1|✅ proved - complete|shostak|0.130|
|reduce_TCC2|✅ proved - complete|shostak|0.132|
|reduce_TCC3|✅ proved - incomplete|shostak|0.250|
|min_reduce_TCC1|✅ proved - complete|shostak|0.124|
|min_reduce_TCC2|✅ proved - incomplete|shostak|0.170|
|min_reduce|✅ proved - incomplete|shostak|0.205|
|max_reduce_TCC1|✅ proved - incomplete|shostak|0.224|
|max_reduce|✅ proved - incomplete|shostak|0.225|
|reduce_length|✅ proved - incomplete|shostak|0.334|
|reduce_rewrite_TCC1|✅ proved - incomplete|shostak|0.365|
|reduce_rewrite_TCC2|✅ proved - incomplete|shostak|0.255|
|reduce_rewrite|✅ proved - incomplete|shostak|0.296|
|reduce_overlap_TCC1|✅ proved - incomplete|shostak|0.459|
|reduce_overlap|✅ proved - incomplete|shostak|0.289|
|reduce_agreement|✅ proved - incomplete|shostak|0.140|
|min_validity|✅ proved - incomplete|shostak|0.225|
|max_validity|✅ proved - incomplete|shostak|0.235|
|choice_lower_validity|✅ proved - incomplete|shostak|0.194|
|choice_upper_validity|✅ proved - incomplete|shostak|0.185|
|choice_agreement_generation|✅ proved - incomplete|shostak|0.165|

## `ordered_finite_sequences`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|extract_one_TCC1|✅ proved - complete|shostak|0.225|
|extract_one_TCC2|✅ proved - complete|shostak|0.145|
|extract_one|✅ proved - complete|shostak|0.160|
|extract_upper_TCC1|✅ proved - complete|shostak|0.214|
|extract_upper|✅ proved - complete|shostak|0.190|
|min_extract_TCC1|✅ proved - incomplete|shostak|0.197|
|min_extract_TCC2|✅ proved - incomplete|shostak|0.131|
|min_extract|✅ proved - incomplete|shostak|0.345|
|max_extract_TCC1|✅ proved - incomplete|shostak|0.130|
|max_extract|✅ proved - incomplete|shostak|0.362|
|minmax_TCC1|✅ proved - incomplete|shostak|0.135|
|min_le_max|✅ proved - incomplete|shostak|0.150|
|min_minmax|✅ proved - incomplete|shostak|0.194|
|max_minmax|✅ proved - incomplete|shostak|0.215|
|min_in_consensus|✅ proved - incomplete|shostak|0.116|
|max_in_consensus|✅ proved - incomplete|shostak|0.110|
|in_consensus|✅ proved - incomplete|shostak|0.164|
|lower_TCC1|✅ proved - complete|shostak|0.110|
|lower_TCC2|✅ proved - incomplete|shostak|0.110|
|lower_TCC3|✅ proved - incomplete|shostak|0.134|
|upper_TCC1|✅ proved - incomplete|shostak|0.140|
|map_set_TCC1|✅ proved - complete|shostak|0.105|
|map_set_TCC2|✅ proved - incomplete|shostak|0.110|
|map_set_TCC3|✅ proved - incomplete|shostak|0.140|
|map_subset_lower_TCC1|✅ proved - incomplete|shostak|0.107|
|map_subset_lower|✅ proved - incomplete|shostak|0.204|
|map_subset_upper_TCC1|✅ proved - incomplete|shostak|0.110|
|map_subset_upper|✅ proved - incomplete|shostak|0.206|
|mapper_TCC1|✅ proved - incomplete|shostak|0.175|
|mapper_TCC2|✅ proved - incomplete|shostak|0.185|
|map_card_eq|✅ proved - incomplete|shostak|0.225|
|card_below_set_TCC1|✅ proved - incomplete|shostak|0.100|
|card_below_set|✅ proved - incomplete|shostak|0.365|
|card_above_set_TCC1|✅ proved - incomplete|shostak|0.110|
|card_above_set|✅ proved - incomplete|shostak|0.338|
|card_lower|✅ proved - incomplete|shostak|0.245|
|card_upper|✅ proved - incomplete|shostak|0.214|
|sort_overlap_TCC1|✅ proved - complete|shostak|0.126|
|sort_overlap_TCC2|✅ proved - incomplete|shostak|0.150|
|sort_overlap|✅ proved - incomplete|shostak|0.275|
|leq_validity|✅ proved - incomplete|shostak|0.126|

## `relations_extra`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|strict_order_is_asymmetric|✅ proved - complete|shostak|0.100|
|asymmetric_is_antisymmetric|✅ proved - complete|shostak|0.106|
|asymmetric_is_irreflexive|✅ proved - complete|shostak|0.100|
|reflexive|✅ proved - complete|shostak|0.090|
|irreflexive|✅ proved - complete|shostak|0.100|
|symmetric|✅ proved - complete|shostak|0.106|
|antisymmetric|✅ proved - complete|shostak|0.090|
|asymmetric|✅ proved - complete|shostak|0.100|
|transitive|✅ proved - complete|shostak|0.100|
|dichotomous|✅ proved - complete|shostak|0.097|
|trichotomous|✅ proved - complete|shostak|0.100|
|dichotomous_is_trichotomous|✅ proved - complete|shostak|0.110|
|well_founded|✅ proved - complete|shostak|0.100|
|reflexive_closure_TCC1|✅ proved - complete|shostak|0.096|
|irreflexive_kernel_TCC1|✅ proved - complete|shostak|0.100|
|symmetric_closure_TCC1|✅ proved - complete|shostak|0.130|
|symmetric_kernel_TCC1|✅ proved - complete|shostak|0.114|
|reflexive_closure_preserves_transitive|✅ proved - complete|shostak|0.100|
|strict_order_to_partial_order|✅ proved - complete|shostak|0.116|
|reflexive_closure_dichotomous|✅ proved - complete|shostak|0.120|
|strict_total_order_to_total_order|✅ proved - complete|shostak|0.110|
|partial_order_to_strict_order|✅ proved - complete|shostak|0.127|
|irreflexive_kernel_trichotomous|✅ proved - complete|shostak|0.130|
|total_order_to_strict_total_order|✅ proved - complete|shostak|0.118|
|symmetric_kernel_of_preorder|✅ proved - complete|shostak|0.146|

## `select_minmax`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|v_min_TCC1|✅ proved - complete|shostak|0.110|
|v_min_witness|✅ proved - incomplete|shostak|0.125|
|v_max_witness|✅ proved - incomplete|shostak|0.130|
|v_min_is_min|✅ proved - incomplete|shostak|0.116|
|v_max_is_max|✅ proved - incomplete|shostak|0.130|
|min_le_max|✅ proved - incomplete|shostak|0.116|
|min_le_max_alt|✅ proved - incomplete|shostak|0.110|
|v_minmax_choose|✅ proved - incomplete|shostak|0.144|
|v_minmax_choose_alt|✅ proved - incomplete|shostak|0.154|

## `exact_reduce_stage`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|reduce_lower_validity|✅ proved - incomplete|shostak|0.225|
|reduce_upper_validity|✅ proved - incomplete|shostak|0.215|
|reduce_agreement_generation|✅ proved - incomplete|shostak|0.219|
|reduce_min_validity|✅ proved - incomplete|shostak|0.220|
|reduce_max_validity|✅ proved - incomplete|shostak|0.195|
|reduce_consensus|✅ proved - incomplete|shostak|0.271|
|reduce_min_eq_max|✅ proved - incomplete|shostak|0.150|

## `reduce_synch`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Delay_TCC1|✅ proved - complete|shostak|0.166|
|Del_TCC1|✅ proved - complete|shostak|0.160|
|Del_Delay|✅ proved - complete|shostak|0.105|
|Lag_TCC1|✅ proved - complete|shostak|0.160|
|Delay_Lag|✅ proved - complete|shostak|0.100|
|offset_sent_nominal|✅ proved - incomplete|shostak|0.185|
|synch_protocol_sent|✅ proved - incomplete|shostak|0.477|
|k_stage_synch|✅ proved - incomplete|shostak|0.706|
|lower_validity|✅ proved - incomplete|shostak|1.500|
|upper_validity|✅ proved - incomplete|shostak|1.495|
|agreement_propagation|✅ proved - incomplete|shostak|1.286|
|convergence|✅ proved - incomplete|shostak|2.582|
|agreement_generation|✅ proved - incomplete|shostak|1.091|
|agreement_generation_edge|✅ proved - incomplete|shostak|0.938|

## `timing_integration`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|enabled_within_timing|✅ proved - incomplete|shostak|0.201|

## `timing_integration_stage`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|t_min_TCC1|✅ proved - incomplete|shostak|0.148|
|uniformly_outer_exists|✅ proved - incomplete|shostak|0.253|
|symmetric_timing_uniform|✅ proved - incomplete|shostak|0.155|
|uniformly_outer_single_denotation|✅ proved - incomplete|shostak|0.131|
|good_send_TCC1|✅ proved - complete|shostak|0.160|
|osym_send_TCC1|✅ proved - incomplete|shostak|0.174|
|oasym_send_TCC1|✅ proved - incomplete|shostak|0.171|
|tsym_send_TCC1|✅ proved - incomplete|shostak|0.138|
|sv_send_TCC1|✅ proved - incomplete|shostak|0.164|
|tsym_single_denotation|✅ proved - incomplete|shostak|0.144|
|received_clock_edge|✅ proved - incomplete|shostak|0.110|
|enabled_within_stage|✅ proved - incomplete|shostak|0.133|
|correct_denotation_send|✅ proved - incomplete|shostak|0.185|
|conforming_correct_denotation_send|✅ proved - incomplete|shostak|0.164|
|single_denotation_send|✅ proved - incomplete|shostak|0.511|
|symmetric_send|✅ proved - incomplete|shostak|0.120|
|symmetric_timing_conforms|✅ proved - incomplete|shostak|0.360|
|correct_lower_timing|✅ proved - incomplete|shostak|0.124|
|correct_quorum_lower|✅ proved - incomplete|shostak|0.120|
|correct_majority_lower|✅ proved - incomplete|shostak|0.115|
|correct_upper_timing|✅ proved - incomplete|shostak|0.123|
|correct_majority_upper|✅ proved - incomplete|shostak|0.130|
|correct_quorum_upper|✅ proved - incomplete|shostak|0.105|
|correct_accuracy_timing|✅ proved - incomplete|shostak|0.130|
|correct_imprecision_timing|✅ proved - incomplete|shostak|0.408|
|quorum_imprecision|✅ proved - incomplete|shostak|0.125|
|majority_imprecision|✅ proved - incomplete|shostak|0.120|
|single_imprecision_timing|✅ proved - incomplete|shostak|0.238|
|uniformly_enabled|✅ proved - incomplete|shostak|0.154|
|symmetric_imprecision_timing|✅ proved - incomplete|shostak|0.184|
|all_symmetric_timing|✅ proved - incomplete|shostak|0.130|

## `timing_window`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|timing_conforms_def|✅ proved - incomplete|shostak|0.190|
|good_range_always_conforms|✅ proved - incomplete|shostak|0.527|
|good_range_inner_window|✅ proved - incomplete|shostak|0.111|

## `timing_imprecision`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|mid_latency_ge_one_half|✅ proved - complete|shostak|0.160|
|W_TCC1|✅ proved - complete|shostak|0.220|
|W_TCC2|✅ proved - complete|shostak|0.224|
|drift_relation_alt|✅ proved - complete|shostak|0.201|
|W_bound|✅ proved - complete|shostak|0.370|
|W_bound_alt|✅ proved - complete|shostak|0.180|
|epsilon_l_TCC1|✅ proved - complete|shostak|0.160|
|epsilon_u_TCC1|✅ proved - complete|shostak|0.165|
|max_error_TCC1|✅ proved - complete|shostak|0.403|
|epsilon_relation|✅ proved - complete|shostak|0.180|
|event_observation_error|✅ proved - incomplete|shostak|0.215|
|link_lower_range|✅ proved - incomplete|shostak|0.344|
|link_upper_range|✅ proved - incomplete|shostak|0.360|
|link_abs_bound|✅ proved - incomplete|shostak|0.204|
|link_relative_range|✅ proved - incomplete|shostak|0.265|
|link_relative_symmetry|✅ proved - incomplete|shostak|0.245|
|good_range_bounded|✅ proved - complete|shostak|0.150|
|link_symmetry|✅ proved - incomplete|shostak|0.216|

## `inverse_clocks`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|lower_Clocktime_exists|✅ proved - complete|shostak|0.230|
|upper_Clocktime_exists|✅ proved - complete|shostak|0.205|
|past_ticks_max_set|✅ proved - incomplete|shostak|0.135|
|Clock_rewrite|✅ proved - incomplete|shostak|0.131|
|Clock_lower|✅ proved - incomplete|shostak|0.100|
|Clock_upper|✅ proved - incomplete|shostak|0.150|
|Clock_nondecreasing|✅ proved - incomplete|shostak|0.180|
|alt_clock_edge|✅ proved - incomplete|shostak|0.104|
|conversion_left|✅ proved - incomplete|shostak|0.120|
|conversion_left_alt|✅ proved - incomplete|shostak|0.163|
|conversion_right|✅ proved - incomplete|shostak|0.150|
|obs_bound|✅ proved - incomplete|shostak|0.185|
|precision_conversion_sym|✅ proved - incomplete|shostak|0.520|
|precision_conversion|✅ proved - incomplete|shostak|0.395|
|lower_accuracy_conversion|✅ proved - incomplete|shostak|0.350|
|upper_accuracy_conversion|✅ proved - incomplete|shostak|0.255|

## `physical_clocks`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|drift_TCC1|✅ proved - complete|shostak|0.246|
|drift_def|✅ proved - complete|shostak|0.175|
|drift_bound|✅ proved - complete|shostak|0.766|
|good_clock_TCC1|✅ proved - complete|shostak|0.178|
|drift_left_nat|✅ proved - complete|shostak|0.295|
|drift_right_nat|✅ proved - complete|shostak|0.345|
|drift_left|✅ proved - complete|shostak|0.311|
|drift_right|✅ proved - complete|shostak|0.310|
|abs_drift_lb|✅ proved - complete|shostak|0.220|
|clock_nondecreasing|✅ proved - complete|shostak|0.148|
|clock_increasing|✅ proved - complete|shostak|0.166|
|clock_nondecreasing_alt|✅ proved - complete|shostak|0.110|
|clock_eq_arg|✅ proved - complete|shostak|0.096|
|relative_drift|✅ proved - complete|shostak|0.250|
|nonoverlap_basis|✅ proved - complete|shostak|0.234|
|skew_basis_0|✅ proved - complete|shostak|0.231|
|skew_bound_1|✅ proved - complete|shostak|0.382|
|skew_bound_2|✅ proved - complete|shostak|0.382|
|skew_bound|✅ proved - complete|shostak|0.291|
|lower_offset|✅ proved - complete|shostak|0.296|
|upper_offset|✅ proved - complete|shostak|0.305|

## `abs_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|abs_max|✅ proved - complete|shostak|0.106|
|abs_add|✅ proved - complete|shostak|0.180|
|abs_le_nonneg|✅ proved - complete|shostak|0.130|
|abs_diff_commutes|✅ proved - complete|shostak|0.116|

## `minmax_ineq`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|min_le|✅ proved - complete|shostak|0.110|
|min_lt|✅ proved - complete|shostak|0.116|
|min_ge|✅ proved - complete|shostak|0.110|
|min_gt|✅ proved - complete|shostak|0.110|
|le_min|✅ proved - complete|shostak|0.117|
|lt_min|✅ proved - complete|shostak|0.110|
|ge_min|✅ proved - complete|shostak|0.116|
|gt_min|✅ proved - complete|shostak|0.110|
|max_le|✅ proved - complete|shostak|0.100|
|max_lt|✅ proved - complete|shostak|0.106|
|max_ge|✅ proved - complete|shostak|0.110|
|max_gt|✅ proved - complete|shostak|0.100|
|le_max|✅ proved - complete|shostak|0.115|
|lt_max|✅ proved - complete|shostak|0.110|
|ge_max|✅ proved - complete|shostak|0.100|
|gt_max|✅ proved - complete|shostak|0.105|
|max_triangle|✅ proved - complete|shostak|0.150|
|min_commutative|✅ proved - complete|shostak|0.100|
|max_commutative|✅ proved - complete|shostak|0.097|

## `floor_ceiling_ineq`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|ge_floor_l|✅ proved - complete|shostak|0.140|
|ge_floor_r|✅ proved - complete|shostak|0.140|
|gt_floor_l|✅ proved - complete|shostak|0.146|
|gt_floor_r|✅ proved - complete|shostak|0.130|
|le_floor_l|✅ proved - complete|shostak|0.150|
|le_floor_r|✅ proved - complete|shostak|0.137|
|lt_floor_l|✅ proved - complete|shostak|0.130|
|lt_floor_r|✅ proved - complete|shostak|0.150|
|floor_monotone|✅ proved - complete|shostak|0.107|
|ge_ceiling_l|✅ proved - complete|shostak|0.130|
|ge_ceiling_r|✅ proved - complete|shostak|0.120|
|gt_ceiling_l|✅ proved - complete|shostak|0.136|
|gt_ceiling_r|✅ proved - complete|shostak|0.120|
|le_ceiling_l|✅ proved - complete|shostak|0.130|
|le_ceiling_r|✅ proved - complete|shostak|0.133|
|lt_ceiling_l|✅ proved - complete|shostak|0.140|
|lt_ceiling_r|✅ proved - complete|shostak|0.130|
|ceiling_monotone|✅ proved - complete|shostak|0.110|

## `bounded_ints`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sup_int_int|✅ proved - incomplete|shostak|0.137|
|sup_int_in_set|✅ proved - incomplete|shostak|0.155|
|sup_int_is_in_set|✅ proved - incomplete|shostak|0.110|

## `inexact_comm_stage`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|majority_lower_rw|✅ proved - incomplete|shostak|0.110|
|majority_upper_rw|✅ proved - incomplete|shostak|0.116|
|quorum_accuracy|✅ proved - incomplete|shostak|0.120|
|majority_accuracy|✅ proved - incomplete|shostak|0.106|
|majority_accuracy_rw|✅ proved - incomplete|shostak|0.110|
|quorum_imprecision_nonempty|✅ proved - incomplete|shostak|0.109|
|majority_imprecision_rw|✅ proved - incomplete|shostak|0.120|
|correct_imprecision|✅ proved - incomplete|shostak|0.250|
|rcvd_diameter|✅ proved - incomplete|shostak|0.436|

## `real_finite_sequences`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|diameter?_TCC1|✅ proved - incomplete|shostak|0.160|
|agreement_propagation|✅ proved - incomplete|shostak|0.162|
|similar?_TCC1|✅ proved - complete|shostak|0.120|
|similar_sort_TCC1|✅ proved - incomplete|shostak|0.130|
|similar_sort_TCC2|✅ proved - incomplete|shostak|0.130|
|similar_sort|✅ proved - incomplete|shostak|0.180|
|sum_TCC1|✅ proved - complete|shostak|0.102|
|sum_TCC2|✅ proved - complete|shostak|0.100|
|sum_TCC3|✅ proved - complete|shostak|0.120|
|sum_lower|✅ proved - incomplete|shostak|0.835|
|sum_upper|✅ proved - incomplete|shostak|0.780|
|mean_TCC1|✅ proved - complete|shostak|0.090|
|min_le_mean|✅ proved - incomplete|shostak|0.283|
|mean_le_max|✅ proved - incomplete|shostak|0.285|
|midpoint_def|✅ proved - incomplete|shostak|0.322|
|mean_lower|✅ proved - incomplete|shostak|0.503|
|mean_upper|✅ proved - incomplete|shostak|0.521|
|mean_consensus|✅ proved - incomplete|shostak|0.130|
|midpoint_consensus|✅ proved - incomplete|shostak|0.228|
|inexact_min|✅ proved - incomplete|shostak|0.181|
|inexact_max|✅ proved - incomplete|shostak|0.215|
|inexact_choose|✅ proved - incomplete|shostak|0.140|
|inexact_mean|✅ proved - incomplete|shostak|1.969|
|inexact_midpoint|✅ proved - incomplete|shostak|0.312|
|mean_convergence|✅ proved - incomplete|shostak|0.483|
|midpoint_convergence|✅ proved - incomplete|shostak|0.365|
|convergent_mean|✅ proved - incomplete|shostak|0.663|
|convergent_midpoint|✅ proved - incomplete|shostak|0.000|

## `inexact_comm`
No formula declaration found.
## `reduce_synch_stage`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|synch_stage_offset|✅ proved - incomplete|shostak|0.225|
|lower_synch_validity|✅ proved - incomplete|shostak|0.843|
|upper_synch_validity|✅ proved - incomplete|shostak|0.527|
|synch_master_slave|✅ proved - incomplete|shostak|0.620|
|synch_agreement_propagation|✅ proved - incomplete|shostak|1.501|
|overlap_imprecision|✅ proved - incomplete|shostak|0.120|
|synch_convergence|✅ proved - incomplete|shostak|1.065|
|synch_agreement_generation|✅ proved - incomplete|shostak|0.568|
|synch_agreement_generation_edge|✅ proved - incomplete|shostak|0.606|

## `clock_shift`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|offset_left_edge|✅ proved - incomplete|shostak|0.157|
|offset_left|✅ proved - incomplete|shostak|0.254|
|offset_right_edge|✅ proved - incomplete|shostak|0.170|
|offset_right|✅ proved - incomplete|shostak|0.180|
|offset_zero|✅ proved - incomplete|shostak|0.112|
|offset_drift|✅ proved - incomplete|shostak|0.340|
|offset_nondecreasing|✅ proved - incomplete|shostak|0.145|
|offset_drift_edge|✅ proved - incomplete|shostak|0.205|
|double_offset|✅ proved - incomplete|shostak|0.175|
|offset_same|✅ proved - incomplete|shostak|0.409|
|offset_same2|✅ proved - incomplete|shostak|0.105|

## `inexact_reduce_stage`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|reduce_lower_validity|✅ proved - incomplete|shostak|0.265|
|reduce_upper_validity|✅ proved - incomplete|shostak|0.234|
|reduce_master_slave|✅ proved - incomplete|shostak|0.299|
|reduce_agreement_propagation|✅ proved - incomplete|shostak|0.451|
|convergence_overlap|✅ proved - incomplete|shostak|0.338|
|reduce_convergence|✅ proved - incomplete|shostak|0.547|
|reduce_agreement_generation|✅ proved - incomplete|shostak|0.421|
|reduce_min_validity|✅ proved - incomplete|shostak|0.241|
|reduce_max_validity|✅ proved - incomplete|shostak|0.212|
|minmax_diameter|✅ proved - incomplete|shostak|0.180|
|agreement_propagation|✅ proved - incomplete|shostak|0.260|
|agreement_generation|✅ proved - incomplete|shostak|0.184|
|convergence|✅ proved - incomplete|shostak|0.275|

## `inexact_reduce`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|lower_validity_TCC1|✅ proved - incomplete|shostak|0.391|
|lower_validity|✅ proved - incomplete|shostak|0.894|
|upper_validity_TCC1|✅ proved - incomplete|shostak|0.395|
|upper_validity|✅ proved - incomplete|shostak|0.949|
|agreement_propagation_TCC1|✅ proved - incomplete|shostak|0.571|
|agreement_propagation|✅ proved - incomplete|shostak|0.994|
|convergence|✅ proved - incomplete|shostak|1.745|
|agreement_generation_TCC1|✅ proved - incomplete|shostak|0.588|
|agreement_generation|✅ proved - incomplete|shostak|0.754|

## `convergence_top`
No formula declaration found.
## `median_stage`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|one_asymmetric_overlap|✅ proved - incomplete|shostak|0.288|
|median_convergence|✅ proved - incomplete|shostak|0.239|

## `median_overlap`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|median_overlap|✅ proved - incomplete|shostak|0.476|

## `middle_third_stage`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|byzantine_overlap|✅ proved - incomplete|shostak|0.304|
|middle_third_convergence|✅ proved - incomplete|shostak|0.214|
|mean_convergence|✅ proved - incomplete|shostak|0.206|
|midpoint_convergence|✅ proved - incomplete|shostak|0.224|

## `middle_third_overlap`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|middle_third_overlap|✅ proved - incomplete|shostak|0.509|

## `middle_third_pigeonhole`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|middle_third_pigeonhole|✅ proved - complete|shostak|0.594|

## `pigeonhole_int`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|disjoint1|✅ proved - complete|shostak|0.113|
|disjoint2|✅ proved - complete|shostak|0.110|
|complement_complement|✅ proved - complete|shostak|0.094|
|mirror_TCC1|✅ proved - complete|shostak|0.090|
|mirror_mirror|✅ proved - complete|shostak|0.130|
|card_mirror|✅ proved - complete|shostak|0.124|
|subset_mirror|✅ proved - complete|shostak|0.090|
|mirror_nat|✅ proved - complete|shostak|0.134|
|mirror_negint|✅ proved - complete|shostak|0.120|
|subset_split|✅ proved - complete|shostak|0.133|
|card_split|✅ proved - complete|shostak|0.258|
|two_thirds_split|✅ proved - complete|shostak|0.175|
|two_thirds_overlap_lem|✅ proved - complete|shostak|0.135|
|fta_overlap_pigeonhole|✅ proved - complete|shostak|0.554|

## `weber_stage`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|overlap_imprecision|✅ proved - incomplete|shostak|0.299|
|weber_convergence|✅ proved - incomplete|shostak|0.205|
|weber_mean_convergence|✅ proved - incomplete|shostak|0.217|
|weber_midpoint_convergence|✅ proved - incomplete|shostak|0.230|

## `weber_overlap`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|weber_overlap|✅ proved - incomplete|shostak|0.790|

## `virtual_clock_top`
No formula declaration found.
## `virtual_clock_1`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|turns_TCC1|✅ proved - complete|shostak|0.373|
|turns_increasing|✅ proved - complete|shostak|0.544|
|turns_unbounded|✅ proved - complete|shostak|0.401|
|turns_event_sequence|✅ proved - complete|shostak|0.095|
|turns_nonoverlap|✅ proved - complete|shostak|0.559|
|turns_early|✅ proved - complete|shostak|0.498|
|turns_self|✅ proved - complete|shostak|0.164|
|turns_cross|✅ proved - complete|shostak|0.649|
|VC1_j_TCC1|✅ proved - complete|shostak|0.095|
|VC1_j|✅ proved - incomplete|shostak|0.110|
|VC1_precision_TCC1|✅ proved - incomplete|shostak|0.126|
|VC1_precision_TCC2|✅ proved - incomplete|shostak|0.120|
|VC1_precision|✅ proved - incomplete|shostak|0.732|
|VC1_accuracy_lower_TCC1|✅ proved - incomplete|shostak|0.115|
|VC1_accuracy_lower|✅ proved - incomplete|shostak|1.167|
|VC1_optimal_accuracy_lower|✅ proved - incomplete|shostak|0.810|
|VC1_accuracy_upper|✅ proved - incomplete|shostak|0.940|
|VC1_optimal_accuracy_upper|✅ proved - incomplete|shostak|0.639|

## `synch_protocol_invariants`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|all_periodic_precision_iff_peer_precision|✅ proved - incomplete|shostak|0.100|
|all_periodic_precision|✅ proved - incomplete|shostak|0.161|
|minmax_adjustment_lower_bound|✅ proved - incomplete|shostak|0.170|
|minmax_adjustment_upper_bound|✅ proved - incomplete|shostak|0.173|
|min_le_trace|✅ proved - incomplete|shostak|0.104|
|trace_le_max|✅ proved - incomplete|shostak|0.110|
|trace_diff|✅ proved - incomplete|shostak|0.134|
|traces_peer_precision|✅ proved - incomplete|shostak|0.164|
|traces_lower|✅ proved - incomplete|shostak|0.205|
|traces_upper|✅ proved - incomplete|shostak|0.214|
|traces_compatible|✅ proved - incomplete|shostak|0.430|
|trace_lower_accuracy|✅ proved - incomplete|shostak|0.194|
|trace_upper_accuracy|✅ proved - incomplete|shostak|0.195|
|trace_weakly_accurate|✅ proved - incomplete|shostak|0.184|

## `synch_constant_definitions`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|P_bound|✅ proved - complete|shostak|0.375|
|rho_bound|✅ proved - complete|shostak|4.111|
|ADJ_ineq|✅ proved - complete|shostak|0.255|
|ADJ_ineq_l|✅ proved - complete|shostak|0.613|
|ADJ_ineq_h|✅ proved - complete|shostak|0.599|
|ADJ_bound|✅ proved - complete|shostak|0.251|
|P_min_TCC1|✅ proved - complete|shostak|0.100|
|p_min_bound|✅ proved - complete|shostak|0.262|
|p_lower_TCC1|✅ proved - complete|shostak|0.331|
|p_min_TCC1|✅ proved - complete|shostak|0.352|
|p_min_lower|✅ proved - complete|shostak|0.094|
|p_max_upper|✅ proved - complete|shostak|0.090|
|drift_P_bound|✅ proved - complete|shostak|0.430|
|Pi_TCC1|✅ proved - complete|shostak|0.336|

## `synch_parameter_constraints`
No formula declaration found.
## `clock_minmax`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|clock_min_witness|✅ proved - incomplete|shostak|0.130|
|clock_max_witness|✅ proved - incomplete|shostak|0.125|
|clock_min_is_min|✅ proved - incomplete|shostak|0.130|
|clock_max_is_max|✅ proved - incomplete|shostak|0.126|
|clock_min_clock|✅ proved - incomplete|shostak|0.205|
|clock_max_clock|✅ proved - incomplete|shostak|0.186|

## `function_image_nonempty`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|nonempty_image|✅ proved - complete|shostak|0.110|
|nonempty_finite_image|✅ proved - complete|shostak|0.090|

## `interval_clocks`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|T_def|✅ proved - complete|shostak|0.165|
|T_rounds|✅ proved - complete|shostak|0.180|
|handover_precision_lower|✅ proved - complete|shostak|0.346|
|handover_precision_upper|✅ proved - complete|shostak|0.360|
|handover_precision|✅ proved - complete|shostak|0.434|
|nonoverlap_peers|✅ proved - complete|shostak|0.256|
|nonoverlap_lower|✅ proved - complete|shostak|0.451|
|nonoverlap_upper|✅ proved - complete|shostak|0.465|
|nonoverlap_round|✅ proved - complete|shostak|0.541|
|lower_interval_accuracy|✅ proved - complete|shostak|0.285|
|upper_interval_accuracy|✅ proved - complete|shostak|0.291|

## `virtual_clocks`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|VC_j|✅ proved - incomplete|shostak|0.090|
|observable_peers|✅ proved - complete|shostak|0.305|
|observable_master|✅ proved - complete|shostak|0.210|
|observable_slave|✅ proved - complete|shostak|0.214|
|adjustment_nonoverlap|✅ proved - complete|shostak|0.260|
|VC_precision_0|✅ proved - incomplete|shostak|0.511|
|VC_precision_1|✅ proved - incomplete|shostak|0.662|
|VC_precision_sym|✅ proved - incomplete|shostak|0.422|
|VC_precision|✅ proved - incomplete|shostak|0.174|
|index_upper_bound|✅ proved - complete|shostak|0.336|
|VC_lower_accuracy|✅ proved - incomplete|shostak|0.000|
|VC_upper_accuracy|✅ proved - incomplete|shostak|1.004|

## `event_sequences`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|increasing_ind|✅ proved - complete|shostak|0.192|
|nondecreasing|✅ proved - complete|shostak|0.143|
|future_events_nonempty|✅ proved - complete|shostak|0.130|
|index_le|✅ proved - complete|shostak|0.143|
|lt_index|✅ proved - complete|shostak|0.120|
|index_le_alt|✅ proved - complete|shostak|0.142|
|index_rewrite|✅ proved - complete|shostak|0.150|
|index_conversion_left|✅ proved - complete|shostak|0.130|
|index_conversion_right|✅ proved - complete|shostak|0.150|
|index_ordered|✅ proved - complete|shostak|0.106|
|cross_nondecreasing|✅ proved - complete|shostak|0.140|
|nonoverlap_index_bound|✅ proved - complete|shostak|0.195|

## `virtual_clock_2`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|t_increasing|✅ proved - complete|shostak|0.140|
|t_unbounded|✅ proved - complete|shostak|0.380|
|t_event_sequence|✅ proved - complete|shostak|0.096|
|t_nonoverlap|✅ proved - complete|shostak|0.315|
|t_early|✅ proved - complete|shostak|0.100|
|t_self|✅ proved - complete|shostak|0.410|
|t_cross|✅ proved - complete|shostak|0.501|
|VC_j|✅ proved - incomplete|shostak|0.115|
|VC2_precision_TCC1|✅ proved - incomplete|shostak|0.130|
|VC2_precision_TCC2|✅ proved - incomplete|shostak|0.116|
|VC2_precision|✅ proved - incomplete|shostak|0.705|
|VC2_accuracy_lower_TCC1|✅ proved - incomplete|shostak|0.110|
|VC2_accuracy_lower|✅ proved - incomplete|shostak|0.862|
|VC2_optimal_accuracy_lower|✅ proved - incomplete|shostak|0.496|
|VC2_accuracy_upper|✅ proved - incomplete|shostak|0.670|
|VC2_optimal_accuracy_upper|✅ proved - incomplete|shostak|0.415|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib//float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-pvsio-fix.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210219-extratregies.lisp`|
