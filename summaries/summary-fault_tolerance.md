# Summary for `fault_tolerance`
Run started at 19:43:55 11/24/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **595**   | **595**    | **595**    | **0**  | **1:48.708 s**   |
|top|0|0|0|0|0.000|
|core_top|0|0|0|0|0.000|
|majority_integration|2|2|2|0|0.524|
|protocol_integration|0|0|0|0|0.000|
|comm_integration|3|3|3|0|0.362|
|comm_integration_stage|15|15|15|0|1.448|
|integration_fault_model|1|1|1|0|0.090|
|finite_sets_below_extra|2|2|2|0|0.136|
|exact_comm_stage|3|3|3|0|0.270|
|fault_assumptions_stage|13|13|13|0|1.435|
|pigeonhole|18|18|18|0|2.216|
|tau_declaration|4|4|4|0|0.420|
|node_functions_stage|0|0|0|0|0.000|
|node|6|6|6|0|0.509|
|local|0|0|0|0|0.000|
|exact_comm|1|1|1|0|0.116|
|node_functions|0|0|0|0|0.000|
|protocol|1|1|1|0|0.080|
|majority|5|5|5|0|1.197|
|majority_stage|8|8|8|0|0.734|
|majority_properties|5|5|5|0|0.714|
|finite_seqs|12|12|12|0|0.969|
|exact_reduce_integration|3|3|3|0|0.799|
|ordered_message|3|3|3|0|0.415|
|exact_reduce|5|5|5|0|1.513|
|k_ordered|0|0|0|0|0.000|
|reduce_choice|7|7|7|0|0.951|
|reduce_properties|26|26|26|0|3.814|
|ordered_finite_sequences|41|41|41|0|4.971|
|relations_extra|25|25|25|0|1.859|
|select_minmax|9|9|9|0|0.790|
|exact_reduce_stage|7|7|7|0|1.086|
|reduce_synch|14|14|14|0|8.044|
|timing_integration|1|1|1|0|0.147|
|timing_integration_stage|31|31|31|0|3.797|
|timing_window|3|3|3|0|0.562|
|timing_imprecision|18|18|18|0|2.992|
|inverse_clocks|16|16|16|0|2.402|
|physical_clocks|21|21|21|0|4.119|
|abs_props|4|4|4|0|0.364|
|minmax_ineq|19|19|19|0|1.455|
|floor_ceiling_ineq|18|18|18|0|1.719|
|bounded_ints|3|3|3|0|0.277|
|inexact_comm_stage|9|9|9|0|1.011|
|real_finite_sequences|28|28|28|0|6.618|
|inexact_comm|0|0|0|0|0.000|
|reduce_synch_stage|9|9|9|0|4.406|
|clock_shift|11|11|11|0|1.648|
|inexact_reduce_stage|13|13|13|0|2.644|
|inexact_reduce|9|9|9|0|5.103|
|convergence_top|0|0|0|0|0.000|
|median_stage|2|2|2|0|0.366|
|median_overlap|1|1|1|0|0.324|
|middle_third_stage|14|14|14|0|2.861|
|middle_third_overlap|1|1|1|0|0.364|
|middle_third_pigeonhole|1|1|1|0|0.428|
|pigeonhole_int|14|14|14|0|1.632|
|weber_stage|4|4|4|0|0.713|
|weber_overlap|1|1|1|0|0.547|
|virtual_clock_top|0|0|0|0|0.000|
|virtual_clock_1|18|18|18|0|6.024|
|synch_protocol_invariants|14|14|14|0|1.764|
|synch_constant_definitions|14|14|14|0|6.025|
|synch_parameter_constraints|0|0|0|0|0.000|
|clock_minmax|6|6|6|0|0.654|
|function_image_nonempty|2|2|2|0|0.135|
|interval_clocks|11|11|11|0|2.730|
|virtual_clocks|12|12|12|0|4.139|
|event_sequences|12|12|12|0|1.240|
|virtual_clock_2|16|16|16|0|4.036|
## Detailed Summary 
## `top`
No formula declaration found.
## `core_top`
No formula declaration found.
## `majority_integration`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|consensus_validity|✅ proved - incomplete|shostak|0.278|
|agreement_generation|✅ proved - incomplete|shostak|0.246|

## `protocol_integration`
No formula declaration found.
## `comm_integration`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|quorum_correct_integration|✅ proved - incomplete|shostak|0.122|
|majority_correct_rw|✅ proved - incomplete|shostak|0.120|
|all_symmetric_integration|✅ proved - incomplete|shostak|0.120|

## `comm_integration_stage`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|msg_checker_TCC1|✅ proved - complete|shostak|0.064|
|osym_rcvd_TCC1|✅ proved - complete|shostak|0.070|
|oasym_rcvd_TCC1|✅ proved - complete|shostak|0.070|
|sv_rcvd_TCC1|✅ proved - complete|shostak|0.070|
|correct_denotation_send|✅ proved - complete|shostak|0.105|
|conforms_type|✅ proved - complete|shostak|0.080|
|scheduled_conform|✅ proved - incomplete|shostak|0.085|
|exact_correct_denotation|✅ proved - incomplete|shostak|0.080|
|quorum_correct_integration|✅ proved - incomplete|shostak|0.075|
|majority_correct_rw|✅ proved - incomplete|shostak|0.070|
|exact_single_denotation|✅ proved - incomplete|shostak|0.183|
|uniformly_enabled|✅ proved - incomplete|shostak|0.172|
|exact_symmetric_single|✅ proved - incomplete|shostak|0.152|
|all_symmetric_integration|✅ proved - incomplete|shostak|0.082|
|good_conforms|✅ proved - incomplete|shostak|0.090|

## `integration_fault_model`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|symmetric_single_denotation|✅ proved - complete|shostak|0.090|

## `finite_sets_below_extra`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|below_is_finite_type|✅ proved - complete|shostak|0.076|
|set_below_is_finite|✅ proved - incomplete|shostak|0.060|

## `exact_comm_stage`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|correct_uniform|✅ proved - incomplete|shostak|0.095|
|correct_uniform_alt|✅ proved - incomplete|shostak|0.100|
|majority_correct_rw|✅ proved - incomplete|shostak|0.075|

## `fault_assumptions_stage`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|enabled_TCC1|✅ proved - incomplete|shostak|0.070|
|enabled?_TCC1|✅ proved - incomplete|shostak|0.070|
|enabled_within|✅ proved - incomplete|shostak|0.076|
|quorum_implies_majority|✅ proved - incomplete|shostak|0.135|
|majority|✅ proved - incomplete|shostak|0.154|
|enabled_within_quorum|✅ proved - incomplete|shostak|0.105|
|enabled_within_quorum_nada|✅ proved - incomplete|shostak|0.126|
|quorum_nonempty|✅ proved - incomplete|shostak|0.085|
|max_TCC1|✅ proved - incomplete|shostak|0.120|
|intersection_majority_nonempty|✅ proved - incomplete|shostak|0.085|
|byzantine_intersection_nonempty|✅ proved - incomplete|shostak|0.176|
|intersection_majority|✅ proved - incomplete|shostak|0.146|
|enabled_agree|✅ proved - incomplete|shostak|0.087|

## `pigeonhole`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|pigeonhole|✅ proved - complete|shostak|0.126|
|card_difference_alt|✅ proved - complete|shostak|0.145|
|pigeonhole_difference|✅ proved - complete|shostak|0.131|
|simple_majority_subset|✅ proved - complete|shostak|0.100|
|majority_subset_nonempty|✅ proved - complete|shostak|0.095|
|simple_majority_nonempty|✅ proved - complete|shostak|0.070|
|majority_nonempty|✅ proved - complete|shostak|0.094|
|majority_pigeonhole|✅ proved - complete|shostak|0.130|
|simple_majority_pigeonhole|✅ proved - complete|shostak|0.175|
|median_pigeonhole|✅ proved - complete|shostak|0.271|
|intersection_nonempty|✅ proved - complete|shostak|0.102|
|two_thirds_overlap_pigeonhole|✅ proved - complete|shostak|0.212|
|quorum?_TCC1|✅ proved - complete|shostak|0.071|
|M_TCC1|✅ proved - complete|shostak|0.070|
|M_TCC2|✅ proved - complete|shostak|0.120|
|nada_reduce|✅ proved - complete|shostak|0.090|
|mid_reduce|✅ proved - complete|shostak|0.114|
|byz_reduce|✅ proved - complete|shostak|0.100|

## `tau_declaration`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|nada_TCC1|✅ proved - complete|shostak|0.070|
|mid_TCC1|✅ proved - complete|shostak|0.104|
|byz_TCC1|✅ proved - complete|shostak|0.110|
|weber_TCC1|✅ proved - complete|shostak|0.136|

## `node_functions_stage`
No formula declaration found.
## `node`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|uniform_char|✅ proved - complete|shostak|0.070|
|enabled_symmetric_uniform|✅ proved - complete|shostak|0.076|
|m_TCC1|✅ proved - complete|shostak|0.110|
|vec2seq_TCC1|✅ proved - complete|shostak|0.077|
|vec2seq_agreement|✅ proved - complete|shostak|0.100|
|vec2seq_type|✅ proved - complete|shostak|0.076|

## `local`
No formula declaration found.
## `exact_comm`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|majority_correct_rw|✅ proved - incomplete|shostak|0.116|

## `node_functions`
No formula declaration found.
## `protocol`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|protocol_rw|✅ proved - complete|shostak|0.080|

## `majority`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|consensus_validity|✅ proved - incomplete|shostak|0.364|
|agreement_generation|✅ proved - incomplete|shostak|0.306|
|faulty_source|✅ proved - incomplete|shostak|0.184|
|faulty_stage|✅ proved - incomplete|shostak|0.132|
|asymmetric_source|✅ proved - incomplete|shostak|0.211|

## `majority_stage`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|majority_at_destination|✅ proved - incomplete|shostak|0.105|
|majority_validity|✅ proved - incomplete|shostak|0.085|
|consensus_validity|✅ proved - incomplete|shostak|0.080|
|agreement_generation_alt|✅ proved - incomplete|shostak|0.106|
|agreement_generation|✅ proved - incomplete|shostak|0.083|
|faulty_source|✅ proved - incomplete|shostak|0.102|
|sources_disagree|✅ proved - incomplete|shostak|0.083|
|asymmetric_source|✅ proved - incomplete|shostak|0.090|

## `majority_properties`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|is_majority|✅ proved - incomplete|shostak|0.324|
|majority_value_subset|✅ proved - complete|shostak|0.110|
|uniform_majority|✅ proved - complete|shostak|0.135|
|majority_validity|✅ proved - incomplete|shostak|0.075|
|agreement_generation|✅ proved - incomplete|shostak|0.070|

## `finite_seqs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|choose_TCC1|✅ proved - complete|shostak|0.070|
|choose_in?|✅ proved - complete|shostak|0.076|
|choose_consensus|✅ proved - complete|shostak|0.070|
|maj_exists_same|✅ proved - incomplete|shostak|0.070|
|mf_lem|✅ proved - incomplete|shostak|0.076|
|majority_choose_consensus|✅ proved - incomplete|shostak|0.080|
|majority_choose2_TCC1|✅ proved - complete|shostak|0.076|
|majority_choose2_TCC2|✅ proved - complete|shostak|0.070|
|majority2_choose_majority|✅ proved - incomplete|shostak|0.124|
|uniform_TCC1|✅ proved - complete|shostak|0.070|
|uniform_TCC2|✅ proved - incomplete|shostak|0.080|
|majority_same|✅ proved - incomplete|shostak|0.107|

## `exact_reduce_integration`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|lower_validity|✅ proved - incomplete|shostak|0.268|
|upper_validity|✅ proved - incomplete|shostak|0.263|
|agreement_generation|✅ proved - incomplete|shostak|0.268|

## `ordered_message`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|valid_iff_ord1|✅ proved - complete|shostak|0.080|
|eq_iff|✅ proved - complete|shostak|0.085|
|message_total_order|✅ proved - complete|shostak|0.250|

## `exact_reduce`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|lower_validity|✅ proved - incomplete|shostak|0.471|
|upper_validity|✅ proved - incomplete|shostak|0.476|
|consensus_validity|✅ proved - incomplete|shostak|0.000|
|exact_agreement_propagation|✅ proved - incomplete|shostak|0.201|
|agreement_generation|✅ proved - incomplete|shostak|0.365|

## `k_ordered`
No formula declaration found.
## `reduce_choice`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|in_rcvd|✅ proved - incomplete|shostak|0.158|
|min_reduce_choice|✅ proved - incomplete|shostak|0.100|
|max_reduce_choice|✅ proved - incomplete|shostak|0.105|
|reduce_overlap?_TCC1|✅ proved - incomplete|shostak|0.105|
|reduce_overlap?_TCC2|✅ proved - incomplete|shostak|0.233|
|max_length_TCC1|✅ proved - incomplete|shostak|0.095|
|max_length_bound|✅ proved - incomplete|shostak|0.155|

## `reduce_properties`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|lowset_TCC1|✅ proved - incomplete|shostak|0.100|
|card_lower_leq_lowset_TCC1|✅ proved - complete|shostak|0.070|
|card_lower_leq_lowset|✅ proved - incomplete|shostak|0.145|
|card_lowset|✅ proved - incomplete|shostak|0.134|
|card_upper_leq_highset|✅ proved - incomplete|shostak|0.144|
|card_highset|✅ proved - incomplete|shostak|0.130|
|reduce_TCC1|✅ proved - complete|shostak|0.074|
|reduce_TCC2|✅ proved - complete|shostak|0.080|
|reduce_TCC3|✅ proved - incomplete|shostak|0.163|
|min_reduce_TCC1|✅ proved - complete|shostak|0.080|
|min_reduce_TCC2|✅ proved - incomplete|shostak|0.115|
|min_reduce|✅ proved - incomplete|shostak|0.154|
|max_reduce_TCC1|✅ proved - incomplete|shostak|0.144|
|max_reduce|✅ proved - incomplete|shostak|0.145|
|reduce_length|✅ proved - incomplete|shostak|0.205|
|reduce_rewrite_TCC1|✅ proved - incomplete|shostak|0.254|
|reduce_rewrite_TCC2|✅ proved - incomplete|shostak|0.195|
|reduce_rewrite|✅ proved - incomplete|shostak|0.205|
|reduce_overlap_TCC1|✅ proved - incomplete|shostak|0.300|
|reduce_overlap|✅ proved - incomplete|shostak|0.206|
|reduce_agreement|✅ proved - incomplete|shostak|0.095|
|min_validity|✅ proved - incomplete|shostak|0.155|
|max_validity|✅ proved - incomplete|shostak|0.156|
|choice_lower_validity|✅ proved - incomplete|shostak|0.125|
|choice_upper_validity|✅ proved - incomplete|shostak|0.135|
|choice_agreement_generation|✅ proved - incomplete|shostak|0.105|

## `ordered_finite_sequences`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|extract_one_TCC1|✅ proved - complete|shostak|0.146|
|extract_one_TCC2|✅ proved - complete|shostak|0.100|
|extract_one|✅ proved - complete|shostak|0.116|
|extract_upper_TCC1|✅ proved - complete|shostak|0.135|
|extract_upper|✅ proved - complete|shostak|0.130|
|min_extract_TCC1|✅ proved - incomplete|shostak|0.134|
|min_extract_TCC2|✅ proved - incomplete|shostak|0.090|
|min_extract|✅ proved - incomplete|shostak|0.231|
|max_extract_TCC1|✅ proved - incomplete|shostak|0.080|
|max_extract|✅ proved - incomplete|shostak|0.242|
|minmax_TCC1|✅ proved - incomplete|shostak|0.100|
|min_le_max|✅ proved - incomplete|shostak|0.097|
|min_minmax|✅ proved - incomplete|shostak|0.125|
|max_minmax|✅ proved - incomplete|shostak|0.155|
|min_in_consensus|✅ proved - incomplete|shostak|0.075|
|max_in_consensus|✅ proved - incomplete|shostak|0.080|
|in_consensus|✅ proved - incomplete|shostak|0.125|
|lower_TCC1|✅ proved - complete|shostak|0.070|
|lower_TCC2|✅ proved - incomplete|shostak|0.070|
|lower_TCC3|✅ proved - incomplete|shostak|0.105|
|upper_TCC1|✅ proved - incomplete|shostak|0.090|
|map_set_TCC1|✅ proved - complete|shostak|0.085|
|map_set_TCC2|✅ proved - incomplete|shostak|0.080|
|map_set_TCC3|✅ proved - incomplete|shostak|0.090|
|map_subset_lower_TCC1|✅ proved - incomplete|shostak|0.067|
|map_subset_lower|✅ proved - incomplete|shostak|0.145|
|map_subset_upper_TCC1|✅ proved - incomplete|shostak|0.070|
|map_subset_upper|✅ proved - incomplete|shostak|0.147|
|mapper_TCC1|✅ proved - incomplete|shostak|0.115|
|mapper_TCC2|✅ proved - incomplete|shostak|0.126|
|map_card_eq|✅ proved - incomplete|shostak|0.155|
|card_below_set_TCC1|✅ proved - incomplete|shostak|0.070|
|card_below_set|✅ proved - incomplete|shostak|0.266|
|card_above_set_TCC1|✅ proved - incomplete|shostak|0.070|
|card_above_set|✅ proved - incomplete|shostak|0.231|
|card_lower|✅ proved - incomplete|shostak|0.165|
|card_upper|✅ proved - incomplete|shostak|0.145|
|sort_overlap_TCC1|✅ proved - complete|shostak|0.076|
|sort_overlap_TCC2|✅ proved - incomplete|shostak|0.110|
|sort_overlap|✅ proved - incomplete|shostak|0.186|
|leq_validity|✅ proved - incomplete|shostak|0.076|

## `relations_extra`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|strict_order_is_asymmetric|✅ proved - complete|shostak|0.070|
|asymmetric_is_antisymmetric|✅ proved - complete|shostak|0.076|
|asymmetric_is_irreflexive|✅ proved - complete|shostak|0.070|
|reflexive|✅ proved - complete|shostak|0.070|
|irreflexive|✅ proved - complete|shostak|0.070|
|symmetric|✅ proved - complete|shostak|0.067|
|antisymmetric|✅ proved - complete|shostak|0.070|
|asymmetric|✅ proved - complete|shostak|0.060|
|transitive|✅ proved - complete|shostak|0.060|
|dichotomous|✅ proved - complete|shostak|0.077|
|trichotomous|✅ proved - complete|shostak|0.070|
|dichotomous_is_trichotomous|✅ proved - complete|shostak|0.070|
|well_founded|✅ proved - complete|shostak|0.070|
|reflexive_closure_TCC1|✅ proved - complete|shostak|0.076|
|irreflexive_kernel_TCC1|✅ proved - complete|shostak|0.070|
|symmetric_closure_TCC1|✅ proved - complete|shostak|0.080|
|symmetric_kernel_TCC1|✅ proved - complete|shostak|0.075|
|reflexive_closure_preserves_transitive|✅ proved - complete|shostak|0.080|
|strict_order_to_partial_order|✅ proved - complete|shostak|0.077|
|reflexive_closure_dichotomous|✅ proved - complete|shostak|0.070|
|strict_total_order_to_total_order|✅ proved - complete|shostak|0.080|
|partial_order_to_strict_order|✅ proved - complete|shostak|0.087|
|irreflexive_kernel_trichotomous|✅ proved - complete|shostak|0.080|
|total_order_to_strict_total_order|✅ proved - complete|shostak|0.088|
|symmetric_kernel_of_preorder|✅ proved - complete|shostak|0.096|

## `select_minmax`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|v_min_TCC1|✅ proved - complete|shostak|0.080|
|v_min_witness|✅ proved - incomplete|shostak|0.086|
|v_max_witness|✅ proved - incomplete|shostak|0.080|
|v_min_is_min|✅ proved - incomplete|shostak|0.086|
|v_max_is_max|✅ proved - incomplete|shostak|0.080|
|min_le_max|✅ proved - incomplete|shostak|0.090|
|min_le_max_alt|✅ proved - incomplete|shostak|0.078|
|v_minmax_choose|✅ proved - incomplete|shostak|0.095|
|v_minmax_choose_alt|✅ proved - incomplete|shostak|0.115|

## `exact_reduce_stage`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|reduce_lower_validity|✅ proved - incomplete|shostak|0.156|
|reduce_upper_validity|✅ proved - incomplete|shostak|0.155|
|reduce_agreement_generation|✅ proved - incomplete|shostak|0.145|
|reduce_min_validity|✅ proved - incomplete|shostak|0.176|
|reduce_max_validity|✅ proved - incomplete|shostak|0.135|
|reduce_consensus|✅ proved - incomplete|shostak|0.193|
|reduce_min_eq_max|✅ proved - incomplete|shostak|0.126|

## `reduce_synch`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Delay_TCC1|✅ proved - complete|shostak|0.120|
|Del_TCC1|✅ proved - complete|shostak|0.115|
|Del_Delay|✅ proved - complete|shostak|0.070|
|Lag_TCC1|✅ proved - complete|shostak|0.106|
|Delay_Lag|✅ proved - complete|shostak|0.060|
|offset_sent_nominal|✅ proved - incomplete|shostak|0.150|
|synch_protocol_sent|✅ proved - incomplete|shostak|0.521|
|k_stage_synch|✅ proved - incomplete|shostak|0.490|
|lower_validity|✅ proved - incomplete|shostak|1.087|
|upper_validity|✅ proved - incomplete|shostak|1.108|
|agreement_propagation|✅ proved - incomplete|shostak|0.911|
|convergence|✅ proved - incomplete|shostak|1.826|
|agreement_generation|✅ proved - incomplete|shostak|0.804|
|agreement_generation_edge|✅ proved - incomplete|shostak|0.676|

## `timing_integration`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|enabled_within_timing|✅ proved - incomplete|shostak|0.147|

## `timing_integration_stage`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|t_min_TCC1|✅ proved - incomplete|shostak|0.093|
|uniformly_outer_exists|✅ proved - incomplete|shostak|0.174|
|symmetric_timing_uniform|✅ proved - incomplete|shostak|0.102|
|uniformly_outer_single_denotation|✅ proved - incomplete|shostak|0.087|
|good_send_TCC1|✅ proved - complete|shostak|0.110|
|osym_send_TCC1|✅ proved - incomplete|shostak|0.130|
|oasym_send_TCC1|✅ proved - incomplete|shostak|0.119|
|tsym_send_TCC1|✅ proved - incomplete|shostak|0.095|
|sv_send_TCC1|✅ proved - incomplete|shostak|0.105|
|tsym_single_denotation|✅ proved - incomplete|shostak|0.105|
|received_clock_edge|✅ proved - incomplete|shostak|0.070|
|enabled_within_stage|✅ proved - incomplete|shostak|0.096|
|correct_denotation_send|✅ proved - incomplete|shostak|0.125|
|conforming_correct_denotation_send|✅ proved - incomplete|shostak|0.107|
|single_denotation_send|✅ proved - incomplete|shostak|0.368|
|symmetric_send|✅ proved - incomplete|shostak|0.080|
|symmetric_timing_conforms|✅ proved - incomplete|shostak|0.262|
|correct_lower_timing|✅ proved - incomplete|shostak|0.093|
|correct_quorum_lower|✅ proved - incomplete|shostak|0.085|
|correct_majority_lower|✅ proved - incomplete|shostak|0.080|
|correct_upper_timing|✅ proved - incomplete|shostak|0.095|
|correct_majority_upper|✅ proved - incomplete|shostak|0.085|
|correct_quorum_upper|✅ proved - incomplete|shostak|0.080|
|correct_accuracy_timing|✅ proved - incomplete|shostak|0.086|
|correct_imprecision_timing|✅ proved - incomplete|shostak|0.289|
|quorum_imprecision|✅ proved - incomplete|shostak|0.100|
|majority_imprecision|✅ proved - incomplete|shostak|0.096|
|single_imprecision_timing|✅ proved - incomplete|shostak|0.170|
|uniformly_enabled|✅ proved - incomplete|shostak|0.105|
|symmetric_imprecision_timing|✅ proved - incomplete|shostak|0.115|
|all_symmetric_timing|✅ proved - incomplete|shostak|0.090|

## `timing_window`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|timing_conforms_def|✅ proved - incomplete|shostak|0.130|
|good_range_always_conforms|✅ proved - incomplete|shostak|0.349|
|good_range_inner_window|✅ proved - incomplete|shostak|0.083|

## `timing_imprecision`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|mid_latency_ge_one_half|✅ proved - complete|shostak|0.130|
|W_TCC1|✅ proved - complete|shostak|0.154|
|W_TCC2|✅ proved - complete|shostak|0.150|
|drift_relation_alt|✅ proved - complete|shostak|0.158|
|W_bound|✅ proved - complete|shostak|0.265|
|W_bound_alt|✅ proved - complete|shostak|0.110|
|epsilon_l_TCC1|✅ proved - complete|shostak|0.117|
|epsilon_u_TCC1|✅ proved - complete|shostak|0.120|
|max_error_TCC1|✅ proved - complete|shostak|0.256|
|epsilon_relation|✅ proved - complete|shostak|0.136|
|event_observation_error|✅ proved - incomplete|shostak|0.145|
|link_lower_range|✅ proved - incomplete|shostak|0.235|
|link_upper_range|✅ proved - incomplete|shostak|0.265|
|link_abs_bound|✅ proved - incomplete|shostak|0.146|
|link_relative_range|✅ proved - incomplete|shostak|0.176|
|link_relative_symmetry|✅ proved - incomplete|shostak|0.177|
|good_range_bounded|✅ proved - complete|shostak|0.096|
|link_symmetry|✅ proved - incomplete|shostak|0.156|

## `inverse_clocks`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|lower_Clocktime_exists|✅ proved - complete|shostak|0.165|
|upper_Clocktime_exists|✅ proved - complete|shostak|0.142|
|past_ticks_max_set|✅ proved - incomplete|shostak|0.084|
|Clock_rewrite|✅ proved - incomplete|shostak|0.094|
|Clock_lower|✅ proved - incomplete|shostak|0.070|
|Clock_upper|✅ proved - incomplete|shostak|0.113|
|Clock_nondecreasing|✅ proved - incomplete|shostak|0.120|
|alt_clock_edge|✅ proved - incomplete|shostak|0.073|
|conversion_left|✅ proved - incomplete|shostak|0.080|
|conversion_left_alt|✅ proved - incomplete|shostak|0.116|
|conversion_right|✅ proved - incomplete|shostak|0.120|
|obs_bound|✅ proved - incomplete|shostak|0.126|
|precision_conversion_sym|✅ proved - incomplete|shostak|0.352|
|precision_conversion|✅ proved - incomplete|shostak|0.280|
|lower_accuracy_conversion|✅ proved - incomplete|shostak|0.275|
|upper_accuracy_conversion|✅ proved - incomplete|shostak|0.192|

## `physical_clocks`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|drift_TCC1|✅ proved - complete|shostak|0.175|
|drift_def|✅ proved - complete|shostak|0.130|
|drift_bound|✅ proved - complete|shostak|0.563|
|good_clock_TCC1|✅ proved - complete|shostak|0.127|
|drift_left_nat|✅ proved - complete|shostak|0.206|
|drift_right_nat|✅ proved - complete|shostak|0.246|
|drift_left|✅ proved - complete|shostak|0.206|
|drift_right|✅ proved - complete|shostak|0.222|
|abs_drift_lb|✅ proved - complete|shostak|0.136|
|clock_nondecreasing|✅ proved - complete|shostak|0.100|
|clock_increasing|✅ proved - complete|shostak|0.107|
|clock_nondecreasing_alt|✅ proved - complete|shostak|0.070|
|clock_eq_arg|✅ proved - complete|shostak|0.066|
|relative_drift|✅ proved - complete|shostak|0.177|
|nonoverlap_basis|✅ proved - complete|shostak|0.166|
|skew_basis_0|✅ proved - complete|shostak|0.173|
|skew_bound_1|✅ proved - complete|shostak|0.293|
|skew_bound_2|✅ proved - complete|shostak|0.282|
|skew_bound|✅ proved - complete|shostak|0.212|
|lower_offset|✅ proved - complete|shostak|0.236|
|upper_offset|✅ proved - complete|shostak|0.226|

## `abs_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|abs_max|✅ proved - complete|shostak|0.077|
|abs_add|✅ proved - complete|shostak|0.130|
|abs_le_nonneg|✅ proved - complete|shostak|0.077|
|abs_diff_commutes|✅ proved - complete|shostak|0.080|

## `minmax_ineq`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|min_le|✅ proved - complete|shostak|0.076|
|min_lt|✅ proved - complete|shostak|0.080|
|min_ge|✅ proved - complete|shostak|0.080|
|min_gt|✅ proved - complete|shostak|0.076|
|le_min|✅ proved - complete|shostak|0.080|
|lt_min|✅ proved - complete|shostak|0.086|
|ge_min|✅ proved - complete|shostak|0.070|
|gt_min|✅ proved - complete|shostak|0.070|
|max_le|✅ proved - complete|shostak|0.078|
|max_lt|✅ proved - complete|shostak|0.070|
|max_ge|✅ proved - complete|shostak|0.080|
|max_gt|✅ proved - complete|shostak|0.076|
|le_max|✅ proved - complete|shostak|0.070|
|lt_max|✅ proved - complete|shostak|0.070|
|ge_max|✅ proved - complete|shostak|0.067|
|gt_max|✅ proved - complete|shostak|0.080|
|max_triangle|✅ proved - complete|shostak|0.096|
|min_commutative|✅ proved - complete|shostak|0.070|
|max_commutative|✅ proved - complete|shostak|0.080|

## `floor_ceiling_ineq`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|ge_floor_l|✅ proved - complete|shostak|0.100|
|ge_floor_r|✅ proved - complete|shostak|0.117|
|gt_floor_l|✅ proved - complete|shostak|0.100|
|gt_floor_r|✅ proved - complete|shostak|0.100|
|le_floor_l|✅ proved - complete|shostak|0.107|
|le_floor_r|✅ proved - complete|shostak|0.110|
|lt_floor_l|✅ proved - complete|shostak|0.107|
|lt_floor_r|✅ proved - complete|shostak|0.110|
|floor_monotone|✅ proved - complete|shostak|0.070|
|ge_ceiling_l|✅ proved - complete|shostak|0.090|
|ge_ceiling_r|✅ proved - complete|shostak|0.097|
|gt_ceiling_l|✅ proved - complete|shostak|0.080|
|gt_ceiling_r|✅ proved - complete|shostak|0.090|
|le_ceiling_l|✅ proved - complete|shostak|0.085|
|le_ceiling_r|✅ proved - complete|shostak|0.110|
|lt_ceiling_l|✅ proved - complete|shostak|0.090|
|lt_ceiling_r|✅ proved - complete|shostak|0.086|
|ceiling_monotone|✅ proved - complete|shostak|0.070|

## `bounded_ints`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sup_int_int|✅ proved - incomplete|shostak|0.110|
|sup_int_in_set|✅ proved - incomplete|shostak|0.097|
|sup_int_is_in_set|✅ proved - incomplete|shostak|0.070|

## `inexact_comm_stage`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|majority_lower_rw|✅ proved - incomplete|shostak|0.067|
|majority_upper_rw|✅ proved - incomplete|shostak|0.080|
|quorum_accuracy|✅ proved - incomplete|shostak|0.076|
|majority_accuracy|✅ proved - incomplete|shostak|0.070|
|majority_accuracy_rw|✅ proved - incomplete|shostak|0.076|
|quorum_imprecision_nonempty|✅ proved - incomplete|shostak|0.080|
|majority_imprecision_rw|✅ proved - incomplete|shostak|0.086|
|correct_imprecision|✅ proved - incomplete|shostak|0.166|
|rcvd_diameter|✅ proved - incomplete|shostak|0.310|

## `real_finite_sequences`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|diameter?_TCC1|✅ proved - incomplete|shostak|0.106|
|agreement_propagation|✅ proved - incomplete|shostak|0.110|
|similar?_TCC1|✅ proved - complete|shostak|0.076|
|similar_sort_TCC1|✅ proved - incomplete|shostak|0.094|
|similar_sort_TCC2|✅ proved - incomplete|shostak|0.090|
|similar_sort|✅ proved - incomplete|shostak|0.154|
|sum_TCC1|✅ proved - complete|shostak|0.070|
|sum_TCC2|✅ proved - complete|shostak|0.074|
|sum_TCC3|✅ proved - complete|shostak|0.080|
|sum_lower|✅ proved - incomplete|shostak|0.599|
|sum_upper|✅ proved - incomplete|shostak|0.549|
|mean_TCC1|✅ proved - complete|shostak|0.063|
|min_le_mean|✅ proved - incomplete|shostak|0.193|
|mean_le_max|✅ proved - incomplete|shostak|0.195|
|midpoint_def|✅ proved - incomplete|shostak|0.000|
|mean_lower|✅ proved - incomplete|shostak|0.359|
|mean_upper|✅ proved - incomplete|shostak|0.383|
|mean_consensus|✅ proved - incomplete|shostak|0.093|
|midpoint_consensus|✅ proved - incomplete|shostak|0.150|
|inexact_min|✅ proved - incomplete|shostak|0.123|
|inexact_max|✅ proved - incomplete|shostak|0.136|
|inexact_choose|✅ proved - incomplete|shostak|0.096|
|inexact_mean|✅ proved - incomplete|shostak|1.377|
|inexact_midpoint|✅ proved - incomplete|shostak|0.228|
|mean_convergence|✅ proved - incomplete|shostak|0.347|
|midpoint_convergence|✅ proved - incomplete|shostak|0.243|
|convergent_mean|✅ proved - incomplete|shostak|0.479|
|convergent_midpoint|✅ proved - incomplete|shostak|0.151|

## `inexact_comm`
No formula declaration found.
## `reduce_synch_stage`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|synch_stage_offset|✅ proved - incomplete|shostak|0.151|
|lower_synch_validity|✅ proved - incomplete|shostak|0.605|
|upper_synch_validity|✅ proved - incomplete|shostak|0.390|
|synch_master_slave|✅ proved - incomplete|shostak|0.428|
|synch_agreement_propagation|✅ proved - incomplete|shostak|1.094|
|overlap_imprecision|✅ proved - incomplete|shostak|0.093|
|synch_convergence|✅ proved - incomplete|shostak|0.790|
|synch_agreement_generation|✅ proved - incomplete|shostak|0.404|
|synch_agreement_generation_edge|✅ proved - incomplete|shostak|0.451|

## `clock_shift`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|offset_left_edge|✅ proved - incomplete|shostak|0.132|
|offset_left|✅ proved - incomplete|shostak|0.194|
|offset_right_edge|✅ proved - incomplete|shostak|0.123|
|offset_right|✅ proved - incomplete|shostak|0.120|
|offset_zero|✅ proved - incomplete|shostak|0.084|
|offset_drift|✅ proved - incomplete|shostak|0.253|
|offset_nondecreasing|✅ proved - incomplete|shostak|0.106|
|offset_drift_edge|✅ proved - incomplete|shostak|0.135|
|double_offset|✅ proved - incomplete|shostak|0.126|
|offset_same|✅ proved - incomplete|shostak|0.295|
|offset_same2|✅ proved - incomplete|shostak|0.080|

## `inexact_reduce_stage`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|reduce_lower_validity|✅ proved - incomplete|shostak|0.170|
|reduce_upper_validity|✅ proved - incomplete|shostak|0.164|
|reduce_master_slave|✅ proved - incomplete|shostak|0.209|
|reduce_agreement_propagation|✅ proved - incomplete|shostak|0.302|
|convergence_overlap|✅ proved - incomplete|shostak|0.232|
|reduce_convergence|✅ proved - incomplete|shostak|0.365|
|reduce_agreement_generation|✅ proved - incomplete|shostak|0.283|
|reduce_min_validity|✅ proved - incomplete|shostak|0.157|
|reduce_max_validity|✅ proved - incomplete|shostak|0.144|
|minmax_diameter|✅ proved - incomplete|shostak|0.126|
|agreement_propagation|✅ proved - incomplete|shostak|0.180|
|agreement_generation|✅ proved - incomplete|shostak|0.120|
|convergence|✅ proved - incomplete|shostak|0.192|

## `inexact_reduce`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|lower_validity_TCC1|✅ proved - incomplete|shostak|0.253|
|lower_validity|✅ proved - incomplete|shostak|0.635|
|upper_validity_TCC1|✅ proved - incomplete|shostak|0.259|
|upper_validity|✅ proved - incomplete|shostak|0.670|
|agreement_propagation_TCC1|✅ proved - incomplete|shostak|0.388|
|agreement_propagation|✅ proved - incomplete|shostak|0.699|
|convergence|✅ proved - incomplete|shostak|1.268|
|agreement_generation_TCC1|✅ proved - incomplete|shostak|0.400|
|agreement_generation|✅ proved - incomplete|shostak|0.531|

## `convergence_top`
No formula declaration found.
## `median_stage`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|one_asymmetric_overlap|✅ proved - incomplete|shostak|0.191|
|median_convergence|✅ proved - incomplete|shostak|0.175|

## `median_overlap`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|median_overlap|✅ proved - incomplete|shostak|0.324|

## `middle_third_stage`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|byzantine_overlap|✅ proved - incomplete|shostak|0.204|
|middle_third_convergence|✅ proved - incomplete|shostak|0.150|
|reduce_convergence2|✅ proved - incomplete|shostak|0.380|
|convergence2|✅ proved - incomplete|shostak|0.201|
|middle_third_convergence_2|✅ proved - incomplete|shostak|0.160|
|mean_convergence_midpoint|✅ proved - incomplete|shostak|0.260|
|mean_convergence_midpoint_0|✅ proved - incomplete|shostak|0.000|
|midpoint_convergence_mean|✅ proved - incomplete|shostak|0.254|
|convergent_mean_midpoint|✅ proved - incomplete|shostak|0.334|
|convergent_midpoint_mean|✅ proved - incomplete|shostak|0.335|
|middle_third_convergence_mean_midpoint|✅ proved - incomplete|shostak|0.130|
|middle_third_convergence_midpoint_mean|✅ proved - incomplete|shostak|0.144|
|mean_convergence|✅ proved - incomplete|shostak|0.154|
|midpoint_convergence|✅ proved - incomplete|shostak|0.155|

## `middle_third_overlap`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|middle_third_overlap|✅ proved - incomplete|shostak|0.364|

## `middle_third_pigeonhole`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|middle_third_pigeonhole|✅ proved - complete|shostak|0.428|

## `pigeonhole_int`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|disjoint1|✅ proved - complete|shostak|0.080|
|disjoint2|✅ proved - complete|shostak|0.082|
|complement_complement|✅ proved - complete|shostak|0.060|
|mirror_TCC1|✅ proved - complete|shostak|0.070|
|mirror_mirror|✅ proved - complete|shostak|0.089|
|card_mirror|✅ proved - complete|shostak|0.090|
|subset_mirror|✅ proved - complete|shostak|0.063|
|mirror_nat|✅ proved - complete|shostak|0.100|
|mirror_negint|✅ proved - complete|shostak|0.084|
|subset_split|✅ proved - complete|shostak|0.105|
|card_split|✅ proved - complete|shostak|0.191|
|two_thirds_split|✅ proved - complete|shostak|0.120|
|two_thirds_overlap_lem|✅ proved - complete|shostak|0.097|
|fta_overlap_pigeonhole|✅ proved - complete|shostak|0.401|

## `weber_stage`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|overlap_imprecision|✅ proved - incomplete|shostak|0.201|
|weber_convergence|✅ proved - incomplete|shostak|0.178|
|weber_mean_convergence|✅ proved - incomplete|shostak|0.160|
|weber_midpoint_convergence|✅ proved - incomplete|shostak|0.174|

## `weber_overlap`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|weber_overlap|✅ proved - incomplete|shostak|0.547|

## `virtual_clock_top`
No formula declaration found.
## `virtual_clock_1`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|turns_TCC1|✅ proved - complete|shostak|0.276|
|turns_increasing|✅ proved - complete|shostak|0.412|
|turns_unbounded|✅ proved - complete|shostak|0.287|
|turns_event_sequence|✅ proved - complete|shostak|0.065|
|turns_nonoverlap|✅ proved - complete|shostak|0.400|
|turns_early|✅ proved - complete|shostak|0.370|
|turns_self|✅ proved - complete|shostak|0.115|
|turns_cross|✅ proved - complete|shostak|0.474|
|VC1_j_TCC1|✅ proved - complete|shostak|0.080|
|VC1_j|✅ proved - incomplete|shostak|0.080|
|VC1_precision_TCC1|✅ proved - incomplete|shostak|0.096|
|VC1_precision_TCC2|✅ proved - incomplete|shostak|0.090|
|VC1_precision|✅ proved - incomplete|shostak|0.519|
|VC1_accuracy_lower_TCC1|✅ proved - incomplete|shostak|0.070|
|VC1_accuracy_lower|✅ proved - incomplete|shostak|0.932|
|VC1_optimal_accuracy_lower|✅ proved - incomplete|shostak|0.614|
|VC1_accuracy_upper|✅ proved - incomplete|shostak|0.705|
|VC1_optimal_accuracy_upper|✅ proved - incomplete|shostak|0.439|

## `synch_protocol_invariants`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|all_periodic_precision_iff_peer_precision|✅ proved - incomplete|shostak|0.070|
|all_periodic_precision|✅ proved - incomplete|shostak|0.114|
|minmax_adjustment_lower_bound|✅ proved - incomplete|shostak|0.115|
|minmax_adjustment_upper_bound|✅ proved - incomplete|shostak|0.124|
|min_le_trace|✅ proved - incomplete|shostak|0.070|
|trace_le_max|✅ proved - incomplete|shostak|0.075|
|trace_diff|✅ proved - incomplete|shostak|0.080|
|traces_peer_precision|✅ proved - incomplete|shostak|0.106|
|traces_lower|✅ proved - incomplete|shostak|0.135|
|traces_upper|✅ proved - incomplete|shostak|0.156|
|traces_compatible|✅ proved - incomplete|shostak|0.298|
|trace_lower_accuracy|✅ proved - incomplete|shostak|0.135|
|trace_upper_accuracy|✅ proved - incomplete|shostak|0.146|
|trace_weakly_accurate|✅ proved - incomplete|shostak|0.140|

## `synch_constant_definitions`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|P_bound|✅ proved - complete|shostak|0.266|
|rho_bound|✅ proved - complete|shostak|3.018|
|ADJ_ineq|✅ proved - complete|shostak|0.187|
|ADJ_ineq_l|✅ proved - complete|shostak|0.447|
|ADJ_ineq_h|✅ proved - complete|shostak|0.432|
|ADJ_bound|✅ proved - complete|shostak|0.184|
|P_min_TCC1|✅ proved - complete|shostak|0.080|
|p_min_bound|✅ proved - complete|shostak|0.176|
|p_lower_TCC1|✅ proved - complete|shostak|0.253|
|p_min_TCC1|✅ proved - complete|shostak|0.284|
|p_min_lower|✅ proved - complete|shostak|0.078|
|p_max_upper|✅ proved - complete|shostak|0.070|
|drift_P_bound|✅ proved - complete|shostak|0.324|
|Pi_TCC1|✅ proved - complete|shostak|0.226|

## `synch_parameter_constraints`
No formula declaration found.
## `clock_minmax`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|clock_min_witness|✅ proved - incomplete|shostak|0.090|
|clock_max_witness|✅ proved - incomplete|shostak|0.106|
|clock_min_is_min|✅ proved - incomplete|shostak|0.090|
|clock_max_is_max|✅ proved - incomplete|shostak|0.077|
|clock_min_clock|✅ proved - incomplete|shostak|0.145|
|clock_max_clock|✅ proved - incomplete|shostak|0.146|

## `function_image_nonempty`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|nonempty_image|✅ proved - complete|shostak|0.070|
|nonempty_finite_image|✅ proved - complete|shostak|0.065|

## `interval_clocks`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|T_def|✅ proved - complete|shostak|0.120|
|T_rounds|✅ proved - complete|shostak|0.120|
|handover_precision_lower|✅ proved - complete|shostak|0.242|
|handover_precision_upper|✅ proved - complete|shostak|0.246|
|handover_precision|✅ proved - complete|shostak|0.315|
|nonoverlap_peers|✅ proved - complete|shostak|0.177|
|nonoverlap_lower|✅ proved - complete|shostak|0.332|
|nonoverlap_upper|✅ proved - complete|shostak|0.346|
|nonoverlap_round|✅ proved - complete|shostak|0.414|
|lower_interval_accuracy|✅ proved - complete|shostak|0.202|
|upper_interval_accuracy|✅ proved - complete|shostak|0.216|

## `virtual_clocks`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|VC_j|✅ proved - incomplete|shostak|0.080|
|observable_peers|✅ proved - complete|shostak|0.202|
|observable_master|✅ proved - complete|shostak|0.156|
|observable_slave|✅ proved - complete|shostak|0.164|
|adjustment_nonoverlap|✅ proved - complete|shostak|0.184|
|VC_precision_0|✅ proved - incomplete|shostak|0.341|
|VC_precision_1|✅ proved - incomplete|shostak|0.513|
|VC_precision_sym|✅ proved - incomplete|shostak|0.312|
|VC_precision|✅ proved - incomplete|shostak|0.120|
|index_upper_bound|✅ proved - complete|shostak|0.236|
|VC_lower_accuracy|✅ proved - incomplete|shostak|1.124|
|VC_upper_accuracy|✅ proved - incomplete|shostak|0.707|

## `event_sequences`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|increasing_ind|✅ proved - complete|shostak|0.135|
|nondecreasing|✅ proved - complete|shostak|0.110|
|future_events_nonempty|✅ proved - complete|shostak|0.095|
|index_le|✅ proved - complete|shostak|0.100|
|lt_index|✅ proved - complete|shostak|0.085|
|index_le_alt|✅ proved - complete|shostak|0.110|
|index_rewrite|✅ proved - complete|shostak|0.093|
|index_conversion_left|✅ proved - complete|shostak|0.100|
|index_conversion_right|✅ proved - complete|shostak|0.106|
|index_ordered|✅ proved - complete|shostak|0.080|
|cross_nondecreasing|✅ proved - complete|shostak|0.086|
|nonoverlap_index_bound|✅ proved - complete|shostak|0.140|

## `virtual_clock_2`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|t_increasing|✅ proved - complete|shostak|0.097|
|t_unbounded|✅ proved - complete|shostak|0.281|
|t_event_sequence|✅ proved - complete|shostak|0.070|
|t_nonoverlap|✅ proved - complete|shostak|0.216|
|t_early|✅ proved - complete|shostak|0.076|
|t_self|✅ proved - complete|shostak|0.292|
|t_cross|✅ proved - complete|shostak|0.350|
|VC_j|✅ proved - incomplete|shostak|0.070|
|VC2_precision_TCC1|✅ proved - incomplete|shostak|0.086|
|VC2_precision_TCC2|✅ proved - incomplete|shostak|0.080|
|VC2_precision|✅ proved - incomplete|shostak|0.497|
|VC2_accuracy_lower_TCC1|✅ proved - incomplete|shostak|0.078|
|VC2_accuracy_lower|✅ proved - incomplete|shostak|0.647|
|VC2_optimal_accuracy_lower|✅ proved - incomplete|shostak|0.351|
|VC2_accuracy_upper|✅ proved - incomplete|shostak|0.520|
|VC2_optimal_accuracy_upper|✅ proved - incomplete|shostak|0.325|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Mac OS X (Intel)] (Nov 14, 2020 23:13)|
| Patch Version| n/a|
| Library Path| `/Applications/pvs-7.1.0/pvslib/`<br/>`/Applications/pvs-7.1.0/lib/`<br/>`/Applications/pvs-7.1.0/pvslib/float/`<br/>`/Applications/pvs-7.1.0/pvslib/pvsio_utils/`|
| Loaded Patches | `/Applications/pvs-7.1.0/pvslib/.pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230712-static-update.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230710-tcc-gen.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230707-defattach.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230706-extrategies.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210323-wish.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210225-cl2pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210715a.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210715.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210707.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210706.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210511.lisp`|
