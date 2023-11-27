# Summary for `PVS0`
Run started at 1:13:42 11/25/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **672**   | **672**    | **672**    | **0**  | **5:41.343 s**   |
|top|0|0|0|0|0.000|
|pvs0_expr|52|52|52|0|8.575|
|pvs0_lang|16|16|16|0|1.871|
|pvs0_cc|26|26|26|0|3.542|
|pvs0_props|68|68|68|0|33.267|
|pvs0_to_dg|20|20|20|0|3.525|
|measure_termination_defs|1|1|1|0|0.084|
|pvs0_prelude|1|1|1|0|0.070|
|measure_termination|5|5|5|0|0.715|
|pvs0_termination|17|17|17|0|10.559|
|scp_iff_pvs0|7|7|7|0|1.590|
|pvs0_eval|46|46|46|0|13.196|
|ccg_to_pvs0|3|3|3|0|0.539|
|pvs0_to_ccg|4|4|4|0|0.901|
|pvs0_pvs|3|3|3|0|0.711|
|pvs0_pvs_T|2|2|2|0|0.633|
|pvs0_expressibility|1|1|1|0|0.225|
|counting_pvs0_type|20|20|20|0|3.672|
|pvs0_to_nat|23|23|23|0|14.676|
|pvs0_computable|11|11|11|0|5.110|
|pvs0_halting|5|5|5|0|2.024|
|dg_termination|5|5|5|0|2.228|
|dp_termination|2|2|2|0|0.465|
|dp_to_tcc|3|3|3|0|0.561|
|factorial_pvs0|12|12|12|0|8.970|
|factorial_pvs|4|4|4|0|2.440|
|ack_pvs0|16|16|16|0|8.586|
|ack_pvs|9|9|9|0|11.024|
|fibo_pvs0|9|9|9|0|3.619|
|fibo_pvs|5|5|5|0|4.422|
|mf_pvs0_top|0|0|0|0|0.000|
|mf_pvs0_halting|5|5|5|0|4.181|
|mf_pvs0_computable|59|59|59|0|18.850|
|mf_pvs0_lang|33|33|33|0|16.035|
|mf_pvs0_expr|54|54|54|0|12.405|
|subtype_length|4|4|4|0|0.621|
|subtype_map|1|1|1|0|0.180|
|map_identity|1|1|1|0|0.160|
|mf_pvs0_Fixedpoint|5|5|5|0|5.468|
|map_append|1|1|1|0|0.190|
|mf_pvs0_Rices_Theorem_Corollaries|5|5|5|0|6.088|
|mf_pvs0_Rices_Theorem|4|4|4|0|15.862|
|mf_pvs0_Recursion_Theorem|21|21|21|0|32.294|
|mf_pvs0_basic_programs|19|19|19|0|13.743|
|mf_pvs0_Turing_Completeness|62|62|62|0|1:7.156|
|chain_of_appends|2|2|2|0|0.310|
## Detailed Summary 
## `top`
No formula declaration found.
## `pvs0_expr`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|semantic_rel_expr_TCC1|✅ proved - complete|shostak|0.384|
|semantic_rel_expr_TCC2|✅ proved - complete|shostak|0.082|
|semantic_rel_expr_TCC3|✅ proved - complete|shostak|0.090|
|semantic_rel_expr_TCC4|✅ proved - complete|shostak|0.100|
|eval_expr_TCC1|✅ proved - complete|shostak|0.100|
|eval_expr_TCC2|✅ proved - complete|shostak|0.191|
|eval_expr_TCC3|✅ proved - complete|shostak|0.228|
|eval_expr_TCC4|✅ proved - complete|shostak|0.100|
|eval_expr_TCC5|✅ proved - complete|shostak|0.218|
|eval_expr_TCC6|✅ proved - complete|shostak|0.280|
|eval_expr_TCC7|✅ proved - complete|shostak|0.265|
|eval_expr_TCC8|✅ proved - complete|shostak|0.260|
|eval_expr_TCC9|✅ proved - complete|shostak|0.090|
|eval_expr_TCC10|✅ proved - complete|shostak|0.091|
|eval_expr_TCC11|✅ proved - complete|shostak|0.170|
|eval_expr_ge_n_j_TCC1|✅ proved - complete|shostak|0.080|
|eval_expr_ge_n_j_TCC2|✅ proved - complete|shostak|0.100|
|eval_expr_ge_n_j_TCC3|✅ proved - complete|shostak|0.091|
|eval_expr_ge_n_j_TCC4|✅ proved - complete|shostak|0.100|
|eval_expr_ge_n_j_TCC5|✅ proved - complete|shostak|0.120|
|eval_expr_ge_n_j_TCC6|✅ proved - complete|shostak|0.093|
|eval_expr_ge_n_j_TCC7|✅ proved - complete|shostak|0.100|
|eval_expr_ge_n_j_TCC8|✅ proved - complete|shostak|0.141|
|eval_expr_ge_n_j_TCC9|✅ proved - complete|shostak|0.100|
|eval_expr_ge_n_j_TCC10|✅ proved - complete|shostak|0.130|
|eval_expr_ge_n_j_TCC11|✅ proved - complete|shostak|0.142|
|eval_expr_ge_n_j_TCC12|✅ proved - complete|shostak|0.090|
|eval_expr_ge_n_j_TCC13|✅ proved - complete|shostak|0.100|
|eval_expr_ge_n_j_TCC14|✅ proved - complete|shostak|0.151|
|eval_expr_ge_n_j_TCC15|✅ proved - complete|shostak|0.090|
|eval_expr_gt_0|✅ proved - complete|shostak|0.080|
|eval_expr_ge_n|✅ proved - complete|shostak|0.182|
|semantic_rel_eval_expr|✅ proved - complete|shostak|2.033|
|eval_expr_n_pos|✅ proved - complete|shostak|0.086|
|deterministic_expr|✅ proved - complete|shostak|0.160|
|eval_expr_semantic_rel_j_TCC1|✅ proved - complete|shostak|0.100|
|eval_expr_semantic_rel_j_TCC2|✅ proved - complete|shostak|0.085|
|eval_expr_semantic_rel_j_TCC3|✅ proved - complete|shostak|0.090|
|eval_expr_semantic_rel_j_TCC4|✅ proved - complete|shostak|0.100|
|eval_expr_semantic_rel_j_TCC5|✅ proved - complete|shostak|0.096|
|eval_expr_semantic_rel_j_TCC6|✅ proved - complete|shostak|0.070|
|eval_expr_semantic_rel_j_TCC7|✅ proved - complete|shostak|0.110|
|eval_expr_semantic_rel_j_TCC8|✅ proved - complete|shostak|0.110|
|eval_expr_semantic_rel_j_TCC9|✅ proved - complete|shostak|0.070|
|eval_expr_semantic_rel_j_TCC10|✅ proved - complete|shostak|0.107|
|eval_expr_semantic_rel_j_TCC11|✅ proved - complete|shostak|0.120|
|eval_expr_semantic_rel_j_TCC12|✅ proved - complete|shostak|0.100|
|eval_expr_semantic_rel_j_TCC13|✅ proved - complete|shostak|0.106|
|eval_expr_semantic_rel_j_TCC14|✅ proved - complete|shostak|0.110|
|eval_expr_semantic_rel_j_TCC15|✅ proved - complete|shostak|0.080|
|eval_expr_semantic_rel|✅ proved - complete|shostak|0.173|
|eval_expr_terminates|✅ proved - complete|shostak|0.130|

## `pvs0_lang`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|deterministic|✅ proved - complete|shostak|0.090|
|eval_pvs0_ge_n|✅ proved - complete|shostak|0.091|
|semantic_rel_eval|✅ proved - complete|shostak|0.090|
|eval_terminates|✅ proved - complete|shostak|0.070|
|terminating_determined_all|✅ proved - complete|shostak|0.070|
|mu_nonempty|✅ proved - complete|shostak|0.100|
|mu_TCC1|✅ proved - complete|shostak|0.073|
|mu_TCC2|✅ proved - complete|shostak|0.130|
|mu_terminates|✅ proved - complete|shostak|0.191|
|mu_min|✅ proved - complete|shostak|0.100|
|mu_eval_TCC1|✅ proved - complete|shostak|0.142|
|eval_semantic|✅ proved - complete|shostak|0.105|
|mu_eval_correct|✅ proved - complete|shostak|0.130|
|Delta_undetermined|✅ proved - complete|shostak|0.289|
|Delta_non_terminating|✅ proved - complete|shostak|0.080|
|pvs0_not_in_pvs|✅ proved - complete|shostak|0.120|

## `pvs0_cc`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|eval_conds_TCC1|✅ proved - complete|shostak|0.120|
|valid_path_TCC1|✅ proved - incomplete|shostak|0.148|
|valid_path_TCC2|✅ proved - incomplete|shostak|0.138|
|valid_path_TCC3|✅ proved - incomplete|shostak|0.130|
|valid_path_TCC4|✅ proved - incomplete|shostak|0.120|
|valid_path_TCC5|✅ proved - incomplete|shostak|0.132|
|valid_path_TCC6|✅ proved - incomplete|shostak|0.130|
|valid_path_TCC7|✅ proved - incomplete|shostak|0.130|
|subterm_at_TCC1|✅ proved - incomplete|shostak|0.094|
|subterm_at_TCC2|✅ proved - incomplete|shostak|0.080|
|subterm_at_TCC3|✅ proved - incomplete|shostak|0.120|
|subterm_at_TCC4|✅ proved - incomplete|shostak|0.110|
|subterm_at_TCC5|✅ proved - incomplete|shostak|0.085|
|subterm_at_TCC6|✅ proved - incomplete|shostak|0.100|
|subterm_at_TCC7|✅ proved - incomplete|shostak|0.190|
|subterm_at_TCC8|✅ proved - incomplete|shostak|0.000|
|subterm_at_TCC9|✅ proved - incomplete|shostak|0.100|
|subterm_at_TCC10|✅ proved - incomplete|shostak|0.080|
|subterm_at_TCC11|✅ proved - incomplete|shostak|0.120|
|subterm_at_TCC12|✅ proved - incomplete|shostak|0.113|
|subterm_at_TCC13|✅ proved - incomplete|shostak|0.100|
|subterm_at_TCC14|✅ proved - incomplete|shostak|0.149|
|subterm_at_TCC15|✅ proved - incomplete|shostak|0.130|
|subterm_at_TCC16|✅ proved - incomplete|shostak|0.080|
|path_conditions_TCC1|✅ proved - incomplete|shostak|0.743|
|path_conditions_TCC2|✅ proved - incomplete|shostak|0.100|

## `pvs0_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|subterm_transitive|✅ proved - complete|shostak|0.354|
|null_path|✅ proved - incomplete|shostak|0.100|
|valid_paths_subexpr|✅ proved - incomplete|shostak|1.519|
|subterm_append_TCC1|✅ proved - incomplete|shostak|0.086|
|subterm_append|✅ proved - incomplete|shostak|1.574|
|valid_0_path_ext|✅ proved - incomplete|shostak|0.382|
|valid_1_path_ext|✅ proved - incomplete|shostak|0.508|
|valid_2_path_ext|✅ proved - incomplete|shostak|0.409|
|app_prefix_of_path_ext|✅ proved - incomplete|shostak|2.512|
|cnst_vr_path_ext|✅ proved - incomplete|shostak|0.110|
|op1_rec_path_ext|✅ proved - incomplete|shostak|0.534|
|op2_path_ext|✅ proved - incomplete|shostak|0.753|
|ite_path_ext|✅ proved - incomplete|shostak|0.976|
|valid_paths_TCC1|✅ proved - incomplete|shostak|0.107|
|valid_paths_TCC2|✅ proved - complete|shostak|0.200|
|valid_paths_TCC3|✅ proved - incomplete|shostak|0.579|
|valid_paths_TCC4|✅ proved - incomplete|shostak|0.000|
|valid_paths_TCC5|✅ proved - incomplete|shostak|0.083|
|valid_paths_TCC6|✅ proved - complete|shostak|0.070|
|valid_paths_TCC7|✅ proved - complete|shostak|0.080|
|valid_paths_TCC8|✅ proved - incomplete|shostak|1.203|
|valid_paths_TCC9|✅ proved - incomplete|shostak|2.672|
|valid_paths_TCC10|✅ proved - incomplete|shostak|0.080|
|valid_paths_TCC11|✅ proved - complete|shostak|0.080|
|valid_paths_TCC12|✅ proved - incomplete|shostak|0.564|
|valid_paths_TCC13|✅ proved - incomplete|shostak|0.794|
|valid_paths_TCC14|✅ proved - incomplete|shostak|0.090|
|valid_paths_TCC15|✅ proved - complete|shostak|0.072|
|valid_paths_TCC16|✅ proved - complete|shostak|0.100|
|valid_paths_TCC17|✅ proved - complete|shostak|0.090|
|valid_paths_TCC18|✅ proved - incomplete|shostak|1.536|
|valid_paths_TCC19|✅ proved - incomplete|shostak|5.273|
|valid_paths_TCC20|✅ proved - incomplete|shostak|0.107|
|valid_paths_TCC21|✅ proved - incomplete|shostak|0.110|
|subset_member_sl|✅ proved - incomplete|shostak|0.266|
|suffix_subset_sl|✅ proved - incomplete|shostak|0.108|
|path_conditions_cons_TCC1|✅ proved - incomplete|shostak|0.215|
|path_conditions_cons_TCC2|✅ proved - incomplete|shostak|0.107|
|path_conditions_cons|✅ proved - incomplete|shostak|0.110|
|path_conditions_unmodified_TCC1|✅ proved - incomplete|shostak|0.099|
|path_conditions_unmodified|✅ proved - incomplete|shostak|0.090|
|path_conditions_unmodified2_TCC1|✅ proved - incomplete|shostak|0.100|
|path_conditions_unmodified2|✅ proved - incomplete|shostak|0.100|
|suffix_path_cnds_suffix|✅ proved - incomplete|shostak|0.466|
|suffix_path_cnds|✅ proved - incomplete|shostak|0.089|
|condition_is_subterm|✅ proved - incomplete|shostak|1.088|
|condition_is_subterm_append|✅ proved - incomplete|shostak|0.368|
|path_of_path_conditions|✅ proved - incomplete|shostak|0.000|
|member_conds_rec|✅ proved - complete|shostak|0.202|
|member_conds_rec2|✅ proved - complete|shostak|0.170|
|eval_conds_reverse|✅ proved - incomplete|shostak|0.105|
|suffix_conds_rec|✅ proved - incomplete|shostak|0.090|
|suffix_conds_valid_sub|✅ proved - incomplete|shostak|0.098|
|suffix_conds_valid|✅ proved - incomplete|shostak|0.170|
|rec_decreasing_TCC1|✅ proved - incomplete|shostak|0.089|
|rec_decreasing_TCC2|✅ proved - incomplete|shostak|0.100|
|rec_decreasing_TCC3|✅ proved - incomplete|shostak|0.130|
|rec_decreasing_TCC4|✅ proved - incomplete|shostak|0.100|
|rec_decreasing|✅ proved - incomplete|shostak|2.705|
|rec_mu_decreasing_TCC1|✅ proved - incomplete|shostak|0.110|
|rec_mu_decreasing_TCC2|✅ proved - incomplete|shostak|0.137|
|rec_mu_decreasing_TCC3|✅ proved - incomplete|shostak|0.160|
|rec_mu_decreasing_TCC4|✅ proved - incomplete|shostak|0.188|
|rec_mu_decreasing|✅ proved - incomplete|shostak|0.549|
|decreasing_rec_TCC1|✅ proved - incomplete|shostak|0.090|
|decreasing_rec_TCC2|✅ proved - incomplete|shostak|0.132|
|decreasing_rec_TCC3|✅ proved - incomplete|shostak|0.110|
|decreasing_rec|✅ proved - incomplete|shostak|0.919|

## `pvs0_to_dg`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|pvs0_to_dg_make_cc_TCC1|✅ proved - incomplete|shostak|0.080|
|pvs0_to_dg_make_cc_TCC2|✅ proved - incomplete|shostak|0.100|
|pvs0_to_dg_paths_vertices_TCC1|✅ proved - incomplete|shostak|0.160|
|pvs0_to_dg_paths_vertices_TCC2|✅ proved - incomplete|shostak|0.098|
|pvs0_to_dg_paths_vertices_TCC3|✅ proved - incomplete|shostak|0.100|
|pvs0_to_dg_paths_vertices_TCC4|✅ proved - incomplete|shostak|0.160|
|pvs0_to_dg_paths_vertices_TCC5|✅ proved - incomplete|shostak|0.268|
|pvs0_to_dg_paths_vertices_TCC6|✅ proved - incomplete|shostak|0.164|
|pvs0_to_dg_paths_vertices_TCC7|✅ proved - incomplete|shostak|0.250|
|pvs0_to_dg_vertices_completeness|✅ proved - incomplete|shostak|0.371|
|cc_of_pvs0_soundness|✅ proved - incomplete|shostak|0.149|
|cc_of_pvs0_completeness|✅ proved - incomplete|shostak|0.088|
|pvs0_ccs_rec_TCC1|✅ proved - incomplete|shostak|0.090|
|pvs0_ccs_rec_TCC2|✅ proved - incomplete|shostak|0.160|
|pvs0_ccs_rec_TCC3|✅ proved - incomplete|shostak|0.100|
|pvs0_ccs_rec_TCC4|✅ proved - incomplete|shostak|0.178|
|pvs0_ccs_rec_TCC5|✅ proved - incomplete|shostak|0.230|
|pvs0_ccs_completness|✅ proved - incomplete|shostak|0.169|
|dg_vert_valid_cc|✅ proved - incomplete|shostak|0.000|
|pvs0_to_fully_connected_dg_sound_ccg|✅ proved - incomplete|shostak|0.610|

## `measure_termination_defs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|wfm_tcc_TCC1|✅ proved - incomplete|shostak|0.084|

## `pvs0_prelude`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|lt_TCC1|✅ proved - complete|shostak|0.070|

## `measure_termination`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|mu_soundness_TCC1|✅ proved - incomplete|shostak|0.200|
|mu_soundness_TCC2|✅ proved - incomplete|shostak|0.136|
|mu_soundness|✅ proved - incomplete|shostak|0.145|
|terminates_implies_pvs0_tcc_TCC1|✅ proved - complete|shostak|0.110|
|terminates_implies_pvs0_tcc|✅ proved - incomplete|shostak|0.124|

## `pvs0_termination`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|lt_val_wf|✅ proved - incomplete|shostak|0.166|
|lt_val_no_desc_inf_branch|✅ proved - incomplete|shostak|1.596|
|omega_is_eval_ub_TCC1|✅ proved - incomplete|shostak|0.089|
|omega_is_eval_ub_TCC2|✅ proved - incomplete|shostak|0.090|
|omega_is_eval_ub|✅ proved - incomplete|shostak|6.627|
|omega_is_eval_ub_bis|✅ proved - incomplete|shostak|0.109|
|pvs0_tcc_implies_terminates|✅ proved - incomplete|shostak|0.334|
|pvs0_tcc_termination_j|✅ proved - incomplete|shostak|0.071|
|mu_le_omega_TCC1|✅ proved - incomplete|shostak|0.090|
|mu_le_omega_TCC2|✅ proved - incomplete|shostak|0.090|
|mu_le_omega_TCC3|✅ proved - incomplete|shostak|0.090|
|mu_le_omega|✅ proved - incomplete|shostak|0.339|
|Omega_n_TCC1|✅ proved - incomplete|shostak|0.080|
|Omega_n_TCC2|✅ proved - incomplete|shostak|0.090|
|Omega_n_TCC3|✅ proved - incomplete|shostak|0.190|
|Omega_preval_TCC1|✅ proved - incomplete|shostak|0.131|
|Omega_eval_correct|✅ proved - incomplete|shostak|0.377|

## `scp_iff_pvs0`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|R_wf|✅ proved - incomplete|shostak|0.222|
|R_no_desc_inf_branch|✅ proved - incomplete|shostak|0.649|
|scp_implies_pvs0_tcc_TCC1|✅ proved - incomplete|shostak|0.138|
|scp_implies_pvs0_tcc|✅ proved - incomplete|shostak|0.200|
|pvs0_tcc_implies_scp_TCC1|✅ proved - complete|shostak|0.080|
|pvs0_tcc_implies_scp|✅ proved - incomplete|shostak|0.217|
|scp_iff_pvs0_terminates|✅ proved - incomplete|shostak|0.084|

## `pvs0_eval`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|pvs0_eval_expr_TCC1|✅ proved - incomplete|shostak|0.150|
|pvs0_eval_expr_TCC2|✅ proved - incomplete|shostak|0.080|
|pvs0_eval_expr_TCC3|✅ proved - incomplete|shostak|0.090|
|pvs0_eval_expr_TCC4|✅ proved - incomplete|shostak|0.120|
|pvs0_eval_expr_TCC5|✅ proved - incomplete|shostak|0.110|
|pvs0_eval_expr_TCC6|✅ proved - incomplete|shostak|0.393|
|pvs0_eval_expr_TCC7|✅ proved - incomplete|shostak|0.303|
|pvs0_eval_expr_TCC8|✅ proved - incomplete|shostak|0.240|
|pvs0_eval_expr_TCC9|✅ proved - incomplete|shostak|0.171|
|pvs0_eval_expr_TCC10|✅ proved - incomplete|shostak|0.417|
|pvs0_eval_expr_TCC11|✅ proved - incomplete|shostak|0.348|
|pvs0_eval_expr_TCC12|✅ proved - incomplete|shostak|0.457|
|pvs0_eval_expr_TCC13|✅ proved - incomplete|shostak|0.388|
|pvs0_eval_expr_TCC14|✅ proved - incomplete|shostak|0.150|
|pvs0_eval_expr_TCC15|✅ proved - incomplete|shostak|0.171|
|pvs0_eval_expr_TCC16|✅ proved - incomplete|shostak|0.399|
|pvs0_eval_expr_TCC17|✅ proved - incomplete|shostak|0.388|
|pvs0_eval_expr_TCC18|✅ proved - incomplete|shostak|0.557|
|pvs0_eval_expr_TCC19|✅ proved - incomplete|shostak|0.420|
|pvs0_eval_expr_TCC20|✅ proved - incomplete|shostak|0.400|
|pvs0_eval_expr_TCC21|✅ proved - incomplete|shostak|0.536|
|pvs0_eval_expr_TCC22|✅ proved - incomplete|shostak|0.432|
|pvs0_eval_expr_TCC23|✅ proved - incomplete|shostak|0.423|
|pvs0_eval_expr_TCC24|✅ proved - incomplete|shostak|0.358|
|pvs0_eval_expr_TCC25|✅ proved - incomplete|shostak|0.301|
|pvs0_eval_expr_TCC26|✅ proved - incomplete|shostak|0.261|
|pvs0_eval_expr_TCC27|✅ proved - incomplete|shostak|0.754|
|pvs0_eval_expr_TCC28|✅ proved - incomplete|shostak|0.294|
|pvs0_eval_TCC1|✅ proved - incomplete|shostak|0.223|
|pvs0_eval_correct|✅ proved - incomplete|shostak|0.107|
|terminates_expr_transitive_TCC1|✅ proved - incomplete|shostak|0.110|
|terminates_expr_transitive_TCC2|✅ proved - incomplete|shostak|0.120|
|terminates_expr_transitive|✅ proved - incomplete|shostak|0.000|
|suffix_of_valid_conditions|✅ proved - incomplete|shostak|0.207|
|pvs0_eval_conds_TCC1|✅ proved - incomplete|shostak|0.090|
|pvs0_eval_conds_TCC2|✅ proved - incomplete|shostak|0.188|
|pvs0_eval_conds_TCC3|✅ proved - incomplete|shostak|0.194|
|pvs0_eval_conds_TCC4|✅ proved - incomplete|shostak|0.255|
|pvs0_eval_conds_TCC5|✅ proved - incomplete|shostak|0.230|
|pvs0_eval_conds_TCC6|✅ proved - incomplete|shostak|0.900|
|pvs0_eval_conds_corrrect_TCC1|✅ proved - incomplete|shostak|0.127|
|pvs0_eval_conds_corrrect|✅ proved - incomplete|shostak|0.100|
|pvs0_tcc_TCC1|✅ proved - incomplete|shostak|0.238|
|pvs0_tcc_TCC2|✅ proved - incomplete|shostak|0.528|
|pvs0_tccs_correct_TCC1|✅ proved - complete|shostak|0.110|
|pvs0_tccs_correct|✅ proved - incomplete|shostak|0.358|

## `ccg_to_pvs0`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|ccg_implies_scp_pvs0|✅ proved - incomplete|shostak|0.330|
|ccg_implies_pvs0_tcc_TCC1|✅ proved - incomplete|shostak|0.099|
|ccg_implies_pvs0_tcc|✅ proved - incomplete|shostak|0.110|

## `pvs0_to_ccg`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|scp_implies_ccg_pvs0_TCC1|✅ proved - incomplete|shostak|0.220|
|scp_implies_ccg_pvs0|✅ proved - incomplete|shostak|0.385|
|pvs0_tcc_implies_ccg_TCC1|✅ proved - complete|shostak|0.136|
|pvs0_tcc_implies_ccg|✅ proved - incomplete|shostak|0.160|

## `pvs0_pvs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|make_pvs0_TCC1|✅ proved - complete|shostak|0.240|
|pvs_to_pvs0_aux|✅ proved - incomplete|shostak|0.335|
|pvs_to_pvs0|✅ proved - incomplete|shostak|0.136|

## `pvs0_pvs_T`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|make_pvs0_TCC1|✅ proved - complete|shostak|0.270|
|pvs_to_pvs0|✅ proved - incomplete|shostak|0.363|

## `pvs0_expressibility`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|TerminationExpressible|✅ proved - incomplete|shostak|0.225|

## `counting_pvs0_type`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|G_TCC1|✅ proved - complete|shostak|0.130|
|base_TCC1|✅ proved - complete|shostak|0.227|
|inop1_at_TCC1|✅ proved - complete|shostak|0.130|
|inop1_at_TCC2|✅ proved - complete|shostak|0.140|
|op1_at_TCC1|✅ proved - complete|shostak|0.205|
|op1_upto_TCC1|✅ proved - complete|shostak|0.295|
|inop2_at_TCC1|✅ proved - complete|shostak|0.140|
|finpair_TCC1|✅ proved - incomplete|shostak|0.286|
|op2_at_TCC1|✅ proved - incomplete|shostak|0.220|
|op2_upto_TCC1|✅ proved - incomplete|shostak|0.291|
|fintrip_TCC1|✅ proved - incomplete|shostak|0.316|
|ite_set_TCC1|✅ proved - incomplete|shostak|0.220|
|inrec_set_TCC1|✅ proved - complete|shostak|0.130|
|rec_set_TCC1|✅ proved - complete|shostak|0.192|
|level_set_member|✅ proved - incomplete|shostak|0.140|
|level_TCC1|✅ proved - complete|shostak|0.130|
|level_TCC2|✅ proved - complete|shostak|0.130|
|levels_increase|✅ proved - incomplete|shostak|0.220|
|levels_cover|✅ proved - incomplete|shostak|0.000|
|nat_onto_PVS0Expr|✅ proved - incomplete|shostak|0.130|

## `pvs0_to_nat`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|nat2PVS0_TCC1|✅ proved - complete|shostak|0.170|
|nat2PVS0_TCC2|✅ proved - complete|shostak|0.170|
|nat2PVS0_TCC3|✅ proved - complete|shostak|0.180|
|nat2PVS0_TCC4|✅ proved - complete|shostak|0.140|
|nat2PVS0_TCC5|✅ proved - complete|shostak|0.162|
|nat2PVS0_TCC6|✅ proved - incomplete|shostak|0.190|
|nat2PVS0_TCC7|✅ proved - incomplete|shostak|0.210|
|nat2PVS0_TCC8|✅ proved - incomplete|shostak|0.200|
|nat2PVS0_TCC9|✅ proved - incomplete|shostak|0.192|
|nat2PVS0_TCC10|✅ proved - complete|shostak|0.270|
|nat2PVS0_TCC11|✅ proved - incomplete|shostak|0.190|
|nat2PVS0_TCC12|✅ proved - incomplete|shostak|0.173|
|nat2PVS0_TCC13|✅ proved - incomplete|shostak|0.180|
|PVS02nat_TCC1|✅ proved - complete|shostak|0.160|
|PVS02nat_TCC2|✅ proved - complete|shostak|0.150|
|PVS02nat_TCC3|✅ proved - complete|shostak|0.170|
|PVS02nat_TCC4|✅ proved - complete|shostak|0.172|
|PVS02nat_TCC5|✅ proved - complete|shostak|0.170|
|PVS02nat_TCC6|✅ proved - complete|shostak|0.190|
|PVS02nat_TCC7|✅ proved - complete|shostak|0.180|
|nat2PVS0_inverse|✅ proved - incomplete|shostak|1.511|
|PVS02nat_inverse|✅ proved - incomplete|shostak|9.408|
|nat2PVS0_bijection|✅ proved - incomplete|shostak|0.138|

## `pvs0_computable`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|pvs0_level_TCC1|✅ proved - complete|shostak|0.130|
|level_surjective|✅ proved - incomplete|shostak|3.120|
|level_surjection_TCC1|✅ proved - incomplete|shostak|0.188|
|representantion|✅ proved - incomplete|shostak|0.244|
|pvs0_level_computable_TCC1|✅ proved - incomplete|shostak|0.226|
|pvs0_level_computable_TCC2|✅ proved - incomplete|shostak|0.160|
|pvs0_level_computable_terminating|✅ proved - incomplete|shostak|0.150|
|pvs0_level_computable_n|✅ proved - incomplete|shostak|0.293|
|PVS0_computable_is_terminating|✅ proved - incomplete|shostak|0.140|
|PVS0_computable_is_partial_recursive|✅ proved - incomplete|shostak|0.140|
|pvs0_level1_is_2|✅ proved - incomplete|shostak|0.319|

## `pvs0_halting`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|nat_to_PVS0_TCC1|✅ proved - incomplete|shostak|0.000|
|true_val_TCC1|✅ proved - complete|shostak|0.150|
|Oracle_TCC1|✅ proved - incomplete|shostak|0.270|
|pvs0_decidability|✅ proved - incomplete|shostak|0.519|
|pvs0_undecidability|✅ proved - incomplete|shostak|1.085|

## `dg_termination`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|M_TCC1|✅ proved - complete|shostak|0.210|
|dg_termination?_TCC1|✅ proved - incomplete|shostak|0.481|
|dg_termination?_TCC2|✅ proved - incomplete|shostak|0.456|
|pvs0_to_dg_sound_dpg_digraph|✅ proved - incomplete|shostak|0.657|
|dg_termination_implies_ccg|✅ proved - incomplete|shostak|0.424|

## `dp_termination`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|lt_wfm_dp_well_founded|✅ proved - incomplete|shostak|0.171|
|dp_dec_implies_dp_termination|✅ proved - incomplete|shostak|0.294|

## `dp_to_tcc`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|dp_termination_implies_scp_TCC1|✅ proved - complete|shostak|0.140|
|dp_termination_implies_scp|✅ proved - incomplete|shostak|0.265|
|dp_termination_implies_dp_dec|✅ proved - incomplete|shostak|0.156|

## `factorial_pvs0`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|factorial_op1_TCC1|✅ proved - complete|shostak|0.150|
|IMP_ccg_to_mwg_TCC1|✅ proved - complete|shostak|0.140|
|M_TCC1|✅ proved - complete|shostak|0.490|
|IMP_ccg_to_pvs0_TCC1|✅ proved - complete|shostak|0.429|
|IMP_bounding_circuits_TCC1|✅ proved - complete|shostak|0.440|
|A_TCC1|✅ proved - complete|shostak|0.440|
|A_TCC2|✅ proved - complete|shostak|0.450|
|factorial_mm_TCC1|✅ proved - incomplete|shostak|2.137|
|pvs0_factorial_terminating|✅ proved - incomplete|shostak|2.942|
|pvs0_factorial_tcc_termination|✅ proved - incomplete|shostak|0.472|
|factorial_msr|✅ proved - incomplete|shostak|0.440|
|factorial_wfm_TCC1|✅ proved - incomplete|shostak|0.440|

## `factorial_pvs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|factorial_TCC1|✅ proved - complete|shostak|0.455|
|factorial_TCC2|✅ proved - incomplete|shostak|1.014|
|factorial_TCC3|✅ proved - incomplete|shostak|0.000|
|factorial_TCC4|✅ proved - incomplete|shostak|0.971|

## `ack_pvs0`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|ack_op1_TCC1|✅ proved - complete|shostak|0.140|
|ack_op2_TCC1|✅ proved - complete|shostak|0.150|
|M1_TCC1|✅ proved - complete|shostak|0.250|
|A0_TCC1|✅ proved - complete|shostak|0.150|
|A0_TCC2|✅ proved - complete|shostak|0.156|
|A0_TCC3|✅ proved - complete|shostak|0.150|
|A1_TCC1|✅ proved - complete|shostak|0.160|
|A1_TCC2|✅ proved - complete|shostak|0.150|
|A2_TCC1|✅ proved - complete|shostak|0.150|
|A2_TCC2|✅ proved - complete|shostak|0.150|
|A2_TCC3|✅ proved - complete|shostak|0.148|
|ack_mm_TCC1|✅ proved - incomplete|shostak|6.092|
|pvs0_ack_terminating|✅ proved - incomplete|shostak|0.270|
|pvs0_ack_tcc_termination|✅ proved - incomplete|shostak|0.150|
|ack_msr|✅ proved - incomplete|shostak|0.170|
|ack_wfm_TCC1|✅ proved - incomplete|shostak|0.150|

## `ack_pvs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|ack_TCC1|✅ proved - incomplete|shostak|1.743|
|ack_TCC2|✅ proved - complete|shostak|0.158|
|ack_TCC3|✅ proved - incomplete|shostak|0.000|
|ack_TCC4|✅ proved - incomplete|shostak|1.836|
|ack_TCC5|✅ proved - complete|shostak|0.168|
|ack_TCC6|✅ proved - complete|shostak|0.160|
|ack_TCC7|✅ proved - incomplete|shostak|2.559|
|ack_TCC8|✅ proved - incomplete|shostak|2.582|
|ack_TCC9|✅ proved - incomplete|shostak|1.818|

## `fibo_pvs0`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|fibo_op1_TCC1|✅ proved - complete|shostak|0.150|
|M_TCC1|✅ proved - complete|shostak|0.257|
|A_TCC1|✅ proved - complete|shostak|0.170|
|A_TCC2|✅ proved - complete|shostak|0.170|
|fibo_mm_TCC1|✅ proved - incomplete|shostak|2.122|
|pvs0_fibo_terminating|✅ proved - incomplete|shostak|0.270|
|pvs0_fibo_tcc_termination|✅ proved - incomplete|shostak|0.160|
|fibo_msr|✅ proved - incomplete|shostak|0.160|
|fibo_wfm_TCC1|✅ proved - incomplete|shostak|0.160|

## `fibo_pvs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|fibo_TCC1|✅ proved - incomplete|shostak|1.407|
|fibo_TCC2|✅ proved - incomplete|shostak|1.402|
|fibo_TCC3|✅ proved - complete|shostak|0.180|
|fibo_TCC4|✅ proved - incomplete|shostak|0.000|
|fibo_TCC5|✅ proved - incomplete|shostak|1.433|

## `mf_pvs0_top`
No formula declaration found.
## `mf_pvs0_halting`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|nat2p_recursive_TCC1|✅ proved - incomplete|shostak|0.236|
|true_val_TCC1|✅ proved - complete|shostak|0.150|
|Oracle_TCC1|✅ proved - incomplete|shostak|0.229|
|mf_pvs0_halting_problem_decidability|✅ proved - incomplete|shostak|0.414|
|mf_pvs0_halting_problem_undecidability|✅ proved - incomplete|shostak|3.152|

## `mf_pvs0_computable`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|nat2PVS0_limit_TCC1|✅ proved - complete|shostak|0.144|
|nat2PVS0_limit_TCC2|✅ proved - complete|shostak|0.190|
|nat2PVS0_limit_TCC3|✅ proved - complete|shostak|0.190|
|nat2PVS0_limit_TCC4|✅ proved - complete|shostak|0.234|
|nat2PVS0_limit_TCC5|✅ proved - complete|shostak|0.190|
|nat2PVS0_limit_TCC6|✅ proved - complete|shostak|0.283|
|nat2PVS0_limit_TCC7|✅ proved - complete|shostak|0.290|
|nat2PVS0_limit_TCC8|✅ proved - complete|shostak|0.519|
|nat2PVS0_limit_TCC9|✅ proved - complete|shostak|0.200|
|nat2PVS0_limit_TCC10|✅ proved - incomplete|shostak|0.230|
|nat2PVS0_limit_TCC11|✅ proved - incomplete|shostak|0.190|
|nat2PVS0_limit_TCC12|✅ proved - incomplete|shostak|0.222|
|nat2PVS0_limit_TCC13|✅ proved - incomplete|shostak|0.170|
|nat2PVS0_limit_TCC14|✅ proved - incomplete|shostak|0.190|
|nat2PVS0_limit_TCC15|✅ proved - incomplete|shostak|0.220|
|nat2PVS0_limit_TCC16|✅ proved - complete|shostak|0.293|
|nat2PVS0_limit_TCC17|✅ proved - incomplete|shostak|0.180|
|nat2PVS0_limit_TCC18|✅ proved - incomplete|shostak|0.182|
|nat2PVS0_limit_TCC19|✅ proved - incomplete|shostak|0.190|
|nat2PVS0_limit_TCC20|✅ proved - incomplete|shostak|0.981|
|PVS02nat_limit_TCC1|✅ proved - complete|shostak|0.169|
|PVS02nat_limit_TCC2|✅ proved - complete|shostak|0.200|
|PVS02nat_limit_TCC3|✅ proved - complete|shostak|0.180|
|PVS02nat_limit_TCC4|✅ proved - complete|shostak|0.193|
|PVS02nat_limit_TCC5|✅ proved - complete|shostak|0.170|
|PVS02nat_limit_TCC6|✅ proved - complete|shostak|0.198|
|PVS02nat_limit_TCC7|✅ proved - complete|shostak|0.170|
|PVS02nat_limit_TCC8|✅ proved - complete|shostak|0.200|
|PVS02nat_limit_TCC9|✅ proved - complete|shostak|0.000|
|PVS02nat_limit_TCC10|✅ proved - complete|shostak|0.200|
|PVS02nat_limit_TCC11|✅ proved - complete|shostak|0.170|
|PVS02nat_limit_TCC12|✅ proved - complete|shostak|0.210|
|PVS02nat_limit_TCC13|✅ proved - complete|shostak|0.185|
|PVS02nat_limit_TCC14|✅ proved - complete|shostak|0.200|
|nat2PVS0_PVS02nat_limit|✅ proved - incomplete|shostak|1.428|
|PVS02nat_nat2PVS0_limit|✅ proved - incomplete|shostak|1.265|
|cons2nat_TCC1|✅ proved - complete|shostak|0.160|
|cons2nat_TCC2|✅ proved - complete|shostak|0.140|
|cons2nat_TCC3|✅ proved - incomplete|shostak|0.286|
|cons2nat_TCC4|✅ proved - incomplete|shostak|0.330|
|listnat2nat_TCC1|✅ proved - complete|shostak|0.157|
|listnat2nat_TCC2|✅ proved - complete|shostak|0.150|
|nat2listnat_aux_TCC1|✅ proved - complete|shostak|0.140|
|nat2listnat_aux_TCC2|✅ proved - complete|shostak|0.140|
|length_nat2listnat_aux|✅ proved - incomplete|shostak|0.237|
|nat2listnat_aux_cons2nat_TCC1|✅ proved - complete|shostak|0.150|
|nat2listnat_aux_cons2nat|✅ proved - incomplete|shostak|0.336|
|cons2nat_nat2listnat_aux_TCC1|✅ proved - incomplete|shostak|0.200|
|cons2nat_nat2listnat_aux|✅ proved - incomplete|shostak|0.488|
|listnat2nat_nat2listnat|✅ proved - incomplete|shostak|0.230|
|nat2listnat_listnat2nat|✅ proved - incomplete|shostak|0.200|
|listPVS0nat2nat_TCC1|✅ proved - complete|shostak|0.704|
|listPVS0nat2nat_TCC2|✅ proved - complete|shostak|0.190|
|listPVS0nat2nat_TCC3|✅ proved - incomplete|shostak|0.620|
|nat2listPVS0nat_TCC1|✅ proved - incomplete|shostak|0.200|
|nat2listPVS0nat_TCC2|✅ proved - incomplete|shostak|0.140|
|nat2listPVS0nat_TCC3|✅ proved - incomplete|shostak|1.485|
|listPVS0nat2nat_nat2listPVS0nat|✅ proved - incomplete|shostak|0.515|
|nat2listPVS0nat_listPVS0nat2nat|✅ proved - incomplete|shostak|1.226|

## `mf_pvs0_lang`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|terminating?_TCC1|✅ proved - complete|shostak|0.159|
|deterministic|✅ proved - complete|shostak|0.150|
|eval_pvs0_ge_n|✅ proved - complete|shostak|0.170|
|semantic_rel_eval|✅ proved - complete|shostak|0.166|
|eval_terminates|✅ proved - complete|shostak|0.150|
|terminating_determined_all|✅ proved - complete|shostak|0.140|
|mu_nonempty|✅ proved - complete|shostak|0.176|
|mu_TCC1|✅ proved - complete|shostak|0.148|
|mu_TCC2|✅ proved - complete|shostak|0.200|
|mu_terminates|✅ proved - complete|shostak|0.263|
|mu_min|✅ proved - complete|shostak|0.160|
|mu_eval_TCC1|✅ proved - complete|shostak|0.200|
|eval_semantic|✅ proved - complete|shostak|0.190|
|mu_eval_correct|✅ proved - complete|shostak|0.220|
|Delta_undetermined|✅ proved - complete|shostak|0.364|
|Delta_non_terminating|✅ proved - complete|shostak|0.151|
|pvs0_not_in_pvs|✅ proved - complete|shostak|0.180|
|offset_rec_TCC1|✅ proved - complete|shostak|0.160|
|offset_rec_TCC2|✅ proved - complete|shostak|0.161|
|offset_rec_TCC3|✅ proved - complete|shostak|0.160|
|offset_rec_TCC4|✅ proved - complete|shostak|0.170|
|offset_rec_TCC5|✅ proved - complete|shostak|0.161|
|offset_rec_TCC6|✅ proved - complete|shostak|0.160|
|offset_rec_TCC7|✅ proved - complete|shostak|0.170|
|offset_composition|✅ proved - complete|shostak|0.602|
|offset_composition2|✅ proved - complete|shostak|0.220|
|add_rec_list_aux_TCC1|✅ proved - complete|shostak|0.150|
|add_rec_list_aux|✅ proved - incomplete|shostak|4.862|
|valid_index_rec_offset|✅ proved - complete|shostak|0.711|
|add_rec_list_aux2_TCC1|✅ proved - complete|shostak|0.150|
|add_rec_list_aux2|✅ proved - incomplete|shostak|4.379|
|add_rec_list|✅ proved - incomplete|shostak|0.339|
|add_rec_list2|✅ proved - incomplete|shostak|0.293|

## `mf_pvs0_expr`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|semantic_rel_expr_TCC1|✅ proved - complete|shostak|0.140|
|semantic_rel_expr_TCC2|✅ proved - complete|shostak|0.150|
|semantic_rel_expr_TCC3|✅ proved - complete|shostak|0.155|
|semantic_rel_expr_TCC4|✅ proved - complete|shostak|0.160|
|eval_expr_TCC1|✅ proved - complete|shostak|0.160|
|eval_expr_TCC2|✅ proved - complete|shostak|0.259|
|eval_expr_TCC3|✅ proved - complete|shostak|0.000|
|eval_expr_TCC4|✅ proved - complete|shostak|0.170|
|eval_expr_TCC5|✅ proved - complete|shostak|0.310|
|eval_expr_TCC6|✅ proved - complete|shostak|0.354|
|eval_expr_TCC7|✅ proved - complete|shostak|0.350|
|eval_expr_TCC8|✅ proved - complete|shostak|0.331|
|eval_expr_TCC9|✅ proved - complete|shostak|0.190|
|eval_expr_TCC10|✅ proved - complete|shostak|0.170|
|eval_expr_TCC11|✅ proved - complete|shostak|0.243|
|eval_expr_ge_n_j_TCC1|✅ proved - complete|shostak|0.140|
|eval_expr_ge_n_j_TCC2|✅ proved - complete|shostak|0.170|
|eval_expr_ge_n_j_TCC3|✅ proved - complete|shostak|0.162|
|eval_expr_ge_n_j_TCC4|✅ proved - complete|shostak|0.160|
|eval_expr_ge_n_j_TCC5|✅ proved - complete|shostak|0.210|
|eval_expr_ge_n_j_TCC6|✅ proved - complete|shostak|0.163|
|eval_expr_ge_n_j_TCC7|✅ proved - complete|shostak|0.170|
|eval_expr_ge_n_j_TCC8|✅ proved - complete|shostak|0.210|
|eval_expr_ge_n_j_TCC9|✅ proved - complete|shostak|0.173|
|eval_expr_ge_n_j_TCC10|✅ proved - complete|shostak|0.200|
|eval_expr_ge_n_j_TCC11|✅ proved - complete|shostak|0.243|
|eval_expr_ge_n_j_TCC12|✅ proved - complete|shostak|0.170|
|eval_expr_ge_n_j_TCC13|✅ proved - complete|shostak|0.170|
|eval_expr_ge_n_j_TCC14|✅ proved - complete|shostak|0.243|
|eval_expr_ge_n_j_TCC15|✅ proved - complete|shostak|0.200|
|eval_expr_ge_n_j_TCC16|✅ proved - complete|shostak|0.150|
|eval_expr_gt_0|✅ proved - complete|shostak|0.153|
|eval_expr_ge_n|✅ proved - complete|shostak|0.240|
|semantic_rel_eval_expr|✅ proved - complete|shostak|2.131|
|eval_expr_n_pos|✅ proved - complete|shostak|0.180|
|deterministic_expr|✅ proved - complete|shostak|0.265|
|eval_expr_semantic_rel_j_TCC1|✅ proved - complete|shostak|0.210|
|eval_expr_semantic_rel_j_TCC2|✅ proved - complete|shostak|0.162|
|eval_expr_semantic_rel_j_TCC3|✅ proved - complete|shostak|0.160|
|eval_expr_semantic_rel_j_TCC4|✅ proved - complete|shostak|0.186|
|eval_expr_semantic_rel_j_TCC5|✅ proved - complete|shostak|0.200|
|eval_expr_semantic_rel_j_TCC6|✅ proved - complete|shostak|0.160|
|eval_expr_semantic_rel_j_TCC7|✅ proved - complete|shostak|0.182|
|eval_expr_semantic_rel_j_TCC8|✅ proved - complete|shostak|0.200|
|eval_expr_semantic_rel_j_TCC9|✅ proved - complete|shostak|0.150|
|eval_expr_semantic_rel_j_TCC10|✅ proved - complete|shostak|0.209|
|eval_expr_semantic_rel_j_TCC11|✅ proved - complete|shostak|0.200|
|eval_expr_semantic_rel_j_TCC12|✅ proved - complete|shostak|0.190|
|eval_expr_semantic_rel_j_TCC13|✅ proved - complete|shostak|0.174|
|eval_expr_semantic_rel_j_TCC14|✅ proved - complete|shostak|0.220|
|eval_expr_semantic_rel_j_TCC15|✅ proved - complete|shostak|0.180|
|eval_expr_semantic_rel_j_TCC16|✅ proved - complete|shostak|0.144|
|eval_expr_semantic_rel|✅ proved - complete|shostak|0.240|
|eval_expr_terminates|✅ proved - complete|shostak|0.193|

## `subtype_length`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|subtype_length|✅ proved - complete|shostak|0.150|
|subtype_nth|✅ proved - complete|shostak|0.160|
|subtype_append|✅ proved - complete|shostak|0.150|
|subtype_every|✅ proved - complete|shostak|0.161|

## `subtype_map`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|subtype_map|✅ proved - complete|shostak|0.180|

## `map_identity`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|map_identity|✅ proved - complete|shostak|0.160|

## `mf_pvs0_Fixedpoint`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|diagonal_function_TCC1|✅ proved - complete|shostak|0.200|
|part2part_TCC1|✅ proved - complete|shostak|0.141|
|part2part_TCC2|✅ proved - incomplete|shostak|0.160|
|part2part_TCC3|✅ proved - incomplete|shostak|0.160|
|fixed_point|✅ proved - incomplete|shostak|4.807|

## `map_append`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|map_append|✅ proved - complete|shostak|0.190|

## `mf_pvs0_Rices_Theorem_Corollaries`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|uniform_halting_problem_undecidability_Turing_complete|✅ proved - incomplete|shostak|0.433|
|fixed_point_existence_undecidability_Turing_complete|✅ proved - incomplete|shostak|0.490|
|self_replication_undecidability_Turing_complete|✅ proved - incomplete|shostak|1.757|
|pvs0_program_equivalence_undecidability_Turing_complete|✅ proved - incomplete|shostak|3.208|
|natural_predicate_undecidability|✅ proved - incomplete|shostak|0.200|

## `mf_pvs0_Rices_Theorem`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Generalized_Recursion_Theorem_TCC1|✅ proved - incomplete|shostak|0.267|
|Generalized_Recursion_Theorem_TCC2|✅ proved - incomplete|shostak|0.290|
|Generalized_Recursion_implies_pvs0_Rices_Theorem|✅ proved - incomplete|shostak|15.127|
|Rice_theorem_for_Turing_complete_pvs0|✅ proved - incomplete|shostak|0.178|

## `mf_pvs0_Recursion_Theorem`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|p_recursive2nat_TCC1|✅ proved - incomplete|shostak|0.210|
|greater_index_rec_TCC1|✅ proved - complete|shostak|0.160|
|greater_index_rec_TCC2|✅ proved - complete|shostak|0.176|
|greater_index_rec_TCC3|✅ proved - complete|shostak|0.170|
|greater_index_rec_TCC4|✅ proved - complete|shostak|0.170|
|greater_index_rec_TCC5|✅ proved - complete|shostak|0.195|
|greater_index_rec_TCC6|✅ proved - complete|shostak|0.180|
|greater_index_rec_TCC7|✅ proved - complete|shostak|0.170|
|greater_index_rec_correctness|✅ proved - complete|shostak|0.374|
|greater_index_rec_list_TCC1|✅ proved - complete|shostak|0.140|
|greater_index_rec_list_TCC2|✅ proved - complete|shostak|0.180|
|greater_index_rec_list_correctness|✅ proved - complete|shostak|0.270|
|printA_TCC1|✅ proved - incomplete|shostak|0.235|
|map_offset_rec_appendn|✅ proved - incomplete|shostak|0.240|
|print_correctness_TCC1|✅ proved - incomplete|shostak|0.210|
|print_correctness|✅ proved - incomplete|shostak|5.216|
|vr_subterm|✅ proved - incomplete|shostak|0.277|
|print_limited|✅ proved - incomplete|shostak|3.694|
|Recursion_Theorem_TCC1|✅ proved - incomplete|shostak|0.250|
|Recursion_Theorem_TCC2|✅ proved - incomplete|shostak|0.316|
|Recursion_Theorem|✅ proved - incomplete|shostak|19.461|

## `mf_pvs0_basic_programs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|equal_TCC1|✅ proved - incomplete|shostak|0.308|
|equal_works|✅ proved - incomplete|shostak|1.498|
|sub_function_TCC1|✅ proved - complete|shostak|0.152|
|sub_TCC1|✅ proved - incomplete|shostak|0.350|
|sub_works|✅ proved - incomplete|shostak|1.310|
|sub1_TCC1|✅ proved - complete|shostak|0.150|
|sub1_TCC2|✅ proved - incomplete|shostak|0.461|
|sub1_works|✅ proved - incomplete|shostak|0.617|
|sum_function_TCC1|✅ proved - complete|shostak|0.000|
|sum_function_TCC2|✅ proved - complete|shostak|0.140|
|sum_TCC1|✅ proved - incomplete|shostak|0.626|
|sum_works|✅ proved - incomplete|shostak|1.341|
|sum_function_correctness|✅ proved - complete|shostak|0.170|
|sum_correctness|✅ proved - incomplete|shostak|0.140|
|mult_TCC1|✅ proved - incomplete|shostak|0.229|
|mult_TCC2|✅ proved - incomplete|shostak|1.913|
|mult_works|✅ proved - incomplete|shostak|4.019|
|mult_function_correctness|✅ proved - complete|shostak|0.160|
|mult_correctness|✅ proved - incomplete|shostak|0.159|

## `mf_pvs0_Turing_Completeness`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|proj_aux_function_TCC1|✅ proved - complete|shostak|0.160|
|proj_aux_function_TCC2|✅ proved - complete|shostak|0.170|
|nat2list_TCC1|✅ proved - complete|shostak|0.150|
|nat2list_TCC2|✅ proved - complete|shostak|0.130|
|nat2list_length|✅ proved - incomplete|shostak|0.222|
|proj_aux_function_not_last|✅ proved - incomplete|shostak|0.270|
|proj_aux_function_last_TCC1|✅ proved - complete|shostak|0.149|
|proj_aux_function_last_TCC2|✅ proved - incomplete|shostak|0.170|
|proj_aux_function_last|✅ proved - incomplete|shostak|0.783|
|nat2list_extension_TCC1|✅ proved - incomplete|shostak|0.161|
|nat2list_extension_TCC2|✅ proved - incomplete|shostak|0.160|
|nat2list_extension|✅ proved - incomplete|shostak|0.330|
|proj_aux_function_works_TCC1|✅ proved - incomplete|shostak|0.168|
|proj_aux_function_works|✅ proved - incomplete|shostak|0.592|
|proj_aux_TCC1|✅ proved - complete|shostak|0.189|
|proj_aux_TCC2|✅ proved - incomplete|shostak|0.628|
|proj_aux_works|✅ proved - incomplete|shostak|5.310|
|proj_TCC1|✅ proved - incomplete|shostak|0.000|
|proj_works|✅ proved - incomplete|shostak|1.342|
|proj_correctness_TCC1|✅ proved - incomplete|shostak|0.157|
|proj_correctness|✅ proved - incomplete|shostak|0.190|
|expr_comp_TCC1|✅ proved - incomplete|shostak|0.240|
|expr_comp_TCC2|✅ proved - incomplete|shostak|0.166|
|rec_indices_chain_offset_is_limited|✅ proved - incomplete|shostak|0.895|
|rec_indices_expr_comp_is_limited|✅ proved - incomplete|shostak|0.618|
|chain_offset_length|✅ proved - incomplete|shostak|0.507|
|comp_TCC1|✅ proved - incomplete|shostak|0.358|
|comp_TCC2|✅ proved - incomplete|shostak|0.553|
|list2nat_TCC1|✅ proved - complete|shostak|0.160|
|list2nat_TCC2|✅ proved - complete|shostak|0.150|
|offset_rec_chain_offset|✅ proved - incomplete|shostak|0.438|
|offset_rec_expr_comp|✅ proved - incomplete|shostak|0.358|
|limits_of_chain_offset_TCC1|✅ proved - incomplete|shostak|0.727|
|limits_of_chain_offset_TCC2|✅ proved - incomplete|shostak|0.170|
|limits_of_chain_offset|✅ proved - incomplete|shostak|9.152|
|chain_offset_prop_TCC1|✅ proved - incomplete|shostak|0.139|
|chain_offset_prop|✅ proved - incomplete|shostak|5.433|
|comp_is_composition_TCC1|✅ proved - incomplete|shostak|0.270|
|comp_is_composition|✅ proved - incomplete|shostak|3.375|
|min_relation_works|✅ proved - incomplete|shostak|0.343|
|min_relation_leq|✅ proved - incomplete|shostak|0.000|
|min_aux_TCC1|✅ proved - incomplete|shostak|0.270|
|min_aux_TCC2|✅ proved - incomplete|shostak|0.402|
|min_aux_leq_eval_expr_TCC1|✅ proved - incomplete|shostak|0.220|
|min_aux_leq_eval_expr|✅ proved - incomplete|shostak|1.307|
|min_aux_leq|✅ proved - incomplete|shostak|0.190|
|min_relation_works2|✅ proved - incomplete|shostak|0.315|
|min_aux_is_min_relation|✅ proved - incomplete|shostak|2.529|
|min_aux_correctness|✅ proved - incomplete|shostak|0.160|
|min_TCC1|✅ proved - incomplete|shostak|0.341|
|min_TCC2|✅ proved - incomplete|shostak|0.500|
|min_correctness|✅ proved - incomplete|shostak|1.112|
|prim_recurrence_relation_TCC1|✅ proved - incomplete|shostak|0.170|
|prim_recurrence_TCC1|✅ proved - incomplete|shostak|3.706|
|prim_recurrence_is_prim_recurrence_relation|✅ proved - incomplete|shostak|16.390|
|prim_recurrence_relation_works_TCC1|✅ proved - incomplete|shostak|0.140|
|prim_recurrence_relation_works_TCC2|✅ proved - incomplete|shostak|0.150|
|prim_recurrence_relation_works_TCC3|✅ proved - incomplete|shostak|0.180|
|prim_recurrence_relation_works_TCC4|✅ proved - incomplete|shostak|0.180|
|prim_recurrence_relation_works_TCC5|✅ proved - incomplete|shostak|0.189|
|prim_recurrence_relation_works|✅ proved - incomplete|shostak|3.032|
|prim_recurrence_correctness|✅ proved - incomplete|shostak|0.190|

## `chain_of_appends`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|chain_of_appends_TCC1|✅ proved - complete|shostak|0.140|
|chain_of_appends_TCC2|✅ proved - complete|shostak|0.170|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Mac OS X (Intel)] (Nov 14, 2020 23:13)|
| Patch Version| n/a|
| Library Path| `/Applications/pvs-7.1.0/pvslib/`<br/>`/Applications/pvs-7.1.0/lib/`<br/>`/Applications/pvs-7.1.0/pvslib/float/`<br/>`/Applications/pvs-7.1.0/pvslib/pvsio_utils/`|
| Loaded Patches | `/Applications/pvs-7.1.0/pvslib/.pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230712-static-update.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230710-tcc-gen.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230707-defattach.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230706-extrategies.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210323-wish.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210225-cl2pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210715a.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210715.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210707.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210706.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210511.lisp`|
