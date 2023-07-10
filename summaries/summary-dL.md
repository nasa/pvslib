# Summary for `dL`
Run started at 8:0:17 7/8/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **833**   | **833**    | **833**    | **0**  | **11:24.769 s**   |
|top|0|0|0|0|0.000|
|hp_def|24|24|24|0|5.025|
|hp_expr|32|32|32|0|3.409|
|bounded_star_semantics|23|23|23|0|4.328|
|bool_expr|36|36|36|0|3.607|
|bound_variables_def|17|17|17|0|3.074|
|hp_props|19|19|19|0|4.527|
|substitution|58|58|58|0|8.501|
|ODEs_equiv|103|103|103|0|36.865|
|differentiation|120|120|120|0|1:4.907|
|chain_rule_re|134|134|134|0|1:36.419|
|diff_re_props|14|14|14|0|2:55.556|
|continuity_re_def|1|1|1|0|0.040|
|continuity_props|14|14|14|0|5.352|
|continuity_re_props|7|7|7|0|5.981|
|fresh_props|33|33|33|0|7.231|
|dynamic_logic|136|136|136|0|1:15.463|
|more_derivative_props|4|4|4|0|8.759|
|dl_solution|58|58|58|0|2:55.725|
## Detailed Summary 
## `top`
No formula declaration found.
## `hp_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|mapexpr_inj_TCC1|✅ proved - complete|shostak|0.105|
|mapexpr_inj_TCC2|✅ proved - complete|shostak|0.090|
|mapexpr_inj_cons|✅ proved - complete|shostak|0.230|
|mapexpr_inj_eq|✅ proved - complete|shostak|0.142|
|null_MapExprInj|✅ proved - complete|shostak|0.100|
|cdr_is_MapExprInj|✅ proved - complete|shostak|0.190|
|sub_mapexpr_inj_is_mapexpr_inj|✅ proved - incomplete|shostak|0.150|
|in_map_cons|✅ proved - complete|shostak|0.172|
|in_map_null_false|✅ proved - complete|shostak|0.050|
|not_in_map_null|✅ proved - complete|shostak|0.050|
|index_of_j|✅ proved - complete|shostak|0.070|
|expr_car_TCC1|✅ proved - complete|shostak|0.070|
|expr_car|✅ proved - complete|shostak|0.143|
|expr_not_car_TCC1|✅ proved - complete|shostak|0.100|
|expr_not_car|✅ proved - complete|shostak|0.270|
|max_var_rec_TCC1|✅ proved - complete|shostak|0.040|
|max_var_rec_TCC2|✅ proved - complete|shostak|0.034|
|max_var_rec_TCC3|✅ proved - complete|shostak|0.090|
|max_var_rec_pull|✅ proved - complete|shostak|0.450|
|max_var_max|✅ proved - complete|shostak|0.363|
|max_var_exist|✅ proved - complete|shostak|1.437|
|pigeon_map|✅ proved - complete|shostak|0.354|
|max_var_length|✅ proved - complete|shostak|0.205|
|nip_max_var|✅ proved - complete|shostak|0.120|

## `hp_expr`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_table_of_integrals_TCC1|✅ proved - complete|shostak|0.117|
|IMP_table_of_integrals_TCC2|✅ proved - incomplete|shostak|0.020|
|size_TCC1|✅ proved - incomplete|shostak|0.080|
|size_TCC2|✅ proved - incomplete|shostak|0.060|
|size_TCC3|✅ proved - incomplete|shostak|0.050|
|size_TCC4|✅ proved - incomplete|shostak|0.050|
|size_TCC5|✅ proved - incomplete|shostak|0.050|
|dd?_TCC1|✅ proved - incomplete|shostak|0.030|
|dd_deriv_domain|✅ proved - incomplete|shostak|0.175|
|dd_noe|✅ proved - incomplete|shostak|0.070|
|dd_con|✅ proved - incomplete|shostak|0.074|
|dd_ne|✅ proved - incomplete|shostak|0.050|
|dd_ci_TCC1|✅ proved - incomplete|shostak|0.050|
|dd_ci|✅ proved - incomplete|shostak|0.050|
|derivable_odes?_TCC1|✅ proved - incomplete|shostak|0.030|
|derivable_odes?_TCC2|✅ proved - incomplete|shostak|0.073|
|env_at_t_TCC1|✅ proved - incomplete|shostak|0.070|
|env_at_t_TCC2|✅ proved - incomplete|shostak|0.524|
|sol_at_t?_TCC1|✅ proved - incomplete|shostak|0.521|
|semantic_rel_TCC1|✅ proved - incomplete|shostak|0.060|
|semantic_rel_TCC2|✅ proved - incomplete|shostak|0.100|
|semantic_rel_TCC3|✅ proved - incomplete|shostak|0.100|
|semantic_rel_TCC4|✅ proved - incomplete|shostak|0.116|
|fresh_li?_TCC1|✅ proved - incomplete|shostak|0.050|
|fresh_li?_TCC2|✅ proved - incomplete|shostak|0.040|
|fresh_assign_nth|✅ proved - incomplete|shostak|0.234|
|fresh_mapexpr_inj|✅ proved - incomplete|shostak|0.200|
|fresh_mapexp_nth_2|✅ proved - incomplete|shostak|0.175|
|fresh_hp?_TCC1|✅ proved - incomplete|shostak|0.040|
|fresh_hp?_TCC2|✅ proved - incomplete|shostak|0.050|
|fresh_hp?_TCC3|✅ proved - incomplete|shostak|0.050|
|fresh_hp?_TCC4|✅ proved - incomplete|shostak|0.050|

## `bounded_star_semantics`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|semantic_rel_bounded_star_TCC1|✅ proved - complete|shostak|0.030|
|semantic_rel_bounded_star_TCC2|✅ proved - incomplete|shostak|0.070|
|semantic_rel_bounded_star_TCC3|✅ proved - complete|shostak|0.065|
|semantic_rel_bounded_star_TCC4|✅ proved - complete|shostak|0.070|
|semantic_rel_bounded_star_TCC5|✅ proved - complete|shostak|0.070|
|semantic_rel_bounded_star_TCC6|✅ proved - complete|shostak|0.070|
|semantic_rel_bounded_star_TCC7|✅ proved - incomplete|shostak|0.100|
|semantic_rel_bounded_star_TCC8|✅ proved - incomplete|shostak|0.085|
|semantic_rel_bounded_star_inc|✅ proved - incomplete|shostak|0.659|
|semantic_rel_implies_bounded|✅ proved - incomplete|shostak|0.479|
|bounded_implies_semantic_rel|✅ proved - incomplete|shostak|0.578|
|BSTAR_TCC1|✅ proved - complete|shostak|0.050|
|BSTAR_TCC2|✅ proved - complete|shostak|0.040|
|semantic_rel_bstar_reflexive|✅ proved - incomplete|shostak|0.090|
|semantic_rel_bounded_bstar_semantic_rel_bstar|✅ proved - incomplete|shostak|0.178|
|semantic_rel_star_bounded_star|✅ proved - incomplete|shostak|0.050|
|semantic_rel_star_bounded_star_con|✅ proved - incomplete|shostak|0.188|
|semantic_rel_bounded_star_seq_switch|✅ proved - incomplete|shostak|0.783|
|semantic_rel_star_seq_switch|✅ proved - incomplete|shostak|0.276|
|semantic_rel_bounded_star_iter|✅ proved - incomplete|shostak|0.100|
|semantic_rel_bounded_star_iter_con_TCC1|✅ proved - incomplete|shostak|0.067|
|semantic_rel_bounded_star_iter_con|✅ proved - incomplete|shostak|0.120|
|semantic_rel_star_iter|✅ proved - incomplete|shostak|0.110|

## `bool_expr`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|fresh?_TCC1|✅ proved - complete|shostak|0.040|
|fresh?_TCC2|✅ proved - complete|shostak|0.050|
|fresh_formula_nth|✅ proved - complete|shostak|0.137|
|fresh_be_invar|✅ proved - complete|shostak|0.206|
|dl_not_not|✅ proved - complete|shostak|0.050|
|dl_not_true|✅ proved - complete|shostak|0.040|
|dl_not_false|✅ proved - complete|shostak|0.040|
|dl_true_and|✅ proved - complete|shostak|0.040|
|dl_and_true|✅ proved - complete|shostak|0.040|
|dl_false_and|✅ proved - complete|shostak|0.047|
|dl_and_false|✅ proved - complete|shostak|0.040|
|dl_true_or|✅ proved - complete|shostak|0.050|
|dl_or_true|✅ proved - complete|shostak|0.040|
|dl_false_or|✅ proved - complete|shostak|0.040|
|dl_or_false|✅ proved - complete|shostak|0.040|
|dl_true_implies|✅ proved - complete|shostak|0.050|
|dl_implies_true|✅ proved - complete|shostak|0.040|
|dl_false_implies|✅ proved - complete|shostak|0.040|
|dl_implies_false|✅ proved - complete|shostak|0.048|
|dl_forall_bool|✅ proved - complete|shostak|0.050|
|dl_exists_bool|✅ proved - complete|shostak|0.040|
|nqb_to_be_TCC1|✅ proved - complete|shostak|0.050|
|nqb_to_be_TCC2|✅ proved - complete|shostak|0.050|
|nqb_to_be_TCC3|✅ proved - complete|shostak|0.040|
|nqb_to_be_TCC4|✅ proved - complete|shostak|0.050|
|nqb_to_be_TCC5|✅ proved - complete|shostak|0.040|
|nqb_normal?_TCC1|✅ proved - complete|shostak|0.040|
|nqb_normal?_TCC2|✅ proved - complete|shostak|0.040|
|normalize_rec_TCC1|✅ proved - complete|shostak|0.060|
|normalize_rec_TCC2|✅ proved - complete|shostak|0.210|
|normalize_rec_TCC3|✅ proved - complete|shostak|0.923|
|normalize_rec_TCC4|✅ proved - complete|shostak|0.180|
|normalize_rec_TCC5|✅ proved - complete|shostak|0.435|
|normalize_rec_TCC6|✅ proved - complete|shostak|0.181|
|normalize_rec_TCC7|✅ proved - complete|shostak|0.100|
|normalize_TCC1|✅ proved - complete|shostak|0.040|

## `bound_variables_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|bv_me_TCC1|✅ proved - complete|shostak|0.040|
|bv_me_TCC2|✅ proved - complete|shostak|0.050|
|bv_me_TCC3|✅ proved - complete|shostak|0.040|
|bv_me_TCC4|✅ proved - complete|shostak|0.100|
|bv_me_TCC5|✅ proved - incomplete|shostak|0.050|
|BV_TCC1|✅ proved - complete|shostak|0.040|
|BV_TCC2|✅ proved - complete|shostak|0.120|
|BV_TCC3|✅ proved - complete|shostak|0.120|
|BV_TCC4|✅ proved - complete|shostak|0.100|
|BV_TCC5|✅ proved - incomplete|shostak|0.056|
|bv_me_nth_TCC1|✅ proved - incomplete|shostak|0.200|
|bv_me_nth|✅ proved - incomplete|shostak|0.333|
|BV_implies_not_fresh|✅ proved - incomplete|shostak|0.925|
|BV_invar|✅ proved - incomplete|shostak|0.704|
|bvs?_TCC1|✅ proved - complete|shostak|0.040|
|bvs?_TCC2|✅ proved - incomplete|shostak|0.030|
|bvs?_TCC3|✅ proved - incomplete|shostak|0.126|

## `hp_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|assign1_prop_TCC1|✅ proved - complete|shostak|0.070|
|assign1_prop|✅ proved - incomplete|shostak|0.267|
|assign_prop_TCC1|✅ proved - complete|shostak|0.070|
|assign_prop|✅ proved - incomplete|shostak|0.457|
|assign_comm_TCC1|✅ proved - complete|shostak|0.098|
|assign_comm|✅ proved - incomplete|shostak|0.272|
|union_prop_TCC1|✅ proved - incomplete|shostak|0.150|
|union_prop|✅ proved - incomplete|shostak|0.246|
|union_prop_xx|✅ proved - incomplete|shostak|0.057|
|union_id|✅ proved - incomplete|shostak|0.070|
|union_comm|✅ proved - incomplete|shostak|0.220|
|seq_prop|✅ proved - incomplete|shostak|0.650|
|test_prop|✅ proved - incomplete|shostak|0.070|
|diff_prop_TCC1|✅ proved - incomplete|shostak|0.138|
|diff_prop|✅ proved - incomplete|shostak|0.000|
|star_prop_imp_TCC1|✅ proved - complete|shostak|0.080|
|star_prop_imp|✅ proved - incomplete|shostak|0.369|
|star2_prop_imp_TCC1|✅ proved - complete|shostak|0.070|
|star2_prop_imp|✅ proved - incomplete|shostak|1.173|

## `substitution`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|assign_env_TCC1|✅ proved - complete|shostak|0.060|
|assign_env_TCC2|✅ proved - complete|shostak|0.050|
|assign_env_TCC3|✅ proved - complete|shostak|0.140|
|assign_env_TCC4|✅ proved - complete|shostak|0.050|
|SUB_MapExpr_TCC1|✅ proved - complete|shostak|0.060|
|SUB_MapExpr_TCC2|✅ proved - complete|shostak|0.070|
|SUB_MapExpr_TCC3|✅ proved - complete|shostak|0.060|
|SUB_MapExpr_TCC4|✅ proved - complete|shostak|0.150|
|SUB_MapExpr_TCC5|✅ proved - complete|shostak|1.095|
|assign_env__TCC1|✅ proved - incomplete|shostak|0.090|
|assign_env__TCC2|✅ proved - incomplete|shostak|0.070|
|assign_env__alt_j_TCC1|✅ proved - complete|shostak|0.040|
|assign_env__alt_j_TCC2|✅ proved - complete|shostak|0.050|
|assign_env__alt_j_TCC3|✅ proved - incomplete|shostak|0.111|
|assign_env__alt_j_TCC4|✅ proved - incomplete|shostak|0.642|
|assign_env__alt_j_TCC5|✅ proved - incomplete|shostak|0.787|
|assign_env_phantom_eq_TCC1|✅ proved - complete|shostak|0.040|
|assign_env_phantom_eq|✅ proved - incomplete|shostak|0.636|
|assign_env_alt|✅ proved - incomplete|shostak|0.154|
|assign_env_ext|✅ proved - complete|shostak|0.355|
|assign_sub_ext|✅ proved - complete|shostak|0.040|
|SUB_MapVar_TCC1|✅ proved - complete|shostak|0.060|
|SUB_MapVar_TCC2|✅ proved - complete|shostak|0.158|
|SUB_MapVar_TCC3|✅ proved - complete|shostak|0.040|
|SUB_MapVar_TCC4|✅ proved - complete|shostak|0.110|
|SUB_MapVar_TCC5|✅ proved - complete|shostak|0.170|
|dl_subre_val|✅ proved - complete|shostak|0.056|
|dl_subre_const|✅ proved - complete|shostak|0.050|
|dl_subre_plus|✅ proved - complete|shostak|0.090|
|dl_subre_minus|✅ proved - complete|shostak|0.070|
|dl_subre_neg|✅ proved - complete|shostak|0.070|
|dl_subre_prod|✅ proved - complete|shostak|0.097|
|dl_subre_prod_scal1|✅ proved - complete|shostak|0.090|
|dl_subre_prod_scal2|✅ proved - complete|shostak|0.100|
|dl_subre_exp|✅ proved - incomplete|shostak|0.140|
|dl_sub_bool|✅ proved - complete|shostak|0.070|
|dl_sub_bool_restricted|✅ proved - complete|shostak|0.058|
|dl_sub_and|✅ proved - complete|shostak|0.070|
|dl_sub_or|✅ proved - complete|shostak|0.070|
|dl_sub_not|✅ proved - complete|shostak|0.070|
|dl_sub_implies|✅ proved - complete|shostak|0.070|
|dl_sub_ge|✅ proved - complete|shostak|0.073|
|dl_sub_gt|✅ proved - complete|shostak|0.070|
|dl_sub_le|✅ proved - complete|shostak|0.070|
|dl_sub_lt|✅ proved - complete|shostak|0.070|
|dl_sub_eq|✅ proved - complete|shostak|0.070|
|dl_sub_neq|✅ proved - complete|shostak|0.071|
|dl_sub_iff|✅ proved - complete|shostak|0.070|
|dl_sub_allruns0_x_neq_y_TCC1|✅ proved - incomplete|shostak|0.140|
|dl_sub_allruns0_x_neq_y_TCC2|✅ proved - incomplete|shostak|0.180|
|dl_sub_allruns0_x_neq_y_TCC3|✅ proved - complete|shostak|0.158|
|dl_sub_allruns0_x_neq_y_TCC4|✅ proved - incomplete|shostak|0.170|
|dl_sub_allruns0_x_neq_y|✅ proved - incomplete|shostak|0.000|
|dl_sub_allruns_assign0_x_eq_y_TCC1|✅ proved - incomplete|shostak|0.170|
|dl_sub_allruns_assign0_x_eq_y_TCC2|✅ proved - incomplete|shostak|0.160|
|dl_sub_allruns_assign0_x_eq_y|✅ proved - incomplete|shostak|0.416|
|dl_sub_forall|✅ proved - complete|shostak|0.074|
|dl_sub_exists|✅ proved - complete|shostak|0.080|

## `ODEs_equiv`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Re_TCC1|✅ proved - incomplete|shostak|0.090|
|Re_TCC2|✅ proved - complete|shostak|0.070|
|Re_TCC3|✅ proved - complete|shostak|0.050|
|Re_TCC4|✅ proved - complete|shostak|0.100|
|Re_TCC5|✅ proved - incomplete|shostak|0.239|
|Re_TCC6|✅ proved - complete|shostak|0.070|
|Re_nth_TCC1|✅ proved - incomplete|shostak|0.080|
|Re_nth|✅ proved - incomplete|shostak|0.305|
|env_vec_TCC1|✅ proved - complete|shostak|0.050|
|env_vec_TCC2|✅ proved - complete|shostak|0.140|
|env_vec_TCC3|✅ proved - incomplete|shostak|0.180|
|env_vec_nth_TCC1|✅ proved - incomplete|shostak|0.073|
|env_vec_nth|✅ proved - incomplete|shostak|0.350|
|r2v_2_fs_TCC1|✅ proved - complete|shostak|0.070|
|r2v_2_fs_TCC2|✅ proved - incomplete|shostak|0.040|
|r2v_2_fs_TCC3|✅ proved - incomplete|shostak|0.050|
|r2v_2_fs_TCC4|✅ proved - incomplete|shostak|0.470|
|r2v_2_fs_TCC5|✅ proved - incomplete|shostak|0.090|
|fs_2_r2v_TCC1|✅ proved - incomplete|shostak|0.040|
|fs_2_r2v_TCC2|✅ proved - incomplete|shostak|0.060|
|fs_2_r2v_TCC3|✅ proved - incomplete|shostak|0.057|
|fs_2_r2v_TCC4|✅ proved - incomplete|shostak|0.040|
|fs_2_r2v_TCC5|✅ proved - incomplete|shostak|0.070|
|fs_2_r2v_TCC6|✅ proved - incomplete|shostak|0.040|
|fs_2_r2v_TCC7|✅ proved - incomplete|shostak|0.050|
|fs_2_r2v_TCC8|✅ proved - incomplete|shostak|0.090|
|fs_2_r2v_TCC9|✅ proved - incomplete|shostak|0.380|
|fs_2_f2v_nth_TCC1|✅ proved - incomplete|shostak|0.083|
|fs_2_f2v_nth|✅ proved - incomplete|shostak|0.480|
|fs_2_f2v_eq_TCC1|✅ proved - incomplete|shostak|0.040|
|fs_2_f2v_eq_TCC2|✅ proved - incomplete|shostak|0.070|
|fs_2_f2v_eq_TCC3|✅ proved - incomplete|shostak|0.090|
|fs_2_f2v_eq_TCC4|✅ proved - incomplete|shostak|0.070|
|fs_2_f2v_eq_TCC5|✅ proved - incomplete|shostak|0.053|
|fs_2_f2v_eq_TCC6|✅ proved - incomplete|shostak|0.260|
|fs_2_f2v_eq|✅ proved - incomplete|shostak|2.332|
|Odes_f_TCC1|✅ proved - incomplete|shostak|0.050|
|cont_f?_TCC1|✅ proved - incomplete|shostak|0.070|
|cont_f?_TCC2|✅ proved - incomplete|shostak|0.060|
|cont_f?_TCC3|✅ proved - incomplete|shostak|0.070|
|cont_f?_TCC4|✅ proved - incomplete|shostak|0.189|
|cont_f?_TCC5|✅ proved - incomplete|shostak|0.120|
|cont_f?_TCC6|✅ proved - incomplete|shostak|0.070|
|max_diff_TCC1|✅ proved - incomplete|shostak|0.040|
|max_diff_TCC2|✅ proved - incomplete|shostak|0.136|
|max_diff_TCC3|✅ proved - incomplete|shostak|0.040|
|max_diff_TCC4|✅ proved - incomplete|shostak|0.040|
|max_diff_TCC5|✅ proved - incomplete|shostak|0.160|
|max_diff_TCC6|✅ proved - incomplete|shostak|0.200|
|max_diff_TCC7|✅ proved - incomplete|shostak|0.086|
|max_diff_TCC8|✅ proved - incomplete|shostak|0.040|
|max_diff_TCC9|✅ proved - incomplete|shostak|1.079|
|max_diff_norm_inf_TCC1|✅ proved - incomplete|shostak|0.040|
|max_diff_norm_inf_TCC2|✅ proved - incomplete|shostak|0.080|
|max_diff_norm_inf_TCC3|✅ proved - incomplete|shostak|0.040|
|max_diff_norm_inf_TCC4|✅ proved - incomplete|shostak|0.070|
|max_diff_norm_inf_TCC5|✅ proved - incomplete|shostak|0.117|
|max_diff_norm_inf|✅ proved - incomplete|shostak|3.531|
|cdr_TCC1|✅ proved - incomplete|shostak|0.038|
|cdr_TCC2|✅ proved - incomplete|shostak|0.050|
|cdr_const_TCC1|✅ proved - incomplete|shostak|0.050|
|cdr_const|✅ proved - incomplete|shostak|0.180|
|Lip_ODEs?_TCC1|✅ proved - incomplete|shostak|0.060|
|Lip_ODEs?_TCC2|✅ proved - incomplete|shostak|0.100|
|Lip_ODEs?_TCC3|✅ proved - incomplete|shostak|0.152|
|Lip_ODEs?_TCC4|✅ proved - incomplete|shostak|0.100|
|Lip_DDL_ODEs|✅ proved - incomplete|shostak|3.044|
|cont_DDL_ODEs|✅ proved - incomplete|shostak|0.006|
|diff_sol_Lip_TCC1|✅ proved - incomplete|shostak|0.550|
|diff_sol_Lip_TCC2|✅ proved - incomplete|shostak|0.048|
|diff_sol_Lip|✅ proved - incomplete|shostak|8.039|
|diff_sol_eq_TCC1|✅ proved - incomplete|shostak|0.130|
|diff_sol_eq_TCC2|✅ proved - incomplete|shostak|0.060|
|diff_sol_eq|✅ proved - incomplete|shostak|0.058|
|fs_sol_TCC1|✅ proved - incomplete|shostak|0.090|
|ODEs_s_sub_TCC1|✅ proved - incomplete|shostak|0.645|
|ODEs_s_sub_TCC2|✅ proved - incomplete|shostak|0.080|
|ODEs_s_sub|✅ proved - incomplete|shostak|0.734|
|fs_sol_sub_TCC1|✅ proved - incomplete|shostak|0.060|
|fs_sol_sub_TCC2|✅ proved - incomplete|shostak|0.080|
|fs_sol_sub_TCC3|✅ proved - incomplete|shostak|0.057|
|fs_sol_sub|✅ proved - incomplete|shostak|0.190|
|env_sol_sub_TCC1|✅ proved - incomplete|shostak|0.644|
|env_sol_sub_TCC2|✅ proved - incomplete|shostak|0.853|
|env_sol_sub_TCC3|✅ proved - incomplete|shostak|0.080|
|env_sol_sub_TCC4|✅ proved - incomplete|shostak|0.058|
|env_sol_sub|✅ proved - incomplete|shostak|0.300|
|solution_odes_sub|✅ proved - incomplete|shostak|0.305|
|solution_odes_subset|✅ proved - incomplete|shostak|0.107|
|odes_hp_s_TCC1|✅ proved - incomplete|shostak|0.040|
|odes_hp_s_TCC2|✅ proved - incomplete|shostak|0.060|
|odes_hp_s_TCC3|✅ proved - incomplete|shostak|0.330|
|odes_hp_s|✅ proved - incomplete|shostak|0.365|
|fs_sol_hp_TCC1|✅ proved - incomplete|shostak|0.315|
|fs_sol_hp_TCC2|✅ proved - incomplete|shostak|0.373|
|fs_sol_hp_TCC3|✅ proved - incomplete|shostak|0.210|
|fs_sol_hp_TCC4|✅ proved - incomplete|shostak|0.375|
|fs_sol_hp_TCC5|✅ proved - incomplete|shostak|0.464|
|fs_sol_hp_fs_TCC1|✅ proved - incomplete|shostak|0.060|
|fs_sol_hp_fs|✅ proved - incomplete|shostak|0.387|
|fs_sol_hp_sol|✅ proved - incomplete|shostak|2.479|
|fs_sol_hp_sol_u|✅ proved - incomplete|shostak|0.000|
|diff_sol_eq_dd|✅ proved - incomplete|shostak|1.309|

## `differentiation`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_derivatives_TCC1|✅ proved - incomplete|shostak|0.030|
|IMP_derivatives_TCC2|✅ proved - incomplete|shostak|0.050|
|right_dd_i|✅ proved - incomplete|shostak|0.213|
|right_dd|✅ proved - incomplete|shostak|0.050|
|connection_proj|✅ proved - incomplete|shostak|0.100|
|right_ne_i|✅ proved - incomplete|shostak|0.199|
|right_ne|✅ proved - incomplete|shostak|0.050|
|ddl_dom_upto|✅ proved - incomplete|shostak|0.050|
|ddl_dom_weak|✅ proved - incomplete|shostak|0.050|
|ddl_dom_dd|✅ proved - incomplete|shostak|0.692|
|ddl_dom__upto_dd|✅ proved - incomplete|shostak|0.050|
|ddl_dom_noe|✅ proved - incomplete|shostak|0.040|
|dl_true_DDL|✅ proved - incomplete|shostak|0.150|
|dl_true_up_DDL|✅ proved - incomplete|shostak|0.140|
|derivable?_TCC1|✅ proved - incomplete|shostak|0.126|
|derivable?_TCC2|✅ proved - incomplete|shostak|0.040|
|derivable?_TCC3|✅ proved - incomplete|shostak|0.040|
|derivable_up?_TCC1|✅ proved - incomplete|shostak|0.050|
|derivable?_TCC4|✅ proved - incomplete|shostak|0.070|
|hathat_diff_real_TCC1|✅ proved - incomplete|shostak|0.050|
|hathat_diff_real_TCC2|✅ proved - incomplete|shostak|1.295|
|hathat_diff_real_TCC3|✅ proved - incomplete|shostak|0.131|
|hathat_diff_real|✅ proved - incomplete|shostak|0.180|
|expt_TCC1|✅ proved - incomplete|shostak|0.060|
|expt_TCC2|✅ proved - incomplete|shostak|0.050|
|sqrt_hathat_TCC1|✅ proved - incomplete|shostak|0.040|
|sqrt_hathat|✅ proved - incomplete|shostak|0.602|
|sqrt_hathat_neg_TCC1|✅ proved - incomplete|shostak|0.070|
|sqrt_hathat_neg|✅ proved - incomplete|shostak|0.236|
|expt_exp_equiv|✅ proved - incomplete|shostak|0.060|
|partial_diff_TCC1|✅ proved - incomplete|shostak|0.060|
|dl_derivable_const|✅ proved - incomplete|shostak|0.070|
|dl_partial_const_TCC1|✅ proved - incomplete|shostak|0.046|
|dl_partial_const|✅ proved - incomplete|shostak|0.210|
|dl_derivable_up_cnst|✅ proved - incomplete|shostak|0.060|
|dl_derivable_val|✅ proved - incomplete|shostak|0.086|
|dl_derivable_up_val|✅ proved - incomplete|shostak|0.070|
|dl_partial_val_TCC1|✅ proved - incomplete|shostak|0.040|
|dl_partial_val|✅ proved - incomplete|shostak|0.251|
|dl_derivable_plus|✅ proved - incomplete|shostak|0.153|
|dl_partial_plus_TCC1|✅ proved - incomplete|shostak|0.050|
|dl_partial_plus|✅ proved - incomplete|shostak|0.324|
|dl_derivable_up_sum|✅ proved - incomplete|shostak|0.080|
|dl_derivable_mult|✅ proved - incomplete|shostak|0.085|
|dl_partial_mult_TCC1|✅ proved - incomplete|shostak|0.040|
|dl_partial_mult|✅ proved - incomplete|shostak|0.435|
|dl_derivable_up_prod|✅ proved - incomplete|shostak|0.070|
|dl_derivable_minus|✅ proved - incomplete|shostak|0.085|
|dl_partial_minus_TCC1|✅ proved - incomplete|shostak|0.040|
|dl_partial_minus|✅ proved - incomplete|shostak|0.253|
|dl_derivable_up_minus|✅ proved - incomplete|shostak|0.130|
|dl_derivable_negative|✅ proved - incomplete|shostak|0.156|
|dl_partial_negative_TCC1|✅ proved - incomplete|shostak|0.040|
|dl_partial_negative|✅ proved - incomplete|shostak|0.260|
|dl_derivable_pow|✅ proved - incomplete|shostak|0.636|
|dl_derivable_up_pow|✅ proved - incomplete|shostak|0.213|
|dl_derivable_div|✅ proved - incomplete|shostak|0.366|
|dl_partial_div_TCC1|✅ proved - incomplete|shostak|0.040|
|dl_partial_div|✅ proved - incomplete|shostak|1.062|
|dl_derivable_up_div|✅ proved - incomplete|shostak|0.080|
|dl_derivable_comp_point_TCC1|✅ proved - incomplete|shostak|2.070|
|dl_derivable_comp_point_TCC2|✅ proved - incomplete|shostak|0.040|
|dl_derivable_comp_point_TCC3|✅ proved - incomplete|shostak|0.169|
|dl_derivable_comp_point|✅ proved - incomplete|shostak|0.282|
|dl_derivable_comp_TCC1|✅ proved - incomplete|shostak|0.050|
|dl_derivable_comp_TCC2|✅ proved - incomplete|shostak|0.059|
|dl_derivable_comp_TCC3|✅ proved - incomplete|shostak|0.170|
|dl_derivable_comp|✅ proved - incomplete|shostak|0.073|
|dl_partial_chain_TCC1|✅ proved - incomplete|shostak|0.040|
|dl_partial_chain_TCC2|✅ proved - incomplete|shostak|0.060|
|dl_partial_chain_TCC3|✅ proved - incomplete|shostak|0.050|
|dl_partial_chain_TCC4|✅ proved - incomplete|shostak|0.177|
|dl_partial_chain|✅ proved - incomplete|shostak|0.599|
|dl_derivable_exp|✅ proved - incomplete|shostak|2.113|
|dl_partial_exp_TCC1|✅ proved - incomplete|shostak|0.040|
|dl_partial_exp|✅ proved - incomplete|shostak|0.000|
|dl_derivable_sqrt|✅ proved - incomplete|shostak|0.541|
|dl_partial_sqrt_TCC1|✅ proved - incomplete|shostak|0.054|
|dl_partial_sqrt|✅ proved - incomplete|shostak|1.097|
|DIFT_last_TCC1|✅ proved - incomplete|shostak|0.040|
|DIFT_last_TCC2|✅ proved - incomplete|shostak|0.070|
|DIFT_last|✅ proved - incomplete|shostak|0.556|
|dl_dift_val_zero|✅ proved - incomplete|shostak|0.543|
|dl_dift_val_P|✅ proved - incomplete|shostak|1.149|
|dl_dift_val_TCC1|✅ proved - incomplete|shostak|0.045|
|dl_dift_val|✅ proved - incomplete|shostak|0.080|
|dl_dift_const|✅ proved - incomplete|shostak|0.924|
|dl_dift_plus_TCC1|✅ proved - incomplete|shostak|0.050|
|dl_dift_plus|✅ proved - incomplete|shostak|2.554|
|dl_dift_minus|✅ proved - incomplete|shostak|1.131|
|dl_dift_negative|✅ proved - incomplete|shostak|1.951|
|dl_dift_mult|✅ proved - incomplete|shostak|4.475|
|dl_dift_divsafe|✅ proved - incomplete|shostak|4.619|
|dl_dift_exp|✅ proved - incomplete|shostak|0.000|
|dl_dift_pow|✅ proved - incomplete|shostak|1.626|
|dl_dift_sqrt|✅ proved - incomplete|shostak|1.320|
|ddt_TCC1|✅ proved - incomplete|shostak|0.060|
|ddt_TCC2|✅ proved - incomplete|shostak|0.055|
|ddt_TCC3|✅ proved - incomplete|shostak|0.180|
|ddt_not_in_map|✅ proved - incomplete|shostak|0.305|
|ddt_in_map_TCC1|✅ proved - incomplete|shostak|0.220|
|ddt_in_map|✅ proved - incomplete|shostak|1.585|
|re_plus_cnst0|✅ proved - incomplete|shostak|0.050|
|cnst0_plus_re|✅ proved - incomplete|shostak|0.060|
|re_minus_cnst0|✅ proved - incomplete|shostak|0.060|
|cnst0_minus_re|✅ proved - incomplete|shostak|0.110|
|re_prod_cnst0|✅ proved - incomplete|shostak|0.050|
|cnst0_prod_re|✅ proved - incomplete|shostak|0.110|
|sqrt_safe_sq|✅ proved - incomplete|shostak|0.105|
|ODEs_P?_TCC1|✅ proved - incomplete|shostak|20.902|
|DIFT_TCC1|✅ proved - incomplete|shostak|0.000|
|DIFT_TCC2|✅ proved - incomplete|shostak|0.130|
|DIFT_TCC3|✅ proved - incomplete|shostak|0.090|
|DIFT_TCC4|✅ proved - incomplete|shostak|0.598|
|DIFT_TCC5|✅ proved - incomplete|shostak|0.090|
|DIFT_TCC6|✅ proved - incomplete|shostak|0.487|
|DIFT_TCC7|✅ proved - incomplete|shostak|0.090|
|DIFT_TCC8|✅ proved - incomplete|shostak|0.150|
|DIFT_TCC9|✅ proved - incomplete|shostak|0.090|
|DIFT_TCC10|✅ proved - incomplete|shostak|0.058|

## `chain_rule_re`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|env_2_vec_TCC1|✅ proved - incomplete|shostak|0.050|
|env_2_vec_TCC2|✅ proved - complete|shostak|0.060|
|env_2_vec_TCC3|✅ proved - complete|shostak|0.040|
|env_2_vec_TCC4|✅ proved - incomplete|shostak|0.080|
|env_2_vec_nth_TCC1|✅ proved - incomplete|shostak|0.130|
|env_2_vec_nth|✅ proved - incomplete|shostak|0.262|
|projv_dd|✅ proved - incomplete|shostak|4.075|
|proj_projv_TCC1|✅ proved - incomplete|shostak|0.070|
|proj_projv_TCC2|✅ proved - incomplete|shostak|0.227|
|proj_projv|✅ proved - incomplete|shostak|1.051|
|projv_proj_TCC1|✅ proved - complete|shostak|0.040|
|projv_proj_TCC2|✅ proved - incomplete|shostak|0.230|
|projv_proj|✅ proved - incomplete|shostak|0.532|
|ddl_dom_dom_dir|✅ proved - incomplete|shostak|1.417|
|dd_e_partial|✅ proved - incomplete|shostak|1.245|
|vec_2_env_TCC1|✅ proved - incomplete|shostak|0.140|
|vec_2_env_id|✅ proved - incomplete|shostak|0.261|
|env_2_vec_id|✅ proved - incomplete|shostak|0.317|
|vec_2_env_plus_TCC1|✅ proved - incomplete|shostak|0.210|
|vec_2_env_plus_TCC2|✅ proved - incomplete|shostak|0.068|
|vec_2_env_plus|✅ proved - incomplete|shostak|1.910|
|differentiable_re_p?_TCC1|✅ proved - incomplete|shostak|0.050|
|differentiable_re_p?_TCC2|✅ proved - incomplete|shostak|0.050|
|diff_env_change|✅ proved - incomplete|shostak|0.353|
|diff_re_diff_mv_TCC1|✅ proved - incomplete|shostak|0.040|
|diff_re_diff_mv|✅ proved - incomplete|shostak|0.289|
|der_re_p_TCC1|✅ proved - incomplete|shostak|0.294|
|der_re_TCC1|✅ proved - incomplete|shostak|3.511|
|der_re_grad_TCC1|✅ proved - incomplete|shostak|0.147|
|der_re_grad_TCC2|✅ proved - incomplete|shostak|0.290|
|der_re_grad|✅ proved - incomplete|shostak|0.446|
|diff_re_init_partial_TCC1|✅ proved - incomplete|shostak|0.137|
|diff_re_init_partial|✅ proved - incomplete|shostak|0.190|
|der_re_partial_TCC1|✅ proved - incomplete|shostak|0.186|
|der_re_partial|✅ proved - incomplete|shostak|0.160|
|re_diff_mv|✅ proved - incomplete|shostak|0.160|
|re_der_mv_TCC1|✅ proved - incomplete|shostak|0.113|
|re_der_mv|✅ proved - incomplete|shostak|0.330|
|re_diff_mv_ll_TCC1|✅ proved - incomplete|shostak|0.050|
|re_diff_mv_ll_TCC2|✅ proved - incomplete|shostak|0.363|
|re_diff_mv_ll_TCC3|✅ proved - incomplete|shostak|0.070|
|re_diff_mv_ll_TCC4|✅ proved - incomplete|shostak|0.060|
|re_diff_mv_ll_TCC5|✅ proved - incomplete|shostak|0.083|
|re_diff_mv_ll|✅ proved - incomplete|shostak|0.873|
|re_der_mv_ll_TCC1|✅ proved - incomplete|shostak|0.140|
|re_der_mv_ll_TCC2|✅ proved - incomplete|shostak|0.060|
|re_der_mv_ll_TCC3|✅ proved - incomplete|shostak|0.093|
|re_der_mv_ll|✅ proved - incomplete|shostak|0.842|
|with_e_vec_TCC1|✅ proved - complete|shostak|0.040|
|with_e_vec_TCC2|✅ proved - incomplete|shostak|0.253|
|with_e_vec|✅ proved - incomplete|shostak|0.550|
|derivable_partial_TCC1|✅ proved - incomplete|shostak|0.135|
|derivable_partial_TCC2|✅ proved - incomplete|shostak|0.060|
|derivable_partial_TCC3|✅ proved - incomplete|shostak|0.130|
|derivable_partial|✅ proved - incomplete|shostak|4.168|
|derivable_partial_D_TCC1|✅ proved - incomplete|shostak|0.051|
|derivable_partial_D|✅ proved - incomplete|shostak|0.000|
|deriv_partial_TCC1|✅ proved - incomplete|shostak|0.130|
|deriv_partial|✅ proved - incomplete|shostak|3.428|
|diff_re_derivable_partial_TCC1|✅ proved - incomplete|shostak|0.457|
|diff_re_derivable_partial|✅ proved - incomplete|shostak|0.070|
|diff_re_partialable_p_TCC1|✅ proved - incomplete|shostak|0.467|
|diff_re_partialable_p|✅ proved - incomplete|shostak|0.222|
|diff_re_derivable_up_TCC1|✅ proved - incomplete|shostak|0.453|
|diff_re_derivable_up|✅ proved - incomplete|shostak|0.130|
|der_re_partial_der_TCC1|✅ proved - incomplete|shostak|0.060|
|der_re_partial_der|✅ proved - incomplete|shostak|0.113|
|der_ll_partial_der_TCC1|✅ proved - incomplete|shostak|0.080|
|der_ll_partial_der_TCC2|✅ proved - incomplete|shostak|0.080|
|der_ll_partial_der_TCC3|✅ proved - incomplete|shostak|0.308|
|der_ll_partial_der_TCC4|✅ proved - incomplete|shostak|0.080|
|der_ll_partial_der_TCC5|✅ proved - incomplete|shostak|14.423|
|der_ll_partial_der|✅ proved - incomplete|shostak|0.160|
|eq_re_comp|✅ proved - incomplete|shostak|0.280|
|env_sol_env2vec|✅ proved - incomplete|shostak|0.374|
|e2v_diff_p_TCC1|✅ proved - incomplete|shostak|0.056|
|e2v_diff_p|✅ proved - incomplete|shostak|3.388|
|e2v_der_p_TCC1|✅ proved - incomplete|shostak|0.172|
|e2v_der_p_TCC2|✅ proved - incomplete|shostak|0.600|
|e2v_der_p_TCC3|✅ proved - incomplete|shostak|0.345|
|e2v_der_p|✅ proved - incomplete|shostak|0.386|
|e2v_der_p_not_in_map|✅ proved - incomplete|shostak|1.559|
|e2v_der_p_in_map|✅ proved - incomplete|shostak|2.510|
|e2v_der_p_in_map_ode|✅ proved - incomplete|shostak|5.399|
|e2v_re_diff_p_TCC1|✅ proved - incomplete|shostak|0.059|
|e2v_re_diff_p_TCC2|✅ proved - incomplete|shostak|0.060|
|e2v_re_diff_p|✅ proved - incomplete|shostak|1.726|
|e2v_re_der_p_TCC1|✅ proved - incomplete|shostak|0.080|
|e2v_re_der_p_TCC2|✅ proved - incomplete|shostak|0.064|
|e2v_re_der_p_TCC3|✅ proved - incomplete|shostak|0.140|
|e2v_re_der_p_TCC4|✅ proved - incomplete|shostak|0.060|
|e2v_re_der_p_TCC5|✅ proved - incomplete|shostak|0.090|
|e2v_re_der_p_TCC6|✅ proved - incomplete|shostak|0.177|
|e2v_re_der_p|✅ proved - incomplete|shostak|2.188|
|re_diff_chain_TCC1|✅ proved - incomplete|shostak|0.100|
|re_diff_chain_TCC2|✅ proved - incomplete|shostak|0.060|
|re_diff_chain_TCC3|✅ proved - incomplete|shostak|0.060|
|re_diff_chain|✅ proved - incomplete|shostak|0.234|
|init_re_der_chain_TCC1|✅ proved - incomplete|shostak|0.060|
|init_re_der_chain_TCC2|✅ proved - incomplete|shostak|0.060|
|init_re_der_chain_TCC3|✅ proved - incomplete|shostak|0.157|
|init_re_der_chain_TCC4|✅ proved - incomplete|shostak|0.050|
|init_re_der_chain_TCC5|✅ proved - incomplete|shostak|0.060|
|init_re_der_chain_TCC6|✅ proved - incomplete|shostak|0.080|
|init_re_der_chain_TCC7|✅ proved - incomplete|shostak|0.185|
|init_re_der_chain_TCC8|✅ proved - incomplete|shostak|0.060|
|init_re_der_chain_TCC9|✅ proved - incomplete|shostak|0.070|
|init_re_der_chain_TCC10|✅ proved - incomplete|shostak|1.130|
|init_re_der_chain_TCC11|✅ proved - incomplete|shostak|1.542|
|init_re_der_chain|✅ proved - incomplete|shostak|0.610|
|init2_re_der_chain_TCC1|✅ proved - incomplete|shostak|0.060|
|init2_re_der_chain_TCC2|✅ proved - incomplete|shostak|0.052|
|init2_re_der_chain_TCC3|✅ proved - incomplete|shostak|0.060|
|init2_re_der_chain|✅ proved - incomplete|shostak|2.515|
|init3_re_der_chain_TCC1|✅ proved - incomplete|shostak|0.060|
|init3_re_der_chain_TCC2|✅ proved - incomplete|shostak|0.050|
|init3_re_der_chain_TCC3|✅ proved - incomplete|shostak|0.080|
|init3_re_der_chain_TCC4|✅ proved - incomplete|shostak|0.210|
|init3_re_der_chain_TCC5|✅ proved - incomplete|shostak|0.095|
|init3_re_der_chain_TCC6|✅ proved - incomplete|shostak|0.100|
|init3_re_der_chain_TCC7|✅ proved - incomplete|shostak|0.210|
|init3_re_der_chain_TCC8|✅ proved - incomplete|shostak|0.274|
|init3_re_der_chain_TCC9|✅ proved - incomplete|shostak|0.302|
|init3_re_der_chain_TCC10|✅ proved - incomplete|shostak|0.110|
|init3_re_der_chain_TCC11|✅ proved - incomplete|shostak|0.100|
|init3_re_der_chain|✅ proved - incomplete|shostak|3.105|
|SUB_DIFTRe_sig_TCC1|✅ proved - incomplete|shostak|0.080|
|SUB_DIFTRe_sig_TCC2|✅ proved - incomplete|shostak|0.060|
|SUB_DIFTRe_sig_TCC3|✅ proved - incomplete|shostak|0.050|
|SUB_DIFTRe_sig|✅ proved - incomplete|shostak|15.875|
|derivable_M_nqbool?_TCC1|✅ proved - incomplete|shostak|0.280|
|derivable_M_nqbool?_TCC2|✅ proved - incomplete|shostak|0.283|
|derivable_M_normalize_rec|✅ proved - incomplete|shostak|0.284|
|derivable_M_normalize|✅ proved - incomplete|shostak|0.050|

## `diff_re_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|diff_re_cont_TCC1|✅ proved - incomplete|shostak|1.039|
|diff_re_cont_TCC2|✅ proved - incomplete|shostak|0.781|
|diff_re_cont|✅ proved - incomplete|shostak|13.263|
|diff_re_divbound_TCC1|✅ proved - incomplete|shostak|0.300|
|diff_re_divbound_TCC2|✅ proved - incomplete|shostak|0.081|
|diff_re_divbound|✅ proved - incomplete|shostak|1.183|
|diff_re_val|✅ proved - incomplete|shostak|0.000|
|diff_re_cnst|✅ proved - incomplete|shostak|0.705|
|diff_re_prod|✅ proved - incomplete|shostak|24.765|
|diff_re_pow|✅ proved - incomplete|shostak|0.216|
|diff_re_sum|✅ proved - incomplete|shostak|1.287|
|diff_re_diff|✅ proved - incomplete|shostak|0.100|
|diff_re_inv|✅ proved - incomplete|shostak|2:11.676|
|diff_re_div|✅ proved - incomplete|shostak|0.160|

## `continuity_re_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cont_re?_TCC1|✅ proved - complete|shostak|0.040|

## `continuity_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|f_sol_continuous|✅ proved - incomplete|shostak|0.120|
|c_delt_TCC1|✅ proved - incomplete|shostak|0.789|
|min_delt_TCC1|✅ proved - incomplete|shostak|0.090|
|min_delt_TCC2|✅ proved - incomplete|shostak|0.247|
|min_delt_TCC3|✅ proved - incomplete|shostak|0.462|
|min_delt_TCC4|✅ proved - incomplete|shostak|0.090|
|min_delt_TCC5|✅ proved - incomplete|shostak|0.250|
|min_delt_TCC6|✅ proved - incomplete|shostak|0.121|
|min_delt_TCC7|✅ proved - incomplete|shostak|0.080|
|min_delt_TCC8|✅ proved - incomplete|shostak|0.350|
|min_delt_TCC9|✅ proved - incomplete|shostak|0.088|
|min_delt_TCC10|✅ proved - incomplete|shostak|1.221|
|env_at_t_continuous|✅ proved - incomplete|shostak|0.295|
|re_env_continuous|✅ proved - incomplete|shostak|1.149|

## `continuity_re_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cont_re_val|✅ proved - complete|shostak|0.100|
|cont_re_cnst|✅ proved - complete|shostak|0.093|
|cont_re_prod|✅ proved - incomplete|shostak|4.890|
|cont_re_pow|✅ proved - incomplete|shostak|0.385|
|cont_re_sum|✅ proved - complete|shostak|0.403|
|cont_re_diff|✅ proved - incomplete|shostak|0.110|
|cont_re_div|✅ proved - incomplete|shostak|0.000|

## `fresh_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|fresh_re_cnst|✅ proved - complete|shostak|0.050|
|fresh_re_val|✅ proved - complete|shostak|0.050|
|fresh_re_sum|✅ proved - complete|shostak|0.090|
|fresh_re_minus|✅ proved - complete|shostak|0.070|
|fresh_re_prod|✅ proved - complete|shostak|0.090|
|fresh_re_div|✅ proved - complete|shostak|0.126|
|fresh_re_div_safe|✅ proved - incomplete|shostak|0.060|
|fresh_re_sqrt_safe|✅ proved - incomplete|shostak|0.060|
|fresh_re_pow|✅ proved - incomplete|shostak|0.197|
|fresh_re_exp|✅ proved - incomplete|shostak|0.070|
|fresh_re_expt|✅ proved - incomplete|shostak|0.921|
|fresh_re_ex1|✅ proved - complete|shostak|0.145|
|fresh_re_ex2|✅ proved - incomplete|shostak|0.147|
|not_fresh_re_val|✅ proved - complete|shostak|0.040|
|fresh_be_DLTRUE|✅ proved - complete|shostak|0.050|
|fresh_be_DLFALSE|✅ proved - complete|shostak|0.040|
|fresh_be_eq|✅ proved - complete|shostak|0.090|
|fresh_be_neq|✅ proved - complete|shostak|0.108|
|fresh_be_le|✅ proved - complete|shostak|0.100|
|fresh_be_lt|✅ proved - complete|shostak|0.100|
|fresh_be_ge|✅ proved - complete|shostak|0.100|
|fresh_be_gt|✅ proved - complete|shostak|0.099|
|fresh_be_or|✅ proved - complete|shostak|0.100|
|fresh_be_and|✅ proved - complete|shostak|0.100|
|fresh_be_implies|✅ proved - complete|shostak|0.100|
|fresh_be_not|✅ proved - complete|shostak|0.070|
|fresh_be_IFF|✅ proved - complete|shostak|0.130|
|fresh_fs_sol|✅ proved - incomplete|shostak|2.277|
|fresh_bstar_semantic_rel|✅ proved - incomplete|shostak|0.353|
|fresh_be_semantic_rel|✅ proved - incomplete|shostak|0.905|
|fresh_be_allruns|✅ proved - incomplete|shostak|0.110|
|fresh_be_allruns_e|✅ proved - incomplete|shostak|0.164|
|fresh_be_someruns|✅ proved - incomplete|shostak|0.119|

## `dynamic_logic`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|assign0_prop|✅ proved - incomplete|shostak|0.440|
|assign_assign_sub|✅ proved - incomplete|shostak|0.119|
|assign_sub_assign|✅ proved - incomplete|shostak|0.080|
|turnstile_TCC1|✅ proved - complete|shostak|0.070|
|turnstile_TCC2|✅ proved - complete|shostak|0.060|
|turnstile_TCC3|✅ proved - complete|shostak|0.102|
|turnstile_TCC4|✅ proved - incomplete|shostak|0.160|
|turnstile_TCC5|✅ proved - incomplete|shostak|0.150|
|turnstile_TCC6|✅ proved - incomplete|shostak|0.253|
|dlSequent_equiv|✅ proved - incomplete|shostak|0.190|
|dl_notR|✅ proved - incomplete|shostak|0.250|
|dl_notL|✅ proved - incomplete|shostak|0.264|
|dl_andR|✅ proved - incomplete|shostak|0.229|
|dl_andL|✅ proved - incomplete|shostak|0.240|
|dl_orR|✅ proved - incomplete|shostak|0.281|
|dl_orL|✅ proved - incomplete|shostak|0.300|
|dl_impliesR|✅ proved - incomplete|shostak|0.282|
|dl_impliesL|✅ proved - incomplete|shostak|0.361|
|dl_equivR|✅ proved - incomplete|shostak|0.758|
|dl_equivL|✅ proved - incomplete|shostak|0.440|
|dl_axiom|✅ proved - incomplete|shostak|0.280|
|dl_trueR|✅ proved - incomplete|shostak|0.149|
|dl_trueL|✅ proved - incomplete|shostak|0.180|
|dl_falseR|✅ proved - incomplete|shostak|0.180|
|dl_falseL|✅ proved - incomplete|shostak|0.130|
|dl_cut|✅ proved - incomplete|shostak|0.233|
|dl_weakR|✅ proved - incomplete|shostak|0.262|
|dl_weakL|✅ proved - incomplete|shostak|0.260|
|dl_forallR|✅ proved - incomplete|shostak|0.184|
|dl_forallL|✅ proved - incomplete|shostak|0.120|
|dl_existsR|✅ proved - incomplete|shostak|0.123|
|dl_existsL|✅ proved - incomplete|shostak|0.180|
|dl_existsrR|✅ proved - incomplete|shostak|0.120|
|dl_existsrRf|✅ proved - incomplete|shostak|0.134|
|dl_existsrL|✅ proved - incomplete|shostak|0.190|
|move_to_head_rec_TCC1|✅ proved - complete|shostak|0.070|
|move_to_head_rec_TCC2|✅ proved - complete|shostak|0.074|
|move_to_head_rec_TCC3|✅ proved - complete|shostak|0.120|
|move_to_head_rec_TCC4|✅ proved - complete|shostak|0.050|
|move_to_head_rec_nth_TCC1|✅ proved - complete|shostak|0.060|
|move_to_head_rec_nth_TCC2|✅ proved - complete|shostak|0.220|
|move_to_head_rec_nth_TCC3|✅ proved - complete|shostak|0.250|
|move_to_head_rec_nth_TCC4|✅ proved - complete|shostak|0.000|
|move_to_head_rec_nth_TCC5|✅ proved - complete|shostak|0.260|
|move_to_head_rec_nth_TCC6|✅ proved - complete|shostak|0.210|
|move_to_head_rec_nth_TCC7|✅ proved - complete|shostak|0.247|
|move_to_head_rec_nth_TCC8|✅ proved - complete|shostak|0.240|
|move_to_head_rec_nth_TCC9|✅ proved - incomplete|shostak|0.653|
|move_to_head_rec_nth_TCC10|✅ proved - incomplete|shostak|1.407|
|move_to_head_TCC1|✅ proved - complete|shostak|0.065|
|move_to_head_length|✅ proved - incomplete|shostak|0.260|
|move_to_head_car_TCC1|✅ proved - incomplete|shostak|0.070|
|move_to_head_car_TCC2|✅ proved - complete|shostak|0.050|
|move_to_head_car|✅ proved - incomplete|shostak|0.150|
|move_to_head_first_half_TCC1|✅ proved - incomplete|shostak|0.067|
|move_to_head_first_half_TCC2|✅ proved - complete|shostak|0.080|
|move_to_head_first_half|✅ proved - incomplete|shostak|0.260|
|move_to_head_second_half_TCC1|✅ proved - incomplete|shostak|0.060|
|move_to_head_second_half|✅ proved - incomplete|shostak|0.288|
|dl_moveR|✅ proved - incomplete|shostak|0.230|
|dl_moveL|✅ proved - incomplete|shostak|0.226|
|dl_hideR|✅ proved - incomplete|shostak|0.180|
|dl_hideL|✅ proved - incomplete|shostak|0.188|
|dl_boxd|✅ proved - incomplete|shostak|0.080|
|dl_assignb|✅ proved - incomplete|shostak|0.080|
|dl_assignb_restricted|✅ proved - incomplete|shostak|0.093|
|dl_assignd|✅ proved - incomplete|shostak|0.080|
|dl_testb|✅ proved - incomplete|shostak|0.080|
|dl_testb_true|✅ proved - incomplete|shostak|0.050|
|dl_testd|✅ proved - incomplete|shostak|0.087|
|dl_testd_true|✅ proved - incomplete|shostak|0.190|
|dl_choiceb|✅ proved - incomplete|shostak|0.190|
|dl_choiced|✅ proved - incomplete|shostak|0.176|
|dl_composeb|✅ proved - incomplete|shostak|0.130|
|dl_composed|✅ proved - incomplete|shostak|0.137|
|dl_iterateb|✅ proved - incomplete|shostak|0.160|
|dl_iterated|✅ proved - incomplete|shostak|0.245|
|dl_anyb_TCC1|✅ proved - complete|shostak|0.080|
|dl_anyb|✅ proved - incomplete|shostak|0.390|
|dl_anyd|✅ proved - incomplete|shostak|0.179|
|dl_boxand|✅ proved - incomplete|shostak|0.100|
|dl_diamondOr|✅ proved - incomplete|shostak|0.100|
|dl_iteratearrowb|✅ proved - incomplete|shostak|0.185|
|dl_starstarb|✅ proved - incomplete|shostak|0.646|
|dl_iterateIb|✅ proved - incomplete|shostak|0.829|
|dl_impliesallrunsb|✅ proved - incomplete|shostak|0.197|
|dl_impliesallrunsd|✅ proved - incomplete|shostak|0.186|
|dl_distimpliesb|✅ proved - incomplete|shostak|0.160|
|dl_const|✅ proved - incomplete|shostak|0.393|
|dl_constd|✅ proved - incomplete|shostak|0.376|
|dl_V|✅ proved - incomplete|shostak|1.508|
|dl_Vd|✅ proved - incomplete|shostak|1.565|
|dl_bool_const|✅ proved - incomplete|shostak|0.180|
|dl_subr_TCC1|✅ proved - incomplete|shostak|0.180|
|dl_subr|✅ proved - incomplete|shostak|0.266|
|dl_subl|✅ proved - incomplete|shostak|0.314|
|dl_subf|✅ proved - incomplete|shostak|0.306|
|dl_weak_impliesb|✅ proved - incomplete|shostak|0.136|
|dl_weak_impliesd|✅ proved - incomplete|shostak|0.134|
|dl_weak_impliesbE|✅ proved - incomplete|shostak|0.150|
|dl_weak_impliesdE|✅ proved - incomplete|shostak|0.142|
|dl_differential_auxiliary_TCC1|✅ proved - complete|shostak|0.070|
|dl_differential_auxiliary|✅ proved - incomplete|shostak|6.955|
|dl_bounded_loop|✅ proved - incomplete|shostak|0.661|
|dl_loop|✅ proved - incomplete|shostak|0.371|
|dl_MbL|✅ proved - incomplete|shostak|1.515|
|dl_MbR|✅ proved - incomplete|shostak|1.557|
|dl_MdL|✅ proved - incomplete|shostak|1.512|
|dl_MdR|✅ proved - incomplete|shostak|1.318|
|dl_MEbR|✅ proved - incomplete|shostak|1.339|
|dl_MEbRA|✅ proved - incomplete|shostak|0.599|
|dl_discrete_ghost|✅ proved - incomplete|shostak|0.364|
|dl_andb|✅ proved - incomplete|shostak|0.165|
|dl_andf|✅ proved - incomplete|shostak|0.237|
|dl_orb|✅ proved - incomplete|shostak|0.345|
|dl_hide_restR|✅ proved - incomplete|shostak|0.170|
|dl_hide_restL|✅ proved - incomplete|shostak|0.177|
|dl_hide_restLR|✅ proved - incomplete|shostak|0.430|
|dl_commuteEquivR|✅ proved - incomplete|shostak|0.255|
|dl_commuteEquivL|✅ proved - incomplete|shostak|0.232|
|dl_equivifyR|✅ proved - incomplete|shostak|0.320|
|dl_dW|✅ proved - incomplete|shostak|0.227|
|dl_dinit|✅ proved - incomplete|shostak|0.355|
|dl_dI_eq|✅ proved - incomplete|shostak|0.000|
|dl_dI_neq|✅ proved - incomplete|shostak|3.474|
|dl_dI_le|✅ proved - incomplete|shostak|0.000|
|dl_dI_lt|✅ proved - incomplete|shostak|2.773|
|dl_dI_ge|✅ proved - incomplete|shostak|3.018|
|dl_dI_gt|✅ proved - incomplete|shostak|0.000|
|dl_dI_lite|✅ proved - incomplete|shostak|12.576|
|dl_dI|✅ proved - incomplete|shostak|2.050|
|dl_dI_dlTRUE_TCC1|✅ proved - complete|shostak|0.050|
|dl_dI_dlTRUE|✅ proved - incomplete|shostak|0.090|
|dl_dC|✅ proved - incomplete|shostak|0.415|
|dl_differential_ghost_TCC1|✅ proved - complete|shostak|0.070|
|dl_differential_ghost|✅ proved - incomplete|shostak|7.504|

## `more_derivative_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_derivative_props_TCC1|✅ proved - complete|shostak|0.030|
|IMP_derivative_props_TCC2|✅ proved - complete|shostak|0.030|
|deriv_linear_TCC1|✅ proved - incomplete|shostak|0.050|
|deriv_linear|✅ proved - incomplete|shostak|8.649|

## `dl_solution`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|init_zip_sol_TCC1|✅ proved - complete|shostak|0.160|
|init_zip_sol_TCC2|✅ proved - complete|shostak|0.060|
|init_zip_sol_TCC3|✅ proved - complete|shostak|0.165|
|init_zip_sol_TCC4|✅ proved - complete|shostak|0.160|
|init_zip_sol_TCC5|✅ proved - complete|shostak|0.597|
|init_zip_sol_TCC6|✅ proved - complete|shostak|0.230|
|init_zip_sol_TCC7|✅ proved - complete|shostak|0.180|
|init_zip_sol_TCC8|✅ proved - complete|shostak|0.681|
|zip_sol_test_TCC1|✅ proved - incomplete|shostak|0.170|
|zip_sol_test_TCC2|✅ proved - incomplete|shostak|0.040|
|zip_sol_test_TCC3|✅ proved - complete|shostak|0.050|
|zip_sol_test|✅ proved - incomplete|shostak|0.220|
|zs_TCC1|✅ proved - complete|shostak|0.120|
|map_inj_zs|✅ proved - complete|shostak|0.303|
|solution_domain_ax_ode_TCC1|✅ proved - incomplete|shostak|0.050|
|solution_domain_ax_ode|✅ proved - incomplete|shostak|3.384|
|dl_solution_domain_iff|✅ proved - incomplete|shostak|1.387|
|dl_solution_domain|✅ proved - incomplete|shostak|0.070|
|solution_domain_ax_TCC1|✅ proved - complete|shostak|0.050|
|solution_domain_ax_TCC2|✅ proved - complete|shostak|0.130|
|solution_domain_ax|✅ proved - incomplete|shostak|1.275|
|solution_domain_ax_lin|✅ proved - incomplete|shostak|6.068|
|solution_domain_ax_lin_val|✅ proved - incomplete|shostak|9.508|
|solution_domain_ax_quad_TCC1|✅ proved - complete|shostak|0.050|
|solution_domain_ax_quad_TCC2|✅ proved - complete|shostak|0.130|
|solution_domain_ax_quad|✅ proved - incomplete|shostak|36.855|
|in_map_test_TCC1|✅ proved - complete|shostak|0.090|
|in_map_test|✅ proved - complete|shostak|0.140|
|get_index_TCC1|✅ proved - complete|shostak|0.060|
|get_index_TCC2|✅ proved - complete|shostak|0.070|
|get_index_TCC3|✅ proved - complete|shostak|0.200|
|get_index_TCC4|✅ proved - complete|shostak|0.059|
|get_index_TCC5|✅ proved - complete|shostak|0.140|
|get_index_TCC6|✅ proved - complete|shostak|0.421|
|cnst_val_0|✅ proved - complete|shostak|0.090|
|cnst_val_com|✅ proved - complete|shostak|0.080|
|val_inj|✅ proved - complete|shostak|0.060|
|in_map_ex_TCC1|✅ proved - complete|shostak|0.060|
|in_map_ex_TCC2|✅ proved - complete|shostak|0.065|
|in_map_ex_TCC3|✅ proved - complete|shostak|0.150|
|in_map_ex_eq|✅ proved - complete|shostak|0.449|
|env_c_val|✅ proved - complete|shostak|0.050|
|get_val_cnst_id_ex_TCC1|✅ proved - complete|shostak|0.240|
|get_val_cnst_id_ex_TCC2|✅ proved - complete|shostak|0.861|
|is_val_not_in_map?_TCC1|✅ proved - complete|shostak|0.701|
|Y_sol_ex_TCC1|✅ proved - complete|shostak|0.843|
|Y_sol_ex_TCC2|✅ proved - complete|shostak|0.060|
|cnst_lins_def|✅ proved - complete|shostak|1.057|
|y_sol_Ex_TCC1|✅ proved - complete|shostak|0.110|
|y_sol_Ex_TCC2|✅ proved - complete|shostak|0.449|
|y_sol_Ex_TCC3|✅ proved - complete|shostak|0.110|
|y_sol_Ex|✅ proved - incomplete|shostak|28.183|
|cnst_lins_sol_TCC1|✅ proved - incomplete|shostak|0.060|
|cnst_lins_sol|✅ proved - incomplete|shostak|41.228|
|cnst_lins_sol_u_TCC1|✅ proved - incomplete|shostak|0.050|
|cnst_lins_sol_u|✅ proved - incomplete|shostak|36.667|
|solution_domain_ax_cnst_imp_zip|✅ proved - incomplete|shostak|0.080|
|solution_domain_ax_cnst_imp_zip_no_hyp|✅ proved - incomplete|shostak|0.749|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib//float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-pvsio-fix.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210219-extratregies.lisp`|
