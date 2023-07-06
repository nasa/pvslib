# Summary for `dL`
Run started at 8:52:49 7/4/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **833**   | **833**    | **833**    | **0**  | **9:48.890 s**   |
|top|0|0|0|0|0.000|
|hp_def|24|24|24|0|5.037|
|hp_expr|32|32|32|0|3.479|
|bounded_star_semantics|23|23|23|0|4.363|
|bool_expr|36|36|36|0|3.678|
|bound_variables_def|17|17|17|0|2.411|
|hp_props|19|19|19|0|9.199|
|substitution|58|58|58|0|10.013|
|ODEs_equiv|103|103|103|0|35.316|
|differentiation|120|120|120|0|57.362|
|chain_rule_re|134|134|134|0|1:30.283|
|diff_re_props|14|14|14|0|2:41.533|
|continuity_re_def|1|1|1|0|0.040|
|continuity_props|14|14|14|0|4.618|
|continuity_re_props|7|7|7|0|12.978|
|fresh_props|33|33|33|0|6.292|
|dynamic_logic|136|136|136|0|1:16.343|
|more_derivative_props|4|4|4|0|5.760|
|dl_solution|58|58|58|0|1:40.185|
## Detailed Summary 
## `top`
No formula declaration found.
## `hp_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|mapexpr_inj_TCC1|✅ proved - complete|shostak|0.120|
|mapexpr_inj_TCC2|✅ proved - complete|shostak|0.100|
|mapexpr_inj_cons|✅ proved - complete|shostak|0.234|
|mapexpr_inj_eq|✅ proved - complete|shostak|0.140|
|null_MapExprInj|✅ proved - complete|shostak|0.112|
|cdr_is_MapExprInj|✅ proved - complete|shostak|0.190|
|sub_mapexpr_inj_is_mapexpr_inj|✅ proved - incomplete|shostak|0.150|
|in_map_cons|✅ proved - complete|shostak|0.172|
|in_map_null_false|✅ proved - complete|shostak|0.050|
|not_in_map_null|✅ proved - complete|shostak|0.040|
|index_of_j|✅ proved - complete|shostak|0.060|
|expr_car_TCC1|✅ proved - complete|shostak|0.070|
|expr_car|✅ proved - complete|shostak|0.141|
|expr_not_car_TCC1|✅ proved - complete|shostak|0.090|
|expr_not_car|✅ proved - complete|shostak|0.264|
|max_var_rec_TCC1|✅ proved - complete|shostak|0.050|
|max_var_rec_TCC2|✅ proved - complete|shostak|0.040|
|max_var_rec_TCC3|✅ proved - complete|shostak|0.080|
|max_var_rec_pull|✅ proved - complete|shostak|0.445|
|max_var_max|✅ proved - complete|shostak|0.360|
|max_var_exist|✅ proved - complete|shostak|1.439|
|pigeon_map|✅ proved - complete|shostak|0.344|
|max_var_length|✅ proved - complete|shostak|0.216|
|nip_max_var|✅ proved - complete|shostak|0.130|

## `hp_expr`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_table_of_integrals_TCC1|✅ proved - complete|shostak|0.107|
|IMP_table_of_integrals_TCC2|✅ proved - incomplete|shostak|0.030|
|size_TCC1|✅ proved - incomplete|shostak|0.080|
|size_TCC2|✅ proved - incomplete|shostak|0.050|
|size_TCC3|✅ proved - incomplete|shostak|0.060|
|size_TCC4|✅ proved - incomplete|shostak|0.060|
|size_TCC5|✅ proved - incomplete|shostak|0.050|
|dd?_TCC1|✅ proved - incomplete|shostak|0.030|
|dd_deriv_domain|✅ proved - incomplete|shostak|0.156|
|dd_noe|✅ proved - incomplete|shostak|0.070|
|dd_con|✅ proved - incomplete|shostak|0.071|
|dd_ne|✅ proved - incomplete|shostak|0.060|
|dd_ci_TCC1|✅ proved - incomplete|shostak|0.050|
|dd_ci|✅ proved - incomplete|shostak|0.060|
|derivable_odes?_TCC1|✅ proved - incomplete|shostak|0.040|
|derivable_odes?_TCC2|✅ proved - incomplete|shostak|0.067|
|env_at_t_TCC1|✅ proved - incomplete|shostak|0.060|
|env_at_t_TCC2|✅ proved - incomplete|shostak|0.520|
|sol_at_t?_TCC1|✅ proved - incomplete|shostak|0.542|
|semantic_rel_TCC1|✅ proved - incomplete|shostak|0.060|
|semantic_rel_TCC2|✅ proved - incomplete|shostak|0.110|
|semantic_rel_TCC3|✅ proved - incomplete|shostak|0.106|
|semantic_rel_TCC4|✅ proved - incomplete|shostak|0.110|
|fresh_li?_TCC1|✅ proved - incomplete|shostak|0.050|
|fresh_li?_TCC2|✅ proved - incomplete|shostak|0.040|
|fresh_assign_nth|✅ proved - incomplete|shostak|0.243|
|fresh_mapexpr_inj|✅ proved - incomplete|shostak|0.212|
|fresh_mapexp_nth_2|✅ proved - incomplete|shostak|0.175|
|fresh_hp?_TCC1|✅ proved - incomplete|shostak|0.050|
|fresh_hp?_TCC2|✅ proved - incomplete|shostak|0.060|
|fresh_hp?_TCC3|✅ proved - incomplete|shostak|0.050|
|fresh_hp?_TCC4|✅ proved - incomplete|shostak|0.050|

## `bounded_star_semantics`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|semantic_rel_bounded_star_TCC1|✅ proved - complete|shostak|0.030|
|semantic_rel_bounded_star_TCC2|✅ proved - incomplete|shostak|0.060|
|semantic_rel_bounded_star_TCC3|✅ proved - complete|shostak|0.061|
|semantic_rel_bounded_star_TCC4|✅ proved - complete|shostak|0.080|
|semantic_rel_bounded_star_TCC5|✅ proved - complete|shostak|0.070|
|semantic_rel_bounded_star_TCC6|✅ proved - complete|shostak|0.080|
|semantic_rel_bounded_star_TCC7|✅ proved - incomplete|shostak|0.106|
|semantic_rel_bounded_star_TCC8|✅ proved - incomplete|shostak|0.080|
|semantic_rel_bounded_star_inc|✅ proved - incomplete|shostak|0.659|
|semantic_rel_implies_bounded|✅ proved - incomplete|shostak|0.487|
|bounded_implies_semantic_rel|✅ proved - incomplete|shostak|0.581|
|BSTAR_TCC1|✅ proved - complete|shostak|0.050|
|BSTAR_TCC2|✅ proved - complete|shostak|0.040|
|semantic_rel_bstar_reflexive|✅ proved - incomplete|shostak|0.088|
|semantic_rel_bounded_bstar_semantic_rel_bstar|✅ proved - incomplete|shostak|0.170|
|semantic_rel_star_bounded_star|✅ proved - incomplete|shostak|0.058|
|semantic_rel_star_bounded_star_con|✅ proved - incomplete|shostak|0.170|
|semantic_rel_bounded_star_seq_switch|✅ proved - incomplete|shostak|0.793|
|semantic_rel_star_seq_switch|✅ proved - incomplete|shostak|0.287|
|semantic_rel_bounded_star_iter|✅ proved - incomplete|shostak|0.100|
|semantic_rel_bounded_star_iter_con_TCC1|✅ proved - incomplete|shostak|0.070|
|semantic_rel_bounded_star_iter_con|✅ proved - incomplete|shostak|0.120|
|semantic_rel_star_iter|✅ proved - incomplete|shostak|0.123|

## `bool_expr`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|fresh?_TCC1|✅ proved - complete|shostak|0.040|
|fresh?_TCC2|✅ proved - complete|shostak|0.050|
|fresh_formula_nth|✅ proved - complete|shostak|0.130|
|fresh_be_invar|✅ proved - complete|shostak|0.200|
|dl_not_not|✅ proved - complete|shostak|0.045|
|dl_not_true|✅ proved - complete|shostak|0.040|
|dl_not_false|✅ proved - complete|shostak|0.040|
|dl_true_and|✅ proved - complete|shostak|0.040|
|dl_and_true|✅ proved - complete|shostak|0.040|
|dl_false_and|✅ proved - complete|shostak|0.040|
|dl_and_false|✅ proved - complete|shostak|0.050|
|dl_true_or|✅ proved - complete|shostak|0.041|
|dl_or_true|✅ proved - complete|shostak|0.050|
|dl_false_or|✅ proved - complete|shostak|0.040|
|dl_or_false|✅ proved - complete|shostak|0.040|
|dl_true_implies|✅ proved - complete|shostak|0.050|
|dl_implies_true|✅ proved - complete|shostak|0.040|
|dl_false_implies|✅ proved - complete|shostak|0.040|
|dl_implies_false|✅ proved - complete|shostak|0.050|
|dl_forall_bool|✅ proved - complete|shostak|0.045|
|dl_exists_bool|✅ proved - complete|shostak|0.050|
|nqb_to_be_TCC1|✅ proved - complete|shostak|0.050|
|nqb_to_be_TCC2|✅ proved - complete|shostak|0.050|
|nqb_to_be_TCC3|✅ proved - complete|shostak|0.050|
|nqb_to_be_TCC4|✅ proved - complete|shostak|0.040|
|nqb_to_be_TCC5|✅ proved - complete|shostak|0.050|
|nqb_normal?_TCC1|✅ proved - complete|shostak|0.040|
|nqb_normal?_TCC2|✅ proved - complete|shostak|0.040|
|normalize_rec_TCC1|✅ proved - complete|shostak|0.056|
|normalize_rec_TCC2|✅ proved - complete|shostak|0.210|
|normalize_rec_TCC3|✅ proved - complete|shostak|0.935|
|normalize_rec_TCC4|✅ proved - complete|shostak|0.207|
|normalize_rec_TCC5|✅ proved - complete|shostak|0.459|
|normalize_rec_TCC6|✅ proved - complete|shostak|0.190|
|normalize_rec_TCC7|✅ proved - complete|shostak|0.100|
|normalize_TCC1|✅ proved - complete|shostak|0.040|

## `bound_variables_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|bv_me_TCC1|✅ proved - complete|shostak|0.030|
|bv_me_TCC2|✅ proved - complete|shostak|0.060|
|bv_me_TCC3|✅ proved - complete|shostak|0.030|
|bv_me_TCC4|✅ proved - complete|shostak|0.110|
|bv_me_TCC5|✅ proved - incomplete|shostak|0.060|
|BV_TCC1|✅ proved - complete|shostak|0.037|
|BV_TCC2|✅ proved - complete|shostak|0.120|
|BV_TCC3|✅ proved - complete|shostak|0.120|
|BV_TCC4|✅ proved - complete|shostak|0.100|
|BV_TCC5|✅ proved - incomplete|shostak|0.060|
|bv_me_nth_TCC1|✅ proved - incomplete|shostak|0.185|
|bv_me_nth|✅ proved - incomplete|shostak|0.330|
|BV_implies_not_fresh|✅ proved - incomplete|shostak|0.940|
|BV_invar|✅ proved - incomplete|shostak|0.000|
|bvs?_TCC1|✅ proved - complete|shostak|0.050|
|bvs?_TCC2|✅ proved - incomplete|shostak|0.040|
|bvs?_TCC3|✅ proved - incomplete|shostak|0.139|

## `hp_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|assign1_prop_TCC1|✅ proved - complete|shostak|0.070|
|assign1_prop|✅ proved - incomplete|shostak|0.288|
|assign_prop_TCC1|✅ proved - complete|shostak|0.070|
|assign_prop|✅ proved - incomplete|shostak|0.474|
|assign_comm_TCC1|✅ proved - complete|shostak|0.110|
|assign_comm|✅ proved - incomplete|shostak|0.280|
|union_prop_TCC1|✅ proved - incomplete|shostak|0.150|
|union_prop|✅ proved - incomplete|shostak|0.255|
|union_prop_xx|✅ proved - incomplete|shostak|0.058|
|union_id|✅ proved - incomplete|shostak|0.060|
|union_comm|✅ proved - incomplete|shostak|0.219|
|seq_prop|✅ proved - incomplete|shostak|0.658|
|test_prop|✅ proved - incomplete|shostak|0.060|
|diff_prop_TCC1|✅ proved - incomplete|shostak|0.142|
|diff_prop|✅ proved - incomplete|shostak|4.649|
|star_prop_imp_TCC1|✅ proved - complete|shostak|0.069|
|star_prop_imp|✅ proved - incomplete|shostak|0.367|
|star2_prop_imp_TCC1|✅ proved - complete|shostak|0.060|
|star2_prop_imp|✅ proved - incomplete|shostak|1.160|

## `substitution`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|assign_env_TCC1|✅ proved - complete|shostak|0.060|
|assign_env_TCC2|✅ proved - complete|shostak|0.050|
|assign_env_TCC3|✅ proved - complete|shostak|0.123|
|assign_env_TCC4|✅ proved - complete|shostak|0.050|
|SUB_MapExpr_TCC1|✅ proved - complete|shostak|0.060|
|SUB_MapExpr_TCC2|✅ proved - complete|shostak|0.070|
|SUB_MapExpr_TCC3|✅ proved - complete|shostak|0.060|
|SUB_MapExpr_TCC4|✅ proved - complete|shostak|0.150|
|SUB_MapExpr_TCC5|✅ proved - complete|shostak|1.079|
|assign_env__TCC1|✅ proved - incomplete|shostak|0.090|
|assign_env__TCC2|✅ proved - incomplete|shostak|0.070|
|assign_env__alt_j_TCC1|✅ proved - complete|shostak|0.040|
|assign_env__alt_j_TCC2|✅ proved - complete|shostak|0.044|
|assign_env__alt_j_TCC3|✅ proved - incomplete|shostak|0.100|
|assign_env__alt_j_TCC4|✅ proved - incomplete|shostak|0.624|
|assign_env__alt_j_TCC5|✅ proved - incomplete|shostak|0.799|
|assign_env_phantom_eq_TCC1|✅ proved - complete|shostak|0.040|
|assign_env_phantom_eq|✅ proved - incomplete|shostak|0.632|
|assign_env_alt|✅ proved - incomplete|shostak|0.156|
|assign_env_ext|✅ proved - complete|shostak|0.357|
|assign_sub_ext|✅ proved - complete|shostak|0.047|
|SUB_MapVar_TCC1|✅ proved - complete|shostak|0.060|
|SUB_MapVar_TCC2|✅ proved - complete|shostak|0.150|
|SUB_MapVar_TCC3|✅ proved - complete|shostak|0.040|
|SUB_MapVar_TCC4|✅ proved - complete|shostak|0.115|
|SUB_MapVar_TCC5|✅ proved - complete|shostak|0.150|
|dl_subre_val|✅ proved - complete|shostak|0.060|
|dl_subre_const|✅ proved - complete|shostak|0.050|
|dl_subre_plus|✅ proved - complete|shostak|0.099|
|dl_subre_minus|✅ proved - complete|shostak|0.070|
|dl_subre_neg|✅ proved - complete|shostak|0.070|
|dl_subre_prod|✅ proved - complete|shostak|0.090|
|dl_subre_prod_scal1|✅ proved - complete|shostak|0.088|
|dl_subre_prod_scal2|✅ proved - complete|shostak|0.100|
|dl_subre_exp|✅ proved - incomplete|shostak|0.140|
|dl_sub_bool|✅ proved - complete|shostak|0.060|
|dl_sub_bool_restricted|✅ proved - complete|shostak|0.063|
|dl_sub_and|✅ proved - complete|shostak|0.070|
|dl_sub_or|✅ proved - complete|shostak|0.070|
|dl_sub_not|✅ proved - complete|shostak|0.070|
|dl_sub_implies|✅ proved - complete|shostak|0.070|
|dl_sub_ge|✅ proved - complete|shostak|0.071|
|dl_sub_gt|✅ proved - complete|shostak|0.070|
|dl_sub_le|✅ proved - complete|shostak|0.070|
|dl_sub_lt|✅ proved - complete|shostak|0.070|
|dl_sub_eq|✅ proved - complete|shostak|0.060|
|dl_sub_neq|✅ proved - complete|shostak|0.071|
|dl_sub_iff|✅ proved - complete|shostak|0.070|
|dl_sub_allruns0_x_neq_y_TCC1|✅ proved - incomplete|shostak|0.140|
|dl_sub_allruns0_x_neq_y_TCC2|✅ proved - incomplete|shostak|0.000|
|dl_sub_allruns0_x_neq_y_TCC3|✅ proved - complete|shostak|0.160|
|dl_sub_allruns0_x_neq_y_TCC4|✅ proved - incomplete|shostak|0.170|
|dl_sub_allruns0_x_neq_y|✅ proved - incomplete|shostak|1.808|
|dl_sub_allruns_assign0_x_eq_y_TCC1|✅ proved - incomplete|shostak|0.170|
|dl_sub_allruns_assign0_x_eq_y_TCC2|✅ proved - incomplete|shostak|0.154|
|dl_sub_allruns_assign0_x_eq_y|✅ proved - incomplete|shostak|0.403|
|dl_sub_forall|✅ proved - complete|shostak|0.070|
|dl_sub_exists|✅ proved - complete|shostak|0.070|

## `ODEs_equiv`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Re_TCC1|✅ proved - incomplete|shostak|0.090|
|Re_TCC2|✅ proved - complete|shostak|0.074|
|Re_TCC3|✅ proved - complete|shostak|0.050|
|Re_TCC4|✅ proved - complete|shostak|0.090|
|Re_TCC5|✅ proved - incomplete|shostak|0.230|
|Re_TCC6|✅ proved - complete|shostak|0.050|
|Re_nth_TCC1|✅ proved - incomplete|shostak|0.080|
|Re_nth|✅ proved - incomplete|shostak|0.281|
|env_vec_TCC1|✅ proved - complete|shostak|0.050|
|env_vec_TCC2|✅ proved - complete|shostak|0.140|
|env_vec_TCC3|✅ proved - incomplete|shostak|0.180|
|env_vec_nth_TCC1|✅ proved - incomplete|shostak|0.080|
|env_vec_nth|✅ proved - incomplete|shostak|0.339|
|r2v_2_fs_TCC1|✅ proved - complete|shostak|0.070|
|r2v_2_fs_TCC2|✅ proved - incomplete|shostak|0.050|
|r2v_2_fs_TCC3|✅ proved - incomplete|shostak|0.050|
|r2v_2_fs_TCC4|✅ proved - incomplete|shostak|0.468|
|r2v_2_fs_TCC5|✅ proved - incomplete|shostak|0.080|
|fs_2_r2v_TCC1|✅ proved - incomplete|shostak|0.040|
|fs_2_r2v_TCC2|✅ proved - incomplete|shostak|0.060|
|fs_2_r2v_TCC3|✅ proved - incomplete|shostak|0.064|
|fs_2_r2v_TCC4|✅ proved - incomplete|shostak|0.040|
|fs_2_r2v_TCC5|✅ proved - incomplete|shostak|0.070|
|fs_2_r2v_TCC6|✅ proved - incomplete|shostak|0.050|
|fs_2_r2v_TCC7|✅ proved - incomplete|shostak|0.040|
|fs_2_r2v_TCC8|✅ proved - incomplete|shostak|0.090|
|fs_2_r2v_TCC9|✅ proved - incomplete|shostak|0.380|
|fs_2_f2v_nth_TCC1|✅ proved - incomplete|shostak|0.074|
|fs_2_f2v_nth|✅ proved - incomplete|shostak|0.460|
|fs_2_f2v_eq_TCC1|✅ proved - incomplete|shostak|0.040|
|fs_2_f2v_eq_TCC2|✅ proved - incomplete|shostak|0.070|
|fs_2_f2v_eq_TCC3|✅ proved - incomplete|shostak|0.093|
|fs_2_f2v_eq_TCC4|✅ proved - incomplete|shostak|0.070|
|fs_2_f2v_eq_TCC5|✅ proved - incomplete|shostak|0.050|
|fs_2_f2v_eq_TCC6|✅ proved - incomplete|shostak|0.274|
|fs_2_f2v_eq|✅ proved - incomplete|shostak|2.279|
|Odes_f_TCC1|✅ proved - incomplete|shostak|0.050|
|cont_f?_TCC1|✅ proved - incomplete|shostak|0.070|
|cont_f?_TCC2|✅ proved - incomplete|shostak|0.060|
|cont_f?_TCC3|✅ proved - incomplete|shostak|0.070|
|cont_f?_TCC4|✅ proved - incomplete|shostak|0.180|
|cont_f?_TCC5|✅ proved - incomplete|shostak|0.130|
|cont_f?_TCC6|✅ proved - incomplete|shostak|0.070|
|max_diff_TCC1|✅ proved - incomplete|shostak|0.050|
|max_diff_TCC2|✅ proved - incomplete|shostak|0.134|
|max_diff_TCC3|✅ proved - incomplete|shostak|0.050|
|max_diff_TCC4|✅ proved - incomplete|shostak|0.040|
|max_diff_TCC5|✅ proved - incomplete|shostak|0.150|
|max_diff_TCC6|✅ proved - incomplete|shostak|0.194|
|max_diff_TCC7|✅ proved - incomplete|shostak|0.080|
|max_diff_TCC8|✅ proved - incomplete|shostak|0.040|
|max_diff_TCC9|✅ proved - incomplete|shostak|1.101|
|max_diff_norm_inf_TCC1|✅ proved - incomplete|shostak|0.040|
|max_diff_norm_inf_TCC2|✅ proved - incomplete|shostak|0.080|
|max_diff_norm_inf_TCC3|✅ proved - incomplete|shostak|0.040|
|max_diff_norm_inf_TCC4|✅ proved - incomplete|shostak|0.070|
|max_diff_norm_inf_TCC5|✅ proved - incomplete|shostak|0.118|
|max_diff_norm_inf|✅ proved - incomplete|shostak|3.506|
|cdr_TCC1|✅ proved - incomplete|shostak|0.040|
|cdr_TCC2|✅ proved - incomplete|shostak|0.040|
|cdr_const_TCC1|✅ proved - incomplete|shostak|0.040|
|cdr_const|✅ proved - incomplete|shostak|0.184|
|Lip_ODEs?_TCC1|✅ proved - incomplete|shostak|0.060|
|Lip_ODEs?_TCC2|✅ proved - incomplete|shostak|0.100|
|Lip_ODEs?_TCC3|✅ proved - incomplete|shostak|0.140|
|Lip_ODEs?_TCC4|✅ proved - incomplete|shostak|0.098|
|Lip_DDL_ODEs|✅ proved - incomplete|shostak|0.000|
|cont_DDL_ODEs|✅ proved - incomplete|shostak|8.669|
|diff_sol_Lip_TCC1|✅ proved - incomplete|shostak|0.554|
|diff_sol_Lip_TCC2|✅ proved - incomplete|shostak|0.050|
|diff_sol_Lip|✅ proved - incomplete|shostak|0.000|
|diff_sol_eq_TCC1|✅ proved - incomplete|shostak|0.127|
|diff_sol_eq_TCC2|✅ proved - incomplete|shostak|0.050|
|diff_sol_eq|✅ proved - incomplete|shostak|0.060|
|fs_sol_TCC1|✅ proved - incomplete|shostak|0.090|
|ODEs_s_sub_TCC1|✅ proved - incomplete|shostak|0.633|
|ODEs_s_sub_TCC2|✅ proved - incomplete|shostak|0.076|
|ODEs_s_sub|✅ proved - incomplete|shostak|0.737|
|fs_sol_sub_TCC1|✅ proved - incomplete|shostak|0.072|
|fs_sol_sub_TCC2|✅ proved - incomplete|shostak|0.080|
|fs_sol_sub_TCC3|✅ proved - incomplete|shostak|0.065|
|fs_sol_sub|✅ proved - incomplete|shostak|0.180|
|env_sol_sub_TCC1|✅ proved - incomplete|shostak|0.641|
|env_sol_sub_TCC2|✅ proved - incomplete|shostak|0.842|
|env_sol_sub_TCC3|✅ proved - incomplete|shostak|0.080|
|env_sol_sub_TCC4|✅ proved - incomplete|shostak|0.057|
|env_sol_sub|✅ proved - incomplete|shostak|0.300|
|solution_odes_sub|✅ proved - incomplete|shostak|0.311|
|solution_odes_subset|✅ proved - incomplete|shostak|0.100|
|odes_hp_s_TCC1|✅ proved - incomplete|shostak|0.050|
|odes_hp_s_TCC2|✅ proved - incomplete|shostak|0.050|
|odes_hp_s_TCC3|✅ proved - incomplete|shostak|0.337|
|odes_hp_s|✅ proved - incomplete|shostak|0.355|
|fs_sol_hp_TCC1|✅ proved - incomplete|shostak|0.304|
|fs_sol_hp_TCC2|✅ proved - incomplete|shostak|0.374|
|fs_sol_hp_TCC3|✅ proved - incomplete|shostak|0.241|
|fs_sol_hp_TCC4|✅ proved - incomplete|shostak|0.390|
|fs_sol_hp_TCC5|✅ proved - incomplete|shostak|0.455|
|fs_sol_hp_fs_TCC1|✅ proved - incomplete|shostak|0.050|
|fs_sol_hp_fs|✅ proved - incomplete|shostak|0.392|
|fs_sol_hp_sol|✅ proved - incomplete|shostak|2.476|
|fs_sol_hp_sol_u|✅ proved - incomplete|shostak|1.044|
|diff_sol_eq_dd|✅ proved - incomplete|shostak|1.303|

## `differentiation`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_derivatives_TCC1|✅ proved - incomplete|shostak|0.040|
|IMP_derivatives_TCC2|✅ proved - incomplete|shostak|0.040|
|right_dd_i|✅ proved - incomplete|shostak|0.218|
|right_dd|✅ proved - incomplete|shostak|0.060|
|connection_proj|✅ proved - incomplete|shostak|0.100|
|right_ne_i|✅ proved - incomplete|shostak|0.190|
|right_ne|✅ proved - incomplete|shostak|0.040|
|ddl_dom_upto|✅ proved - incomplete|shostak|0.058|
|ddl_dom_weak|✅ proved - incomplete|shostak|0.060|
|ddl_dom_dd|✅ proved - incomplete|shostak|0.692|
|ddl_dom__upto_dd|✅ proved - incomplete|shostak|0.050|
|ddl_dom_noe|✅ proved - incomplete|shostak|0.050|
|dl_true_DDL|✅ proved - incomplete|shostak|0.146|
|dl_true_up_DDL|✅ proved - incomplete|shostak|0.140|
|derivable?_TCC1|✅ proved - incomplete|shostak|0.117|
|derivable?_TCC2|✅ proved - incomplete|shostak|0.050|
|derivable?_TCC3|✅ proved - incomplete|shostak|0.040|
|derivable_up?_TCC1|✅ proved - incomplete|shostak|0.050|
|derivable?_TCC4|✅ proved - incomplete|shostak|0.086|
|hathat_diff_real_TCC1|✅ proved - incomplete|shostak|0.040|
|hathat_diff_real_TCC2|✅ proved - incomplete|shostak|1.319|
|hathat_diff_real_TCC3|✅ proved - incomplete|shostak|0.133|
|hathat_diff_real|✅ proved - incomplete|shostak|0.190|
|expt_TCC1|✅ proved - incomplete|shostak|0.050|
|expt_TCC2|✅ proved - incomplete|shostak|0.050|
|sqrt_hathat_TCC1|✅ proved - incomplete|shostak|0.040|
|sqrt_hathat|✅ proved - incomplete|shostak|0.585|
|sqrt_hathat_neg_TCC1|✅ proved - incomplete|shostak|0.060|
|sqrt_hathat_neg|✅ proved - incomplete|shostak|0.230|
|expt_exp_equiv|✅ proved - incomplete|shostak|0.069|
|partial_diff_TCC1|✅ proved - incomplete|shostak|0.060|
|dl_derivable_const|✅ proved - incomplete|shostak|0.080|
|dl_partial_const_TCC1|✅ proved - incomplete|shostak|0.048|
|dl_partial_const|✅ proved - incomplete|shostak|0.213|
|dl_derivable_up_cnst|✅ proved - incomplete|shostak|0.070|
|dl_derivable_val|✅ proved - incomplete|shostak|0.093|
|dl_derivable_up_val|✅ proved - incomplete|shostak|0.060|
|dl_partial_val_TCC1|✅ proved - incomplete|shostak|0.050|
|dl_partial_val|✅ proved - incomplete|shostak|0.261|
|dl_derivable_plus|✅ proved - incomplete|shostak|0.160|
|dl_partial_plus_TCC1|✅ proved - incomplete|shostak|0.056|
|dl_partial_plus|✅ proved - incomplete|shostak|0.323|
|dl_derivable_up_sum|✅ proved - incomplete|shostak|0.080|
|dl_derivable_mult|✅ proved - incomplete|shostak|0.077|
|dl_partial_mult_TCC1|✅ proved - incomplete|shostak|0.040|
|dl_partial_mult|✅ proved - incomplete|shostak|0.434|
|dl_derivable_up_prod|✅ proved - incomplete|shostak|0.075|
|dl_derivable_minus|✅ proved - incomplete|shostak|0.080|
|dl_partial_minus_TCC1|✅ proved - incomplete|shostak|0.040|
|dl_partial_minus|✅ proved - incomplete|shostak|0.253|
|dl_derivable_up_minus|✅ proved - incomplete|shostak|0.130|
|dl_derivable_negative|✅ proved - incomplete|shostak|0.154|
|dl_partial_negative_TCC1|✅ proved - incomplete|shostak|0.040|
|dl_partial_negative|✅ proved - incomplete|shostak|0.276|
|dl_derivable_pow|✅ proved - incomplete|shostak|0.649|
|dl_derivable_up_pow|✅ proved - incomplete|shostak|0.215|
|dl_derivable_div|✅ proved - incomplete|shostak|0.358|
|dl_partial_div_TCC1|✅ proved - incomplete|shostak|0.034|
|dl_partial_div|✅ proved - incomplete|shostak|1.073|
|dl_derivable_up_div|✅ proved - incomplete|shostak|0.080|
|dl_derivable_comp_point_TCC1|✅ proved - incomplete|shostak|2.069|
|dl_derivable_comp_point_TCC2|✅ proved - incomplete|shostak|0.000|
|dl_derivable_comp_point_TCC3|✅ proved - incomplete|shostak|0.170|
|dl_derivable_comp_point|✅ proved - incomplete|shostak|0.288|
|dl_derivable_comp_TCC1|✅ proved - incomplete|shostak|0.055|
|dl_derivable_comp_TCC2|✅ proved - incomplete|shostak|0.050|
|dl_derivable_comp_TCC3|✅ proved - incomplete|shostak|0.170|
|dl_derivable_comp|✅ proved - incomplete|shostak|0.075|
|dl_partial_chain_TCC1|✅ proved - incomplete|shostak|0.040|
|dl_partial_chain_TCC2|✅ proved - incomplete|shostak|0.060|
|dl_partial_chain_TCC3|✅ proved - incomplete|shostak|0.050|
|dl_partial_chain_TCC4|✅ proved - incomplete|shostak|0.170|
|dl_partial_chain|✅ proved - incomplete|shostak|0.603|
|dl_derivable_exp|✅ proved - incomplete|shostak|2.073|
|dl_partial_exp_TCC1|✅ proved - incomplete|shostak|0.040|
|dl_partial_exp|✅ proved - incomplete|shostak|6.041|
|dl_derivable_sqrt|✅ proved - incomplete|shostak|0.539|
|dl_partial_sqrt_TCC1|✅ proved - incomplete|shostak|0.054|
|dl_partial_sqrt|✅ proved - incomplete|shostak|1.072|
|DIFT_last_TCC1|✅ proved - incomplete|shostak|0.050|
|DIFT_last_TCC2|✅ proved - incomplete|shostak|0.086|
|DIFT_last|✅ proved - incomplete|shostak|0.552|
|dl_dift_val_zero|✅ proved - incomplete|shostak|0.528|
|dl_dift_val_P|✅ proved - incomplete|shostak|1.134|
|dl_dift_val_TCC1|✅ proved - incomplete|shostak|0.044|
|dl_dift_val|✅ proved - incomplete|shostak|0.080|
|dl_dift_const|✅ proved - incomplete|shostak|0.903|
|dl_dift_plus_TCC1|✅ proved - incomplete|shostak|0.050|
|dl_dift_plus|✅ proved - incomplete|shostak|0.000|
|dl_dift_minus|✅ proved - incomplete|shostak|1.131|
|dl_dift_negative|✅ proved - incomplete|shostak|1.946|
|dl_dift_mult|✅ proved - incomplete|shostak|4.398|
|dl_dift_divsafe|✅ proved - incomplete|shostak|4.594|
|dl_dift_exp|✅ proved - incomplete|shostak|1.029|
|dl_dift_pow|✅ proved - incomplete|shostak|1.587|
|dl_dift_sqrt|✅ proved - incomplete|shostak|1.277|
|ddt_TCC1|✅ proved - incomplete|shostak|0.060|
|ddt_TCC2|✅ proved - incomplete|shostak|0.050|
|ddt_TCC3|✅ proved - incomplete|shostak|0.179|
|ddt_not_in_map|✅ proved - incomplete|shostak|0.305|
|ddt_in_map_TCC1|✅ proved - incomplete|shostak|0.210|
|ddt_in_map|✅ proved - incomplete|shostak|1.575|
|re_plus_cnst0|✅ proved - incomplete|shostak|0.052|
|cnst0_plus_re|✅ proved - incomplete|shostak|0.060|
|re_minus_cnst0|✅ proved - incomplete|shostak|0.060|
|cnst0_minus_re|✅ proved - incomplete|shostak|0.110|
|re_prod_cnst0|✅ proved - incomplete|shostak|0.050|
|cnst0_prod_re|✅ proved - incomplete|shostak|0.106|
|sqrt_safe_sq|✅ proved - incomplete|shostak|0.100|
|ODEs_P?_TCC1|✅ proved - incomplete|shostak|9.051|
|DIFT_TCC1|✅ proved - incomplete|shostak|0.070|
|DIFT_TCC2|✅ proved - incomplete|shostak|0.134|
|DIFT_TCC3|✅ proved - incomplete|shostak|0.090|
|DIFT_TCC4|✅ proved - incomplete|shostak|0.597|
|DIFT_TCC5|✅ proved - incomplete|shostak|0.090|
|DIFT_TCC6|✅ proved - incomplete|shostak|0.471|
|DIFT_TCC7|✅ proved - incomplete|shostak|0.080|
|DIFT_TCC8|✅ proved - incomplete|shostak|0.149|
|DIFT_TCC9|✅ proved - incomplete|shostak|0.090|
|DIFT_TCC10|✅ proved - incomplete|shostak|0.060|

## `chain_rule_re`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|env_2_vec_TCC1|✅ proved - incomplete|shostak|0.050|
|env_2_vec_TCC2|✅ proved - complete|shostak|0.060|
|env_2_vec_TCC3|✅ proved - complete|shostak|0.040|
|env_2_vec_TCC4|✅ proved - incomplete|shostak|0.000|
|env_2_vec_nth_TCC1|✅ proved - incomplete|shostak|0.130|
|env_2_vec_nth|✅ proved - incomplete|shostak|0.266|
|projv_dd|✅ proved - incomplete|shostak|4.098|
|proj_projv_TCC1|✅ proved - incomplete|shostak|0.070|
|proj_projv_TCC2|✅ proved - incomplete|shostak|0.220|
|proj_projv|✅ proved - incomplete|shostak|1.046|
|projv_proj_TCC1|✅ proved - complete|shostak|0.050|
|projv_proj_TCC2|✅ proved - incomplete|shostak|0.220|
|projv_proj|✅ proved - incomplete|shostak|0.522|
|ddl_dom_dom_dir|✅ proved - incomplete|shostak|1.400|
|dd_e_partial|✅ proved - incomplete|shostak|1.236|
|vec_2_env_TCC1|✅ proved - incomplete|shostak|0.138|
|vec_2_env_id|✅ proved - incomplete|shostak|0.250|
|env_2_vec_id|✅ proved - incomplete|shostak|0.321|
|vec_2_env_plus_TCC1|✅ proved - incomplete|shostak|0.213|
|vec_2_env_plus_TCC2|✅ proved - incomplete|shostak|0.070|
|vec_2_env_plus|✅ proved - incomplete|shostak|1.896|
|differentiable_re_p?_TCC1|✅ proved - incomplete|shostak|0.050|
|differentiable_re_p?_TCC2|✅ proved - incomplete|shostak|0.050|
|diff_env_change|✅ proved - incomplete|shostak|0.343|
|diff_re_diff_mv_TCC1|✅ proved - incomplete|shostak|0.040|
|diff_re_diff_mv|✅ proved - incomplete|shostak|0.287|
|der_re_p_TCC1|✅ proved - incomplete|shostak|0.298|
|der_re_TCC1|✅ proved - incomplete|shostak|3.464|
|der_re_grad_TCC1|✅ proved - incomplete|shostak|0.140|
|der_re_grad_TCC2|✅ proved - incomplete|shostak|0.292|
|der_re_grad|✅ proved - incomplete|shostak|0.443|
|diff_re_init_partial_TCC1|✅ proved - incomplete|shostak|0.130|
|diff_re_init_partial|✅ proved - incomplete|shostak|0.190|
|der_re_partial_TCC1|✅ proved - incomplete|shostak|0.181|
|der_re_partial|✅ proved - incomplete|shostak|0.160|
|re_diff_mv|✅ proved - incomplete|shostak|0.156|
|re_der_mv_TCC1|✅ proved - incomplete|shostak|0.110|
|re_der_mv|✅ proved - incomplete|shostak|0.320|
|re_diff_mv_ll_TCC1|✅ proved - incomplete|shostak|0.060|
|re_diff_mv_ll_TCC2|✅ proved - incomplete|shostak|0.360|
|re_diff_mv_ll_TCC3|✅ proved - incomplete|shostak|0.063|
|re_diff_mv_ll_TCC4|✅ proved - incomplete|shostak|0.060|
|re_diff_mv_ll_TCC5|✅ proved - incomplete|shostak|0.080|
|re_diff_mv_ll|✅ proved - incomplete|shostak|0.855|
|re_der_mv_ll_TCC1|✅ proved - incomplete|shostak|0.130|
|re_der_mv_ll_TCC2|✅ proved - incomplete|shostak|0.065|
|re_der_mv_ll_TCC3|✅ proved - incomplete|shostak|0.100|
|re_der_mv_ll|✅ proved - incomplete|shostak|0.845|
|with_e_vec_TCC1|✅ proved - complete|shostak|0.040|
|with_e_vec_TCC2|✅ proved - incomplete|shostak|0.246|
|with_e_vec|✅ proved - incomplete|shostak|0.535|
|derivable_partial_TCC1|✅ proved - incomplete|shostak|0.130|
|derivable_partial_TCC2|✅ proved - incomplete|shostak|0.060|
|derivable_partial_TCC3|✅ proved - incomplete|shostak|0.125|
|derivable_partial|✅ proved - incomplete|shostak|4.102|
|derivable_partial_D_TCC1|✅ proved - incomplete|shostak|0.060|
|derivable_partial_D|✅ proved - incomplete|shostak|0.000|
|deriv_partial_TCC1|✅ proved - incomplete|shostak|0.134|
|deriv_partial|✅ proved - incomplete|shostak|3.365|
|diff_re_derivable_partial_TCC1|✅ proved - incomplete|shostak|0.459|
|diff_re_derivable_partial|✅ proved - incomplete|shostak|0.080|
|diff_re_partialable_p_TCC1|✅ proved - incomplete|shostak|0.463|
|diff_re_partialable_p|✅ proved - incomplete|shostak|0.220|
|diff_re_derivable_up_TCC1|✅ proved - incomplete|shostak|0.443|
|diff_re_derivable_up|✅ proved - incomplete|shostak|0.130|
|der_re_partial_der_TCC1|✅ proved - incomplete|shostak|0.050|
|der_re_partial_der|✅ proved - incomplete|shostak|0.119|
|der_ll_partial_der_TCC1|✅ proved - incomplete|shostak|0.080|
|der_ll_partial_der_TCC2|✅ proved - incomplete|shostak|0.080|
|der_ll_partial_der_TCC3|✅ proved - incomplete|shostak|0.297|
|der_ll_partial_der_TCC4|✅ proved - incomplete|shostak|0.070|
|der_ll_partial_der_TCC5|✅ proved - incomplete|shostak|14.201|
|der_ll_partial_der|✅ proved - incomplete|shostak|0.150|
|eq_re_comp|✅ proved - incomplete|shostak|0.279|
|env_sol_env2vec|✅ proved - incomplete|shostak|0.360|
|e2v_diff_p_TCC1|✅ proved - incomplete|shostak|0.049|
|e2v_diff_p|✅ proved - incomplete|shostak|3.353|
|e2v_der_p_TCC1|✅ proved - incomplete|shostak|0.160|
|e2v_der_p_TCC2|✅ proved - incomplete|shostak|0.598|
|e2v_der_p_TCC3|✅ proved - incomplete|shostak|0.342|
|e2v_der_p|✅ proved - incomplete|shostak|0.385|
|e2v_der_p_not_in_map|✅ proved - incomplete|shostak|1.543|
|e2v_der_p_in_map|✅ proved - incomplete|shostak|0.000|
|e2v_der_p_in_map_ode|✅ proved - incomplete|shostak|5.436|
|e2v_re_diff_p_TCC1|✅ proved - incomplete|shostak|0.060|
|e2v_re_diff_p_TCC2|✅ proved - incomplete|shostak|0.060|
|e2v_re_diff_p|✅ proved - incomplete|shostak|1.722|
|e2v_re_der_p_TCC1|✅ proved - incomplete|shostak|0.080|
|e2v_re_der_p_TCC2|✅ proved - incomplete|shostak|0.070|
|e2v_re_der_p_TCC3|✅ proved - incomplete|shostak|0.140|
|e2v_re_der_p_TCC4|✅ proved - incomplete|shostak|0.060|
|e2v_re_der_p_TCC5|✅ proved - incomplete|shostak|0.098|
|e2v_re_der_p_TCC6|✅ proved - incomplete|shostak|0.170|
|e2v_re_der_p|✅ proved - incomplete|shostak|2.174|
|re_diff_chain_TCC1|✅ proved - incomplete|shostak|0.097|
|re_diff_chain_TCC2|✅ proved - incomplete|shostak|0.060|
|re_diff_chain_TCC3|✅ proved - incomplete|shostak|0.060|
|re_diff_chain|✅ proved - incomplete|shostak|0.220|
|init_re_der_chain_TCC1|✅ proved - incomplete|shostak|0.057|
|init_re_der_chain_TCC2|✅ proved - incomplete|shostak|0.060|
|init_re_der_chain_TCC3|✅ proved - incomplete|shostak|0.150|
|init_re_der_chain_TCC4|✅ proved - incomplete|shostak|0.067|
|init_re_der_chain_TCC5|✅ proved - incomplete|shostak|0.060|
|init_re_der_chain_TCC6|✅ proved - incomplete|shostak|0.080|
|init_re_der_chain_TCC7|✅ proved - incomplete|shostak|0.191|
|init_re_der_chain_TCC8|✅ proved - incomplete|shostak|0.070|
|init_re_der_chain_TCC9|✅ proved - incomplete|shostak|0.090|
|init_re_der_chain_TCC10|✅ proved - incomplete|shostak|1.185|
|init_re_der_chain_TCC11|✅ proved - incomplete|shostak|1.526|
|init_re_der_chain|✅ proved - incomplete|shostak|0.613|
|init2_re_der_chain_TCC1|✅ proved - incomplete|shostak|0.066|
|init2_re_der_chain_TCC2|✅ proved - incomplete|shostak|0.060|
|init2_re_der_chain_TCC3|✅ proved - incomplete|shostak|0.060|
|init2_re_der_chain|✅ proved - incomplete|shostak|2.534|
|init3_re_der_chain_TCC1|✅ proved - incomplete|shostak|0.070|
|init3_re_der_chain_TCC2|✅ proved - incomplete|shostak|0.050|
|init3_re_der_chain_TCC3|✅ proved - incomplete|shostak|0.067|
|init3_re_der_chain_TCC4|✅ proved - incomplete|shostak|0.210|
|init3_re_der_chain_TCC5|✅ proved - incomplete|shostak|0.097|
|init3_re_der_chain_TCC6|✅ proved - incomplete|shostak|0.100|
|init3_re_der_chain_TCC7|✅ proved - incomplete|shostak|0.216|
|init3_re_der_chain_TCC8|✅ proved - incomplete|shostak|0.260|
|init3_re_der_chain_TCC9|✅ proved - incomplete|shostak|0.302|
|init3_re_der_chain_TCC10|✅ proved - incomplete|shostak|0.110|
|init3_re_der_chain_TCC11|✅ proved - incomplete|shostak|0.098|
|init3_re_der_chain|✅ proved - incomplete|shostak|0.080|
|SUB_DIFTRe_sig_TCC1|✅ proved - incomplete|shostak|0.080|
|SUB_DIFTRe_sig_TCC2|✅ proved - incomplete|shostak|0.050|
|SUB_DIFTRe_sig_TCC3|✅ proved - incomplete|shostak|0.050|
|SUB_DIFTRe_sig|✅ proved - incomplete|shostak|15.918|
|derivable_M_nqbool?_TCC1|✅ proved - incomplete|shostak|0.273|
|derivable_M_nqbool?_TCC2|✅ proved - incomplete|shostak|0.280|
|derivable_M_normalize_rec|✅ proved - incomplete|shostak|0.260|
|derivable_M_normalize|✅ proved - incomplete|shostak|0.060|

## `diff_re_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|diff_re_cont_TCC1|✅ proved - incomplete|shostak|1.020|
|diff_re_cont_TCC2|✅ proved - incomplete|shostak|0.809|
|diff_re_cont|✅ proved - incomplete|shostak|1.290|
|diff_re_divbound_TCC1|✅ proved - incomplete|shostak|0.302|
|diff_re_divbound_TCC2|✅ proved - incomplete|shostak|0.080|
|diff_re_divbound|✅ proved - incomplete|shostak|1.160|
|diff_re_val|✅ proved - incomplete|shostak|2.599|
|diff_re_cnst|✅ proved - incomplete|shostak|0.707|
|diff_re_prod|✅ proved - incomplete|shostak|13.392|
|diff_re_pow|✅ proved - incomplete|shostak|0.212|
|diff_re_sum|✅ proved - incomplete|shostak|1.262|
|diff_re_diff|✅ proved - incomplete|shostak|0.100|
|diff_re_inv|✅ proved - incomplete|shostak|2:18.425|
|diff_re_div|✅ proved - incomplete|shostak|0.175|

## `continuity_re_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cont_re?_TCC1|✅ proved - complete|shostak|0.040|

## `continuity_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|f_sol_continuous|✅ proved - incomplete|shostak|0.130|
|c_delt_TCC1|✅ proved - incomplete|shostak|0.000|
|min_delt_TCC1|✅ proved - incomplete|shostak|0.090|
|min_delt_TCC2|✅ proved - incomplete|shostak|0.266|
|min_delt_TCC3|✅ proved - incomplete|shostak|0.471|
|min_delt_TCC4|✅ proved - incomplete|shostak|0.080|
|min_delt_TCC5|✅ proved - incomplete|shostak|0.256|
|min_delt_TCC6|✅ proved - incomplete|shostak|0.120|
|min_delt_TCC7|✅ proved - incomplete|shostak|0.080|
|min_delt_TCC8|✅ proved - incomplete|shostak|0.347|
|min_delt_TCC9|✅ proved - incomplete|shostak|0.080|
|min_delt_TCC10|✅ proved - incomplete|shostak|1.234|
|env_at_t_continuous|✅ proved - incomplete|shostak|0.298|
|re_env_continuous|✅ proved - incomplete|shostak|1.166|

## `continuity_re_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cont_re_val|✅ proved - complete|shostak|0.110|
|cont_re_cnst|✅ proved - complete|shostak|0.100|
|cont_re_prod|✅ proved - incomplete|shostak|4.950|
|cont_re_pow|✅ proved - incomplete|shostak|0.375|
|cont_re_sum|✅ proved - complete|shostak|0.392|
|cont_re_diff|✅ proved - incomplete|shostak|0.110|
|cont_re_div|✅ proved - incomplete|shostak|6.941|

## `fresh_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|fresh_re_cnst|✅ proved - complete|shostak|0.045|
|fresh_re_val|✅ proved - complete|shostak|0.060|
|fresh_re_sum|✅ proved - complete|shostak|0.080|
|fresh_re_minus|✅ proved - complete|shostak|0.070|
|fresh_re_prod|✅ proved - complete|shostak|0.097|
|fresh_re_div|✅ proved - complete|shostak|0.120|
|fresh_re_div_safe|✅ proved - incomplete|shostak|0.060|
|fresh_re_sqrt_safe|✅ proved - incomplete|shostak|0.056|
|fresh_re_pow|✅ proved - incomplete|shostak|0.190|
|fresh_re_exp|✅ proved - incomplete|shostak|0.063|
|fresh_re_expt|✅ proved - incomplete|shostak|0.000|
|fresh_re_ex1|✅ proved - complete|shostak|0.127|
|fresh_re_ex2|✅ proved - incomplete|shostak|0.137|
|not_fresh_re_val|✅ proved - complete|shostak|0.060|
|fresh_be_DLTRUE|✅ proved - complete|shostak|0.054|
|fresh_be_DLFALSE|✅ proved - complete|shostak|0.040|
|fresh_be_eq|✅ proved - complete|shostak|0.100|
|fresh_be_neq|✅ proved - complete|shostak|0.100|
|fresh_be_le|✅ proved - complete|shostak|0.098|
|fresh_be_lt|✅ proved - complete|shostak|0.100|
|fresh_be_ge|✅ proved - complete|shostak|0.100|
|fresh_be_gt|✅ proved - complete|shostak|0.090|
|fresh_be_or|✅ proved - complete|shostak|0.102|
|fresh_be_and|✅ proved - complete|shostak|0.090|
|fresh_be_implies|✅ proved - complete|shostak|0.100|
|fresh_be_not|✅ proved - complete|shostak|0.070|
|fresh_be_IFF|✅ proved - complete|shostak|0.125|
|fresh_fs_sol|✅ proved - incomplete|shostak|2.323|
|fresh_bstar_semantic_rel|✅ proved - incomplete|shostak|0.344|
|fresh_be_semantic_rel|✅ proved - incomplete|shostak|0.901|
|fresh_be_allruns|✅ proved - incomplete|shostak|0.110|
|fresh_be_allruns_e|✅ proved - incomplete|shostak|0.160|
|fresh_be_someruns|✅ proved - incomplete|shostak|0.120|

## `dynamic_logic`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|assign0_prop|✅ proved - incomplete|shostak|0.447|
|assign_assign_sub|✅ proved - incomplete|shostak|0.120|
|assign_sub_assign|✅ proved - incomplete|shostak|0.080|
|turnstile_TCC1|✅ proved - complete|shostak|0.076|
|turnstile_TCC2|✅ proved - complete|shostak|0.070|
|turnstile_TCC3|✅ proved - complete|shostak|0.100|
|turnstile_TCC4|✅ proved - incomplete|shostak|0.170|
|turnstile_TCC5|✅ proved - incomplete|shostak|0.150|
|turnstile_TCC6|✅ proved - incomplete|shostak|0.261|
|dlSequent_equiv|✅ proved - incomplete|shostak|0.185|
|dl_notR|✅ proved - incomplete|shostak|0.260|
|dl_notL|✅ proved - incomplete|shostak|0.271|
|dl_andR|✅ proved - incomplete|shostak|0.220|
|dl_andL|✅ proved - incomplete|shostak|0.245|
|dl_orR|✅ proved - incomplete|shostak|0.288|
|dl_orL|✅ proved - incomplete|shostak|0.300|
|dl_impliesR|✅ proved - incomplete|shostak|0.282|
|dl_impliesL|✅ proved - incomplete|shostak|0.351|
|dl_equivR|✅ proved - incomplete|shostak|0.746|
|dl_equivL|✅ proved - incomplete|shostak|0.440|
|dl_axiom|✅ proved - incomplete|shostak|0.289|
|dl_trueR|✅ proved - incomplete|shostak|0.130|
|dl_trueL|✅ proved - incomplete|shostak|0.170|
|dl_falseR|✅ proved - incomplete|shostak|0.182|
|dl_falseL|✅ proved - incomplete|shostak|0.140|
|dl_cut|✅ proved - incomplete|shostak|0.233|
|dl_weakR|✅ proved - incomplete|shostak|0.260|
|dl_weakL|✅ proved - incomplete|shostak|0.265|
|dl_forallR|✅ proved - incomplete|shostak|0.203|
|dl_forallL|✅ proved - incomplete|shostak|0.120|
|dl_existsR|✅ proved - incomplete|shostak|0.126|
|dl_existsL|✅ proved - incomplete|shostak|0.200|
|dl_existsrR|✅ proved - incomplete|shostak|0.130|
|dl_existsrRf|✅ proved - incomplete|shostak|0.139|
|dl_existsrL|✅ proved - incomplete|shostak|0.193|
|move_to_head_rec_TCC1|✅ proved - complete|shostak|0.070|
|move_to_head_rec_TCC2|✅ proved - complete|shostak|0.070|
|move_to_head_rec_TCC3|✅ proved - complete|shostak|0.110|
|move_to_head_rec_TCC4|✅ proved - complete|shostak|0.050|
|move_to_head_rec_nth_TCC1|✅ proved - complete|shostak|0.050|
|move_to_head_rec_nth_TCC2|✅ proved - complete|shostak|0.220|
|move_to_head_rec_nth_TCC3|✅ proved - complete|shostak|0.230|
|move_to_head_rec_nth_TCC4|✅ proved - complete|shostak|0.187|
|move_to_head_rec_nth_TCC5|✅ proved - complete|shostak|0.260|
|move_to_head_rec_nth_TCC6|✅ proved - complete|shostak|0.206|
|move_to_head_rec_nth_TCC7|✅ proved - complete|shostak|0.260|
|move_to_head_rec_nth_TCC8|✅ proved - complete|shostak|0.240|
|move_to_head_rec_nth_TCC9|✅ proved - incomplete|shostak|0.000|
|move_to_head_rec_nth_TCC10|✅ proved - incomplete|shostak|1.439|
|move_to_head_TCC1|✅ proved - complete|shostak|0.060|
|move_to_head_length|✅ proved - incomplete|shostak|0.263|
|move_to_head_car_TCC1|✅ proved - incomplete|shostak|0.070|
|move_to_head_car_TCC2|✅ proved - complete|shostak|0.050|
|move_to_head_car|✅ proved - incomplete|shostak|0.160|
|move_to_head_first_half_TCC1|✅ proved - incomplete|shostak|0.070|
|move_to_head_first_half_TCC2|✅ proved - complete|shostak|0.076|
|move_to_head_first_half|✅ proved - incomplete|shostak|0.260|
|move_to_head_second_half_TCC1|✅ proved - incomplete|shostak|0.050|
|move_to_head_second_half|✅ proved - incomplete|shostak|0.296|
|dl_moveR|✅ proved - incomplete|shostak|0.220|
|dl_moveL|✅ proved - incomplete|shostak|0.237|
|dl_hideR|✅ proved - incomplete|shostak|0.194|
|dl_hideL|✅ proved - incomplete|shostak|0.190|
|dl_boxd|✅ proved - incomplete|shostak|0.090|
|dl_assignb|✅ proved - incomplete|shostak|0.083|
|dl_assignb_restricted|✅ proved - incomplete|shostak|0.090|
|dl_assignd|✅ proved - incomplete|shostak|0.080|
|dl_testb|✅ proved - incomplete|shostak|0.083|
|dl_testb_true|✅ proved - incomplete|shostak|0.050|
|dl_testd|✅ proved - incomplete|shostak|0.090|
|dl_testd_true|✅ proved - incomplete|shostak|0.190|
|dl_choiceb|✅ proved - incomplete|shostak|0.193|
|dl_choiced|✅ proved - incomplete|shostak|0.160|
|dl_composeb|✅ proved - incomplete|shostak|0.126|
|dl_composed|✅ proved - incomplete|shostak|0.140|
|dl_iterateb|✅ proved - incomplete|shostak|0.156|
|dl_iterated|✅ proved - incomplete|shostak|0.253|
|dl_anyb_TCC1|✅ proved - complete|shostak|0.080|
|dl_anyb|✅ proved - incomplete|shostak|0.396|
|dl_anyd|✅ proved - incomplete|shostak|0.174|
|dl_boxand|✅ proved - incomplete|shostak|0.093|
|dl_diamondOr|✅ proved - incomplete|shostak|0.090|
|dl_iteratearrowb|✅ proved - incomplete|shostak|0.193|
|dl_starstarb|✅ proved - incomplete|shostak|0.666|
|dl_iterateIb|✅ proved - incomplete|shostak|0.859|
|dl_impliesallrunsb|✅ proved - incomplete|shostak|0.200|
|dl_impliesallrunsd|✅ proved - incomplete|shostak|0.205|
|dl_distimpliesb|✅ proved - incomplete|shostak|0.162|
|dl_const|✅ proved - incomplete|shostak|0.395|
|dl_constd|✅ proved - incomplete|shostak|0.379|
|dl_V|✅ proved - incomplete|shostak|1.530|
|dl_Vd|✅ proved - incomplete|shostak|1.607|
|dl_bool_const|✅ proved - incomplete|shostak|0.187|
|dl_subr_TCC1|✅ proved - incomplete|shostak|0.180|
|dl_subr|✅ proved - incomplete|shostak|0.256|
|dl_subl|✅ proved - incomplete|shostak|0.332|
|dl_subf|✅ proved - incomplete|shostak|0.299|
|dl_weak_impliesb|✅ proved - incomplete|shostak|0.140|
|dl_weak_impliesd|✅ proved - incomplete|shostak|0.138|
|dl_weak_impliesbE|✅ proved - incomplete|shostak|0.163|
|dl_weak_impliesdE|✅ proved - incomplete|shostak|0.155|
|dl_differential_auxiliary_TCC1|✅ proved - complete|shostak|0.080|
|dl_differential_auxiliary|✅ proved - incomplete|shostak|5.783|
|dl_bounded_loop|✅ proved - incomplete|shostak|0.670|
|dl_loop|✅ proved - incomplete|shostak|0.381|
|dl_MbL|✅ proved - incomplete|shostak|1.540|
|dl_MbR|✅ proved - incomplete|shostak|1.535|
|dl_MdL|✅ proved - incomplete|shostak|1.538|
|dl_MdR|✅ proved - incomplete|shostak|0.000|
|dl_MEbR|✅ proved - incomplete|shostak|1.333|
|dl_MEbRA|✅ proved - incomplete|shostak|0.602|
|dl_discrete_ghost|✅ proved - incomplete|shostak|0.363|
|dl_andb|✅ proved - incomplete|shostak|0.175|
|dl_andf|✅ proved - incomplete|shostak|0.230|
|dl_orb|✅ proved - incomplete|shostak|0.330|
|dl_hide_restR|✅ proved - incomplete|shostak|0.164|
|dl_hide_restL|✅ proved - incomplete|shostak|0.170|
|dl_hide_restLR|✅ proved - incomplete|shostak|0.400|
|dl_commuteEquivR|✅ proved - incomplete|shostak|0.253|
|dl_commuteEquivL|✅ proved - incomplete|shostak|0.230|
|dl_equivifyR|✅ proved - incomplete|shostak|0.322|
|dl_dW|✅ proved - incomplete|shostak|0.232|
|dl_dinit|✅ proved - incomplete|shostak|0.363|
|dl_dI_eq|✅ proved - incomplete|shostak|4.771|
|dl_dI_neq|✅ proved - incomplete|shostak|0.000|
|dl_dI_le|✅ proved - incomplete|shostak|2.952|
|dl_dI_lt|✅ proved - incomplete|shostak|2.763|
|dl_dI_ge|✅ proved - incomplete|shostak|0.000|
|dl_dI_gt|✅ proved - incomplete|shostak|3.348|
|dl_dI_lite|✅ proved - incomplete|shostak|2.678|
|dl_dI|✅ proved - incomplete|shostak|2.140|
|dl_dI_dlTRUE_TCC1|✅ proved - complete|shostak|0.050|
|dl_dI_dlTRUE|✅ proved - incomplete|shostak|0.090|
|dl_dC|✅ proved - incomplete|shostak|0.407|
|dl_differential_ghost_TCC1|✅ proved - complete|shostak|0.070|
|dl_differential_ghost|✅ proved - incomplete|shostak|16.287|

## `more_derivative_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_derivative_props_TCC1|✅ proved - complete|shostak|0.030|
|IMP_derivative_props_TCC2|✅ proved - complete|shostak|0.030|
|deriv_linear_TCC1|✅ proved - incomplete|shostak|0.050|
|deriv_linear|✅ proved - incomplete|shostak|5.650|

## `dl_solution`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|init_zip_sol_TCC1|✅ proved - complete|shostak|0.150|
|init_zip_sol_TCC2|✅ proved - complete|shostak|0.060|
|init_zip_sol_TCC3|✅ proved - complete|shostak|0.163|
|init_zip_sol_TCC4|✅ proved - complete|shostak|0.150|
|init_zip_sol_TCC5|✅ proved - complete|shostak|0.579|
|init_zip_sol_TCC6|✅ proved - complete|shostak|0.230|
|init_zip_sol_TCC7|✅ proved - complete|shostak|0.172|
|init_zip_sol_TCC8|✅ proved - complete|shostak|0.676|
|zip_sol_test_TCC1|✅ proved - incomplete|shostak|0.170|
|zip_sol_test_TCC2|✅ proved - incomplete|shostak|0.040|
|zip_sol_test_TCC3|✅ proved - complete|shostak|0.064|
|zip_sol_test|✅ proved - incomplete|shostak|0.210|
|zs_TCC1|✅ proved - complete|shostak|0.120|
|map_inj_zs|✅ proved - complete|shostak|0.295|
|solution_domain_ax_ode_TCC1|✅ proved - incomplete|shostak|0.050|
|solution_domain_ax_ode|✅ proved - incomplete|shostak|0.000|
|dl_solution_domain_iff|✅ proved - incomplete|shostak|1.379|
|dl_solution_domain|✅ proved - incomplete|shostak|0.072|
|solution_domain_ax_TCC1|✅ proved - complete|shostak|0.050|
|solution_domain_ax_TCC2|✅ proved - complete|shostak|0.130|
|solution_domain_ax|✅ proved - incomplete|shostak|1.245|
|solution_domain_ax_lin|✅ proved - incomplete|shostak|9.207|
|solution_domain_ax_lin_val|✅ proved - incomplete|shostak|1.350|
|solution_domain_ax_quad_TCC1|✅ proved - complete|shostak|0.040|
|solution_domain_ax_quad_TCC2|✅ proved - complete|shostak|0.132|
|solution_domain_ax_quad|✅ proved - incomplete|shostak|6.869|
|in_map_test_TCC1|✅ proved - complete|shostak|0.090|
|in_map_test|✅ proved - complete|shostak|0.150|
|get_index_TCC1|✅ proved - complete|shostak|0.071|
|get_index_TCC2|✅ proved - complete|shostak|0.060|
|get_index_TCC3|✅ proved - complete|shostak|0.180|
|get_index_TCC4|✅ proved - complete|shostak|0.050|
|get_index_TCC5|✅ proved - complete|shostak|0.130|
|get_index_TCC6|✅ proved - complete|shostak|0.394|
|cnst_val_0|✅ proved - complete|shostak|0.080|
|cnst_val_com|✅ proved - complete|shostak|0.060|
|val_inj|✅ proved - complete|shostak|0.070|
|in_map_ex_TCC1|✅ proved - complete|shostak|0.060|
|in_map_ex_TCC2|✅ proved - complete|shostak|0.056|
|in_map_ex_TCC3|✅ proved - complete|shostak|0.140|
|in_map_ex_eq|✅ proved - complete|shostak|0.000|
|env_c_val|✅ proved - complete|shostak|0.050|
|get_val_cnst_id_ex_TCC1|✅ proved - complete|shostak|0.220|
|get_val_cnst_id_ex_TCC2|✅ proved - complete|shostak|0.817|
|is_val_not_in_map?_TCC1|✅ proved - complete|shostak|0.643|
|Y_sol_ex_TCC1|✅ proved - complete|shostak|0.806|
|Y_sol_ex_TCC2|✅ proved - complete|shostak|0.060|
|cnst_lins_def|✅ proved - complete|shostak|0.981|
|y_sol_Ex_TCC1|✅ proved - complete|shostak|0.110|
|y_sol_Ex_TCC2|✅ proved - complete|shostak|0.424|
|y_sol_Ex_TCC3|✅ proved - complete|shostak|0.110|
|y_sol_Ex|✅ proved - incomplete|shostak|35.492|
|cnst_lins_sol_TCC1|✅ proved - incomplete|shostak|0.050|
|cnst_lins_sol|✅ proved - incomplete|shostak|27.935|
|cnst_lins_sol_u_TCC1|✅ proved - incomplete|shostak|0.050|
|cnst_lins_sol_u|✅ proved - incomplete|shostak|6.439|
|solution_domain_ax_cnst_imp_zip|✅ proved - incomplete|shostak|0.085|
|solution_domain_ax_cnst_imp_zip_no_hyp|✅ proved - incomplete|shostak|0.719|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib//float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-pvsio-fix.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210219-extratregies.lisp`|
