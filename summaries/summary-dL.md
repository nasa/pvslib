# Summary for `dL`
Run started at 17:50:54 9/19/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **1063**   | **1063**    | **1063**    | **0**  | **15:36.220 s**   |
|top|0|0|0|0|0.000|
|hp_def|24|24|24|0|5.710|
|hp_expr|32|32|32|0|3.827|
|bounded_star_semantics|23|23|23|0|4.757|
|bool_expr|36|36|36|0|3.934|
|bound_variables_def|17|17|17|0|3.446|
|hp_props|19|19|19|0|5.036|
|substitution|58|58|58|0|11.327|
|ODEs_equiv|103|103|103|0|38.595|
|differentiation|120|120|120|0|59.892|
|chain_rule_re|134|134|134|0|1:36.464|
|diff_re_props|15|15|15|0|2:53.245|
|continuity_re_def|1|1|1|0|0.050|
|continuity_props|14|14|14|0|5.579|
|continuity_re_props|8|8|8|0|8.497|
|fresh_props|32|32|32|0|14.615|
|dynamic_logic|136|136|136|0|1:29.854|
|more_derivative_props|4|4|4|0|6.779|
|dl_solution|57|57|57|0|2:29.441|
|top_dtl|0|0|0|0|0.000|
|even_more_list_props|7|7|7|0|2.457|
|ltl_expr|37|37|37|0|36.189|
|trace_semantics|39|39|39|0|15.590|
|solution_odes_props|58|58|58|0|51.935|
|temporal_logic|61|61|61|0|1:46.805|
|trace_bounded_star_semantics|28|28|28|0|42.196|
## Detailed Summary 
## `top`
No formula declaration found.
## `hp_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|mapexpr_inj_TCC1|✅ proved - complete|shostak|0.210|
|mapexpr_inj_TCC2|✅ proved - complete|shostak|0.120|
|mapexpr_inj_cons|✅ proved - complete|shostak|0.258|
|mapexpr_inj_eq|✅ proved - complete|shostak|0.150|
|null_MapExprInj|✅ proved - complete|shostak|0.110|
|cdr_is_MapExprInj|✅ proved - complete|shostak|0.229|
|sub_mapexpr_inj_is_mapexpr_inj|✅ proved - incomplete|shostak|0.170|
|in_map_cons|✅ proved - complete|shostak|0.206|
|in_map_null_false|✅ proved - complete|shostak|0.050|
|not_in_map_null|✅ proved - complete|shostak|0.060|
|index_of_j|✅ proved - complete|shostak|0.080|
|expr_car_TCC1|✅ proved - complete|shostak|0.078|
|expr_car|✅ proved - complete|shostak|0.170|
|expr_not_car_TCC1|✅ proved - complete|shostak|0.110|
|expr_not_car|✅ proved - complete|shostak|0.304|
|max_var_rec_TCC1|✅ proved - complete|shostak|0.050|
|max_var_rec_TCC2|✅ proved - complete|shostak|0.030|
|max_var_rec_TCC3|✅ proved - complete|shostak|0.090|
|max_var_rec_pull|✅ proved - complete|shostak|0.504|
|max_var_max|✅ proved - complete|shostak|0.400|
|max_var_exist|✅ proved - complete|shostak|1.556|
|pigeon_map|✅ proved - complete|shostak|0.393|
|max_var_length|✅ proved - complete|shostak|0.230|
|nip_max_var|✅ proved - complete|shostak|0.152|

## `hp_expr`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_table_of_integrals_TCC1|✅ proved - complete|shostak|0.040|
|IMP_table_of_integrals_TCC2|✅ proved - incomplete|shostak|0.040|
|size_TCC1|✅ proved - incomplete|shostak|0.090|
|size_TCC2|✅ proved - incomplete|shostak|0.064|
|size_TCC3|✅ proved - incomplete|shostak|0.060|
|size_TCC4|✅ proved - incomplete|shostak|0.060|
|size_TCC5|✅ proved - incomplete|shostak|0.060|
|dd?_TCC1|✅ proved - incomplete|shostak|0.040|
|dd_deriv_domain|✅ proved - incomplete|shostak|0.190|
|dd_noe|✅ proved - incomplete|shostak|0.069|
|dd_con|✅ proved - incomplete|shostak|0.070|
|dd_ne|✅ proved - incomplete|shostak|0.060|
|dd_ci_TCC1|✅ proved - incomplete|shostak|0.060|
|dd_ci|✅ proved - incomplete|shostak|0.068|
|derivable_odes?_TCC1|✅ proved - incomplete|shostak|0.040|
|derivable_odes?_TCC2|✅ proved - incomplete|shostak|0.080|
|env_at_t_TCC1|✅ proved - incomplete|shostak|0.070|
|env_at_t_TCC2|✅ proved - incomplete|shostak|0.570|
|sol_at_t?_TCC1|✅ proved - incomplete|shostak|0.584|
|semantic_rel_TCC1|✅ proved - incomplete|shostak|0.060|
|semantic_rel_TCC2|✅ proved - incomplete|shostak|0.132|
|semantic_rel_TCC3|✅ proved - incomplete|shostak|0.120|
|semantic_rel_TCC4|✅ proved - incomplete|shostak|0.130|
|fresh_li?_TCC1|✅ proved - incomplete|shostak|0.060|
|fresh_li?_TCC2|✅ proved - incomplete|shostak|0.040|
|fresh_assign_nth|✅ proved - incomplete|shostak|0.270|
|fresh_mapexpr_inj|✅ proved - incomplete|shostak|0.240|
|fresh_mapexp_nth_2|✅ proved - incomplete|shostak|0.208|
|fresh_hp?_TCC1|✅ proved - incomplete|shostak|0.060|
|fresh_hp?_TCC2|✅ proved - incomplete|shostak|0.062|
|fresh_hp?_TCC3|✅ proved - incomplete|shostak|0.060|
|fresh_hp?_TCC4|✅ proved - incomplete|shostak|0.070|

## `bounded_star_semantics`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|semantic_rel_bounded_star_TCC1|✅ proved - complete|shostak|0.040|
|semantic_rel_bounded_star_TCC2|✅ proved - incomplete|shostak|0.080|
|semantic_rel_bounded_star_TCC3|✅ proved - complete|shostak|0.080|
|semantic_rel_bounded_star_TCC4|✅ proved - complete|shostak|0.080|
|semantic_rel_bounded_star_TCC5|✅ proved - complete|shostak|0.080|
|semantic_rel_bounded_star_TCC6|✅ proved - complete|shostak|0.080|
|semantic_rel_bounded_star_TCC7|✅ proved - incomplete|shostak|0.110|
|semantic_rel_bounded_star_TCC8|✅ proved - incomplete|shostak|0.092|
|semantic_rel_bounded_star_inc|✅ proved - incomplete|shostak|0.728|
|semantic_rel_implies_bounded|✅ proved - incomplete|shostak|0.532|
|bounded_implies_semantic_rel|✅ proved - incomplete|shostak|0.621|
|BSTAR_TCC1|✅ proved - complete|shostak|0.050|
|BSTAR_TCC2|✅ proved - complete|shostak|0.040|
|semantic_rel_bstar_reflexive|✅ proved - incomplete|shostak|0.095|
|semantic_rel_bounded_bstar_semantic_rel_bstar|✅ proved - incomplete|shostak|0.184|
|semantic_rel_star_bounded_star|✅ proved - incomplete|shostak|0.060|
|semantic_rel_star_bounded_star_con|✅ proved - incomplete|shostak|0.184|
|semantic_rel_bounded_star_seq_switch|✅ proved - incomplete|shostak|0.877|
|semantic_rel_star_seq_switch|✅ proved - incomplete|shostak|0.299|
|semantic_rel_bounded_star_iter|✅ proved - incomplete|shostak|0.110|
|semantic_rel_bounded_star_iter_con_TCC1|✅ proved - incomplete|shostak|0.080|
|semantic_rel_bounded_star_iter_con|✅ proved - incomplete|shostak|0.120|
|semantic_rel_star_iter|✅ proved - incomplete|shostak|0.135|

## `bool_expr`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|fresh?_TCC1|✅ proved - complete|shostak|0.040|
|fresh?_TCC2|✅ proved - complete|shostak|0.060|
|fresh_formula_nth|✅ proved - complete|shostak|0.152|
|fresh_be_invar|✅ proved - complete|shostak|0.232|
|dl_not_not|✅ proved - complete|shostak|0.050|
|dl_not_true|✅ proved - complete|shostak|0.050|
|dl_not_false|✅ proved - complete|shostak|0.040|
|dl_true_and|✅ proved - complete|shostak|0.051|
|dl_and_true|✅ proved - complete|shostak|0.050|
|dl_false_and|✅ proved - complete|shostak|0.050|
|dl_and_false|✅ proved - complete|shostak|0.040|
|dl_true_or|✅ proved - complete|shostak|0.050|
|dl_or_true|✅ proved - complete|shostak|0.040|
|dl_false_or|✅ proved - complete|shostak|0.040|
|dl_or_false|✅ proved - complete|shostak|0.052|
|dl_true_implies|✅ proved - complete|shostak|0.050|
|dl_implies_true|✅ proved - complete|shostak|0.050|
|dl_false_implies|✅ proved - complete|shostak|0.050|
|dl_implies_false|✅ proved - complete|shostak|0.040|
|dl_forall_bool|✅ proved - complete|shostak|0.050|
|dl_exists_bool|✅ proved - complete|shostak|0.057|
|nqb_to_be_TCC1|✅ proved - complete|shostak|0.050|
|nqb_to_be_TCC2|✅ proved - complete|shostak|0.050|
|nqb_to_be_TCC3|✅ proved - complete|shostak|0.050|
|nqb_to_be_TCC4|✅ proved - complete|shostak|0.050|
|nqb_to_be_TCC5|✅ proved - complete|shostak|0.040|
|nqb_normal?_TCC1|✅ proved - complete|shostak|0.030|
|nqb_normal?_TCC2|✅ proved - complete|shostak|0.040|
|normalize_rec_TCC1|✅ proved - complete|shostak|0.070|
|normalize_rec_TCC2|✅ proved - complete|shostak|0.230|
|normalize_rec_TCC3|✅ proved - complete|shostak|0.991|
|normalize_rec_TCC4|✅ proved - complete|shostak|0.212|
|normalize_rec_TCC5|✅ proved - complete|shostak|0.469|
|normalize_rec_TCC6|✅ proved - complete|shostak|0.207|
|normalize_rec_TCC7|✅ proved - complete|shostak|0.101|
|normalize_TCC1|✅ proved - complete|shostak|0.050|

## `bound_variables_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|bv_me_TCC1|✅ proved - complete|shostak|0.040|
|bv_me_TCC2|✅ proved - complete|shostak|0.060|
|bv_me_TCC3|✅ proved - complete|shostak|0.040|
|bv_me_TCC4|✅ proved - complete|shostak|0.120|
|bv_me_TCC5|✅ proved - incomplete|shostak|0.060|
|BV_TCC1|✅ proved - complete|shostak|0.040|
|BV_TCC2|✅ proved - complete|shostak|0.140|
|BV_TCC3|✅ proved - complete|shostak|0.134|
|BV_TCC4|✅ proved - complete|shostak|0.110|
|BV_TCC5|✅ proved - incomplete|shostak|0.070|
|bv_me_nth_TCC1|✅ proved - incomplete|shostak|0.220|
|bv_me_nth|✅ proved - incomplete|shostak|0.371|
|BV_implies_not_fresh|✅ proved - incomplete|shostak|1.006|
|BV_invar|✅ proved - incomplete|shostak|0.785|
|bvs?_TCC1|✅ proved - complete|shostak|0.060|
|bvs?_TCC2|✅ proved - incomplete|shostak|0.050|
|bvs?_TCC3|✅ proved - incomplete|shostak|0.140|

## `hp_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|assign1_prop_TCC1|✅ proved - complete|shostak|0.083|
|assign1_prop|✅ proved - incomplete|shostak|0.320|
|assign_prop_TCC1|✅ proved - complete|shostak|0.090|
|assign_prop|✅ proved - incomplete|shostak|0.484|
|assign_comm_TCC1|✅ proved - complete|shostak|0.102|
|assign_comm|✅ proved - incomplete|shostak|0.301|
|union_prop_TCC1|✅ proved - incomplete|shostak|0.172|
|union_prop|✅ proved - incomplete|shostak|0.284|
|union_prop_xx|✅ proved - incomplete|shostak|0.060|
|union_id|✅ proved - incomplete|shostak|0.066|
|union_comm|✅ proved - incomplete|shostak|0.240|
|seq_prop|✅ proved - incomplete|shostak|0.720|
|test_prop|✅ proved - incomplete|shostak|0.080|
|diff_prop_TCC1|✅ proved - incomplete|shostak|0.150|
|diff_prop|✅ proved - incomplete|shostak|0.000|
|star_prop_imp_TCC1|✅ proved - complete|shostak|0.080|
|star_prop_imp|✅ proved - incomplete|shostak|0.413|
|star2_prop_imp_TCC1|✅ proved - complete|shostak|0.080|
|star2_prop_imp|✅ proved - incomplete|shostak|1.311|

## `substitution`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|assign_env_TCC1|✅ proved - complete|shostak|0.070|
|assign_env_TCC2|✅ proved - complete|shostak|0.052|
|assign_env_TCC3|✅ proved - complete|shostak|0.140|
|assign_env_TCC4|✅ proved - complete|shostak|0.060|
|SUB_MapExpr_TCC1|✅ proved - complete|shostak|0.060|
|SUB_MapExpr_TCC2|✅ proved - complete|shostak|0.080|
|SUB_MapExpr_TCC3|✅ proved - complete|shostak|0.068|
|SUB_MapExpr_TCC4|✅ proved - complete|shostak|0.160|
|SUB_MapExpr_TCC5|✅ proved - complete|shostak|1.198|
|assign_env__TCC1|✅ proved - incomplete|shostak|0.093|
|assign_env__TCC2|✅ proved - incomplete|shostak|0.070|
|assign_env__alt_j_TCC1|✅ proved - complete|shostak|0.050|
|assign_env__alt_j_TCC2|✅ proved - complete|shostak|0.050|
|assign_env__alt_j_TCC3|✅ proved - incomplete|shostak|0.123|
|assign_env__alt_j_TCC4|✅ proved - incomplete|shostak|0.700|
|assign_env__alt_j_TCC5|✅ proved - incomplete|shostak|0.881|
|assign_env_phantom_eq_TCC1|✅ proved - complete|shostak|0.040|
|assign_env_phantom_eq|✅ proved - incomplete|shostak|0.694|
|assign_env_alt|✅ proved - incomplete|shostak|0.171|
|assign_env_ext|✅ proved - complete|shostak|0.393|
|assign_sub_ext|✅ proved - complete|shostak|0.050|
|SUB_MapVar_TCC1|✅ proved - complete|shostak|0.060|
|SUB_MapVar_TCC2|✅ proved - complete|shostak|0.170|
|SUB_MapVar_TCC3|✅ proved - complete|shostak|0.052|
|SUB_MapVar_TCC4|✅ proved - complete|shostak|0.130|
|SUB_MapVar_TCC5|✅ proved - complete|shostak|0.170|
|dl_subre_val|✅ proved - complete|shostak|0.074|
|dl_subre_const|✅ proved - complete|shostak|0.070|
|dl_subre_plus|✅ proved - complete|shostak|0.100|
|dl_subre_minus|✅ proved - complete|shostak|0.080|
|dl_subre_neg|✅ proved - complete|shostak|0.083|
|dl_subre_prod|✅ proved - complete|shostak|0.100|
|dl_subre_prod_scal1|✅ proved - complete|shostak|0.100|
|dl_subre_prod_scal2|✅ proved - complete|shostak|0.110|
|dl_subre_exp|✅ proved - incomplete|shostak|0.149|
|dl_sub_bool|✅ proved - complete|shostak|0.070|
|dl_sub_bool_restricted|✅ proved - complete|shostak|0.080|
|dl_sub_and|✅ proved - complete|shostak|0.070|
|dl_sub_or|✅ proved - complete|shostak|0.078|
|dl_sub_not|✅ proved - complete|shostak|0.070|
|dl_sub_implies|✅ proved - complete|shostak|0.080|
|dl_sub_ge|✅ proved - complete|shostak|0.080|
|dl_sub_gt|✅ proved - complete|shostak|0.080|
|dl_sub_le|✅ proved - complete|shostak|0.074|
|dl_sub_lt|✅ proved - complete|shostak|0.080|
|dl_sub_eq|✅ proved - complete|shostak|0.080|
|dl_sub_neq|✅ proved - complete|shostak|0.080|
|dl_sub_iff|✅ proved - complete|shostak|0.090|
|dl_sub_allruns0_x_neq_y_TCC1|✅ proved - incomplete|shostak|0.150|
|dl_sub_allruns0_x_neq_y_TCC2|✅ proved - incomplete|shostak|0.190|
|dl_sub_allruns0_x_neq_y_TCC3|✅ proved - complete|shostak|0.170|
|dl_sub_allruns0_x_neq_y_TCC4|✅ proved - incomplete|shostak|0.190|
|dl_sub_allruns0_x_neq_y|✅ proved - incomplete|shostak|1.973|
|dl_sub_allruns_assign0_x_eq_y_TCC1|✅ proved - incomplete|shostak|0.180|
|dl_sub_allruns_assign0_x_eq_y_TCC2|✅ proved - incomplete|shostak|0.180|
|dl_sub_allruns_assign0_x_eq_y|✅ proved - incomplete|shostak|0.471|
|dl_sub_forall|✅ proved - complete|shostak|0.080|
|dl_sub_exists|✅ proved - complete|shostak|0.080|

## `ODEs_equiv`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Re_TCC1|✅ proved - incomplete|shostak|0.104|
|Re_TCC2|✅ proved - complete|shostak|0.070|
|Re_TCC3|✅ proved - complete|shostak|0.060|
|Re_TCC4|✅ proved - complete|shostak|0.110|
|Re_TCC5|✅ proved - incomplete|shostak|0.266|
|Re_TCC6|✅ proved - complete|shostak|0.070|
|Re_nth_TCC1|✅ proved - incomplete|shostak|0.090|
|Re_nth|✅ proved - incomplete|shostak|0.317|
|env_vec_TCC1|✅ proved - complete|shostak|0.050|
|env_vec_TCC2|✅ proved - complete|shostak|0.150|
|env_vec_TCC3|✅ proved - incomplete|shostak|0.209|
|env_vec_nth_TCC1|✅ proved - incomplete|shostak|0.090|
|env_vec_nth|✅ proved - incomplete|shostak|0.380|
|r2v_2_fs_TCC1|✅ proved - complete|shostak|0.090|
|r2v_2_fs_TCC2|✅ proved - incomplete|shostak|0.050|
|r2v_2_fs_TCC3|✅ proved - incomplete|shostak|0.060|
|r2v_2_fs_TCC4|✅ proved - incomplete|shostak|0.528|
|r2v_2_fs_TCC5|✅ proved - incomplete|shostak|0.093|
|fs_2_r2v_TCC1|✅ proved - incomplete|shostak|0.050|
|fs_2_r2v_TCC2|✅ proved - incomplete|shostak|0.070|
|fs_2_r2v_TCC3|✅ proved - incomplete|shostak|0.060|
|fs_2_r2v_TCC4|✅ proved - incomplete|shostak|0.050|
|fs_2_r2v_TCC5|✅ proved - incomplete|shostak|0.080|
|fs_2_r2v_TCC6|✅ proved - incomplete|shostak|0.050|
|fs_2_r2v_TCC7|✅ proved - incomplete|shostak|0.050|
|fs_2_r2v_TCC8|✅ proved - incomplete|shostak|0.103|
|fs_2_r2v_TCC9|✅ proved - incomplete|shostak|0.420|
|fs_2_f2v_nth_TCC1|✅ proved - incomplete|shostak|0.080|
|fs_2_f2v_nth|✅ proved - incomplete|shostak|0.511|
|fs_2_f2v_eq_TCC1|✅ proved - incomplete|shostak|0.050|
|fs_2_f2v_eq_TCC2|✅ proved - incomplete|shostak|0.084|
|fs_2_f2v_eq_TCC3|✅ proved - incomplete|shostak|0.100|
|fs_2_f2v_eq_TCC4|✅ proved - incomplete|shostak|0.070|
|fs_2_f2v_eq_TCC5|✅ proved - incomplete|shostak|0.060|
|fs_2_f2v_eq_TCC6|✅ proved - incomplete|shostak|0.293|
|fs_2_f2v_eq|✅ proved - incomplete|shostak|0.000|
|Odes_f_TCC1|✅ proved - incomplete|shostak|0.223|
|cont_f?_TCC1|✅ proved - incomplete|shostak|0.073|
|cont_f?_TCC2|✅ proved - incomplete|shostak|0.070|
|cont_f?_TCC3|✅ proved - incomplete|shostak|0.080|
|cont_f?_TCC4|✅ proved - incomplete|shostak|0.230|
|cont_f?_TCC5|✅ proved - incomplete|shostak|0.142|
|cont_f?_TCC6|✅ proved - incomplete|shostak|0.070|
|max_diff_TCC1|✅ proved - incomplete|shostak|0.060|
|max_diff_TCC2|✅ proved - incomplete|shostak|0.153|
|max_diff_TCC3|✅ proved - incomplete|shostak|0.060|
|max_diff_TCC4|✅ proved - incomplete|shostak|0.050|
|max_diff_TCC5|✅ proved - incomplete|shostak|0.170|
|max_diff_TCC6|✅ proved - incomplete|shostak|0.208|
|max_diff_TCC7|✅ proved - incomplete|shostak|0.090|
|max_diff_TCC8|✅ proved - incomplete|shostak|0.050|
|max_diff_TCC9|✅ proved - incomplete|shostak|1.180|
|max_diff_norm_inf_TCC1|✅ proved - incomplete|shostak|0.050|
|max_diff_norm_inf_TCC2|✅ proved - incomplete|shostak|0.090|
|max_diff_norm_inf_TCC3|✅ proved - incomplete|shostak|0.050|
|max_diff_norm_inf_TCC4|✅ proved - incomplete|shostak|0.090|
|max_diff_norm_inf_TCC5|✅ proved - incomplete|shostak|0.124|
|max_diff_norm_inf|✅ proved - incomplete|shostak|3.864|
|cdr_TCC1|✅ proved - incomplete|shostak|0.050|
|cdr_TCC2|✅ proved - incomplete|shostak|0.060|
|cdr_const_TCC1|✅ proved - incomplete|shostak|0.050|
|cdr_const|✅ proved - incomplete|shostak|0.197|
|Lip_ODEs?_TCC1|✅ proved - incomplete|shostak|0.070|
|Lip_ODEs?_TCC2|✅ proved - incomplete|shostak|0.124|
|Lip_ODEs?_TCC3|✅ proved - incomplete|shostak|0.187|
|Lip_ODEs?_TCC4|✅ proved - incomplete|shostak|0.120|
|Lip_DDL_ODEs|✅ proved - incomplete|shostak|3.368|
|cont_DDL_ODEs|✅ proved - incomplete|shostak|0.000|
|diff_sol_Lip_TCC1|✅ proved - incomplete|shostak|0.604|
|diff_sol_Lip_TCC2|✅ proved - incomplete|shostak|0.060|
|diff_sol_Lip|✅ proved - incomplete|shostak|8.774|
|diff_sol_eq_TCC1|✅ proved - incomplete|shostak|0.150|
|diff_sol_eq_TCC2|✅ proved - incomplete|shostak|0.060|
|diff_sol_eq|✅ proved - incomplete|shostak|0.070|
|fs_sol_TCC1|✅ proved - incomplete|shostak|0.110|
|ODEs_s_sub_TCC1|✅ proved - incomplete|shostak|0.727|
|ODEs_s_sub_TCC2|✅ proved - incomplete|shostak|0.095|
|ODEs_s_sub|✅ proved - incomplete|shostak|0.835|
|fs_sol_sub_TCC1|✅ proved - incomplete|shostak|0.079|
|fs_sol_sub_TCC2|✅ proved - incomplete|shostak|0.090|
|fs_sol_sub_TCC3|✅ proved - incomplete|shostak|0.070|
|fs_sol_sub|✅ proved - incomplete|shostak|0.208|
|env_sol_sub_TCC1|✅ proved - incomplete|shostak|0.000|
|env_sol_sub_TCC2|✅ proved - incomplete|shostak|0.915|
|env_sol_sub_TCC3|✅ proved - incomplete|shostak|0.094|
|env_sol_sub_TCC4|✅ proved - incomplete|shostak|0.070|
|env_sol_sub|✅ proved - incomplete|shostak|0.323|
|solution_odes_sub|✅ proved - incomplete|shostak|0.335|
|solution_odes_subset|✅ proved - incomplete|shostak|0.110|
|odes_hp_s_TCC1|✅ proved - incomplete|shostak|0.050|
|odes_hp_s_TCC2|✅ proved - incomplete|shostak|0.060|
|odes_hp_s_TCC3|✅ proved - incomplete|shostak|0.364|
|odes_hp_s|✅ proved - incomplete|shostak|0.383|
|fs_sol_hp_TCC1|✅ proved - incomplete|shostak|0.340|
|fs_sol_hp_TCC2|✅ proved - incomplete|shostak|0.412|
|fs_sol_hp_TCC3|✅ proved - incomplete|shostak|0.220|
|fs_sol_hp_TCC4|✅ proved - incomplete|shostak|0.402|
|fs_sol_hp_TCC5|✅ proved - incomplete|shostak|0.492|
|fs_sol_hp_fs_TCC1|✅ proved - incomplete|shostak|0.060|
|fs_sol_hp_fs|✅ proved - incomplete|shostak|0.422|
|fs_sol_hp_sol|✅ proved - incomplete|shostak|2.676|
|fs_sol_hp_sol_u|✅ proved - incomplete|shostak|1.134|
|diff_sol_eq_dd|✅ proved - incomplete|shostak|1.430|

## `differentiation`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_derivatives_TCC1|✅ proved - incomplete|shostak|0.040|
|IMP_derivatives_TCC2|✅ proved - incomplete|shostak|0.050|
|right_dd_i|✅ proved - incomplete|shostak|0.234|
|right_dd|✅ proved - incomplete|shostak|0.060|
|connection_proj|✅ proved - incomplete|shostak|0.117|
|right_ne_i|✅ proved - incomplete|shostak|0.220|
|right_ne|✅ proved - incomplete|shostak|0.060|
|ddl_dom_upto|✅ proved - incomplete|shostak|0.050|
|ddl_dom_weak|✅ proved - incomplete|shostak|0.060|
|ddl_dom_dd|✅ proved - incomplete|shostak|0.746|
|ddl_dom__upto_dd|✅ proved - incomplete|shostak|0.060|
|ddl_dom_noe|✅ proved - incomplete|shostak|0.060|
|dl_true_DDL|✅ proved - incomplete|shostak|0.170|
|dl_true_up_DDL|✅ proved - incomplete|shostak|0.160|
|derivable?_TCC1|✅ proved - incomplete|shostak|0.132|
|derivable?_TCC2|✅ proved - incomplete|shostak|0.060|
|derivable?_TCC3|✅ proved - incomplete|shostak|0.050|
|derivable_up?_TCC1|✅ proved - incomplete|shostak|0.070|
|derivable?_TCC4|✅ proved - incomplete|shostak|0.090|
|hathat_diff_real_TCC1|✅ proved - incomplete|shostak|0.051|
|hathat_diff_real_TCC2|✅ proved - incomplete|shostak|1.203|
|hathat_diff_real_TCC3|✅ proved - incomplete|shostak|0.050|
|hathat_diff_real|✅ proved - incomplete|shostak|0.200|
|expt_TCC1|✅ proved - incomplete|shostak|0.060|
|expt_TCC2|✅ proved - incomplete|shostak|0.060|
|sqrt_hathat_TCC1|✅ proved - incomplete|shostak|0.050|
|sqrt_hathat|✅ proved - incomplete|shostak|0.661|
|sqrt_hathat_neg_TCC1|✅ proved - incomplete|shostak|0.070|
|sqrt_hathat_neg|✅ proved - incomplete|shostak|0.260|
|expt_exp_equiv|✅ proved - incomplete|shostak|0.065|
|partial_diff_TCC1|✅ proved - incomplete|shostak|0.070|
|dl_derivable_const|✅ proved - incomplete|shostak|0.080|
|dl_partial_const_TCC1|✅ proved - incomplete|shostak|0.048|
|dl_partial_const|✅ proved - incomplete|shostak|0.236|
|dl_derivable_up_cnst|✅ proved - incomplete|shostak|0.080|
|dl_derivable_val|✅ proved - incomplete|shostak|0.099|
|dl_derivable_up_val|✅ proved - incomplete|shostak|0.080|
|dl_partial_val_TCC1|✅ proved - incomplete|shostak|0.060|
|dl_partial_val|✅ proved - incomplete|shostak|0.280|
|dl_derivable_plus|✅ proved - incomplete|shostak|0.170|
|dl_partial_plus_TCC1|✅ proved - incomplete|shostak|0.061|
|dl_partial_plus|✅ proved - incomplete|shostak|0.362|
|dl_derivable_up_sum|✅ proved - incomplete|shostak|0.090|
|dl_derivable_mult|✅ proved - incomplete|shostak|0.092|
|dl_partial_mult_TCC1|✅ proved - incomplete|shostak|0.050|
|dl_partial_mult|✅ proved - incomplete|shostak|0.488|
|dl_derivable_up_prod|✅ proved - incomplete|shostak|0.090|
|dl_derivable_minus|✅ proved - incomplete|shostak|0.098|
|dl_partial_minus_TCC1|✅ proved - incomplete|shostak|0.050|
|dl_partial_minus|✅ proved - incomplete|shostak|0.283|
|dl_derivable_up_minus|✅ proved - incomplete|shostak|0.146|
|dl_derivable_negative|✅ proved - incomplete|shostak|0.170|
|dl_partial_negative_TCC1|✅ proved - incomplete|shostak|0.050|
|dl_partial_negative|✅ proved - incomplete|shostak|0.294|
|dl_derivable_pow|✅ proved - incomplete|shostak|0.706|
|dl_derivable_up_pow|✅ proved - incomplete|shostak|0.241|
|dl_derivable_div|✅ proved - incomplete|shostak|0.407|
|dl_partial_div_TCC1|✅ proved - incomplete|shostak|0.040|
|dl_partial_div|✅ proved - incomplete|shostak|1.149|
|dl_derivable_up_div|✅ proved - incomplete|shostak|0.090|
|dl_derivable_comp_point_TCC1|✅ proved - incomplete|shostak|2.233|
|dl_derivable_comp_point_TCC2|✅ proved - incomplete|shostak|0.060|
|dl_derivable_comp_point_TCC3|✅ proved - incomplete|shostak|0.180|
|dl_derivable_comp_point|✅ proved - incomplete|shostak|0.303|
|dl_derivable_comp_TCC1|✅ proved - incomplete|shostak|0.060|
|dl_derivable_comp_TCC2|✅ proved - incomplete|shostak|0.058|
|dl_derivable_comp_TCC3|✅ proved - incomplete|shostak|0.190|
|dl_derivable_comp|✅ proved - incomplete|shostak|0.078|
|dl_partial_chain_TCC1|✅ proved - incomplete|shostak|0.050|
|dl_partial_chain_TCC2|✅ proved - incomplete|shostak|0.070|
|dl_partial_chain_TCC3|✅ proved - incomplete|shostak|0.060|
|dl_partial_chain_TCC4|✅ proved - incomplete|shostak|0.190|
|dl_partial_chain|✅ proved - incomplete|shostak|0.650|
|dl_derivable_exp|✅ proved - incomplete|shostak|2.204|
|dl_partial_exp_TCC1|✅ proved - incomplete|shostak|0.050|
|dl_partial_exp|✅ proved - incomplete|shostak|0.000|
|dl_derivable_sqrt|✅ proved - incomplete|shostak|0.572|
|dl_partial_sqrt_TCC1|✅ proved - incomplete|shostak|0.060|
|dl_partial_sqrt|✅ proved - incomplete|shostak|1.177|
|DIFT_last_TCC1|✅ proved - incomplete|shostak|0.051|
|DIFT_last_TCC2|✅ proved - incomplete|shostak|0.080|
|DIFT_last|✅ proved - incomplete|shostak|0.614|
|dl_dift_val_zero|✅ proved - incomplete|shostak|0.597|
|dl_dift_val_P|✅ proved - incomplete|shostak|1.297|
|dl_dift_val_TCC1|✅ proved - incomplete|shostak|0.050|
|dl_dift_val|✅ proved - incomplete|shostak|0.080|
|dl_dift_const|✅ proved - incomplete|shostak|1.008|
|dl_dift_plus_TCC1|✅ proved - incomplete|shostak|0.050|
|dl_dift_plus|✅ proved - incomplete|shostak|2.734|
|dl_dift_minus|✅ proved - incomplete|shostak|1.211|
|dl_dift_negative|✅ proved - incomplete|shostak|0.000|
|dl_dift_mult|✅ proved - incomplete|shostak|4.534|
|dl_dift_divsafe|✅ proved - incomplete|shostak|5.102|
|dl_dift_exp|✅ proved - incomplete|shostak|1.124|
|dl_dift_pow|✅ proved - incomplete|shostak|1.792|
|dl_dift_sqrt|✅ proved - incomplete|shostak|1.472|
|ddt_TCC1|✅ proved - incomplete|shostak|0.070|
|ddt_TCC2|✅ proved - incomplete|shostak|0.066|
|ddt_TCC3|✅ proved - incomplete|shostak|0.170|
|ddt_not_in_map|✅ proved - incomplete|shostak|0.329|
|ddt_in_map_TCC1|✅ proved - incomplete|shostak|0.239|
|ddt_in_map|✅ proved - incomplete|shostak|1.716|
|re_plus_cnst0|✅ proved - incomplete|shostak|0.070|
|cnst0_plus_re|✅ proved - incomplete|shostak|0.070|
|re_minus_cnst0|✅ proved - incomplete|shostak|0.070|
|cnst0_minus_re|✅ proved - incomplete|shostak|0.130|
|re_prod_cnst0|✅ proved - incomplete|shostak|0.060|
|cnst0_prod_re|✅ proved - incomplete|shostak|0.140|
|sqrt_safe_sq|✅ proved - incomplete|shostak|0.130|
|ODEs_P?_TCC1|✅ proved - incomplete|shostak|13.199|
|DIFT_TCC1|✅ proved - incomplete|shostak|0.081|
|DIFT_TCC2|✅ proved - incomplete|shostak|0.150|
|DIFT_TCC3|✅ proved - incomplete|shostak|0.100|
|DIFT_TCC4|✅ proved - incomplete|shostak|0.661|
|DIFT_TCC5|✅ proved - incomplete|shostak|0.092|
|DIFT_TCC6|✅ proved - incomplete|shostak|0.531|
|DIFT_TCC7|✅ proved - incomplete|shostak|0.090|
|DIFT_TCC8|✅ proved - incomplete|shostak|0.160|
|DIFT_TCC9|✅ proved - incomplete|shostak|0.088|
|DIFT_TCC10|✅ proved - incomplete|shostak|0.060|

## `chain_rule_re`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|env_2_vec_TCC1|✅ proved - incomplete|shostak|0.060|
|env_2_vec_TCC2|✅ proved - complete|shostak|0.070|
|env_2_vec_TCC3|✅ proved - complete|shostak|0.040|
|env_2_vec_TCC4|✅ proved - incomplete|shostak|0.080|
|env_2_vec_nth_TCC1|✅ proved - incomplete|shostak|0.150|
|env_2_vec_nth|✅ proved - incomplete|shostak|0.278|
|projv_dd|✅ proved - incomplete|shostak|4.508|
|proj_projv_TCC1|✅ proved - incomplete|shostak|0.080|
|proj_projv_TCC2|✅ proved - incomplete|shostak|0.254|
|proj_projv|✅ proved - incomplete|shostak|1.162|
|projv_proj_TCC1|✅ proved - complete|shostak|0.052|
|projv_proj_TCC2|✅ proved - incomplete|shostak|0.250|
|projv_proj|✅ proved - incomplete|shostak|0.585|
|ddl_dom_dom_dir|✅ proved - incomplete|shostak|1.562|
|dd_e_partial|✅ proved - incomplete|shostak|1.389|
|vec_2_env_TCC1|✅ proved - incomplete|shostak|0.150|
|vec_2_env_id|✅ proved - incomplete|shostak|0.289|
|env_2_vec_id|✅ proved - incomplete|shostak|0.361|
|vec_2_env_plus_TCC1|✅ proved - incomplete|shostak|0.239|
|vec_2_env_plus_TCC2|✅ proved - incomplete|shostak|0.090|
|vec_2_env_plus|✅ proved - incomplete|shostak|2.134|
|differentiable_re_p?_TCC1|✅ proved - incomplete|shostak|0.060|
|differentiable_re_p?_TCC2|✅ proved - incomplete|shostak|0.060|
|diff_env_change|✅ proved - incomplete|shostak|0.401|
|diff_re_diff_mv_TCC1|✅ proved - incomplete|shostak|0.060|
|diff_re_diff_mv|✅ proved - incomplete|shostak|0.311|
|der_re_p_TCC1|✅ proved - incomplete|shostak|0.330|
|der_re_TCC1|✅ proved - incomplete|shostak|0.000|
|der_re_grad_TCC1|✅ proved - incomplete|shostak|0.153|
|der_re_grad_TCC2|✅ proved - incomplete|shostak|0.317|
|der_re_grad|✅ proved - incomplete|shostak|0.469|
|diff_re_init_partial_TCC1|✅ proved - incomplete|shostak|0.140|
|diff_re_init_partial|✅ proved - incomplete|shostak|0.200|
|der_re_partial_TCC1|✅ proved - incomplete|shostak|0.197|
|der_re_partial|✅ proved - incomplete|shostak|0.180|
|re_diff_mv|✅ proved - incomplete|shostak|0.170|
|re_der_mv_TCC1|✅ proved - incomplete|shostak|0.120|
|re_der_mv|✅ proved - incomplete|shostak|0.351|
|re_diff_mv_ll_TCC1|✅ proved - incomplete|shostak|0.060|
|re_diff_mv_ll_TCC2|✅ proved - incomplete|shostak|0.387|
|re_diff_mv_ll_TCC3|✅ proved - incomplete|shostak|0.070|
|re_diff_mv_ll_TCC4|✅ proved - incomplete|shostak|0.060|
|re_diff_mv_ll_TCC5|✅ proved - incomplete|shostak|0.090|
|re_diff_mv_ll|✅ proved - incomplete|shostak|0.927|
|re_der_mv_ll_TCC1|✅ proved - incomplete|shostak|0.150|
|re_der_mv_ll_TCC2|✅ proved - incomplete|shostak|0.070|
|re_der_mv_ll_TCC3|✅ proved - incomplete|shostak|0.100|
|re_der_mv_ll|✅ proved - incomplete|shostak|0.890|
|with_e_vec_TCC1|✅ proved - complete|shostak|0.050|
|with_e_vec_TCC2|✅ proved - incomplete|shostak|0.263|
|with_e_vec|✅ proved - incomplete|shostak|0.592|
|derivable_partial_TCC1|✅ proved - incomplete|shostak|0.141|
|derivable_partial_TCC2|✅ proved - incomplete|shostak|0.060|
|derivable_partial_TCC3|✅ proved - incomplete|shostak|0.139|
|derivable_partial|✅ proved - incomplete|shostak|4.452|
|derivable_partial_D_TCC1|✅ proved - incomplete|shostak|0.070|
|derivable_partial_D|✅ proved - incomplete|shostak|0.752|
|deriv_partial_TCC1|✅ proved - incomplete|shostak|0.150|
|deriv_partial|✅ proved - incomplete|shostak|3.747|
|diff_re_derivable_partial_TCC1|✅ proved - incomplete|shostak|0.509|
|diff_re_derivable_partial|✅ proved - incomplete|shostak|0.090|
|diff_re_partialable_p_TCC1|✅ proved - incomplete|shostak|0.499|
|diff_re_partialable_p|✅ proved - incomplete|shostak|0.248|
|diff_re_derivable_up_TCC1|✅ proved - incomplete|shostak|0.490|
|diff_re_derivable_up|✅ proved - incomplete|shostak|0.142|
|der_re_partial_der_TCC1|✅ proved - incomplete|shostak|0.060|
|der_re_partial_der|✅ proved - incomplete|shostak|0.130|
|der_ll_partial_der_TCC1|✅ proved - incomplete|shostak|0.094|
|der_ll_partial_der_TCC2|✅ proved - incomplete|shostak|0.090|
|der_ll_partial_der_TCC3|✅ proved - incomplete|shostak|0.342|
|der_ll_partial_der_TCC4|✅ proved - incomplete|shostak|0.090|
|der_ll_partial_der_TCC5|✅ proved - incomplete|shostak|5.512|
|der_ll_partial_der|✅ proved - incomplete|shostak|0.158|
|eq_re_comp|✅ proved - incomplete|shostak|0.290|
|env_sol_env2vec|✅ proved - incomplete|shostak|0.401|
|e2v_diff_p_TCC1|✅ proved - incomplete|shostak|0.060|
|e2v_diff_p|✅ proved - incomplete|shostak|3.513|
|e2v_der_p_TCC1|✅ proved - incomplete|shostak|0.173|
|e2v_der_p_TCC2|✅ proved - incomplete|shostak|0.616|
|e2v_der_p_TCC3|✅ proved - incomplete|shostak|0.363|
|e2v_der_p|✅ proved - incomplete|shostak|0.408|
|e2v_der_p_not_in_map|✅ proved - incomplete|shostak|1.618|
|e2v_der_p_in_map|✅ proved - incomplete|shostak|11.647|
|e2v_der_p_in_map_ode|✅ proved - incomplete|shostak|5.597|
|e2v_re_diff_p_TCC1|✅ proved - incomplete|shostak|0.070|
|e2v_re_diff_p_TCC2|✅ proved - incomplete|shostak|0.070|
|e2v_re_diff_p|✅ proved - incomplete|shostak|0.000|
|e2v_re_der_p_TCC1|✅ proved - incomplete|shostak|0.070|
|e2v_re_der_p_TCC2|✅ proved - incomplete|shostak|0.069|
|e2v_re_der_p_TCC3|✅ proved - incomplete|shostak|0.150|
|e2v_re_der_p_TCC4|✅ proved - incomplete|shostak|0.060|
|e2v_re_der_p_TCC5|✅ proved - incomplete|shostak|0.097|
|e2v_re_der_p_TCC6|✅ proved - incomplete|shostak|0.190|
|e2v_re_der_p|✅ proved - incomplete|shostak|2.265|
|re_diff_chain_TCC1|✅ proved - incomplete|shostak|0.110|
|re_diff_chain_TCC2|✅ proved - incomplete|shostak|0.064|
|re_diff_chain_TCC3|✅ proved - incomplete|shostak|0.060|
|re_diff_chain|✅ proved - incomplete|shostak|0.236|
|init_re_der_chain_TCC1|✅ proved - incomplete|shostak|0.062|
|init_re_der_chain_TCC2|✅ proved - incomplete|shostak|0.060|
|init_re_der_chain_TCC3|✅ proved - incomplete|shostak|0.160|
|init_re_der_chain_TCC4|✅ proved - incomplete|shostak|0.059|
|init_re_der_chain_TCC5|✅ proved - incomplete|shostak|0.060|
|init_re_der_chain_TCC6|✅ proved - incomplete|shostak|0.080|
|init_re_der_chain_TCC7|✅ proved - incomplete|shostak|0.198|
|init_re_der_chain_TCC8|✅ proved - incomplete|shostak|0.070|
|init_re_der_chain_TCC9|✅ proved - incomplete|shostak|0.070|
|init_re_der_chain_TCC10|✅ proved - incomplete|shostak|1.174|
|init_re_der_chain_TCC11|✅ proved - incomplete|shostak|1.609|
|init_re_der_chain|✅ proved - incomplete|shostak|0.649|
|init2_re_der_chain_TCC1|✅ proved - incomplete|shostak|0.060|
|init2_re_der_chain_TCC2|✅ proved - incomplete|shostak|0.067|
|init2_re_der_chain_TCC3|✅ proved - incomplete|shostak|0.070|
|init2_re_der_chain|✅ proved - incomplete|shostak|2.647|
|init3_re_der_chain_TCC1|✅ proved - incomplete|shostak|0.060|
|init3_re_der_chain_TCC2|✅ proved - incomplete|shostak|0.064|
|init3_re_der_chain_TCC3|✅ proved - incomplete|shostak|0.080|
|init3_re_der_chain_TCC4|✅ proved - incomplete|shostak|0.224|
|init3_re_der_chain_TCC5|✅ proved - incomplete|shostak|0.100|
|init3_re_der_chain_TCC6|✅ proved - incomplete|shostak|0.109|
|init3_re_der_chain_TCC7|✅ proved - incomplete|shostak|0.230|
|init3_re_der_chain_TCC8|✅ proved - incomplete|shostak|0.281|
|init3_re_der_chain_TCC9|✅ proved - incomplete|shostak|0.321|
|init3_re_der_chain_TCC10|✅ proved - incomplete|shostak|0.110|
|init3_re_der_chain_TCC11|✅ proved - incomplete|shostak|0.112|
|init3_re_der_chain|✅ proved - incomplete|shostak|12.382|
|SUB_DIFTRe_sig_TCC1|✅ proved - incomplete|shostak|0.082|
|SUB_DIFTRe_sig_TCC2|✅ proved - incomplete|shostak|0.060|
|SUB_DIFTRe_sig_TCC3|✅ proved - incomplete|shostak|0.065|
|SUB_DIFTRe_sig|✅ proved - incomplete|shostak|6.986|
|derivable_M_nqbool?_TCC1|✅ proved - incomplete|shostak|0.292|
|derivable_M_nqbool?_TCC2|✅ proved - incomplete|shostak|0.300|
|derivable_M_normalize_rec|✅ proved - incomplete|shostak|0.278|
|derivable_M_normalize|✅ proved - incomplete|shostak|0.060|

## `diff_re_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|diff_re_cont_TCC1|✅ proved - incomplete|shostak|1.081|
|diff_re_cont_TCC2|✅ proved - incomplete|shostak|0.832|
|diff_re_cont|✅ proved - incomplete|shostak|13.682|
|diff_re_divbound_TCC1|✅ proved - incomplete|shostak|0.310|
|diff_re_divbound_TCC2|✅ proved - incomplete|shostak|0.097|
|diff_re_divbound|✅ proved - incomplete|shostak|1.227|
|diff_re_val|✅ proved - incomplete|shostak|2.693|
|diff_re_cnst|✅ proved - incomplete|shostak|0.741|
|diff_re_prod|✅ proved - incomplete|shostak|16.333|
|diff_re_pow|✅ proved - incomplete|shostak|0.218|
|diff_re_sum|✅ proved - incomplete|shostak|1.332|
|diff_re_diff|✅ proved - incomplete|shostak|0.115|
|diff_re_inv_aux|✅ proved - incomplete|shostak|2:14.161|
|diff_re_inv|✅ proved - incomplete|shostak|0.193|
|diff_re_div|✅ proved - incomplete|shostak|0.230|

## `continuity_re_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cont_re?_TCC1|✅ proved - complete|shostak|0.050|

## `continuity_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|f_sol_continuous|✅ proved - incomplete|shostak|0.133|
|c_delt_TCC1|✅ proved - incomplete|shostak|0.816|
|min_delt_TCC1|✅ proved - incomplete|shostak|0.087|
|min_delt_TCC2|✅ proved - incomplete|shostak|0.270|
|min_delt_TCC3|✅ proved - incomplete|shostak|0.488|
|min_delt_TCC4|✅ proved - incomplete|shostak|0.080|
|min_delt_TCC5|✅ proved - incomplete|shostak|0.265|
|min_delt_TCC6|✅ proved - incomplete|shostak|0.125|
|min_delt_TCC7|✅ proved - incomplete|shostak|0.090|
|min_delt_TCC8|✅ proved - incomplete|shostak|0.360|
|min_delt_TCC9|✅ proved - incomplete|shostak|0.090|
|min_delt_TCC10|✅ proved - incomplete|shostak|1.270|
|env_at_t_continuous|✅ proved - incomplete|shostak|0.310|
|re_env_continuous|✅ proved - incomplete|shostak|1.195|

## `continuity_re_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cont_re_val|✅ proved - complete|shostak|0.107|
|cont_re_cnst|✅ proved - complete|shostak|0.100|
|cont_re_prod|✅ proved - incomplete|shostak|0.000|
|cont_re_pow|✅ proved - incomplete|shostak|0.395|
|cont_re_sum|✅ proved - complete|shostak|0.422|
|cont_re_diff|✅ proved - incomplete|shostak|0.113|
|cont_re_div_aux|✅ proved - incomplete|shostak|7.236|
|cont_re_div|✅ proved - incomplete|shostak|0.124|

## `fresh_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|fresh_re_cnst|✅ proved - complete|shostak|0.050|
|fresh_re_val|✅ proved - complete|shostak|0.060|
|fresh_re_sum|✅ proved - complete|shostak|0.090|
|fresh_re_minus|✅ proved - complete|shostak|0.073|
|fresh_re_prod|✅ proved - complete|shostak|0.100|
|fresh_re_div_safe|✅ proved - incomplete|shostak|0.070|
|fresh_re_sqrt_safe|✅ proved - incomplete|shostak|0.063|
|fresh_re_pow|✅ proved - incomplete|shostak|0.200|
|fresh_re_exp|✅ proved - incomplete|shostak|0.068|
|fresh_re_expt|✅ proved - incomplete|shostak|0.966|
|fresh_re_ex1|✅ proved - complete|shostak|3.244|
|fresh_re_ex2|✅ proved - incomplete|shostak|4.260|
|not_fresh_re_val|✅ proved - complete|shostak|0.060|
|fresh_be_DLTRUE|✅ proved - complete|shostak|0.050|
|fresh_be_DLFALSE|✅ proved - complete|shostak|0.050|
|fresh_be_eq|✅ proved - complete|shostak|0.110|
|fresh_be_neq|✅ proved - complete|shostak|0.104|
|fresh_be_le|✅ proved - complete|shostak|0.110|
|fresh_be_lt|✅ proved - complete|shostak|0.100|
|fresh_be_ge|✅ proved - complete|shostak|0.000|
|fresh_be_gt|✅ proved - complete|shostak|0.130|
|fresh_be_or|✅ proved - complete|shostak|0.130|
|fresh_be_and|✅ proved - complete|shostak|0.100|
|fresh_be_implies|✅ proved - complete|shostak|0.104|
|fresh_be_not|✅ proved - complete|shostak|0.070|
|fresh_be_IFF|✅ proved - complete|shostak|0.130|
|fresh_fs_sol|✅ proved - incomplete|shostak|2.350|
|fresh_bstar_semantic_rel|✅ proved - incomplete|shostak|0.367|
|fresh_be_semantic_rel|✅ proved - incomplete|shostak|0.997|
|fresh_be_allruns|✅ proved - incomplete|shostak|0.120|
|fresh_be_allruns_e|✅ proved - incomplete|shostak|0.168|
|fresh_be_someruns|✅ proved - incomplete|shostak|0.121|

## `dynamic_logic`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|assign0_prop|✅ proved - incomplete|shostak|0.456|
|assign_assign_sub|✅ proved - incomplete|shostak|0.130|
|assign_sub_assign|✅ proved - incomplete|shostak|0.084|
|turnstile_TCC1|✅ proved - complete|shostak|0.080|
|turnstile_TCC2|✅ proved - complete|shostak|0.060|
|turnstile_TCC3|✅ proved - complete|shostak|0.100|
|turnstile_TCC4|✅ proved - incomplete|shostak|0.175|
|turnstile_TCC5|✅ proved - incomplete|shostak|0.160|
|turnstile_TCC6|✅ proved - incomplete|shostak|0.260|
|dlSequent_equiv|✅ proved - incomplete|shostak|0.195|
|dl_notR|✅ proved - incomplete|shostak|0.273|
|dl_notL|✅ proved - incomplete|shostak|0.270|
|dl_andR|✅ proved - incomplete|shostak|0.230|
|dl_andL|✅ proved - incomplete|shostak|0.258|
|dl_orR|✅ proved - incomplete|shostak|0.290|
|dl_orL|✅ proved - incomplete|shostak|0.309|
|dl_impliesR|✅ proved - incomplete|shostak|0.298|
|dl_impliesL|✅ proved - incomplete|shostak|0.358|
|dl_equivR|✅ proved - incomplete|shostak|0.805|
|dl_equivL|✅ proved - incomplete|shostak|0.457|
|dl_axiom|✅ proved - incomplete|shostak|0.289|
|dl_trueR|✅ proved - incomplete|shostak|0.150|
|dl_trueL|✅ proved - incomplete|shostak|0.197|
|dl_falseR|✅ proved - incomplete|shostak|0.190|
|dl_falseL|✅ proved - incomplete|shostak|0.150|
|dl_cut|✅ proved - incomplete|shostak|0.250|
|dl_weakR|✅ proved - incomplete|shostak|0.271|
|dl_weakL|✅ proved - incomplete|shostak|0.270|
|dl_forallR|✅ proved - incomplete|shostak|0.209|
|dl_forallL|✅ proved - incomplete|shostak|0.131|
|dl_existsR|✅ proved - incomplete|shostak|0.130|
|dl_existsL|✅ proved - incomplete|shostak|0.210|
|dl_existsrR|✅ proved - incomplete|shostak|0.130|
|dl_existsrRf|✅ proved - incomplete|shostak|0.140|
|dl_existsrL|✅ proved - incomplete|shostak|0.211|
|move_to_head_rec_TCC1|✅ proved - complete|shostak|0.080|
|move_to_head_rec_TCC2|✅ proved - complete|shostak|0.070|
|move_to_head_rec_TCC3|✅ proved - complete|shostak|0.130|
|move_to_head_rec_TCC4|✅ proved - complete|shostak|0.053|
|move_to_head_rec_nth_TCC1|✅ proved - complete|shostak|0.070|
|move_to_head_rec_nth_TCC2|✅ proved - complete|shostak|0.220|
|move_to_head_rec_nth_TCC3|✅ proved - complete|shostak|0.263|
|move_to_head_rec_nth_TCC4|✅ proved - complete|shostak|0.200|
|move_to_head_rec_nth_TCC5|✅ proved - complete|shostak|0.260|
|move_to_head_rec_nth_TCC6|✅ proved - complete|shostak|0.213|
|move_to_head_rec_nth_TCC7|✅ proved - complete|shostak|0.270|
|move_to_head_rec_nth_TCC8|✅ proved - complete|shostak|0.252|
|move_to_head_rec_nth_TCC9|✅ proved - incomplete|shostak|0.685|
|move_to_head_rec_nth_TCC10|✅ proved - incomplete|shostak|1.456|
|move_to_head_TCC1|✅ proved - complete|shostak|0.070|
|move_to_head_length|✅ proved - incomplete|shostak|0.276|
|move_to_head_car_TCC1|✅ proved - incomplete|shostak|0.070|
|move_to_head_car_TCC2|✅ proved - complete|shostak|0.050|
|move_to_head_car|✅ proved - incomplete|shostak|0.164|
|move_to_head_first_half_TCC1|✅ proved - incomplete|shostak|0.070|
|move_to_head_first_half_TCC2|✅ proved - complete|shostak|0.090|
|move_to_head_first_half|✅ proved - incomplete|shostak|0.265|
|move_to_head_second_half_TCC1|✅ proved - incomplete|shostak|0.060|
|move_to_head_second_half|✅ proved - incomplete|shostak|0.310|
|dl_moveR|✅ proved - incomplete|shostak|0.234|
|dl_moveL|✅ proved - incomplete|shostak|0.235|
|dl_hideR|✅ proved - incomplete|shostak|0.210|
|dl_hideL|✅ proved - incomplete|shostak|0.199|
|dl_boxd|✅ proved - incomplete|shostak|0.090|
|dl_assignb|✅ proved - incomplete|shostak|0.090|
|dl_assignb_restricted|✅ proved - incomplete|shostak|0.090|
|dl_assignd|✅ proved - incomplete|shostak|0.080|
|dl_testb|✅ proved - incomplete|shostak|0.090|
|dl_testb_true|✅ proved - incomplete|shostak|0.063|
|dl_testd|✅ proved - incomplete|shostak|0.090|
|dl_testd_true|✅ proved - incomplete|shostak|0.190|
|dl_choiceb|✅ proved - incomplete|shostak|0.000|
|dl_choiced|✅ proved - incomplete|shostak|0.200|
|dl_composeb|✅ proved - incomplete|shostak|0.121|
|dl_composed|✅ proved - incomplete|shostak|0.140|
|dl_iterateb|✅ proved - incomplete|shostak|0.171|
|dl_iterated|✅ proved - incomplete|shostak|0.261|
|dl_anyb_TCC1|✅ proved - complete|shostak|0.091|
|dl_anyb|✅ proved - incomplete|shostak|0.411|
|dl_anyd|✅ proved - incomplete|shostak|0.190|
|dl_boxand|✅ proved - incomplete|shostak|0.111|
|dl_diamondOr|✅ proved - incomplete|shostak|0.110|
|dl_iteratearrowb|✅ proved - incomplete|shostak|0.212|
|dl_starstarb|✅ proved - incomplete|shostak|0.706|
|dl_iterateIb|✅ proved - incomplete|shostak|0.881|
|dl_impliesallrunsb|✅ proved - incomplete|shostak|0.200|
|dl_impliesallrunsd|✅ proved - incomplete|shostak|0.198|
|dl_distimpliesb|✅ proved - incomplete|shostak|0.173|
|dl_const|✅ proved - incomplete|shostak|0.423|
|dl_constd|✅ proved - incomplete|shostak|0.393|
|dl_V|✅ proved - incomplete|shostak|1.573|
|dl_Vd|✅ proved - incomplete|shostak|1.608|
|dl_bool_const|✅ proved - incomplete|shostak|0.190|
|dl_subr_TCC1|✅ proved - incomplete|shostak|0.190|
|dl_subr|✅ proved - incomplete|shostak|0.277|
|dl_subl|✅ proved - incomplete|shostak|0.328|
|dl_subf|✅ proved - incomplete|shostak|0.325|
|dl_weak_impliesb|✅ proved - incomplete|shostak|0.143|
|dl_weak_impliesd|✅ proved - incomplete|shostak|0.150|
|dl_weak_impliesbE|✅ proved - incomplete|shostak|0.171|
|dl_weak_impliesdE|✅ proved - incomplete|shostak|0.160|
|dl_differential_auxiliary_TCC1|✅ proved - complete|shostak|0.074|
|dl_differential_auxiliary|✅ proved - incomplete|shostak|6.346|
|dl_bounded_loop|✅ proved - incomplete|shostak|0.677|
|dl_loop|✅ proved - incomplete|shostak|0.386|
|dl_MbL|✅ proved - incomplete|shostak|1.560|
|dl_MbR|✅ proved - incomplete|shostak|1.559|
|dl_MdL|✅ proved - incomplete|shostak|1.513|
|dl_MdR|✅ proved - incomplete|shostak|1.314|
|dl_MEbR|✅ proved - incomplete|shostak|1.341|
|dl_MEbRA|✅ proved - incomplete|shostak|0.623|
|dl_discrete_ghost|✅ proved - incomplete|shostak|0.000|
|dl_andb|✅ proved - incomplete|shostak|0.172|
|dl_andf|✅ proved - incomplete|shostak|0.235|
|dl_orb|✅ proved - incomplete|shostak|0.341|
|dl_hide_restR|✅ proved - incomplete|shostak|0.174|
|dl_hide_restL|✅ proved - incomplete|shostak|0.180|
|dl_hide_restLR|✅ proved - incomplete|shostak|0.451|
|dl_commuteEquivR|✅ proved - incomplete|shostak|0.289|
|dl_commuteEquivL|✅ proved - incomplete|shostak|0.252|
|dl_equivifyR|✅ proved - incomplete|shostak|0.351|
|dl_dW|✅ proved - incomplete|shostak|0.270|
|dl_dinit|✅ proved - incomplete|shostak|0.368|
|dl_dI_eq|✅ proved - incomplete|shostak|5.169|
|dl_dI_neq|✅ proved - incomplete|shostak|0.000|
|dl_dI_le|✅ proved - incomplete|shostak|3.391|
|dl_dI_lt|✅ proved - incomplete|shostak|2.905|
|dl_dI_ge|✅ proved - incomplete|shostak|0.000|
|dl_dI_gt|✅ proved - incomplete|shostak|3.832|
|dl_dI_lite|✅ proved - incomplete|shostak|12.958|
|dl_dI|✅ proved - incomplete|shostak|0.000|
|dl_dI_dlTRUE_TCC1|✅ proved - complete|shostak|0.050|
|dl_dI_dlTRUE|✅ proved - incomplete|shostak|0.090|
|dl_dC|✅ proved - incomplete|shostak|0.462|
|dl_differential_ghost_TCC1|✅ proved - complete|shostak|0.066|
|dl_differential_ghost|✅ proved - incomplete|shostak|16.864|

## `more_derivative_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_derivative_props_TCC1|✅ proved - complete|shostak|0.040|
|IMP_derivative_props_TCC2|✅ proved - complete|shostak|0.030|
|deriv_linear_TCC1|✅ proved - incomplete|shostak|0.060|
|deriv_linear|✅ proved - incomplete|shostak|6.649|

## `dl_solution`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|init_zip_sol_TCC1|✅ proved - complete|shostak|0.162|
|init_zip_sol_TCC2|✅ proved - complete|shostak|0.060|
|init_zip_sol_TCC3|✅ proved - complete|shostak|0.180|
|init_zip_sol_TCC4|✅ proved - complete|shostak|0.160|
|init_zip_sol_TCC5|✅ proved - complete|shostak|0.616|
|init_zip_sol_TCC6|✅ proved - complete|shostak|0.247|
|init_zip_sol_TCC7|✅ proved - complete|shostak|0.190|
|init_zip_sol_TCC8|✅ proved - complete|shostak|0.714|
|zip_sol_test_TCC1|✅ proved - incomplete|shostak|0.180|
|zip_sol_test_TCC2|✅ proved - incomplete|shostak|0.040|
|zip_sol_test_TCC3|✅ proved - complete|shostak|0.060|
|zip_sol_test|✅ proved - incomplete|shostak|0.220|
|zs_TCC1|✅ proved - complete|shostak|0.127|
|map_inj_zs|✅ proved - complete|shostak|0.320|
|solution_domain_ax_ode_TCC1|✅ proved - incomplete|shostak|0.050|
|solution_domain_ax_ode|✅ proved - incomplete|shostak|0.000|
|dl_solution_domain_iff|✅ proved - incomplete|shostak|1.422|
|dl_solution_domain|✅ proved - incomplete|shostak|0.081|
|solution_domain_ax_TCC1|✅ proved - complete|shostak|0.060|
|solution_domain_ax_TCC2|✅ proved - complete|shostak|0.140|
|solution_domain_ax|✅ proved - incomplete|shostak|1.278|
|solution_domain_ax_lin|✅ proved - incomplete|shostak|3.823|
|solution_domain_ax_lin_val|✅ proved - incomplete|shostak|7.866|
|solution_domain_ax_quad_TCC1|✅ proved - complete|shostak|0.057|
|solution_domain_ax_quad_TCC2|✅ proved - complete|shostak|0.140|
|solution_domain_ax_quad|✅ proved - incomplete|shostak|23.174|
|in_map_test_TCC1|✅ proved - complete|shostak|0.090|
|in_map_test|✅ proved - complete|shostak|0.140|
|get_index_TCC1|✅ proved - complete|shostak|0.070|
|get_index_TCC2|✅ proved - complete|shostak|0.070|
|get_index_TCC3|✅ proved - complete|shostak|0.188|
|get_index_TCC4|✅ proved - complete|shostak|0.060|
|get_index_TCC5|✅ proved - complete|shostak|0.140|
|get_index_TCC6|✅ proved - complete|shostak|0.425|
|cnst_val_0|✅ proved - complete|shostak|0.090|
|cnst_val_com|✅ proved - complete|shostak|0.070|
|val_inj|✅ proved - complete|shostak|0.070|
|in_map_ex_TCC1|✅ proved - complete|shostak|0.071|
|in_map_ex_TCC2|✅ proved - complete|shostak|0.060|
|in_map_ex_TCC3|✅ proved - complete|shostak|0.160|
|in_map_ex_eq|✅ proved - complete|shostak|0.440|
|env_c_val|✅ proved - complete|shostak|0.050|
|get_val_cnst_id_ex_TCC1|✅ proved - complete|shostak|0.230|
|get_val_cnst_id_ex_TCC2|✅ proved - complete|shostak|0.840|
|is_val_not_in_map?_TCC1|✅ proved - complete|shostak|0.680|
|Y_sol_ex_TCC1|✅ proved - complete|shostak|0.834|
|cnst_lins_def|✅ proved - complete|shostak|1.029|
|y_sol_Ex_TCC1|✅ proved - complete|shostak|0.110|
|y_sol_Ex_TCC2|✅ proved - complete|shostak|0.457|
|y_sol_Ex_TCC3|✅ proved - complete|shostak|0.110|
|y_sol_Ex|✅ proved - incomplete|shostak|35.260|
|cnst_lins_sol_TCC1|✅ proved - incomplete|shostak|0.050|
|cnst_lins_sol|✅ proved - incomplete|shostak|40.724|
|cnst_lins_sol_u_TCC1|✅ proved - incomplete|shostak|0.060|
|cnst_lins_sol_u|✅ proved - incomplete|shostak|24.626|
|solution_domain_ax_cnst_imp_zip|✅ proved - incomplete|shostak|0.090|
|solution_domain_ax_cnst_imp_zip_no_hyp|✅ proved - incomplete|shostak|0.780|

## `top_dtl`
No formula declaration found.
## `even_more_list_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|suffix_append|✅ proved - incomplete|shostak|0.883|
|caret_suffix_TCC1|✅ proved - complete|shostak|0.040|
|caret_suffix|✅ proved - incomplete|shostak|1.040|
|rdc_cdr_TCC1|✅ proved - complete|shostak|0.050|
|rdc_cdr_TCC2|✅ proved - complete|shostak|0.040|
|rdc_cdr_TCC3|✅ proved - incomplete|shostak|0.090|
|rdc_cdr|✅ proved - incomplete|shostak|0.314|

## `ltl_expr`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cut_inf_diff_TCC1|✅ proved - incomplete|shostak|0.050|
|cut_inf_diff_TCC2|✅ proved - incomplete|shostak|0.110|
|cut_inf_diff_TCC3|✅ proved - incomplete|shostak|0.050|
|cut_inf_diff_TCC4|✅ proved - incomplete|shostak|0.110|
|cut_state_diff_TCC1|✅ proved - incomplete|shostak|0.050|
|cut_state_diff_TCC2|✅ proved - incomplete|shostak|0.067|
|cut_state_diff_TCC3|✅ proved - incomplete|shostak|0.070|
|cut_state_diff_TCC4|✅ proved - incomplete|shostak|0.100|
|cut_state_diff_TCC5|✅ proved - incomplete|shostak|0.110|
|cut_state_diff_TCC6|✅ proved - incomplete|shostak|0.080|
|cut_state_diff_TCC7|✅ proved - incomplete|shostak|0.213|
|cut_state_diff_TCC8|✅ proved - incomplete|shostak|0.050|
|cut_state_diff_TCC9|✅ proved - incomplete|shostak|0.000|
|cut_state_diff_TCC10|✅ proved - incomplete|shostak|0.360|
|cut_state_zero_TCC1|✅ proved - incomplete|shostak|0.082|
|cut_state_zero|✅ proved - incomplete|shostak|0.542|
|cut_inf_zero_TCC1|✅ proved - incomplete|shostak|0.040|
|cut_inf_zero|✅ proved - incomplete|shostak|0.320|
|ALLRUNS_eq|✅ proved - incomplete|shostak|0.101|
|SOMERUNS_eq|✅ proved - incomplete|shostak|0.100|
|DLGLOBALLY_TCC1|✅ proved - incomplete|shostak|0.078|
|DLGLOBALLY_TCC2|✅ proved - incomplete|shostak|0.070|
|DLGLOBALLY_TCC3|✅ proved - incomplete|shostak|0.070|
|DLEVENTUALLY_TCC1|✅ proved - incomplete|shostak|0.090|
|norm_implies_DLGLOBALLY|✅ proved - incomplete|shostak|0.092|
|DLEVENTUALLY_implies_norm|✅ proved - incomplete|shostak|0.080|
|DLGLOBALLY_FORALL|✅ proved - incomplete|shostak|2.832|
|DLGLOBALLY_append|✅ proved - incomplete|shostak|1.032|
|normDLGLOBALLY_append|✅ proved - incomplete|shostak|0.410|
|DLEVENTUALLY_EXISTS|✅ proved - incomplete|shostak|1.494|
|DLEVENTUALLY_append|✅ proved - incomplete|shostak|1.125|
|normDLEVENTUALLY_append|✅ proved - incomplete|shostak|0.303|
|DLGE_nth_TCC1|✅ proved - incomplete|shostak|0.060|
|DLGE_nth|✅ proved - incomplete|shostak|13.330|
|normDLGE_append|✅ proved - incomplete|shostak|3.413|
|DLEG_nth|✅ proved - incomplete|shostak|9.105|
|normDLEG_append|✅ proved - incomplete|shostak|0.000|

## `trace_semantics`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|wf_trace?_TCC1|✅ proved - incomplete|shostak|0.050|
|finite_trace?_TCC1|✅ proved - incomplete|shostak|0.060|
|wf_append|✅ proved - incomplete|shostak|0.888|
|wf_append_finite|✅ proved - incomplete|shostak|0.547|
|init_env_TCC1|✅ proved - incomplete|shostak|0.060|
|final_env_TCC1|✅ proved - incomplete|shostak|0.100|
|final_env_TCC2|✅ proved - incomplete|shostak|0.063|
|trace_semantic_rel_TCC1|✅ proved - incomplete|shostak|0.090|
|trace_semantic_rel_TCC2|✅ proved - incomplete|shostak|0.090|
|trace_semantic_rel_TCC3|✅ proved - incomplete|shostak|0.090|
|trace_semantic_rel_TCC4|✅ proved - incomplete|shostak|0.170|
|trace_semantic_rel_TCC5|✅ proved - incomplete|shostak|0.120|
|trace_semantic_rel_TCC6|✅ proved - incomplete|shostak|0.142|
|trace_semantic_rel_TCC7|✅ proved - incomplete|shostak|0.160|
|trace_semantic_rel_TCC8|✅ proved - incomplete|shostak|0.190|
|trace_semantic_rel_TCC9|✅ proved - incomplete|shostak|0.177|
|trace_semantic_rel_TCC10|✅ proved - incomplete|shostak|0.190|
|trace_semantic_rel_TCC11|✅ proved - incomplete|shostak|0.190|
|trace_semantic_rel_TCC12|✅ proved - incomplete|shostak|0.230|
|trace_semantic_rel_TCC13|✅ proved - incomplete|shostak|0.207|
|trace_semantic_rel_TCC14|✅ proved - incomplete|shostak|0.200|
|trace_semantic_rel_TCC15|✅ proved - incomplete|shostak|0.230|
|trace_semantic_rel_TCC16|✅ proved - incomplete|shostak|0.243|
|trace_semantics_correct_assign|✅ proved - incomplete|shostak|0.390|
|trace_semantics_correct_diff|✅ proved - incomplete|shostak|1.223|
|trace_semantics_correct_any|✅ proved - incomplete|shostak|0.548|
|trace_semantics_correct_test|✅ proved - incomplete|shostak|0.820|
|trace_semantics_correct_seq|✅ proved - incomplete|shostak|0.727|
|trace_semantics_correct_union|✅ proved - incomplete|shostak|0.154|
|trace_semantics_correct_star|✅ proved - incomplete|shostak|1.341|
|trace_semantics_correct|✅ proved - incomplete|shostak|0.282|
|trace_semantics_complete_assign|✅ proved - incomplete|shostak|0.542|
|trace_semantics_complete_diff|✅ proved - incomplete|shostak|1.657|
|trace_semantics_complete_any|✅ proved - incomplete|shostak|0.488|
|trace_semantics_complete_test|✅ proved - incomplete|shostak|0.366|
|trace_semantics_complete_seq|✅ proved - incomplete|shostak|0.000|
|trace_semantics_complete_union|✅ proved - incomplete|shostak|0.242|
|trace_semantics_complete_star|✅ proved - incomplete|shostak|1.587|
|trace_semantics_complete|✅ proved - incomplete|shostak|0.736|

## `solution_odes_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|diff_odes_shift_TCC1|✅ proved - incomplete|shostak|0.060|
|diff_odes_shift|✅ proved - incomplete|shostak|1.242|
|env_at_t_shift|✅ proved - complete|shostak|0.429|
|solution_odes_shift|✅ proved - incomplete|shostak|3.060|
|diff_odes_cat_hp_TCC1|✅ proved - incomplete|shostak|0.050|
|diff_odes_cat_hp_TCC2|✅ proved - incomplete|shostak|0.649|
|diff_odes_cat_hp_TCC3|✅ proved - incomplete|shostak|0.060|
|diff_odes_cat_hp_TCC4|✅ proved - incomplete|shostak|0.073|
|diff_odes_cat_hp_TCC5|✅ proved - incomplete|shostak|0.140|
|diff_odes_cat_hp|✅ proved - incomplete|shostak|4.804|
|diff_odes_cat_ci_TCC1|✅ proved - incomplete|shostak|0.050|
|diff_odes_cat_ci_TCC2|✅ proved - incomplete|shostak|0.070|
|diff_odes_cat_ci_TCC3|✅ proved - incomplete|shostak|0.091|
|diff_odes_cat_ci_TCC4|✅ proved - incomplete|shostak|0.060|
|diff_odes_cat_ci_TCC5|✅ proved - incomplete|shostak|0.070|
|diff_odes_cat_ci_TCC6|✅ proved - incomplete|shostak|0.098|
|diff_odes_cat_ci_TCC7|✅ proved - incomplete|shostak|0.160|
|diff_odes_cat_ci_TCC8|✅ proved - incomplete|shostak|0.080|
|diff_odes_cat_ci_TCC9|✅ proved - incomplete|shostak|0.180|
|diff_odes_cat_ci_TCC10|✅ proved - incomplete|shostak|0.225|
|diff_odes_cat_ci|✅ proved - incomplete|shostak|10.121|
|der_odes_cat_hp_TCC1|✅ proved - incomplete|shostak|0.148|
|der_odes_cat_hp_TCC2|✅ proved - incomplete|shostak|0.070|
|der_odes_cat_hp_TCC3|✅ proved - incomplete|shostak|0.065|
|der_odes_cat_hp_TCC4|✅ proved - incomplete|shostak|0.070|
|der_odes_cat_hp_TCC5|✅ proved - incomplete|shostak|0.290|
|der_odes_cat_hp|✅ proved - incomplete|shostak|3.948|
|der_odes_cat_ci_TCC1|✅ proved - incomplete|shostak|0.090|
|der_odes_cat_ci_TCC2|✅ proved - incomplete|shostak|0.099|
|der_odes_cat_ci_TCC3|✅ proved - incomplete|shostak|0.574|
|der_odes_cat_ci_TCC4|✅ proved - incomplete|shostak|0.320|
|der_odes_cat_ci_TCC5|✅ proved - incomplete|shostak|0.312|
|der_odes_cat_ci_TCC6|✅ proved - incomplete|shostak|0.194|
|der_odes_cat_ci_TCC7|✅ proved - incomplete|shostak|0.070|
|der_odes_cat_ci_TCC8|✅ proved - incomplete|shostak|0.074|
|der_odes_cat_ci_TCC9|✅ proved - incomplete|shostak|0.210|
|der_odes_cat_ci_TCC10|✅ proved - incomplete|shostak|0.086|
|der_odes_cat_ci_TCC11|✅ proved - incomplete|shostak|0.090|
|der_odes_cat_ci|✅ proved - incomplete|shostak|16.903|
|solution_odes_deriv_at_T_hp_TCC1|✅ proved - incomplete|shostak|0.050|
|solution_odes_deriv_at_T_hp_TCC2|✅ proved - incomplete|shostak|0.086|
|solution_odes_deriv_at_T_hp_TCC3|✅ proved - incomplete|shostak|0.060|
|solution_odes_deriv_at_T_hp_TCC4|✅ proved - incomplete|shostak|0.060|
|solution_odes_deriv_at_T_hp_TCC5|✅ proved - incomplete|shostak|0.179|
|solution_odes_deriv_at_T_hp|✅ proved - incomplete|shostak|0.200|
|solution_odes_deriv_at_T_ci_TCC1|✅ proved - incomplete|shostak|0.065|
|solution_odes_deriv_at_T_ci_TCC2|✅ proved - incomplete|shostak|0.090|
|solution_odes_deriv_at_T_ci_TCC3|✅ proved - incomplete|shostak|0.070|
|solution_odes_deriv_at_T_ci_TCC4|✅ proved - incomplete|shostak|0.070|
|solution_odes_deriv_at_T_ci_TCC5|✅ proved - incomplete|shostak|0.180|
|solution_odes_deriv_at_T_ci_TCC6|✅ proved - incomplete|shostak|0.092|
|solution_odes_deriv_at_T_ci_TCC7|✅ proved - incomplete|shostak|0.090|
|solution_odes_deriv_at_T_ci|✅ proved - incomplete|shostak|0.210|
|solution_odes_hp_conc|✅ proved - incomplete|shostak|0.940|
|solution_odes_ci_conc_TCC1|✅ proved - incomplete|shostak|0.244|
|solution_odes_ci_conc|✅ proved - incomplete|shostak|1.835|
|solution_odes_u_shift|✅ proved - incomplete|shostak|1.267|
|solution_odes_u_init|✅ proved - incomplete|shostak|0.762|

## `temporal_logic`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|norm_DLGLOBALLY|✅ proved - incomplete|shostak|0.070|
|norm_DLEVENTUALLY|✅ proved - incomplete|shostak|0.060|
|norm_DLGE|✅ proved - incomplete|shostak|5.079|
|norm_DLEG|✅ proved - incomplete|shostak|0.000|
|dltl_SEQcap|✅ proved - incomplete|shostak|0.818|
|dltl_SEQcap_con|✅ proved - incomplete|shostak|0.516|
|dltl_SEQcap_dual|✅ proved - incomplete|shostak|1.571|
|dltl_SEQcup|✅ proved - incomplete|shostak|1.936|
|dltl_SEQcup_dual|✅ proved - incomplete|shostak|1.064|
|dltl_SEQcup_dual_con|✅ proved - incomplete|shostak|0.983|
|dltl_SEQtriangleEG|✅ proved - incomplete|shostak|7.525|
|dltl_SEQtriangleGE|✅ proved - incomplete|shostak|7.335|
|dltl_SEQEG_dual|✅ proved - incomplete|shostak|3.265|
|dltl_SEQGE_dual|✅ proved - incomplete|shostak|0.000|
|dltl_choice|✅ proved - incomplete|shostak|0.302|
|dltl_choice_st|✅ proved - incomplete|shostak|0.245|
|dltl_choice_dual|✅ proved - incomplete|shostak|0.178|
|dltl_choice_st_dual|✅ proved - incomplete|shostak|0.186|
|dltl_TESTcap_eq|✅ proved - incomplete|shostak|0.561|
|dltl_TESTcap_eq_dual|✅ proved - incomplete|shostak|0.598|
|dltl_TESTcup_eq|✅ proved - incomplete|shostak|0.575|
|dltl_TESTcup_eq_dual|✅ proved - incomplete|shostak|0.570|
|dltl_TESTEG_eq|✅ proved - incomplete|shostak|0.459|
|dltl_TESTEG_eq_dual|✅ proved - incomplete|shostak|0.482|
|dltl_TESTGE_eq|✅ proved - incomplete|shostak|0.450|
|dltl_TESTGE_eq_dual|✅ proved - incomplete|shostak|0.411|
|dltl_ASSIGNcap|✅ proved - incomplete|shostak|1.648|
|dltl_ASSIGNcap_dual|✅ proved - incomplete|shostak|0.869|
|dltl_ASSIGNcup|✅ proved - incomplete|shostak|0.618|
|dltl_ASSIGNcup_dual|✅ proved - incomplete|shostak|1.187|
|dltl_ASSIGNEG|✅ proved - incomplete|shostak|0.300|
|dltl_ASSIGNGE|✅ proved - incomplete|shostak|0.300|
|dltl_ASSIGNEG_dual|✅ proved - incomplete|shostak|0.272|
|dltl_ASSIGNGE_dual|✅ proved - incomplete|shostak|0.270|
|dltl_DIFFcap|✅ proved - incomplete|shostak|2.419|
|dltl_DIFFcap_eq|✅ proved - incomplete|shostak|1.448|
|dltl_DIFFcap_eq_dual_TCC1|✅ proved - incomplete|shostak|0.058|
|dltl_DIFFcap_eq_dual|✅ proved - incomplete|shostak|6.734|
|dltl_DIFFcup_eq|✅ proved - incomplete|shostak|0.000|
|dltl_DIFFcup_dual|✅ proved - incomplete|shostak|2.567|
|dltl_DIFFcup_dual_eq|✅ proved - incomplete|shostak|1.961|
|dltl_DIFFEG_eq|✅ proved - incomplete|shostak|1.561|
|dltl_DIFFEG_dual_eq|✅ proved - incomplete|shostak|8.935|
|dltl_DIFFGE_eq|✅ proved - incomplete|shostak|0.000|
|dltl_DIFFGE_dual_eq|✅ proved - incomplete|shostak|8.284|
|dltl_BSTARcap_eq|✅ proved - incomplete|shostak|10.807|
|dltl_STARcap_eq|✅ proved - incomplete|shostak|0.194|
|dltl_STARcup_dual|✅ proved - incomplete|shostak|0.000|
|dltl_STARcup|✅ proved - incomplete|shostak|1.537|
|dltl_STARcap_dual|✅ proved - incomplete|shostak|1.393|
|dltl_BSTARindcup|✅ proved - incomplete|shostak|2.497|
|dltl_STARindcup|✅ proved - incomplete|shostak|0.275|
|dltl_BSTAREG_dual|✅ proved - incomplete|shostak|8.003|
|dltl_BSTARGE_dual|✅ proved - incomplete|shostak|0.000|
|dltl_STAREG_dual|✅ proved - incomplete|shostak|1.346|
|dltl_STARGE_dual|✅ proved - incomplete|shostak|1.181|
|dltl_STAREG|✅ proved - incomplete|shostak|2.417|
|dltl_STARGE|✅ proved - incomplete|shostak|2.352|
|dltl_STARconcap|✅ proved - incomplete|shostak|0.000|
|ALLRUNS_st_imp|✅ proved - incomplete|shostak|0.073|
|ALLRUNS_st_finite_equiv|✅ proved - incomplete|shostak|0.060|

## `trace_bounded_star_semantics`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|trace_semantic_rel_bounded_star_TCC1|✅ proved - complete|shostak|0.040|
|trace_semantic_rel_bounded_star_TCC2|✅ proved - incomplete|shostak|0.100|
|trace_semantic_rel_bounded_star_TCC3|✅ proved - incomplete|shostak|0.132|
|trace_semantic_rel_bounded_star_TCC4|✅ proved - incomplete|shostak|0.140|
|trace_semantic_rel_bounded_star_TCC5|✅ proved - incomplete|shostak|0.204|
|trace_semantic_rel_bounded_star_TCC6|✅ proved - incomplete|shostak|0.110|
|trace_semantic_rel_bounded_star_TCC7|✅ proved - incomplete|shostak|0.130|
|trace_semantic_rel_bounded_star_TCC8|✅ proved - incomplete|shostak|0.090|
|trace_semantic_rel_bounded_star_TCC9|✅ proved - incomplete|shostak|0.085|
|trace_semantic_rel_bounded_star_inc|✅ proved - incomplete|shostak|1.267|
|trace_semantic_rel_implies_bounded|✅ proved - incomplete|shostak|0.884|
|bounded_implies_trace_semantic_rel|✅ proved - incomplete|shostak|1.340|
|trace_semantic_rel_bstar_reflexive|✅ proved - incomplete|shostak|0.198|
|trace_semantic_rel_bounded_bstar_trace_semantic_rel_bstar|✅ proved - incomplete|shostak|0.618|
|trace_semantic_rel_star_bounded_star|✅ proved - incomplete|shostak|0.060|
|trace_semantic_rel_star_bounded_star_con|✅ proved - incomplete|shostak|0.612|
|allruns_st_star|✅ proved - incomplete|shostak|0.100|
|someruns_st_star|✅ proved - incomplete|shostak|0.102|
|allruns_tr_star|✅ proved - incomplete|shostak|0.100|
|someruns_tr_star|✅ proved - incomplete|shostak|0.092|
|trace_semantic_rel_star_seq|✅ proved - incomplete|shostak|0.180|
|trace_semantic_rel_bounded_star_seq_switch_glob|✅ proved - incomplete|shostak|10.313|
|trace_semantic_rel_bounded_star_seq_switch_even|✅ proved - incomplete|shostak|0.000|
|trace_semantic_rel_bounded_star_seq_switch_ge|✅ proved - incomplete|shostak|7.444|
|trace_semantic_rel_bounded_star_seq_switch_eg|✅ proved - incomplete|shostak|7.465|
|trace_semantic_rel_bounded_star_seq_switch_glob_con|✅ proved - incomplete|shostak|6.155|
|trace_semantic_rel_bounded_star_seq_switch_ge_con|✅ proved - incomplete|shostak|4.235|
|trace_semantic_rel_bounded_star_seq_switch_eg_con|✅ proved - incomplete|shostak|0.000|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib/pvsio_utils/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230712-static-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230710-tcc-gen.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230707-defattach.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230706-extrategies.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`|
