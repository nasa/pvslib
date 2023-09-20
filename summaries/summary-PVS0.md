# Summary for `PVS0`
Run started at 2:7:27 9/20/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **672**   | **672**    | **672**    | **0**  | **8:51.219 s**   |
|top|0|0|0|0|0.000|
|pvs0_expr|52|52|52|0|12.199|
|pvs0_lang|16|16|16|0|2.753|
|pvs0_cc|26|26|26|0|5.509|
|pvs0_props|68|68|68|0|55.056|
|pvs0_to_dg|20|20|20|0|5.316|
|measure_termination_defs|1|1|1|0|0.130|
|pvs0_prelude|1|1|1|0|0.110|
|measure_termination|5|5|5|0|1.145|
|pvs0_termination|17|17|17|0|16.643|
|scp_iff_pvs0|7|7|7|0|2.422|
|pvs0_eval|46|46|46|0|24.783|
|ccg_to_pvs0|3|3|3|0|0.790|
|pvs0_to_ccg|4|4|4|0|1.316|
|pvs0_pvs|3|3|3|0|1.134|
|pvs0_pvs_T|2|2|2|0|0.946|
|pvs0_expressibility|1|1|1|0|0.358|
|counting_pvs0_type|20|20|20|0|5.678|
|pvs0_to_nat|23|23|23|0|22.137|
|pvs0_computable|11|11|11|0|7.831|
|pvs0_halting|5|5|5|0|3.381|
|dg_termination|5|5|5|0|3.523|
|dp_termination|2|2|2|0|0.732|
|dp_to_tcc|3|3|3|0|0.852|
|factorial_pvs0|12|12|12|0|10.488|
|factorial_pvs|4|4|4|0|5.388|
|ack_pvs0|16|16|16|0|13.431|
|ack_pvs|9|9|9|0|17.304|
|fibo_pvs0|9|9|9|0|5.334|
|fibo_pvs|5|5|5|0|6.426|
|mf_pvs0_top|0|0|0|0|0.000|
|mf_pvs0_halting|5|5|5|0|6.479|
|mf_pvs0_computable|59|59|59|0|29.012|
|mf_pvs0_lang|33|33|33|0|40.575|
|mf_pvs0_expr|54|54|54|0|18.826|
|subtype_length|4|4|4|0|0.939|
|subtype_map|1|1|1|0|0.290|
|map_identity|1|1|1|0|0.250|
|mf_pvs0_Fixedpoint|5|5|5|0|1.068|
|map_append|1|1|1|0|0.270|
|mf_pvs0_Rices_Theorem_Corollaries|5|5|5|0|16.858|
|mf_pvs0_Rices_Theorem|4|4|4|0|23.757|
|mf_pvs0_Recursion_Theorem|21|21|21|0|49.489|
|mf_pvs0_basic_programs|19|19|19|0|19.481|
|mf_pvs0_Turing_Completeness|62|62|62|0|1:30.340|
|chain_of_appends|2|2|2|0|0.470|
## Detailed Summary 
## `top`
No formula declaration found.
## `pvs0_expr`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|semantic_rel_expr_TCC1|✅ proved - complete|shostak|0.160|
|semantic_rel_expr_TCC2|✅ proved - complete|shostak|0.130|
|semantic_rel_expr_TCC3|✅ proved - complete|shostak|0.130|
|semantic_rel_expr_TCC4|✅ proved - complete|shostak|0.130|
|eval_expr_TCC1|✅ proved - complete|shostak|0.140|
|eval_expr_TCC2|✅ proved - complete|shostak|0.276|
|eval_expr_TCC3|✅ proved - complete|shostak|0.370|
|eval_expr_TCC4|✅ proved - complete|shostak|0.160|
|eval_expr_TCC5|✅ proved - complete|shostak|0.350|
|eval_expr_TCC6|✅ proved - complete|shostak|0.429|
|eval_expr_TCC7|✅ proved - complete|shostak|0.430|
|eval_expr_TCC8|✅ proved - complete|shostak|0.407|
|eval_expr_TCC9|✅ proved - complete|shostak|0.140|
|eval_expr_TCC10|✅ proved - complete|shostak|0.150|
|eval_expr_TCC11|✅ proved - complete|shostak|0.260|
|eval_expr_ge_n_j_TCC1|✅ proved - complete|shostak|0.123|
|eval_expr_ge_n_j_TCC2|✅ proved - complete|shostak|0.160|
|eval_expr_ge_n_j_TCC3|✅ proved - complete|shostak|0.130|
|eval_expr_ge_n_j_TCC4|✅ proved - complete|shostak|0.130|
|eval_expr_ge_n_j_TCC5|✅ proved - complete|shostak|0.165|
|eval_expr_ge_n_j_TCC6|✅ proved - complete|shostak|0.140|
|eval_expr_ge_n_j_TCC7|✅ proved - complete|shostak|0.150|
|eval_expr_ge_n_j_TCC8|✅ proved - complete|shostak|0.190|
|eval_expr_ge_n_j_TCC9|✅ proved - complete|shostak|0.148|
|eval_expr_ge_n_j_TCC10|✅ proved - complete|shostak|0.190|
|eval_expr_ge_n_j_TCC11|✅ proved - complete|shostak|0.200|
|eval_expr_ge_n_j_TCC12|✅ proved - complete|shostak|0.131|
|eval_expr_ge_n_j_TCC13|✅ proved - complete|shostak|0.140|
|eval_expr_ge_n_j_TCC14|✅ proved - complete|shostak|0.210|
|eval_expr_ge_n_j_TCC15|✅ proved - complete|shostak|0.130|
|eval_expr_gt_0|✅ proved - complete|shostak|0.120|
|eval_expr_ge_n|✅ proved - complete|shostak|0.258|
|semantic_rel_eval_expr|✅ proved - complete|shostak|2.991|
|eval_expr_n_pos|✅ proved - complete|shostak|0.130|
|deterministic_expr|✅ proved - complete|shostak|0.220|
|eval_expr_semantic_rel_j_TCC1|✅ proved - complete|shostak|0.117|
|eval_expr_semantic_rel_j_TCC2|✅ proved - complete|shostak|0.130|
|eval_expr_semantic_rel_j_TCC3|✅ proved - complete|shostak|0.120|
|eval_expr_semantic_rel_j_TCC4|✅ proved - complete|shostak|0.140|
|eval_expr_semantic_rel_j_TCC5|✅ proved - complete|shostak|0.150|
|eval_expr_semantic_rel_j_TCC6|✅ proved - complete|shostak|0.102|
|eval_expr_semantic_rel_j_TCC7|✅ proved - complete|shostak|0.150|
|eval_expr_semantic_rel_j_TCC8|✅ proved - complete|shostak|0.160|
|eval_expr_semantic_rel_j_TCC9|✅ proved - complete|shostak|0.100|
|eval_expr_semantic_rel_j_TCC10|✅ proved - complete|shostak|0.150|
|eval_expr_semantic_rel_j_TCC11|✅ proved - complete|shostak|0.168|
|eval_expr_semantic_rel_j_TCC12|✅ proved - complete|shostak|0.150|
|eval_expr_semantic_rel_j_TCC13|✅ proved - complete|shostak|0.140|
|eval_expr_semantic_rel_j_TCC14|✅ proved - complete|shostak|0.170|
|eval_expr_semantic_rel_j_TCC15|✅ proved - complete|shostak|0.110|
|eval_expr_semantic_rel|✅ proved - complete|shostak|0.244|
|eval_expr_terminates|✅ proved - complete|shostak|0.180|

## `pvs0_lang`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|deterministic|✅ proved - complete|shostak|0.122|
|eval_pvs0_ge_n|✅ proved - complete|shostak|0.120|
|semantic_rel_eval|✅ proved - complete|shostak|0.150|
|eval_terminates|✅ proved - complete|shostak|0.100|
|terminating_determined_all|✅ proved - complete|shostak|0.110|
|mu_nonempty|✅ proved - complete|shostak|0.150|
|mu_TCC1|✅ proved - complete|shostak|0.120|
|mu_TCC2|✅ proved - complete|shostak|0.201|
|mu_terminates|✅ proved - complete|shostak|0.288|
|mu_min|✅ proved - complete|shostak|0.150|
|mu_eval_TCC1|✅ proved - complete|shostak|0.200|
|eval_semantic|✅ proved - complete|shostak|0.160|
|mu_eval_correct|✅ proved - complete|shostak|0.179|
|Delta_undetermined|✅ proved - complete|shostak|0.393|
|Delta_non_terminating|✅ proved - complete|shostak|0.120|
|pvs0_not_in_pvs|✅ proved - complete|shostak|0.190|

## `pvs0_cc`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|eval_conds_TCC1|✅ proved - complete|shostak|0.171|
|valid_path_TCC1|✅ proved - incomplete|shostak|0.200|
|valid_path_TCC2|✅ proved - incomplete|shostak|0.202|
|valid_path_TCC3|✅ proved - incomplete|shostak|0.210|
|valid_path_TCC4|✅ proved - incomplete|shostak|0.189|
|valid_path_TCC5|✅ proved - incomplete|shostak|0.200|
|valid_path_TCC6|✅ proved - incomplete|shostak|0.210|
|valid_path_TCC7|✅ proved - incomplete|shostak|0.210|
|subterm_at_TCC1|✅ proved - incomplete|shostak|0.133|
|subterm_at_TCC2|✅ proved - incomplete|shostak|0.110|
|subterm_at_TCC3|✅ proved - incomplete|shostak|0.180|
|subterm_at_TCC4|✅ proved - incomplete|shostak|0.160|
|subterm_at_TCC5|✅ proved - incomplete|shostak|0.129|
|subterm_at_TCC6|✅ proved - incomplete|shostak|0.160|
|subterm_at_TCC7|✅ proved - incomplete|shostak|0.280|
|subterm_at_TCC8|✅ proved - incomplete|shostak|0.220|
|subterm_at_TCC9|✅ proved - incomplete|shostak|0.160|
|subterm_at_TCC10|✅ proved - incomplete|shostak|0.120|
|subterm_at_TCC11|✅ proved - incomplete|shostak|0.170|
|subterm_at_TCC12|✅ proved - incomplete|shostak|0.000|
|subterm_at_TCC13|✅ proved - incomplete|shostak|0.180|
|subterm_at_TCC14|✅ proved - incomplete|shostak|0.270|
|subterm_at_TCC15|✅ proved - incomplete|shostak|0.210|
|subterm_at_TCC16|✅ proved - incomplete|shostak|0.120|
|path_conditions_TCC1|✅ proved - incomplete|shostak|1.157|
|path_conditions_TCC2|✅ proved - incomplete|shostak|0.158|

## `pvs0_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|subterm_transitive|✅ proved - complete|shostak|0.556|
|null_path|✅ proved - incomplete|shostak|0.589|
|valid_paths_subexpr|✅ proved - incomplete|shostak|2.485|
|subterm_append_TCC1|✅ proved - incomplete|shostak|0.140|
|subterm_append|✅ proved - incomplete|shostak|2.527|
|valid_0_path_ext|✅ proved - incomplete|shostak|0.643|
|valid_1_path_ext|✅ proved - incomplete|shostak|0.810|
|valid_2_path_ext|✅ proved - incomplete|shostak|0.643|
|app_prefix_of_path_ext|✅ proved - incomplete|shostak|4.088|
|cnst_vr_path_ext|✅ proved - incomplete|shostak|0.170|
|op1_rec_path_ext|✅ proved - incomplete|shostak|0.879|
|op2_path_ext|✅ proved - incomplete|shostak|1.219|
|ite_path_ext|✅ proved - incomplete|shostak|1.610|
|valid_paths_TCC1|✅ proved - incomplete|shostak|0.170|
|valid_paths_TCC2|✅ proved - complete|shostak|0.317|
|valid_paths_TCC3|✅ proved - incomplete|shostak|0.902|
|valid_paths_TCC4|✅ proved - incomplete|shostak|1.260|
|valid_paths_TCC5|✅ proved - incomplete|shostak|0.120|
|valid_paths_TCC6|✅ proved - complete|shostak|0.122|
|valid_paths_TCC7|✅ proved - complete|shostak|0.120|
|valid_paths_TCC8|✅ proved - incomplete|shostak|0.000|
|valid_paths_TCC9|✅ proved - incomplete|shostak|4.290|
|valid_paths_TCC10|✅ proved - incomplete|shostak|0.120|
|valid_paths_TCC11|✅ proved - complete|shostak|0.120|
|valid_paths_TCC12|✅ proved - incomplete|shostak|0.898|
|valid_paths_TCC13|✅ proved - incomplete|shostak|1.253|
|valid_paths_TCC14|✅ proved - incomplete|shostak|0.130|
|valid_paths_TCC15|✅ proved - complete|shostak|0.114|
|valid_paths_TCC16|✅ proved - complete|shostak|0.150|
|valid_paths_TCC17|✅ proved - complete|shostak|0.150|
|valid_paths_TCC18|✅ proved - incomplete|shostak|2.503|
|valid_paths_TCC19|✅ proved - incomplete|shostak|8.415|
|valid_paths_TCC20|✅ proved - incomplete|shostak|0.170|
|valid_paths_TCC21|✅ proved - incomplete|shostak|0.173|
|subset_member_sl|✅ proved - incomplete|shostak|0.420|
|suffix_subset_sl|✅ proved - incomplete|shostak|0.140|
|path_conditions_cons_TCC1|✅ proved - incomplete|shostak|0.322|
|path_conditions_cons_TCC2|✅ proved - incomplete|shostak|0.162|
|path_conditions_cons|✅ proved - incomplete|shostak|0.170|
|path_conditions_unmodified_TCC1|✅ proved - incomplete|shostak|0.180|
|path_conditions_unmodified|✅ proved - incomplete|shostak|0.150|
|path_conditions_unmodified2_TCC1|✅ proved - incomplete|shostak|0.162|
|path_conditions_unmodified2|✅ proved - incomplete|shostak|0.140|
|suffix_path_cnds_suffix|✅ proved - incomplete|shostak|0.750|
|suffix_path_cnds|✅ proved - incomplete|shostak|0.150|
|condition_is_subterm|✅ proved - incomplete|shostak|1.778|
|condition_is_subterm_append|✅ proved - incomplete|shostak|0.571|
|path_of_path_conditions|✅ proved - incomplete|shostak|2.122|
|member_conds_rec|✅ proved - complete|shostak|0.305|
|member_conds_rec2|✅ proved - complete|shostak|0.270|
|eval_conds_reverse|✅ proved - incomplete|shostak|0.178|
|suffix_conds_rec|✅ proved - incomplete|shostak|0.140|
|suffix_conds_valid_sub|✅ proved - incomplete|shostak|0.140|
|suffix_conds_valid|✅ proved - incomplete|shostak|0.277|
|rec_decreasing_TCC1|✅ proved - incomplete|shostak|0.140|
|rec_decreasing_TCC2|✅ proved - incomplete|shostak|0.160|
|rec_decreasing_TCC3|✅ proved - incomplete|shostak|0.217|
|rec_decreasing_TCC4|✅ proved - incomplete|shostak|0.170|
|rec_decreasing|✅ proved - incomplete|shostak|4.257|
|rec_mu_decreasing_TCC1|✅ proved - incomplete|shostak|0.180|
|rec_mu_decreasing_TCC2|✅ proved - incomplete|shostak|0.220|
|rec_mu_decreasing_TCC3|✅ proved - incomplete|shostak|0.253|
|rec_mu_decreasing_TCC4|✅ proved - incomplete|shostak|0.290|
|rec_mu_decreasing|✅ proved - incomplete|shostak|0.854|
|decreasing_rec_TCC1|✅ proved - incomplete|shostak|0.140|
|decreasing_rec_TCC2|✅ proved - incomplete|shostak|0.201|
|decreasing_rec_TCC3|✅ proved - incomplete|shostak|0.170|
|decreasing_rec|✅ proved - incomplete|shostak|1.421|

## `pvs0_to_dg`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|pvs0_to_dg_make_cc_TCC1|✅ proved - incomplete|shostak|0.141|
|pvs0_to_dg_make_cc_TCC2|✅ proved - incomplete|shostak|0.150|
|pvs0_to_dg_paths_vertices_TCC1|✅ proved - incomplete|shostak|0.236|
|pvs0_to_dg_paths_vertices_TCC2|✅ proved - incomplete|shostak|0.160|
|pvs0_to_dg_paths_vertices_TCC3|✅ proved - incomplete|shostak|0.176|
|pvs0_to_dg_paths_vertices_TCC4|✅ proved - incomplete|shostak|0.260|
|pvs0_to_dg_paths_vertices_TCC5|✅ proved - incomplete|shostak|0.427|
|pvs0_to_dg_paths_vertices_TCC6|✅ proved - incomplete|shostak|0.280|
|pvs0_to_dg_paths_vertices_TCC7|✅ proved - incomplete|shostak|0.412|
|pvs0_to_dg_vertices_completeness|✅ proved - incomplete|shostak|0.599|
|cc_of_pvs0_soundness|✅ proved - incomplete|shostak|0.220|
|cc_of_pvs0_completeness|✅ proved - incomplete|shostak|0.150|
|pvs0_ccs_rec_TCC1|✅ proved - incomplete|shostak|0.140|
|pvs0_ccs_rec_TCC2|✅ proved - incomplete|shostak|0.260|
|pvs0_ccs_rec_TCC3|✅ proved - incomplete|shostak|0.171|
|pvs0_ccs_rec_TCC4|✅ proved - incomplete|shostak|0.280|
|pvs0_ccs_rec_TCC5|✅ proved - incomplete|shostak|0.382|
|pvs0_ccs_completness|✅ proved - incomplete|shostak|0.281|
|dg_vert_valid_cc|✅ proved - incomplete|shostak|0.591|
|pvs0_to_fully_connected_dg_sound_ccg|✅ proved - incomplete|shostak|0.000|

## `measure_termination_defs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|wfm_tcc_TCC1|✅ proved - incomplete|shostak|0.130|

## `pvs0_prelude`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|lt_TCC1|✅ proved - complete|shostak|0.110|

## `measure_termination`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|mu_soundness_TCC1|✅ proved - incomplete|shostak|0.343|
|mu_soundness_TCC2|✅ proved - incomplete|shostak|0.229|
|mu_soundness|✅ proved - incomplete|shostak|0.220|
|terminates_implies_pvs0_tcc_TCC1|✅ proved - complete|shostak|0.173|
|terminates_implies_pvs0_tcc|✅ proved - incomplete|shostak|0.180|

## `pvs0_termination`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|lt_val_wf|✅ proved - incomplete|shostak|0.260|
|lt_val_no_desc_inf_branch|✅ proved - incomplete|shostak|2.578|
|omega_is_eval_ub_TCC1|✅ proved - incomplete|shostak|0.130|
|omega_is_eval_ub_TCC2|✅ proved - incomplete|shostak|0.137|
|omega_is_eval_ub|✅ proved - incomplete|shostak|10.494|
|omega_is_eval_ub_bis|✅ proved - incomplete|shostak|0.160|
|pvs0_tcc_implies_terminates|✅ proved - incomplete|shostak|0.523|
|pvs0_tcc_termination_j|✅ proved - incomplete|shostak|0.115|
|mu_le_omega_TCC1|✅ proved - incomplete|shostak|0.120|
|mu_le_omega_TCC2|✅ proved - incomplete|shostak|0.120|
|mu_le_omega_TCC3|✅ proved - incomplete|shostak|0.130|
|mu_le_omega|✅ proved - incomplete|shostak|0.533|
|Omega_n_TCC1|✅ proved - incomplete|shostak|0.120|
|Omega_n_TCC2|✅ proved - incomplete|shostak|0.130|
|Omega_n_TCC3|✅ proved - incomplete|shostak|0.300|
|Omega_preval_TCC1|✅ proved - incomplete|shostak|0.200|
|Omega_eval_correct|✅ proved - incomplete|shostak|0.593|

## `scp_iff_pvs0`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|R_wf|✅ proved - incomplete|shostak|0.341|
|R_no_desc_inf_branch|✅ proved - incomplete|shostak|0.978|
|scp_implies_pvs0_tcc_TCC1|✅ proved - incomplete|shostak|0.210|
|scp_implies_pvs0_tcc|✅ proved - incomplete|shostak|0.297|
|pvs0_tcc_implies_scp_TCC1|✅ proved - complete|shostak|0.120|
|pvs0_tcc_implies_scp|✅ proved - incomplete|shostak|0.335|
|scp_iff_pvs0_terminates|✅ proved - incomplete|shostak|0.141|

## `pvs0_eval`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|pvs0_eval_expr_TCC1|✅ proved - incomplete|shostak|0.250|
|pvs0_eval_expr_TCC2|✅ proved - incomplete|shostak|0.120|
|pvs0_eval_expr_TCC3|✅ proved - incomplete|shostak|0.120|
|pvs0_eval_expr_TCC4|✅ proved - incomplete|shostak|0.160|
|pvs0_eval_expr_TCC5|✅ proved - incomplete|shostak|0.164|
|pvs0_eval_expr_TCC6|✅ proved - incomplete|shostak|0.607|
|pvs0_eval_expr_TCC7|✅ proved - incomplete|shostak|0.475|
|pvs0_eval_expr_TCC8|✅ proved - incomplete|shostak|0.390|
|pvs0_eval_expr_TCC9|✅ proved - incomplete|shostak|0.248|
|pvs0_eval_expr_TCC10|✅ proved - incomplete|shostak|0.664|
|pvs0_eval_expr_TCC11|✅ proved - incomplete|shostak|0.560|
|pvs0_eval_expr_TCC12|✅ proved - incomplete|shostak|0.723|
|pvs0_eval_expr_TCC13|✅ proved - incomplete|shostak|0.612|
|pvs0_eval_expr_TCC14|✅ proved - incomplete|shostak|0.254|
|pvs0_eval_expr_TCC15|✅ proved - incomplete|shostak|0.240|
|pvs0_eval_expr_TCC16|✅ proved - incomplete|shostak|0.615|
|pvs0_eval_expr_TCC17|✅ proved - incomplete|shostak|0.622|
|pvs0_eval_expr_TCC18|✅ proved - incomplete|shostak|0.884|
|pvs0_eval_expr_TCC19|✅ proved - incomplete|shostak|0.663|
|pvs0_eval_expr_TCC20|✅ proved - incomplete|shostak|0.653|
|pvs0_eval_expr_TCC21|✅ proved - incomplete|shostak|0.875|
|pvs0_eval_expr_TCC22|✅ proved - incomplete|shostak|0.682|
|pvs0_eval_expr_TCC23|✅ proved - incomplete|shostak|0.656|
|pvs0_eval_expr_TCC24|✅ proved - incomplete|shostak|0.573|
|pvs0_eval_expr_TCC25|✅ proved - incomplete|shostak|0.483|
|pvs0_eval_expr_TCC26|✅ proved - incomplete|shostak|0.413|
|pvs0_eval_expr_TCC27|✅ proved - incomplete|shostak|1.165|
|pvs0_eval_expr_TCC28|✅ proved - incomplete|shostak|0.461|
|pvs0_eval_TCC1|✅ proved - incomplete|shostak|0.373|
|pvs0_eval_correct|✅ proved - incomplete|shostak|0.170|
|terminates_expr_transitive_TCC1|✅ proved - incomplete|shostak|0.173|
|terminates_expr_transitive_TCC2|✅ proved - incomplete|shostak|0.200|
|terminates_expr_transitive|✅ proved - incomplete|shostak|4.155|
|suffix_of_valid_conditions|✅ proved - incomplete|shostak|0.310|
|pvs0_eval_conds_TCC1|✅ proved - incomplete|shostak|0.140|
|pvs0_eval_conds_TCC2|✅ proved - incomplete|shostak|0.308|
|pvs0_eval_conds_TCC3|✅ proved - incomplete|shostak|0.284|
|pvs0_eval_conds_TCC4|✅ proved - incomplete|shostak|0.389|
|pvs0_eval_conds_TCC5|✅ proved - incomplete|shostak|0.349|
|pvs0_eval_conds_TCC6|✅ proved - incomplete|shostak|1.344|
|pvs0_eval_conds_corrrect_TCC1|✅ proved - incomplete|shostak|0.183|
|pvs0_eval_conds_corrrect|✅ proved - incomplete|shostak|0.160|
|pvs0_tcc_TCC1|✅ proved - incomplete|shostak|0.361|
|pvs0_tcc_TCC2|✅ proved - incomplete|shostak|0.818|
|pvs0_tccs_correct_TCC1|✅ proved - complete|shostak|0.170|
|pvs0_tccs_correct|✅ proved - incomplete|shostak|0.564|

## `ccg_to_pvs0`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|ccg_implies_scp_pvs0|✅ proved - incomplete|shostak|0.520|
|ccg_implies_pvs0_tcc_TCC1|✅ proved - incomplete|shostak|0.140|
|ccg_implies_pvs0_tcc|✅ proved - incomplete|shostak|0.130|

## `pvs0_to_ccg`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|scp_implies_ccg_pvs0_TCC1|✅ proved - incomplete|shostak|0.350|
|scp_implies_ccg_pvs0|✅ proved - incomplete|shostak|0.605|
|pvs0_tcc_implies_ccg_TCC1|✅ proved - complete|shostak|0.180|
|pvs0_tcc_implies_ccg|✅ proved - incomplete|shostak|0.181|

## `pvs0_pvs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|make_pvs0_TCC1|✅ proved - complete|shostak|0.380|
|pvs_to_pvs0_aux|✅ proved - incomplete|shostak|0.544|
|pvs_to_pvs0|✅ proved - incomplete|shostak|0.210|

## `pvs0_pvs_T`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|make_pvs0_TCC1|✅ proved - complete|shostak|0.416|
|pvs_to_pvs0|✅ proved - incomplete|shostak|0.530|

## `pvs0_expressibility`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|TerminationExpressible|✅ proved - incomplete|shostak|0.358|

## `counting_pvs0_type`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|G_TCC1|✅ proved - complete|shostak|0.200|
|base_TCC1|✅ proved - complete|shostak|0.360|
|inop1_at_TCC1|✅ proved - complete|shostak|0.210|
|inop1_at_TCC2|✅ proved - complete|shostak|0.220|
|op1_at_TCC1|✅ proved - complete|shostak|0.310|
|op1_upto_TCC1|✅ proved - complete|shostak|0.440|
|inop2_at_TCC1|✅ proved - complete|shostak|0.226|
|finpair_TCC1|✅ proved - incomplete|shostak|0.427|
|op2_at_TCC1|✅ proved - incomplete|shostak|0.340|
|op2_upto_TCC1|✅ proved - incomplete|shostak|0.465|
|fintrip_TCC1|✅ proved - incomplete|shostak|0.491|
|ite_set_TCC1|✅ proved - incomplete|shostak|0.320|
|inrec_set_TCC1|✅ proved - complete|shostak|0.210|
|rec_set_TCC1|✅ proved - complete|shostak|0.298|
|level_set_member|✅ proved - incomplete|shostak|0.220|
|level_TCC1|✅ proved - complete|shostak|0.210|
|level_TCC2|✅ proved - complete|shostak|0.200|
|levels_increase|✅ proved - incomplete|shostak|0.321|
|levels_cover|✅ proved - incomplete|shostak|0.000|
|nat_onto_PVS0Expr|✅ proved - incomplete|shostak|0.210|

## `pvs0_to_nat`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|nat2PVS0_TCC1|✅ proved - complete|shostak|0.273|
|nat2PVS0_TCC2|✅ proved - complete|shostak|0.280|
|nat2PVS0_TCC3|✅ proved - complete|shostak|0.280|
|nat2PVS0_TCC4|✅ proved - complete|shostak|0.220|
|nat2PVS0_TCC5|✅ proved - complete|shostak|0.260|
|nat2PVS0_TCC6|✅ proved - incomplete|shostak|0.300|
|nat2PVS0_TCC7|✅ proved - incomplete|shostak|0.340|
|nat2PVS0_TCC8|✅ proved - incomplete|shostak|0.332|
|nat2PVS0_TCC9|✅ proved - incomplete|shostak|0.300|
|nat2PVS0_TCC10|✅ proved - complete|shostak|0.409|
|nat2PVS0_TCC11|✅ proved - incomplete|shostak|0.230|
|nat2PVS0_TCC12|✅ proved - incomplete|shostak|0.270|
|nat2PVS0_TCC13|✅ proved - incomplete|shostak|0.280|
|PVS02nat_TCC1|✅ proved - complete|shostak|0.250|
|PVS02nat_TCC2|✅ proved - complete|shostak|0.250|
|PVS02nat_TCC3|✅ proved - complete|shostak|0.269|
|PVS02nat_TCC4|✅ proved - complete|shostak|0.260|
|PVS02nat_TCC5|✅ proved - complete|shostak|0.260|
|PVS02nat_TCC6|✅ proved - complete|shostak|0.260|
|PVS02nat_TCC7|✅ proved - complete|shostak|0.260|
|nat2PVS0_inverse|✅ proved - incomplete|shostak|2.313|
|PVS02nat_inverse|✅ proved - incomplete|shostak|14.031|
|nat2PVS0_bijection|✅ proved - incomplete|shostak|0.210|

## `pvs0_computable`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|pvs0_level_TCC1|✅ proved - complete|shostak|0.225|
|level_surjective|✅ proved - incomplete|shostak|4.699|
|level_surjection_TCC1|✅ proved - incomplete|shostak|0.280|
|representantion|✅ proved - incomplete|shostak|0.380|
|pvs0_level_computable_TCC1|✅ proved - incomplete|shostak|0.360|
|pvs0_level_computable_TCC2|✅ proved - incomplete|shostak|0.254|
|pvs0_level_computable_terminating|✅ proved - incomplete|shostak|0.240|
|pvs0_level_computable_n|✅ proved - incomplete|shostak|0.468|
|PVS0_computable_is_terminating|✅ proved - incomplete|shostak|0.230|
|PVS0_computable_is_partial_recursive|✅ proved - incomplete|shostak|0.220|
|pvs0_level1_is_2|✅ proved - incomplete|shostak|0.475|

## `pvs0_halting`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|nat_to_PVS0_TCC1|✅ proved - incomplete|shostak|0.310|
|true_val_TCC1|✅ proved - complete|shostak|0.230|
|Oracle_TCC1|✅ proved - incomplete|shostak|0.411|
|pvs0_decidability|✅ proved - incomplete|shostak|0.839|
|pvs0_undecidability|✅ proved - incomplete|shostak|1.591|

## `dg_termination`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|M_TCC1|✅ proved - complete|shostak|0.340|
|dg_termination?_TCC1|✅ proved - incomplete|shostak|0.755|
|dg_termination?_TCC2|✅ proved - incomplete|shostak|0.726|
|pvs0_to_dg_sound_dpg_digraph|✅ proved - incomplete|shostak|1.051|
|dg_termination_implies_ccg|✅ proved - incomplete|shostak|0.651|

## `dp_termination`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|lt_wfm_dp_well_founded|✅ proved - incomplete|shostak|0.280|
|dp_dec_implies_dp_termination|✅ proved - incomplete|shostak|0.452|

## `dp_to_tcc`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|dp_termination_implies_scp_TCC1|✅ proved - complete|shostak|0.220|
|dp_termination_implies_scp|✅ proved - incomplete|shostak|0.402|
|dp_termination_implies_dp_dec|✅ proved - incomplete|shostak|0.230|

## `factorial_pvs0`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|factorial_op1_TCC1|✅ proved - complete|shostak|0.230|
|IMP_ccg_to_mwg_TCC1|✅ proved - complete|shostak|0.210|
|M_TCC1|✅ proved - complete|shostak|0.784|
|IMP_ccg_to_pvs0_TCC1|✅ proved - complete|shostak|0.700|
|IMP_bounding_circuits_TCC1|✅ proved - complete|shostak|0.700|
|A_TCC1|✅ proved - complete|shostak|0.700|
|A_TCC2|✅ proved - complete|shostak|0.638|
|factorial_mm_TCC1|✅ proved - incomplete|shostak|0.000|
|pvs0_factorial_terminating|✅ proved - incomplete|shostak|4.416|
|pvs0_factorial_tcc_termination|✅ proved - incomplete|shostak|0.700|
|factorial_msr|✅ proved - incomplete|shostak|0.700|
|factorial_wfm_TCC1|✅ proved - incomplete|shostak|0.710|

## `factorial_pvs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|factorial_TCC1|✅ proved - complete|shostak|0.710|
|factorial_TCC2|✅ proved - incomplete|shostak|1.581|
|factorial_TCC3|✅ proved - incomplete|shostak|1.571|
|factorial_TCC4|✅ proved - incomplete|shostak|1.526|

## `ack_pvs0`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|ack_op1_TCC1|✅ proved - complete|shostak|0.220|
|ack_op2_TCC1|✅ proved - complete|shostak|0.220|
|M1_TCC1|✅ proved - complete|shostak|0.377|
|A0_TCC1|✅ proved - complete|shostak|0.240|
|A0_TCC2|✅ proved - complete|shostak|0.240|
|A0_TCC3|✅ proved - complete|shostak|0.240|
|A1_TCC1|✅ proved - complete|shostak|0.240|
|A1_TCC2|✅ proved - complete|shostak|0.240|
|A2_TCC1|✅ proved - complete|shostak|0.240|
|A2_TCC2|✅ proved - complete|shostak|0.242|
|A2_TCC3|✅ proved - complete|shostak|0.240|
|ack_mm_TCC1|✅ proved - incomplete|shostak|9.552|
|pvs0_ack_terminating|✅ proved - incomplete|shostak|0.420|
|pvs0_ack_tcc_termination|✅ proved - incomplete|shostak|0.240|
|ack_msr|✅ proved - incomplete|shostak|0.230|
|ack_wfm_TCC1|✅ proved - incomplete|shostak|0.250|

## `ack_pvs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|ack_TCC1|✅ proved - incomplete|shostak|2.788|
|ack_TCC2|✅ proved - complete|shostak|0.250|
|ack_TCC3|✅ proved - incomplete|shostak|0.000|
|ack_TCC4|✅ proved - incomplete|shostak|2.828|
|ack_TCC5|✅ proved - complete|shostak|0.250|
|ack_TCC6|✅ proved - complete|shostak|0.250|
|ack_TCC7|✅ proved - incomplete|shostak|4.020|
|ack_TCC8|✅ proved - incomplete|shostak|4.067|
|ack_TCC9|✅ proved - incomplete|shostak|2.851|

## `fibo_pvs0`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|fibo_op1_TCC1|✅ proved - complete|shostak|0.220|
|M_TCC1|✅ proved - complete|shostak|0.390|
|A_TCC1|✅ proved - complete|shostak|0.240|
|A_TCC2|✅ proved - complete|shostak|0.240|
|fibo_mm_TCC1|✅ proved - incomplete|shostak|3.103|
|pvs0_fibo_terminating|✅ proved - incomplete|shostak|0.410|
|pvs0_fibo_tcc_termination|✅ proved - incomplete|shostak|0.241|
|fibo_msr|✅ proved - incomplete|shostak|0.240|
|fibo_wfm_TCC1|✅ proved - incomplete|shostak|0.250|

## `fibo_pvs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|fibo_TCC1|✅ proved - incomplete|shostak|2.199|
|fibo_TCC2|✅ proved - incomplete|shostak|2.206|
|fibo_TCC3|✅ proved - complete|shostak|0.260|
|fibo_TCC4|✅ proved - incomplete|shostak|1.761|
|fibo_TCC5|✅ proved - incomplete|shostak|0.000|

## `mf_pvs0_top`
No formula declaration found.
## `mf_pvs0_halting`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|nat2p_recursive_TCC1|✅ proved - incomplete|shostak|0.335|
|true_val_TCC1|✅ proved - complete|shostak|0.220|
|Oracle_TCC1|✅ proved - incomplete|shostak|0.350|
|mf_pvs0_halting_problem_decidability|✅ proved - incomplete|shostak|0.655|
|mf_pvs0_halting_problem_undecidability|✅ proved - incomplete|shostak|4.919|

## `mf_pvs0_computable`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|nat2PVS0_limit_TCC1|✅ proved - complete|shostak|0.210|
|nat2PVS0_limit_TCC2|✅ proved - complete|shostak|0.280|
|nat2PVS0_limit_TCC3|✅ proved - complete|shostak|0.280|
|nat2PVS0_limit_TCC4|✅ proved - complete|shostak|0.380|
|nat2PVS0_limit_TCC5|✅ proved - complete|shostak|0.270|
|nat2PVS0_limit_TCC6|✅ proved - complete|shostak|0.434|
|nat2PVS0_limit_TCC7|✅ proved - complete|shostak|0.410|
|nat2PVS0_limit_TCC8|✅ proved - complete|shostak|0.832|
|nat2PVS0_limit_TCC9|✅ proved - complete|shostak|0.295|
|nat2PVS0_limit_TCC10|✅ proved - incomplete|shostak|0.340|
|nat2PVS0_limit_TCC11|✅ proved - incomplete|shostak|0.310|
|nat2PVS0_limit_TCC12|✅ proved - incomplete|shostak|0.341|
|nat2PVS0_limit_TCC13|✅ proved - incomplete|shostak|0.270|
|nat2PVS0_limit_TCC14|✅ proved - incomplete|shostak|0.260|
|nat2PVS0_limit_TCC15|✅ proved - incomplete|shostak|0.330|
|nat2PVS0_limit_TCC16|✅ proved - complete|shostak|0.450|
|nat2PVS0_limit_TCC17|✅ proved - incomplete|shostak|0.250|
|nat2PVS0_limit_TCC18|✅ proved - incomplete|shostak|0.260|
|nat2PVS0_limit_TCC19|✅ proved - incomplete|shostak|0.274|
|nat2PVS0_limit_TCC20|✅ proved - incomplete|shostak|1.494|
|PVS02nat_limit_TCC1|✅ proved - complete|shostak|0.262|
|PVS02nat_limit_TCC2|✅ proved - complete|shostak|0.290|
|PVS02nat_limit_TCC3|✅ proved - complete|shostak|0.270|
|PVS02nat_limit_TCC4|✅ proved - complete|shostak|0.290|
|PVS02nat_limit_TCC5|✅ proved - complete|shostak|0.275|
|PVS02nat_limit_TCC6|✅ proved - complete|shostak|0.310|
|PVS02nat_limit_TCC7|✅ proved - complete|shostak|0.270|
|PVS02nat_limit_TCC8|✅ proved - complete|shostak|0.316|
|PVS02nat_limit_TCC9|✅ proved - complete|shostak|0.270|
|PVS02nat_limit_TCC10|✅ proved - complete|shostak|0.310|
|PVS02nat_limit_TCC11|✅ proved - complete|shostak|0.000|
|PVS02nat_limit_TCC12|✅ proved - complete|shostak|0.380|
|PVS02nat_limit_TCC13|✅ proved - complete|shostak|0.280|
|PVS02nat_limit_TCC14|✅ proved - complete|shostak|0.320|
|nat2PVS0_PVS02nat_limit|✅ proved - incomplete|shostak|2.204|
|PVS02nat_nat2PVS0_limit|✅ proved - incomplete|shostak|1.951|
|cons2nat_TCC1|✅ proved - complete|shostak|0.220|
|cons2nat_TCC2|✅ proved - complete|shostak|0.210|
|cons2nat_TCC3|✅ proved - incomplete|shostak|0.470|
|cons2nat_TCC4|✅ proved - incomplete|shostak|0.522|
|listnat2nat_TCC1|✅ proved - complete|shostak|0.260|
|listnat2nat_TCC2|✅ proved - complete|shostak|0.220|
|nat2listnat_aux_TCC1|✅ proved - complete|shostak|0.220|
|nat2listnat_aux_TCC2|✅ proved - complete|shostak|0.212|
|length_nat2listnat_aux|✅ proved - incomplete|shostak|0.360|
|nat2listnat_aux_cons2nat_TCC1|✅ proved - complete|shostak|0.240|
|nat2listnat_aux_cons2nat|✅ proved - incomplete|shostak|0.540|
|cons2nat_nat2listnat_aux_TCC1|✅ proved - incomplete|shostak|0.309|
|cons2nat_nat2listnat_aux|✅ proved - incomplete|shostak|0.742|
|listnat2nat_nat2listnat|✅ proved - incomplete|shostak|0.360|
|nat2listnat_listnat2nat|✅ proved - incomplete|shostak|0.300|
|listPVS0nat2nat_TCC1|✅ proved - complete|shostak|1.112|
|listPVS0nat2nat_TCC2|✅ proved - complete|shostak|0.290|
|listPVS0nat2nat_TCC3|✅ proved - incomplete|shostak|0.953|
|nat2listPVS0nat_TCC1|✅ proved - incomplete|shostak|0.310|
|nat2listPVS0nat_TCC2|✅ proved - incomplete|shostak|0.230|
|nat2listPVS0nat_TCC3|✅ proved - incomplete|shostak|2.334|
|listPVS0nat2nat_nat2listPVS0nat|✅ proved - incomplete|shostak|0.780|
|nat2listPVS0nat_listPVS0nat2nat|✅ proved - incomplete|shostak|1.850|

## `mf_pvs0_lang`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|terminating?_TCC1|✅ proved - complete|shostak|0.240|
|deterministic|✅ proved - complete|shostak|0.246|
|eval_pvs0_ge_n|✅ proved - complete|shostak|0.260|
|semantic_rel_eval|✅ proved - complete|shostak|0.250|
|eval_terminates|✅ proved - complete|shostak|0.230|
|terminating_determined_all|✅ proved - complete|shostak|0.232|
|mu_nonempty|✅ proved - complete|shostak|0.260|
|mu_TCC1|✅ proved - complete|shostak|0.220|
|mu_TCC2|✅ proved - complete|shostak|0.332|
|mu_terminates|✅ proved - complete|shostak|0.413|
|mu_min|✅ proved - complete|shostak|0.264|
|mu_eval_TCC1|✅ proved - complete|shostak|0.310|
|eval_semantic|✅ proved - complete|shostak|0.280|
|mu_eval_correct|✅ proved - complete|shostak|0.340|
|Delta_undetermined|✅ proved - complete|shostak|0.555|
|Delta_non_terminating|✅ proved - complete|shostak|0.220|
|pvs0_not_in_pvs|✅ proved - complete|shostak|0.294|
|offset_rec_TCC1|✅ proved - complete|shostak|0.260|
|offset_rec_TCC2|✅ proved - complete|shostak|0.262|
|offset_rec_TCC3|✅ proved - complete|shostak|0.260|
|offset_rec_TCC4|✅ proved - complete|shostak|0.250|
|offset_rec_TCC5|✅ proved - complete|shostak|0.260|
|offset_rec_TCC6|✅ proved - complete|shostak|0.250|
|offset_rec_TCC7|✅ proved - complete|shostak|0.254|
|offset_composition|✅ proved - complete|shostak|0.942|
|offset_composition2|✅ proved - complete|shostak|0.330|
|add_rec_list_aux_TCC1|✅ proved - complete|shostak|0.250|
|add_rec_list_aux|✅ proved - incomplete|shostak|16.011|
|valid_index_rec_offset|✅ proved - complete|shostak|0.000|
|add_rec_list_aux2_TCC1|✅ proved - complete|shostak|0.230|
|add_rec_list_aux2|✅ proved - incomplete|shostak|15.105|
|add_rec_list|✅ proved - incomplete|shostak|0.520|
|add_rec_list2|✅ proved - incomplete|shostak|0.445|

## `mf_pvs0_expr`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|semantic_rel_expr_TCC1|✅ proved - complete|shostak|0.229|
|semantic_rel_expr_TCC2|✅ proved - complete|shostak|0.240|
|semantic_rel_expr_TCC3|✅ proved - complete|shostak|0.230|
|semantic_rel_expr_TCC4|✅ proved - complete|shostak|0.250|
|eval_expr_TCC1|✅ proved - complete|shostak|0.256|
|eval_expr_TCC2|✅ proved - complete|shostak|0.390|
|eval_expr_TCC3|✅ proved - complete|shostak|0.479|
|eval_expr_TCC4|✅ proved - complete|shostak|0.270|
|eval_expr_TCC5|✅ proved - complete|shostak|0.470|
|eval_expr_TCC6|✅ proved - complete|shostak|0.550|
|eval_expr_TCC7|✅ proved - complete|shostak|0.000|
|eval_expr_TCC8|✅ proved - complete|shostak|0.590|
|eval_expr_TCC9|✅ proved - complete|shostak|0.260|
|eval_expr_TCC10|✅ proved - complete|shostak|0.270|
|eval_expr_TCC11|✅ proved - complete|shostak|0.384|
|eval_expr_ge_n_j_TCC1|✅ proved - complete|shostak|0.230|
|eval_expr_ge_n_j_TCC2|✅ proved - complete|shostak|0.250|
|eval_expr_ge_n_j_TCC3|✅ proved - complete|shostak|0.250|
|eval_expr_ge_n_j_TCC4|✅ proved - complete|shostak|0.261|
|eval_expr_ge_n_j_TCC5|✅ proved - complete|shostak|0.320|
|eval_expr_ge_n_j_TCC6|✅ proved - complete|shostak|0.250|
|eval_expr_ge_n_j_TCC7|✅ proved - complete|shostak|0.270|
|eval_expr_ge_n_j_TCC8|✅ proved - complete|shostak|0.332|
|eval_expr_ge_n_j_TCC9|✅ proved - complete|shostak|0.260|
|eval_expr_ge_n_j_TCC10|✅ proved - complete|shostak|0.320|
|eval_expr_ge_n_j_TCC11|✅ proved - complete|shostak|0.323|
|eval_expr_ge_n_j_TCC12|✅ proved - complete|shostak|0.260|
|eval_expr_ge_n_j_TCC13|✅ proved - complete|shostak|0.270|
|eval_expr_ge_n_j_TCC14|✅ proved - complete|shostak|0.380|
|eval_expr_ge_n_j_TCC15|✅ proved - complete|shostak|0.290|
|eval_expr_ge_n_j_TCC16|✅ proved - complete|shostak|0.240|
|eval_expr_gt_0|✅ proved - complete|shostak|0.230|
|eval_expr_ge_n|✅ proved - complete|shostak|0.371|
|semantic_rel_eval_expr|✅ proved - complete|shostak|3.303|
|eval_expr_n_pos|✅ proved - complete|shostak|0.240|
|deterministic_expr|✅ proved - complete|shostak|0.345|
|eval_expr_semantic_rel_j_TCC1|✅ proved - complete|shostak|0.220|
|eval_expr_semantic_rel_j_TCC2|✅ proved - complete|shostak|0.240|
|eval_expr_semantic_rel_j_TCC3|✅ proved - complete|shostak|0.240|
|eval_expr_semantic_rel_j_TCC4|✅ proved - complete|shostak|0.257|
|eval_expr_semantic_rel_j_TCC5|✅ proved - complete|shostak|0.280|
|eval_expr_semantic_rel_j_TCC6|✅ proved - complete|shostak|0.230|
|eval_expr_semantic_rel_j_TCC7|✅ proved - complete|shostak|0.278|
|eval_expr_semantic_rel_j_TCC8|✅ proved - complete|shostak|0.300|
|eval_expr_semantic_rel_j_TCC9|✅ proved - complete|shostak|0.220|
|eval_expr_semantic_rel_j_TCC10|✅ proved - complete|shostak|0.320|
|eval_expr_semantic_rel_j_TCC11|✅ proved - complete|shostak|0.310|
|eval_expr_semantic_rel_j_TCC12|✅ proved - complete|shostak|0.270|
|eval_expr_semantic_rel_j_TCC13|✅ proved - complete|shostak|0.270|
|eval_expr_semantic_rel_j_TCC14|✅ proved - complete|shostak|0.337|
|eval_expr_semantic_rel_j_TCC15|✅ proved - complete|shostak|0.290|
|eval_expr_semantic_rel_j_TCC16|✅ proved - complete|shostak|0.240|
|eval_expr_semantic_rel|✅ proved - complete|shostak|0.371|
|eval_expr_terminates|✅ proved - complete|shostak|0.290|

## `subtype_length`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|subtype_length|✅ proved - complete|shostak|0.220|
|subtype_nth|✅ proved - complete|shostak|0.249|
|subtype_append|✅ proved - complete|shostak|0.230|
|subtype_every|✅ proved - complete|shostak|0.240|

## `subtype_map`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|subtype_map|✅ proved - complete|shostak|0.290|

## `map_identity`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|map_identity|✅ proved - complete|shostak|0.250|

## `mf_pvs0_Fixedpoint`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|diagonal_function_TCC1|✅ proved - complete|shostak|0.318|
|part2part_TCC1|✅ proved - complete|shostak|0.230|
|part2part_TCC2|✅ proved - incomplete|shostak|0.260|
|part2part_TCC3|✅ proved - incomplete|shostak|0.260|
|fixed_point|✅ proved - incomplete|shostak|0.000|

## `map_append`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|map_append|✅ proved - complete|shostak|0.270|

## `mf_pvs0_Rices_Theorem_Corollaries`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|uniform_halting_problem_undecidability_Turing_complete|✅ proved - incomplete|shostak|0.689|
|fixed_point_existence_undecidability_Turing_complete|✅ proved - incomplete|shostak|0.786|
|self_replication_undecidability_Turing_complete|✅ proved - incomplete|shostak|2.864|
|pvs0_program_equivalence_undecidability_Turing_complete|✅ proved - incomplete|shostak|12.219|
|natural_predicate_undecidability|✅ proved - incomplete|shostak|0.300|

## `mf_pvs0_Rices_Theorem`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Generalized_Recursion_Theorem_TCC1|✅ proved - incomplete|shostak|0.384|
|Generalized_Recursion_Theorem_TCC2|✅ proved - incomplete|shostak|0.470|
|Generalized_Recursion_implies_pvs0_Rices_Theorem|✅ proved - incomplete|shostak|22.623|
|Rice_theorem_for_Turing_complete_pvs0|✅ proved - incomplete|shostak|0.280|

## `mf_pvs0_Recursion_Theorem`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|p_recursive2nat_TCC1|✅ proved - incomplete|shostak|0.304|
|greater_index_rec_TCC1|✅ proved - complete|shostak|0.260|
|greater_index_rec_TCC2|✅ proved - complete|shostak|0.270|
|greater_index_rec_TCC3|✅ proved - complete|shostak|0.270|
|greater_index_rec_TCC4|✅ proved - complete|shostak|0.277|
|greater_index_rec_TCC5|✅ proved - complete|shostak|0.270|
|greater_index_rec_TCC6|✅ proved - complete|shostak|0.280|
|greater_index_rec_TCC7|✅ proved - complete|shostak|0.260|
|greater_index_rec_correctness|✅ proved - complete|shostak|0.571|
|greater_index_rec_list_TCC1|✅ proved - complete|shostak|0.220|
|greater_index_rec_list_TCC2|✅ proved - complete|shostak|0.270|
|greater_index_rec_list_correctness|✅ proved - complete|shostak|0.420|
|printA_TCC1|✅ proved - incomplete|shostak|0.347|
|map_offset_rec_appendn|✅ proved - incomplete|shostak|0.360|
|print_correctness_TCC1|✅ proved - incomplete|shostak|0.350|
|print_correctness|✅ proved - incomplete|shostak|7.990|
|vr_subterm|✅ proved - incomplete|shostak|0.432|
|print_limited|✅ proved - incomplete|shostak|5.600|
|Recursion_Theorem_TCC1|✅ proved - incomplete|shostak|0.400|
|Recursion_Theorem_TCC2|✅ proved - incomplete|shostak|0.490|
|Recursion_Theorem|✅ proved - incomplete|shostak|29.848|

## `mf_pvs0_basic_programs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|equal_TCC1|✅ proved - incomplete|shostak|0.441|
|equal_works|✅ proved - incomplete|shostak|2.254|
|sub_function_TCC1|✅ proved - complete|shostak|0.230|
|sub_TCC1|✅ proved - incomplete|shostak|0.540|
|sub_works|✅ proved - incomplete|shostak|0.000|
|sub1_TCC1|✅ proved - complete|shostak|0.230|
|sub1_TCC2|✅ proved - incomplete|shostak|0.711|
|sub1_works|✅ proved - incomplete|shostak|0.963|
|sum_function_TCC1|✅ proved - complete|shostak|0.230|
|sum_function_TCC2|✅ proved - complete|shostak|0.216|
|sum_TCC1|✅ proved - incomplete|shostak|0.946|
|sum_works|✅ proved - incomplete|shostak|2.113|
|sum_function_correctness|✅ proved - complete|shostak|0.250|
|sum_correctness|✅ proved - incomplete|shostak|0.200|
|mult_TCC1|✅ proved - incomplete|shostak|0.350|
|mult_TCC2|✅ proved - incomplete|shostak|2.899|
|mult_works|✅ proved - incomplete|shostak|6.397|
|mult_function_correctness|✅ proved - complete|shostak|0.271|
|mult_correctness|✅ proved - incomplete|shostak|0.240|

## `mf_pvs0_Turing_Completeness`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|proj_aux_function_TCC1|✅ proved - complete|shostak|0.230|
|proj_aux_function_TCC2|✅ proved - complete|shostak|0.260|
|nat2list_TCC1|✅ proved - complete|shostak|0.230|
|nat2list_TCC2|✅ proved - complete|shostak|0.210|
|nat2list_length|✅ proved - incomplete|shostak|0.339|
|proj_aux_function_not_last|✅ proved - incomplete|shostak|0.424|
|proj_aux_function_last_TCC1|✅ proved - complete|shostak|0.240|
|proj_aux_function_last_TCC2|✅ proved - incomplete|shostak|0.270|
|proj_aux_function_last|✅ proved - incomplete|shostak|1.208|
|nat2list_extension_TCC1|✅ proved - incomplete|shostak|0.250|
|nat2list_extension_TCC2|✅ proved - incomplete|shostak|0.250|
|nat2list_extension|✅ proved - incomplete|shostak|0.523|
|proj_aux_function_works_TCC1|✅ proved - incomplete|shostak|0.260|
|proj_aux_function_works|✅ proved - incomplete|shostak|0.927|
|proj_aux_TCC1|✅ proved - complete|shostak|0.293|
|proj_aux_TCC2|✅ proved - incomplete|shostak|0.922|
|proj_aux_works|✅ proved - incomplete|shostak|0.527|
|proj_TCC1|✅ proved - incomplete|shostak|0.769|
|proj_works|✅ proved - incomplete|shostak|2.005|
|proj_correctness_TCC1|✅ proved - incomplete|shostak|0.240|
|proj_correctness|✅ proved - incomplete|shostak|0.310|
|expr_comp_TCC1|✅ proved - incomplete|shostak|0.342|
|expr_comp_TCC2|✅ proved - incomplete|shostak|0.240|
|rec_indices_chain_offset_is_limited|✅ proved - incomplete|shostak|1.366|
|rec_indices_expr_comp_is_limited|✅ proved - incomplete|shostak|0.959|
|chain_offset_length|✅ proved - incomplete|shostak|0.768|
|comp_TCC1|✅ proved - incomplete|shostak|0.560|
|comp_TCC2|✅ proved - incomplete|shostak|0.866|
|list2nat_TCC1|✅ proved - complete|shostak|0.230|
|list2nat_TCC2|✅ proved - complete|shostak|0.220|
|offset_rec_chain_offset|✅ proved - incomplete|shostak|0.666|
|offset_rec_expr_comp|✅ proved - incomplete|shostak|0.569|
|limits_of_chain_offset_TCC1|✅ proved - incomplete|shostak|1.134|
|limits_of_chain_offset_TCC2|✅ proved - incomplete|shostak|0.260|
|limits_of_chain_offset|✅ proved - incomplete|shostak|13.480|
|chain_offset_prop_TCC1|✅ proved - incomplete|shostak|0.230|
|chain_offset_prop|✅ proved - incomplete|shostak|8.326|
|comp_is_composition_TCC1|✅ proved - incomplete|shostak|0.440|
|comp_is_composition|✅ proved - incomplete|shostak|5.266|
|min_relation_works|✅ proved - incomplete|shostak|0.529|
|min_relation_leq|✅ proved - incomplete|shostak|0.262|
|min_aux_TCC1|✅ proved - incomplete|shostak|0.400|
|min_aux_TCC2|✅ proved - incomplete|shostak|0.640|
|min_aux_leq_eval_expr_TCC1|✅ proved - incomplete|shostak|0.353|
|min_aux_leq_eval_expr|✅ proved - incomplete|shostak|1.984|
|min_aux_leq|✅ proved - incomplete|shostak|0.295|
|min_relation_works2|✅ proved - incomplete|shostak|0.470|
|min_aux_is_min_relation|✅ proved - incomplete|shostak|3.881|
|min_aux_correctness|✅ proved - incomplete|shostak|0.260|
|min_TCC1|✅ proved - incomplete|shostak|0.520|
|min_TCC2|✅ proved - incomplete|shostak|0.750|
|min_correctness|✅ proved - incomplete|shostak|1.778|
|prim_recurrence_relation_TCC1|✅ proved - incomplete|shostak|0.270|
|prim_recurrence_TCC1|✅ proved - incomplete|shostak|0.000|
|prim_recurrence_is_prim_recurrence_relation|✅ proved - incomplete|shostak|24.970|
|prim_recurrence_relation_works_TCC1|✅ proved - incomplete|shostak|0.230|
|prim_recurrence_relation_works_TCC2|✅ proved - incomplete|shostak|0.230|
|prim_recurrence_relation_works_TCC3|✅ proved - incomplete|shostak|0.290|
|prim_recurrence_relation_works_TCC4|✅ proved - incomplete|shostak|0.290|
|prim_recurrence_relation_works_TCC5|✅ proved - incomplete|shostak|0.290|
|prim_recurrence_relation_works|✅ proved - incomplete|shostak|4.749|
|prim_recurrence_correctness|✅ proved - incomplete|shostak|0.290|

## `chain_of_appends`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|chain_of_appends_TCC1|✅ proved - complete|shostak|0.220|
|chain_of_appends_TCC2|✅ proved - complete|shostak|0.250|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib/pvsio_utils/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230712-static-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230710-tcc-gen.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230707-defattach.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230706-extrategies.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`|
