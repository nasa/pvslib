# Summary for `PVS0`
Run started at 3:44:24 7/8/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **672**   | **672**    | **672**    | **0**  | **8:24.520 s**   |
|top|0|0|0|0|0.000|
|pvs0_expr|52|52|52|0|12.590|
|pvs0_lang|16|16|16|0|2.840|
|pvs0_cc|26|26|26|0|5.546|
|pvs0_props|68|68|68|0|50.739|
|pvs0_to_dg|20|20|20|0|6.123|
|measure_termination_defs|1|1|1|0|0.120|
|pvs0_prelude|1|1|1|0|0.110|
|measure_termination|5|5|5|0|1.095|
|pvs0_termination|17|17|17|0|13.661|
|scp_iff_pvs0|7|7|7|0|2.293|
|pvs0_eval|46|46|46|0|23.058|
|ccg_to_pvs0|3|3|3|0|0.761|
|pvs0_to_ccg|4|4|4|0|1.306|
|pvs0_pvs|3|3|3|0|1.075|
|pvs0_pvs_T|2|2|2|0|0.911|
|pvs0_expressibility|1|1|1|0|0.350|
|counting_pvs0_type|20|20|20|0|6.052|
|pvs0_to_nat|23|23|23|0|14.157|
|pvs0_computable|11|11|11|0|7.389|
|pvs0_halting|5|5|5|0|3.164|
|dg_termination|5|5|5|0|3.324|
|dp_termination|2|2|2|0|0.680|
|dp_to_tcc|3|3|3|0|0.767|
|factorial_pvs0|12|12|12|0|8.784|
|factorial_pvs|4|4|4|0|5.154|
|ack_pvs0|16|16|16|0|12.805|
|ack_pvs|9|9|9|0|17.625|
|fibo_pvs0|9|9|9|0|5.291|
|fibo_pvs|5|5|5|0|8.434|
|mf_pvs0_top|0|0|0|0|0.000|
|mf_pvs0_halting|5|5|5|0|1.494|
|mf_pvs0_computable|59|59|59|0|27.949|
|mf_pvs0_lang|33|33|33|0|23.812|
|mf_pvs0_expr|54|54|54|0|17.940|
|subtype_length|4|4|4|0|0.901|
|subtype_map|1|1|1|0|0.290|
|map_identity|1|1|1|0|0.230|
|mf_pvs0_Fixedpoint|5|5|5|0|8.273|
|map_append|1|1|1|0|0.256|
|mf_pvs0_Rices_Theorem_Corollaries|5|5|5|0|16.317|
|mf_pvs0_Rices_Theorem|4|4|4|0|23.594|
|mf_pvs0_Recursion_Theorem|21|21|21|0|54.078|
|mf_pvs0_basic_programs|19|19|19|0|21.291|
|mf_pvs0_Turing_Completeness|62|62|62|0|1:31.461|
|chain_of_appends|2|2|2|0|0.430|
## Detailed Summary 
## `top`
No formula declaration found.
## `pvs0_expr`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|semantic_rel_expr_TCC1|✅ proved - complete|shostak|0.142|
|semantic_rel_expr_TCC2|✅ proved - complete|shostak|0.130|
|semantic_rel_expr_TCC3|✅ proved - complete|shostak|0.130|
|semantic_rel_expr_TCC4|✅ proved - complete|shostak|0.130|
|eval_expr_TCC1|✅ proved - complete|shostak|0.150|
|eval_expr_TCC2|✅ proved - complete|shostak|0.278|
|eval_expr_TCC3|✅ proved - complete|shostak|0.340|
|eval_expr_TCC4|✅ proved - complete|shostak|0.160|
|eval_expr_TCC5|✅ proved - complete|shostak|0.348|
|eval_expr_TCC6|✅ proved - complete|shostak|0.400|
|eval_expr_TCC7|✅ proved - complete|shostak|0.415|
|eval_expr_TCC8|✅ proved - complete|shostak|0.400|
|eval_expr_TCC9|✅ proved - complete|shostak|0.150|
|eval_expr_TCC10|✅ proved - complete|shostak|0.147|
|eval_expr_TCC11|✅ proved - complete|shostak|0.260|
|eval_expr_ge_n_j_TCC1|✅ proved - complete|shostak|0.120|
|eval_expr_ge_n_j_TCC2|✅ proved - complete|shostak|0.160|
|eval_expr_ge_n_j_TCC3|✅ proved - complete|shostak|0.150|
|eval_expr_ge_n_j_TCC4|✅ proved - complete|shostak|0.144|
|eval_expr_ge_n_j_TCC5|✅ proved - complete|shostak|0.180|
|eval_expr_ge_n_j_TCC6|✅ proved - complete|shostak|0.150|
|eval_expr_ge_n_j_TCC7|✅ proved - complete|shostak|0.170|
|eval_expr_ge_n_j_TCC8|✅ proved - complete|shostak|0.208|
|eval_expr_ge_n_j_TCC9|✅ proved - complete|shostak|0.160|
|eval_expr_ge_n_j_TCC10|✅ proved - complete|shostak|0.209|
|eval_expr_ge_n_j_TCC11|✅ proved - complete|shostak|0.210|
|eval_expr_ge_n_j_TCC12|✅ proved - complete|shostak|0.150|
|eval_expr_ge_n_j_TCC13|✅ proved - complete|shostak|0.150|
|eval_expr_ge_n_j_TCC14|✅ proved - complete|shostak|0.240|
|eval_expr_ge_n_j_TCC15|✅ proved - complete|shostak|0.140|
|eval_expr_gt_0|✅ proved - complete|shostak|0.120|
|eval_expr_ge_n|✅ proved - complete|shostak|0.268|
|semantic_rel_eval_expr|✅ proved - complete|shostak|3.058|
|eval_expr_n_pos|✅ proved - complete|shostak|0.130|
|deterministic_expr|✅ proved - complete|shostak|0.240|
|eval_expr_semantic_rel_j_TCC1|✅ proved - complete|shostak|0.130|
|eval_expr_semantic_rel_j_TCC2|✅ proved - complete|shostak|0.134|
|eval_expr_semantic_rel_j_TCC3|✅ proved - complete|shostak|0.140|
|eval_expr_semantic_rel_j_TCC4|✅ proved - complete|shostak|0.150|
|eval_expr_semantic_rel_j_TCC5|✅ proved - complete|shostak|0.150|
|eval_expr_semantic_rel_j_TCC6|✅ proved - complete|shostak|0.110|
|eval_expr_semantic_rel_j_TCC7|✅ proved - complete|shostak|0.167|
|eval_expr_semantic_rel_j_TCC8|✅ proved - complete|shostak|0.160|
|eval_expr_semantic_rel_j_TCC9|✅ proved - complete|shostak|0.120|
|eval_expr_semantic_rel_j_TCC10|✅ proved - complete|shostak|0.170|
|eval_expr_semantic_rel_j_TCC11|✅ proved - complete|shostak|0.183|
|eval_expr_semantic_rel_j_TCC12|✅ proved - complete|shostak|0.150|
|eval_expr_semantic_rel_j_TCC13|✅ proved - complete|shostak|0.160|
|eval_expr_semantic_rel_j_TCC14|✅ proved - complete|shostak|0.170|
|eval_expr_semantic_rel_j_TCC15|✅ proved - complete|shostak|0.120|
|eval_expr_semantic_rel|✅ proved - complete|shostak|0.259|
|eval_expr_terminates|✅ proved - complete|shostak|0.180|

## `pvs0_lang`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|deterministic|✅ proved - complete|shostak|0.127|
|eval_pvs0_ge_n|✅ proved - complete|shostak|0.130|
|semantic_rel_eval|✅ proved - complete|shostak|0.150|
|eval_terminates|✅ proved - complete|shostak|0.110|
|terminating_determined_all|✅ proved - complete|shostak|0.120|
|mu_nonempty|✅ proved - complete|shostak|0.150|
|mu_TCC1|✅ proved - complete|shostak|0.119|
|mu_TCC2|✅ proved - complete|shostak|0.200|
|mu_terminates|✅ proved - complete|shostak|0.299|
|mu_min|✅ proved - complete|shostak|0.150|
|mu_eval_TCC1|✅ proved - complete|shostak|0.200|
|eval_semantic|✅ proved - complete|shostak|0.160|
|mu_eval_correct|✅ proved - complete|shostak|0.200|
|Delta_undetermined|✅ proved - complete|shostak|0.413|
|Delta_non_terminating|✅ proved - complete|shostak|0.120|
|pvs0_not_in_pvs|✅ proved - complete|shostak|0.192|

## `pvs0_cc`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|eval_conds_TCC1|✅ proved - complete|shostak|0.170|
|valid_path_TCC1|✅ proved - incomplete|shostak|0.200|
|valid_path_TCC2|✅ proved - incomplete|shostak|0.193|
|valid_path_TCC3|✅ proved - incomplete|shostak|0.210|
|valid_path_TCC4|✅ proved - incomplete|shostak|0.180|
|valid_path_TCC5|✅ proved - incomplete|shostak|0.191|
|valid_path_TCC6|✅ proved - incomplete|shostak|0.210|
|valid_path_TCC7|✅ proved - incomplete|shostak|0.210|
|subterm_at_TCC1|✅ proved - incomplete|shostak|0.130|
|subterm_at_TCC2|✅ proved - incomplete|shostak|0.123|
|subterm_at_TCC3|✅ proved - incomplete|shostak|0.180|
|subterm_at_TCC4|✅ proved - incomplete|shostak|0.160|
|subterm_at_TCC5|✅ proved - incomplete|shostak|0.130|
|subterm_at_TCC6|✅ proved - incomplete|shostak|0.163|
|subterm_at_TCC7|✅ proved - incomplete|shostak|0.290|
|subterm_at_TCC8|✅ proved - incomplete|shostak|0.210|
|subterm_at_TCC9|✅ proved - incomplete|shostak|0.168|
|subterm_at_TCC10|✅ proved - incomplete|shostak|0.130|
|subterm_at_TCC11|✅ proved - incomplete|shostak|0.190|
|subterm_at_TCC12|✅ proved - incomplete|shostak|0.150|
|subterm_at_TCC13|✅ proved - incomplete|shostak|0.141|
|subterm_at_TCC14|✅ proved - incomplete|shostak|0.220|
|subterm_at_TCC15|✅ proved - incomplete|shostak|0.200|
|subterm_at_TCC16|✅ proved - incomplete|shostak|0.110|
|path_conditions_TCC1|✅ proved - incomplete|shostak|1.137|
|path_conditions_TCC2|✅ proved - incomplete|shostak|0.150|

## `pvs0_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|subterm_transitive|✅ proved - complete|shostak|0.562|
|null_path|✅ proved - incomplete|shostak|0.000|
|valid_paths_subexpr|✅ proved - incomplete|shostak|2.419|
|subterm_append_TCC1|✅ proved - incomplete|shostak|0.145|
|subterm_append|✅ proved - incomplete|shostak|2.494|
|valid_0_path_ext|✅ proved - incomplete|shostak|0.629|
|valid_1_path_ext|✅ proved - incomplete|shostak|0.810|
|valid_2_path_ext|✅ proved - incomplete|shostak|0.635|
|app_prefix_of_path_ext|✅ proved - incomplete|shostak|4.000|
|cnst_vr_path_ext|✅ proved - incomplete|shostak|0.170|
|op1_rec_path_ext|✅ proved - incomplete|shostak|0.848|
|op2_path_ext|✅ proved - incomplete|shostak|1.198|
|ite_path_ext|✅ proved - incomplete|shostak|1.599|
|valid_paths_TCC1|✅ proved - incomplete|shostak|0.153|
|valid_paths_TCC2|✅ proved - complete|shostak|0.310|
|valid_paths_TCC3|✅ proved - incomplete|shostak|0.868|
|valid_paths_TCC4|✅ proved - incomplete|shostak|1.208|
|valid_paths_TCC5|✅ proved - incomplete|shostak|0.110|
|valid_paths_TCC6|✅ proved - complete|shostak|0.119|
|valid_paths_TCC7|✅ proved - complete|shostak|0.120|
|valid_paths_TCC8|✅ proved - incomplete|shostak|1.893|
|valid_paths_TCC9|✅ proved - incomplete|shostak|0.000|
|valid_paths_TCC10|✅ proved - incomplete|shostak|0.111|
|valid_paths_TCC11|✅ proved - complete|shostak|0.110|
|valid_paths_TCC12|✅ proved - incomplete|shostak|0.871|
|valid_paths_TCC13|✅ proved - incomplete|shostak|1.196|
|valid_paths_TCC14|✅ proved - incomplete|shostak|0.120|
|valid_paths_TCC15|✅ proved - complete|shostak|0.116|
|valid_paths_TCC16|✅ proved - complete|shostak|0.140|
|valid_paths_TCC17|✅ proved - complete|shostak|0.150|
|valid_paths_TCC18|✅ proved - incomplete|shostak|2.416|
|valid_paths_TCC19|✅ proved - incomplete|shostak|7.984|
|valid_paths_TCC20|✅ proved - incomplete|shostak|0.166|
|valid_paths_TCC21|✅ proved - incomplete|shostak|0.170|
|subset_member_sl|✅ proved - incomplete|shostak|0.405|
|suffix_subset_sl|✅ proved - incomplete|shostak|0.140|
|path_conditions_cons_TCC1|✅ proved - incomplete|shostak|0.324|
|path_conditions_cons_TCC2|✅ proved - incomplete|shostak|0.160|
|path_conditions_cons|✅ proved - incomplete|shostak|0.177|
|path_conditions_unmodified_TCC1|✅ proved - incomplete|shostak|0.160|
|path_conditions_unmodified|✅ proved - incomplete|shostak|0.150|
|path_conditions_unmodified2_TCC1|✅ proved - incomplete|shostak|0.163|
|path_conditions_unmodified2|✅ proved - incomplete|shostak|0.150|
|suffix_path_cnds_suffix|✅ proved - incomplete|shostak|0.723|
|suffix_path_cnds|✅ proved - incomplete|shostak|0.145|
|condition_is_subterm|✅ proved - incomplete|shostak|1.728|
|condition_is_subterm_append|✅ proved - incomplete|shostak|0.581|
|path_of_path_conditions|✅ proved - incomplete|shostak|2.075|
|member_conds_rec|✅ proved - complete|shostak|0.298|
|member_conds_rec2|✅ proved - complete|shostak|0.266|
|eval_conds_reverse|✅ proved - incomplete|shostak|0.171|
|suffix_conds_rec|✅ proved - incomplete|shostak|0.130|
|suffix_conds_valid_sub|✅ proved - incomplete|shostak|0.150|
|suffix_conds_valid|✅ proved - incomplete|shostak|0.272|
|rec_decreasing_TCC1|✅ proved - incomplete|shostak|0.150|
|rec_decreasing_TCC2|✅ proved - incomplete|shostak|0.160|
|rec_decreasing_TCC3|✅ proved - incomplete|shostak|0.217|
|rec_decreasing_TCC4|✅ proved - incomplete|shostak|0.180|
|rec_decreasing|✅ proved - incomplete|shostak|4.158|
|rec_mu_decreasing_TCC1|✅ proved - incomplete|shostak|0.185|
|rec_mu_decreasing_TCC2|✅ proved - incomplete|shostak|0.220|
|rec_mu_decreasing_TCC3|✅ proved - incomplete|shostak|0.249|
|rec_mu_decreasing_TCC4|✅ proved - incomplete|shostak|0.280|
|rec_mu_decreasing|✅ proved - incomplete|shostak|0.822|
|decreasing_rec_TCC1|✅ proved - incomplete|shostak|0.130|
|decreasing_rec_TCC2|✅ proved - incomplete|shostak|0.215|
|decreasing_rec_TCC3|✅ proved - incomplete|shostak|0.180|
|decreasing_rec|✅ proved - incomplete|shostak|1.385|

## `pvs0_to_dg`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|pvs0_to_dg_make_cc_TCC1|✅ proved - incomplete|shostak|0.130|
|pvs0_to_dg_make_cc_TCC2|✅ proved - incomplete|shostak|0.150|
|pvs0_to_dg_paths_vertices_TCC1|✅ proved - incomplete|shostak|0.262|
|pvs0_to_dg_paths_vertices_TCC2|✅ proved - incomplete|shostak|0.160|
|pvs0_to_dg_paths_vertices_TCC3|✅ proved - incomplete|shostak|0.159|
|pvs0_to_dg_paths_vertices_TCC4|✅ proved - incomplete|shostak|0.250|
|pvs0_to_dg_paths_vertices_TCC5|✅ proved - incomplete|shostak|0.417|
|pvs0_to_dg_paths_vertices_TCC6|✅ proved - incomplete|shostak|0.264|
|pvs0_to_dg_paths_vertices_TCC7|✅ proved - incomplete|shostak|0.412|
|pvs0_to_dg_vertices_completeness|✅ proved - incomplete|shostak|0.571|
|cc_of_pvs0_soundness|✅ proved - incomplete|shostak|0.221|
|cc_of_pvs0_completeness|✅ proved - incomplete|shostak|0.150|
|pvs0_ccs_rec_TCC1|✅ proved - incomplete|shostak|0.140|
|pvs0_ccs_rec_TCC2|✅ proved - incomplete|shostak|0.272|
|pvs0_ccs_rec_TCC3|✅ proved - incomplete|shostak|0.173|
|pvs0_ccs_rec_TCC4|✅ proved - incomplete|shostak|0.270|
|pvs0_ccs_rec_TCC5|✅ proved - incomplete|shostak|0.362|
|pvs0_ccs_completness|✅ proved - incomplete|shostak|0.272|
|dg_vert_valid_cc|✅ proved - incomplete|shostak|0.572|
|pvs0_to_fully_connected_dg_sound_ccg|✅ proved - incomplete|shostak|0.916|

## `measure_termination_defs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|wfm_tcc_TCC1|✅ proved - incomplete|shostak|0.120|

## `pvs0_prelude`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|lt_TCC1|✅ proved - complete|shostak|0.110|

## `measure_termination`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|mu_soundness_TCC1|✅ proved - incomplete|shostak|0.336|
|mu_soundness_TCC2|✅ proved - incomplete|shostak|0.210|
|mu_soundness|✅ proved - incomplete|shostak|0.220|
|terminates_implies_pvs0_tcc_TCC1|✅ proved - complete|shostak|0.160|
|terminates_implies_pvs0_tcc|✅ proved - incomplete|shostak|0.169|

## `pvs0_termination`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|lt_val_wf|✅ proved - incomplete|shostak|0.300|
|lt_val_no_desc_inf_branch|✅ proved - incomplete|shostak|0.000|
|omega_is_eval_ub_TCC1|✅ proved - incomplete|shostak|0.130|
|omega_is_eval_ub_TCC2|✅ proved - incomplete|shostak|0.126|
|omega_is_eval_ub|✅ proved - incomplete|shostak|10.150|
|omega_is_eval_ub_bis|✅ proved - incomplete|shostak|0.145|
|pvs0_tcc_implies_terminates|✅ proved - incomplete|shostak|0.542|
|pvs0_tcc_termination_j|✅ proved - incomplete|shostak|0.110|
|mu_le_omega_TCC1|✅ proved - incomplete|shostak|0.120|
|mu_le_omega_TCC2|✅ proved - incomplete|shostak|0.120|
|mu_le_omega_TCC3|✅ proved - incomplete|shostak|0.130|
|mu_le_omega|✅ proved - incomplete|shostak|0.499|
|Omega_n_TCC1|✅ proved - incomplete|shostak|0.120|
|Omega_n_TCC2|✅ proved - incomplete|shostak|0.130|
|Omega_n_TCC3|✅ proved - incomplete|shostak|0.280|
|Omega_preval_TCC1|✅ proved - incomplete|shostak|0.194|
|Omega_eval_correct|✅ proved - incomplete|shostak|0.565|

## `scp_iff_pvs0`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|R_wf|✅ proved - incomplete|shostak|0.323|
|R_no_desc_inf_branch|✅ proved - incomplete|shostak|0.914|
|scp_implies_pvs0_tcc_TCC1|✅ proved - incomplete|shostak|0.210|
|scp_implies_pvs0_tcc|✅ proved - incomplete|shostak|0.283|
|pvs0_tcc_implies_scp_TCC1|✅ proved - complete|shostak|0.130|
|pvs0_tcc_implies_scp|✅ proved - incomplete|shostak|0.303|
|scp_iff_pvs0_terminates|✅ proved - incomplete|shostak|0.130|

## `pvs0_eval`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|pvs0_eval_expr_TCC1|✅ proved - incomplete|shostak|0.220|
|pvs0_eval_expr_TCC2|✅ proved - incomplete|shostak|0.130|
|pvs0_eval_expr_TCC3|✅ proved - incomplete|shostak|0.120|
|pvs0_eval_expr_TCC4|✅ proved - incomplete|shostak|0.170|
|pvs0_eval_expr_TCC5|✅ proved - incomplete|shostak|0.160|
|pvs0_eval_expr_TCC6|✅ proved - incomplete|shostak|0.569|
|pvs0_eval_expr_TCC7|✅ proved - incomplete|shostak|0.440|
|pvs0_eval_expr_TCC8|✅ proved - incomplete|shostak|0.368|
|pvs0_eval_expr_TCC9|✅ proved - incomplete|shostak|0.210|
|pvs0_eval_expr_TCC10|✅ proved - incomplete|shostak|0.598|
|pvs0_eval_expr_TCC11|✅ proved - incomplete|shostak|0.530|
|pvs0_eval_expr_TCC12|✅ proved - incomplete|shostak|0.669|
|pvs0_eval_expr_TCC13|✅ proved - incomplete|shostak|0.583|
|pvs0_eval_expr_TCC14|✅ proved - incomplete|shostak|0.230|
|pvs0_eval_expr_TCC15|✅ proved - incomplete|shostak|0.233|
|pvs0_eval_expr_TCC16|✅ proved - incomplete|shostak|0.000|
|pvs0_eval_expr_TCC17|✅ proved - incomplete|shostak|0.593|
|pvs0_eval_expr_TCC18|✅ proved - incomplete|shostak|0.844|
|pvs0_eval_expr_TCC19|✅ proved - incomplete|shostak|0.639|
|pvs0_eval_expr_TCC20|✅ proved - incomplete|shostak|0.607|
|pvs0_eval_expr_TCC21|✅ proved - incomplete|shostak|0.847|
|pvs0_eval_expr_TCC22|✅ proved - incomplete|shostak|0.640|
|pvs0_eval_expr_TCC23|✅ proved - incomplete|shostak|0.613|
|pvs0_eval_expr_TCC24|✅ proved - incomplete|shostak|0.534|
|pvs0_eval_expr_TCC25|✅ proved - incomplete|shostak|0.445|
|pvs0_eval_expr_TCC26|✅ proved - incomplete|shostak|0.402|
|pvs0_eval_expr_TCC27|✅ proved - incomplete|shostak|1.144|
|pvs0_eval_expr_TCC28|✅ proved - incomplete|shostak|0.432|
|pvs0_eval_TCC1|✅ proved - incomplete|shostak|0.351|
|pvs0_eval_correct|✅ proved - incomplete|shostak|0.150|
|terminates_expr_transitive_TCC1|✅ proved - incomplete|shostak|0.164|
|terminates_expr_transitive_TCC2|✅ proved - incomplete|shostak|0.180|
|terminates_expr_transitive|✅ proved - incomplete|shostak|4.066|
|suffix_of_valid_conditions|✅ proved - incomplete|shostak|0.290|
|pvs0_eval_conds_TCC1|✅ proved - incomplete|shostak|0.130|
|pvs0_eval_conds_TCC2|✅ proved - incomplete|shostak|0.283|
|pvs0_eval_conds_TCC3|✅ proved - incomplete|shostak|0.276|
|pvs0_eval_conds_TCC4|✅ proved - incomplete|shostak|0.370|
|pvs0_eval_conds_TCC5|✅ proved - incomplete|shostak|0.380|
|pvs0_eval_conds_TCC6|✅ proved - incomplete|shostak|1.301|
|pvs0_eval_conds_corrrect_TCC1|✅ proved - incomplete|shostak|0.180|
|pvs0_eval_conds_corrrect|✅ proved - incomplete|shostak|0.152|
|pvs0_tcc_TCC1|✅ proved - incomplete|shostak|0.350|
|pvs0_tcc_TCC2|✅ proved - incomplete|shostak|0.795|
|pvs0_tccs_correct_TCC1|✅ proved - complete|shostak|0.155|
|pvs0_tccs_correct|✅ proved - incomplete|shostak|0.515|

## `ccg_to_pvs0`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|ccg_implies_scp_pvs0|✅ proved - incomplete|shostak|0.509|
|ccg_implies_pvs0_tcc_TCC1|✅ proved - incomplete|shostak|0.122|
|ccg_implies_pvs0_tcc|✅ proved - incomplete|shostak|0.130|

## `pvs0_to_ccg`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|scp_implies_ccg_pvs0_TCC1|✅ proved - incomplete|shostak|0.340|
|scp_implies_ccg_pvs0|✅ proved - incomplete|shostak|0.596|
|pvs0_tcc_implies_ccg_TCC1|✅ proved - complete|shostak|0.180|
|pvs0_tcc_implies_ccg|✅ proved - incomplete|shostak|0.190|

## `pvs0_pvs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|make_pvs0_TCC1|✅ proved - complete|shostak|0.381|
|pvs_to_pvs0_aux|✅ proved - incomplete|shostak|0.494|
|pvs_to_pvs0|✅ proved - incomplete|shostak|0.200|

## `pvs0_pvs_T`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|make_pvs0_TCC1|✅ proved - complete|shostak|0.410|
|pvs_to_pvs0|✅ proved - incomplete|shostak|0.501|

## `pvs0_expressibility`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|TerminationExpressible|✅ proved - incomplete|shostak|0.350|

## `counting_pvs0_type`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|G_TCC1|✅ proved - complete|shostak|0.190|
|base_TCC1|✅ proved - complete|shostak|0.343|
|inop1_at_TCC1|✅ proved - complete|shostak|0.190|
|inop1_at_TCC2|✅ proved - complete|shostak|0.220|
|op1_at_TCC1|✅ proved - complete|shostak|0.310|
|op1_upto_TCC1|✅ proved - complete|shostak|0.420|
|inop2_at_TCC1|✅ proved - complete|shostak|0.200|
|finpair_TCC1|✅ proved - incomplete|shostak|0.423|
|op2_at_TCC1|✅ proved - incomplete|shostak|0.336|
|op2_upto_TCC1|✅ proved - incomplete|shostak|0.423|
|fintrip_TCC1|✅ proved - incomplete|shostak|0.470|
|ite_set_TCC1|✅ proved - incomplete|shostak|0.317|
|inrec_set_TCC1|✅ proved - complete|shostak|0.210|
|rec_set_TCC1|✅ proved - complete|shostak|0.300|
|level_set_member|✅ proved - incomplete|shostak|0.189|
|level_TCC1|✅ proved - complete|shostak|0.210|
|level_TCC2|✅ proved - complete|shostak|0.190|
|levels_increase|✅ proved - incomplete|shostak|0.320|
|levels_cover|✅ proved - incomplete|shostak|0.611|
|nat_onto_PVS0Expr|✅ proved - incomplete|shostak|0.180|

## `pvs0_to_nat`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|nat2PVS0_TCC1|✅ proved - complete|shostak|0.240|
|nat2PVS0_TCC2|✅ proved - complete|shostak|0.250|
|nat2PVS0_TCC3|✅ proved - complete|shostak|0.250|
|nat2PVS0_TCC4|✅ proved - complete|shostak|0.190|
|nat2PVS0_TCC5|✅ proved - complete|shostak|0.240|
|nat2PVS0_TCC6|✅ proved - incomplete|shostak|0.283|
|nat2PVS0_TCC7|✅ proved - incomplete|shostak|0.340|
|nat2PVS0_TCC8|✅ proved - incomplete|shostak|0.300|
|nat2PVS0_TCC9|✅ proved - incomplete|shostak|0.280|
|nat2PVS0_TCC10|✅ proved - complete|shostak|0.387|
|nat2PVS0_TCC11|✅ proved - incomplete|shostak|0.230|
|nat2PVS0_TCC12|✅ proved - incomplete|shostak|0.251|
|nat2PVS0_TCC13|✅ proved - incomplete|shostak|0.250|
|PVS02nat_TCC1|✅ proved - complete|shostak|0.230|
|PVS02nat_TCC2|✅ proved - complete|shostak|0.230|
|PVS02nat_TCC3|✅ proved - complete|shostak|0.241|
|PVS02nat_TCC4|✅ proved - complete|shostak|0.230|
|PVS02nat_TCC5|✅ proved - complete|shostak|0.240|
|PVS02nat_TCC6|✅ proved - complete|shostak|0.240|
|PVS02nat_TCC7|✅ proved - complete|shostak|0.245|
|nat2PVS0_inverse|✅ proved - incomplete|shostak|2.091|
|PVS02nat_inverse|✅ proved - incomplete|shostak|6.709|
|nat2PVS0_bijection|✅ proved - incomplete|shostak|0.210|

## `pvs0_computable`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|pvs0_level_TCC1|✅ proved - complete|shostak|0.200|
|level_surjective|✅ proved - incomplete|shostak|4.417|
|level_surjection_TCC1|✅ proved - incomplete|shostak|0.300|
|representantion|✅ proved - incomplete|shostak|0.370|
|pvs0_level_computable_TCC1|✅ proved - incomplete|shostak|0.348|
|pvs0_level_computable_TCC2|✅ proved - incomplete|shostak|0.232|
|pvs0_level_computable_terminating|✅ proved - incomplete|shostak|0.210|
|pvs0_level_computable_n|✅ proved - incomplete|shostak|0.442|
|PVS0_computable_is_terminating|✅ proved - incomplete|shostak|0.210|
|PVS0_computable_is_partial_recursive|✅ proved - incomplete|shostak|0.210|
|pvs0_level1_is_2|✅ proved - incomplete|shostak|0.450|

## `pvs0_halting`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|nat_to_PVS0_TCC1|✅ proved - incomplete|shostak|0.300|
|true_val_TCC1|✅ proved - complete|shostak|0.200|
|Oracle_TCC1|✅ proved - incomplete|shostak|0.385|
|pvs0_decidability|✅ proved - incomplete|shostak|0.759|
|pvs0_undecidability|✅ proved - incomplete|shostak|1.520|

## `dg_termination`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|M_TCC1|✅ proved - complete|shostak|0.320|
|dg_termination?_TCC1|✅ proved - incomplete|shostak|0.744|
|dg_termination?_TCC2|✅ proved - incomplete|shostak|0.693|
|pvs0_to_dg_sound_dpg_digraph|✅ proved - incomplete|shostak|0.966|
|dg_termination_implies_ccg|✅ proved - incomplete|shostak|0.601|

## `dp_termination`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|lt_wfm_dp_well_founded|✅ proved - incomplete|shostak|0.266|
|dp_dec_implies_dp_termination|✅ proved - incomplete|shostak|0.414|

## `dp_to_tcc`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|dp_termination_implies_scp_TCC1|✅ proved - complete|shostak|0.190|
|dp_termination_implies_scp|✅ proved - incomplete|shostak|0.364|
|dp_termination_implies_dp_dec|✅ proved - incomplete|shostak|0.213|

## `factorial_pvs0`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|factorial_op1_TCC1|✅ proved - complete|shostak|0.200|
|IMP_ccg_to_mwg_TCC1|✅ proved - complete|shostak|0.190|
|M_TCC1|✅ proved - complete|shostak|0.680|
|IMP_ccg_to_pvs0_TCC1|✅ proved - complete|shostak|0.650|
|IMP_bounding_circuits_TCC1|✅ proved - complete|shostak|0.664|
|A_TCC1|✅ proved - complete|shostak|0.650|
|A_TCC2|✅ proved - complete|shostak|0.660|
|factorial_mm_TCC1|✅ proved - incomplete|shostak|3.120|
|pvs0_factorial_terminating|✅ proved - incomplete|shostak|0.000|
|pvs0_factorial_tcc_termination|✅ proved - incomplete|shostak|0.660|
|factorial_msr|✅ proved - incomplete|shostak|0.650|
|factorial_wfm_TCC1|✅ proved - incomplete|shostak|0.660|

## `factorial_pvs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|factorial_TCC1|✅ proved - complete|shostak|0.691|
|factorial_TCC2|✅ proved - incomplete|shostak|1.540|
|factorial_TCC3|✅ proved - incomplete|shostak|1.497|
|factorial_TCC4|✅ proved - incomplete|shostak|1.426|

## `ack_pvs0`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|ack_op1_TCC1|✅ proved - complete|shostak|0.220|
|ack_op2_TCC1|✅ proved - complete|shostak|0.220|
|M1_TCC1|✅ proved - complete|shostak|0.340|
|A0_TCC1|✅ proved - complete|shostak|0.210|
|A0_TCC2|✅ proved - complete|shostak|0.220|
|A0_TCC3|✅ proved - complete|shostak|0.230|
|A1_TCC1|✅ proved - complete|shostak|0.210|
|A1_TCC2|✅ proved - complete|shostak|0.215|
|A2_TCC1|✅ proved - complete|shostak|0.210|
|A2_TCC2|✅ proved - complete|shostak|0.230|
|A2_TCC3|✅ proved - complete|shostak|0.230|
|ack_mm_TCC1|✅ proved - incomplete|shostak|9.203|
|pvs0_ack_terminating|✅ proved - incomplete|shostak|0.387|
|pvs0_ack_tcc_termination|✅ proved - incomplete|shostak|0.230|
|ack_msr|✅ proved - incomplete|shostak|0.230|
|ack_wfm_TCC1|✅ proved - incomplete|shostak|0.220|

## `ack_pvs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|ack_TCC1|✅ proved - incomplete|shostak|2.682|
|ack_TCC2|✅ proved - complete|shostak|0.230|
|ack_TCC3|✅ proved - incomplete|shostak|3.861|
|ack_TCC4|✅ proved - incomplete|shostak|2.678|
|ack_TCC5|✅ proved - complete|shostak|0.250|
|ack_TCC6|✅ proved - complete|shostak|0.240|
|ack_TCC7|✅ proved - incomplete|shostak|3.833|
|ack_TCC8|✅ proved - incomplete|shostak|3.851|
|ack_TCC9|✅ proved - incomplete|shostak|0.000|

## `fibo_pvs0`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|fibo_op1_TCC1|✅ proved - complete|shostak|0.220|
|M_TCC1|✅ proved - complete|shostak|0.390|
|A_TCC1|✅ proved - complete|shostak|0.250|
|A_TCC2|✅ proved - complete|shostak|0.230|
|fibo_mm_TCC1|✅ proved - incomplete|shostak|3.066|
|pvs0_fibo_terminating|✅ proved - incomplete|shostak|0.415|
|pvs0_fibo_tcc_termination|✅ proved - incomplete|shostak|0.250|
|fibo_msr|✅ proved - incomplete|shostak|0.230|
|fibo_wfm_TCC1|✅ proved - incomplete|shostak|0.240|

## `fibo_pvs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|fibo_TCC1|✅ proved - incomplete|shostak|2.146|
|fibo_TCC2|✅ proved - incomplete|shostak|2.147|
|fibo_TCC3|✅ proved - complete|shostak|0.260|
|fibo_TCC4|✅ proved - incomplete|shostak|1.694|
|fibo_TCC5|✅ proved - incomplete|shostak|2.187|

## `mf_pvs0_top`
No formula declaration found.
## `mf_pvs0_halting`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|nat2p_recursive_TCC1|✅ proved - incomplete|shostak|0.350|
|true_val_TCC1|✅ proved - complete|shostak|0.200|
|Oracle_TCC1|✅ proved - incomplete|shostak|0.348|
|mf_pvs0_halting_problem_decidability|✅ proved - incomplete|shostak|0.596|
|mf_pvs0_halting_problem_undecidability|✅ proved - incomplete|shostak|0.000|

## `mf_pvs0_computable`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|nat2PVS0_limit_TCC1|✅ proved - complete|shostak|0.220|
|nat2PVS0_limit_TCC2|✅ proved - complete|shostak|0.310|
|nat2PVS0_limit_TCC3|✅ proved - complete|shostak|0.260|
|nat2PVS0_limit_TCC4|✅ proved - complete|shostak|0.360|
|nat2PVS0_limit_TCC5|✅ proved - complete|shostak|0.244|
|nat2PVS0_limit_TCC6|✅ proved - complete|shostak|0.420|
|nat2PVS0_limit_TCC7|✅ proved - complete|shostak|0.413|
|nat2PVS0_limit_TCC8|✅ proved - complete|shostak|0.815|
|nat2PVS0_limit_TCC9|✅ proved - complete|shostak|0.290|
|nat2PVS0_limit_TCC10|✅ proved - incomplete|shostak|0.340|
|nat2PVS0_limit_TCC11|✅ proved - incomplete|shostak|0.309|
|nat2PVS0_limit_TCC12|✅ proved - incomplete|shostak|0.330|
|nat2PVS0_limit_TCC13|✅ proved - incomplete|shostak|0.270|
|nat2PVS0_limit_TCC14|✅ proved - incomplete|shostak|0.250|
|nat2PVS0_limit_TCC15|✅ proved - incomplete|shostak|0.330|
|nat2PVS0_limit_TCC16|✅ proved - complete|shostak|0.420|
|nat2PVS0_limit_TCC17|✅ proved - incomplete|shostak|0.250|
|nat2PVS0_limit_TCC18|✅ proved - incomplete|shostak|0.260|
|nat2PVS0_limit_TCC19|✅ proved - incomplete|shostak|0.250|
|nat2PVS0_limit_TCC20|✅ proved - incomplete|shostak|1.442|
|PVS02nat_limit_TCC1|✅ proved - complete|shostak|0.280|
|PVS02nat_limit_TCC2|✅ proved - complete|shostak|0.297|
|PVS02nat_limit_TCC3|✅ proved - complete|shostak|0.270|
|PVS02nat_limit_TCC4|✅ proved - complete|shostak|0.290|
|PVS02nat_limit_TCC5|✅ proved - complete|shostak|0.274|
|PVS02nat_limit_TCC6|✅ proved - complete|shostak|0.270|
|PVS02nat_limit_TCC7|✅ proved - complete|shostak|0.250|
|PVS02nat_limit_TCC8|✅ proved - complete|shostak|0.303|
|PVS02nat_limit_TCC9|✅ proved - complete|shostak|0.270|
|PVS02nat_limit_TCC10|✅ proved - complete|shostak|0.310|
|PVS02nat_limit_TCC11|✅ proved - complete|shostak|0.000|
|PVS02nat_limit_TCC12|✅ proved - complete|shostak|0.310|
|PVS02nat_limit_TCC13|✅ proved - complete|shostak|0.260|
|PVS02nat_limit_TCC14|✅ proved - complete|shostak|0.320|
|nat2PVS0_PVS02nat_limit|✅ proved - incomplete|shostak|2.144|
|PVS02nat_nat2PVS0_limit|✅ proved - incomplete|shostak|1.855|
|cons2nat_TCC1|✅ proved - complete|shostak|0.209|
|cons2nat_TCC2|✅ proved - complete|shostak|0.210|
|cons2nat_TCC3|✅ proved - incomplete|shostak|0.440|
|cons2nat_TCC4|✅ proved - incomplete|shostak|0.476|
|listnat2nat_TCC1|✅ proved - complete|shostak|0.250|
|listnat2nat_TCC2|✅ proved - complete|shostak|0.220|
|nat2listnat_aux_TCC1|✅ proved - complete|shostak|0.220|
|nat2listnat_aux_TCC2|✅ proved - complete|shostak|0.217|
|length_nat2listnat_aux|✅ proved - incomplete|shostak|0.340|
|nat2listnat_aux_cons2nat_TCC1|✅ proved - complete|shostak|0.210|
|nat2listnat_aux_cons2nat|✅ proved - incomplete|shostak|0.498|
|cons2nat_nat2listnat_aux_TCC1|✅ proved - incomplete|shostak|0.300|
|cons2nat_nat2listnat_aux|✅ proved - incomplete|shostak|0.723|
|listnat2nat_nat2listnat|✅ proved - incomplete|shostak|0.332|
|nat2listnat_listnat2nat|✅ proved - incomplete|shostak|0.310|
|listPVS0nat2nat_TCC1|✅ proved - complete|shostak|1.075|
|listPVS0nat2nat_TCC2|✅ proved - complete|shostak|0.280|
|listPVS0nat2nat_TCC3|✅ proved - incomplete|shostak|0.892|
|nat2listPVS0nat_TCC1|✅ proved - incomplete|shostak|0.310|
|nat2listPVS0nat_TCC2|✅ proved - incomplete|shostak|0.220|
|nat2listPVS0nat_TCC3|✅ proved - incomplete|shostak|2.258|
|listPVS0nat2nat_nat2listPVS0nat|✅ proved - incomplete|shostak|0.714|
|nat2listPVS0nat_listPVS0nat2nat|✅ proved - incomplete|shostak|1.759|

## `mf_pvs0_lang`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|terminating?_TCC1|✅ proved - complete|shostak|0.240|
|deterministic|✅ proved - complete|shostak|0.236|
|eval_pvs0_ge_n|✅ proved - complete|shostak|0.250|
|semantic_rel_eval|✅ proved - complete|shostak|0.240|
|eval_terminates|✅ proved - complete|shostak|0.210|
|terminating_determined_all|✅ proved - complete|shostak|0.212|
|mu_nonempty|✅ proved - complete|shostak|0.270|
|mu_TCC1|✅ proved - complete|shostak|0.210|
|mu_TCC2|✅ proved - complete|shostak|0.324|
|mu_terminates|✅ proved - complete|shostak|0.393|
|mu_min|✅ proved - complete|shostak|0.250|
|mu_eval_TCC1|✅ proved - complete|shostak|0.296|
|eval_semantic|✅ proved - complete|shostak|0.260|
|mu_eval_correct|✅ proved - complete|shostak|0.310|
|Delta_undetermined|✅ proved - complete|shostak|0.521|
|Delta_non_terminating|✅ proved - complete|shostak|0.224|
|pvs0_not_in_pvs|✅ proved - complete|shostak|0.290|
|offset_rec_TCC1|✅ proved - complete|shostak|0.230|
|offset_rec_TCC2|✅ proved - complete|shostak|0.232|
|offset_rec_TCC3|✅ proved - complete|shostak|0.240|
|offset_rec_TCC4|✅ proved - complete|shostak|0.220|
|offset_rec_TCC5|✅ proved - complete|shostak|0.240|
|offset_rec_TCC6|✅ proved - complete|shostak|0.240|
|offset_rec_TCC7|✅ proved - complete|shostak|0.254|
|offset_composition|✅ proved - complete|shostak|0.912|
|offset_composition2|✅ proved - complete|shostak|0.330|
|add_rec_list_aux_TCC1|✅ proved - complete|shostak|0.230|
|add_rec_list_aux|✅ proved - incomplete|shostak|8.077|
|valid_index_rec_offset|✅ proved - complete|shostak|0.000|
|add_rec_list_aux2_TCC1|✅ proved - complete|shostak|0.210|
|add_rec_list_aux2|✅ proved - incomplete|shostak|6.739|
|add_rec_list|✅ proved - incomplete|shostak|0.496|
|add_rec_list2|✅ proved - incomplete|shostak|0.426|

## `mf_pvs0_expr`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|semantic_rel_expr_TCC1|✅ proved - complete|shostak|0.216|
|semantic_rel_expr_TCC2|✅ proved - complete|shostak|0.220|
|semantic_rel_expr_TCC3|✅ proved - complete|shostak|0.230|
|semantic_rel_expr_TCC4|✅ proved - complete|shostak|0.240|
|eval_expr_TCC1|✅ proved - complete|shostak|0.255|
|eval_expr_TCC2|✅ proved - complete|shostak|0.370|
|eval_expr_TCC3|✅ proved - complete|shostak|0.429|
|eval_expr_TCC4|✅ proved - complete|shostak|0.260|
|eval_expr_TCC5|✅ proved - complete|shostak|0.432|
|eval_expr_TCC6|✅ proved - complete|shostak|0.500|
|eval_expr_TCC7|✅ proved - complete|shostak|0.528|
|eval_expr_TCC8|✅ proved - complete|shostak|0.490|
|eval_expr_TCC9|✅ proved - complete|shostak|0.250|
|eval_expr_TCC10|✅ proved - complete|shostak|0.260|
|eval_expr_TCC11|✅ proved - complete|shostak|0.350|
|eval_expr_ge_n_j_TCC1|✅ proved - complete|shostak|0.220|
|eval_expr_ge_n_j_TCC2|✅ proved - complete|shostak|0.251|
|eval_expr_ge_n_j_TCC3|✅ proved - complete|shostak|0.240|
|eval_expr_ge_n_j_TCC4|✅ proved - complete|shostak|0.250|
|eval_expr_ge_n_j_TCC5|✅ proved - complete|shostak|0.300|
|eval_expr_ge_n_j_TCC6|✅ proved - complete|shostak|0.252|
|eval_expr_ge_n_j_TCC7|✅ proved - complete|shostak|0.260|
|eval_expr_ge_n_j_TCC8|✅ proved - complete|shostak|0.320|
|eval_expr_ge_n_j_TCC9|✅ proved - complete|shostak|0.251|
|eval_expr_ge_n_j_TCC10|✅ proved - complete|shostak|0.310|
|eval_expr_ge_n_j_TCC11|✅ proved - complete|shostak|0.290|
|eval_expr_ge_n_j_TCC12|✅ proved - complete|shostak|0.241|
|eval_expr_ge_n_j_TCC13|✅ proved - complete|shostak|0.240|
|eval_expr_ge_n_j_TCC14|✅ proved - complete|shostak|0.370|
|eval_expr_ge_n_j_TCC15|✅ proved - complete|shostak|0.261|
|eval_expr_ge_n_j_TCC16|✅ proved - complete|shostak|0.240|
|eval_expr_gt_0|✅ proved - complete|shostak|0.230|
|eval_expr_ge_n|✅ proved - complete|shostak|0.341|
|semantic_rel_eval_expr|✅ proved - complete|shostak|3.045|
|eval_expr_n_pos|✅ proved - complete|shostak|0.234|
|deterministic_expr|✅ proved - complete|shostak|0.320|
|eval_expr_semantic_rel_j_TCC1|✅ proved - complete|shostak|0.241|
|eval_expr_semantic_rel_j_TCC2|✅ proved - complete|shostak|0.230|
|eval_expr_semantic_rel_j_TCC3|✅ proved - complete|shostak|0.220|
|eval_expr_semantic_rel_j_TCC4|✅ proved - complete|shostak|0.251|
|eval_expr_semantic_rel_j_TCC5|✅ proved - complete|shostak|0.270|
|eval_expr_semantic_rel_j_TCC6|✅ proved - complete|shostak|0.220|
|eval_expr_semantic_rel_j_TCC7|✅ proved - complete|shostak|0.263|
|eval_expr_semantic_rel_j_TCC8|✅ proved - complete|shostak|0.290|
|eval_expr_semantic_rel_j_TCC9|✅ proved - complete|shostak|0.210|
|eval_expr_semantic_rel_j_TCC10|✅ proved - complete|shostak|0.000|
|eval_expr_semantic_rel_j_TCC11|✅ proved - complete|shostak|0.310|
|eval_expr_semantic_rel_j_TCC12|✅ proved - complete|shostak|0.250|
|eval_expr_semantic_rel_j_TCC13|✅ proved - complete|shostak|0.250|
|eval_expr_semantic_rel_j_TCC14|✅ proved - complete|shostak|0.303|
|eval_expr_semantic_rel_j_TCC15|✅ proved - complete|shostak|0.270|
|eval_expr_semantic_rel_j_TCC16|✅ proved - complete|shostak|0.220|
|eval_expr_semantic_rel|✅ proved - complete|shostak|0.356|
|eval_expr_terminates|✅ proved - complete|shostak|0.290|

## `subtype_length`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|subtype_length|✅ proved - complete|shostak|0.220|
|subtype_nth|✅ proved - complete|shostak|0.241|
|subtype_append|✅ proved - complete|shostak|0.220|
|subtype_every|✅ proved - complete|shostak|0.220|

## `subtype_map`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|subtype_map|✅ proved - complete|shostak|0.290|

## `map_identity`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|map_identity|✅ proved - complete|shostak|0.230|

## `mf_pvs0_Fixedpoint`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|diagonal_function_TCC1|✅ proved - complete|shostak|0.310|
|part2part_TCC1|✅ proved - complete|shostak|0.220|
|part2part_TCC2|✅ proved - incomplete|shostak|0.250|
|part2part_TCC3|✅ proved - incomplete|shostak|0.230|
|fixed_point|✅ proved - incomplete|shostak|7.263|

## `map_append`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|map_append|✅ proved - complete|shostak|0.256|

## `mf_pvs0_Rices_Theorem_Corollaries`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|uniform_halting_problem_undecidability_Turing_complete|✅ proved - incomplete|shostak|0.667|
|fixed_point_existence_undecidability_Turing_complete|✅ proved - incomplete|shostak|0.772|
|self_replication_undecidability_Turing_complete|✅ proved - incomplete|shostak|2.679|
|pvs0_program_equivalence_undecidability_Turing_complete|✅ proved - incomplete|shostak|11.919|
|natural_predicate_undecidability|✅ proved - incomplete|shostak|0.280|

## `mf_pvs0_Rices_Theorem`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Generalized_Recursion_Theorem_TCC1|✅ proved - incomplete|shostak|0.370|
|Generalized_Recursion_Theorem_TCC2|✅ proved - incomplete|shostak|0.434|
|Generalized_Recursion_implies_pvs0_Rices_Theorem|✅ proved - incomplete|shostak|22.500|
|Rice_theorem_for_Turing_complete_pvs0|✅ proved - incomplete|shostak|0.290|

## `mf_pvs0_Recursion_Theorem`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|p_recursive2nat_TCC1|✅ proved - incomplete|shostak|0.307|
|greater_index_rec_TCC1|✅ proved - complete|shostak|0.260|
|greater_index_rec_TCC2|✅ proved - complete|shostak|0.280|
|greater_index_rec_TCC3|✅ proved - complete|shostak|0.250|
|greater_index_rec_TCC4|✅ proved - complete|shostak|0.281|
|greater_index_rec_TCC5|✅ proved - complete|shostak|0.260|
|greater_index_rec_TCC6|✅ proved - complete|shostak|0.270|
|greater_index_rec_TCC7|✅ proved - complete|shostak|0.250|
|greater_index_rec_correctness|✅ proved - complete|shostak|0.551|
|greater_index_rec_list_TCC1|✅ proved - complete|shostak|0.200|
|greater_index_rec_list_TCC2|✅ proved - complete|shostak|0.260|
|greater_index_rec_list_correctness|✅ proved - complete|shostak|0.410|
|printA_TCC1|✅ proved - incomplete|shostak|0.340|
|map_offset_rec_appendn|✅ proved - incomplete|shostak|0.340|
|print_correctness_TCC1|✅ proved - incomplete|shostak|0.340|
|print_correctness|✅ proved - incomplete|shostak|8.869|
|vr_subterm|✅ proved - incomplete|shostak|0.580|
|print_limited|✅ proved - incomplete|shostak|0.000|
|Recursion_Theorem_TCC1|✅ proved - incomplete|shostak|0.420|
|Recursion_Theorem_TCC2|✅ proved - incomplete|shostak|0.540|
|Recursion_Theorem|✅ proved - incomplete|shostak|39.070|

## `mf_pvs0_basic_programs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|equal_TCC1|✅ proved - incomplete|shostak|0.000|
|equal_works|✅ proved - incomplete|shostak|2.307|
|sub_function_TCC1|✅ proved - complete|shostak|0.250|
|sub_TCC1|✅ proved - incomplete|shostak|0.564|
|sub_works|✅ proved - incomplete|shostak|2.015|
|sub1_TCC1|✅ proved - complete|shostak|0.230|
|sub1_TCC2|✅ proved - incomplete|shostak|0.717|
|sub1_works|✅ proved - incomplete|shostak|1.009|
|sum_function_TCC1|✅ proved - complete|shostak|0.237|
|sum_function_TCC2|✅ proved - complete|shostak|0.220|
|sum_TCC1|✅ proved - incomplete|shostak|0.973|
|sum_works|✅ proved - incomplete|shostak|2.151|
|sum_function_correctness|✅ proved - complete|shostak|0.280|
|sum_correctness|✅ proved - incomplete|shostak|0.230|
|mult_TCC1|✅ proved - incomplete|shostak|0.370|
|mult_TCC2|✅ proved - incomplete|shostak|2.862|
|mult_works|✅ proved - incomplete|shostak|6.360|
|mult_function_correctness|✅ proved - complete|shostak|0.266|
|mult_correctness|✅ proved - incomplete|shostak|0.250|

## `mf_pvs0_Turing_Completeness`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|proj_aux_function_TCC1|✅ proved - complete|shostak|0.230|
|proj_aux_function_TCC2|✅ proved - complete|shostak|0.250|
|nat2list_TCC1|✅ proved - complete|shostak|0.220|
|nat2list_TCC2|✅ proved - complete|shostak|0.210|
|nat2list_length|✅ proved - incomplete|shostak|0.326|
|proj_aux_function_not_last|✅ proved - incomplete|shostak|0.399|
|proj_aux_function_last_TCC1|✅ proved - complete|shostak|0.220|
|proj_aux_function_last_TCC2|✅ proved - incomplete|shostak|0.260|
|proj_aux_function_last|✅ proved - incomplete|shostak|1.151|
|nat2list_extension_TCC1|✅ proved - incomplete|shostak|0.241|
|nat2list_extension_TCC2|✅ proved - incomplete|shostak|0.240|
|nat2list_extension|✅ proved - incomplete|shostak|0.482|
|proj_aux_function_works_TCC1|✅ proved - incomplete|shostak|0.254|
|proj_aux_function_works|✅ proved - incomplete|shostak|0.938|
|proj_aux_TCC1|✅ proved - complete|shostak|0.290|
|proj_aux_TCC2|✅ proved - incomplete|shostak|0.933|
|proj_aux_works|✅ proved - incomplete|shostak|0.691|
|proj_TCC1|✅ proved - incomplete|shostak|0.759|
|proj_works|✅ proved - incomplete|shostak|1.907|
|proj_correctness_TCC1|✅ proved - incomplete|shostak|0.240|
|proj_correctness|✅ proved - incomplete|shostak|0.286|
|expr_comp_TCC1|✅ proved - incomplete|shostak|0.320|
|expr_comp_TCC2|✅ proved - incomplete|shostak|0.240|
|rec_indices_chain_offset_is_limited|✅ proved - incomplete|shostak|1.310|
|rec_indices_expr_comp_is_limited|✅ proved - incomplete|shostak|0.956|
|chain_offset_length|✅ proved - incomplete|shostak|0.721|
|comp_TCC1|✅ proved - incomplete|shostak|0.540|
|comp_TCC2|✅ proved - incomplete|shostak|0.838|
|list2nat_TCC1|✅ proved - complete|shostak|0.240|
|list2nat_TCC2|✅ proved - complete|shostak|0.230|
|offset_rec_chain_offset|✅ proved - incomplete|shostak|0.644|
|offset_rec_expr_comp|✅ proved - incomplete|shostak|0.573|
|limits_of_chain_offset_TCC1|✅ proved - incomplete|shostak|1.125|
|limits_of_chain_offset_TCC2|✅ proved - incomplete|shostak|0.260|
|limits_of_chain_offset|✅ proved - incomplete|shostak|13.304|
|chain_offset_prop_TCC1|✅ proved - incomplete|shostak|0.230|
|chain_offset_prop|✅ proved - incomplete|shostak|7.950|
|comp_is_composition_TCC1|✅ proved - incomplete|shostak|0.430|
|comp_is_composition|✅ proved - incomplete|shostak|5.027|
|min_relation_works|✅ proved - incomplete|shostak|0.518|
|min_relation_leq|✅ proved - incomplete|shostak|0.240|
|min_aux_TCC1|✅ proved - incomplete|shostak|0.379|
|min_aux_TCC2|✅ proved - incomplete|shostak|0.000|
|min_aux_leq_eval_expr_TCC1|✅ proved - incomplete|shostak|0.340|
|min_aux_leq_eval_expr|✅ proved - incomplete|shostak|1.870|
|min_aux_leq|✅ proved - incomplete|shostak|0.273|
|min_relation_works2|✅ proved - incomplete|shostak|0.450|
|min_aux_is_min_relation|✅ proved - incomplete|shostak|3.707|
|min_aux_correctness|✅ proved - incomplete|shostak|0.250|
|min_TCC1|✅ proved - incomplete|shostak|0.500|
|min_TCC2|✅ proved - incomplete|shostak|0.702|
|min_correctness|✅ proved - incomplete|shostak|1.707|
|prim_recurrence_relation_TCC1|✅ proved - incomplete|shostak|0.250|
|prim_recurrence_TCC1|✅ proved - incomplete|shostak|5.163|
|prim_recurrence_is_prim_recurrence_relation|✅ proved - incomplete|shostak|23.516|
|prim_recurrence_relation_works_TCC1|✅ proved - incomplete|shostak|0.210|
|prim_recurrence_relation_works_TCC2|✅ proved - incomplete|shostak|0.224|
|prim_recurrence_relation_works_TCC3|✅ proved - incomplete|shostak|0.280|
|prim_recurrence_relation_works_TCC4|✅ proved - incomplete|shostak|0.280|
|prim_recurrence_relation_works_TCC5|✅ proved - incomplete|shostak|0.280|
|prim_recurrence_relation_works|✅ proved - incomplete|shostak|4.582|
|prim_recurrence_correctness|✅ proved - incomplete|shostak|0.275|

## `chain_of_appends`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|chain_of_appends_TCC1|✅ proved - complete|shostak|0.200|
|chain_of_appends_TCC2|✅ proved - complete|shostak|0.230|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib//float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-pvsio-fix.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210219-extratregies.lisp`|
