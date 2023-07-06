# Summary for `PVS0`
Run started at 4:40:37 7/4/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **672**   | **672**    | **672**    | **0**  | **8:10.897 s**   |
|top|0|0|0|0|0.000|
|pvs0_expr|52|52|52|0|12.911|
|pvs0_lang|16|16|16|0|2.899|
|pvs0_cc|26|26|26|0|5.810|
|pvs0_props|68|68|68|0|50.984|
|pvs0_to_dg|20|20|20|0|5.938|
|measure_termination_defs|1|1|1|0|0.130|
|pvs0_prelude|1|1|1|0|0.120|
|measure_termination|5|5|5|0|1.119|
|pvs0_termination|17|17|17|0|16.385|
|scp_iff_pvs0|7|7|7|0|2.067|
|pvs0_eval|46|46|46|0|20.172|
|ccg_to_pvs0|3|3|3|0|0.803|
|pvs0_to_ccg|4|4|4|0|1.371|
|pvs0_pvs|3|3|3|0|1.095|
|pvs0_pvs_T|2|2|2|0|0.905|
|pvs0_expressibility|1|1|1|0|0.353|
|counting_pvs0_type|20|20|20|0|5.629|
|pvs0_to_nat|23|23|23|0|20.859|
|pvs0_computable|11|11|11|0|7.588|
|pvs0_halting|5|5|5|0|3.334|
|dg_termination|5|5|5|0|3.444|
|dp_termination|2|2|2|0|0.722|
|dp_to_tcc|3|3|3|0|0.812|
|factorial_pvs0|12|12|12|0|9.693|
|factorial_pvs|4|4|4|0|4.923|
|ack_pvs0|16|16|16|0|12.947|
|ack_pvs|9|9|9|0|16.639|
|fibo_pvs0|9|9|9|0|5.329|
|fibo_pvs|5|5|5|0|6.694|
|mf_pvs0_top|0|0|0|0|0.000|
|mf_pvs0_halting|5|5|5|0|6.348|
|mf_pvs0_computable|59|59|59|0|28.538|
|mf_pvs0_lang|33|33|33|0|20.345|
|mf_pvs0_expr|54|54|54|0|18.505|
|subtype_length|4|4|4|0|0.890|
|subtype_map|1|1|1|0|0.270|
|map_identity|1|1|1|0|0.230|
|mf_pvs0_Fixedpoint|5|5|5|0|8.398|
|map_append|1|1|1|0|0.260|
|mf_pvs0_Rices_Theorem_Corollaries|5|5|5|0|7.372|
|mf_pvs0_Rices_Theorem|4|4|4|0|30.658|
|mf_pvs0_Recursion_Theorem|21|21|21|0|36.671|
|mf_pvs0_basic_programs|19|19|19|0|20.575|
|mf_pvs0_Turing_Completeness|62|62|62|0|1:29.732|
|chain_of_appends|2|2|2|0|0.430|
## Detailed Summary 
## `top`
No formula declaration found.
## `pvs0_expr`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|semantic_rel_expr_TCC1|✅ proved - complete|shostak|0.160|
|semantic_rel_expr_TCC2|✅ proved - complete|shostak|0.130|
|semantic_rel_expr_TCC3|✅ proved - complete|shostak|0.137|
|semantic_rel_expr_TCC4|✅ proved - complete|shostak|0.140|
|eval_expr_TCC1|✅ proved - complete|shostak|0.150|
|eval_expr_TCC2|✅ proved - complete|shostak|0.280|
|eval_expr_TCC3|✅ proved - complete|shostak|0.356|
|eval_expr_TCC4|✅ proved - complete|shostak|0.160|
|eval_expr_TCC5|✅ proved - complete|shostak|0.330|
|eval_expr_TCC6|✅ proved - complete|shostak|0.426|
|eval_expr_TCC7|✅ proved - complete|shostak|0.400|
|eval_expr_TCC8|✅ proved - complete|shostak|0.378|
|eval_expr_TCC9|✅ proved - complete|shostak|0.150|
|eval_expr_TCC10|✅ proved - complete|shostak|0.150|
|eval_expr_TCC11|✅ proved - complete|shostak|0.260|
|eval_expr_ge_n_j_TCC1|✅ proved - complete|shostak|0.120|
|eval_expr_ge_n_j_TCC2|✅ proved - complete|shostak|0.173|
|eval_expr_ge_n_j_TCC3|✅ proved - complete|shostak|0.140|
|eval_expr_ge_n_j_TCC4|✅ proved - complete|shostak|0.160|
|eval_expr_ge_n_j_TCC5|✅ proved - complete|shostak|0.184|
|eval_expr_ge_n_j_TCC6|✅ proved - complete|shostak|0.160|
|eval_expr_ge_n_j_TCC7|✅ proved - complete|shostak|0.160|
|eval_expr_ge_n_j_TCC8|✅ proved - complete|shostak|0.220|
|eval_expr_ge_n_j_TCC9|✅ proved - complete|shostak|0.159|
|eval_expr_ge_n_j_TCC10|✅ proved - complete|shostak|0.220|
|eval_expr_ge_n_j_TCC11|✅ proved - complete|shostak|0.220|
|eval_expr_ge_n_j_TCC12|✅ proved - complete|shostak|0.150|
|eval_expr_ge_n_j_TCC13|✅ proved - complete|shostak|0.160|
|eval_expr_ge_n_j_TCC14|✅ proved - complete|shostak|0.240|
|eval_expr_ge_n_j_TCC15|✅ proved - complete|shostak|0.150|
|eval_expr_gt_0|✅ proved - complete|shostak|0.128|
|eval_expr_ge_n|✅ proved - complete|shostak|0.280|
|semantic_rel_eval_expr|✅ proved - complete|shostak|3.146|
|eval_expr_n_pos|✅ proved - complete|shostak|0.140|
|deterministic_expr|✅ proved - complete|shostak|0.234|
|eval_expr_semantic_rel_j_TCC1|✅ proved - complete|shostak|0.140|
|eval_expr_semantic_rel_j_TCC2|✅ proved - complete|shostak|0.140|
|eval_expr_semantic_rel_j_TCC3|✅ proved - complete|shostak|0.140|
|eval_expr_semantic_rel_j_TCC4|✅ proved - complete|shostak|0.155|
|eval_expr_semantic_rel_j_TCC5|✅ proved - complete|shostak|0.160|
|eval_expr_semantic_rel_j_TCC6|✅ proved - complete|shostak|0.120|
|eval_expr_semantic_rel_j_TCC7|✅ proved - complete|shostak|0.170|
|eval_expr_semantic_rel_j_TCC8|✅ proved - complete|shostak|0.175|
|eval_expr_semantic_rel_j_TCC9|✅ proved - complete|shostak|0.120|
|eval_expr_semantic_rel_j_TCC10|✅ proved - complete|shostak|0.170|
|eval_expr_semantic_rel_j_TCC11|✅ proved - complete|shostak|0.190|
|eval_expr_semantic_rel_j_TCC12|✅ proved - complete|shostak|0.160|
|eval_expr_semantic_rel_j_TCC13|✅ proved - complete|shostak|0.158|
|eval_expr_semantic_rel_j_TCC14|✅ proved - complete|shostak|0.180|
|eval_expr_semantic_rel_j_TCC15|✅ proved - complete|shostak|0.120|
|eval_expr_semantic_rel|✅ proved - complete|shostak|0.272|
|eval_expr_terminates|✅ proved - complete|shostak|0.190|

## `pvs0_lang`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|deterministic|✅ proved - complete|shostak|0.130|
|eval_pvs0_ge_n|✅ proved - complete|shostak|0.150|
|semantic_rel_eval|✅ proved - complete|shostak|0.150|
|eval_terminates|✅ proved - complete|shostak|0.110|
|terminating_determined_all|✅ proved - complete|shostak|0.120|
|mu_nonempty|✅ proved - complete|shostak|0.150|
|mu_TCC1|✅ proved - complete|shostak|0.120|
|mu_TCC2|✅ proved - complete|shostak|0.200|
|mu_terminates|✅ proved - complete|shostak|0.309|
|mu_min|✅ proved - complete|shostak|0.149|
|mu_eval_TCC1|✅ proved - complete|shostak|0.210|
|eval_semantic|✅ proved - complete|shostak|0.160|
|mu_eval_correct|✅ proved - complete|shostak|0.200|
|Delta_undetermined|✅ proved - complete|shostak|0.430|
|Delta_non_terminating|✅ proved - complete|shostak|0.121|
|pvs0_not_in_pvs|✅ proved - complete|shostak|0.190|

## `pvs0_cc`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|eval_conds_TCC1|✅ proved - complete|shostak|0.160|
|valid_path_TCC1|✅ proved - incomplete|shostak|0.219|
|valid_path_TCC2|✅ proved - incomplete|shostak|0.200|
|valid_path_TCC3|✅ proved - incomplete|shostak|0.210|
|valid_path_TCC4|✅ proved - incomplete|shostak|0.190|
|valid_path_TCC5|✅ proved - incomplete|shostak|0.200|
|valid_path_TCC6|✅ proved - incomplete|shostak|0.210|
|valid_path_TCC7|✅ proved - incomplete|shostak|0.220|
|subterm_at_TCC1|✅ proved - incomplete|shostak|0.140|
|subterm_at_TCC2|✅ proved - incomplete|shostak|0.140|
|subterm_at_TCC3|✅ proved - incomplete|shostak|0.201|
|subterm_at_TCC4|✅ proved - incomplete|shostak|0.170|
|subterm_at_TCC5|✅ proved - incomplete|shostak|0.142|
|subterm_at_TCC6|✅ proved - incomplete|shostak|0.180|
|subterm_at_TCC7|✅ proved - incomplete|shostak|0.290|
|subterm_at_TCC8|✅ proved - incomplete|shostak|0.221|
|subterm_at_TCC9|✅ proved - incomplete|shostak|0.170|
|subterm_at_TCC10|✅ proved - incomplete|shostak|0.130|
|subterm_at_TCC11|✅ proved - incomplete|shostak|0.180|
|subterm_at_TCC12|✅ proved - incomplete|shostak|0.160|
|subterm_at_TCC13|✅ proved - incomplete|shostak|0.150|
|subterm_at_TCC14|✅ proved - incomplete|shostak|0.240|
|subterm_at_TCC15|✅ proved - incomplete|shostak|0.221|
|subterm_at_TCC16|✅ proved - incomplete|shostak|0.130|
|path_conditions_TCC1|✅ proved - incomplete|shostak|1.176|
|path_conditions_TCC2|✅ proved - incomplete|shostak|0.160|

## `pvs0_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|subterm_transitive|✅ proved - complete|shostak|0.576|
|null_path|✅ proved - incomplete|shostak|0.000|
|valid_paths_subexpr|✅ proved - incomplete|shostak|2.440|
|subterm_append_TCC1|✅ proved - incomplete|shostak|0.149|
|subterm_append|✅ proved - incomplete|shostak|2.482|
|valid_0_path_ext|✅ proved - incomplete|shostak|0.623|
|valid_1_path_ext|✅ proved - incomplete|shostak|0.782|
|valid_2_path_ext|✅ proved - incomplete|shostak|0.647|
|app_prefix_of_path_ext|✅ proved - incomplete|shostak|3.989|
|cnst_vr_path_ext|✅ proved - incomplete|shostak|0.170|
|op1_rec_path_ext|✅ proved - incomplete|shostak|0.848|
|op2_path_ext|✅ proved - incomplete|shostak|1.207|
|ite_path_ext|✅ proved - incomplete|shostak|1.547|
|valid_paths_TCC1|✅ proved - incomplete|shostak|0.160|
|valid_paths_TCC2|✅ proved - complete|shostak|0.314|
|valid_paths_TCC3|✅ proved - incomplete|shostak|0.840|
|valid_paths_TCC4|✅ proved - incomplete|shostak|1.215|
|valid_paths_TCC5|✅ proved - incomplete|shostak|0.130|
|valid_paths_TCC6|✅ proved - complete|shostak|0.120|
|valid_paths_TCC7|✅ proved - complete|shostak|0.126|
|valid_paths_TCC8|✅ proved - incomplete|shostak|1.892|
|valid_paths_TCC9|✅ proved - incomplete|shostak|0.000|
|valid_paths_TCC10|✅ proved - incomplete|shostak|0.120|
|valid_paths_TCC11|✅ proved - complete|shostak|0.121|
|valid_paths_TCC12|✅ proved - incomplete|shostak|0.882|
|valid_paths_TCC13|✅ proved - incomplete|shostak|1.241|
|valid_paths_TCC14|✅ proved - incomplete|shostak|0.124|
|valid_paths_TCC15|✅ proved - complete|shostak|0.120|
|valid_paths_TCC16|✅ proved - complete|shostak|0.150|
|valid_paths_TCC17|✅ proved - complete|shostak|0.150|
|valid_paths_TCC18|✅ proved - incomplete|shostak|2.442|
|valid_paths_TCC19|✅ proved - incomplete|shostak|7.924|
|valid_paths_TCC20|✅ proved - incomplete|shostak|0.170|
|valid_paths_TCC21|✅ proved - incomplete|shostak|0.180|
|subset_member_sl|✅ proved - incomplete|shostak|0.415|
|suffix_subset_sl|✅ proved - incomplete|shostak|0.150|
|path_conditions_cons_TCC1|✅ proved - incomplete|shostak|0.327|
|path_conditions_cons_TCC2|✅ proved - incomplete|shostak|0.169|
|path_conditions_cons|✅ proved - incomplete|shostak|0.160|
|path_conditions_unmodified_TCC1|✅ proved - incomplete|shostak|0.164|
|path_conditions_unmodified|✅ proved - incomplete|shostak|0.150|
|path_conditions_unmodified2_TCC1|✅ proved - incomplete|shostak|0.160|
|path_conditions_unmodified2|✅ proved - incomplete|shostak|0.164|
|suffix_path_cnds_suffix|✅ proved - incomplete|shostak|0.748|
|suffix_path_cnds|✅ proved - incomplete|shostak|0.140|
|condition_is_subterm|✅ proved - incomplete|shostak|1.713|
|condition_is_subterm_append|✅ proved - incomplete|shostak|0.579|
|path_of_path_conditions|✅ proved - incomplete|shostak|2.046|
|member_conds_rec|✅ proved - complete|shostak|0.308|
|member_conds_rec2|✅ proved - complete|shostak|0.283|
|eval_conds_reverse|✅ proved - incomplete|shostak|0.172|
|suffix_conds_rec|✅ proved - incomplete|shostak|0.150|
|suffix_conds_valid_sub|✅ proved - incomplete|shostak|0.150|
|suffix_conds_valid|✅ proved - incomplete|shostak|0.279|
|rec_decreasing_TCC1|✅ proved - incomplete|shostak|0.150|
|rec_decreasing_TCC2|✅ proved - incomplete|shostak|0.150|
|rec_decreasing_TCC3|✅ proved - incomplete|shostak|0.216|
|rec_decreasing_TCC4|✅ proved - incomplete|shostak|0.180|
|rec_decreasing|✅ proved - incomplete|shostak|4.194|
|rec_mu_decreasing_TCC1|✅ proved - incomplete|shostak|0.197|
|rec_mu_decreasing_TCC2|✅ proved - incomplete|shostak|0.210|
|rec_mu_decreasing_TCC3|✅ proved - incomplete|shostak|0.261|
|rec_mu_decreasing_TCC4|✅ proved - incomplete|shostak|0.300|
|rec_mu_decreasing|✅ proved - incomplete|shostak|0.843|
|decreasing_rec_TCC1|✅ proved - incomplete|shostak|0.140|
|decreasing_rec_TCC2|✅ proved - incomplete|shostak|0.228|
|decreasing_rec_TCC3|✅ proved - incomplete|shostak|0.180|
|decreasing_rec|✅ proved - incomplete|shostak|1.427|

## `pvs0_to_dg`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|pvs0_to_dg_make_cc_TCC1|✅ proved - incomplete|shostak|0.132|
|pvs0_to_dg_make_cc_TCC2|✅ proved - incomplete|shostak|0.160|
|pvs0_to_dg_paths_vertices_TCC1|✅ proved - incomplete|shostak|0.278|
|pvs0_to_dg_paths_vertices_TCC2|✅ proved - incomplete|shostak|0.160|
|pvs0_to_dg_paths_vertices_TCC3|✅ proved - incomplete|shostak|0.163|
|pvs0_to_dg_paths_vertices_TCC4|✅ proved - incomplete|shostak|0.260|
|pvs0_to_dg_paths_vertices_TCC5|✅ proved - incomplete|shostak|0.411|
|pvs0_to_dg_paths_vertices_TCC6|✅ proved - incomplete|shostak|0.000|
|pvs0_to_dg_paths_vertices_TCC7|✅ proved - incomplete|shostak|0.408|
|pvs0_to_dg_vertices_completeness|✅ proved - incomplete|shostak|0.573|
|cc_of_pvs0_soundness|✅ proved - incomplete|shostak|0.228|
|cc_of_pvs0_completeness|✅ proved - incomplete|shostak|0.140|
|pvs0_ccs_rec_TCC1|✅ proved - incomplete|shostak|0.140|
|pvs0_ccs_rec_TCC2|✅ proved - incomplete|shostak|0.278|
|pvs0_ccs_rec_TCC3|✅ proved - incomplete|shostak|0.168|
|pvs0_ccs_rec_TCC4|✅ proved - incomplete|shostak|0.280|
|pvs0_ccs_rec_TCC5|✅ proved - incomplete|shostak|0.375|
|pvs0_ccs_completness|✅ proved - incomplete|shostak|0.276|
|dg_vert_valid_cc|✅ proved - incomplete|shostak|0.585|
|pvs0_to_fully_connected_dg_sound_ccg|✅ proved - incomplete|shostak|0.923|

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
|mu_soundness_TCC1|✅ proved - incomplete|shostak|0.335|
|mu_soundness_TCC2|✅ proved - incomplete|shostak|0.217|
|mu_soundness|✅ proved - incomplete|shostak|0.230|
|terminates_implies_pvs0_tcc_TCC1|✅ proved - complete|shostak|0.160|
|terminates_implies_pvs0_tcc|✅ proved - incomplete|shostak|0.177|

## `pvs0_termination`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|lt_val_wf|✅ proved - incomplete|shostak|0.250|
|lt_val_no_desc_inf_branch|✅ proved - incomplete|shostak|2.540|
|omega_is_eval_ub_TCC1|✅ proved - incomplete|shostak|0.140|
|omega_is_eval_ub_TCC2|✅ proved - incomplete|shostak|0.138|
|omega_is_eval_ub|✅ proved - incomplete|shostak|10.211|
|omega_is_eval_ub_bis|✅ proved - incomplete|shostak|0.168|
|pvs0_tcc_implies_terminates|✅ proved - incomplete|shostak|0.553|
|pvs0_tcc_termination_j|✅ proved - incomplete|shostak|0.123|
|mu_le_omega_TCC1|✅ proved - incomplete|shostak|0.130|
|mu_le_omega_TCC2|✅ proved - incomplete|shostak|0.130|
|mu_le_omega_TCC3|✅ proved - incomplete|shostak|0.140|
|mu_le_omega|✅ proved - incomplete|shostak|0.534|
|Omega_n_TCC1|✅ proved - incomplete|shostak|0.120|
|Omega_n_TCC2|✅ proved - incomplete|shostak|0.137|
|Omega_n_TCC3|✅ proved - incomplete|shostak|0.300|
|Omega_preval_TCC1|✅ proved - incomplete|shostak|0.190|
|Omega_eval_correct|✅ proved - incomplete|shostak|0.581|

## `scp_iff_pvs0`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|R_wf|✅ proved - incomplete|shostak|0.340|
|R_no_desc_inf_branch|✅ proved - incomplete|shostak|0.963|
|scp_implies_pvs0_tcc_TCC1|✅ proved - incomplete|shostak|0.220|
|scp_implies_pvs0_tcc|✅ proved - incomplete|shostak|0.284|
|pvs0_tcc_implies_scp_TCC1|✅ proved - complete|shostak|0.120|
|pvs0_tcc_implies_scp|✅ proved - incomplete|shostak|0.000|
|scp_iff_pvs0_terminates|✅ proved - incomplete|shostak|0.140|

## `pvs0_eval`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|pvs0_eval_expr_TCC1|✅ proved - incomplete|shostak|0.240|
|pvs0_eval_expr_TCC2|✅ proved - incomplete|shostak|0.130|
|pvs0_eval_expr_TCC3|✅ proved - incomplete|shostak|0.130|
|pvs0_eval_expr_TCC4|✅ proved - incomplete|shostak|0.178|
|pvs0_eval_expr_TCC5|✅ proved - incomplete|shostak|0.170|
|pvs0_eval_expr_TCC6|✅ proved - incomplete|shostak|0.586|
|pvs0_eval_expr_TCC7|✅ proved - incomplete|shostak|0.440|
|pvs0_eval_expr_TCC8|✅ proved - incomplete|shostak|0.396|
|pvs0_eval_expr_TCC9|✅ proved - incomplete|shostak|0.240|
|pvs0_eval_expr_TCC10|✅ proved - incomplete|shostak|0.636|
|pvs0_eval_expr_TCC11|✅ proved - incomplete|shostak|0.530|
|pvs0_eval_expr_TCC12|✅ proved - incomplete|shostak|0.698|
|pvs0_eval_expr_TCC13|✅ proved - incomplete|shostak|0.582|
|pvs0_eval_expr_TCC14|✅ proved - incomplete|shostak|0.250|
|pvs0_eval_expr_TCC15|✅ proved - incomplete|shostak|0.248|
|pvs0_eval_expr_TCC16|✅ proved - incomplete|shostak|0.596|
|pvs0_eval_expr_TCC17|✅ proved - incomplete|shostak|0.588|
|pvs0_eval_expr_TCC18|✅ proved - incomplete|shostak|0.840|
|pvs0_eval_expr_TCC19|✅ proved - incomplete|shostak|0.639|
|pvs0_eval_expr_TCC20|✅ proved - incomplete|shostak|0.625|
|pvs0_eval_expr_TCC21|✅ proved - incomplete|shostak|0.853|
|pvs0_eval_expr_TCC22|✅ proved - incomplete|shostak|0.638|
|pvs0_eval_expr_TCC23|✅ proved - incomplete|shostak|0.619|
|pvs0_eval_expr_TCC24|✅ proved - incomplete|shostak|0.540|
|pvs0_eval_expr_TCC25|✅ proved - incomplete|shostak|0.447|
|pvs0_eval_expr_TCC26|✅ proved - incomplete|shostak|0.410|
|pvs0_eval_expr_TCC27|✅ proved - incomplete|shostak|1.124|
|pvs0_eval_expr_TCC28|✅ proved - incomplete|shostak|0.437|
|pvs0_eval_TCC1|✅ proved - incomplete|shostak|0.354|
|pvs0_eval_correct|✅ proved - incomplete|shostak|0.160|
|terminates_expr_transitive_TCC1|✅ proved - incomplete|shostak|0.178|
|terminates_expr_transitive_TCC2|✅ proved - incomplete|shostak|0.180|
|terminates_expr_transitive|✅ proved - incomplete|shostak|0.000|
|suffix_of_valid_conditions|✅ proved - incomplete|shostak|0.306|
|pvs0_eval_conds_TCC1|✅ proved - incomplete|shostak|0.150|
|pvs0_eval_conds_TCC2|✅ proved - incomplete|shostak|0.322|
|pvs0_eval_conds_TCC3|✅ proved - incomplete|shostak|0.308|
|pvs0_eval_conds_TCC4|✅ proved - incomplete|shostak|0.402|
|pvs0_eval_conds_TCC5|✅ proved - incomplete|shostak|0.370|
|pvs0_eval_conds_TCC6|✅ proved - incomplete|shostak|1.333|
|pvs0_eval_conds_corrrect_TCC1|✅ proved - incomplete|shostak|0.194|
|pvs0_eval_conds_corrrect|✅ proved - incomplete|shostak|0.160|
|pvs0_tcc_TCC1|✅ proved - incomplete|shostak|0.365|
|pvs0_tcc_TCC2|✅ proved - incomplete|shostak|0.829|
|pvs0_tccs_correct_TCC1|✅ proved - complete|shostak|0.180|
|pvs0_tccs_correct|✅ proved - incomplete|shostak|0.571|

## `ccg_to_pvs0`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|ccg_implies_scp_pvs0|✅ proved - incomplete|shostak|0.523|
|ccg_implies_pvs0_tcc_TCC1|✅ proved - incomplete|shostak|0.140|
|ccg_implies_pvs0_tcc|✅ proved - incomplete|shostak|0.140|

## `pvs0_to_ccg`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|scp_implies_ccg_pvs0_TCC1|✅ proved - incomplete|shostak|0.350|
|scp_implies_ccg_pvs0|✅ proved - incomplete|shostak|0.631|
|pvs0_tcc_implies_ccg_TCC1|✅ proved - complete|shostak|0.190|
|pvs0_tcc_implies_ccg|✅ proved - incomplete|shostak|0.200|

## `pvs0_pvs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|make_pvs0_TCC1|✅ proved - complete|shostak|0.385|
|pvs_to_pvs0_aux|✅ proved - incomplete|shostak|0.490|
|pvs_to_pvs0|✅ proved - incomplete|shostak|0.220|

## `pvs0_pvs_T`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|make_pvs0_TCC1|✅ proved - complete|shostak|0.415|
|pvs_to_pvs0|✅ proved - incomplete|shostak|0.490|

## `pvs0_expressibility`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|TerminationExpressible|✅ proved - incomplete|shostak|0.353|

## `counting_pvs0_type`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|G_TCC1|✅ proved - complete|shostak|0.190|
|base_TCC1|✅ proved - complete|shostak|0.350|
|inop1_at_TCC1|✅ proved - complete|shostak|0.219|
|inop1_at_TCC2|✅ proved - complete|shostak|0.220|
|op1_at_TCC1|✅ proved - complete|shostak|0.320|
|op1_upto_TCC1|✅ proved - complete|shostak|0.411|
|inop2_at_TCC1|✅ proved - complete|shostak|0.220|
|finpair_TCC1|✅ proved - incomplete|shostak|0.434|
|op2_at_TCC1|✅ proved - incomplete|shostak|0.328|
|op2_upto_TCC1|✅ proved - incomplete|shostak|0.429|
|fintrip_TCC1|✅ proved - incomplete|shostak|0.514|
|ite_set_TCC1|✅ proved - incomplete|shostak|0.331|
|inrec_set_TCC1|✅ proved - complete|shostak|0.210|
|rec_set_TCC1|✅ proved - complete|shostak|0.306|
|level_set_member|✅ proved - incomplete|shostak|0.210|
|level_TCC1|✅ proved - complete|shostak|0.210|
|level_TCC2|✅ proved - complete|shostak|0.200|
|levels_increase|✅ proved - incomplete|shostak|0.327|
|levels_cover|✅ proved - incomplete|shostak|0.000|
|nat_onto_PVS0Expr|✅ proved - incomplete|shostak|0.200|

## `pvs0_to_nat`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|nat2PVS0_TCC1|✅ proved - complete|shostak|0.250|
|nat2PVS0_TCC2|✅ proved - complete|shostak|0.250|
|nat2PVS0_TCC3|✅ proved - complete|shostak|0.270|
|nat2PVS0_TCC4|✅ proved - complete|shostak|0.200|
|nat2PVS0_TCC5|✅ proved - complete|shostak|0.239|
|nat2PVS0_TCC6|✅ proved - incomplete|shostak|0.270|
|nat2PVS0_TCC7|✅ proved - incomplete|shostak|0.300|
|nat2PVS0_TCC8|✅ proved - incomplete|shostak|0.310|
|nat2PVS0_TCC9|✅ proved - incomplete|shostak|0.280|
|nat2PVS0_TCC10|✅ proved - complete|shostak|0.400|
|nat2PVS0_TCC11|✅ proved - incomplete|shostak|0.240|
|nat2PVS0_TCC12|✅ proved - incomplete|shostak|0.270|
|nat2PVS0_TCC13|✅ proved - incomplete|shostak|0.259|
|PVS02nat_TCC1|✅ proved - complete|shostak|0.240|
|PVS02nat_TCC2|✅ proved - complete|shostak|0.250|
|PVS02nat_TCC3|✅ proved - complete|shostak|0.250|
|PVS02nat_TCC4|✅ proved - complete|shostak|0.240|
|PVS02nat_TCC5|✅ proved - complete|shostak|0.250|
|PVS02nat_TCC6|✅ proved - complete|shostak|0.239|
|PVS02nat_TCC7|✅ proved - complete|shostak|0.250|
|nat2PVS0_inverse|✅ proved - incomplete|shostak|2.156|
|PVS02nat_inverse|✅ proved - incomplete|shostak|13.236|
|nat2PVS0_bijection|✅ proved - incomplete|shostak|0.210|

## `pvs0_computable`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|pvs0_level_TCC1|✅ proved - complete|shostak|0.210|
|level_surjective|✅ proved - incomplete|shostak|4.530|
|level_surjection_TCC1|✅ proved - incomplete|shostak|0.289|
|representantion|✅ proved - incomplete|shostak|0.360|
|pvs0_level_computable_TCC1|✅ proved - incomplete|shostak|0.356|
|pvs0_level_computable_TCC2|✅ proved - incomplete|shostak|0.230|
|pvs0_level_computable_terminating|✅ proved - incomplete|shostak|0.230|
|pvs0_level_computable_n|✅ proved - incomplete|shostak|0.461|
|PVS0_computable_is_terminating|✅ proved - incomplete|shostak|0.220|
|PVS0_computable_is_partial_recursive|✅ proved - incomplete|shostak|0.230|
|pvs0_level1_is_2|✅ proved - incomplete|shostak|0.472|

## `pvs0_halting`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|nat_to_PVS0_TCC1|✅ proved - incomplete|shostak|0.300|
|true_val_TCC1|✅ proved - complete|shostak|0.220|
|Oracle_TCC1|✅ proved - incomplete|shostak|0.399|
|pvs0_decidability|✅ proved - incomplete|shostak|0.783|
|pvs0_undecidability|✅ proved - incomplete|shostak|1.632|

## `dg_termination`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|M_TCC1|✅ proved - complete|shostak|0.310|
|dg_termination?_TCC1|✅ proved - incomplete|shostak|0.771|
|dg_termination?_TCC2|✅ proved - incomplete|shostak|0.710|
|pvs0_to_dg_sound_dpg_digraph|✅ proved - incomplete|shostak|1.011|
|dg_termination_implies_ccg|✅ proved - incomplete|shostak|0.642|

## `dp_termination`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|lt_wfm_dp_well_founded|✅ proved - incomplete|shostak|0.280|
|dp_dec_implies_dp_termination|✅ proved - incomplete|shostak|0.442|

## `dp_to_tcc`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|dp_termination_implies_scp_TCC1|✅ proved - complete|shostak|0.200|
|dp_termination_implies_scp|✅ proved - incomplete|shostak|0.388|
|dp_termination_implies_dp_dec|✅ proved - incomplete|shostak|0.224|

## `factorial_pvs0`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|factorial_op1_TCC1|✅ proved - complete|shostak|0.220|
|IMP_ccg_to_mwg_TCC1|✅ proved - complete|shostak|0.190|
|M_TCC1|✅ proved - complete|shostak|0.680|
|IMP_ccg_to_pvs0_TCC1|✅ proved - complete|shostak|0.620|
|IMP_bounding_circuits_TCC1|✅ proved - complete|shostak|0.604|
|A_TCC1|✅ proved - complete|shostak|0.620|
|A_TCC2|✅ proved - complete|shostak|0.620|
|factorial_mm_TCC1|✅ proved - incomplete|shostak|0.000|
|pvs0_factorial_terminating|✅ proved - incomplete|shostak|4.339|
|pvs0_factorial_tcc_termination|✅ proved - incomplete|shostak|0.600|
|factorial_msr|✅ proved - incomplete|shostak|0.590|
|factorial_wfm_TCC1|✅ proved - incomplete|shostak|0.610|

## `factorial_pvs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|factorial_TCC1|✅ proved - complete|shostak|0.635|
|factorial_TCC2|✅ proved - incomplete|shostak|1.458|
|factorial_TCC3|✅ proved - incomplete|shostak|1.451|
|factorial_TCC4|✅ proved - incomplete|shostak|1.379|

## `ack_pvs0`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|ack_op1_TCC1|✅ proved - complete|shostak|0.199|
|ack_op2_TCC1|✅ proved - complete|shostak|0.200|
|M1_TCC1|✅ proved - complete|shostak|0.360|
|A0_TCC1|✅ proved - complete|shostak|0.240|
|A0_TCC2|✅ proved - complete|shostak|0.230|
|A0_TCC3|✅ proved - complete|shostak|0.240|
|A1_TCC1|✅ proved - complete|shostak|0.226|
|A1_TCC2|✅ proved - complete|shostak|0.230|
|A2_TCC1|✅ proved - complete|shostak|0.230|
|A2_TCC2|✅ proved - complete|shostak|0.230|
|A2_TCC3|✅ proved - complete|shostak|0.220|
|ack_mm_TCC1|✅ proved - incomplete|shostak|9.241|
|pvs0_ack_terminating|✅ proved - incomplete|shostak|0.411|
|pvs0_ack_tcc_termination|✅ proved - incomplete|shostak|0.230|
|ack_msr|✅ proved - incomplete|shostak|0.230|
|ack_wfm_TCC1|✅ proved - incomplete|shostak|0.230|

## `ack_pvs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|ack_TCC1|✅ proved - incomplete|shostak|2.632|
|ack_TCC2|✅ proved - complete|shostak|0.238|
|ack_TCC3|✅ proved - incomplete|shostak|0.000|
|ack_TCC4|✅ proved - incomplete|shostak|2.741|
|ack_TCC5|✅ proved - complete|shostak|0.260|
|ack_TCC6|✅ proved - complete|shostak|0.250|
|ack_TCC7|✅ proved - incomplete|shostak|3.873|
|ack_TCC8|✅ proved - incomplete|shostak|3.901|
|ack_TCC9|✅ proved - incomplete|shostak|2.744|

## `fibo_pvs0`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|fibo_op1_TCC1|✅ proved - complete|shostak|0.220|
|M_TCC1|✅ proved - complete|shostak|0.390|
|A_TCC1|✅ proved - complete|shostak|0.240|
|A_TCC2|✅ proved - complete|shostak|0.250|
|fibo_mm_TCC1|✅ proved - incomplete|shostak|3.069|
|pvs0_fibo_terminating|✅ proved - incomplete|shostak|0.410|
|pvs0_fibo_tcc_termination|✅ proved - incomplete|shostak|0.240|
|fibo_msr|✅ proved - incomplete|shostak|0.250|
|fibo_wfm_TCC1|✅ proved - incomplete|shostak|0.260|

## `fibo_pvs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|fibo_TCC1|✅ proved - incomplete|shostak|2.125|
|fibo_TCC2|✅ proved - incomplete|shostak|2.123|
|fibo_TCC3|✅ proved - complete|shostak|0.250|
|fibo_TCC4|✅ proved - incomplete|shostak|0.000|
|fibo_TCC5|✅ proved - incomplete|shostak|2.196|

## `mf_pvs0_top`
No formula declaration found.
## `mf_pvs0_halting`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|nat2p_recursive_TCC1|✅ proved - incomplete|shostak|0.340|
|true_val_TCC1|✅ proved - complete|shostak|0.230|
|Oracle_TCC1|✅ proved - incomplete|shostak|0.368|
|mf_pvs0_halting_problem_decidability|✅ proved - incomplete|shostak|0.634|
|mf_pvs0_halting_problem_undecidability|✅ proved - incomplete|shostak|4.776|

## `mf_pvs0_computable`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|nat2PVS0_limit_TCC1|✅ proved - complete|shostak|0.210|
|nat2PVS0_limit_TCC2|✅ proved - complete|shostak|0.307|
|nat2PVS0_limit_TCC3|✅ proved - complete|shostak|0.280|
|nat2PVS0_limit_TCC4|✅ proved - complete|shostak|0.380|
|nat2PVS0_limit_TCC5|✅ proved - complete|shostak|0.280|
|nat2PVS0_limit_TCC6|✅ proved - complete|shostak|0.429|
|nat2PVS0_limit_TCC7|✅ proved - complete|shostak|0.420|
|nat2PVS0_limit_TCC8|✅ proved - complete|shostak|0.820|
|nat2PVS0_limit_TCC9|✅ proved - complete|shostak|0.280|
|nat2PVS0_limit_TCC10|✅ proved - incomplete|shostak|0.350|
|nat2PVS0_limit_TCC11|✅ proved - incomplete|shostak|0.300|
|nat2PVS0_limit_TCC12|✅ proved - incomplete|shostak|0.333|
|nat2PVS0_limit_TCC13|✅ proved - incomplete|shostak|0.270|
|nat2PVS0_limit_TCC14|✅ proved - incomplete|shostak|0.260|
|nat2PVS0_limit_TCC15|✅ proved - incomplete|shostak|0.320|
|nat2PVS0_limit_TCC16|✅ proved - complete|shostak|0.441|
|nat2PVS0_limit_TCC17|✅ proved - incomplete|shostak|0.260|
|nat2PVS0_limit_TCC18|✅ proved - incomplete|shostak|0.260|
|nat2PVS0_limit_TCC19|✅ proved - incomplete|shostak|0.258|
|nat2PVS0_limit_TCC20|✅ proved - incomplete|shostak|1.456|
|PVS02nat_limit_TCC1|✅ proved - complete|shostak|0.270|
|PVS02nat_limit_TCC2|✅ proved - complete|shostak|0.300|
|PVS02nat_limit_TCC3|✅ proved - complete|shostak|0.280|
|PVS02nat_limit_TCC4|✅ proved - complete|shostak|0.290|
|PVS02nat_limit_TCC5|✅ proved - complete|shostak|0.280|
|PVS02nat_limit_TCC6|✅ proved - complete|shostak|0.310|
|PVS02nat_limit_TCC7|✅ proved - complete|shostak|0.280|
|PVS02nat_limit_TCC8|✅ proved - complete|shostak|0.301|
|PVS02nat_limit_TCC9|✅ proved - complete|shostak|0.280|
|PVS02nat_limit_TCC10|✅ proved - complete|shostak|0.310|
|PVS02nat_limit_TCC11|✅ proved - complete|shostak|0.000|
|PVS02nat_limit_TCC12|✅ proved - complete|shostak|0.300|
|PVS02nat_limit_TCC13|✅ proved - complete|shostak|0.260|
|PVS02nat_limit_TCC14|✅ proved - complete|shostak|0.310|
|nat2PVS0_PVS02nat_limit|✅ proved - incomplete|shostak|2.134|
|PVS02nat_nat2PVS0_limit|✅ proved - incomplete|shostak|1.894|
|cons2nat_TCC1|✅ proved - complete|shostak|0.220|
|cons2nat_TCC2|✅ proved - complete|shostak|0.219|
|cons2nat_TCC3|✅ proved - incomplete|shostak|0.440|
|cons2nat_TCC4|✅ proved - incomplete|shostak|0.509|
|listnat2nat_TCC1|✅ proved - complete|shostak|0.250|
|listnat2nat_TCC2|✅ proved - complete|shostak|0.230|
|nat2listnat_aux_TCC1|✅ proved - complete|shostak|0.230|
|nat2listnat_aux_TCC2|✅ proved - complete|shostak|0.220|
|length_nat2listnat_aux|✅ proved - incomplete|shostak|0.339|
|nat2listnat_aux_cons2nat_TCC1|✅ proved - complete|shostak|0.240|
|nat2listnat_aux_cons2nat|✅ proved - incomplete|shostak|0.534|
|cons2nat_nat2listnat_aux_TCC1|✅ proved - incomplete|shostak|0.286|
|cons2nat_nat2listnat_aux|✅ proved - incomplete|shostak|0.725|
|listnat2nat_nat2listnat|✅ proved - incomplete|shostak|0.340|
|nat2listnat_listnat2nat|✅ proved - incomplete|shostak|0.300|
|listPVS0nat2nat_TCC1|✅ proved - complete|shostak|1.092|
|listPVS0nat2nat_TCC2|✅ proved - complete|shostak|0.270|
|listPVS0nat2nat_TCC3|✅ proved - incomplete|shostak|0.957|
|nat2listPVS0nat_TCC1|✅ proved - incomplete|shostak|0.310|
|nat2listPVS0nat_TCC2|✅ proved - incomplete|shostak|0.230|
|nat2listPVS0nat_TCC3|✅ proved - incomplete|shostak|2.306|
|listPVS0nat2nat_nat2listPVS0nat|✅ proved - incomplete|shostak|0.764|
|nat2listPVS0nat_listPVS0nat2nat|✅ proved - incomplete|shostak|1.814|

## `mf_pvs0_lang`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|terminating?_TCC1|✅ proved - complete|shostak|0.246|
|deterministic|✅ proved - complete|shostak|0.250|
|eval_pvs0_ge_n|✅ proved - complete|shostak|0.260|
|semantic_rel_eval|✅ proved - complete|shostak|0.260|
|eval_terminates|✅ proved - complete|shostak|0.236|
|terminating_determined_all|✅ proved - complete|shostak|0.230|
|mu_nonempty|✅ proved - complete|shostak|0.260|
|mu_TCC1|✅ proved - complete|shostak|0.227|
|mu_TCC2|✅ proved - complete|shostak|0.320|
|mu_terminates|✅ proved - complete|shostak|0.401|
|mu_min|✅ proved - complete|shostak|0.256|
|mu_eval_TCC1|✅ proved - complete|shostak|0.310|
|eval_semantic|✅ proved - complete|shostak|0.270|
|mu_eval_correct|✅ proved - complete|shostak|0.320|
|Delta_undetermined|✅ proved - complete|shostak|0.554|
|Delta_non_terminating|✅ proved - complete|shostak|0.230|
|pvs0_not_in_pvs|✅ proved - complete|shostak|0.290|
|offset_rec_TCC1|✅ proved - complete|shostak|0.259|
|offset_rec_TCC2|✅ proved - complete|shostak|0.250|
|offset_rec_TCC3|✅ proved - complete|shostak|0.260|
|offset_rec_TCC4|✅ proved - complete|shostak|0.230|
|offset_rec_TCC5|✅ proved - complete|shostak|0.260|
|offset_rec_TCC6|✅ proved - complete|shostak|0.260|
|offset_rec_TCC7|✅ proved - complete|shostak|0.250|
|offset_composition|✅ proved - complete|shostak|0.937|
|offset_composition2|✅ proved - complete|shostak|0.319|
|add_rec_list_aux_TCC1|✅ proved - complete|shostak|0.250|
|add_rec_list_aux|✅ proved - incomplete|shostak|5.285|
|valid_index_rec_offset|✅ proved - complete|shostak|1.005|
|add_rec_list_aux2_TCC1|✅ proved - complete|shostak|0.230|
|add_rec_list_aux2|✅ proved - incomplete|shostak|4.690|
|add_rec_list|✅ proved - incomplete|shostak|0.508|
|add_rec_list2|✅ proved - incomplete|shostak|0.432|

## `mf_pvs0_expr`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|semantic_rel_expr_TCC1|✅ proved - complete|shostak|0.232|
|semantic_rel_expr_TCC2|✅ proved - complete|shostak|0.230|
|semantic_rel_expr_TCC3|✅ proved - complete|shostak|0.240|
|semantic_rel_expr_TCC4|✅ proved - complete|shostak|0.250|
|eval_expr_TCC1|✅ proved - complete|shostak|0.255|
|eval_expr_TCC2|✅ proved - complete|shostak|0.360|
|eval_expr_TCC3|✅ proved - complete|shostak|0.460|
|eval_expr_TCC4|✅ proved - complete|shostak|0.270|
|eval_expr_TCC5|✅ proved - complete|shostak|0.446|
|eval_expr_TCC6|✅ proved - complete|shostak|0.520|
|eval_expr_TCC7|✅ proved - complete|shostak|0.530|
|eval_expr_TCC8|✅ proved - complete|shostak|0.510|
|eval_expr_TCC9|✅ proved - complete|shostak|0.259|
|eval_expr_TCC10|✅ proved - complete|shostak|0.260|
|eval_expr_TCC11|✅ proved - complete|shostak|0.360|
|eval_expr_ge_n_j_TCC1|✅ proved - complete|shostak|0.220|
|eval_expr_ge_n_j_TCC2|✅ proved - complete|shostak|0.250|
|eval_expr_ge_n_j_TCC3|✅ proved - complete|shostak|0.234|
|eval_expr_ge_n_j_TCC4|✅ proved - complete|shostak|0.260|
|eval_expr_ge_n_j_TCC5|✅ proved - complete|shostak|0.310|
|eval_expr_ge_n_j_TCC6|✅ proved - complete|shostak|0.230|
|eval_expr_ge_n_j_TCC7|✅ proved - complete|shostak|0.270|
|eval_expr_ge_n_j_TCC8|✅ proved - complete|shostak|0.320|
|eval_expr_ge_n_j_TCC9|✅ proved - complete|shostak|0.000|
|eval_expr_ge_n_j_TCC10|✅ proved - complete|shostak|0.320|
|eval_expr_ge_n_j_TCC11|✅ proved - complete|shostak|0.300|
|eval_expr_ge_n_j_TCC12|✅ proved - complete|shostak|0.253|
|eval_expr_ge_n_j_TCC13|✅ proved - complete|shostak|0.270|
|eval_expr_ge_n_j_TCC14|✅ proved - complete|shostak|0.370|
|eval_expr_ge_n_j_TCC15|✅ proved - complete|shostak|0.270|
|eval_expr_ge_n_j_TCC16|✅ proved - complete|shostak|0.220|
|eval_expr_gt_0|✅ proved - complete|shostak|0.210|
|eval_expr_ge_n|✅ proved - complete|shostak|0.351|
|semantic_rel_eval_expr|✅ proved - complete|shostak|3.147|
|eval_expr_n_pos|✅ proved - complete|shostak|0.235|
|deterministic_expr|✅ proved - complete|shostak|0.340|
|eval_expr_semantic_rel_j_TCC1|✅ proved - complete|shostak|0.235|
|eval_expr_semantic_rel_j_TCC2|✅ proved - complete|shostak|0.240|
|eval_expr_semantic_rel_j_TCC3|✅ proved - complete|shostak|0.230|
|eval_expr_semantic_rel_j_TCC4|✅ proved - complete|shostak|0.263|
|eval_expr_semantic_rel_j_TCC5|✅ proved - complete|shostak|0.290|
|eval_expr_semantic_rel_j_TCC6|✅ proved - complete|shostak|0.220|
|eval_expr_semantic_rel_j_TCC7|✅ proved - complete|shostak|0.272|
|eval_expr_semantic_rel_j_TCC8|✅ proved - complete|shostak|0.290|
|eval_expr_semantic_rel_j_TCC9|✅ proved - complete|shostak|0.220|
|eval_expr_semantic_rel_j_TCC10|✅ proved - complete|shostak|0.309|
|eval_expr_semantic_rel_j_TCC11|✅ proved - complete|shostak|0.330|
|eval_expr_semantic_rel_j_TCC12|✅ proved - complete|shostak|0.260|
|eval_expr_semantic_rel_j_TCC13|✅ proved - complete|shostak|0.270|
|eval_expr_semantic_rel_j_TCC14|✅ proved - complete|shostak|0.352|
|eval_expr_semantic_rel_j_TCC15|✅ proved - complete|shostak|0.290|
|eval_expr_semantic_rel_j_TCC16|✅ proved - complete|shostak|0.230|
|eval_expr_semantic_rel|✅ proved - complete|shostak|0.352|
|eval_expr_terminates|✅ proved - complete|shostak|0.290|

## `subtype_length`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|subtype_length|✅ proved - complete|shostak|0.220|
|subtype_nth|✅ proved - complete|shostak|0.230|
|subtype_append|✅ proved - complete|shostak|0.220|
|subtype_every|✅ proved - complete|shostak|0.220|

## `subtype_map`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|subtype_map|✅ proved - complete|shostak|0.270|

## `map_identity`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|map_identity|✅ proved - complete|shostak|0.230|

## `mf_pvs0_Fixedpoint`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|diagonal_function_TCC1|✅ proved - complete|shostak|0.310|
|part2part_TCC1|✅ proved - complete|shostak|0.220|
|part2part_TCC2|✅ proved - incomplete|shostak|0.260|
|part2part_TCC3|✅ proved - incomplete|shostak|0.250|
|fixed_point|✅ proved - incomplete|shostak|7.358|

## `map_append`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|map_append|✅ proved - complete|shostak|0.260|

## `mf_pvs0_Rices_Theorem_Corollaries`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|uniform_halting_problem_undecidability_Turing_complete|✅ proved - incomplete|shostak|0.677|
|fixed_point_existence_undecidability_Turing_complete|✅ proved - incomplete|shostak|0.772|
|self_replication_undecidability_Turing_complete|✅ proved - incomplete|shostak|2.816|
|pvs0_program_equivalence_undecidability_Turing_complete|✅ proved - incomplete|shostak|2.817|
|natural_predicate_undecidability|✅ proved - incomplete|shostak|0.290|

## `mf_pvs0_Rices_Theorem`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Generalized_Recursion_Theorem_TCC1|✅ proved - incomplete|shostak|0.380|
|Generalized_Recursion_Theorem_TCC2|✅ proved - incomplete|shostak|0.460|
|Generalized_Recursion_implies_pvs0_Rices_Theorem|✅ proved - incomplete|shostak|29.538|
|Rice_theorem_for_Turing_complete_pvs0|✅ proved - incomplete|shostak|0.280|

## `mf_pvs0_Recursion_Theorem`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|p_recursive2nat_TCC1|✅ proved - incomplete|shostak|0.283|
|greater_index_rec_TCC1|✅ proved - complete|shostak|0.250|
|greater_index_rec_TCC2|✅ proved - complete|shostak|0.270|
|greater_index_rec_TCC3|✅ proved - complete|shostak|0.260|
|greater_index_rec_TCC4|✅ proved - complete|shostak|0.267|
|greater_index_rec_TCC5|✅ proved - complete|shostak|0.260|
|greater_index_rec_TCC6|✅ proved - complete|shostak|0.270|
|greater_index_rec_TCC7|✅ proved - complete|shostak|0.260|
|greater_index_rec_correctness|✅ proved - complete|shostak|0.534|
|greater_index_rec_list_TCC1|✅ proved - complete|shostak|0.220|
|greater_index_rec_list_TCC2|✅ proved - complete|shostak|0.260|
|greater_index_rec_list_correctness|✅ proved - complete|shostak|0.410|
|printA_TCC1|✅ proved - incomplete|shostak|0.341|
|map_offset_rec_appendn|✅ proved - incomplete|shostak|0.340|
|print_correctness_TCC1|✅ proved - incomplete|shostak|0.340|
|print_correctness|✅ proved - incomplete|shostak|0.000|
|vr_subterm|✅ proved - incomplete|shostak|0.420|
|print_limited|✅ proved - incomplete|shostak|5.408|
|Recursion_Theorem_TCC1|✅ proved - incomplete|shostak|0.380|
|Recursion_Theorem_TCC2|✅ proved - incomplete|shostak|0.480|
|Recursion_Theorem|✅ proved - incomplete|shostak|25.418|

## `mf_pvs0_basic_programs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|equal_TCC1|✅ proved - incomplete|shostak|0.449|
|equal_works|✅ proved - incomplete|shostak|2.184|
|sub_function_TCC1|✅ proved - complete|shostak|0.230|
|sub_TCC1|✅ proved - incomplete|shostak|0.523|
|sub_works|✅ proved - incomplete|shostak|1.944|
|sub1_TCC1|✅ proved - complete|shostak|0.220|
|sub1_TCC2|✅ proved - incomplete|shostak|0.694|
|sub1_works|✅ proved - incomplete|shostak|0.927|
|sum_function_TCC1|✅ proved - complete|shostak|0.217|
|sum_function_TCC2|✅ proved - complete|shostak|0.220|
|sum_TCC1|✅ proved - incomplete|shostak|0.921|
|sum_works|✅ proved - incomplete|shostak|2.012|
|sum_function_correctness|✅ proved - complete|shostak|0.250|
|sum_correctness|✅ proved - incomplete|shostak|0.220|
|mult_TCC1|✅ proved - incomplete|shostak|0.340|
|mult_TCC2|✅ proved - incomplete|shostak|2.736|
|mult_works|✅ proved - incomplete|shostak|6.002|
|mult_function_correctness|✅ proved - complete|shostak|0.246|
|mult_correctness|✅ proved - incomplete|shostak|0.240|

## `mf_pvs0_Turing_Completeness`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|proj_aux_function_TCC1|✅ proved - complete|shostak|0.230|
|proj_aux_function_TCC2|✅ proved - complete|shostak|0.250|
|nat2list_TCC1|✅ proved - complete|shostak|0.220|
|nat2list_TCC2|✅ proved - complete|shostak|0.210|
|nat2list_length|✅ proved - incomplete|shostak|0.324|
|proj_aux_function_not_last|✅ proved - incomplete|shostak|0.000|
|proj_aux_function_last_TCC1|✅ proved - complete|shostak|0.240|
|proj_aux_function_last_TCC2|✅ proved - incomplete|shostak|0.260|
|proj_aux_function_last|✅ proved - incomplete|shostak|1.188|
|nat2list_extension_TCC1|✅ proved - incomplete|shostak|0.240|
|nat2list_extension_TCC2|✅ proved - incomplete|shostak|0.240|
|nat2list_extension|✅ proved - incomplete|shostak|0.500|
|proj_aux_function_works_TCC1|✅ proved - incomplete|shostak|0.252|
|proj_aux_function_works|✅ proved - incomplete|shostak|0.895|
|proj_aux_TCC1|✅ proved - complete|shostak|0.280|
|proj_aux_TCC2|✅ proved - incomplete|shostak|0.884|
|proj_aux_works|✅ proved - incomplete|shostak|7.905|
|proj_TCC1|✅ proved - incomplete|shostak|0.736|
|proj_works|✅ proved - incomplete|shostak|1.913|
|proj_correctness_TCC1|✅ proved - incomplete|shostak|0.240|
|proj_correctness|✅ proved - incomplete|shostak|0.313|
|expr_comp_TCC1|✅ proved - incomplete|shostak|0.330|
|expr_comp_TCC2|✅ proved - incomplete|shostak|0.241|
|rec_indices_chain_offset_is_limited|✅ proved - incomplete|shostak|1.316|
|rec_indices_expr_comp_is_limited|✅ proved - incomplete|shostak|0.938|
|chain_offset_length|✅ proved - incomplete|shostak|0.739|
|comp_TCC1|✅ proved - incomplete|shostak|0.546|
|comp_TCC2|✅ proved - incomplete|shostak|0.837|
|list2nat_TCC1|✅ proved - complete|shostak|0.250|
|list2nat_TCC2|✅ proved - complete|shostak|0.212|
|offset_rec_chain_offset|✅ proved - incomplete|shostak|0.630|
|offset_rec_expr_comp|✅ proved - incomplete|shostak|0.537|
|limits_of_chain_offset_TCC1|✅ proved - incomplete|shostak|1.101|
|limits_of_chain_offset_TCC2|✅ proved - incomplete|shostak|0.263|
|limits_of_chain_offset|✅ proved - incomplete|shostak|13.002|
|chain_offset_prop_TCC1|✅ proved - incomplete|shostak|0.220|
|chain_offset_prop|✅ proved - incomplete|shostak|0.000|
|comp_is_composition_TCC1|✅ proved - incomplete|shostak|0.440|
|comp_is_composition|✅ proved - incomplete|shostak|5.171|
|min_relation_works|✅ proved - incomplete|shostak|0.527|
|min_relation_leq|✅ proved - incomplete|shostak|0.240|
|min_aux_TCC1|✅ proved - incomplete|shostak|0.387|
|min_aux_TCC2|✅ proved - incomplete|shostak|0.614|
|min_aux_leq_eval_expr_TCC1|✅ proved - incomplete|shostak|0.350|
|min_aux_leq_eval_expr|✅ proved - incomplete|shostak|1.934|
|min_aux_leq|✅ proved - incomplete|shostak|0.285|
|min_relation_works2|✅ proved - incomplete|shostak|0.474|
|min_aux_is_min_relation|✅ proved - incomplete|shostak|3.798|
|min_aux_correctness|✅ proved - incomplete|shostak|0.250|
|min_TCC1|✅ proved - incomplete|shostak|0.496|
|min_TCC2|✅ proved - incomplete|shostak|0.727|
|min_correctness|✅ proved - incomplete|shostak|0.000|
|prim_recurrence_relation_TCC1|✅ proved - incomplete|shostak|0.240|
|prim_recurrence_TCC1|✅ proved - incomplete|shostak|5.189|
|prim_recurrence_is_prim_recurrence_relation|✅ proved - incomplete|shostak|23.881|
|prim_recurrence_relation_works_TCC1|✅ proved - incomplete|shostak|0.220|
|prim_recurrence_relation_works_TCC2|✅ proved - incomplete|shostak|0.230|
|prim_recurrence_relation_works_TCC3|✅ proved - incomplete|shostak|0.283|
|prim_recurrence_relation_works_TCC4|✅ proved - incomplete|shostak|0.280|
|prim_recurrence_relation_works_TCC5|✅ proved - incomplete|shostak|0.290|
|prim_recurrence_relation_works|✅ proved - incomplete|shostak|4.671|
|prim_recurrence_correctness|✅ proved - incomplete|shostak|0.273|

## `chain_of_appends`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|chain_of_appends_TCC1|✅ proved - complete|shostak|0.190|
|chain_of_appends_TCC2|✅ proved - complete|shostak|0.240|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib//float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-pvsio-fix.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210219-extratregies.lisp`|
