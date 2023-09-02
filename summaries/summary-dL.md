# Summary for `dL`
Run started at 23:19:24 9/1/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **833**   | **833**    | **833**    | **0**  | **11:38.233 s**   |
|top|0|0|0|0|0.000|
|hp_def|24|24|24|0|5.376|
|hp_expr|32|32|32|0|3.709|
|bounded_star_semantics|23|23|23|0|4.716|
|bool_expr|36|36|36|0|3.846|
|bound_variables_def|17|17|17|0|2.519|
|hp_props|19|19|19|0|11.655|
|substitution|58|58|58|0|10.547|
|ODEs_equiv|103|103|103|0|38.423|
|differentiation|120|120|120|0|1:4.169|
|chain_rule_re|134|134|134|0|1:36.879|
|diff_re_props|15|15|15|0|2:46.087|
|continuity_re_def|1|1|1|0|0.040|
|continuity_props|14|14|14|0|5.512|
|continuity_re_props|8|8|8|0|6.278|
|fresh_props|32|32|32|0|14.918|
|dynamic_logic|136|136|136|0|1:15.998|
|more_derivative_props|4|4|4|0|6.856|
|dl_solution|57|57|57|0|3:0.705|
## Detailed Summary 
## `top`
No formula declaration found.
## `hp_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|mapexpr_inj_TCC1|✅ proved - complete|shostak|0.180|
|mapexpr_inj_TCC2|✅ proved - complete|shostak|0.100|
|mapexpr_inj_cons|✅ proved - complete|shostak|0.241|
|mapexpr_inj_eq|✅ proved - complete|shostak|0.160|
|null_MapExprInj|✅ proved - complete|shostak|0.110|
|cdr_is_MapExprInj|✅ proved - complete|shostak|0.201|
|sub_mapexpr_inj_is_mapexpr_inj|✅ proved - incomplete|shostak|0.170|
|in_map_cons|✅ proved - complete|shostak|0.180|
|in_map_null_false|✅ proved - complete|shostak|0.060|
|not_in_map_null|✅ proved - complete|shostak|0.050|
|index_of_j|✅ proved - complete|shostak|0.080|
|expr_car_TCC1|✅ proved - complete|shostak|0.080|
|expr_car|✅ proved - complete|shostak|0.158|
|expr_not_car_TCC1|✅ proved - complete|shostak|0.110|
|expr_not_car|✅ proved - complete|shostak|0.279|
|max_var_rec_TCC1|✅ proved - complete|shostak|0.050|
|max_var_rec_TCC2|✅ proved - complete|shostak|0.040|
|max_var_rec_TCC3|✅ proved - complete|shostak|0.080|
|max_var_rec_pull|✅ proved - complete|shostak|0.487|
|max_var_max|✅ proved - complete|shostak|0.374|
|max_var_exist|✅ proved - complete|shostak|1.487|
|pigeon_map|✅ proved - complete|shostak|0.356|
|max_var_length|✅ proved - complete|shostak|0.207|
|nip_max_var|✅ proved - complete|shostak|0.136|

## `hp_expr`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_table_of_integrals_TCC1|✅ proved - complete|shostak|0.040|
|IMP_table_of_integrals_TCC2|✅ proved - incomplete|shostak|0.030|
|size_TCC1|✅ proved - incomplete|shostak|0.090|
|size_TCC2|✅ proved - incomplete|shostak|0.065|
|size_TCC3|✅ proved - incomplete|shostak|0.060|
|size_TCC4|✅ proved - incomplete|shostak|0.060|
|size_TCC5|✅ proved - incomplete|shostak|0.060|
|dd?_TCC1|✅ proved - incomplete|shostak|0.030|
|dd_deriv_domain|✅ proved - incomplete|shostak|0.184|
|dd_noe|✅ proved - incomplete|shostak|0.070|
|dd_con|✅ proved - incomplete|shostak|0.080|
|dd_ne|✅ proved - incomplete|shostak|0.063|
|dd_ci_TCC1|✅ proved - incomplete|shostak|0.050|
|dd_ci|✅ proved - incomplete|shostak|0.060|
|derivable_odes?_TCC1|✅ proved - incomplete|shostak|0.040|
|derivable_odes?_TCC2|✅ proved - incomplete|shostak|0.080|
|env_at_t_TCC1|✅ proved - incomplete|shostak|0.069|
|env_at_t_TCC2|✅ proved - incomplete|shostak|0.566|
|sol_at_t?_TCC1|✅ proved - incomplete|shostak|0.591|
|semantic_rel_TCC1|✅ proved - incomplete|shostak|0.064|
|semantic_rel_TCC2|✅ proved - incomplete|shostak|0.110|
|semantic_rel_TCC3|✅ proved - incomplete|shostak|0.120|
|semantic_rel_TCC4|✅ proved - incomplete|shostak|0.120|
|fresh_li?_TCC1|✅ proved - incomplete|shostak|0.050|
|fresh_li?_TCC2|✅ proved - incomplete|shostak|0.044|
|fresh_assign_nth|✅ proved - incomplete|shostak|0.250|
|fresh_mapexpr_inj|✅ proved - incomplete|shostak|0.224|
|fresh_mapexp_nth_2|✅ proved - incomplete|shostak|0.203|
|fresh_hp?_TCC1|✅ proved - incomplete|shostak|0.050|
|fresh_hp?_TCC2|✅ proved - incomplete|shostak|0.060|
|fresh_hp?_TCC3|✅ proved - incomplete|shostak|0.066|
|fresh_hp?_TCC4|✅ proved - incomplete|shostak|0.060|

## `bounded_star_semantics`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|semantic_rel_bounded_star_TCC1|✅ proved - complete|shostak|0.030|
|semantic_rel_bounded_star_TCC2|✅ proved - incomplete|shostak|0.070|
|semantic_rel_bounded_star_TCC3|✅ proved - complete|shostak|0.070|
|semantic_rel_bounded_star_TCC4|✅ proved - complete|shostak|0.080|
|semantic_rel_bounded_star_TCC5|✅ proved - complete|shostak|0.073|
|semantic_rel_bounded_star_TCC6|✅ proved - complete|shostak|0.080|
|semantic_rel_bounded_star_TCC7|✅ proved - incomplete|shostak|0.110|
|semantic_rel_bounded_star_TCC8|✅ proved - incomplete|shostak|0.090|
|semantic_rel_bounded_star_inc|✅ proved - incomplete|shostak|0.825|
|semantic_rel_implies_bounded|✅ proved - incomplete|shostak|0.576|
|bounded_implies_semantic_rel|✅ proved - incomplete|shostak|0.603|
|BSTAR_TCC1|✅ proved - complete|shostak|0.050|
|BSTAR_TCC2|✅ proved - complete|shostak|0.030|
|semantic_rel_bstar_reflexive|✅ proved - incomplete|shostak|0.098|
|semantic_rel_bounded_bstar_semantic_rel_bstar|✅ proved - incomplete|shostak|0.177|
|semantic_rel_star_bounded_star|✅ proved - incomplete|shostak|0.050|
|semantic_rel_star_bounded_star_con|✅ proved - incomplete|shostak|0.170|
|semantic_rel_bounded_star_seq_switch|✅ proved - incomplete|shostak|0.828|
|semantic_rel_star_seq_switch|✅ proved - incomplete|shostak|0.287|
|semantic_rel_bounded_star_iter|✅ proved - incomplete|shostak|0.100|
|semantic_rel_bounded_star_iter_con_TCC1|✅ proved - incomplete|shostak|0.070|
|semantic_rel_bounded_star_iter_con|✅ proved - incomplete|shostak|0.120|
|semantic_rel_star_iter|✅ proved - incomplete|shostak|0.129|

## `bool_expr`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|fresh?_TCC1|✅ proved - complete|shostak|0.040|
|fresh?_TCC2|✅ proved - complete|shostak|0.060|
|fresh_formula_nth|✅ proved - complete|shostak|0.151|
|fresh_be_invar|✅ proved - complete|shostak|0.204|
|dl_not_not|✅ proved - complete|shostak|0.050|
|dl_not_true|✅ proved - complete|shostak|0.050|
|dl_not_false|✅ proved - complete|shostak|0.040|
|dl_true_and|✅ proved - complete|shostak|0.050|
|dl_and_true|✅ proved - complete|shostak|0.047|
|dl_false_and|✅ proved - complete|shostak|0.050|
|dl_and_false|✅ proved - complete|shostak|0.040|
|dl_true_or|✅ proved - complete|shostak|0.050|
|dl_or_true|✅ proved - complete|shostak|0.050|
|dl_false_or|✅ proved - complete|shostak|0.040|
|dl_or_false|✅ proved - complete|shostak|0.040|
|dl_true_implies|✅ proved - complete|shostak|0.055|
|dl_implies_true|✅ proved - complete|shostak|0.050|
|dl_false_implies|✅ proved - complete|shostak|0.040|
|dl_implies_false|✅ proved - complete|shostak|0.050|
|dl_forall_bool|✅ proved - complete|shostak|0.050|
|dl_exists_bool|✅ proved - complete|shostak|0.050|
|nqb_to_be_TCC1|✅ proved - complete|shostak|0.060|
|nqb_to_be_TCC2|✅ proved - complete|shostak|0.051|
|nqb_to_be_TCC3|✅ proved - complete|shostak|0.050|
|nqb_to_be_TCC4|✅ proved - complete|shostak|0.050|
|nqb_to_be_TCC5|✅ proved - complete|shostak|0.040|
|nqb_normal?_TCC1|✅ proved - complete|shostak|0.040|
|nqb_normal?_TCC2|✅ proved - complete|shostak|0.040|
|normalize_rec_TCC1|✅ proved - complete|shostak|0.060|
|normalize_rec_TCC2|✅ proved - complete|shostak|0.230|
|normalize_rec_TCC3|✅ proved - complete|shostak|0.947|
|normalize_rec_TCC4|✅ proved - complete|shostak|0.199|
|normalize_rec_TCC5|✅ proved - complete|shostak|0.480|
|normalize_rec_TCC6|✅ proved - complete|shostak|0.200|
|normalize_rec_TCC7|✅ proved - complete|shostak|0.102|
|normalize_TCC1|✅ proved - complete|shostak|0.040|

## `bound_variables_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|bv_me_TCC1|✅ proved - complete|shostak|0.040|
|bv_me_TCC2|✅ proved - complete|shostak|0.050|
|bv_me_TCC3|✅ proved - complete|shostak|0.040|
|bv_me_TCC4|✅ proved - complete|shostak|0.110|
|bv_me_TCC5|✅ proved - incomplete|shostak|0.056|
|BV_TCC1|✅ proved - complete|shostak|0.030|
|BV_TCC2|✅ proved - complete|shostak|0.130|
|BV_TCC3|✅ proved - complete|shostak|0.130|
|BV_TCC4|✅ proved - complete|shostak|0.100|
|BV_TCC5|✅ proved - incomplete|shostak|0.070|
|bv_me_nth_TCC1|✅ proved - incomplete|shostak|0.195|
|bv_me_nth|✅ proved - incomplete|shostak|0.344|
|BV_implies_not_fresh|✅ proved - incomplete|shostak|0.983|
|BV_invar|✅ proved - incomplete|shostak|0.000|
|bvs?_TCC1|✅ proved - complete|shostak|0.060|
|bvs?_TCC2|✅ proved - incomplete|shostak|0.041|
|bvs?_TCC3|✅ proved - incomplete|shostak|0.140|

## `hp_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|assign1_prop_TCC1|✅ proved - complete|shostak|0.070|
|assign1_prop|✅ proved - incomplete|shostak|0.302|
|assign_prop_TCC1|✅ proved - complete|shostak|0.084|
|assign_prop|✅ proved - incomplete|shostak|0.479|
|assign_comm_TCC1|✅ proved - complete|shostak|0.110|
|assign_comm|✅ proved - incomplete|shostak|0.295|
|union_prop_TCC1|✅ proved - incomplete|shostak|0.150|
|union_prop|✅ proved - incomplete|shostak|0.267|
|union_prop_xx|✅ proved - incomplete|shostak|0.048|
|union_id|✅ proved - incomplete|shostak|0.060|
|union_comm|✅ proved - incomplete|shostak|0.227|
|seq_prop|✅ proved - incomplete|shostak|0.679|
|test_prop|✅ proved - incomplete|shostak|0.067|
|diff_prop_TCC1|✅ proved - incomplete|shostak|0.200|
|diff_prop|✅ proved - incomplete|shostak|6.882|
|star_prop_imp_TCC1|✅ proved - complete|shostak|0.080|
|star_prop_imp|✅ proved - incomplete|shostak|0.385|
|star2_prop_imp_TCC1|✅ proved - complete|shostak|0.070|
|star2_prop_imp|✅ proved - incomplete|shostak|1.200|

## `substitution`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|assign_env_TCC1|✅ proved - complete|shostak|0.070|
|assign_env_TCC2|✅ proved - complete|shostak|0.040|
|assign_env_TCC3|✅ proved - complete|shostak|0.128|
|assign_env_TCC4|✅ proved - complete|shostak|0.050|
|SUB_MapExpr_TCC1|✅ proved - complete|shostak|0.060|
|SUB_MapExpr_TCC2|✅ proved - complete|shostak|0.070|
|SUB_MapExpr_TCC3|✅ proved - complete|shostak|0.070|
|SUB_MapExpr_TCC4|✅ proved - complete|shostak|0.161|
|SUB_MapExpr_TCC5|✅ proved - complete|shostak|1.107|
|assign_env__TCC1|✅ proved - incomplete|shostak|0.090|
|assign_env__TCC2|✅ proved - incomplete|shostak|0.060|
|assign_env__alt_j_TCC1|✅ proved - complete|shostak|0.048|
|assign_env__alt_j_TCC2|✅ proved - complete|shostak|0.040|
|assign_env__alt_j_TCC3|✅ proved - incomplete|shostak|0.110|
|assign_env__alt_j_TCC4|✅ proved - incomplete|shostak|0.664|
|assign_env__alt_j_TCC5|✅ proved - incomplete|shostak|0.828|
|assign_env_phantom_eq_TCC1|✅ proved - complete|shostak|0.040|
|assign_env_phantom_eq|✅ proved - incomplete|shostak|0.651|
|assign_env_alt|✅ proved - incomplete|shostak|0.156|
|assign_env_ext|✅ proved - complete|shostak|0.363|
|assign_sub_ext|✅ proved - complete|shostak|0.046|
|SUB_MapVar_TCC1|✅ proved - complete|shostak|0.060|
|SUB_MapVar_TCC2|✅ proved - complete|shostak|0.160|
|SUB_MapVar_TCC3|✅ proved - complete|shostak|0.050|
|SUB_MapVar_TCC4|✅ proved - complete|shostak|0.124|
|SUB_MapVar_TCC5|✅ proved - complete|shostak|0.160|
|dl_subre_val|✅ proved - complete|shostak|0.060|
|dl_subre_const|✅ proved - complete|shostak|0.057|
|dl_subre_plus|✅ proved - complete|shostak|0.100|
|dl_subre_minus|✅ proved - complete|shostak|0.080|
|dl_subre_neg|✅ proved - complete|shostak|0.070|
|dl_subre_prod|✅ proved - complete|shostak|0.100|
|dl_subre_prod_scal1|✅ proved - complete|shostak|0.096|
|dl_subre_prod_scal2|✅ proved - complete|shostak|0.100|
|dl_subre_exp|✅ proved - incomplete|shostak|0.140|
|dl_sub_bool|✅ proved - complete|shostak|0.070|
|dl_sub_bool_restricted|✅ proved - complete|shostak|0.063|
|dl_sub_and|✅ proved - complete|shostak|0.060|
|dl_sub_or|✅ proved - complete|shostak|0.070|
|dl_sub_not|✅ proved - complete|shostak|0.060|
|dl_sub_implies|✅ proved - complete|shostak|0.071|
|dl_sub_ge|✅ proved - complete|shostak|0.080|
|dl_sub_gt|✅ proved - complete|shostak|0.070|
|dl_sub_le|✅ proved - complete|shostak|0.070|
|dl_sub_lt|✅ proved - complete|shostak|0.080|
|dl_sub_eq|✅ proved - complete|shostak|0.070|
|dl_sub_neq|✅ proved - complete|shostak|0.070|
|dl_sub_iff|✅ proved - complete|shostak|0.080|
|dl_sub_allruns0_x_neq_y_TCC1|✅ proved - incomplete|shostak|0.140|
|dl_sub_allruns0_x_neq_y_TCC2|✅ proved - incomplete|shostak|0.000|
|dl_sub_allruns0_x_neq_y_TCC3|✅ proved - complete|shostak|0.200|
|dl_sub_allruns0_x_neq_y_TCC4|✅ proved - incomplete|shostak|0.185|
|dl_sub_allruns0_x_neq_y|✅ proved - incomplete|shostak|1.985|
|dl_sub_allruns_assign0_x_eq_y_TCC1|✅ proved - incomplete|shostak|0.180|
|dl_sub_allruns_assign0_x_eq_y_TCC2|✅ proved - incomplete|shostak|0.164|
|dl_sub_allruns_assign0_x_eq_y|✅ proved - incomplete|shostak|0.435|
|dl_sub_forall|✅ proved - complete|shostak|0.070|
|dl_sub_exists|✅ proved - complete|shostak|0.065|

## `ODEs_equiv`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Re_TCC1|✅ proved - incomplete|shostak|0.090|
|Re_TCC2|✅ proved - complete|shostak|0.070|
|Re_TCC3|✅ proved - complete|shostak|0.050|
|Re_TCC4|✅ proved - complete|shostak|0.100|
|Re_TCC5|✅ proved - incomplete|shostak|0.239|
|Re_TCC6|✅ proved - complete|shostak|0.060|
|Re_nth_TCC1|✅ proved - incomplete|shostak|0.080|
|Re_nth|✅ proved - incomplete|shostak|0.302|
|env_vec_TCC1|✅ proved - complete|shostak|0.053|
|env_vec_TCC2|✅ proved - complete|shostak|0.140|
|env_vec_TCC3|✅ proved - incomplete|shostak|0.190|
|env_vec_nth_TCC1|✅ proved - incomplete|shostak|0.080|
|env_vec_nth|✅ proved - incomplete|shostak|0.362|
|r2v_2_fs_TCC1|✅ proved - complete|shostak|0.079|
|r2v_2_fs_TCC2|✅ proved - incomplete|shostak|0.050|
|r2v_2_fs_TCC3|✅ proved - incomplete|shostak|0.050|
|r2v_2_fs_TCC4|✅ proved - incomplete|shostak|0.493|
|r2v_2_fs_TCC5|✅ proved - incomplete|shostak|0.080|
|fs_2_r2v_TCC1|✅ proved - incomplete|shostak|0.040|
|fs_2_r2v_TCC2|✅ proved - incomplete|shostak|0.060|
|fs_2_r2v_TCC3|✅ proved - incomplete|shostak|0.057|
|fs_2_r2v_TCC4|✅ proved - incomplete|shostak|0.040|
|fs_2_r2v_TCC5|✅ proved - incomplete|shostak|0.080|
|fs_2_r2v_TCC6|✅ proved - incomplete|shostak|0.040|
|fs_2_r2v_TCC7|✅ proved - incomplete|shostak|0.040|
|fs_2_r2v_TCC8|✅ proved - incomplete|shostak|0.090|
|fs_2_r2v_TCC9|✅ proved - incomplete|shostak|0.395|
|fs_2_f2v_nth_TCC1|✅ proved - incomplete|shostak|0.080|
|fs_2_f2v_nth|✅ proved - incomplete|shostak|0.498|
|fs_2_f2v_eq_TCC1|✅ proved - incomplete|shostak|0.040|
|fs_2_f2v_eq_TCC2|✅ proved - incomplete|shostak|0.068|
|fs_2_f2v_eq_TCC3|✅ proved - incomplete|shostak|0.090|
|fs_2_f2v_eq_TCC4|✅ proved - incomplete|shostak|0.070|
|fs_2_f2v_eq_TCC5|✅ proved - incomplete|shostak|0.050|
|fs_2_f2v_eq_TCC6|✅ proved - incomplete|shostak|0.276|
|fs_2_f2v_eq|✅ proved - incomplete|shostak|2.426|
|Odes_f_TCC1|✅ proved - incomplete|shostak|0.050|
|cont_f?_TCC1|✅ proved - incomplete|shostak|0.070|
|cont_f?_TCC2|✅ proved - incomplete|shostak|0.060|
|cont_f?_TCC3|✅ proved - incomplete|shostak|0.070|
|cont_f?_TCC4|✅ proved - incomplete|shostak|0.200|
|cont_f?_TCC5|✅ proved - incomplete|shostak|0.131|
|cont_f?_TCC6|✅ proved - incomplete|shostak|0.070|
|max_diff_TCC1|✅ proved - incomplete|shostak|0.040|
|max_diff_TCC2|✅ proved - incomplete|shostak|0.149|
|max_diff_TCC3|✅ proved - incomplete|shostak|0.060|
|max_diff_TCC4|✅ proved - incomplete|shostak|0.040|
|max_diff_TCC5|✅ proved - incomplete|shostak|0.160|
|max_diff_TCC6|✅ proved - incomplete|shostak|0.210|
|max_diff_TCC7|✅ proved - incomplete|shostak|0.080|
|max_diff_TCC8|✅ proved - incomplete|shostak|0.040|
|max_diff_TCC9|✅ proved - incomplete|shostak|1.147|
|max_diff_norm_inf_TCC1|✅ proved - incomplete|shostak|0.050|
|max_diff_norm_inf_TCC2|✅ proved - incomplete|shostak|0.080|
|max_diff_norm_inf_TCC3|✅ proved - incomplete|shostak|0.050|
|max_diff_norm_inf_TCC4|✅ proved - incomplete|shostak|0.077|
|max_diff_norm_inf_TCC5|✅ proved - incomplete|shostak|0.120|
|max_diff_norm_inf|✅ proved - incomplete|shostak|3.649|
|cdr_TCC1|✅ proved - incomplete|shostak|0.050|
|cdr_TCC2|✅ proved - incomplete|shostak|0.050|
|cdr_const_TCC1|✅ proved - incomplete|shostak|0.040|
|cdr_const|✅ proved - incomplete|shostak|0.180|
|Lip_ODEs?_TCC1|✅ proved - incomplete|shostak|0.060|
|Lip_ODEs?_TCC2|✅ proved - incomplete|shostak|0.111|
|Lip_ODEs?_TCC3|✅ proved - incomplete|shostak|0.160|
|Lip_ODEs?_TCC4|✅ proved - incomplete|shostak|0.108|
|Lip_DDL_ODEs|✅ proved - incomplete|shostak|3.137|
|cont_DDL_ODEs|✅ proved - incomplete|shostak|0.000|
|diff_sol_Lip_TCC1|✅ proved - incomplete|shostak|0.569|
|diff_sol_Lip_TCC2|✅ proved - incomplete|shostak|0.057|
|diff_sol_Lip|✅ proved - incomplete|shostak|8.334|
|diff_sol_eq_TCC1|✅ proved - incomplete|shostak|0.136|
|diff_sol_eq_TCC2|✅ proved - incomplete|shostak|0.050|
|diff_sol_eq|✅ proved - incomplete|shostak|0.060|
|fs_sol_TCC1|✅ proved - incomplete|shostak|0.090|
|ODEs_s_sub_TCC1|✅ proved - incomplete|shostak|0.664|
|ODEs_s_sub_TCC2|✅ proved - incomplete|shostak|0.097|
|ODEs_s_sub|✅ proved - incomplete|shostak|0.773|
|fs_sol_sub_TCC1|✅ proved - incomplete|shostak|0.072|
|fs_sol_sub_TCC2|✅ proved - incomplete|shostak|0.080|
|fs_sol_sub_TCC3|✅ proved - incomplete|shostak|0.062|
|fs_sol_sub|✅ proved - incomplete|shostak|0.190|
|env_sol_sub_TCC1|✅ proved - incomplete|shostak|0.677|
|env_sol_sub_TCC2|✅ proved - incomplete|shostak|0.000|
|env_sol_sub_TCC3|✅ proved - incomplete|shostak|0.078|
|env_sol_sub_TCC4|✅ proved - incomplete|shostak|0.060|
|env_sol_sub|✅ proved - incomplete|shostak|0.317|
|solution_odes_sub|✅ proved - incomplete|shostak|0.320|
|solution_odes_subset|✅ proved - incomplete|shostak|0.100|
|odes_hp_s_TCC1|✅ proved - incomplete|shostak|0.040|
|odes_hp_s_TCC2|✅ proved - incomplete|shostak|0.060|
|odes_hp_s_TCC3|✅ proved - incomplete|shostak|0.347|
|odes_hp_s|✅ proved - incomplete|shostak|0.365|
|fs_sol_hp_TCC1|✅ proved - incomplete|shostak|0.325|
|fs_sol_hp_TCC2|✅ proved - incomplete|shostak|0.384|
|fs_sol_hp_TCC3|✅ proved - incomplete|shostak|0.215|
|fs_sol_hp_TCC4|✅ proved - incomplete|shostak|0.390|
|fs_sol_hp_TCC5|✅ proved - incomplete|shostak|0.459|
|fs_sol_hp_fs_TCC1|✅ proved - incomplete|shostak|0.060|
|fs_sol_hp_fs|✅ proved - incomplete|shostak|0.404|
|fs_sol_hp_sol|✅ proved - incomplete|shostak|2.640|
|fs_sol_hp_sol_u|✅ proved - incomplete|shostak|1.102|
|diff_sol_eq_dd|✅ proved - incomplete|shostak|1.339|

## `differentiation`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_derivatives_TCC1|✅ proved - incomplete|shostak|0.030|
|IMP_derivatives_TCC2|✅ proved - incomplete|shostak|0.050|
|right_dd_i|✅ proved - incomplete|shostak|0.220|
|right_dd|✅ proved - incomplete|shostak|0.050|
|connection_proj|✅ proved - incomplete|shostak|0.101|
|right_ne_i|✅ proved - incomplete|shostak|0.200|
|right_ne|✅ proved - incomplete|shostak|0.050|
|ddl_dom_upto|✅ proved - incomplete|shostak|0.048|
|ddl_dom_weak|✅ proved - incomplete|shostak|0.060|
|ddl_dom_dd|✅ proved - incomplete|shostak|0.729|
|ddl_dom__upto_dd|✅ proved - incomplete|shostak|0.050|
|ddl_dom_noe|✅ proved - incomplete|shostak|0.050|
|dl_true_DDL|✅ proved - incomplete|shostak|0.167|
|dl_true_up_DDL|✅ proved - incomplete|shostak|0.150|
|derivable?_TCC1|✅ proved - incomplete|shostak|0.117|
|derivable?_TCC2|✅ proved - incomplete|shostak|0.050|
|derivable?_TCC3|✅ proved - incomplete|shostak|0.050|
|derivable_up?_TCC1|✅ proved - incomplete|shostak|0.050|
|derivable?_TCC4|✅ proved - incomplete|shostak|0.080|
|hathat_diff_real_TCC1|✅ proved - incomplete|shostak|0.046|
|hathat_diff_real_TCC2|✅ proved - incomplete|shostak|1.341|
|hathat_diff_real_TCC3|✅ proved - incomplete|shostak|0.140|
|hathat_diff_real|✅ proved - incomplete|shostak|0.190|
|expt_TCC1|✅ proved - incomplete|shostak|0.050|
|expt_TCC2|✅ proved - incomplete|shostak|0.060|
|sqrt_hathat_TCC1|✅ proved - incomplete|shostak|0.040|
|sqrt_hathat|✅ proved - incomplete|shostak|0.605|
|sqrt_hathat_neg_TCC1|✅ proved - incomplete|shostak|0.070|
|sqrt_hathat_neg|✅ proved - incomplete|shostak|0.240|
|expt_exp_equiv|✅ proved - incomplete|shostak|0.076|
|partial_diff_TCC1|✅ proved - incomplete|shostak|0.060|
|dl_derivable_const|✅ proved - incomplete|shostak|0.080|
|dl_partial_const_TCC1|✅ proved - incomplete|shostak|0.050|
|dl_partial_const|✅ proved - incomplete|shostak|0.216|
|dl_derivable_up_cnst|✅ proved - incomplete|shostak|0.064|
|dl_derivable_val|✅ proved - incomplete|shostak|0.090|
|dl_derivable_up_val|✅ proved - incomplete|shostak|0.070|
|dl_partial_val_TCC1|✅ proved - incomplete|shostak|0.043|
|dl_partial_val|✅ proved - incomplete|shostak|0.255|
|dl_derivable_plus|✅ proved - incomplete|shostak|0.153|
|dl_partial_plus_TCC1|✅ proved - incomplete|shostak|0.050|
|dl_partial_plus|✅ proved - incomplete|shostak|0.359|
|dl_derivable_up_sum|✅ proved - incomplete|shostak|0.080|
|dl_derivable_mult|✅ proved - incomplete|shostak|0.086|
|dl_partial_mult_TCC1|✅ proved - incomplete|shostak|0.040|
|dl_partial_mult|✅ proved - incomplete|shostak|0.463|
|dl_derivable_up_prod|✅ proved - incomplete|shostak|0.083|
|dl_derivable_minus|✅ proved - incomplete|shostak|0.090|
|dl_partial_minus_TCC1|✅ proved - incomplete|shostak|0.040|
|dl_partial_minus|✅ proved - incomplete|shostak|0.256|
|dl_derivable_up_minus|✅ proved - incomplete|shostak|0.125|
|dl_derivable_negative|✅ proved - incomplete|shostak|0.160|
|dl_partial_negative_TCC1|✅ proved - incomplete|shostak|0.044|
|dl_partial_negative|✅ proved - incomplete|shostak|0.270|
|dl_derivable_pow|✅ proved - incomplete|shostak|0.000|
|dl_derivable_up_pow|✅ proved - incomplete|shostak|0.236|
|dl_derivable_div|✅ proved - incomplete|shostak|0.390|
|dl_partial_div_TCC1|✅ proved - incomplete|shostak|0.040|
|dl_partial_div|✅ proved - incomplete|shostak|1.107|
|dl_derivable_up_div|✅ proved - incomplete|shostak|0.090|
|dl_derivable_comp_point_TCC1|✅ proved - incomplete|shostak|2.370|
|dl_derivable_comp_point_TCC2|✅ proved - incomplete|shostak|0.050|
|dl_derivable_comp_point_TCC3|✅ proved - incomplete|shostak|0.175|
|dl_derivable_comp_point|✅ proved - incomplete|shostak|0.290|
|dl_derivable_comp_TCC1|✅ proved - incomplete|shostak|0.053|
|dl_derivable_comp_TCC2|✅ proved - incomplete|shostak|0.060|
|dl_derivable_comp_TCC3|✅ proved - incomplete|shostak|0.185|
|dl_derivable_comp|✅ proved - incomplete|shostak|0.070|
|dl_partial_chain_TCC1|✅ proved - incomplete|shostak|0.040|
|dl_partial_chain_TCC2|✅ proved - incomplete|shostak|0.067|
|dl_partial_chain_TCC3|✅ proved - incomplete|shostak|0.050|
|dl_partial_chain_TCC4|✅ proved - incomplete|shostak|0.185|
|dl_partial_chain|✅ proved - incomplete|shostak|0.622|
|dl_derivable_exp|✅ proved - incomplete|shostak|2.202|
|dl_partial_exp_TCC1|✅ proved - incomplete|shostak|0.036|
|dl_partial_exp|✅ proved - incomplete|shostak|6.153|
|dl_derivable_sqrt|✅ proved - incomplete|shostak|0.569|
|dl_partial_sqrt_TCC1|✅ proved - incomplete|shostak|0.050|
|dl_partial_sqrt|✅ proved - incomplete|shostak|1.129|
|DIFT_last_TCC1|✅ proved - incomplete|shostak|0.050|
|DIFT_last_TCC2|✅ proved - incomplete|shostak|0.080|
|DIFT_last|✅ proved - incomplete|shostak|0.569|
|dl_dift_val_zero|✅ proved - incomplete|shostak|0.568|
|dl_dift_val_P|✅ proved - incomplete|shostak|1.199|
|dl_dift_val_TCC1|✅ proved - incomplete|shostak|0.050|
|dl_dift_val|✅ proved - incomplete|shostak|0.080|
|dl_dift_const|✅ proved - incomplete|shostak|0.000|
|dl_dift_plus_TCC1|✅ proved - incomplete|shostak|0.050|
|dl_dift_plus|✅ proved - incomplete|shostak|2.640|
|dl_dift_minus|✅ proved - incomplete|shostak|1.179|
|dl_dift_negative|✅ proved - incomplete|shostak|2.027|
|dl_dift_mult|✅ proved - incomplete|shostak|4.515|
|dl_dift_divsafe|✅ proved - incomplete|shostak|4.810|
|dl_dift_exp|✅ proved - incomplete|shostak|1.115|
|dl_dift_pow|✅ proved - incomplete|shostak|1.640|
|dl_dift_sqrt|✅ proved - incomplete|shostak|1.369|
|ddt_TCC1|✅ proved - incomplete|shostak|0.060|
|ddt_TCC2|✅ proved - incomplete|shostak|0.060|
|ddt_TCC3|✅ proved - incomplete|shostak|0.176|
|ddt_not_in_map|✅ proved - incomplete|shostak|0.315|
|ddt_in_map_TCC1|✅ proved - incomplete|shostak|0.226|
|ddt_in_map|✅ proved - incomplete|shostak|1.685|
|re_plus_cnst0|✅ proved - incomplete|shostak|0.060|
|cnst0_plus_re|✅ proved - incomplete|shostak|0.057|
|re_minus_cnst0|✅ proved - incomplete|shostak|0.060|
|cnst0_minus_re|✅ proved - incomplete|shostak|0.130|
|re_prod_cnst0|✅ proved - incomplete|shostak|0.060|
|cnst0_prod_re|✅ proved - incomplete|shostak|0.130|
|sqrt_safe_sq|✅ proved - incomplete|shostak|0.115|
|ODEs_P?_TCC1|✅ proved - incomplete|shostak|12.667|
|DIFT_TCC1|✅ proved - incomplete|shostak|0.075|
|DIFT_TCC2|✅ proved - incomplete|shostak|0.130|
|DIFT_TCC3|✅ proved - incomplete|shostak|0.095|
|DIFT_TCC4|✅ proved - incomplete|shostak|0.615|
|DIFT_TCC5|✅ proved - incomplete|shostak|0.090|
|DIFT_TCC6|✅ proved - incomplete|shostak|0.496|
|DIFT_TCC7|✅ proved - incomplete|shostak|0.090|
|DIFT_TCC8|✅ proved - incomplete|shostak|0.160|
|DIFT_TCC9|✅ proved - incomplete|shostak|0.000|
|DIFT_TCC10|✅ proved - incomplete|shostak|0.070|

## `chain_rule_re`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|env_2_vec_TCC1|✅ proved - incomplete|shostak|0.070|
|env_2_vec_TCC2|✅ proved - complete|shostak|0.080|
|env_2_vec_TCC3|✅ proved - complete|shostak|0.050|
|env_2_vec_TCC4|✅ proved - incomplete|shostak|0.090|
|env_2_vec_nth_TCC1|✅ proved - incomplete|shostak|0.148|
|env_2_vec_nth|✅ proved - incomplete|shostak|0.276|
|projv_dd|✅ proved - incomplete|shostak|4.269|
|proj_projv_TCC1|✅ proved - incomplete|shostak|0.060|
|proj_projv_TCC2|✅ proved - incomplete|shostak|0.231|
|proj_projv|✅ proved - incomplete|shostak|1.085|
|projv_proj_TCC1|✅ proved - complete|shostak|0.040|
|projv_proj_TCC2|✅ proved - incomplete|shostak|0.230|
|projv_proj|✅ proved - incomplete|shostak|0.544|
|ddl_dom_dom_dir|✅ proved - incomplete|shostak|1.491|
|dd_e_partial|✅ proved - incomplete|shostak|1.293|
|vec_2_env_TCC1|✅ proved - incomplete|shostak|0.140|
|vec_2_env_id|✅ proved - incomplete|shostak|0.263|
|env_2_vec_id|✅ proved - incomplete|shostak|0.325|
|vec_2_env_plus_TCC1|✅ proved - incomplete|shostak|0.214|
|vec_2_env_plus_TCC2|✅ proved - incomplete|shostak|0.080|
|vec_2_env_plus|✅ proved - incomplete|shostak|1.977|
|differentiable_re_p?_TCC1|✅ proved - incomplete|shostak|0.050|
|differentiable_re_p?_TCC2|✅ proved - incomplete|shostak|0.050|
|diff_env_change|✅ proved - incomplete|shostak|0.359|
|diff_re_diff_mv_TCC1|✅ proved - incomplete|shostak|0.050|
|diff_re_diff_mv|✅ proved - incomplete|shostak|0.310|
|der_re_p_TCC1|✅ proved - incomplete|shostak|0.310|
|der_re_TCC1|✅ proved - incomplete|shostak|3.658|
|der_re_grad_TCC1|✅ proved - incomplete|shostak|0.159|
|der_re_grad_TCC2|✅ proved - incomplete|shostak|0.328|
|der_re_grad|✅ proved - incomplete|shostak|0.479|
|diff_re_init_partial_TCC1|✅ proved - incomplete|shostak|0.158|
|diff_re_init_partial|✅ proved - incomplete|shostak|0.200|
|der_re_partial_TCC1|✅ proved - incomplete|shostak|0.200|
|der_re_partial|✅ proved - incomplete|shostak|0.170|
|re_diff_mv|✅ proved - incomplete|shostak|0.174|
|re_der_mv_TCC1|✅ proved - incomplete|shostak|0.110|
|re_der_mv|✅ proved - incomplete|shostak|0.332|
|re_diff_mv_ll_TCC1|✅ proved - incomplete|shostak|0.060|
|re_diff_mv_ll_TCC2|✅ proved - incomplete|shostak|0.372|
|re_diff_mv_ll_TCC3|✅ proved - incomplete|shostak|0.070|
|re_diff_mv_ll_TCC4|✅ proved - incomplete|shostak|0.064|
|re_diff_mv_ll_TCC5|✅ proved - incomplete|shostak|0.090|
|re_diff_mv_ll|✅ proved - incomplete|shostak|0.916|
|re_der_mv_ll_TCC1|✅ proved - incomplete|shostak|0.140|
|re_der_mv_ll_TCC2|✅ proved - incomplete|shostak|0.055|
|re_der_mv_ll_TCC3|✅ proved - incomplete|shostak|0.090|
|re_der_mv_ll|✅ proved - incomplete|shostak|0.884|
|with_e_vec_TCC1|✅ proved - complete|shostak|0.050|
|with_e_vec_TCC2|✅ proved - incomplete|shostak|0.255|
|with_e_vec|✅ proved - incomplete|shostak|0.575|
|derivable_partial_TCC1|✅ proved - incomplete|shostak|0.140|
|derivable_partial_TCC2|✅ proved - incomplete|shostak|0.070|
|derivable_partial_TCC3|✅ proved - incomplete|shostak|0.133|
|derivable_partial|✅ proved - incomplete|shostak|4.343|
|derivable_partial_D_TCC1|✅ proved - incomplete|shostak|0.060|
|derivable_partial_D|✅ proved - incomplete|shostak|0.701|
|deriv_partial_TCC1|✅ proved - incomplete|shostak|0.150|
|deriv_partial|✅ proved - incomplete|shostak|0.000|
|diff_re_derivable_partial_TCC1|✅ proved - incomplete|shostak|0.479|
|diff_re_derivable_partial|✅ proved - incomplete|shostak|0.080|
|diff_re_partialable_p_TCC1|✅ proved - incomplete|shostak|0.475|
|diff_re_partialable_p|✅ proved - incomplete|shostak|0.234|
|diff_re_derivable_up_TCC1|✅ proved - incomplete|shostak|0.458|
|diff_re_derivable_up|✅ proved - incomplete|shostak|0.128|
|der_re_partial_der_TCC1|✅ proved - incomplete|shostak|0.060|
|der_re_partial_der|✅ proved - incomplete|shostak|0.120|
|der_ll_partial_der_TCC1|✅ proved - incomplete|shostak|0.087|
|der_ll_partial_der_TCC2|✅ proved - incomplete|shostak|0.080|
|der_ll_partial_der_TCC3|✅ proved - incomplete|shostak|0.315|
|der_ll_partial_der_TCC4|✅ proved - incomplete|shostak|0.080|
|der_ll_partial_der_TCC5|✅ proved - incomplete|shostak|14.855|
|der_ll_partial_der|✅ proved - incomplete|shostak|0.151|
|eq_re_comp|✅ proved - incomplete|shostak|0.295|
|env_sol_env2vec|✅ proved - incomplete|shostak|0.386|
|e2v_diff_p_TCC1|✅ proved - incomplete|shostak|0.060|
|e2v_diff_p|✅ proved - incomplete|shostak|3.503|
|e2v_der_p_TCC1|✅ proved - incomplete|shostak|0.170|
|e2v_der_p_TCC2|✅ proved - incomplete|shostak|0.617|
|e2v_der_p_TCC3|✅ proved - incomplete|shostak|0.364|
|e2v_der_p|✅ proved - incomplete|shostak|0.410|
|e2v_der_p_not_in_map|✅ proved - incomplete|shostak|1.595|
|e2v_der_p_in_map|✅ proved - incomplete|shostak|2.021|
|e2v_der_p_in_map_ode|✅ proved - incomplete|shostak|5.674|
|e2v_re_diff_p_TCC1|✅ proved - incomplete|shostak|0.060|
|e2v_re_diff_p_TCC2|✅ proved - incomplete|shostak|0.056|
|e2v_re_diff_p|✅ proved - incomplete|shostak|1.780|
|e2v_re_der_p_TCC1|✅ proved - incomplete|shostak|0.072|
|e2v_re_der_p_TCC2|✅ proved - incomplete|shostak|0.070|
|e2v_re_der_p_TCC3|✅ proved - incomplete|shostak|0.150|
|e2v_re_der_p_TCC4|✅ proved - incomplete|shostak|0.068|
|e2v_re_der_p_TCC5|✅ proved - incomplete|shostak|0.100|
|e2v_re_der_p_TCC6|✅ proved - incomplete|shostak|0.178|
|e2v_re_der_p|✅ proved - incomplete|shostak|2.263|
|re_diff_chain_TCC1|✅ proved - incomplete|shostak|0.106|
|re_diff_chain_TCC2|✅ proved - incomplete|shostak|0.050|
|re_diff_chain_TCC3|✅ proved - incomplete|shostak|0.050|
|re_diff_chain|✅ proved - incomplete|shostak|0.229|
|init_re_der_chain_TCC1|✅ proved - incomplete|shostak|0.066|
|init_re_der_chain_TCC2|✅ proved - incomplete|shostak|0.060|
|init_re_der_chain_TCC3|✅ proved - incomplete|shostak|0.160|
|init_re_der_chain_TCC4|✅ proved - incomplete|shostak|0.057|
|init_re_der_chain_TCC5|✅ proved - incomplete|shostak|0.060|
|init_re_der_chain_TCC6|✅ proved - incomplete|shostak|0.070|
|init_re_der_chain_TCC7|✅ proved - incomplete|shostak|0.192|
|init_re_der_chain_TCC8|✅ proved - incomplete|shostak|0.060|
|init_re_der_chain_TCC9|✅ proved - incomplete|shostak|0.060|
|init_re_der_chain_TCC10|✅ proved - incomplete|shostak|1.171|
|init_re_der_chain_TCC11|✅ proved - incomplete|shostak|1.612|
|init_re_der_chain|✅ proved - incomplete|shostak|0.627|
|init2_re_der_chain_TCC1|✅ proved - incomplete|shostak|0.056|
|init2_re_der_chain_TCC2|✅ proved - incomplete|shostak|0.060|
|init2_re_der_chain_TCC3|✅ proved - incomplete|shostak|0.070|
|init2_re_der_chain|✅ proved - incomplete|shostak|2.635|
|init3_re_der_chain_TCC1|✅ proved - incomplete|shostak|0.060|
|init3_re_der_chain_TCC2|✅ proved - incomplete|shostak|0.079|
|init3_re_der_chain_TCC3|✅ proved - incomplete|shostak|0.090|
|init3_re_der_chain_TCC4|✅ proved - incomplete|shostak|0.270|
|init3_re_der_chain_TCC5|✅ proved - incomplete|shostak|0.126|
|init3_re_der_chain_TCC6|✅ proved - incomplete|shostak|0.130|
|init3_re_der_chain_TCC7|✅ proved - incomplete|shostak|0.241|
|init3_re_der_chain_TCC8|✅ proved - incomplete|shostak|0.282|
|init3_re_der_chain_TCC9|✅ proved - incomplete|shostak|0.324|
|init3_re_der_chain_TCC10|✅ proved - incomplete|shostak|0.110|
|init3_re_der_chain_TCC11|✅ proved - incomplete|shostak|0.110|
|init3_re_der_chain|✅ proved - incomplete|shostak|2.884|
|SUB_DIFTRe_sig_TCC1|✅ proved - incomplete|shostak|0.082|
|SUB_DIFTRe_sig_TCC2|✅ proved - incomplete|shostak|0.060|
|SUB_DIFTRe_sig_TCC3|✅ proved - incomplete|shostak|0.060|
|SUB_DIFTRe_sig|✅ proved - incomplete|shostak|16.839|
|derivable_M_nqbool?_TCC1|✅ proved - incomplete|shostak|0.286|
|derivable_M_nqbool?_TCC2|✅ proved - incomplete|shostak|0.290|
|derivable_M_normalize_rec|✅ proved - incomplete|shostak|0.280|
|derivable_M_normalize|✅ proved - incomplete|shostak|0.060|

## `diff_re_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|diff_re_cont_TCC1|✅ proved - incomplete|shostak|1.058|
|diff_re_cont_TCC2|✅ proved - incomplete|shostak|0.817|
|diff_re_cont|✅ proved - incomplete|shostak|4.067|
|diff_re_divbound_TCC1|✅ proved - incomplete|shostak|0.299|
|diff_re_divbound_TCC2|✅ proved - incomplete|shostak|0.080|
|diff_re_divbound|✅ proved - incomplete|shostak|1.227|
|diff_re_val|✅ proved - incomplete|shostak|2.659|
|diff_re_cnst|✅ proved - incomplete|shostak|0.739|
|diff_re_prod|✅ proved - incomplete|shostak|16.064|
|diff_re_pow|✅ proved - incomplete|shostak|0.217|
|diff_re_sum|✅ proved - incomplete|shostak|1.356|
|diff_re_diff|✅ proved - incomplete|shostak|0.110|
|diff_re_inv_aux|✅ proved - incomplete|shostak|2:16.979|
|diff_re_inv|✅ proved - incomplete|shostak|0.190|
|diff_re_div|✅ proved - incomplete|shostak|0.225|

## `continuity_re_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cont_re?_TCC1|✅ proved - complete|shostak|0.040|

## `continuity_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|f_sol_continuous|✅ proved - incomplete|shostak|0.135|
|c_delt_TCC1|✅ proved - incomplete|shostak|0.801|
|min_delt_TCC1|✅ proved - incomplete|shostak|0.080|
|min_delt_TCC2|✅ proved - incomplete|shostak|0.267|
|min_delt_TCC3|✅ proved - incomplete|shostak|0.471|
|min_delt_TCC4|✅ proved - incomplete|shostak|0.090|
|min_delt_TCC5|✅ proved - incomplete|shostak|0.258|
|min_delt_TCC6|✅ proved - incomplete|shostak|0.120|
|min_delt_TCC7|✅ proved - incomplete|shostak|0.090|
|min_delt_TCC8|✅ proved - incomplete|shostak|0.358|
|min_delt_TCC9|✅ proved - incomplete|shostak|0.090|
|min_delt_TCC10|✅ proved - incomplete|shostak|1.258|
|env_at_t_continuous|✅ proved - incomplete|shostak|0.315|
|re_env_continuous|✅ proved - incomplete|shostak|1.179|

## `continuity_re_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cont_re_val|✅ proved - complete|shostak|0.110|
|cont_re_cnst|✅ proved - complete|shostak|0.101|
|cont_re_prod|✅ proved - incomplete|shostak|5.048|
|cont_re_pow|✅ proved - incomplete|shostak|0.389|
|cont_re_sum|✅ proved - complete|shostak|0.410|
|cont_re_diff|✅ proved - incomplete|shostak|0.110|
|cont_re_div_aux|✅ proved - incomplete|shostak|0.000|
|cont_re_div|✅ proved - incomplete|shostak|0.110|

## `fresh_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|fresh_re_cnst|✅ proved - complete|shostak|0.045|
|fresh_re_val|✅ proved - complete|shostak|0.050|
|fresh_re_sum|✅ proved - complete|shostak|0.090|
|fresh_re_minus|✅ proved - complete|shostak|0.070|
|fresh_re_prod|✅ proved - complete|shostak|0.096|
|fresh_re_div_safe|✅ proved - incomplete|shostak|0.070|
|fresh_re_sqrt_safe|✅ proved - incomplete|shostak|0.060|
|fresh_re_pow|✅ proved - incomplete|shostak|0.214|
|fresh_re_exp|✅ proved - incomplete|shostak|0.066|
|fresh_re_expt|✅ proved - incomplete|shostak|0.987|
|fresh_re_ex1|✅ proved - complete|shostak|3.375|
|fresh_re_ex2|✅ proved - incomplete|shostak|4.457|
|not_fresh_re_val|✅ proved - complete|shostak|0.050|
|fresh_be_DLTRUE|✅ proved - complete|shostak|0.057|
|fresh_be_DLFALSE|✅ proved - complete|shostak|0.040|
|fresh_be_eq|✅ proved - complete|shostak|0.100|
|fresh_be_neq|✅ proved - complete|shostak|0.100|
|fresh_be_le|✅ proved - complete|shostak|0.108|
|fresh_be_lt|✅ proved - complete|shostak|0.100|
|fresh_be_ge|✅ proved - complete|shostak|0.110|
|fresh_be_gt|✅ proved - complete|shostak|0.099|
|fresh_be_or|✅ proved - complete|shostak|0.100|
|fresh_be_and|✅ proved - complete|shostak|0.100|
|fresh_be_implies|✅ proved - complete|shostak|0.100|
|fresh_be_not|✅ proved - complete|shostak|0.075|
|fresh_be_IFF|✅ proved - complete|shostak|0.140|
|fresh_fs_sol|✅ proved - incomplete|shostak|2.352|
|fresh_bstar_semantic_rel|✅ proved - incomplete|shostak|0.365|
|fresh_be_semantic_rel|✅ proved - incomplete|shostak|0.931|
|fresh_be_allruns|✅ proved - incomplete|shostak|0.120|
|fresh_be_allruns_e|✅ proved - incomplete|shostak|0.171|
|fresh_be_someruns|✅ proved - incomplete|shostak|0.120|

## `dynamic_logic`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|assign0_prop|✅ proved - incomplete|shostak|0.466|
|assign_assign_sub|✅ proved - incomplete|shostak|0.120|
|assign_sub_assign|✅ proved - incomplete|shostak|0.080|
|turnstile_TCC1|✅ proved - complete|shostak|0.080|
|turnstile_TCC2|✅ proved - complete|shostak|0.061|
|turnstile_TCC3|✅ proved - complete|shostak|0.110|
|turnstile_TCC4|✅ proved - incomplete|shostak|0.170|
|turnstile_TCC5|✅ proved - incomplete|shostak|0.160|
|turnstile_TCC6|✅ proved - incomplete|shostak|0.258|
|dlSequent_equiv|✅ proved - incomplete|shostak|0.201|
|dl_notR|✅ proved - incomplete|shostak|0.270|
|dl_notL|✅ proved - incomplete|shostak|0.279|
|dl_andR|✅ proved - incomplete|shostak|0.231|
|dl_andL|✅ proved - incomplete|shostak|0.254|
|dl_orR|✅ proved - incomplete|shostak|0.293|
|dl_orL|✅ proved - incomplete|shostak|0.310|
|dl_impliesR|✅ proved - incomplete|shostak|0.370|
|dl_impliesL|✅ proved - incomplete|shostak|0.355|
|dl_equivR|✅ proved - incomplete|shostak|0.784|
|dl_equivL|✅ proved - incomplete|shostak|0.454|
|dl_axiom|✅ proved - incomplete|shostak|0.294|
|dl_trueR|✅ proved - incomplete|shostak|0.140|
|dl_trueL|✅ proved - incomplete|shostak|0.184|
|dl_falseR|✅ proved - incomplete|shostak|0.190|
|dl_falseL|✅ proved - incomplete|shostak|0.130|
|dl_cut|✅ proved - incomplete|shostak|0.230|
|dl_weakR|✅ proved - incomplete|shostak|0.274|
|dl_weakL|✅ proved - incomplete|shostak|0.272|
|dl_forallR|✅ proved - incomplete|shostak|0.200|
|dl_forallL|✅ proved - incomplete|shostak|0.125|
|dl_existsR|✅ proved - incomplete|shostak|0.130|
|dl_existsL|✅ proved - incomplete|shostak|0.204|
|dl_existsrR|✅ proved - incomplete|shostak|0.130|
|dl_existsrRf|✅ proved - incomplete|shostak|0.144|
|dl_existsrL|✅ proved - incomplete|shostak|0.204|
|move_to_head_rec_TCC1|✅ proved - complete|shostak|0.080|
|move_to_head_rec_TCC2|✅ proved - complete|shostak|0.070|
|move_to_head_rec_TCC3|✅ proved - complete|shostak|0.126|
|move_to_head_rec_TCC4|✅ proved - complete|shostak|0.050|
|move_to_head_rec_nth_TCC1|✅ proved - complete|shostak|0.060|
|move_to_head_rec_nth_TCC2|✅ proved - complete|shostak|0.220|
|move_to_head_rec_nth_TCC3|✅ proved - complete|shostak|0.255|
|move_to_head_rec_nth_TCC4|✅ proved - complete|shostak|0.190|
|move_to_head_rec_nth_TCC5|✅ proved - complete|shostak|0.260|
|move_to_head_rec_nth_TCC6|✅ proved - complete|shostak|0.217|
|move_to_head_rec_nth_TCC7|✅ proved - complete|shostak|0.260|
|move_to_head_rec_nth_TCC8|✅ proved - complete|shostak|0.245|
|move_to_head_rec_nth_TCC9|✅ proved - incomplete|shostak|0.678|
|move_to_head_rec_nth_TCC10|✅ proved - incomplete|shostak|1.444|
|move_to_head_TCC1|✅ proved - complete|shostak|0.070|
|move_to_head_length|✅ proved - incomplete|shostak|0.267|
|move_to_head_car_TCC1|✅ proved - incomplete|shostak|0.060|
|move_to_head_car_TCC2|✅ proved - complete|shostak|0.050|
|move_to_head_car|✅ proved - incomplete|shostak|0.160|
|move_to_head_first_half_TCC1|✅ proved - incomplete|shostak|0.068|
|move_to_head_first_half_TCC2|✅ proved - complete|shostak|0.090|
|move_to_head_first_half|✅ proved - incomplete|shostak|0.260|
|move_to_head_second_half_TCC1|✅ proved - incomplete|shostak|0.057|
|move_to_head_second_half|✅ proved - incomplete|shostak|0.290|
|dl_moveR|✅ proved - incomplete|shostak|0.226|
|dl_moveL|✅ proved - incomplete|shostak|0.230|
|dl_hideR|✅ proved - incomplete|shostak|0.190|
|dl_hideL|✅ proved - incomplete|shostak|0.190|
|dl_boxd|✅ proved - incomplete|shostak|0.084|
|dl_assignb|✅ proved - incomplete|shostak|0.090|
|dl_assignb_restricted|✅ proved - incomplete|shostak|0.090|
|dl_assignd|✅ proved - incomplete|shostak|0.084|
|dl_testb|✅ proved - incomplete|shostak|0.090|
|dl_testb_true|✅ proved - incomplete|shostak|0.060|
|dl_testd|✅ proved - incomplete|shostak|0.090|
|dl_testd_true|✅ proved - incomplete|shostak|0.191|
|dl_choiceb|✅ proved - incomplete|shostak|0.190|
|dl_choiced|✅ proved - incomplete|shostak|0.172|
|dl_composeb|✅ proved - incomplete|shostak|0.130|
|dl_composed|✅ proved - incomplete|shostak|0.134|
|dl_iterateb|✅ proved - incomplete|shostak|0.150|
|dl_iterated|✅ proved - incomplete|shostak|0.235|
|dl_anyb_TCC1|✅ proved - complete|shostak|0.084|
|dl_anyb|✅ proved - incomplete|shostak|0.403|
|dl_anyd|✅ proved - incomplete|shostak|0.172|
|dl_boxand|✅ proved - incomplete|shostak|0.100|
|dl_diamondOr|✅ proved - incomplete|shostak|0.110|
|dl_iteratearrowb|✅ proved - incomplete|shostak|0.194|
|dl_starstarb|✅ proved - incomplete|shostak|0.677|
|dl_iterateIb|✅ proved - incomplete|shostak|0.858|
|dl_impliesallrunsb|✅ proved - incomplete|shostak|0.191|
|dl_impliesallrunsd|✅ proved - incomplete|shostak|0.199|
|dl_distimpliesb|✅ proved - incomplete|shostak|0.171|
|dl_const|✅ proved - incomplete|shostak|0.407|
|dl_constd|✅ proved - incomplete|shostak|0.386|
|dl_V|✅ proved - incomplete|shostak|1.592|
|dl_Vd|✅ proved - incomplete|shostak|0.000|
|dl_bool_const|✅ proved - incomplete|shostak|0.180|
|dl_subr_TCC1|✅ proved - incomplete|shostak|0.190|
|dl_subr|✅ proved - incomplete|shostak|0.269|
|dl_subl|✅ proved - incomplete|shostak|0.336|
|dl_subf|✅ proved - incomplete|shostak|0.321|
|dl_weak_impliesb|✅ proved - incomplete|shostak|0.142|
|dl_weak_impliesd|✅ proved - incomplete|shostak|0.141|
|dl_weak_impliesbE|✅ proved - incomplete|shostak|0.170|
|dl_weak_impliesdE|✅ proved - incomplete|shostak|0.151|
|dl_differential_auxiliary_TCC1|✅ proved - complete|shostak|0.070|
|dl_differential_auxiliary|✅ proved - incomplete|shostak|6.799|
|dl_bounded_loop|✅ proved - incomplete|shostak|0.674|
|dl_loop|✅ proved - incomplete|shostak|0.390|
|dl_MbL|✅ proved - incomplete|shostak|1.547|
|dl_MbR|✅ proved - incomplete|shostak|1.555|
|dl_MdL|✅ proved - incomplete|shostak|1.505|
|dl_MdR|✅ proved - incomplete|shostak|1.335|
|dl_MEbR|✅ proved - incomplete|shostak|1.548|
|dl_MEbRA|✅ proved - incomplete|shostak|0.626|
|dl_discrete_ghost|✅ proved - incomplete|shostak|0.372|
|dl_andb|✅ proved - incomplete|shostak|0.185|
|dl_andf|✅ proved - incomplete|shostak|0.246|
|dl_orb|✅ proved - incomplete|shostak|0.349|
|dl_hide_restR|✅ proved - incomplete|shostak|0.180|
|dl_hide_restL|✅ proved - incomplete|shostak|0.176|
|dl_hide_restLR|✅ proved - incomplete|shostak|0.478|
|dl_commuteEquivR|✅ proved - incomplete|shostak|0.260|
|dl_commuteEquivL|✅ proved - incomplete|shostak|0.231|
|dl_equivifyR|✅ proved - incomplete|shostak|0.330|
|dl_dW|✅ proved - incomplete|shostak|0.242|
|dl_dinit|✅ proved - incomplete|shostak|0.372|
|dl_dI_eq|✅ proved - incomplete|shostak|0.000|
|dl_dI_neq|✅ proved - incomplete|shostak|3.633|
|dl_dI_le|✅ proved - incomplete|shostak|3.052|
|dl_dI_lt|✅ proved - incomplete|shostak|0.000|
|dl_dI_ge|✅ proved - incomplete|shostak|3.184|
|dl_dI_gt|✅ proved - incomplete|shostak|0.000|
|dl_dI_lite|✅ proved - incomplete|shostak|13.244|
|dl_dI|✅ proved - incomplete|shostak|2.150|
|dl_dI_dlTRUE_TCC1|✅ proved - complete|shostak|0.050|
|dl_dI_dlTRUE|✅ proved - incomplete|shostak|0.092|
|dl_dC|✅ proved - incomplete|shostak|0.434|
|dl_differential_ghost_TCC1|✅ proved - complete|shostak|0.069|
|dl_differential_ghost|✅ proved - incomplete|shostak|6.866|

## `more_derivative_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_derivative_props_TCC1|✅ proved - complete|shostak|0.030|
|IMP_derivative_props_TCC2|✅ proved - complete|shostak|0.030|
|deriv_linear_TCC1|✅ proved - incomplete|shostak|0.050|
|deriv_linear|✅ proved - incomplete|shostak|6.746|

## `dl_solution`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|init_zip_sol_TCC1|✅ proved - complete|shostak|0.160|
|init_zip_sol_TCC2|✅ proved - complete|shostak|0.060|
|init_zip_sol_TCC3|✅ proved - complete|shostak|0.166|
|init_zip_sol_TCC4|✅ proved - complete|shostak|0.160|
|init_zip_sol_TCC5|✅ proved - complete|shostak|0.608|
|init_zip_sol_TCC6|✅ proved - complete|shostak|0.250|
|init_zip_sol_TCC7|✅ proved - complete|shostak|0.182|
|init_zip_sol_TCC8|✅ proved - complete|shostak|0.715|
|zip_sol_test_TCC1|✅ proved - incomplete|shostak|0.170|
|zip_sol_test_TCC2|✅ proved - incomplete|shostak|0.040|
|zip_sol_test_TCC3|✅ proved - complete|shostak|0.050|
|zip_sol_test|✅ proved - incomplete|shostak|0.220|
|zs_TCC1|✅ proved - complete|shostak|0.130|
|map_inj_zs|✅ proved - complete|shostak|0.306|
|solution_domain_ax_ode_TCC1|✅ proved - incomplete|shostak|0.040|
|solution_domain_ax_ode|✅ proved - incomplete|shostak|3.453|
|dl_solution_domain_iff|✅ proved - incomplete|shostak|1.360|
|dl_solution_domain|✅ proved - incomplete|shostak|0.070|
|solution_domain_ax_TCC1|✅ proved - complete|shostak|0.064|
|solution_domain_ax_TCC2|✅ proved - complete|shostak|0.130|
|solution_domain_ax|✅ proved - incomplete|shostak|1.261|
|solution_domain_ax_lin|✅ proved - incomplete|shostak|15.071|
|solution_domain_ax_lin_val|✅ proved - incomplete|shostak|8.661|
|solution_domain_ax_quad_TCC1|✅ proved - complete|shostak|0.050|
|solution_domain_ax_quad_TCC2|✅ proved - complete|shostak|0.139|
|solution_domain_ax_quad|✅ proved - incomplete|shostak|36.215|
|in_map_test_TCC1|✅ proved - complete|shostak|0.080|
|in_map_test|✅ proved - complete|shostak|0.134|
|get_index_TCC1|✅ proved - complete|shostak|0.060|
|get_index_TCC2|✅ proved - complete|shostak|0.070|
|get_index_TCC3|✅ proved - complete|shostak|0.190|
|get_index_TCC4|✅ proved - complete|shostak|0.049|
|get_index_TCC5|✅ proved - complete|shostak|0.140|
|get_index_TCC6|✅ proved - complete|shostak|0.414|
|cnst_val_0|✅ proved - complete|shostak|0.080|
|cnst_val_com|✅ proved - complete|shostak|0.060|
|val_inj|✅ proved - complete|shostak|0.056|
|in_map_ex_TCC1|✅ proved - complete|shostak|0.060|
|in_map_ex_TCC2|✅ proved - complete|shostak|0.060|
|in_map_ex_TCC3|✅ proved - complete|shostak|0.150|
|in_map_ex_eq|✅ proved - complete|shostak|0.000|
|env_c_val|✅ proved - complete|shostak|0.050|
|get_val_cnst_id_ex_TCC1|✅ proved - complete|shostak|0.237|
|get_val_cnst_id_ex_TCC2|✅ proved - complete|shostak|0.863|
|is_val_not_in_map?_TCC1|✅ proved - complete|shostak|0.681|
|Y_sol_ex_TCC1|✅ proved - complete|shostak|0.849|
|cnst_lins_def|✅ proved - complete|shostak|1.066|
|y_sol_Ex_TCC1|✅ proved - complete|shostak|0.110|
|y_sol_Ex_TCC2|✅ proved - complete|shostak|0.460|
|y_sol_Ex_TCC3|✅ proved - complete|shostak|0.110|
|y_sol_Ex|✅ proved - incomplete|shostak|34.277|
|cnst_lins_sol_TCC1|✅ proved - incomplete|shostak|0.060|
|cnst_lins_sol|✅ proved - incomplete|shostak|43.749|
|cnst_lins_sol_u_TCC1|✅ proved - incomplete|shostak|0.050|
|cnst_lins_sol_u|✅ proved - incomplete|shostak|25.986|
|solution_domain_ax_cnst_imp_zip|✅ proved - incomplete|shostak|0.080|
|solution_domain_ax_cnst_imp_zip_no_hyp|✅ proved - incomplete|shostak|0.743|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib/pvsio_utils/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230712-static-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230710-tcc-gen.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230707-defattach.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230706-extrategies.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`|
