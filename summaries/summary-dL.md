# Summary for `dL`
Run started at 6:0:37 9/20/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **1063**   | **1063**    | **1063**    | **0**  | **17:48.896 s**   |
|top|0|0|0|0|0.000|
|hp_def|24|24|24|0|5.320|
|hp_expr|32|32|32|0|3.597|
|bounded_star_semantics|23|23|23|0|4.517|
|bool_expr|36|36|36|0|3.844|
|bound_variables_def|17|17|17|0|3.272|
|hp_props|19|19|19|0|10.988|
|substitution|58|58|58|0|10.479|
|ODEs_equiv|103|103|103|0|31.402|
|differentiation|120|120|120|0|56.905|
|chain_rule_re|134|134|134|0|1:43.674|
|diff_re_props|15|15|15|0|2:54.331|
|continuity_re_def|1|1|1|0|0.040|
|continuity_props|14|14|14|0|5.828|
|continuity_re_props|8|8|8|0|9.264|
|fresh_props|32|32|32|0|15.710|
|dynamic_logic|136|136|136|0|1:18.079|
|more_derivative_props|4|4|4|0|8.131|
|dl_solution|57|57|57|0|3:44.472|
|top_dtl|0|0|0|0|0.000|
|even_more_list_props|7|7|7|0|2.796|
|ltl_expr|37|37|37|0|36.666|
|trace_semantics|39|39|39|0|18.772|
|solution_odes_props|58|58|58|0|1:5.361|
|temporal_logic|61|61|61|0|2:20.422|
|trace_bounded_star_semantics|28|28|28|0|55.026|
## Detailed Summary 
## `top`
No formula declaration found.
## `hp_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|mapexpr_inj_TCC1|✅ proved - complete|shostak|0.185|
|mapexpr_inj_TCC2|✅ proved - complete|shostak|0.100|
|mapexpr_inj_cons|✅ proved - complete|shostak|0.240|
|mapexpr_inj_eq|✅ proved - complete|shostak|0.142|
|null_MapExprInj|✅ proved - complete|shostak|0.110|
|cdr_is_MapExprInj|✅ proved - complete|shostak|0.200|
|sub_mapexpr_inj_is_mapexpr_inj|✅ proved - incomplete|shostak|0.160|
|in_map_cons|✅ proved - complete|shostak|0.180|
|in_map_null_false|✅ proved - complete|shostak|0.050|
|not_in_map_null|✅ proved - complete|shostak|0.060|
|index_of_j|✅ proved - complete|shostak|0.073|
|expr_car_TCC1|✅ proved - complete|shostak|0.080|
|expr_car|✅ proved - complete|shostak|0.140|
|expr_not_car_TCC1|✅ proved - complete|shostak|0.108|
|expr_not_car|✅ proved - complete|shostak|0.270|
|max_var_rec_TCC1|✅ proved - complete|shostak|0.060|
|max_var_rec_TCC2|✅ proved - complete|shostak|0.030|
|max_var_rec_TCC3|✅ proved - complete|shostak|0.080|
|max_var_rec_pull|✅ proved - complete|shostak|0.471|
|max_var_max|✅ proved - complete|shostak|0.370|
|max_var_exist|✅ proved - complete|shostak|1.510|
|pigeon_map|✅ proved - complete|shostak|0.354|
|max_var_length|✅ proved - complete|shostak|0.220|
|nip_max_var|✅ proved - complete|shostak|0.127|

## `hp_expr`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_table_of_integrals_TCC1|✅ proved - complete|shostak|0.040|
|IMP_table_of_integrals_TCC2|✅ proved - incomplete|shostak|0.030|
|size_TCC1|✅ proved - incomplete|shostak|0.090|
|size_TCC2|✅ proved - incomplete|shostak|0.060|
|size_TCC3|✅ proved - incomplete|shostak|0.055|
|size_TCC4|✅ proved - incomplete|shostak|0.060|
|size_TCC5|✅ proved - incomplete|shostak|0.060|
|dd?_TCC1|✅ proved - incomplete|shostak|0.030|
|dd_deriv_domain|✅ proved - incomplete|shostak|0.180|
|dd_noe|✅ proved - incomplete|shostak|0.075|
|dd_con|✅ proved - incomplete|shostak|0.070|
|dd_ne|✅ proved - incomplete|shostak|0.060|
|dd_ci_TCC1|✅ proved - incomplete|shostak|0.060|
|dd_ci|✅ proved - incomplete|shostak|0.050|
|derivable_odes?_TCC1|✅ proved - incomplete|shostak|0.044|
|derivable_odes?_TCC2|✅ proved - incomplete|shostak|0.070|
|env_at_t_TCC1|✅ proved - incomplete|shostak|0.070|
|env_at_t_TCC2|✅ proved - incomplete|shostak|0.528|
|sol_at_t?_TCC1|✅ proved - incomplete|shostak|0.549|
|semantic_rel_TCC1|✅ proved - incomplete|shostak|0.060|
|semantic_rel_TCC2|✅ proved - incomplete|shostak|0.120|
|semantic_rel_TCC3|✅ proved - incomplete|shostak|0.114|
|semantic_rel_TCC4|✅ proved - incomplete|shostak|0.110|
|fresh_li?_TCC1|✅ proved - incomplete|shostak|0.050|
|fresh_li?_TCC2|✅ proved - incomplete|shostak|0.050|
|fresh_assign_nth|✅ proved - incomplete|shostak|0.255|
|fresh_mapexpr_inj|✅ proved - incomplete|shostak|0.225|
|fresh_mapexp_nth_2|✅ proved - incomplete|shostak|0.192|
|fresh_hp?_TCC1|✅ proved - incomplete|shostak|0.050|
|fresh_hp?_TCC2|✅ proved - incomplete|shostak|0.060|
|fresh_hp?_TCC3|✅ proved - incomplete|shostak|0.060|
|fresh_hp?_TCC4|✅ proved - incomplete|shostak|0.070|

## `bounded_star_semantics`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|semantic_rel_bounded_star_TCC1|✅ proved - complete|shostak|0.040|
|semantic_rel_bounded_star_TCC2|✅ proved - incomplete|shostak|0.070|
|semantic_rel_bounded_star_TCC3|✅ proved - complete|shostak|0.070|
|semantic_rel_bounded_star_TCC4|✅ proved - complete|shostak|0.084|
|semantic_rel_bounded_star_TCC5|✅ proved - complete|shostak|0.070|
|semantic_rel_bounded_star_TCC6|✅ proved - complete|shostak|0.080|
|semantic_rel_bounded_star_TCC7|✅ proved - incomplete|shostak|0.110|
|semantic_rel_bounded_star_TCC8|✅ proved - incomplete|shostak|0.090|
|semantic_rel_bounded_star_inc|✅ proved - incomplete|shostak|0.679|
|semantic_rel_implies_bounded|✅ proved - incomplete|shostak|0.499|
|bounded_implies_semantic_rel|✅ proved - incomplete|shostak|0.582|
|BSTAR_TCC1|✅ proved - complete|shostak|0.055|
|BSTAR_TCC2|✅ proved - complete|shostak|0.040|
|semantic_rel_bstar_reflexive|✅ proved - incomplete|shostak|0.090|
|semantic_rel_bounded_bstar_semantic_rel_bstar|✅ proved - incomplete|shostak|0.180|
|semantic_rel_star_bounded_star|✅ proved - incomplete|shostak|0.060|
|semantic_rel_star_bounded_star_con|✅ proved - incomplete|shostak|0.180|
|semantic_rel_bounded_star_seq_switch|✅ proved - incomplete|shostak|0.838|
|semantic_rel_star_seq_switch|✅ proved - incomplete|shostak|0.282|
|semantic_rel_bounded_star_iter|✅ proved - incomplete|shostak|0.100|
|semantic_rel_bounded_star_iter_con_TCC1|✅ proved - incomplete|shostak|0.080|
|semantic_rel_bounded_star_iter_con|✅ proved - incomplete|shostak|0.118|
|semantic_rel_star_iter|✅ proved - incomplete|shostak|0.120|

## `bool_expr`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|fresh?_TCC1|✅ proved - complete|shostak|0.050|
|fresh?_TCC2|✅ proved - complete|shostak|0.060|
|fresh_formula_nth|✅ proved - complete|shostak|0.147|
|fresh_be_invar|✅ proved - complete|shostak|0.215|
|dl_not_not|✅ proved - complete|shostak|0.050|
|dl_not_true|✅ proved - complete|shostak|0.040|
|dl_not_false|✅ proved - complete|shostak|0.050|
|dl_true_and|✅ proved - complete|shostak|0.040|
|dl_and_true|✅ proved - complete|shostak|0.050|
|dl_false_and|✅ proved - complete|shostak|0.050|
|dl_and_false|✅ proved - complete|shostak|0.047|
|dl_true_or|✅ proved - complete|shostak|0.050|
|dl_or_true|✅ proved - complete|shostak|0.040|
|dl_false_or|✅ proved - complete|shostak|0.050|
|dl_or_false|✅ proved - complete|shostak|0.050|
|dl_true_implies|✅ proved - complete|shostak|0.040|
|dl_implies_true|✅ proved - complete|shostak|0.050|
|dl_false_implies|✅ proved - complete|shostak|0.040|
|dl_implies_false|✅ proved - complete|shostak|0.047|
|dl_forall_bool|✅ proved - complete|shostak|0.040|
|dl_exists_bool|✅ proved - complete|shostak|0.040|
|nqb_to_be_TCC1|✅ proved - complete|shostak|0.050|
|nqb_to_be_TCC2|✅ proved - complete|shostak|0.050|
|nqb_to_be_TCC3|✅ proved - complete|shostak|0.050|
|nqb_to_be_TCC4|✅ proved - complete|shostak|0.050|
|nqb_to_be_TCC5|✅ proved - complete|shostak|0.040|
|nqb_normal?_TCC1|✅ proved - complete|shostak|0.048|
|nqb_normal?_TCC2|✅ proved - complete|shostak|0.040|
|normalize_rec_TCC1|✅ proved - complete|shostak|0.060|
|normalize_rec_TCC2|✅ proved - complete|shostak|0.220|
|normalize_rec_TCC3|✅ proved - complete|shostak|0.942|
|normalize_rec_TCC4|✅ proved - complete|shostak|0.208|
|normalize_rec_TCC5|✅ proved - complete|shostak|0.481|
|normalize_rec_TCC6|✅ proved - complete|shostak|0.209|
|normalize_rec_TCC7|✅ proved - complete|shostak|0.100|
|normalize_TCC1|✅ proved - complete|shostak|0.050|

## `bound_variables_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|bv_me_TCC1|✅ proved - complete|shostak|0.040|
|bv_me_TCC2|✅ proved - complete|shostak|0.060|
|bv_me_TCC3|✅ proved - complete|shostak|0.040|
|bv_me_TCC4|✅ proved - complete|shostak|0.100|
|bv_me_TCC5|✅ proved - incomplete|shostak|0.055|
|BV_TCC1|✅ proved - complete|shostak|0.040|
|BV_TCC2|✅ proved - complete|shostak|0.140|
|BV_TCC3|✅ proved - complete|shostak|0.130|
|BV_TCC4|✅ proved - complete|shostak|0.100|
|BV_TCC5|✅ proved - incomplete|shostak|0.060|
|bv_me_nth_TCC1|✅ proved - incomplete|shostak|0.210|
|bv_me_nth|✅ proved - incomplete|shostak|0.346|
|BV_implies_not_fresh|✅ proved - incomplete|shostak|0.969|
|BV_invar|✅ proved - incomplete|shostak|0.752|
|bvs?_TCC1|✅ proved - complete|shostak|0.060|
|bvs?_TCC2|✅ proved - incomplete|shostak|0.040|
|bvs?_TCC3|✅ proved - incomplete|shostak|0.130|

## `hp_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|assign1_prop_TCC1|✅ proved - complete|shostak|0.060|
|assign1_prop|✅ proved - incomplete|shostak|0.299|
|assign_prop_TCC1|✅ proved - complete|shostak|0.080|
|assign_prop|✅ proved - incomplete|shostak|0.000|
|assign_comm_TCC1|✅ proved - complete|shostak|0.110|
|assign_comm|✅ proved - incomplete|shostak|0.291|
|union_prop_TCC1|✅ proved - incomplete|shostak|0.154|
|union_prop|✅ proved - incomplete|shostak|0.260|
|union_prop_xx|✅ proved - incomplete|shostak|0.064|
|union_id|✅ proved - incomplete|shostak|0.060|
|union_comm|✅ proved - incomplete|shostak|0.210|
|seq_prop|✅ proved - incomplete|shostak|0.670|
|test_prop|✅ proved - incomplete|shostak|0.070|
|diff_prop_TCC1|✅ proved - incomplete|shostak|0.145|
|diff_prop|✅ proved - incomplete|shostak|6.775|
|star_prop_imp_TCC1|✅ proved - complete|shostak|0.080|
|star_prop_imp|✅ proved - incomplete|shostak|0.388|
|star2_prop_imp_TCC1|✅ proved - complete|shostak|0.070|
|star2_prop_imp|✅ proved - incomplete|shostak|1.202|

## `substitution`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|assign_env_TCC1|✅ proved - complete|shostak|0.060|
|assign_env_TCC2|✅ proved - complete|shostak|0.050|
|assign_env_TCC3|✅ proved - complete|shostak|0.130|
|assign_env_TCC4|✅ proved - complete|shostak|0.060|
|SUB_MapExpr_TCC1|✅ proved - complete|shostak|0.060|
|SUB_MapExpr_TCC2|✅ proved - complete|shostak|0.074|
|SUB_MapExpr_TCC3|✅ proved - complete|shostak|0.070|
|SUB_MapExpr_TCC4|✅ proved - complete|shostak|0.160|
|SUB_MapExpr_TCC5|✅ proved - complete|shostak|1.094|
|assign_env__TCC1|✅ proved - incomplete|shostak|0.090|
|assign_env__TCC2|✅ proved - incomplete|shostak|0.060|
|assign_env__alt_j_TCC1|✅ proved - complete|shostak|0.048|
|assign_env__alt_j_TCC2|✅ proved - complete|shostak|0.040|
|assign_env__alt_j_TCC3|✅ proved - incomplete|shostak|0.120|
|assign_env__alt_j_TCC4|✅ proved - incomplete|shostak|0.641|
|assign_env__alt_j_TCC5|✅ proved - incomplete|shostak|0.807|
|assign_env_phantom_eq_TCC1|✅ proved - complete|shostak|0.040|
|assign_env_phantom_eq|✅ proved - incomplete|shostak|0.650|
|assign_env_alt|✅ proved - incomplete|shostak|0.160|
|assign_env_ext|✅ proved - complete|shostak|0.356|
|assign_sub_ext|✅ proved - complete|shostak|0.055|
|SUB_MapVar_TCC1|✅ proved - complete|shostak|0.060|
|SUB_MapVar_TCC2|✅ proved - complete|shostak|0.160|
|SUB_MapVar_TCC3|✅ proved - complete|shostak|0.050|
|SUB_MapVar_TCC4|✅ proved - complete|shostak|0.120|
|SUB_MapVar_TCC5|✅ proved - complete|shostak|0.166|
|dl_subre_val|✅ proved - complete|shostak|0.070|
|dl_subre_const|✅ proved - complete|shostak|0.060|
|dl_subre_plus|✅ proved - complete|shostak|0.100|
|dl_subre_minus|✅ proved - complete|shostak|0.077|
|dl_subre_neg|✅ proved - complete|shostak|0.070|
|dl_subre_prod|✅ proved - complete|shostak|0.100|
|dl_subre_prod_scal1|✅ proved - complete|shostak|0.100|
|dl_subre_prod_scal2|✅ proved - complete|shostak|0.100|
|dl_subre_exp|✅ proved - incomplete|shostak|0.143|
|dl_sub_bool|✅ proved - complete|shostak|0.060|
|dl_sub_bool_restricted|✅ proved - complete|shostak|0.070|
|dl_sub_and|✅ proved - complete|shostak|0.070|
|dl_sub_or|✅ proved - complete|shostak|0.067|
|dl_sub_not|✅ proved - complete|shostak|0.070|
|dl_sub_implies|✅ proved - complete|shostak|0.060|
|dl_sub_ge|✅ proved - complete|shostak|0.060|
|dl_sub_gt|✅ proved - complete|shostak|0.070|
|dl_sub_le|✅ proved - complete|shostak|0.070|
|dl_sub_lt|✅ proved - complete|shostak|0.000|
|dl_sub_eq|✅ proved - complete|shostak|0.080|
|dl_sub_neq|✅ proved - complete|shostak|0.070|
|dl_sub_iff|✅ proved - complete|shostak|0.090|
|dl_sub_allruns0_x_neq_y_TCC1|✅ proved - incomplete|shostak|0.150|
|dl_sub_allruns0_x_neq_y_TCC2|✅ proved - incomplete|shostak|0.177|
|dl_sub_allruns0_x_neq_y_TCC3|✅ proved - complete|shostak|0.160|
|dl_sub_allruns0_x_neq_y_TCC4|✅ proved - incomplete|shostak|0.180|
|dl_sub_allruns0_x_neq_y|✅ proved - incomplete|shostak|1.884|
|dl_sub_allruns_assign0_x_eq_y_TCC1|✅ proved - incomplete|shostak|0.170|
|dl_sub_allruns_assign0_x_eq_y_TCC2|✅ proved - incomplete|shostak|0.163|
|dl_sub_allruns_assign0_x_eq_y|✅ proved - incomplete|shostak|0.417|
|dl_sub_forall|✅ proved - complete|shostak|0.070|
|dl_sub_exists|✅ proved - complete|shostak|0.070|

## `ODEs_equiv`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Re_TCC1|✅ proved - incomplete|shostak|0.090|
|Re_TCC2|✅ proved - complete|shostak|0.070|
|Re_TCC3|✅ proved - complete|shostak|0.050|
|Re_TCC4|✅ proved - complete|shostak|0.092|
|Re_TCC5|✅ proved - incomplete|shostak|0.230|
|Re_TCC6|✅ proved - complete|shostak|0.060|
|Re_nth_TCC1|✅ proved - incomplete|shostak|0.090|
|Re_nth|✅ proved - incomplete|shostak|0.297|
|env_vec_TCC1|✅ proved - complete|shostak|0.050|
|env_vec_TCC2|✅ proved - complete|shostak|0.142|
|env_vec_TCC3|✅ proved - incomplete|shostak|0.190|
|env_vec_nth_TCC1|✅ proved - incomplete|shostak|0.080|
|env_vec_nth|✅ proved - incomplete|shostak|0.363|
|r2v_2_fs_TCC1|✅ proved - complete|shostak|0.080|
|r2v_2_fs_TCC2|✅ proved - incomplete|shostak|0.050|
|r2v_2_fs_TCC3|✅ proved - incomplete|shostak|0.050|
|r2v_2_fs_TCC4|✅ proved - incomplete|shostak|0.487|
|r2v_2_fs_TCC5|✅ proved - incomplete|shostak|0.090|
|fs_2_r2v_TCC1|✅ proved - incomplete|shostak|0.050|
|fs_2_r2v_TCC2|✅ proved - incomplete|shostak|0.060|
|fs_2_r2v_TCC3|✅ proved - incomplete|shostak|0.067|
|fs_2_r2v_TCC4|✅ proved - incomplete|shostak|0.040|
|fs_2_r2v_TCC5|✅ proved - incomplete|shostak|0.070|
|fs_2_r2v_TCC6|✅ proved - incomplete|shostak|0.040|
|fs_2_r2v_TCC7|✅ proved - incomplete|shostak|0.040|
|fs_2_r2v_TCC8|✅ proved - incomplete|shostak|0.100|
|fs_2_r2v_TCC9|✅ proved - incomplete|shostak|0.405|
|fs_2_f2v_nth_TCC1|✅ proved - incomplete|shostak|0.080|
|fs_2_f2v_nth|✅ proved - incomplete|shostak|0.504|
|fs_2_f2v_eq_TCC1|✅ proved - incomplete|shostak|0.050|
|fs_2_f2v_eq_TCC2|✅ proved - incomplete|shostak|0.070|
|fs_2_f2v_eq_TCC3|✅ proved - incomplete|shostak|0.100|
|fs_2_f2v_eq_TCC4|✅ proved - incomplete|shostak|0.076|
|fs_2_f2v_eq_TCC5|✅ proved - incomplete|shostak|0.060|
|fs_2_f2v_eq_TCC6|✅ proved - incomplete|shostak|0.280|
|fs_2_f2v_eq|✅ proved - incomplete|shostak|2.574|
|Odes_f_TCC1|✅ proved - incomplete|shostak|0.208|
|cont_f?_TCC1|✅ proved - incomplete|shostak|0.080|
|cont_f?_TCC2|✅ proved - incomplete|shostak|0.060|
|cont_f?_TCC3|✅ proved - incomplete|shostak|0.070|
|cont_f?_TCC4|✅ proved - incomplete|shostak|0.200|
|cont_f?_TCC5|✅ proved - incomplete|shostak|0.135|
|cont_f?_TCC6|✅ proved - incomplete|shostak|0.070|
|max_diff_TCC1|✅ proved - incomplete|shostak|0.040|
|max_diff_TCC2|✅ proved - incomplete|shostak|0.140|
|max_diff_TCC3|✅ proved - incomplete|shostak|0.057|
|max_diff_TCC4|✅ proved - incomplete|shostak|0.050|
|max_diff_TCC5|✅ proved - incomplete|shostak|0.170|
|max_diff_TCC6|✅ proved - incomplete|shostak|0.210|
|max_diff_TCC7|✅ proved - incomplete|shostak|0.080|
|max_diff_TCC8|✅ proved - incomplete|shostak|0.053|
|max_diff_TCC9|✅ proved - incomplete|shostak|1.180|
|max_diff_norm_inf_TCC1|✅ proved - incomplete|shostak|0.040|
|max_diff_norm_inf_TCC2|✅ proved - incomplete|shostak|0.077|
|max_diff_norm_inf_TCC3|✅ proved - incomplete|shostak|0.050|
|max_diff_norm_inf_TCC4|✅ proved - incomplete|shostak|0.080|
|max_diff_norm_inf_TCC5|✅ proved - incomplete|shostak|0.120|
|max_diff_norm_inf|✅ proved - incomplete|shostak|3.696|
|cdr_TCC1|✅ proved - incomplete|shostak|0.050|
|cdr_TCC2|✅ proved - incomplete|shostak|0.047|
|cdr_const_TCC1|✅ proved - incomplete|shostak|0.050|
|cdr_const|✅ proved - incomplete|shostak|0.190|
|Lip_ODEs?_TCC1|✅ proved - incomplete|shostak|0.070|
|Lip_ODEs?_TCC2|✅ proved - incomplete|shostak|0.117|
|Lip_ODEs?_TCC3|✅ proved - incomplete|shostak|0.160|
|Lip_ODEs?_TCC4|✅ proved - incomplete|shostak|0.103|
|Lip_DDL_ODEs|✅ proved - incomplete|shostak|3.130|
|cont_DDL_ODEs|✅ proved - incomplete|shostak|0.000|
|diff_sol_Lip_TCC1|✅ proved - incomplete|shostak|0.575|
|diff_sol_Lip_TCC2|✅ proved - incomplete|shostak|0.050|
|diff_sol_Lip|✅ proved - incomplete|shostak|0.000|
|diff_sol_eq_TCC1|✅ proved - incomplete|shostak|0.130|
|diff_sol_eq_TCC2|✅ proved - incomplete|shostak|0.050|
|diff_sol_eq|✅ proved - incomplete|shostak|0.063|
|fs_sol_TCC1|✅ proved - incomplete|shostak|0.100|
|ODEs_s_sub_TCC1|✅ proved - incomplete|shostak|0.654|
|ODEs_s_sub_TCC2|✅ proved - incomplete|shostak|0.080|
|ODEs_s_sub|✅ proved - incomplete|shostak|0.769|
|fs_sol_sub_TCC1|✅ proved - incomplete|shostak|0.068|
|fs_sol_sub_TCC2|✅ proved - incomplete|shostak|0.080|
|fs_sol_sub_TCC3|✅ proved - incomplete|shostak|0.060|
|fs_sol_sub|✅ proved - incomplete|shostak|0.204|
|env_sol_sub_TCC1|✅ proved - incomplete|shostak|0.664|
|env_sol_sub_TCC2|✅ proved - incomplete|shostak|0.889|
|env_sol_sub_TCC3|✅ proved - incomplete|shostak|0.080|
|env_sol_sub_TCC4|✅ proved - incomplete|shostak|0.066|
|env_sol_sub|✅ proved - incomplete|shostak|0.310|
|solution_odes_sub|✅ proved - incomplete|shostak|0.314|
|solution_odes_subset|✅ proved - incomplete|shostak|0.105|
|odes_hp_s_TCC1|✅ proved - incomplete|shostak|0.050|
|odes_hp_s_TCC2|✅ proved - incomplete|shostak|0.060|
|odes_hp_s_TCC3|✅ proved - incomplete|shostak|0.343|
|odes_hp_s|✅ proved - incomplete|shostak|0.363|
|fs_sol_hp_TCC1|✅ proved - incomplete|shostak|0.330|
|fs_sol_hp_TCC2|✅ proved - incomplete|shostak|0.433|
|fs_sol_hp_TCC3|✅ proved - incomplete|shostak|0.222|
|fs_sol_hp_TCC4|✅ proved - incomplete|shostak|0.410|
|fs_sol_hp_TCC5|✅ proved - incomplete|shostak|0.463|
|fs_sol_hp_fs_TCC1|✅ proved - incomplete|shostak|0.064|
|fs_sol_hp_fs|✅ proved - incomplete|shostak|0.400|
|fs_sol_hp_sol|✅ proved - incomplete|shostak|2.540|
|fs_sol_hp_sol_u|✅ proved - incomplete|shostak|1.068|
|diff_sol_eq_dd|✅ proved - incomplete|shostak|1.335|

## `differentiation`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_derivatives_TCC1|✅ proved - incomplete|shostak|0.030|
|IMP_derivatives_TCC2|✅ proved - incomplete|shostak|0.050|
|right_dd_i|✅ proved - incomplete|shostak|0.218|
|right_dd|✅ proved - incomplete|shostak|0.060|
|connection_proj|✅ proved - incomplete|shostak|0.100|
|right_ne_i|✅ proved - incomplete|shostak|0.198|
|right_ne|✅ proved - incomplete|shostak|0.050|
|ddl_dom_upto|✅ proved - incomplete|shostak|0.050|
|ddl_dom_weak|✅ proved - incomplete|shostak|0.060|
|ddl_dom_dd|✅ proved - incomplete|shostak|0.713|
|ddl_dom__upto_dd|✅ proved - incomplete|shostak|0.050|
|ddl_dom_noe|✅ proved - incomplete|shostak|0.058|
|dl_true_DDL|✅ proved - incomplete|shostak|0.160|
|dl_true_up_DDL|✅ proved - incomplete|shostak|0.150|
|derivable?_TCC1|✅ proved - incomplete|shostak|0.120|
|derivable?_TCC2|✅ proved - incomplete|shostak|0.056|
|derivable?_TCC3|✅ proved - incomplete|shostak|0.050|
|derivable_up?_TCC1|✅ proved - incomplete|shostak|0.050|
|derivable?_TCC4|✅ proved - incomplete|shostak|0.080|
|hathat_diff_real_TCC1|✅ proved - incomplete|shostak|0.050|
|hathat_diff_real_TCC2|✅ proved - incomplete|shostak|1.100|
|hathat_diff_real_TCC3|✅ proved - incomplete|shostak|0.050|
|hathat_diff_real|✅ proved - incomplete|shostak|0.190|
|expt_TCC1|✅ proved - incomplete|shostak|0.050|
|expt_TCC2|✅ proved - incomplete|shostak|0.059|
|sqrt_hathat_TCC1|✅ proved - incomplete|shostak|0.050|
|sqrt_hathat|✅ proved - incomplete|shostak|0.616|
|sqrt_hathat_neg_TCC1|✅ proved - incomplete|shostak|0.080|
|sqrt_hathat_neg|✅ proved - incomplete|shostak|0.240|
|expt_exp_equiv|✅ proved - incomplete|shostak|0.071|
|partial_diff_TCC1|✅ proved - incomplete|shostak|0.060|
|dl_derivable_const|✅ proved - incomplete|shostak|0.070|
|dl_partial_const_TCC1|✅ proved - incomplete|shostak|0.050|
|dl_partial_const|✅ proved - incomplete|shostak|0.203|
|dl_derivable_up_cnst|✅ proved - incomplete|shostak|0.068|
|dl_derivable_val|✅ proved - incomplete|shostak|0.100|
|dl_derivable_up_val|✅ proved - incomplete|shostak|0.070|
|dl_partial_val_TCC1|✅ proved - incomplete|shostak|0.050|
|dl_partial_val|✅ proved - incomplete|shostak|0.264|
|dl_derivable_plus|✅ proved - incomplete|shostak|0.154|
|dl_partial_plus_TCC1|✅ proved - incomplete|shostak|0.060|
|dl_partial_plus|✅ proved - incomplete|shostak|0.343|
|dl_derivable_up_sum|✅ proved - incomplete|shostak|0.080|
|dl_derivable_mult|✅ proved - incomplete|shostak|0.086|
|dl_partial_mult_TCC1|✅ proved - incomplete|shostak|0.040|
|dl_partial_mult|✅ proved - incomplete|shostak|0.463|
|dl_derivable_up_prod|✅ proved - incomplete|shostak|0.090|
|dl_derivable_minus|✅ proved - incomplete|shostak|0.094|
|dl_partial_minus_TCC1|✅ proved - incomplete|shostak|0.040|
|dl_partial_minus|✅ proved - incomplete|shostak|0.260|
|dl_derivable_up_minus|✅ proved - incomplete|shostak|0.130|
|dl_derivable_negative|✅ proved - incomplete|shostak|0.157|
|dl_partial_negative_TCC1|✅ proved - incomplete|shostak|0.040|
|dl_partial_negative|✅ proved - incomplete|shostak|0.281|
|dl_derivable_pow|✅ proved - incomplete|shostak|0.653|
|dl_derivable_up_pow|✅ proved - incomplete|shostak|0.232|
|dl_derivable_div|✅ proved - incomplete|shostak|0.385|
|dl_partial_div_TCC1|✅ proved - incomplete|shostak|0.040|
|dl_partial_div|✅ proved - incomplete|shostak|1.102|
|dl_derivable_up_div|✅ proved - incomplete|shostak|0.090|
|dl_derivable_comp_point_TCC1|✅ proved - incomplete|shostak|2.125|
|dl_derivable_comp_point_TCC2|✅ proved - incomplete|shostak|0.054|
|dl_derivable_comp_point_TCC3|✅ proved - incomplete|shostak|0.170|
|dl_derivable_comp_point|✅ proved - incomplete|shostak|0.288|
|dl_derivable_comp_TCC1|✅ proved - incomplete|shostak|0.050|
|dl_derivable_comp_TCC2|✅ proved - incomplete|shostak|0.067|
|dl_derivable_comp_TCC3|✅ proved - incomplete|shostak|0.170|
|dl_derivable_comp|✅ proved - incomplete|shostak|0.079|
|dl_partial_chain_TCC1|✅ proved - incomplete|shostak|0.050|
|dl_partial_chain_TCC2|✅ proved - incomplete|shostak|0.060|
|dl_partial_chain_TCC3|✅ proved - incomplete|shostak|0.050|
|dl_partial_chain_TCC4|✅ proved - incomplete|shostak|0.186|
|dl_partial_chain|✅ proved - incomplete|shostak|0.605|
|dl_derivable_exp|✅ proved - incomplete|shostak|0.000|
|dl_partial_exp_TCC1|✅ proved - incomplete|shostak|0.040|
|dl_partial_exp|✅ proved - incomplete|shostak|6.182|
|dl_derivable_sqrt|✅ proved - incomplete|shostak|0.559|
|dl_partial_sqrt_TCC1|✅ proved - incomplete|shostak|0.050|
|dl_partial_sqrt|✅ proved - incomplete|shostak|1.113|
|DIFT_last_TCC1|✅ proved - incomplete|shostak|0.050|
|DIFT_last_TCC2|✅ proved - incomplete|shostak|0.080|
|DIFT_last|✅ proved - incomplete|shostak|0.569|
|dl_dift_val_zero|✅ proved - incomplete|shostak|0.561|
|dl_dift_val_P|✅ proved - incomplete|shostak|1.182|
|dl_dift_val_TCC1|✅ proved - incomplete|shostak|0.050|
|dl_dift_val|✅ proved - incomplete|shostak|0.080|
|dl_dift_const|✅ proved - incomplete|shostak|0.933|
|dl_dift_plus_TCC1|✅ proved - incomplete|shostak|0.050|
|dl_dift_plus|✅ proved - incomplete|shostak|2.602|
|dl_dift_minus|✅ proved - incomplete|shostak|1.159|
|dl_dift_negative|✅ proved - incomplete|shostak|2.007|
|dl_dift_mult|✅ proved - incomplete|shostak|0.000|
|dl_dift_divsafe|✅ proved - incomplete|shostak|4.813|
|dl_dift_exp|✅ proved - incomplete|shostak|1.043|
|dl_dift_pow|✅ proved - incomplete|shostak|1.641|
|dl_dift_sqrt|✅ proved - incomplete|shostak|1.348|
|ddt_TCC1|✅ proved - incomplete|shostak|0.069|
|ddt_TCC2|✅ proved - incomplete|shostak|0.050|
|ddt_TCC3|✅ proved - incomplete|shostak|0.150|
|ddt_not_in_map|✅ proved - incomplete|shostak|0.299|
|ddt_in_map_TCC1|✅ proved - incomplete|shostak|0.210|
|ddt_in_map|✅ proved - incomplete|shostak|1.581|
|re_plus_cnst0|✅ proved - incomplete|shostak|0.071|
|cnst0_plus_re|✅ proved - incomplete|shostak|0.060|
|re_minus_cnst0|✅ proved - incomplete|shostak|0.060|
|cnst0_minus_re|✅ proved - incomplete|shostak|0.110|
|re_prod_cnst0|✅ proved - incomplete|shostak|0.060|
|cnst0_prod_re|✅ proved - incomplete|shostak|0.124|
|sqrt_safe_sq|✅ proved - incomplete|shostak|0.120|
|ODEs_P?_TCC1|✅ proved - incomplete|shostak|11.373|
|DIFT_TCC1|✅ proved - incomplete|shostak|0.073|
|DIFT_TCC2|✅ proved - incomplete|shostak|0.140|
|DIFT_TCC3|✅ proved - incomplete|shostak|0.090|
|DIFT_TCC4|✅ proved - incomplete|shostak|0.603|
|DIFT_TCC5|✅ proved - incomplete|shostak|0.090|
|DIFT_TCC6|✅ proved - incomplete|shostak|0.487|
|DIFT_TCC7|✅ proved - incomplete|shostak|0.100|
|DIFT_TCC8|✅ proved - incomplete|shostak|0.155|
|DIFT_TCC9|✅ proved - incomplete|shostak|0.090|
|DIFT_TCC10|✅ proved - incomplete|shostak|0.060|

## `chain_rule_re`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|env_2_vec_TCC1|✅ proved - incomplete|shostak|0.050|
|env_2_vec_TCC2|✅ proved - complete|shostak|0.060|
|env_2_vec_TCC3|✅ proved - complete|shostak|0.050|
|env_2_vec_TCC4|✅ proved - incomplete|shostak|0.080|
|env_2_vec_nth_TCC1|✅ proved - incomplete|shostak|0.152|
|env_2_vec_nth|✅ proved - incomplete|shostak|0.250|
|projv_dd|✅ proved - incomplete|shostak|4.224|
|proj_projv_TCC1|✅ proved - incomplete|shostak|0.071|
|proj_projv_TCC2|✅ proved - incomplete|shostak|0.240|
|proj_projv|✅ proved - incomplete|shostak|1.071|
|projv_proj_TCC1|✅ proved - complete|shostak|0.050|
|projv_proj_TCC2|✅ proved - incomplete|shostak|0.230|
|projv_proj|✅ proved - incomplete|shostak|0.540|
|ddl_dom_dom_dir|✅ proved - incomplete|shostak|1.452|
|dd_e_partial|✅ proved - incomplete|shostak|1.294|
|vec_2_env_TCC1|✅ proved - incomplete|shostak|0.140|
|vec_2_env_id|✅ proved - incomplete|shostak|0.260|
|env_2_vec_id|✅ proved - incomplete|shostak|0.310|
|vec_2_env_plus_TCC1|✅ proved - incomplete|shostak|0.220|
|vec_2_env_plus_TCC2|✅ proved - incomplete|shostak|0.082|
|vec_2_env_plus|✅ proved - incomplete|shostak|1.953|
|differentiable_re_p?_TCC1|✅ proved - incomplete|shostak|0.050|
|differentiable_re_p?_TCC2|✅ proved - incomplete|shostak|0.050|
|diff_env_change|✅ proved - incomplete|shostak|0.362|
|diff_re_diff_mv_TCC1|✅ proved - incomplete|shostak|0.050|
|diff_re_diff_mv|✅ proved - incomplete|shostak|0.298|
|der_re_p_TCC1|✅ proved - incomplete|shostak|0.312|
|der_re_TCC1|✅ proved - incomplete|shostak|3.582|
|der_re_grad_TCC1|✅ proved - incomplete|shostak|0.155|
|der_re_grad_TCC2|✅ proved - incomplete|shostak|0.305|
|der_re_grad|✅ proved - incomplete|shostak|0.457|
|diff_re_init_partial_TCC1|✅ proved - incomplete|shostak|0.140|
|diff_re_init_partial|✅ proved - incomplete|shostak|0.199|
|der_re_partial_TCC1|✅ proved - incomplete|shostak|0.190|
|der_re_partial|✅ proved - incomplete|shostak|0.170|
|re_diff_mv|✅ proved - incomplete|shostak|0.170|
|re_der_mv_TCC1|✅ proved - incomplete|shostak|0.120|
|re_der_mv|✅ proved - incomplete|shostak|0.342|
|re_diff_mv_ll_TCC1|✅ proved - incomplete|shostak|0.060|
|re_diff_mv_ll_TCC2|✅ proved - incomplete|shostak|0.383|
|re_diff_mv_ll_TCC3|✅ proved - incomplete|shostak|0.070|
|re_diff_mv_ll_TCC4|✅ proved - incomplete|shostak|0.070|
|re_diff_mv_ll_TCC5|✅ proved - incomplete|shostak|0.093|
|re_diff_mv_ll|✅ proved - incomplete|shostak|0.901|
|re_der_mv_ll_TCC1|✅ proved - incomplete|shostak|0.140|
|re_der_mv_ll_TCC2|✅ proved - incomplete|shostak|0.060|
|re_der_mv_ll_TCC3|✅ proved - incomplete|shostak|0.085|
|re_der_mv_ll|✅ proved - incomplete|shostak|0.862|
|with_e_vec_TCC1|✅ proved - complete|shostak|0.050|
|with_e_vec_TCC2|✅ proved - incomplete|shostak|0.261|
|with_e_vec|✅ proved - incomplete|shostak|0.573|
|derivable_partial_TCC1|✅ proved - incomplete|shostak|0.140|
|derivable_partial_TCC2|✅ proved - incomplete|shostak|0.070|
|derivable_partial_TCC3|✅ proved - incomplete|shostak|0.130|
|derivable_partial|✅ proved - incomplete|shostak|0.000|
|derivable_partial_D_TCC1|✅ proved - incomplete|shostak|0.060|
|derivable_partial_D|✅ proved - incomplete|shostak|0.695|
|deriv_partial_TCC1|✅ proved - incomplete|shostak|0.140|
|deriv_partial|✅ proved - incomplete|shostak|3.456|
|diff_re_derivable_partial_TCC1|✅ proved - incomplete|shostak|0.476|
|diff_re_derivable_partial|✅ proved - incomplete|shostak|0.080|
|diff_re_partialable_p_TCC1|✅ proved - incomplete|shostak|0.479|
|diff_re_partialable_p|✅ proved - incomplete|shostak|0.231|
|diff_re_derivable_up_TCC1|✅ proved - incomplete|shostak|0.460|
|diff_re_derivable_up|✅ proved - incomplete|shostak|0.130|
|der_re_partial_der_TCC1|✅ proved - incomplete|shostak|0.069|
|der_re_partial_der|✅ proved - incomplete|shostak|0.130|
|der_ll_partial_der_TCC1|✅ proved - incomplete|shostak|0.100|
|der_ll_partial_der_TCC2|✅ proved - incomplete|shostak|0.086|
|der_ll_partial_der_TCC3|✅ proved - incomplete|shostak|0.310|
|der_ll_partial_der_TCC4|✅ proved - incomplete|shostak|0.080|
|der_ll_partial_der_TCC5|✅ proved - incomplete|shostak|14.642|
|der_ll_partial_der|✅ proved - incomplete|shostak|0.150|
|eq_re_comp|✅ proved - incomplete|shostak|0.290|
|env_sol_env2vec|✅ proved - incomplete|shostak|0.384|
|e2v_diff_p_TCC1|✅ proved - incomplete|shostak|0.065|
|e2v_diff_p|✅ proved - incomplete|shostak|3.538|
|e2v_der_p_TCC1|✅ proved - incomplete|shostak|0.170|
|e2v_der_p_TCC2|✅ proved - incomplete|shostak|0.612|
|e2v_der_p_TCC3|✅ proved - incomplete|shostak|0.353|
|e2v_der_p|✅ proved - incomplete|shostak|0.400|
|e2v_der_p_not_in_map|✅ proved - incomplete|shostak|1.593|
|e2v_der_p_in_map|✅ proved - incomplete|shostak|1.460|
|e2v_der_p_in_map_ode|✅ proved - incomplete|shostak|5.567|
|e2v_re_diff_p_TCC1|✅ proved - incomplete|shostak|0.070|
|e2v_re_diff_p_TCC2|✅ proved - incomplete|shostak|0.070|
|e2v_re_diff_p|✅ proved - incomplete|shostak|1.777|
|e2v_re_der_p_TCC1|✅ proved - incomplete|shostak|0.080|
|e2v_re_der_p_TCC2|✅ proved - incomplete|shostak|0.070|
|e2v_re_der_p_TCC3|✅ proved - incomplete|shostak|0.151|
|e2v_re_der_p_TCC4|✅ proved - incomplete|shostak|0.070|
|e2v_re_der_p_TCC5|✅ proved - incomplete|shostak|0.100|
|e2v_re_der_p_TCC6|✅ proved - incomplete|shostak|0.187|
|e2v_re_der_p|✅ proved - incomplete|shostak|2.228|
|re_diff_chain_TCC1|✅ proved - incomplete|shostak|0.108|
|re_diff_chain_TCC2|✅ proved - incomplete|shostak|0.050|
|re_diff_chain_TCC3|✅ proved - incomplete|shostak|0.060|
|re_diff_chain|✅ proved - incomplete|shostak|0.242|
|init_re_der_chain_TCC1|✅ proved - incomplete|shostak|0.070|
|init_re_der_chain_TCC2|✅ proved - incomplete|shostak|0.067|
|init_re_der_chain_TCC3|✅ proved - incomplete|shostak|0.160|
|init_re_der_chain_TCC4|✅ proved - incomplete|shostak|0.060|
|init_re_der_chain_TCC5|✅ proved - incomplete|shostak|0.070|
|init_re_der_chain_TCC6|✅ proved - incomplete|shostak|0.089|
|init_re_der_chain_TCC7|✅ proved - incomplete|shostak|0.190|
|init_re_der_chain_TCC8|✅ proved - incomplete|shostak|0.060|
|init_re_der_chain_TCC9|✅ proved - incomplete|shostak|0.070|
|init_re_der_chain_TCC10|✅ proved - incomplete|shostak|1.162|
|init_re_der_chain_TCC11|✅ proved - incomplete|shostak|1.580|
|init_re_der_chain|✅ proved - incomplete|shostak|0.625|
|init2_re_der_chain_TCC1|✅ proved - incomplete|shostak|0.060|
|init2_re_der_chain_TCC2|✅ proved - incomplete|shostak|0.075|
|init2_re_der_chain_TCC3|✅ proved - incomplete|shostak|0.070|
|init2_re_der_chain|✅ proved - incomplete|shostak|2.623|
|init3_re_der_chain_TCC1|✅ proved - incomplete|shostak|0.062|
|init3_re_der_chain_TCC2|✅ proved - incomplete|shostak|0.060|
|init3_re_der_chain_TCC3|✅ proved - incomplete|shostak|0.080|
|init3_re_der_chain_TCC4|✅ proved - incomplete|shostak|0.000|
|init3_re_der_chain_TCC5|✅ proved - incomplete|shostak|0.130|
|init3_re_der_chain_TCC6|✅ proved - incomplete|shostak|0.110|
|init3_re_der_chain_TCC7|✅ proved - incomplete|shostak|0.229|
|init3_re_der_chain_TCC8|✅ proved - incomplete|shostak|0.270|
|init3_re_der_chain_TCC9|✅ proved - incomplete|shostak|0.317|
|init3_re_der_chain_TCC10|✅ proved - incomplete|shostak|0.110|
|init3_re_der_chain_TCC11|✅ proved - incomplete|shostak|0.118|
|init3_re_der_chain|✅ proved - incomplete|shostak|12.193|
|SUB_DIFTRe_sig_TCC1|✅ proved - incomplete|shostak|0.080|
|SUB_DIFTRe_sig_TCC2|✅ proved - incomplete|shostak|0.060|
|SUB_DIFTRe_sig_TCC3|✅ proved - incomplete|shostak|0.060|
|SUB_DIFTRe_sig|✅ proved - incomplete|shostak|16.693|
|derivable_M_nqbool?_TCC1|✅ proved - incomplete|shostak|0.290|
|derivable_M_nqbool?_TCC2|✅ proved - incomplete|shostak|0.290|
|derivable_M_normalize_rec|✅ proved - incomplete|shostak|0.283|
|derivable_M_normalize|✅ proved - incomplete|shostak|0.060|

## `diff_re_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|diff_re_cont_TCC1|✅ proved - incomplete|shostak|1.064|
|diff_re_cont_TCC2|✅ proved - incomplete|shostak|0.832|
|diff_re_cont|✅ proved - incomplete|shostak|3.620|
|diff_re_divbound_TCC1|✅ proved - incomplete|shostak|0.309|
|diff_re_divbound_TCC2|✅ proved - incomplete|shostak|0.090|
|diff_re_divbound|✅ proved - incomplete|shostak|1.226|
|diff_re_val|✅ proved - incomplete|shostak|2.651|
|diff_re_cnst|✅ proved - incomplete|shostak|0.726|
|diff_re_prod|✅ proved - incomplete|shostak|15.513|
|diff_re_pow|✅ proved - incomplete|shostak|0.215|
|diff_re_sum|✅ proved - incomplete|shostak|1.332|
|diff_re_diff|✅ proved - incomplete|shostak|0.113|
|diff_re_inv_aux|✅ proved - incomplete|shostak|2:26.188|
|diff_re_inv|✅ proved - incomplete|shostak|0.200|
|diff_re_div|✅ proved - incomplete|shostak|0.252|

## `continuity_re_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cont_re?_TCC1|✅ proved - complete|shostak|0.040|

## `continuity_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|f_sol_continuous|✅ proved - incomplete|shostak|0.130|
|c_delt_TCC1|✅ proved - incomplete|shostak|0.862|
|min_delt_TCC1|✅ proved - incomplete|shostak|0.100|
|min_delt_TCC2|✅ proved - incomplete|shostak|0.309|
|min_delt_TCC3|✅ proved - incomplete|shostak|0.508|
|min_delt_TCC4|✅ proved - incomplete|shostak|0.080|
|min_delt_TCC5|✅ proved - incomplete|shostak|0.270|
|min_delt_TCC6|✅ proved - incomplete|shostak|0.130|
|min_delt_TCC7|✅ proved - incomplete|shostak|0.090|
|min_delt_TCC8|✅ proved - incomplete|shostak|0.390|
|min_delt_TCC9|✅ proved - incomplete|shostak|0.087|
|min_delt_TCC10|✅ proved - incomplete|shostak|1.344|
|env_at_t_continuous|✅ proved - incomplete|shostak|0.303|
|re_env_continuous|✅ proved - incomplete|shostak|1.225|

## `continuity_re_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cont_re_val|✅ proved - complete|shostak|0.111|
|cont_re_cnst|✅ proved - complete|shostak|0.100|
|cont_re_prod|✅ proved - incomplete|shostak|0.000|
|cont_re_pow|✅ proved - incomplete|shostak|0.399|
|cont_re_sum|✅ proved - complete|shostak|0.441|
|cont_re_diff|✅ proved - incomplete|shostak|0.110|
|cont_re_div_aux|✅ proved - incomplete|shostak|7.971|
|cont_re_div|✅ proved - incomplete|shostak|0.132|

## `fresh_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|fresh_re_cnst|✅ proved - complete|shostak|0.050|
|fresh_re_val|✅ proved - complete|shostak|0.060|
|fresh_re_sum|✅ proved - complete|shostak|0.090|
|fresh_re_minus|✅ proved - complete|shostak|0.085|
|fresh_re_prod|✅ proved - complete|shostak|0.110|
|fresh_re_div_safe|✅ proved - incomplete|shostak|0.070|
|fresh_re_sqrt_safe|✅ proved - incomplete|shostak|0.060|
|fresh_re_pow|✅ proved - incomplete|shostak|0.224|
|fresh_re_exp|✅ proved - incomplete|shostak|0.070|
|fresh_re_expt|✅ proved - incomplete|shostak|1.044|
|fresh_re_ex1|✅ proved - complete|shostak|3.461|
|fresh_re_ex2|✅ proved - incomplete|shostak|4.646|
|not_fresh_re_val|✅ proved - complete|shostak|0.060|
|fresh_be_DLTRUE|✅ proved - complete|shostak|0.060|
|fresh_be_DLFALSE|✅ proved - complete|shostak|0.040|
|fresh_be_eq|✅ proved - complete|shostak|0.110|
|fresh_be_neq|✅ proved - complete|shostak|0.107|
|fresh_be_le|✅ proved - complete|shostak|0.120|
|fresh_be_lt|✅ proved - complete|shostak|0.110|
|fresh_be_ge|✅ proved - complete|shostak|0.110|
|fresh_be_gt|✅ proved - complete|shostak|0.106|
|fresh_be_or|✅ proved - complete|shostak|0.110|
|fresh_be_and|✅ proved - complete|shostak|0.110|
|fresh_be_implies|✅ proved - complete|shostak|0.116|
|fresh_be_not|✅ proved - complete|shostak|0.090|
|fresh_be_IFF|✅ proved - complete|shostak|0.150|
|fresh_fs_sol|✅ proved - incomplete|shostak|2.567|
|fresh_bstar_semantic_rel|✅ proved - incomplete|shostak|0.381|
|fresh_be_semantic_rel|✅ proved - incomplete|shostak|1.072|
|fresh_be_allruns|✅ proved - incomplete|shostak|0.131|
|fresh_be_allruns_e|✅ proved - incomplete|shostak|0.190|
|fresh_be_someruns|✅ proved - incomplete|shostak|0.000|

## `dynamic_logic`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|assign0_prop|✅ proved - incomplete|shostak|0.510|
|assign_assign_sub|✅ proved - incomplete|shostak|0.150|
|assign_sub_assign|✅ proved - incomplete|shostak|0.090|
|turnstile_TCC1|✅ proved - complete|shostak|0.090|
|turnstile_TCC2|✅ proved - complete|shostak|0.082|
|turnstile_TCC3|✅ proved - complete|shostak|0.130|
|turnstile_TCC4|✅ proved - incomplete|shostak|0.190|
|turnstile_TCC5|✅ proved - incomplete|shostak|0.180|
|turnstile_TCC6|✅ proved - incomplete|shostak|0.276|
|dlSequent_equiv|✅ proved - incomplete|shostak|0.220|
|dl_notR|✅ proved - incomplete|shostak|0.310|
|dl_notL|✅ proved - incomplete|shostak|0.300|
|dl_andR|✅ proved - incomplete|shostak|0.237|
|dl_andL|✅ proved - incomplete|shostak|0.260|
|dl_orR|✅ proved - incomplete|shostak|0.320|
|dl_orL|✅ proved - incomplete|shostak|0.361|
|dl_impliesR|✅ proved - incomplete|shostak|0.311|
|dl_impliesL|✅ proved - incomplete|shostak|0.392|
|dl_equivR|✅ proved - incomplete|shostak|0.847|
|dl_equivL|✅ proved - incomplete|shostak|0.522|
|dl_axiom|✅ proved - incomplete|shostak|0.346|
|dl_trueR|✅ proved - incomplete|shostak|0.180|
|dl_trueL|✅ proved - incomplete|shostak|0.200|
|dl_falseR|✅ proved - incomplete|shostak|0.219|
|dl_falseL|✅ proved - incomplete|shostak|0.170|
|dl_cut|✅ proved - incomplete|shostak|0.270|
|dl_weakR|✅ proved - incomplete|shostak|0.294|
|dl_weakL|✅ proved - incomplete|shostak|0.304|
|dl_forallR|✅ proved - incomplete|shostak|0.230|
|dl_forallL|✅ proved - incomplete|shostak|0.142|
|dl_existsR|✅ proved - incomplete|shostak|0.150|
|dl_existsL|✅ proved - incomplete|shostak|0.231|
|dl_existsrR|✅ proved - incomplete|shostak|0.140|
|dl_existsrRf|✅ proved - incomplete|shostak|0.153|
|dl_existsrL|✅ proved - incomplete|shostak|0.220|
|move_to_head_rec_TCC1|✅ proved - complete|shostak|0.080|
|move_to_head_rec_TCC2|✅ proved - complete|shostak|0.090|
|move_to_head_rec_TCC3|✅ proved - complete|shostak|0.150|
|move_to_head_rec_TCC4|✅ proved - complete|shostak|0.060|
|move_to_head_rec_nth_TCC1|✅ proved - complete|shostak|0.070|
|move_to_head_rec_nth_TCC2|✅ proved - complete|shostak|0.280|
|move_to_head_rec_nth_TCC3|✅ proved - complete|shostak|0.283|
|move_to_head_rec_nth_TCC4|✅ proved - complete|shostak|0.210|
|move_to_head_rec_nth_TCC5|✅ proved - complete|shostak|0.300|
|move_to_head_rec_nth_TCC6|✅ proved - complete|shostak|0.250|
|move_to_head_rec_nth_TCC7|✅ proved - complete|shostak|0.270|
|move_to_head_rec_nth_TCC8|✅ proved - complete|shostak|0.270|
|move_to_head_rec_nth_TCC9|✅ proved - incomplete|shostak|0.746|
|move_to_head_rec_nth_TCC10|✅ proved - incomplete|shostak|1.531|
|move_to_head_TCC1|✅ proved - complete|shostak|0.070|
|move_to_head_length|✅ proved - incomplete|shostak|0.274|
|move_to_head_car_TCC1|✅ proved - incomplete|shostak|0.080|
|move_to_head_car_TCC2|✅ proved - complete|shostak|0.050|
|move_to_head_car|✅ proved - incomplete|shostak|0.170|
|move_to_head_first_half_TCC1|✅ proved - incomplete|shostak|0.083|
|move_to_head_first_half_TCC2|✅ proved - complete|shostak|0.100|
|move_to_head_first_half|✅ proved - incomplete|shostak|0.320|
|move_to_head_second_half_TCC1|✅ proved - incomplete|shostak|0.070|
|move_to_head_second_half|✅ proved - incomplete|shostak|0.352|
|dl_moveR|✅ proved - incomplete|shostak|0.260|
|dl_moveL|✅ proved - incomplete|shostak|0.254|
|dl_hideR|✅ proved - incomplete|shostak|0.220|
|dl_hideL|✅ proved - incomplete|shostak|0.208|
|dl_boxd|✅ proved - incomplete|shostak|0.090|
|dl_assignb|✅ proved - incomplete|shostak|0.080|
|dl_assignb_restricted|✅ proved - incomplete|shostak|0.092|
|dl_assignd|✅ proved - incomplete|shostak|0.090|
|dl_testb|✅ proved - incomplete|shostak|0.090|
|dl_testb_true|✅ proved - incomplete|shostak|0.060|
|dl_testd|✅ proved - incomplete|shostak|0.101|
|dl_testd_true|✅ proved - incomplete|shostak|0.200|
|dl_choiceb|✅ proved - incomplete|shostak|0.233|
|dl_choiced|✅ proved - incomplete|shostak|0.180|
|dl_composeb|✅ proved - incomplete|shostak|0.135|
|dl_composed|✅ proved - incomplete|shostak|0.140|
|dl_iterateb|✅ proved - incomplete|shostak|0.170|
|dl_iterated|✅ proved - incomplete|shostak|0.289|
|dl_anyb_TCC1|✅ proved - complete|shostak|0.110|
|dl_anyb|✅ proved - incomplete|shostak|0.453|
|dl_anyd|✅ proved - incomplete|shostak|0.203|
|dl_boxand|✅ proved - incomplete|shostak|0.100|
|dl_diamondOr|✅ proved - incomplete|shostak|0.102|
|dl_iteratearrowb|✅ proved - incomplete|shostak|0.193|
|dl_starstarb|✅ proved - incomplete|shostak|0.747|
|dl_iterateIb|✅ proved - incomplete|shostak|0.965|
|dl_impliesallrunsb|✅ proved - incomplete|shostak|0.215|
|dl_impliesallrunsd|✅ proved - incomplete|shostak|0.230|
|dl_distimpliesb|✅ proved - incomplete|shostak|0.185|
|dl_const|✅ proved - incomplete|shostak|0.422|
|dl_constd|✅ proved - incomplete|shostak|0.402|
|dl_V|✅ proved - incomplete|shostak|0.000|
|dl_Vd|✅ proved - incomplete|shostak|1.726|
|dl_bool_const|✅ proved - incomplete|shostak|0.190|
|dl_subr_TCC1|✅ proved - incomplete|shostak|0.192|
|dl_subr|✅ proved - incomplete|shostak|0.274|
|dl_subl|✅ proved - incomplete|shostak|0.360|
|dl_subf|✅ proved - incomplete|shostak|0.343|
|dl_weak_impliesb|✅ proved - incomplete|shostak|0.156|
|dl_weak_impliesd|✅ proved - incomplete|shostak|0.161|
|dl_weak_impliesbE|✅ proved - incomplete|shostak|0.170|
|dl_weak_impliesdE|✅ proved - incomplete|shostak|0.160|
|dl_differential_auxiliary_TCC1|✅ proved - complete|shostak|0.080|
|dl_differential_auxiliary|✅ proved - incomplete|shostak|7.576|
|dl_bounded_loop|✅ proved - incomplete|shostak|0.730|
|dl_loop|✅ proved - incomplete|shostak|0.437|
|dl_MbL|✅ proved - incomplete|shostak|1.706|
|dl_MbR|✅ proved - incomplete|shostak|1.726|
|dl_MdL|✅ proved - incomplete|shostak|2.014|
|dl_MdR|✅ proved - incomplete|shostak|1.435|
|dl_MEbR|✅ proved - incomplete|shostak|1.478|
|dl_MEbRA|✅ proved - incomplete|shostak|0.663|
|dl_discrete_ghost|✅ proved - incomplete|shostak|0.388|
|dl_andb|✅ proved - incomplete|shostak|0.201|
|dl_andf|✅ proved - incomplete|shostak|0.267|
|dl_orb|✅ proved - incomplete|shostak|0.380|
|dl_hide_restR|✅ proved - incomplete|shostak|0.180|
|dl_hide_restL|✅ proved - incomplete|shostak|0.186|
|dl_hide_restLR|✅ proved - incomplete|shostak|0.478|
|dl_commuteEquivR|✅ proved - incomplete|shostak|0.310|
|dl_commuteEquivL|✅ proved - incomplete|shostak|0.262|
|dl_equivifyR|✅ proved - incomplete|shostak|0.380|
|dl_dW|✅ proved - incomplete|shostak|0.299|
|dl_dinit|✅ proved - incomplete|shostak|0.429|
|dl_dI_eq|✅ proved - incomplete|shostak|0.000|
|dl_dI_neq|✅ proved - incomplete|shostak|4.143|
|dl_dI_le|✅ proved - incomplete|shostak|3.617|
|dl_dI_lt|✅ proved - incomplete|shostak|0.000|
|dl_dI_ge|✅ proved - incomplete|shostak|4.088|
|dl_dI_gt|✅ proved - incomplete|shostak|4.203|
|dl_dI_lite|✅ proved - incomplete|shostak|3.665|
|dl_dI|✅ proved - incomplete|shostak|2.496|
|dl_dI_dlTRUE_TCC1|✅ proved - complete|shostak|0.060|
|dl_dI_dlTRUE|✅ proved - incomplete|shostak|0.111|
|dl_dC|✅ proved - incomplete|shostak|0.474|
|dl_differential_ghost_TCC1|✅ proved - complete|shostak|0.070|
|dl_differential_ghost|✅ proved - incomplete|shostak|7.410|

## `more_derivative_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_derivative_props_TCC1|✅ proved - complete|shostak|0.033|
|IMP_derivative_props_TCC2|✅ proved - complete|shostak|0.040|
|deriv_linear_TCC1|✅ proved - incomplete|shostak|0.060|
|deriv_linear|✅ proved - incomplete|shostak|7.998|

## `dl_solution`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|init_zip_sol_TCC1|✅ proved - complete|shostak|0.176|
|init_zip_sol_TCC2|✅ proved - complete|shostak|0.070|
|init_zip_sol_TCC3|✅ proved - complete|shostak|0.190|
|init_zip_sol_TCC4|✅ proved - complete|shostak|0.180|
|init_zip_sol_TCC5|✅ proved - complete|shostak|0.639|
|init_zip_sol_TCC6|✅ proved - complete|shostak|0.261|
|init_zip_sol_TCC7|✅ proved - complete|shostak|0.210|
|init_zip_sol_TCC8|✅ proved - complete|shostak|0.766|
|zip_sol_test_TCC1|✅ proved - incomplete|shostak|0.190|
|zip_sol_test_TCC2|✅ proved - incomplete|shostak|0.050|
|zip_sol_test_TCC3|✅ proved - complete|shostak|0.053|
|zip_sol_test|✅ proved - incomplete|shostak|0.230|
|zs_TCC1|✅ proved - complete|shostak|0.130|
|map_inj_zs|✅ proved - complete|shostak|0.322|
|solution_domain_ax_ode_TCC1|✅ proved - incomplete|shostak|0.050|
|solution_domain_ax_ode|✅ proved - incomplete|shostak|4.258|
|dl_solution_domain_iff|✅ proved - incomplete|shostak|1.521|
|dl_solution_domain|✅ proved - incomplete|shostak|0.079|
|solution_domain_ax_TCC1|✅ proved - complete|shostak|0.060|
|solution_domain_ax_TCC2|✅ proved - complete|shostak|0.140|
|solution_domain_ax|✅ proved - incomplete|shostak|1.473|
|solution_domain_ax_lin|✅ proved - incomplete|shostak|17.502|
|solution_domain_ax_lin_val|✅ proved - incomplete|shostak|14.756|
|solution_domain_ax_quad_TCC1|✅ proved - complete|shostak|0.050|
|solution_domain_ax_quad_TCC2|✅ proved - complete|shostak|0.160|
|solution_domain_ax_quad|✅ proved - incomplete|shostak|40.607|
|in_map_test_TCC1|✅ proved - complete|shostak|0.110|
|in_map_test|✅ proved - complete|shostak|0.160|
|get_index_TCC1|✅ proved - complete|shostak|0.080|
|get_index_TCC2|✅ proved - complete|shostak|0.089|
|get_index_TCC3|✅ proved - complete|shostak|0.230|
|get_index_TCC4|✅ proved - complete|shostak|0.070|
|get_index_TCC5|✅ proved - complete|shostak|0.160|
|get_index_TCC6|✅ proved - complete|shostak|0.428|
|cnst_val_0|✅ proved - complete|shostak|0.080|
|cnst_val_com|✅ proved - complete|shostak|0.091|
|val_inj|✅ proved - complete|shostak|0.070|
|in_map_ex_TCC1|✅ proved - complete|shostak|0.070|
|in_map_ex_TCC2|✅ proved - complete|shostak|0.060|
|in_map_ex_TCC3|✅ proved - complete|shostak|0.170|
|in_map_ex_eq|✅ proved - complete|shostak|0.480|
|env_c_val|✅ proved - complete|shostak|0.050|
|get_val_cnst_id_ex_TCC1|✅ proved - complete|shostak|0.250|
|get_val_cnst_id_ex_TCC2|✅ proved - complete|shostak|0.900|
|is_val_not_in_map?_TCC1|✅ proved - complete|shostak|0.738|
|Y_sol_ex_TCC1|✅ proved - complete|shostak|0.934|
|cnst_lins_def|✅ proved - complete|shostak|1.195|
|y_sol_Ex_TCC1|✅ proved - complete|shostak|0.130|
|y_sol_Ex_TCC2|✅ proved - complete|shostak|0.496|
|y_sol_Ex_TCC3|✅ proved - complete|shostak|0.120|
|y_sol_Ex|✅ proved - incomplete|shostak|38.352|
|cnst_lins_sol_TCC1|✅ proved - incomplete|shostak|0.070|
|cnst_lins_sol|✅ proved - incomplete|shostak|50.709|
|cnst_lins_sol_u_TCC1|✅ proved - incomplete|shostak|0.060|
|cnst_lins_sol_u|✅ proved - incomplete|shostak|43.003|
|solution_domain_ax_cnst_imp_zip|✅ proved - incomplete|shostak|0.100|
|solution_domain_ax_cnst_imp_zip_no_hyp|✅ proved - incomplete|shostak|0.894|

## `top_dtl`
No formula declaration found.
## `even_more_list_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|suffix_append|✅ proved - incomplete|shostak|0.995|
|caret_suffix_TCC1|✅ proved - complete|shostak|0.040|
|caret_suffix|✅ proved - incomplete|shostak|1.209|
|rdc_cdr_TCC1|✅ proved - complete|shostak|0.050|
|rdc_cdr_TCC2|✅ proved - complete|shostak|0.050|
|rdc_cdr_TCC3|✅ proved - incomplete|shostak|0.100|
|rdc_cdr|✅ proved - incomplete|shostak|0.352|

## `ltl_expr`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cut_inf_diff_TCC1|✅ proved - incomplete|shostak|0.060|
|cut_inf_diff_TCC2|✅ proved - incomplete|shostak|0.140|
|cut_inf_diff_TCC3|✅ proved - incomplete|shostak|0.060|
|cut_inf_diff_TCC4|✅ proved - incomplete|shostak|0.129|
|cut_state_diff_TCC1|✅ proved - incomplete|shostak|0.050|
|cut_state_diff_TCC2|✅ proved - incomplete|shostak|0.070|
|cut_state_diff_TCC3|✅ proved - incomplete|shostak|0.090|
|cut_state_diff_TCC4|✅ proved - incomplete|shostak|0.120|
|cut_state_diff_TCC5|✅ proved - incomplete|shostak|0.130|
|cut_state_diff_TCC6|✅ proved - incomplete|shostak|0.076|
|cut_state_diff_TCC7|✅ proved - incomplete|shostak|0.240|
|cut_state_diff_TCC8|✅ proved - incomplete|shostak|0.060|
|cut_state_diff_TCC9|✅ proved - incomplete|shostak|0.370|
|cut_state_diff_TCC10|✅ proved - incomplete|shostak|0.430|
|cut_state_zero_TCC1|✅ proved - incomplete|shostak|0.090|
|cut_state_zero|✅ proved - incomplete|shostak|0.585|
|cut_inf_zero_TCC1|✅ proved - incomplete|shostak|0.050|
|cut_inf_zero|✅ proved - incomplete|shostak|0.359|
|ALLRUNS_eq|✅ proved - incomplete|shostak|0.120|
|SOMERUNS_eq|✅ proved - incomplete|shostak|0.120|
|DLGLOBALLY_TCC1|✅ proved - incomplete|shostak|0.079|
|DLGLOBALLY_TCC2|✅ proved - incomplete|shostak|0.080|
|DLGLOBALLY_TCC3|✅ proved - incomplete|shostak|0.090|
|DLEVENTUALLY_TCC1|✅ proved - incomplete|shostak|0.110|
|norm_implies_DLGLOBALLY|✅ proved - incomplete|shostak|0.100|
|DLEVENTUALLY_implies_norm|✅ proved - incomplete|shostak|0.095|
|DLGLOBALLY_FORALL|✅ proved - incomplete|shostak|3.308|
|DLGLOBALLY_append|✅ proved - incomplete|shostak|1.181|
|normDLGLOBALLY_append|✅ proved - incomplete|shostak|0.479|
|DLEVENTUALLY_EXISTS|✅ proved - incomplete|shostak|1.691|
|DLEVENTUALLY_append|✅ proved - incomplete|shostak|1.338|
|normDLEVENTUALLY_append|✅ proved - incomplete|shostak|0.362|
|DLGE_nth_TCC1|✅ proved - incomplete|shostak|0.070|
|DLGE_nth|✅ proved - incomplete|shostak|6.433|
|normDLGE_append|✅ proved - incomplete|shostak|3.691|
|DLEG_nth|✅ proved - incomplete|shostak|10.261|
|normDLEG_append|✅ proved - incomplete|shostak|3.949|

## `trace_semantics`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|wf_trace?_TCC1|✅ proved - incomplete|shostak|0.050|
|finite_trace?_TCC1|✅ proved - incomplete|shostak|0.063|
|wf_append|✅ proved - incomplete|shostak|1.047|
|wf_append_finite|✅ proved - incomplete|shostak|0.608|
|init_env_TCC1|✅ proved - incomplete|shostak|0.070|
|final_env_TCC1|✅ proved - incomplete|shostak|0.110|
|final_env_TCC2|✅ proved - incomplete|shostak|0.080|
|trace_semantic_rel_TCC1|✅ proved - incomplete|shostak|0.110|
|trace_semantic_rel_TCC2|✅ proved - incomplete|shostak|0.097|
|trace_semantic_rel_TCC3|✅ proved - incomplete|shostak|0.100|
|trace_semantic_rel_TCC4|✅ proved - incomplete|shostak|0.200|
|trace_semantic_rel_TCC5|✅ proved - incomplete|shostak|0.120|
|trace_semantic_rel_TCC6|✅ proved - incomplete|shostak|0.160|
|trace_semantic_rel_TCC7|✅ proved - incomplete|shostak|0.191|
|trace_semantic_rel_TCC8|✅ proved - incomplete|shostak|0.230|
|trace_semantic_rel_TCC9|✅ proved - incomplete|shostak|0.210|
|trace_semantic_rel_TCC10|✅ proved - incomplete|shostak|0.240|
|trace_semantic_rel_TCC11|✅ proved - incomplete|shostak|0.231|
|trace_semantic_rel_TCC12|✅ proved - incomplete|shostak|0.260|
|trace_semantic_rel_TCC13|✅ proved - incomplete|shostak|0.240|
|trace_semantic_rel_TCC14|✅ proved - incomplete|shostak|0.242|
|trace_semantic_rel_TCC15|✅ proved - incomplete|shostak|0.260|
|trace_semantic_rel_TCC16|✅ proved - incomplete|shostak|0.260|
|trace_semantics_correct_assign|✅ proved - incomplete|shostak|0.440|
|trace_semantics_correct_diff|✅ proved - incomplete|shostak|1.416|
|trace_semantics_correct_any|✅ proved - incomplete|shostak|0.628|
|trace_semantics_correct_test|✅ proved - incomplete|shostak|0.957|
|trace_semantics_correct_seq|✅ proved - incomplete|shostak|0.890|
|trace_semantics_correct_union|✅ proved - incomplete|shostak|0.180|
|trace_semantics_correct_star|✅ proved - incomplete|shostak|1.528|
|trace_semantics_correct|✅ proved - incomplete|shostak|0.000|
|trace_semantics_complete_assign|✅ proved - incomplete|shostak|0.699|
|trace_semantics_complete_diff|✅ proved - incomplete|shostak|1.896|
|trace_semantics_complete_any|✅ proved - incomplete|shostak|0.598|
|trace_semantics_complete_test|✅ proved - incomplete|shostak|0.442|
|trace_semantics_complete_seq|✅ proved - incomplete|shostak|0.971|
|trace_semantics_complete_union|✅ proved - incomplete|shostak|0.280|
|trace_semantics_complete_star|✅ proved - incomplete|shostak|1.814|
|trace_semantics_complete|✅ proved - incomplete|shostak|0.854|

## `solution_odes_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|diff_odes_shift_TCC1|✅ proved - incomplete|shostak|0.060|
|diff_odes_shift|✅ proved - incomplete|shostak|1.429|
|env_at_t_shift|✅ proved - complete|shostak|0.494|
|solution_odes_shift|✅ proved - incomplete|shostak|3.487|
|diff_odes_cat_hp_TCC1|✅ proved - incomplete|shostak|0.060|
|diff_odes_cat_hp_TCC2|✅ proved - incomplete|shostak|0.786|
|diff_odes_cat_hp_TCC3|✅ proved - incomplete|shostak|0.070|
|diff_odes_cat_hp_TCC4|✅ proved - incomplete|shostak|0.076|
|diff_odes_cat_hp_TCC5|✅ proved - incomplete|shostak|0.170|
|diff_odes_cat_hp|✅ proved - incomplete|shostak|5.528|
|diff_odes_cat_ci_TCC1|✅ proved - incomplete|shostak|0.050|
|diff_odes_cat_ci_TCC2|✅ proved - incomplete|shostak|0.074|
|diff_odes_cat_ci_TCC3|✅ proved - incomplete|shostak|0.090|
|diff_odes_cat_ci_TCC4|✅ proved - incomplete|shostak|0.070|
|diff_odes_cat_ci_TCC5|✅ proved - incomplete|shostak|0.083|
|diff_odes_cat_ci_TCC6|✅ proved - incomplete|shostak|0.110|
|diff_odes_cat_ci_TCC7|✅ proved - incomplete|shostak|0.178|
|diff_odes_cat_ci_TCC8|✅ proved - incomplete|shostak|0.100|
|diff_odes_cat_ci_TCC9|✅ proved - incomplete|shostak|0.190|
|diff_odes_cat_ci_TCC10|✅ proved - incomplete|shostak|0.239|
|diff_odes_cat_ci|✅ proved - incomplete|shostak|0.778|
|der_odes_cat_hp_TCC1|✅ proved - incomplete|shostak|0.160|
|der_odes_cat_hp_TCC2|✅ proved - incomplete|shostak|0.067|
|der_odes_cat_hp_TCC3|✅ proved - incomplete|shostak|0.080|
|der_odes_cat_hp_TCC4|✅ proved - incomplete|shostak|0.070|
|der_odes_cat_hp_TCC5|✅ proved - incomplete|shostak|0.321|
|der_odes_cat_hp|✅ proved - incomplete|shostak|17.133|
|der_odes_cat_ci_TCC1|✅ proved - incomplete|shostak|0.100|
|der_odes_cat_ci_TCC2|✅ proved - incomplete|shostak|0.110|
|der_odes_cat_ci_TCC3|✅ proved - incomplete|shostak|0.694|
|der_odes_cat_ci_TCC4|✅ proved - incomplete|shostak|0.379|
|der_odes_cat_ci_TCC5|✅ proved - incomplete|shostak|0.373|
|der_odes_cat_ci_TCC6|✅ proved - incomplete|shostak|0.230|
|der_odes_cat_ci_TCC7|✅ proved - incomplete|shostak|0.080|
|der_odes_cat_ci_TCC8|✅ proved - incomplete|shostak|0.081|
|der_odes_cat_ci_TCC9|✅ proved - incomplete|shostak|0.250|
|der_odes_cat_ci_TCC10|✅ proved - incomplete|shostak|0.112|
|der_odes_cat_ci_TCC11|✅ proved - incomplete|shostak|0.110|
|der_odes_cat_ci|✅ proved - incomplete|shostak|23.603|
|solution_odes_deriv_at_T_hp_TCC1|✅ proved - incomplete|shostak|0.050|
|solution_odes_deriv_at_T_hp_TCC2|✅ proved - incomplete|shostak|0.090|
|solution_odes_deriv_at_T_hp_TCC3|✅ proved - incomplete|shostak|0.078|
|solution_odes_deriv_at_T_hp_TCC4|✅ proved - incomplete|shostak|0.080|
|solution_odes_deriv_at_T_hp_TCC5|✅ proved - incomplete|shostak|0.210|
|solution_odes_deriv_at_T_hp|✅ proved - incomplete|shostak|0.226|
|solution_odes_deriv_at_T_ci_TCC1|✅ proved - incomplete|shostak|0.070|
|solution_odes_deriv_at_T_ci_TCC2|✅ proved - incomplete|shostak|0.103|
|solution_odes_deriv_at_T_ci_TCC3|✅ proved - incomplete|shostak|0.080|
|solution_odes_deriv_at_T_ci_TCC4|✅ proved - incomplete|shostak|0.080|
|solution_odes_deriv_at_T_ci_TCC5|✅ proved - incomplete|shostak|0.230|
|solution_odes_deriv_at_T_ci_TCC6|✅ proved - incomplete|shostak|0.111|
|solution_odes_deriv_at_T_ci_TCC7|✅ proved - incomplete|shostak|0.120|
|solution_odes_deriv_at_T_ci|✅ proved - incomplete|shostak|0.281|
|solution_odes_hp_conc|✅ proved - incomplete|shostak|1.072|
|solution_odes_ci_conc_TCC1|✅ proved - incomplete|shostak|0.270|
|solution_odes_ci_conc|✅ proved - incomplete|shostak|1.968|
|solution_odes_u_shift|✅ proved - incomplete|shostak|1.366|
|solution_odes_u_init|✅ proved - incomplete|shostak|0.801|

## `temporal_logic`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|norm_DLGLOBALLY|✅ proved - incomplete|shostak|0.070|
|norm_DLEVENTUALLY|✅ proved - incomplete|shostak|0.060|
|norm_DLGE|✅ proved - incomplete|shostak|5.434|
|norm_DLEG|✅ proved - incomplete|shostak|0.000|
|dltl_SEQcap|✅ proved - incomplete|shostak|0.925|
|dltl_SEQcap_con|✅ proved - incomplete|shostak|0.669|
|dltl_SEQcap_dual|✅ proved - incomplete|shostak|1.871|
|dltl_SEQcup|✅ proved - incomplete|shostak|2.333|
|dltl_SEQcup_dual|✅ proved - incomplete|shostak|1.272|
|dltl_SEQcup_dual_con|✅ proved - incomplete|shostak|1.163|
|dltl_SEQtriangleEG|✅ proved - incomplete|shostak|8.674|
|dltl_SEQtriangleGE|✅ proved - incomplete|shostak|8.503|
|dltl_SEQEG_dual|✅ proved - incomplete|shostak|3.861|
|dltl_SEQGE_dual|✅ proved - incomplete|shostak|2.987|
|dltl_choice|✅ proved - incomplete|shostak|0.350|
|dltl_choice_st|✅ proved - incomplete|shostak|0.000|
|dltl_choice_dual|✅ proved - incomplete|shostak|0.200|
|dltl_choice_st_dual|✅ proved - incomplete|shostak|0.196|
|dltl_TESTcap_eq|✅ proved - incomplete|shostak|0.620|
|dltl_TESTcap_eq_dual|✅ proved - incomplete|shostak|0.661|
|dltl_TESTcup_eq|✅ proved - incomplete|shostak|0.635|
|dltl_TESTcup_eq_dual|✅ proved - incomplete|shostak|0.657|
|dltl_TESTEG_eq|✅ proved - incomplete|shostak|0.517|
|dltl_TESTEG_eq_dual|✅ proved - incomplete|shostak|0.513|
|dltl_TESTGE_eq|✅ proved - incomplete|shostak|0.499|
|dltl_TESTGE_eq_dual|✅ proved - incomplete|shostak|0.451|
|dltl_ASSIGNcap|✅ proved - incomplete|shostak|1.787|
|dltl_ASSIGNcap_dual|✅ proved - incomplete|shostak|0.989|
|dltl_ASSIGNcup|✅ proved - incomplete|shostak|0.687|
|dltl_ASSIGNcup_dual|✅ proved - incomplete|shostak|1.248|
|dltl_ASSIGNEG|✅ proved - incomplete|shostak|0.322|
|dltl_ASSIGNGE|✅ proved - incomplete|shostak|0.330|
|dltl_ASSIGNEG_dual|✅ proved - incomplete|shostak|0.300|
|dltl_ASSIGNGE_dual|✅ proved - incomplete|shostak|0.290|
|dltl_DIFFcap|✅ proved - incomplete|shostak|2.741|
|dltl_DIFFcap_eq|✅ proved - incomplete|shostak|1.609|
|dltl_DIFFcap_eq_dual_TCC1|✅ proved - incomplete|shostak|0.050|
|dltl_DIFFcap_eq_dual|✅ proved - incomplete|shostak|7.301|
|dltl_DIFFcup_eq|✅ proved - incomplete|shostak|0.000|
|dltl_DIFFcup_dual|✅ proved - incomplete|shostak|2.889|
|dltl_DIFFcup_dual_eq|✅ proved - incomplete|shostak|2.167|
|dltl_DIFFEG_eq|✅ proved - incomplete|shostak|3.687|
|dltl_DIFFEG_dual_eq|✅ proved - incomplete|shostak|10.729|
|dltl_DIFFGE_eq|✅ proved - incomplete|shostak|7.827|
|dltl_DIFFGE_dual_eq|✅ proved - incomplete|shostak|0.000|
|dltl_BSTARcap_eq|✅ proved - incomplete|shostak|11.954|
|dltl_STARcap_eq|✅ proved - incomplete|shostak|0.220|
|dltl_STARcup_dual|✅ proved - incomplete|shostak|1.902|
|dltl_STARcup|✅ proved - incomplete|shostak|0.000|
|dltl_STARcap_dual|✅ proved - incomplete|shostak|1.656|
|dltl_BSTARindcup|✅ proved - incomplete|shostak|2.932|
|dltl_STARindcup|✅ proved - incomplete|shostak|0.323|
|dltl_BSTAREG_dual|✅ proved - incomplete|shostak|9.434|
|dltl_BSTARGE_dual|✅ proved - incomplete|shostak|9.470|
|dltl_STAREG_dual|✅ proved - incomplete|shostak|0.000|
|dltl_STARGE_dual|✅ proved - incomplete|shostak|1.608|
|dltl_STAREG|✅ proved - incomplete|shostak|2.637|
|dltl_STARGE|✅ proved - incomplete|shostak|2.593|
|dltl_STARconcap|✅ proved - incomplete|shostak|7.479|
|ALLRUNS_st_imp|✅ proved - incomplete|shostak|0.080|
|ALLRUNS_st_finite_equiv|✅ proved - incomplete|shostak|0.060|

## `trace_bounded_star_semantics`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|trace_semantic_rel_bounded_star_TCC1|✅ proved - complete|shostak|0.050|
|trace_semantic_rel_bounded_star_TCC2|✅ proved - incomplete|shostak|0.107|
|trace_semantic_rel_bounded_star_TCC3|✅ proved - incomplete|shostak|0.150|
|trace_semantic_rel_bounded_star_TCC4|✅ proved - incomplete|shostak|0.150|
|trace_semantic_rel_bounded_star_TCC5|✅ proved - incomplete|shostak|0.233|
|trace_semantic_rel_bounded_star_TCC6|✅ proved - incomplete|shostak|0.130|
|trace_semantic_rel_bounded_star_TCC7|✅ proved - incomplete|shostak|0.130|
|trace_semantic_rel_bounded_star_TCC8|✅ proved - incomplete|shostak|0.110|
|trace_semantic_rel_bounded_star_TCC9|✅ proved - incomplete|shostak|0.089|
|trace_semantic_rel_bounded_star_inc|✅ proved - incomplete|shostak|0.000|
|trace_semantic_rel_implies_bounded|✅ proved - incomplete|shostak|1.047|
|bounded_implies_trace_semantic_rel|✅ proved - incomplete|shostak|1.505|
|trace_semantic_rel_bstar_reflexive|✅ proved - incomplete|shostak|0.236|
|trace_semantic_rel_bounded_bstar_trace_semantic_rel_bstar|✅ proved - incomplete|shostak|0.729|
|trace_semantic_rel_star_bounded_star|✅ proved - incomplete|shostak|0.070|
|trace_semantic_rel_star_bounded_star_con|✅ proved - incomplete|shostak|0.676|
|allruns_st_star|✅ proved - incomplete|shostak|0.110|
|someruns_st_star|✅ proved - incomplete|shostak|0.112|
|allruns_tr_star|✅ proved - incomplete|shostak|0.110|
|someruns_tr_star|✅ proved - incomplete|shostak|0.110|
|trace_semantic_rel_star_seq|✅ proved - incomplete|shostak|0.201|
|trace_semantic_rel_bounded_star_seq_switch_glob|✅ proved - incomplete|shostak|11.925|
|trace_semantic_rel_bounded_star_seq_switch_even|✅ proved - incomplete|shostak|11.167|
|trace_semantic_rel_bounded_star_seq_switch_ge|✅ proved - incomplete|shostak|9.199|
|trace_semantic_rel_bounded_star_seq_switch_eg|✅ proved - incomplete|shostak|0.000|
|trace_semantic_rel_bounded_star_seq_switch_glob_con|✅ proved - incomplete|shostak|6.746|
|trace_semantic_rel_bounded_star_seq_switch_ge_con|✅ proved - incomplete|shostak|4.906|
|trace_semantic_rel_bounded_star_seq_switch_eg_con|✅ proved - incomplete|shostak|5.028|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib/pvsio_utils/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230712-static-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230710-tcc-gen.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230707-defattach.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230706-extrategies.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`|
