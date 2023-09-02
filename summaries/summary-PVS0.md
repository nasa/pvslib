# Summary for `PVS0`
Run started at 19:0:37 9/1/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **672**   | **672**    | **672**    | **0**  | **8:27.050 s**   |
|top|0|0|0|0|0.000|
|pvs0_expr|52|52|52|0|12.399|
|pvs0_lang|16|16|16|0|2.840|
|pvs0_cc|26|26|26|0|5.770|
|pvs0_props|68|68|68|0|54.768|
|pvs0_to_dg|20|20|20|0|6.324|
|measure_termination_defs|1|1|1|0|0.130|
|pvs0_prelude|1|1|1|0|0.120|
|measure_termination|5|5|5|0|1.162|
|pvs0_termination|17|17|17|0|14.402|
|scp_iff_pvs0|7|7|7|0|2.448|
|pvs0_eval|46|46|46|0|20.935|
|ccg_to_pvs0|3|3|3|0|0.793|
|pvs0_to_ccg|4|4|4|0|1.356|
|pvs0_pvs|3|3|3|0|1.155|
|pvs0_pvs_T|2|2|2|0|1.003|
|pvs0_expressibility|1|1|1|0|0.369|
|counting_pvs0_type|20|20|20|0|6.336|
|pvs0_to_nat|23|23|23|0|14.946|
|pvs0_computable|11|11|11|0|8.021|
|pvs0_halting|5|5|5|0|3.409|
|dg_termination|5|5|5|0|3.542|
|dp_termination|2|2|2|0|0.723|
|dp_to_tcc|3|3|3|0|0.846|
|factorial_pvs0|12|12|12|0|10.355|
|factorial_pvs|4|4|4|0|5.440|
|ack_pvs0|16|16|16|0|5.886|
|ack_pvs|9|9|9|0|17.761|
|fibo_pvs0|9|9|9|0|5.423|
|fibo_pvs|5|5|5|0|8.865|
|mf_pvs0_top|0|0|0|0|0.000|
|mf_pvs0_halting|5|5|5|0|1.596|
|mf_pvs0_computable|59|59|59|0|26.008|
|mf_pvs0_lang|33|33|33|0|26.693|
|mf_pvs0_expr|54|54|54|0|19.309|
|subtype_length|4|4|4|0|0.939|
|subtype_map|1|1|1|0|0.290|
|map_identity|1|1|1|0|0.240|
|mf_pvs0_Fixedpoint|5|5|5|0|8.501|
|map_append|1|1|1|0|0.271|
|mf_pvs0_Rices_Theorem_Corollaries|5|5|5|0|9.463|
|mf_pvs0_Rices_Theorem|4|4|4|0|31.837|
|mf_pvs0_Recursion_Theorem|21|21|21|0|49.123|
|mf_pvs0_basic_programs|19|19|19|0|21.885|
|mf_pvs0_Turing_Completeness|62|62|62|0|1:32.888|
|chain_of_appends|2|2|2|0|0.480|
## Detailed Summary 
## `top`
No formula declaration found.
## `pvs0_expr`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|semantic_rel_expr_TCC1|✅ proved - complete|shostak|0.150|
|semantic_rel_expr_TCC2|✅ proved - complete|shostak|0.130|
|semantic_rel_expr_TCC3|✅ proved - complete|shostak|0.130|
|semantic_rel_expr_TCC4|✅ proved - complete|shostak|0.140|
|eval_expr_TCC1|✅ proved - complete|shostak|0.138|
|eval_expr_TCC2|✅ proved - complete|shostak|0.280|
|eval_expr_TCC3|✅ proved - complete|shostak|0.365|
|eval_expr_TCC4|✅ proved - complete|shostak|0.160|
|eval_expr_TCC5|✅ proved - complete|shostak|0.350|
|eval_expr_TCC6|✅ proved - complete|shostak|0.439|
|eval_expr_TCC7|✅ proved - complete|shostak|0.430|
|eval_expr_TCC8|✅ proved - complete|shostak|0.409|
|eval_expr_TCC9|✅ proved - complete|shostak|0.150|
|eval_expr_TCC10|✅ proved - complete|shostak|0.150|
|eval_expr_TCC11|✅ proved - complete|shostak|0.260|
|eval_expr_ge_n_j_TCC1|✅ proved - complete|shostak|0.120|
|eval_expr_ge_n_j_TCC2|✅ proved - complete|shostak|0.170|
|eval_expr_ge_n_j_TCC3|✅ proved - complete|shostak|0.140|
|eval_expr_ge_n_j_TCC4|✅ proved - complete|shostak|0.150|
|eval_expr_ge_n_j_TCC5|✅ proved - complete|shostak|0.176|
|eval_expr_ge_n_j_TCC6|✅ proved - complete|shostak|0.130|
|eval_expr_ge_n_j_TCC7|✅ proved - complete|shostak|0.160|
|eval_expr_ge_n_j_TCC8|✅ proved - complete|shostak|0.190|
|eval_expr_ge_n_j_TCC9|✅ proved - complete|shostak|0.150|
|eval_expr_ge_n_j_TCC10|✅ proved - complete|shostak|0.200|
|eval_expr_ge_n_j_TCC11|✅ proved - complete|shostak|0.200|
|eval_expr_ge_n_j_TCC12|✅ proved - complete|shostak|0.140|
|eval_expr_ge_n_j_TCC13|✅ proved - complete|shostak|0.140|
|eval_expr_ge_n_j_TCC14|✅ proved - complete|shostak|0.228|
|eval_expr_ge_n_j_TCC15|✅ proved - complete|shostak|0.130|
|eval_expr_gt_0|✅ proved - complete|shostak|0.120|
|eval_expr_ge_n|✅ proved - complete|shostak|0.269|
|semantic_rel_eval_expr|✅ proved - complete|shostak|3.052|
|eval_expr_n_pos|✅ proved - complete|shostak|0.128|
|deterministic_expr|✅ proved - complete|shostak|0.230|
|eval_expr_semantic_rel_j_TCC1|✅ proved - complete|shostak|0.140|
|eval_expr_semantic_rel_j_TCC2|✅ proved - complete|shostak|0.128|
|eval_expr_semantic_rel_j_TCC3|✅ proved - complete|shostak|0.120|
|eval_expr_semantic_rel_j_TCC4|✅ proved - complete|shostak|0.140|
|eval_expr_semantic_rel_j_TCC5|✅ proved - complete|shostak|0.150|
|eval_expr_semantic_rel_j_TCC6|✅ proved - complete|shostak|0.110|
|eval_expr_semantic_rel_j_TCC7|✅ proved - complete|shostak|0.147|
|eval_expr_semantic_rel_j_TCC8|✅ proved - complete|shostak|0.150|
|eval_expr_semantic_rel_j_TCC9|✅ proved - complete|shostak|0.120|
|eval_expr_semantic_rel_j_TCC10|✅ proved - complete|shostak|0.150|
|eval_expr_semantic_rel_j_TCC11|✅ proved - complete|shostak|0.169|
|eval_expr_semantic_rel_j_TCC12|✅ proved - complete|shostak|0.140|
|eval_expr_semantic_rel_j_TCC13|✅ proved - complete|shostak|0.140|
|eval_expr_semantic_rel_j_TCC14|✅ proved - complete|shostak|0.170|
|eval_expr_semantic_rel_j_TCC15|✅ proved - complete|shostak|0.110|
|eval_expr_semantic_rel|✅ proved - complete|shostak|0.240|
|eval_expr_terminates|✅ proved - complete|shostak|0.171|

## `pvs0_lang`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|deterministic|✅ proved - complete|shostak|0.130|
|eval_pvs0_ge_n|✅ proved - complete|shostak|0.130|
|semantic_rel_eval|✅ proved - complete|shostak|0.150|
|eval_terminates|✅ proved - complete|shostak|0.100|
|terminating_determined_all|✅ proved - complete|shostak|0.119|
|mu_nonempty|✅ proved - complete|shostak|0.140|
|mu_TCC1|✅ proved - complete|shostak|0.110|
|mu_TCC2|✅ proved - complete|shostak|0.210|
|mu_terminates|✅ proved - complete|shostak|0.299|
|mu_min|✅ proved - complete|shostak|0.160|
|mu_eval_TCC1|✅ proved - complete|shostak|0.200|
|eval_semantic|✅ proved - complete|shostak|0.160|
|mu_eval_correct|✅ proved - complete|shostak|0.200|
|Delta_undetermined|✅ proved - complete|shostak|0.401|
|Delta_non_terminating|✅ proved - complete|shostak|0.130|
|pvs0_not_in_pvs|✅ proved - complete|shostak|0.201|

## `pvs0_cc`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|eval_conds_TCC1|✅ proved - complete|shostak|0.170|
|valid_path_TCC1|✅ proved - incomplete|shostak|0.210|
|valid_path_TCC2|✅ proved - incomplete|shostak|0.202|
|valid_path_TCC3|✅ proved - incomplete|shostak|0.210|
|valid_path_TCC4|✅ proved - incomplete|shostak|0.190|
|valid_path_TCC5|✅ proved - incomplete|shostak|0.200|
|valid_path_TCC6|✅ proved - incomplete|shostak|0.220|
|valid_path_TCC7|✅ proved - incomplete|shostak|0.210|
|subterm_at_TCC1|✅ proved - incomplete|shostak|0.132|
|subterm_at_TCC2|✅ proved - incomplete|shostak|0.130|
|subterm_at_TCC3|✅ proved - incomplete|shostak|0.190|
|subterm_at_TCC4|✅ proved - incomplete|shostak|0.160|
|subterm_at_TCC5|✅ proved - incomplete|shostak|0.141|
|subterm_at_TCC6|✅ proved - incomplete|shostak|0.180|
|subterm_at_TCC7|✅ proved - incomplete|shostak|0.296|
|subterm_at_TCC8|✅ proved - incomplete|shostak|0.230|
|subterm_at_TCC9|✅ proved - incomplete|shostak|0.180|
|subterm_at_TCC10|✅ proved - incomplete|shostak|0.126|
|subterm_at_TCC11|✅ proved - incomplete|shostak|0.190|
|subterm_at_TCC12|✅ proved - incomplete|shostak|0.170|
|subterm_at_TCC13|✅ proved - incomplete|shostak|0.150|
|subterm_at_TCC14|✅ proved - incomplete|shostak|0.240|
|subterm_at_TCC15|✅ proved - incomplete|shostak|0.210|
|subterm_at_TCC16|✅ proved - incomplete|shostak|0.120|
|path_conditions_TCC1|✅ proved - incomplete|shostak|1.163|
|path_conditions_TCC2|✅ proved - incomplete|shostak|0.150|

## `pvs0_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|subterm_transitive|✅ proved - complete|shostak|0.556|
|null_path|✅ proved - incomplete|shostak|0.000|
|valid_paths_subexpr|✅ proved - incomplete|shostak|2.573|
|subterm_append_TCC1|✅ proved - incomplete|shostak|0.140|
|subterm_append|✅ proved - incomplete|shostak|2.604|
|valid_0_path_ext|✅ proved - incomplete|shostak|0.646|
|valid_1_path_ext|✅ proved - incomplete|shostak|0.812|
|valid_2_path_ext|✅ proved - incomplete|shostak|0.662|
|app_prefix_of_path_ext|✅ proved - incomplete|shostak|4.181|
|cnst_vr_path_ext|✅ proved - incomplete|shostak|0.195|
|op1_rec_path_ext|✅ proved - incomplete|shostak|0.876|
|op2_path_ext|✅ proved - incomplete|shostak|1.210|
|ite_path_ext|✅ proved - incomplete|shostak|1.634|
|valid_paths_TCC1|✅ proved - incomplete|shostak|0.170|
|valid_paths_TCC2|✅ proved - complete|shostak|0.345|
|valid_paths_TCC3|✅ proved - incomplete|shostak|0.919|
|valid_paths_TCC4|✅ proved - incomplete|shostak|1.264|
|valid_paths_TCC5|✅ proved - incomplete|shostak|0.117|
|valid_paths_TCC6|✅ proved - complete|shostak|0.110|
|valid_paths_TCC7|✅ proved - complete|shostak|0.120|
|valid_paths_TCC8|✅ proved - incomplete|shostak|1.974|
|valid_paths_TCC9|✅ proved - incomplete|shostak|4.312|
|valid_paths_TCC10|✅ proved - incomplete|shostak|0.120|
|valid_paths_TCC11|✅ proved - complete|shostak|0.130|
|valid_paths_TCC12|✅ proved - incomplete|shostak|0.911|
|valid_paths_TCC13|✅ proved - incomplete|shostak|1.267|
|valid_paths_TCC14|✅ proved - incomplete|shostak|0.130|
|valid_paths_TCC15|✅ proved - complete|shostak|0.120|
|valid_paths_TCC16|✅ proved - complete|shostak|0.150|
|valid_paths_TCC17|✅ proved - complete|shostak|0.150|
|valid_paths_TCC18|✅ proved - incomplete|shostak|0.000|
|valid_paths_TCC19|✅ proved - incomplete|shostak|8.309|
|valid_paths_TCC20|✅ proved - incomplete|shostak|0.170|
|valid_paths_TCC21|✅ proved - incomplete|shostak|0.170|
|subset_member_sl|✅ proved - incomplete|shostak|0.450|
|suffix_subset_sl|✅ proved - incomplete|shostak|0.140|
|path_conditions_cons_TCC1|✅ proved - incomplete|shostak|0.336|
|path_conditions_cons_TCC2|✅ proved - incomplete|shostak|0.165|
|path_conditions_cons|✅ proved - incomplete|shostak|0.180|
|path_conditions_unmodified_TCC1|✅ proved - incomplete|shostak|0.170|
|path_conditions_unmodified|✅ proved - incomplete|shostak|0.147|
|path_conditions_unmodified2_TCC1|✅ proved - incomplete|shostak|0.160|
|path_conditions_unmodified2|✅ proved - incomplete|shostak|0.180|
|suffix_path_cnds_suffix|✅ proved - incomplete|shostak|0.867|
|suffix_path_cnds|✅ proved - incomplete|shostak|0.150|
|condition_is_subterm|✅ proved - incomplete|shostak|1.807|
|condition_is_subterm_append|✅ proved - incomplete|shostak|0.623|
|path_of_path_conditions|✅ proved - incomplete|shostak|2.199|
|member_conds_rec|✅ proved - complete|shostak|0.302|
|member_conds_rec2|✅ proved - complete|shostak|0.277|
|eval_conds_reverse|✅ proved - incomplete|shostak|0.170|
|suffix_conds_rec|✅ proved - incomplete|shostak|0.140|
|suffix_conds_valid_sub|✅ proved - incomplete|shostak|0.150|
|suffix_conds_valid|✅ proved - incomplete|shostak|0.267|
|rec_decreasing_TCC1|✅ proved - incomplete|shostak|0.150|
|rec_decreasing_TCC2|✅ proved - incomplete|shostak|0.160|
|rec_decreasing_TCC3|✅ proved - incomplete|shostak|0.203|
|rec_decreasing_TCC4|✅ proved - incomplete|shostak|0.170|
|rec_decreasing|✅ proved - incomplete|shostak|4.293|
|rec_mu_decreasing_TCC1|✅ proved - incomplete|shostak|0.174|
|rec_mu_decreasing_TCC2|✅ proved - incomplete|shostak|0.220|
|rec_mu_decreasing_TCC3|✅ proved - incomplete|shostak|0.280|
|rec_mu_decreasing_TCC4|✅ proved - incomplete|shostak|0.310|
|rec_mu_decreasing|✅ proved - incomplete|shostak|0.870|
|decreasing_rec_TCC1|✅ proved - incomplete|shostak|0.140|
|decreasing_rec_TCC2|✅ proved - incomplete|shostak|0.230|
|decreasing_rec_TCC3|✅ proved - incomplete|shostak|0.183|
|decreasing_rec|✅ proved - incomplete|shostak|1.458|

## `pvs0_to_dg`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|pvs0_to_dg_make_cc_TCC1|✅ proved - incomplete|shostak|0.130|
|pvs0_to_dg_make_cc_TCC2|✅ proved - incomplete|shostak|0.152|
|pvs0_to_dg_paths_vertices_TCC1|✅ proved - incomplete|shostak|0.248|
|pvs0_to_dg_paths_vertices_TCC2|✅ proved - incomplete|shostak|0.170|
|pvs0_to_dg_paths_vertices_TCC3|✅ proved - incomplete|shostak|0.171|
|pvs0_to_dg_paths_vertices_TCC4|✅ proved - incomplete|shostak|0.250|
|pvs0_to_dg_paths_vertices_TCC5|✅ proved - incomplete|shostak|0.428|
|pvs0_to_dg_paths_vertices_TCC6|✅ proved - incomplete|shostak|0.275|
|pvs0_to_dg_paths_vertices_TCC7|✅ proved - incomplete|shostak|0.432|
|pvs0_to_dg_vertices_completeness|✅ proved - incomplete|shostak|0.612|
|cc_of_pvs0_soundness|✅ proved - incomplete|shostak|0.221|
|cc_of_pvs0_completeness|✅ proved - incomplete|shostak|0.150|
|pvs0_ccs_rec_TCC1|✅ proved - incomplete|shostak|0.150|
|pvs0_ccs_rec_TCC2|✅ proved - incomplete|shostak|0.272|
|pvs0_ccs_rec_TCC3|✅ proved - incomplete|shostak|0.170|
|pvs0_ccs_rec_TCC4|✅ proved - incomplete|shostak|0.285|
|pvs0_ccs_rec_TCC5|✅ proved - incomplete|shostak|0.381|
|pvs0_ccs_completness|✅ proved - incomplete|shostak|0.273|
|dg_vert_valid_cc|✅ proved - incomplete|shostak|0.599|
|pvs0_to_fully_connected_dg_sound_ccg|✅ proved - incomplete|shostak|0.955|

## `measure_termination_defs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|wfm_tcc_TCC1|✅ proved - incomplete|shostak|0.130|

## `pvs0_prelude`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|lt_TCC1|✅ proved - complete|shostak|0.120|

## `measure_termination`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|mu_soundness_TCC1|✅ proved - incomplete|shostak|0.345|
|mu_soundness_TCC2|✅ proved - incomplete|shostak|0.220|
|mu_soundness|✅ proved - incomplete|shostak|0.234|
|terminates_implies_pvs0_tcc_TCC1|✅ proved - complete|shostak|0.170|
|terminates_implies_pvs0_tcc|✅ proved - incomplete|shostak|0.193|

## `pvs0_termination`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|lt_val_wf|✅ proved - incomplete|shostak|0.259|
|lt_val_no_desc_inf_branch|✅ proved - incomplete|shostak|0.000|
|omega_is_eval_ub_TCC1|✅ proved - incomplete|shostak|0.140|
|omega_is_eval_ub_TCC2|✅ proved - incomplete|shostak|0.134|
|omega_is_eval_ub|✅ proved - incomplete|shostak|10.763|
|omega_is_eval_ub_bis|✅ proved - incomplete|shostak|0.158|
|pvs0_tcc_implies_terminates|✅ proved - incomplete|shostak|0.558|
|pvs0_tcc_termination_j|✅ proved - incomplete|shostak|0.120|
|mu_le_omega_TCC1|✅ proved - incomplete|shostak|0.120|
|mu_le_omega_TCC2|✅ proved - incomplete|shostak|0.130|
|mu_le_omega_TCC3|✅ proved - incomplete|shostak|0.130|
|mu_le_omega|✅ proved - incomplete|shostak|0.540|
|Omega_n_TCC1|✅ proved - incomplete|shostak|0.120|
|Omega_n_TCC2|✅ proved - incomplete|shostak|0.133|
|Omega_n_TCC3|✅ proved - incomplete|shostak|0.300|
|Omega_preval_TCC1|✅ proved - incomplete|shostak|0.200|
|Omega_eval_correct|✅ proved - incomplete|shostak|0.597|

## `scp_iff_pvs0`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|R_wf|✅ proved - incomplete|shostak|0.356|
|R_no_desc_inf_branch|✅ proved - incomplete|shostak|0.993|
|scp_implies_pvs0_tcc_TCC1|✅ proved - incomplete|shostak|0.210|
|scp_implies_pvs0_tcc|✅ proved - incomplete|shostak|0.295|
|pvs0_tcc_implies_scp_TCC1|✅ proved - complete|shostak|0.120|
|pvs0_tcc_implies_scp|✅ proved - incomplete|shostak|0.330|
|scp_iff_pvs0_terminates|✅ proved - incomplete|shostak|0.144|

## `pvs0_eval`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|pvs0_eval_expr_TCC1|✅ proved - incomplete|shostak|0.250|
|pvs0_eval_expr_TCC2|✅ proved - incomplete|shostak|0.130|
|pvs0_eval_expr_TCC3|✅ proved - incomplete|shostak|0.130|
|pvs0_eval_expr_TCC4|✅ proved - incomplete|shostak|0.161|
|pvs0_eval_expr_TCC5|✅ proved - incomplete|shostak|0.180|
|pvs0_eval_expr_TCC6|✅ proved - incomplete|shostak|0.608|
|pvs0_eval_expr_TCC7|✅ proved - incomplete|shostak|0.478|
|pvs0_eval_expr_TCC8|✅ proved - incomplete|shostak|0.397|
|pvs0_eval_expr_TCC9|✅ proved - incomplete|shostak|0.241|
|pvs0_eval_expr_TCC10|✅ proved - incomplete|shostak|0.673|
|pvs0_eval_expr_TCC11|✅ proved - incomplete|shostak|0.584|
|pvs0_eval_expr_TCC12|✅ proved - incomplete|shostak|0.723|
|pvs0_eval_expr_TCC13|✅ proved - incomplete|shostak|0.611|
|pvs0_eval_expr_TCC14|✅ proved - incomplete|shostak|0.250|
|pvs0_eval_expr_TCC15|✅ proved - incomplete|shostak|0.265|
|pvs0_eval_expr_TCC16|✅ proved - incomplete|shostak|0.614|
|pvs0_eval_expr_TCC17|✅ proved - incomplete|shostak|0.624|
|pvs0_eval_expr_TCC18|✅ proved - incomplete|shostak|0.876|
|pvs0_eval_expr_TCC19|✅ proved - incomplete|shostak|0.669|
|pvs0_eval_expr_TCC20|✅ proved - incomplete|shostak|0.661|
|pvs0_eval_expr_TCC21|✅ proved - incomplete|shostak|0.921|
|pvs0_eval_expr_TCC22|✅ proved - incomplete|shostak|0.718|
|pvs0_eval_expr_TCC23|✅ proved - incomplete|shostak|0.673|
|pvs0_eval_expr_TCC24|✅ proved - incomplete|shostak|0.586|
|pvs0_eval_expr_TCC25|✅ proved - incomplete|shostak|0.483|
|pvs0_eval_expr_TCC26|✅ proved - incomplete|shostak|0.404|
|pvs0_eval_expr_TCC27|✅ proved - incomplete|shostak|1.197|
|pvs0_eval_expr_TCC28|✅ proved - incomplete|shostak|0.447|
|pvs0_eval_TCC1|✅ proved - incomplete|shostak|0.366|
|pvs0_eval_correct|✅ proved - incomplete|shostak|0.156|
|terminates_expr_transitive_TCC1|✅ proved - incomplete|shostak|0.150|
|terminates_expr_transitive_TCC2|✅ proved - incomplete|shostak|0.180|
|terminates_expr_transitive|✅ proved - incomplete|shostak|0.000|
|suffix_of_valid_conditions|✅ proved - incomplete|shostak|0.315|
|pvs0_eval_conds_TCC1|✅ proved - incomplete|shostak|0.150|
|pvs0_eval_conds_TCC2|✅ proved - incomplete|shostak|0.313|
|pvs0_eval_conds_TCC3|✅ proved - incomplete|shostak|0.285|
|pvs0_eval_conds_TCC4|✅ proved - incomplete|shostak|0.419|
|pvs0_eval_conds_TCC5|✅ proved - incomplete|shostak|0.372|
|pvs0_eval_conds_TCC6|✅ proved - incomplete|shostak|1.382|
|pvs0_eval_conds_corrrect_TCC1|✅ proved - incomplete|shostak|0.197|
|pvs0_eval_conds_corrrect|✅ proved - incomplete|shostak|0.160|
|pvs0_tcc_TCC1|✅ proved - incomplete|shostak|0.363|
|pvs0_tcc_TCC2|✅ proved - incomplete|shostak|0.835|
|pvs0_tccs_correct_TCC1|✅ proved - complete|shostak|0.180|
|pvs0_tccs_correct|✅ proved - incomplete|shostak|0.558|

## `ccg_to_pvs0`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|ccg_implies_scp_pvs0|✅ proved - incomplete|shostak|0.521|
|ccg_implies_pvs0_tcc_TCC1|✅ proved - incomplete|shostak|0.140|
|ccg_implies_pvs0_tcc|✅ proved - incomplete|shostak|0.132|

## `pvs0_to_ccg`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|scp_implies_ccg_pvs0_TCC1|✅ proved - incomplete|shostak|0.360|
|scp_implies_ccg_pvs0|✅ proved - incomplete|shostak|0.627|
|pvs0_tcc_implies_ccg_TCC1|✅ proved - complete|shostak|0.180|
|pvs0_tcc_implies_ccg|✅ proved - incomplete|shostak|0.189|

## `pvs0_pvs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|make_pvs0_TCC1|✅ proved - complete|shostak|0.380|
|pvs_to_pvs0_aux|✅ proved - incomplete|shostak|0.565|
|pvs_to_pvs0|✅ proved - incomplete|shostak|0.210|

## `pvs0_pvs_T`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|make_pvs0_TCC1|✅ proved - complete|shostak|0.423|
|pvs_to_pvs0|✅ proved - incomplete|shostak|0.580|

## `pvs0_expressibility`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|TerminationExpressible|✅ proved - incomplete|shostak|0.369|

## `counting_pvs0_type`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|G_TCC1|✅ proved - complete|shostak|0.210|
|base_TCC1|✅ proved - complete|shostak|0.360|
|inop1_at_TCC1|✅ proved - complete|shostak|0.213|
|inop1_at_TCC2|✅ proved - complete|shostak|0.220|
|op1_at_TCC1|✅ proved - complete|shostak|0.323|
|op1_upto_TCC1|✅ proved - complete|shostak|0.430|
|inop2_at_TCC1|✅ proved - complete|shostak|0.207|
|finpair_TCC1|✅ proved - incomplete|shostak|0.400|
|op2_at_TCC1|✅ proved - incomplete|shostak|0.326|
|op2_upto_TCC1|✅ proved - incomplete|shostak|0.454|
|fintrip_TCC1|✅ proved - incomplete|shostak|0.500|
|ite_set_TCC1|✅ proved - incomplete|shostak|0.330|
|inrec_set_TCC1|✅ proved - complete|shostak|0.210|
|rec_set_TCC1|✅ proved - complete|shostak|0.300|
|level_set_member|✅ proved - incomplete|shostak|0.221|
|level_TCC1|✅ proved - complete|shostak|0.220|
|level_TCC2|✅ proved - complete|shostak|0.200|
|levels_increase|✅ proved - incomplete|shostak|0.320|
|levels_cover|✅ proved - incomplete|shostak|0.692|
|nat_onto_PVS0Expr|✅ proved - incomplete|shostak|0.200|

## `pvs0_to_nat`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|nat2PVS0_TCC1|✅ proved - complete|shostak|0.280|
|nat2PVS0_TCC2|✅ proved - complete|shostak|0.280|
|nat2PVS0_TCC3|✅ proved - complete|shostak|0.275|
|nat2PVS0_TCC4|✅ proved - complete|shostak|0.200|
|nat2PVS0_TCC5|✅ proved - complete|shostak|0.270|
|nat2PVS0_TCC6|✅ proved - incomplete|shostak|0.290|
|nat2PVS0_TCC7|✅ proved - incomplete|shostak|0.340|
|nat2PVS0_TCC8|✅ proved - incomplete|shostak|0.327|
|nat2PVS0_TCC9|✅ proved - incomplete|shostak|0.300|
|nat2PVS0_TCC10|✅ proved - complete|shostak|0.420|
|nat2PVS0_TCC11|✅ proved - incomplete|shostak|0.250|
|nat2PVS0_TCC12|✅ proved - incomplete|shostak|0.290|
|nat2PVS0_TCC13|✅ proved - incomplete|shostak|0.280|
|PVS02nat_TCC1|✅ proved - complete|shostak|0.250|
|PVS02nat_TCC2|✅ proved - complete|shostak|0.250|
|PVS02nat_TCC3|✅ proved - complete|shostak|0.260|
|PVS02nat_TCC4|✅ proved - complete|shostak|0.250|
|PVS02nat_TCC5|✅ proved - complete|shostak|0.260|
|PVS02nat_TCC6|✅ proved - complete|shostak|0.260|
|PVS02nat_TCC7|✅ proved - complete|shostak|0.260|
|nat2PVS0_inverse|✅ proved - incomplete|shostak|2.357|
|PVS02nat_inverse|✅ proved - incomplete|shostak|6.760|
|nat2PVS0_bijection|✅ proved - incomplete|shostak|0.237|

## `pvs0_computable`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|pvs0_level_TCC1|✅ proved - complete|shostak|0.210|
|level_surjective|✅ proved - incomplete|shostak|4.910|
|level_surjection_TCC1|✅ proved - incomplete|shostak|0.270|
|representantion|✅ proved - incomplete|shostak|0.396|
|pvs0_level_computable_TCC1|✅ proved - incomplete|shostak|0.370|
|pvs0_level_computable_TCC2|✅ proved - incomplete|shostak|0.250|
|pvs0_level_computable_terminating|✅ proved - incomplete|shostak|0.230|
|pvs0_level_computable_n|✅ proved - incomplete|shostak|0.451|
|PVS0_computable_is_terminating|✅ proved - incomplete|shostak|0.220|
|PVS0_computable_is_partial_recursive|✅ proved - incomplete|shostak|0.220|
|pvs0_level1_is_2|✅ proved - incomplete|shostak|0.494|

## `pvs0_halting`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|nat_to_PVS0_TCC1|✅ proved - incomplete|shostak|0.310|
|true_val_TCC1|✅ proved - complete|shostak|0.234|
|Oracle_TCC1|✅ proved - incomplete|shostak|0.400|
|pvs0_decidability|✅ proved - incomplete|shostak|0.841|
|pvs0_undecidability|✅ proved - incomplete|shostak|1.624|

## `dg_termination`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|M_TCC1|✅ proved - complete|shostak|0.340|
|dg_termination?_TCC1|✅ proved - incomplete|shostak|0.757|
|dg_termination?_TCC2|✅ proved - incomplete|shostak|0.730|
|pvs0_to_dg_sound_dpg_digraph|✅ proved - incomplete|shostak|1.054|
|dg_termination_implies_ccg|✅ proved - incomplete|shostak|0.661|

## `dp_termination`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|lt_wfm_dp_well_founded|✅ proved - incomplete|shostak|0.270|
|dp_dec_implies_dp_termination|✅ proved - incomplete|shostak|0.453|

## `dp_to_tcc`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|dp_termination_implies_scp_TCC1|✅ proved - complete|shostak|0.220|
|dp_termination_implies_scp|✅ proved - incomplete|shostak|0.396|
|dp_termination_implies_dp_dec|✅ proved - incomplete|shostak|0.230|

## `factorial_pvs0`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|factorial_op1_TCC1|✅ proved - complete|shostak|0.220|
|IMP_ccg_to_mwg_TCC1|✅ proved - complete|shostak|0.210|
|M_TCC1|✅ proved - complete|shostak|0.770|
|IMP_ccg_to_pvs0_TCC1|✅ proved - complete|shostak|0.701|
|IMP_bounding_circuits_TCC1|✅ proved - complete|shostak|0.690|
|A_TCC1|✅ proved - complete|shostak|0.710|
|A_TCC2|✅ proved - complete|shostak|0.630|
|factorial_mm_TCC1|✅ proved - incomplete|shostak|0.000|
|pvs0_factorial_terminating|✅ proved - incomplete|shostak|4.333|
|pvs0_factorial_tcc_termination|✅ proved - incomplete|shostak|0.700|
|factorial_msr|✅ proved - incomplete|shostak|0.690|
|factorial_wfm_TCC1|✅ proved - incomplete|shostak|0.701|

## `factorial_pvs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|factorial_TCC1|✅ proved - complete|shostak|0.710|
|factorial_TCC2|✅ proved - incomplete|shostak|1.610|
|factorial_TCC3|✅ proved - incomplete|shostak|1.591|
|factorial_TCC4|✅ proved - incomplete|shostak|1.529|

## `ack_pvs0`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|ack_op1_TCC1|✅ proved - complete|shostak|0.230|
|ack_op2_TCC1|✅ proved - complete|shostak|0.220|
|M1_TCC1|✅ proved - complete|shostak|0.380|
|A0_TCC1|✅ proved - complete|shostak|0.240|
|A0_TCC2|✅ proved - complete|shostak|0.220|
|A0_TCC3|✅ proved - complete|shostak|0.210|
|A1_TCC1|✅ proved - complete|shostak|0.220|
|A1_TCC2|✅ proved - complete|shostak|0.210|
|A2_TCC1|✅ proved - complete|shostak|0.230|
|A2_TCC2|✅ proved - complete|shostak|0.210|
|A2_TCC3|✅ proved - complete|shostak|0.227|
|ack_mm_TCC1|✅ proved - incomplete|shostak|2.149|
|pvs0_ack_terminating|✅ proved - incomplete|shostak|0.420|
|pvs0_ack_tcc_termination|✅ proved - incomplete|shostak|0.240|
|ack_msr|✅ proved - incomplete|shostak|0.230|
|ack_wfm_TCC1|✅ proved - incomplete|shostak|0.250|

## `ack_pvs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|ack_TCC1|✅ proved - incomplete|shostak|2.949|
|ack_TCC2|✅ proved - complete|shostak|0.250|
|ack_TCC3|✅ proved - incomplete|shostak|4.112|
|ack_TCC4|✅ proved - incomplete|shostak|2.865|
|ack_TCC5|✅ proved - complete|shostak|0.260|
|ack_TCC6|✅ proved - complete|shostak|0.250|
|ack_TCC7|✅ proved - incomplete|shostak|0.000|
|ack_TCC8|✅ proved - incomplete|shostak|4.131|
|ack_TCC9|✅ proved - incomplete|shostak|2.944|

## `fibo_pvs0`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|fibo_op1_TCC1|✅ proved - complete|shostak|0.220|
|M_TCC1|✅ proved - complete|shostak|0.399|
|A_TCC1|✅ proved - complete|shostak|0.250|
|A_TCC2|✅ proved - complete|shostak|0.240|
|fibo_mm_TCC1|✅ proved - incomplete|shostak|3.133|
|pvs0_fibo_terminating|✅ proved - incomplete|shostak|0.431|
|pvs0_fibo_tcc_termination|✅ proved - incomplete|shostak|0.250|
|fibo_msr|✅ proved - incomplete|shostak|0.240|
|fibo_wfm_TCC1|✅ proved - incomplete|shostak|0.260|

## `fibo_pvs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|fibo_TCC1|✅ proved - incomplete|shostak|2.256|
|fibo_TCC2|✅ proved - incomplete|shostak|2.245|
|fibo_TCC3|✅ proved - complete|shostak|0.262|
|fibo_TCC4|✅ proved - incomplete|shostak|1.798|
|fibo_TCC5|✅ proved - incomplete|shostak|2.304|

## `mf_pvs0_top`
No formula declaration found.
## `mf_pvs0_halting`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|nat2p_recursive_TCC1|✅ proved - incomplete|shostak|0.350|
|true_val_TCC1|✅ proved - complete|shostak|0.230|
|Oracle_TCC1|✅ proved - incomplete|shostak|0.360|
|mf_pvs0_halting_problem_decidability|✅ proved - incomplete|shostak|0.656|
|mf_pvs0_halting_problem_undecidability|✅ proved - incomplete|shostak|0.000|

## `mf_pvs0_computable`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|nat2PVS0_limit_TCC1|✅ proved - complete|shostak|0.221|
|nat2PVS0_limit_TCC2|✅ proved - complete|shostak|0.300|
|nat2PVS0_limit_TCC3|✅ proved - complete|shostak|0.280|
|nat2PVS0_limit_TCC4|✅ proved - complete|shostak|0.379|
|nat2PVS0_limit_TCC5|✅ proved - complete|shostak|0.290|
|nat2PVS0_limit_TCC6|✅ proved - complete|shostak|0.440|
|nat2PVS0_limit_TCC7|✅ proved - complete|shostak|0.421|
|nat2PVS0_limit_TCC8|✅ proved - complete|shostak|0.846|
|nat2PVS0_limit_TCC9|✅ proved - complete|shostak|0.291|
|nat2PVS0_limit_TCC10|✅ proved - incomplete|shostak|0.360|
|nat2PVS0_limit_TCC11|✅ proved - incomplete|shostak|0.320|
|nat2PVS0_limit_TCC12|✅ proved - incomplete|shostak|0.380|
|nat2PVS0_limit_TCC13|✅ proved - incomplete|shostak|0.290|
|nat2PVS0_limit_TCC14|✅ proved - incomplete|shostak|0.290|
|nat2PVS0_limit_TCC15|✅ proved - incomplete|shostak|0.370|
|nat2PVS0_limit_TCC16|✅ proved - complete|shostak|0.510|
|nat2PVS0_limit_TCC17|✅ proved - incomplete|shostak|0.260|
|nat2PVS0_limit_TCC18|✅ proved - incomplete|shostak|0.290|
|nat2PVS0_limit_TCC19|✅ proved - incomplete|shostak|0.280|
|nat2PVS0_limit_TCC20|✅ proved - incomplete|shostak|1.510|
|PVS02nat_limit_TCC1|✅ proved - complete|shostak|0.281|
|PVS02nat_limit_TCC2|✅ proved - complete|shostak|0.300|
|PVS02nat_limit_TCC3|✅ proved - complete|shostak|0.280|
|PVS02nat_limit_TCC4|✅ proved - complete|shostak|0.305|
|PVS02nat_limit_TCC5|✅ proved - complete|shostak|0.280|
|PVS02nat_limit_TCC6|✅ proved - complete|shostak|0.313|
|PVS02nat_limit_TCC7|✅ proved - complete|shostak|0.280|
|PVS02nat_limit_TCC8|✅ proved - complete|shostak|0.310|
|PVS02nat_limit_TCC9|✅ proved - complete|shostak|0.280|
|PVS02nat_limit_TCC10|✅ proved - complete|shostak|0.320|
|PVS02nat_limit_TCC11|✅ proved - complete|shostak|0.280|
|PVS02nat_limit_TCC12|✅ proved - complete|shostak|0.320|
|PVS02nat_limit_TCC13|✅ proved - complete|shostak|0.274|
|PVS02nat_limit_TCC14|✅ proved - complete|shostak|0.310|
|nat2PVS0_PVS02nat_limit|✅ proved - incomplete|shostak|2.216|
|PVS02nat_nat2PVS0_limit|✅ proved - incomplete|shostak|0.000|
|cons2nat_TCC1|✅ proved - complete|shostak|0.220|
|cons2nat_TCC2|✅ proved - complete|shostak|0.220|
|cons2nat_TCC3|✅ proved - incomplete|shostak|0.470|
|cons2nat_TCC4|✅ proved - incomplete|shostak|0.527|
|listnat2nat_TCC1|✅ proved - complete|shostak|0.260|
|listnat2nat_TCC2|✅ proved - complete|shostak|0.228|
|nat2listnat_aux_TCC1|✅ proved - complete|shostak|0.220|
|nat2listnat_aux_TCC2|✅ proved - complete|shostak|0.220|
|length_nat2listnat_aux|✅ proved - incomplete|shostak|0.350|
|nat2listnat_aux_cons2nat_TCC1|✅ proved - complete|shostak|0.252|
|nat2listnat_aux_cons2nat|✅ proved - incomplete|shostak|0.541|
|cons2nat_nat2listnat_aux_TCC1|✅ proved - incomplete|shostak|0.300|
|cons2nat_nat2listnat_aux|✅ proved - incomplete|shostak|0.764|
|listnat2nat_nat2listnat|✅ proved - incomplete|shostak|0.362|
|nat2listnat_listnat2nat|✅ proved - incomplete|shostak|0.310|
|listPVS0nat2nat_TCC1|✅ proved - complete|shostak|1.123|
|listPVS0nat2nat_TCC2|✅ proved - complete|shostak|0.295|
|listPVS0nat2nat_TCC3|✅ proved - incomplete|shostak|0.948|
|nat2listPVS0nat_TCC1|✅ proved - incomplete|shostak|0.310|
|nat2listPVS0nat_TCC2|✅ proved - incomplete|shostak|0.230|
|nat2listPVS0nat_TCC3|✅ proved - incomplete|shostak|2.411|
|listPVS0nat2nat_nat2listPVS0nat|✅ proved - incomplete|shostak|0.770|
|nat2listPVS0nat_listPVS0nat2nat|✅ proved - incomplete|shostak|0.000|

## `mf_pvs0_lang`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|terminating?_TCC1|✅ proved - complete|shostak|0.246|
|deterministic|✅ proved - complete|shostak|0.250|
|eval_pvs0_ge_n|✅ proved - complete|shostak|0.260|
|semantic_rel_eval|✅ proved - complete|shostak|0.272|
|eval_terminates|✅ proved - complete|shostak|0.230|
|terminating_determined_all|✅ proved - complete|shostak|0.230|
|mu_nonempty|✅ proved - complete|shostak|0.266|
|mu_TCC1|✅ proved - complete|shostak|0.220|
|mu_TCC2|✅ proved - complete|shostak|0.320|
|mu_terminates|✅ proved - complete|shostak|0.409|
|mu_min|✅ proved - complete|shostak|0.260|
|mu_eval_TCC1|✅ proved - complete|shostak|0.310|
|eval_semantic|✅ proved - complete|shostak|0.288|
|mu_eval_correct|✅ proved - complete|shostak|0.330|
|Delta_undetermined|✅ proved - complete|shostak|0.568|
|Delta_non_terminating|✅ proved - complete|shostak|0.233|
|pvs0_not_in_pvs|✅ proved - complete|shostak|0.290|
|offset_rec_TCC1|✅ proved - complete|shostak|0.250|
|offset_rec_TCC2|✅ proved - complete|shostak|0.254|
|offset_rec_TCC3|✅ proved - complete|shostak|0.260|
|offset_rec_TCC4|✅ proved - complete|shostak|0.250|
|offset_rec_TCC5|✅ proved - complete|shostak|0.260|
|offset_rec_TCC6|✅ proved - complete|shostak|0.265|
|offset_rec_TCC7|✅ proved - complete|shostak|0.260|
|offset_composition|✅ proved - complete|shostak|0.933|
|offset_composition2|✅ proved - complete|shostak|0.340|
|add_rec_list_aux_TCC1|✅ proved - complete|shostak|0.250|
|add_rec_list_aux|✅ proved - incomplete|shostak|8.357|
|valid_index_rec_offset|✅ proved - complete|shostak|1.112|
|add_rec_list_aux2_TCC1|✅ proved - complete|shostak|0.250|
|add_rec_list_aux2|✅ proved - incomplete|shostak|7.701|
|add_rec_list|✅ proved - incomplete|shostak|0.526|
|add_rec_list2|✅ proved - incomplete|shostak|0.443|

## `mf_pvs0_expr`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|semantic_rel_expr_TCC1|✅ proved - complete|shostak|0.230|
|semantic_rel_expr_TCC2|✅ proved - complete|shostak|0.240|
|semantic_rel_expr_TCC3|✅ proved - complete|shostak|0.240|
|semantic_rel_expr_TCC4|✅ proved - complete|shostak|0.255|
|eval_expr_TCC1|✅ proved - complete|shostak|0.250|
|eval_expr_TCC2|✅ proved - complete|shostak|0.383|
|eval_expr_TCC3|✅ proved - complete|shostak|0.490|
|eval_expr_TCC4|✅ proved - complete|shostak|0.260|
|eval_expr_TCC5|✅ proved - complete|shostak|0.470|
|eval_expr_TCC6|✅ proved - complete|shostak|0.560|
|eval_expr_TCC7|✅ proved - complete|shostak|0.566|
|eval_expr_TCC8|✅ proved - complete|shostak|0.540|
|eval_expr_TCC9|✅ proved - complete|shostak|0.257|
|eval_expr_TCC10|✅ proved - complete|shostak|0.270|
|eval_expr_TCC11|✅ proved - complete|shostak|0.380|
|eval_expr_ge_n_j_TCC1|✅ proved - complete|shostak|0.240|
|eval_expr_ge_n_j_TCC2|✅ proved - complete|shostak|0.000|
|eval_expr_ge_n_j_TCC3|✅ proved - complete|shostak|0.310|
|eval_expr_ge_n_j_TCC4|✅ proved - complete|shostak|0.270|
|eval_expr_ge_n_j_TCC5|✅ proved - complete|shostak|0.311|
|eval_expr_ge_n_j_TCC6|✅ proved - complete|shostak|0.250|
|eval_expr_ge_n_j_TCC7|✅ proved - complete|shostak|0.280|
|eval_expr_ge_n_j_TCC8|✅ proved - complete|shostak|0.333|
|eval_expr_ge_n_j_TCC9|✅ proved - complete|shostak|0.270|
|eval_expr_ge_n_j_TCC10|✅ proved - complete|shostak|0.320|
|eval_expr_ge_n_j_TCC11|✅ proved - complete|shostak|0.332|
|eval_expr_ge_n_j_TCC12|✅ proved - complete|shostak|0.260|
|eval_expr_ge_n_j_TCC13|✅ proved - complete|shostak|0.270|
|eval_expr_ge_n_j_TCC14|✅ proved - complete|shostak|0.392|
|eval_expr_ge_n_j_TCC15|✅ proved - complete|shostak|0.290|
|eval_expr_ge_n_j_TCC16|✅ proved - complete|shostak|0.240|
|eval_expr_gt_0|✅ proved - complete|shostak|0.232|
|eval_expr_ge_n|✅ proved - complete|shostak|0.370|
|semantic_rel_eval_expr|✅ proved - complete|shostak|3.313|
|eval_expr_n_pos|✅ proved - complete|shostak|0.240|
|deterministic_expr|✅ proved - complete|shostak|0.352|
|eval_expr_semantic_rel_j_TCC1|✅ proved - complete|shostak|0.240|
|eval_expr_semantic_rel_j_TCC2|✅ proved - complete|shostak|0.250|
|eval_expr_semantic_rel_j_TCC3|✅ proved - complete|shostak|0.246|
|eval_expr_semantic_rel_j_TCC4|✅ proved - complete|shostak|0.260|
|eval_expr_semantic_rel_j_TCC5|✅ proved - complete|shostak|0.290|
|eval_expr_semantic_rel_j_TCC6|✅ proved - complete|shostak|0.230|
|eval_expr_semantic_rel_j_TCC7|✅ proved - complete|shostak|0.280|
|eval_expr_semantic_rel_j_TCC8|✅ proved - complete|shostak|0.303|
|eval_expr_semantic_rel_j_TCC9|✅ proved - complete|shostak|0.230|
|eval_expr_semantic_rel_j_TCC10|✅ proved - complete|shostak|0.320|
|eval_expr_semantic_rel_j_TCC11|✅ proved - complete|shostak|0.320|
|eval_expr_semantic_rel_j_TCC12|✅ proved - complete|shostak|0.270|
|eval_expr_semantic_rel_j_TCC13|✅ proved - complete|shostak|0.270|
|eval_expr_semantic_rel_j_TCC14|✅ proved - complete|shostak|0.342|
|eval_expr_semantic_rel_j_TCC15|✅ proved - complete|shostak|0.290|
|eval_expr_semantic_rel_j_TCC16|✅ proved - complete|shostak|0.240|
|eval_expr_semantic_rel|✅ proved - complete|shostak|0.372|
|eval_expr_terminates|✅ proved - complete|shostak|0.290|

## `subtype_length`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|subtype_length|✅ proved - complete|shostak|0.220|
|subtype_nth|✅ proved - complete|shostak|0.239|
|subtype_append|✅ proved - complete|shostak|0.230|
|subtype_every|✅ proved - complete|shostak|0.250|

## `subtype_map`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|subtype_map|✅ proved - complete|shostak|0.290|

## `map_identity`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|map_identity|✅ proved - complete|shostak|0.240|

## `mf_pvs0_Fixedpoint`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|diagonal_function_TCC1|✅ proved - complete|shostak|0.311|
|part2part_TCC1|✅ proved - complete|shostak|0.230|
|part2part_TCC2|✅ proved - incomplete|shostak|0.270|
|part2part_TCC3|✅ proved - incomplete|shostak|0.250|
|fixed_point|✅ proved - incomplete|shostak|7.440|

## `map_append`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|map_append|✅ proved - complete|shostak|0.271|

## `mf_pvs0_Rices_Theorem_Corollaries`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|uniform_halting_problem_undecidability_Turing_complete|✅ proved - incomplete|shostak|0.714|
|fixed_point_existence_undecidability_Turing_complete|✅ proved - incomplete|shostak|0.806|
|self_replication_undecidability_Turing_complete|✅ proved - incomplete|shostak|3.003|
|pvs0_program_equivalence_undecidability_Turing_complete|✅ proved - incomplete|shostak|4.649|
|natural_predicate_undecidability|✅ proved - incomplete|shostak|0.291|

## `mf_pvs0_Rices_Theorem`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Generalized_Recursion_Theorem_TCC1|✅ proved - incomplete|shostak|0.390|
|Generalized_Recursion_Theorem_TCC2|✅ proved - incomplete|shostak|0.484|
|Generalized_Recursion_implies_pvs0_Rices_Theorem|✅ proved - incomplete|shostak|30.674|
|Rice_theorem_for_Turing_complete_pvs0|✅ proved - incomplete|shostak|0.289|

## `mf_pvs0_Recursion_Theorem`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|p_recursive2nat_TCC1|✅ proved - incomplete|shostak|0.310|
|greater_index_rec_TCC1|✅ proved - complete|shostak|0.260|
|greater_index_rec_TCC2|✅ proved - complete|shostak|0.274|
|greater_index_rec_TCC3|✅ proved - complete|shostak|0.270|
|greater_index_rec_TCC4|✅ proved - complete|shostak|0.270|
|greater_index_rec_TCC5|✅ proved - complete|shostak|0.267|
|greater_index_rec_TCC6|✅ proved - complete|shostak|0.280|
|greater_index_rec_TCC7|✅ proved - complete|shostak|0.260|
|greater_index_rec_correctness|✅ proved - complete|shostak|0.000|
|greater_index_rec_list_TCC1|✅ proved - complete|shostak|0.230|
|greater_index_rec_list_TCC2|✅ proved - complete|shostak|0.270|
|greater_index_rec_list_correctness|✅ proved - complete|shostak|0.449|
|printA_TCC1|✅ proved - incomplete|shostak|0.370|
|map_offset_rec_appendn|✅ proved - incomplete|shostak|0.370|
|print_correctness_TCC1|✅ proved - incomplete|shostak|0.382|
|print_correctness|✅ proved - incomplete|shostak|8.124|
|vr_subterm|✅ proved - incomplete|shostak|0.446|
|print_limited|✅ proved - incomplete|shostak|5.752|
|Recursion_Theorem_TCC1|✅ proved - incomplete|shostak|0.401|
|Recursion_Theorem_TCC2|✅ proved - incomplete|shostak|0.490|
|Recursion_Theorem|✅ proved - incomplete|shostak|29.648|

## `mf_pvs0_basic_programs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|equal_TCC1|✅ proved - incomplete|shostak|0.506|
|equal_works|✅ proved - incomplete|shostak|2.375|
|sub_function_TCC1|✅ proved - complete|shostak|0.237|
|sub_TCC1|✅ proved - incomplete|shostak|0.548|
|sub_works|✅ proved - incomplete|shostak|2.060|
|sub1_TCC1|✅ proved - complete|shostak|0.240|
|sub1_TCC2|✅ proved - incomplete|shostak|0.723|
|sub1_works|✅ proved - incomplete|shostak|0.978|
|sum_function_TCC1|✅ proved - complete|shostak|0.230|
|sum_function_TCC2|✅ proved - complete|shostak|0.210|
|sum_TCC1|✅ proved - incomplete|shostak|0.965|
|sum_works|✅ proved - incomplete|shostak|2.125|
|sum_function_correctness|✅ proved - complete|shostak|0.260|
|sum_correctness|✅ proved - incomplete|shostak|0.220|
|mult_TCC1|✅ proved - incomplete|shostak|0.348|
|mult_TCC2|✅ proved - incomplete|shostak|2.929|
|mult_works|✅ proved - incomplete|shostak|6.371|
|mult_function_correctness|✅ proved - complete|shostak|0.280|
|mult_correctness|✅ proved - incomplete|shostak|0.280|

## `mf_pvs0_Turing_Completeness`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|proj_aux_function_TCC1|✅ proved - complete|shostak|0.240|
|proj_aux_function_TCC2|✅ proved - complete|shostak|0.257|
|nat2list_TCC1|✅ proved - complete|shostak|0.230|
|nat2list_TCC2|✅ proved - complete|shostak|0.220|
|nat2list_length|✅ proved - incomplete|shostak|0.340|
|proj_aux_function_not_last|✅ proved - incomplete|shostak|0.000|
|proj_aux_function_last_TCC1|✅ proved - complete|shostak|0.290|
|proj_aux_function_last_TCC2|✅ proved - incomplete|shostak|0.260|
|proj_aux_function_last|✅ proved - incomplete|shostak|1.233|
|nat2list_extension_TCC1|✅ proved - incomplete|shostak|0.247|
|nat2list_extension_TCC2|✅ proved - incomplete|shostak|0.250|
|nat2list_extension|✅ proved - incomplete|shostak|0.538|
|proj_aux_function_works_TCC1|✅ proved - incomplete|shostak|0.257|
|proj_aux_function_works|✅ proved - incomplete|shostak|0.929|
|proj_aux_TCC1|✅ proved - complete|shostak|0.290|
|proj_aux_TCC2|✅ proved - incomplete|shostak|0.935|
|proj_aux_works|✅ proved - incomplete|shostak|8.120|
|proj_TCC1|✅ proved - incomplete|shostak|0.794|
|proj_works|✅ proved - incomplete|shostak|2.051|
|proj_correctness_TCC1|✅ proved - incomplete|shostak|0.250|
|proj_correctness|✅ proved - incomplete|shostak|0.316|
|expr_comp_TCC1|✅ proved - incomplete|shostak|0.346|
|expr_comp_TCC2|✅ proved - incomplete|shostak|0.250|
|rec_indices_chain_offset_is_limited|✅ proved - incomplete|shostak|1.389|
|rec_indices_expr_comp_is_limited|✅ proved - incomplete|shostak|0.973|
|chain_offset_length|✅ proved - incomplete|shostak|0.768|
|comp_TCC1|✅ proved - incomplete|shostak|0.560|
|comp_TCC2|✅ proved - incomplete|shostak|0.855|
|list2nat_TCC1|✅ proved - complete|shostak|0.254|
|list2nat_TCC2|✅ proved - complete|shostak|0.230|
|offset_rec_chain_offset|✅ proved - incomplete|shostak|0.673|
|offset_rec_expr_comp|✅ proved - incomplete|shostak|0.550|
|limits_of_chain_offset_TCC1|✅ proved - incomplete|shostak|1.135|
|limits_of_chain_offset_TCC2|✅ proved - incomplete|shostak|0.260|
|limits_of_chain_offset|✅ proved - incomplete|shostak|6.134|
|chain_offset_prop_TCC1|✅ proved - incomplete|shostak|0.230|
|chain_offset_prop|✅ proved - incomplete|shostak|8.469|
|comp_is_composition_TCC1|✅ proved - incomplete|shostak|0.440|
|comp_is_composition|✅ proved - incomplete|shostak|5.286|
|min_relation_works|✅ proved - incomplete|shostak|0.541|
|min_relation_leq|✅ proved - incomplete|shostak|0.254|
|min_aux_TCC1|✅ proved - incomplete|shostak|0.400|
|min_aux_TCC2|✅ proved - incomplete|shostak|0.634|
|min_aux_leq_eval_expr_TCC1|✅ proved - incomplete|shostak|0.360|
|min_aux_leq_eval_expr|✅ proved - incomplete|shostak|1.981|
|min_aux_leq|✅ proved - incomplete|shostak|0.292|
|min_relation_works2|✅ proved - incomplete|shostak|0.480|
|min_aux_is_min_relation|✅ proved - incomplete|shostak|0.000|
|min_aux_correctness|✅ proved - incomplete|shostak|0.269|
|min_TCC1|✅ proved - incomplete|shostak|0.515|
|min_TCC2|✅ proved - incomplete|shostak|0.751|
|min_correctness|✅ proved - incomplete|shostak|1.829|
|prim_recurrence_relation_TCC1|✅ proved - incomplete|shostak|0.280|
|prim_recurrence_TCC1|✅ proved - incomplete|shostak|5.606|
|prim_recurrence_is_prim_recurrence_relation|✅ proved - incomplete|shostak|25.291|
|prim_recurrence_relation_works_TCC1|✅ proved - incomplete|shostak|0.230|
|prim_recurrence_relation_works_TCC2|✅ proved - incomplete|shostak|0.231|
|prim_recurrence_relation_works_TCC3|✅ proved - incomplete|shostak|0.290|
|prim_recurrence_relation_works_TCC4|✅ proved - incomplete|shostak|0.290|
|prim_recurrence_relation_works_TCC5|✅ proved - incomplete|shostak|0.290|
|prim_recurrence_relation_works|✅ proved - incomplete|shostak|4.935|
|prim_recurrence_correctness|✅ proved - incomplete|shostak|0.290|

## `chain_of_appends`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|chain_of_appends_TCC1|✅ proved - complete|shostak|0.230|
|chain_of_appends_TCC2|✅ proved - complete|shostak|0.250|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib/pvsio_utils/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230712-static-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230710-tcc-gen.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230707-defattach.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230706-extrategies.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`|
