# Summary for `dL`
Run started at 4:10:38 11/25/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **1063**   | **1063**    | **1063**    | **0**  | **9:46.887 s**   |
|top|0|0|0|0|0.000|
|hp_def|24|24|24|0|3.503|
|hp_expr|32|32|32|0|2.265|
|bounded_star_semantics|23|23|23|0|2.869|
|bool_expr|36|36|36|0|2.575|
|bound_variables_def|17|17|17|0|1.631|
|hp_props|19|19|19|0|7.188|
|substitution|58|58|58|0|6.901|
|ODEs_equiv|103|103|103|0|22.425|
|differentiation|120|120|120|0|44.369|
|chain_rule_re|134|134|134|0|1:4.900|
|diff_re_props|15|15|15|0|2:0.210|
|continuity_re_def|1|1|1|0|0.020|
|continuity_props|14|14|14|0|3.465|
|continuity_re_props|8|8|8|0|3.939|
|fresh_props|32|32|32|0|8.886|
|dynamic_logic|136|136|136|0|44.829|
|more_derivative_props|4|4|4|0|3.065|
|dl_solution|57|57|57|0|1:24.327|
|top_dtl|0|0|0|0|0.000|
|even_more_list_props|7|7|7|0|1.511|
|ltl_expr|37|37|37|0|24.177|
|trace_semantics|39|39|39|0|10.231|
|solution_odes_props|58|58|58|0|35.161|
|temporal_logic|61|61|61|0|1:2.032|
|trace_bounded_star_semantics|28|28|28|0|26.408|
## Detailed Summary 
## `top`
No formula declaration found.
## `hp_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|mapexpr_inj_TCC1|✅ proved - complete|shostak|0.120|
|mapexpr_inj_TCC2|✅ proved - complete|shostak|0.060|
|mapexpr_inj_cons|✅ proved - complete|shostak|0.164|
|mapexpr_inj_eq|✅ proved - complete|shostak|0.100|
|null_MapExprInj|✅ proved - complete|shostak|0.083|
|cdr_is_MapExprInj|✅ proved - complete|shostak|0.130|
|sub_mapexpr_inj_is_mapexpr_inj|✅ proved - incomplete|shostak|0.124|
|in_map_cons|✅ proved - complete|shostak|0.126|
|in_map_null_false|✅ proved - complete|shostak|0.030|
|not_in_map_null|✅ proved - complete|shostak|0.040|
|index_of_j|✅ proved - complete|shostak|0.050|
|expr_car_TCC1|✅ proved - complete|shostak|0.050|
|expr_car|✅ proved - complete|shostak|0.098|
|expr_not_car_TCC1|✅ proved - complete|shostak|0.070|
|expr_not_car|✅ proved - complete|shostak|0.178|
|max_var_rec_TCC1|✅ proved - complete|shostak|0.030|
|max_var_rec_TCC2|✅ proved - complete|shostak|0.020|
|max_var_rec_TCC3|✅ proved - complete|shostak|0.060|
|max_var_rec_pull|✅ proved - complete|shostak|0.301|
|max_var_max|✅ proved - complete|shostak|0.239|
|max_var_exist|✅ proved - complete|shostak|0.987|
|pigeon_map|✅ proved - complete|shostak|0.221|
|max_var_length|✅ proved - complete|shostak|0.141|
|nip_max_var|✅ proved - complete|shostak|0.081|

## `hp_expr`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_table_of_integrals_TCC1|✅ proved - complete|shostak|0.020|
|IMP_table_of_integrals_TCC2|✅ proved - incomplete|shostak|0.020|
|size_TCC1|✅ proved - incomplete|shostak|0.050|
|size_TCC2|✅ proved - incomplete|shostak|0.040|
|size_TCC3|✅ proved - incomplete|shostak|0.040|
|size_TCC4|✅ proved - incomplete|shostak|0.040|
|size_TCC5|✅ proved - incomplete|shostak|0.030|
|dd?_TCC1|✅ proved - incomplete|shostak|0.020|
|dd_deriv_domain|✅ proved - incomplete|shostak|0.110|
|dd_noe|✅ proved - incomplete|shostak|0.048|
|dd_con|✅ proved - incomplete|shostak|0.040|
|dd_ne|✅ proved - incomplete|shostak|0.040|
|dd_ci_TCC1|✅ proved - incomplete|shostak|0.040|
|dd_ci|✅ proved - incomplete|shostak|0.050|
|derivable_odes?_TCC1|✅ proved - incomplete|shostak|0.020|
|derivable_odes?_TCC2|✅ proved - incomplete|shostak|0.036|
|env_at_t_TCC1|✅ proved - incomplete|shostak|0.040|
|env_at_t_TCC2|✅ proved - incomplete|shostak|0.339|
|sol_at_t?_TCC1|✅ proved - incomplete|shostak|0.363|
|semantic_rel_TCC1|✅ proved - incomplete|shostak|0.040|
|semantic_rel_TCC2|✅ proved - incomplete|shostak|0.070|
|semantic_rel_TCC3|✅ proved - incomplete|shostak|0.079|
|semantic_rel_TCC4|✅ proved - incomplete|shostak|0.070|
|fresh_li?_TCC1|✅ proved - incomplete|shostak|0.040|
|fresh_li?_TCC2|✅ proved - incomplete|shostak|0.020|
|fresh_assign_nth|✅ proved - incomplete|shostak|0.151|
|fresh_mapexpr_inj|✅ proved - incomplete|shostak|0.139|
|fresh_mapexp_nth_2|✅ proved - incomplete|shostak|0.130|
|fresh_hp?_TCC1|✅ proved - incomplete|shostak|0.030|
|fresh_hp?_TCC2|✅ proved - incomplete|shostak|0.040|
|fresh_hp?_TCC3|✅ proved - incomplete|shostak|0.030|
|fresh_hp?_TCC4|✅ proved - incomplete|shostak|0.040|

## `bounded_star_semantics`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|semantic_rel_bounded_star_TCC1|✅ proved - complete|shostak|0.020|
|semantic_rel_bounded_star_TCC2|✅ proved - incomplete|shostak|0.040|
|semantic_rel_bounded_star_TCC3|✅ proved - complete|shostak|0.050|
|semantic_rel_bounded_star_TCC4|✅ proved - complete|shostak|0.050|
|semantic_rel_bounded_star_TCC5|✅ proved - complete|shostak|0.041|
|semantic_rel_bounded_star_TCC6|✅ proved - complete|shostak|0.060|
|semantic_rel_bounded_star_TCC7|✅ proved - incomplete|shostak|0.070|
|semantic_rel_bounded_star_TCC8|✅ proved - incomplete|shostak|0.050|
|semantic_rel_bounded_star_inc|✅ proved - incomplete|shostak|0.439|
|semantic_rel_implies_bounded|✅ proved - incomplete|shostak|0.316|
|bounded_implies_semantic_rel|✅ proved - incomplete|shostak|0.380|
|BSTAR_TCC1|✅ proved - complete|shostak|0.030|
|BSTAR_TCC2|✅ proved - complete|shostak|0.020|
|semantic_rel_bstar_reflexive|✅ proved - incomplete|shostak|0.068|
|semantic_rel_bounded_bstar_semantic_rel_bstar|✅ proved - incomplete|shostak|0.112|
|semantic_rel_star_bounded_star|✅ proved - incomplete|shostak|0.040|
|semantic_rel_star_bounded_star_con|✅ proved - incomplete|shostak|0.110|
|semantic_rel_bounded_star_seq_switch|✅ proved - incomplete|shostak|0.521|
|semantic_rel_star_seq_switch|✅ proved - incomplete|shostak|0.180|
|semantic_rel_bounded_star_iter|✅ proved - incomplete|shostak|0.070|
|semantic_rel_bounded_star_iter_con_TCC1|✅ proved - incomplete|shostak|0.050|
|semantic_rel_bounded_star_iter_con|✅ proved - incomplete|shostak|0.070|
|semantic_rel_star_iter|✅ proved - incomplete|shostak|0.082|

## `bool_expr`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|fresh?_TCC1|✅ proved - complete|shostak|0.030|
|fresh?_TCC2|✅ proved - complete|shostak|0.040|
|fresh_formula_nth|✅ proved - complete|shostak|0.090|
|fresh_be_invar|✅ proved - complete|shostak|0.130|
|dl_not_not|✅ proved - complete|shostak|0.034|
|dl_not_true|✅ proved - complete|shostak|0.030|
|dl_not_false|✅ proved - complete|shostak|0.030|
|dl_true_and|✅ proved - complete|shostak|0.030|
|dl_and_true|✅ proved - complete|shostak|0.030|
|dl_false_and|✅ proved - complete|shostak|0.030|
|dl_and_false|✅ proved - complete|shostak|0.030|
|dl_true_or|✅ proved - complete|shostak|0.030|
|dl_or_true|✅ proved - complete|shostak|0.030|
|dl_false_or|✅ proved - complete|shostak|0.027|
|dl_or_false|✅ proved - complete|shostak|0.030|
|dl_true_implies|✅ proved - complete|shostak|0.030|
|dl_implies_true|✅ proved - complete|shostak|0.030|
|dl_false_implies|✅ proved - complete|shostak|0.030|
|dl_implies_false|✅ proved - complete|shostak|0.030|
|dl_forall_bool|✅ proved - complete|shostak|0.030|
|dl_exists_bool|✅ proved - complete|shostak|0.030|
|nqb_to_be_TCC1|✅ proved - complete|shostak|0.033|
|nqb_to_be_TCC2|✅ proved - complete|shostak|0.030|
|nqb_to_be_TCC3|✅ proved - complete|shostak|0.030|
|nqb_to_be_TCC4|✅ proved - complete|shostak|0.040|
|nqb_to_be_TCC5|✅ proved - complete|shostak|0.030|
|nqb_normal?_TCC1|✅ proved - complete|shostak|0.030|
|nqb_normal?_TCC2|✅ proved - complete|shostak|0.040|
|normalize_rec_TCC1|✅ proved - complete|shostak|0.050|
|normalize_rec_TCC2|✅ proved - complete|shostak|0.147|
|normalize_rec_TCC3|✅ proved - complete|shostak|0.670|
|normalize_rec_TCC4|✅ proved - complete|shostak|0.130|
|normalize_rec_TCC5|✅ proved - complete|shostak|0.318|
|normalize_rec_TCC6|✅ proved - complete|shostak|0.130|
|normalize_rec_TCC7|✅ proved - complete|shostak|0.066|
|normalize_TCC1|✅ proved - complete|shostak|0.030|

## `bound_variables_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|bv_me_TCC1|✅ proved - complete|shostak|0.030|
|bv_me_TCC2|✅ proved - complete|shostak|0.030|
|bv_me_TCC3|✅ proved - complete|shostak|0.030|
|bv_me_TCC4|✅ proved - complete|shostak|0.070|
|bv_me_TCC5|✅ proved - incomplete|shostak|0.030|
|BV_TCC1|✅ proved - complete|shostak|0.028|
|BV_TCC2|✅ proved - complete|shostak|0.090|
|BV_TCC3|✅ proved - complete|shostak|0.090|
|BV_TCC4|✅ proved - complete|shostak|0.070|
|BV_TCC5|✅ proved - incomplete|shostak|0.040|
|bv_me_nth_TCC1|✅ proved - incomplete|shostak|0.127|
|bv_me_nth|✅ proved - incomplete|shostak|0.230|
|BV_implies_not_fresh|✅ proved - incomplete|shostak|0.616|
|BV_invar|✅ proved - incomplete|shostak|0.000|
|bvs?_TCC1|✅ proved - complete|shostak|0.040|
|bvs?_TCC2|✅ proved - incomplete|shostak|0.030|
|bvs?_TCC3|✅ proved - incomplete|shostak|0.080|

## `hp_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|assign1_prop_TCC1|✅ proved - complete|shostak|0.051|
|assign1_prop|✅ proved - incomplete|shostak|0.192|
|assign_prop_TCC1|✅ proved - complete|shostak|0.050|
|assign_prop|✅ proved - incomplete|shostak|0.309|
|assign_comm_TCC1|✅ proved - complete|shostak|0.070|
|assign_comm|✅ proved - incomplete|shostak|0.186|
|union_prop_TCC1|✅ proved - incomplete|shostak|0.100|
|union_prop|✅ proved - incomplete|shostak|0.171|
|union_prop_xx|✅ proved - incomplete|shostak|0.042|
|union_id|✅ proved - incomplete|shostak|0.040|
|union_comm|✅ proved - incomplete|shostak|0.152|
|seq_prop|✅ proved - incomplete|shostak|0.450|
|test_prop|✅ proved - incomplete|shostak|0.050|
|diff_prop_TCC1|✅ proved - incomplete|shostak|0.090|
|diff_prop|✅ proved - incomplete|shostak|4.126|
|star_prop_imp_TCC1|✅ proved - complete|shostak|0.050|
|star_prop_imp|✅ proved - incomplete|shostak|0.240|
|star2_prop_imp_TCC1|✅ proved - complete|shostak|0.050|
|star2_prop_imp|✅ proved - incomplete|shostak|0.769|

## `substitution`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|assign_env_TCC1|✅ proved - complete|shostak|0.045|
|assign_env_TCC2|✅ proved - complete|shostak|0.030|
|assign_env_TCC3|✅ proved - complete|shostak|0.080|
|assign_env_TCC4|✅ proved - complete|shostak|0.030|
|SUB_MapExpr_TCC1|✅ proved - complete|shostak|0.040|
|SUB_MapExpr_TCC2|✅ proved - complete|shostak|0.049|
|SUB_MapExpr_TCC3|✅ proved - complete|shostak|0.040|
|SUB_MapExpr_TCC4|✅ proved - complete|shostak|0.090|
|SUB_MapExpr_TCC5|✅ proved - complete|shostak|0.694|
|assign_env__TCC1|✅ proved - incomplete|shostak|0.062|
|assign_env__TCC2|✅ proved - incomplete|shostak|0.040|
|assign_env__alt_j_TCC1|✅ proved - complete|shostak|0.030|
|assign_env__alt_j_TCC2|✅ proved - complete|shostak|0.030|
|assign_env__alt_j_TCC3|✅ proved - incomplete|shostak|0.070|
|assign_env__alt_j_TCC4|✅ proved - incomplete|shostak|0.421|
|assign_env__alt_j_TCC5|✅ proved - incomplete|shostak|0.631|
|assign_env_phantom_eq_TCC1|✅ proved - complete|shostak|0.115|
|assign_env_phantom_eq|✅ proved - incomplete|shostak|0.474|
|assign_env_alt|✅ proved - incomplete|shostak|0.113|
|assign_env_ext|✅ proved - complete|shostak|0.000|
|assign_sub_ext|✅ proved - complete|shostak|0.032|
|SUB_MapVar_TCC1|✅ proved - complete|shostak|0.040|
|SUB_MapVar_TCC2|✅ proved - complete|shostak|0.100|
|SUB_MapVar_TCC3|✅ proved - complete|shostak|0.030|
|SUB_MapVar_TCC4|✅ proved - complete|shostak|0.073|
|SUB_MapVar_TCC5|✅ proved - complete|shostak|0.110|
|dl_subre_val|✅ proved - complete|shostak|0.042|
|dl_subre_const|✅ proved - complete|shostak|0.040|
|dl_subre_plus|✅ proved - complete|shostak|0.060|
|dl_subre_minus|✅ proved - complete|shostak|0.050|
|dl_subre_neg|✅ proved - complete|shostak|0.052|
|dl_subre_prod|✅ proved - complete|shostak|0.060|
|dl_subre_prod_scal1|✅ proved - complete|shostak|0.060|
|dl_subre_prod_scal2|✅ proved - complete|shostak|0.064|
|dl_subre_exp|✅ proved - incomplete|shostak|0.090|
|dl_sub_bool|✅ proved - complete|shostak|0.040|
|dl_sub_bool_restricted|✅ proved - complete|shostak|0.040|
|dl_sub_and|✅ proved - complete|shostak|0.047|
|dl_sub_or|✅ proved - complete|shostak|0.050|
|dl_sub_not|✅ proved - complete|shostak|0.040|
|dl_sub_implies|✅ proved - complete|shostak|0.050|
|dl_sub_ge|✅ proved - complete|shostak|0.050|
|dl_sub_gt|✅ proved - complete|shostak|0.056|
|dl_sub_le|✅ proved - complete|shostak|0.050|
|dl_sub_lt|✅ proved - complete|shostak|0.040|
|dl_sub_eq|✅ proved - complete|shostak|0.050|
|dl_sub_neq|✅ proved - complete|shostak|0.050|
|dl_sub_iff|✅ proved - complete|shostak|0.055|
|dl_sub_allruns0_x_neq_y_TCC1|✅ proved - incomplete|shostak|0.090|
|dl_sub_allruns0_x_neq_y_TCC2|✅ proved - incomplete|shostak|0.110|
|dl_sub_allruns0_x_neq_y_TCC3|✅ proved - complete|shostak|0.117|
|dl_sub_allruns0_x_neq_y_TCC4|✅ proved - incomplete|shostak|0.120|
|dl_sub_allruns0_x_neq_y|✅ proved - incomplete|shostak|1.281|
|dl_sub_allruns_assign0_x_eq_y_TCC1|✅ proved - incomplete|shostak|0.110|
|dl_sub_allruns_assign0_x_eq_y_TCC2|✅ proved - incomplete|shostak|0.100|
|dl_sub_allruns_assign0_x_eq_y|✅ proved - incomplete|shostak|0.278|
|dl_sub_forall|✅ proved - complete|shostak|0.050|
|dl_sub_exists|✅ proved - complete|shostak|0.040|

## `ODEs_equiv`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Re_TCC1|✅ proved - incomplete|shostak|0.063|
|Re_TCC2|✅ proved - complete|shostak|0.040|
|Re_TCC3|✅ proved - complete|shostak|0.030|
|Re_TCC4|✅ proved - complete|shostak|0.060|
|Re_TCC5|✅ proved - incomplete|shostak|0.158|
|Re_TCC6|✅ proved - complete|shostak|0.040|
|Re_nth_TCC1|✅ proved - incomplete|shostak|0.047|
|Re_nth|✅ proved - incomplete|shostak|0.182|
|env_vec_TCC1|✅ proved - complete|shostak|0.030|
|env_vec_TCC2|✅ proved - complete|shostak|0.090|
|env_vec_TCC3|✅ proved - incomplete|shostak|0.110|
|env_vec_nth_TCC1|✅ proved - incomplete|shostak|0.050|
|env_vec_nth|✅ proved - incomplete|shostak|0.220|
|r2v_2_fs_TCC1|✅ proved - complete|shostak|0.051|
|r2v_2_fs_TCC2|✅ proved - incomplete|shostak|0.040|
|r2v_2_fs_TCC3|✅ proved - incomplete|shostak|0.030|
|r2v_2_fs_TCC4|✅ proved - incomplete|shostak|0.305|
|r2v_2_fs_TCC5|✅ proved - incomplete|shostak|0.050|
|fs_2_r2v_TCC1|✅ proved - incomplete|shostak|0.030|
|fs_2_r2v_TCC2|✅ proved - incomplete|shostak|0.040|
|fs_2_r2v_TCC3|✅ proved - incomplete|shostak|0.040|
|fs_2_r2v_TCC4|✅ proved - incomplete|shostak|0.030|
|fs_2_r2v_TCC5|✅ proved - incomplete|shostak|0.040|
|fs_2_r2v_TCC6|✅ proved - incomplete|shostak|0.030|
|fs_2_r2v_TCC7|✅ proved - incomplete|shostak|0.020|
|fs_2_r2v_TCC8|✅ proved - incomplete|shostak|0.050|
|fs_2_r2v_TCC9|✅ proved - incomplete|shostak|0.248|
|fs_2_f2v_nth_TCC1|✅ proved - incomplete|shostak|0.050|
|fs_2_f2v_nth|✅ proved - incomplete|shostak|0.319|
|fs_2_f2v_eq_TCC1|✅ proved - incomplete|shostak|0.029|
|fs_2_f2v_eq_TCC2|✅ proved - incomplete|shostak|0.040|
|fs_2_f2v_eq_TCC3|✅ proved - incomplete|shostak|0.060|
|fs_2_f2v_eq_TCC4|✅ proved - incomplete|shostak|0.050|
|fs_2_f2v_eq_TCC5|✅ proved - incomplete|shostak|0.032|
|fs_2_f2v_eq_TCC6|✅ proved - incomplete|shostak|0.170|
|fs_2_f2v_eq|✅ proved - incomplete|shostak|1.542|
|Odes_f_TCC1|✅ proved - incomplete|shostak|0.030|
|cont_f?_TCC1|✅ proved - incomplete|shostak|0.040|
|cont_f?_TCC2|✅ proved - incomplete|shostak|0.040|
|cont_f?_TCC3|✅ proved - incomplete|shostak|0.045|
|cont_f?_TCC4|✅ proved - incomplete|shostak|0.120|
|cont_f?_TCC5|✅ proved - incomplete|shostak|0.080|
|cont_f?_TCC6|✅ proved - incomplete|shostak|0.048|
|max_diff_TCC1|✅ proved - incomplete|shostak|0.030|
|max_diff_TCC2|✅ proved - incomplete|shostak|0.090|
|max_diff_TCC3|✅ proved - incomplete|shostak|0.033|
|max_diff_TCC4|✅ proved - incomplete|shostak|0.030|
|max_diff_TCC5|✅ proved - incomplete|shostak|0.100|
|max_diff_TCC6|✅ proved - incomplete|shostak|0.120|
|max_diff_TCC7|✅ proved - incomplete|shostak|0.056|
|max_diff_TCC8|✅ proved - incomplete|shostak|0.030|
|max_diff_TCC9|✅ proved - incomplete|shostak|0.695|
|max_diff_norm_inf_TCC1|✅ proved - incomplete|shostak|0.030|
|max_diff_norm_inf_TCC2|✅ proved - incomplete|shostak|0.050|
|max_diff_norm_inf_TCC3|✅ proved - incomplete|shostak|0.030|
|max_diff_norm_inf_TCC4|✅ proved - incomplete|shostak|0.050|
|max_diff_norm_inf_TCC5|✅ proved - incomplete|shostak|0.073|
|max_diff_norm_inf|✅ proved - incomplete|shostak|2.274|
|cdr_TCC1|✅ proved - incomplete|shostak|0.030|
|cdr_TCC2|✅ proved - incomplete|shostak|0.030|
|cdr_const_TCC1|✅ proved - incomplete|shostak|0.030|
|cdr_const|✅ proved - incomplete|shostak|0.118|
|Lip_ODEs?_TCC1|✅ proved - incomplete|shostak|0.040|
|Lip_ODEs?_TCC2|✅ proved - incomplete|shostak|0.070|
|Lip_ODEs?_TCC3|✅ proved - incomplete|shostak|0.097|
|Lip_ODEs?_TCC4|✅ proved - incomplete|shostak|0.070|
|Lip_DDL_ODEs|✅ proved - incomplete|shostak|0.000|
|cont_DDL_ODEs|✅ proved - incomplete|shostak|5.011|
|diff_sol_Lip_TCC1|✅ proved - incomplete|shostak|0.349|
|diff_sol_Lip_TCC2|✅ proved - incomplete|shostak|0.030|
|diff_sol_Lip|✅ proved - incomplete|shostak|0.000|
|diff_sol_eq_TCC1|✅ proved - incomplete|shostak|0.080|
|diff_sol_eq_TCC2|✅ proved - incomplete|shostak|0.030|
|diff_sol_eq|✅ proved - incomplete|shostak|0.040|
|fs_sol_TCC1|✅ proved - incomplete|shostak|0.060|
|ODEs_s_sub_TCC1|✅ proved - incomplete|shostak|0.413|
|ODEs_s_sub_TCC2|✅ proved - incomplete|shostak|0.052|
|ODEs_s_sub|✅ proved - incomplete|shostak|0.491|
|fs_sol_sub_TCC1|✅ proved - incomplete|shostak|0.043|
|fs_sol_sub_TCC2|✅ proved - incomplete|shostak|0.050|
|fs_sol_sub_TCC3|✅ proved - incomplete|shostak|0.049|
|fs_sol_sub|✅ proved - incomplete|shostak|0.120|
|env_sol_sub_TCC1|✅ proved - incomplete|shostak|0.410|
|env_sol_sub_TCC2|✅ proved - incomplete|shostak|0.542|
|env_sol_sub_TCC3|✅ proved - incomplete|shostak|0.050|
|env_sol_sub_TCC4|✅ proved - incomplete|shostak|0.041|
|env_sol_sub|✅ proved - incomplete|shostak|0.190|
|solution_odes_sub|✅ proved - incomplete|shostak|0.199|
|solution_odes_subset|✅ proved - incomplete|shostak|0.069|
|odes_hp_s_TCC1|✅ proved - incomplete|shostak|0.030|
|odes_hp_s_TCC2|✅ proved - incomplete|shostak|0.040|
|odes_hp_s_TCC3|✅ proved - incomplete|shostak|0.211|
|odes_hp_s|✅ proved - incomplete|shostak|0.250|
|fs_sol_hp_TCC1|✅ proved - incomplete|shostak|0.198|
|fs_sol_hp_TCC2|✅ proved - incomplete|shostak|0.251|
|fs_sol_hp_TCC3|✅ proved - incomplete|shostak|0.130|
|fs_sol_hp_TCC4|✅ proved - incomplete|shostak|0.230|
|fs_sol_hp_TCC5|✅ proved - incomplete|shostak|0.289|
|fs_sol_hp_fs_TCC1|✅ proved - incomplete|shostak|0.040|
|fs_sol_hp_fs|✅ proved - incomplete|shostak|0.249|
|fs_sol_hp_sol|✅ proved - incomplete|shostak|1.662|
|fs_sol_hp_sol_u|✅ proved - incomplete|shostak|0.680|
|diff_sol_eq_dd|✅ proved - incomplete|shostak|0.851|

## `differentiation`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_derivatives_TCC1|✅ proved - incomplete|shostak|0.020|
|IMP_derivatives_TCC2|✅ proved - incomplete|shostak|0.030|
|right_dd_i|✅ proved - incomplete|shostak|0.142|
|right_dd|✅ proved - incomplete|shostak|0.030|
|connection_proj|✅ proved - incomplete|shostak|0.070|
|right_ne_i|✅ proved - incomplete|shostak|0.119|
|right_ne|✅ proved - incomplete|shostak|0.030|
|ddl_dom_upto|✅ proved - incomplete|shostak|0.030|
|ddl_dom_weak|✅ proved - incomplete|shostak|0.040|
|ddl_dom_dd|✅ proved - incomplete|shostak|0.435|
|ddl_dom__upto_dd|✅ proved - incomplete|shostak|0.029|
|ddl_dom_noe|✅ proved - incomplete|shostak|0.030|
|dl_true_DDL|✅ proved - incomplete|shostak|0.100|
|dl_true_up_DDL|✅ proved - incomplete|shostak|0.091|
|derivable?_TCC1|✅ proved - incomplete|shostak|0.070|
|derivable?_TCC2|✅ proved - incomplete|shostak|0.030|
|derivable?_TCC3|✅ proved - incomplete|shostak|0.031|
|derivable_up?_TCC1|✅ proved - incomplete|shostak|0.040|
|derivable?_TCC4|✅ proved - incomplete|shostak|0.040|
|hathat_diff_real_TCC1|✅ proved - incomplete|shostak|0.020|
|hathat_diff_real_TCC2|✅ proved - incomplete|shostak|0.683|
|hathat_diff_real_TCC3|✅ proved - incomplete|shostak|0.030|
|hathat_diff_real|✅ proved - incomplete|shostak|0.120|
|expt_TCC1|✅ proved - incomplete|shostak|0.030|
|expt_TCC2|✅ proved - incomplete|shostak|0.040|
|sqrt_hathat_TCC1|✅ proved - incomplete|shostak|0.030|
|sqrt_hathat|✅ proved - incomplete|shostak|0.000|
|sqrt_hathat_neg_TCC1|✅ proved - incomplete|shostak|0.050|
|sqrt_hathat_neg|✅ proved - incomplete|shostak|0.141|
|expt_exp_equiv|✅ proved - incomplete|shostak|0.040|
|partial_diff_TCC1|✅ proved - incomplete|shostak|0.040|
|dl_derivable_const|✅ proved - incomplete|shostak|0.050|
|dl_partial_const_TCC1|✅ proved - incomplete|shostak|0.029|
|dl_partial_const|✅ proved - incomplete|shostak|0.132|
|dl_derivable_up_cnst|✅ proved - incomplete|shostak|0.050|
|dl_derivable_val|✅ proved - incomplete|shostak|0.060|
|dl_derivable_up_val|✅ proved - incomplete|shostak|0.038|
|dl_partial_val_TCC1|✅ proved - incomplete|shostak|0.030|
|dl_partial_val|✅ proved - incomplete|shostak|0.160|
|dl_derivable_plus|✅ proved - incomplete|shostak|0.099|
|dl_partial_plus_TCC1|✅ proved - incomplete|shostak|0.030|
|dl_partial_plus|✅ proved - incomplete|shostak|0.219|
|dl_derivable_up_sum|✅ proved - incomplete|shostak|0.049|
|dl_derivable_mult|✅ proved - incomplete|shostak|0.050|
|dl_partial_mult_TCC1|✅ proved - incomplete|shostak|0.030|
|dl_partial_mult|✅ proved - incomplete|shostak|0.280|
|dl_derivable_up_prod|✅ proved - incomplete|shostak|0.050|
|dl_derivable_minus|✅ proved - incomplete|shostak|0.048|
|dl_partial_minus_TCC1|✅ proved - incomplete|shostak|0.030|
|dl_partial_minus|✅ proved - incomplete|shostak|0.170|
|dl_derivable_up_minus|✅ proved - incomplete|shostak|0.079|
|dl_derivable_negative|✅ proved - incomplete|shostak|0.100|
|dl_partial_negative_TCC1|✅ proved - incomplete|shostak|0.030|
|dl_partial_negative|✅ proved - incomplete|shostak|0.171|
|dl_derivable_pow|✅ proved - incomplete|shostak|0.407|
|dl_derivable_up_pow|✅ proved - incomplete|shostak|0.140|
|dl_derivable_div|✅ proved - incomplete|shostak|0.255|
|dl_partial_div_TCC1|✅ proved - incomplete|shostak|0.020|
|dl_partial_div|✅ proved - incomplete|shostak|0.705|
|dl_derivable_up_div|✅ proved - incomplete|shostak|0.054|
|dl_derivable_comp_point_TCC1|✅ proved - incomplete|shostak|1.300|
|dl_derivable_comp_point_TCC2|✅ proved - incomplete|shostak|0.030|
|dl_derivable_comp_point_TCC3|✅ proved - incomplete|shostak|0.113|
|dl_derivable_comp_point|✅ proved - incomplete|shostak|0.187|
|dl_derivable_comp_TCC1|✅ proved - incomplete|shostak|0.030|
|dl_derivable_comp_TCC2|✅ proved - incomplete|shostak|0.034|
|dl_derivable_comp_TCC3|✅ proved - incomplete|shostak|0.110|
|dl_derivable_comp|✅ proved - incomplete|shostak|0.044|
|dl_partial_chain_TCC1|✅ proved - incomplete|shostak|0.030|
|dl_partial_chain_TCC2|✅ proved - incomplete|shostak|0.040|
|dl_partial_chain_TCC3|✅ proved - incomplete|shostak|0.030|
|dl_partial_chain_TCC4|✅ proved - incomplete|shostak|0.118|
|dl_partial_chain|✅ proved - incomplete|shostak|0.387|
|dl_derivable_exp|✅ proved - incomplete|shostak|1.259|
|dl_partial_exp_TCC1|✅ proved - incomplete|shostak|0.030|
|dl_partial_exp|✅ proved - incomplete|shostak|3.804|
|dl_derivable_sqrt|✅ proved - incomplete|shostak|0.000|
|dl_partial_sqrt_TCC1|✅ proved - incomplete|shostak|0.034|
|dl_partial_sqrt|✅ proved - incomplete|shostak|0.701|
|DIFT_last_TCC1|✅ proved - incomplete|shostak|0.030|
|DIFT_last_TCC2|✅ proved - incomplete|shostak|0.051|
|DIFT_last|✅ proved - incomplete|shostak|0.358|
|dl_dift_val_zero|✅ proved - incomplete|shostak|0.354|
|dl_dift_val_P|✅ proved - incomplete|shostak|0.752|
|dl_dift_val_TCC1|✅ proved - incomplete|shostak|0.031|
|dl_dift_val|✅ proved - incomplete|shostak|0.050|
|dl_dift_const|✅ proved - incomplete|shostak|0.618|
|dl_dift_plus_TCC1|✅ proved - incomplete|shostak|0.030|
|dl_dift_plus|✅ proved - incomplete|shostak|1.641|
|dl_dift_minus|✅ proved - incomplete|shostak|0.733|
|dl_dift_negative|✅ proved - incomplete|shostak|1.263|
|dl_dift_mult|✅ proved - incomplete|shostak|2.649|
|dl_dift_divsafe|✅ proved - incomplete|shostak|3.009|
|dl_dift_exp|✅ proved - incomplete|shostak|0.000|
|dl_dift_pow|✅ proved - incomplete|shostak|1.027|
|dl_dift_sqrt|✅ proved - incomplete|shostak|0.852|
|ddt_TCC1|✅ proved - incomplete|shostak|0.040|
|ddt_TCC2|✅ proved - incomplete|shostak|0.028|
|ddt_TCC3|✅ proved - incomplete|shostak|0.090|
|ddt_not_in_map|✅ proved - incomplete|shostak|0.189|
|ddt_in_map_TCC1|✅ proved - incomplete|shostak|0.130|
|ddt_in_map|✅ proved - incomplete|shostak|0.992|
|re_plus_cnst0|✅ proved - incomplete|shostak|0.040|
|cnst0_plus_re|✅ proved - incomplete|shostak|0.030|
|re_minus_cnst0|✅ proved - incomplete|shostak|0.041|
|cnst0_minus_re|✅ proved - incomplete|shostak|0.080|
|re_prod_cnst0|✅ proved - incomplete|shostak|0.040|
|cnst0_prod_re|✅ proved - incomplete|shostak|0.070|
|sqrt_safe_sq|✅ proved - incomplete|shostak|0.070|
|ODEs_P?_TCC1|✅ proved - incomplete|shostak|13.436|
|DIFT_TCC1|✅ proved - incomplete|shostak|0.050|
|DIFT_TCC2|✅ proved - incomplete|shostak|0.082|
|DIFT_TCC3|✅ proved - incomplete|shostak|0.060|
|DIFT_TCC4|✅ proved - incomplete|shostak|0.375|
|DIFT_TCC5|✅ proved - incomplete|shostak|0.050|
|DIFT_TCC6|✅ proved - incomplete|shostak|0.294|
|DIFT_TCC7|✅ proved - incomplete|shostak|0.060|
|DIFT_TCC8|✅ proved - incomplete|shostak|0.097|
|DIFT_TCC9|✅ proved - incomplete|shostak|0.060|
|DIFT_TCC10|✅ proved - incomplete|shostak|0.040|

## `chain_rule_re`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|env_2_vec_TCC1|✅ proved - incomplete|shostak|0.040|
|env_2_vec_TCC2|✅ proved - complete|shostak|0.040|
|env_2_vec_TCC3|✅ proved - complete|shostak|0.030|
|env_2_vec_TCC4|✅ proved - incomplete|shostak|0.000|
|env_2_vec_nth_TCC1|✅ proved - incomplete|shostak|0.090|
|env_2_vec_nth|✅ proved - incomplete|shostak|0.150|
|projv_dd|✅ proved - incomplete|shostak|2.720|
|proj_projv_TCC1|✅ proved - incomplete|shostak|0.040|
|proj_projv_TCC2|✅ proved - incomplete|shostak|0.151|
|proj_projv|✅ proved - incomplete|shostak|0.699|
|projv_proj_TCC1|✅ proved - complete|shostak|0.030|
|projv_proj_TCC2|✅ proved - incomplete|shostak|0.143|
|projv_proj|✅ proved - incomplete|shostak|0.338|
|ddl_dom_dom_dir|✅ proved - incomplete|shostak|0.915|
|dd_e_partial|✅ proved - incomplete|shostak|0.802|
|vec_2_env_TCC1|✅ proved - incomplete|shostak|0.090|
|vec_2_env_id|✅ proved - incomplete|shostak|0.165|
|env_2_vec_id|✅ proved - incomplete|shostak|0.203|
|vec_2_env_plus_TCC1|✅ proved - incomplete|shostak|0.140|
|vec_2_env_plus_TCC2|✅ proved - incomplete|shostak|0.040|
|vec_2_env_plus|✅ proved - incomplete|shostak|1.240|
|differentiable_re_p?_TCC1|✅ proved - incomplete|shostak|0.030|
|differentiable_re_p?_TCC2|✅ proved - incomplete|shostak|0.030|
|diff_env_change|✅ proved - incomplete|shostak|0.231|
|diff_re_diff_mv_TCC1|✅ proved - incomplete|shostak|0.040|
|diff_re_diff_mv|✅ proved - incomplete|shostak|0.183|
|der_re_p_TCC1|✅ proved - incomplete|shostak|0.187|
|der_re_TCC1|✅ proved - incomplete|shostak|2.236|
|der_re_grad_TCC1|✅ proved - incomplete|shostak|0.098|
|der_re_grad_TCC2|✅ proved - incomplete|shostak|0.196|
|der_re_grad|✅ proved - incomplete|shostak|0.289|
|diff_re_init_partial_TCC1|✅ proved - incomplete|shostak|0.088|
|diff_re_init_partial|✅ proved - incomplete|shostak|0.120|
|der_re_partial_TCC1|✅ proved - incomplete|shostak|0.126|
|der_re_partial|✅ proved - incomplete|shostak|0.110|
|re_diff_mv|✅ proved - incomplete|shostak|0.109|
|re_der_mv_TCC1|✅ proved - incomplete|shostak|0.080|
|re_der_mv|✅ proved - incomplete|shostak|0.224|
|re_diff_mv_ll_TCC1|✅ proved - incomplete|shostak|0.030|
|re_diff_mv_ll_TCC2|✅ proved - incomplete|shostak|0.230|
|re_diff_mv_ll_TCC3|✅ proved - incomplete|shostak|0.048|
|re_diff_mv_ll_TCC4|✅ proved - incomplete|shostak|0.040|
|re_diff_mv_ll_TCC5|✅ proved - incomplete|shostak|0.060|
|re_diff_mv_ll|✅ proved - incomplete|shostak|0.583|
|re_der_mv_ll_TCC1|✅ proved - incomplete|shostak|0.090|
|re_der_mv_ll_TCC2|✅ proved - incomplete|shostak|0.040|
|re_der_mv_ll_TCC3|✅ proved - incomplete|shostak|0.060|
|re_der_mv_ll|✅ proved - incomplete|shostak|0.546|
|with_e_vec_TCC1|✅ proved - complete|shostak|0.030|
|with_e_vec_TCC2|✅ proved - incomplete|shostak|0.160|
|with_e_vec|✅ proved - incomplete|shostak|0.350|
|derivable_partial_TCC1|✅ proved - incomplete|shostak|0.080|
|derivable_partial_TCC2|✅ proved - incomplete|shostak|0.040|
|derivable_partial_TCC3|✅ proved - incomplete|shostak|0.089|
|derivable_partial|✅ proved - incomplete|shostak|0.000|
|derivable_partial_D_TCC1|✅ proved - incomplete|shostak|0.030|
|derivable_partial_D|✅ proved - incomplete|shostak|0.433|
|deriv_partial_TCC1|✅ proved - incomplete|shostak|0.080|
|deriv_partial|✅ proved - incomplete|shostak|2.227|
|diff_re_derivable_partial_TCC1|✅ proved - incomplete|shostak|0.295|
|diff_re_derivable_partial|✅ proved - incomplete|shostak|0.040|
|diff_re_partialable_p_TCC1|✅ proved - incomplete|shostak|0.298|
|diff_re_partialable_p|✅ proved - incomplete|shostak|0.141|
|diff_re_derivable_up_TCC1|✅ proved - incomplete|shostak|0.284|
|diff_re_derivable_up|✅ proved - incomplete|shostak|0.081|
|der_re_partial_der_TCC1|✅ proved - incomplete|shostak|0.040|
|der_re_partial_der|✅ proved - incomplete|shostak|0.070|
|der_ll_partial_der_TCC1|✅ proved - incomplete|shostak|0.051|
|der_ll_partial_der_TCC2|✅ proved - incomplete|shostak|0.050|
|der_ll_partial_der_TCC3|✅ proved - incomplete|shostak|0.200|
|der_ll_partial_der_TCC4|✅ proved - incomplete|shostak|0.051|
|der_ll_partial_der_TCC5|✅ proved - incomplete|shostak|9.244|
|der_ll_partial_der|✅ proved - incomplete|shostak|0.107|
|eq_re_comp|✅ proved - incomplete|shostak|0.182|
|env_sol_env2vec|✅ proved - incomplete|shostak|0.237|
|e2v_diff_p_TCC1|✅ proved - incomplete|shostak|0.037|
|e2v_diff_p|✅ proved - incomplete|shostak|2.189|
|e2v_der_p_TCC1|✅ proved - incomplete|shostak|0.106|
|e2v_der_p_TCC2|✅ proved - incomplete|shostak|0.376|
|e2v_der_p_TCC3|✅ proved - incomplete|shostak|0.224|
|e2v_der_p|✅ proved - incomplete|shostak|0.250|
|e2v_der_p_not_in_map|✅ proved - incomplete|shostak|0.996|
|e2v_der_p_in_map|✅ proved - incomplete|shostak|1.188|
|e2v_der_p_in_map_ode|✅ proved - incomplete|shostak|3.809|
|e2v_re_diff_p_TCC1|✅ proved - incomplete|shostak|0.040|
|e2v_re_diff_p_TCC2|✅ proved - incomplete|shostak|0.040|
|e2v_re_diff_p|✅ proved - incomplete|shostak|1.139|
|e2v_re_der_p_TCC1|✅ proved - incomplete|shostak|0.040|
|e2v_re_der_p_TCC2|✅ proved - incomplete|shostak|0.050|
|e2v_re_der_p_TCC3|✅ proved - incomplete|shostak|0.100|
|e2v_re_der_p_TCC4|✅ proved - incomplete|shostak|0.040|
|e2v_re_der_p_TCC5|✅ proved - incomplete|shostak|0.060|
|e2v_re_der_p_TCC6|✅ proved - incomplete|shostak|0.110|
|e2v_re_der_p|✅ proved - incomplete|shostak|1.414|
|re_diff_chain_TCC1|✅ proved - incomplete|shostak|0.065|
|re_diff_chain_TCC2|✅ proved - incomplete|shostak|0.040|
|re_diff_chain_TCC3|✅ proved - incomplete|shostak|0.040|
|re_diff_chain|✅ proved - incomplete|shostak|0.156|
|init_re_der_chain_TCC1|✅ proved - incomplete|shostak|0.040|
|init_re_der_chain_TCC2|✅ proved - incomplete|shostak|0.040|
|init_re_der_chain_TCC3|✅ proved - incomplete|shostak|0.120|
|init_re_der_chain_TCC4|✅ proved - incomplete|shostak|0.040|
|init_re_der_chain_TCC5|✅ proved - incomplete|shostak|0.040|
|init_re_der_chain_TCC6|✅ proved - incomplete|shostak|0.050|
|init_re_der_chain_TCC7|✅ proved - incomplete|shostak|0.123|
|init_re_der_chain_TCC8|✅ proved - incomplete|shostak|0.040|
|init_re_der_chain_TCC9|✅ proved - incomplete|shostak|0.040|
|init_re_der_chain_TCC10|✅ proved - incomplete|shostak|0.737|
|init_re_der_chain_TCC11|✅ proved - incomplete|shostak|1.013|
|init_re_der_chain|✅ proved - incomplete|shostak|0.416|
|init2_re_der_chain_TCC1|✅ proved - incomplete|shostak|0.040|
|init2_re_der_chain_TCC2|✅ proved - incomplete|shostak|0.040|
|init2_re_der_chain_TCC3|✅ proved - incomplete|shostak|0.040|
|init2_re_der_chain|✅ proved - incomplete|shostak|0.000|
|init3_re_der_chain_TCC1|✅ proved - incomplete|shostak|0.040|
|init3_re_der_chain_TCC2|✅ proved - incomplete|shostak|0.040|
|init3_re_der_chain_TCC3|✅ proved - incomplete|shostak|0.040|
|init3_re_der_chain_TCC4|✅ proved - incomplete|shostak|0.130|
|init3_re_der_chain_TCC5|✅ proved - incomplete|shostak|0.069|
|init3_re_der_chain_TCC6|✅ proved - incomplete|shostak|0.060|
|init3_re_der_chain_TCC7|✅ proved - incomplete|shostak|0.141|
|init3_re_der_chain_TCC8|✅ proved - incomplete|shostak|0.180|
|init3_re_der_chain_TCC9|✅ proved - incomplete|shostak|0.192|
|init3_re_der_chain_TCC10|✅ proved - incomplete|shostak|0.067|
|init3_re_der_chain_TCC11|✅ proved - incomplete|shostak|0.070|
|init3_re_der_chain|✅ proved - incomplete|shostak|7.868|
|SUB_DIFTRe_sig_TCC1|✅ proved - incomplete|shostak|0.050|
|SUB_DIFTRe_sig_TCC2|✅ proved - incomplete|shostak|0.040|
|SUB_DIFTRe_sig_TCC3|✅ proved - incomplete|shostak|0.030|
|SUB_DIFTRe_sig|✅ proved - incomplete|shostak|10.918|
|derivable_M_nqbool?_TCC1|✅ proved - incomplete|shostak|0.180|
|derivable_M_nqbool?_TCC2|✅ proved - incomplete|shostak|0.185|
|derivable_M_normalize_rec|✅ proved - incomplete|shostak|0.182|
|derivable_M_normalize|✅ proved - incomplete|shostak|0.030|

## `diff_re_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|diff_re_cont_TCC1|✅ proved - incomplete|shostak|0.654|
|diff_re_cont_TCC2|✅ proved - incomplete|shostak|0.000|
|diff_re_cont|✅ proved - incomplete|shostak|8.606|
|diff_re_divbound_TCC1|✅ proved - incomplete|shostak|0.183|
|diff_re_divbound_TCC2|✅ proved - incomplete|shostak|0.050|
|diff_re_divbound|✅ proved - incomplete|shostak|0.759|
|diff_re_val|✅ proved - incomplete|shostak|1.675|
|diff_re_cnst|✅ proved - incomplete|shostak|0.459|
|diff_re_prod|✅ proved - incomplete|shostak|9.896|
|diff_re_pow|✅ proved - incomplete|shostak|0.145|
|diff_re_sum|✅ proved - incomplete|shostak|0.817|
|diff_re_diff|✅ proved - incomplete|shostak|0.070|
|diff_re_inv_aux|✅ proved - incomplete|shostak|1:36.641|
|diff_re_inv|✅ proved - incomplete|shostak|0.115|
|diff_re_div|✅ proved - incomplete|shostak|0.140|

## `continuity_re_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cont_re?_TCC1|✅ proved - complete|shostak|0.020|

## `continuity_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|f_sol_continuous|✅ proved - incomplete|shostak|0.090|
|c_delt_TCC1|✅ proved - incomplete|shostak|0.510|
|min_delt_TCC1|✅ proved - incomplete|shostak|0.050|
|min_delt_TCC2|✅ proved - incomplete|shostak|0.164|
|min_delt_TCC3|✅ proved - incomplete|shostak|0.308|
|min_delt_TCC4|✅ proved - incomplete|shostak|0.060|
|min_delt_TCC5|✅ proved - incomplete|shostak|0.161|
|min_delt_TCC6|✅ proved - incomplete|shostak|0.080|
|min_delt_TCC7|✅ proved - incomplete|shostak|0.050|
|min_delt_TCC8|✅ proved - incomplete|shostak|0.220|
|min_delt_TCC9|✅ proved - incomplete|shostak|0.050|
|min_delt_TCC10|✅ proved - incomplete|shostak|0.791|
|env_at_t_continuous|✅ proved - incomplete|shostak|0.195|
|re_env_continuous|✅ proved - incomplete|shostak|0.736|

## `continuity_re_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cont_re_val|✅ proved - complete|shostak|0.070|
|cont_re_cnst|✅ proved - complete|shostak|0.057|
|cont_re_prod|✅ proved - incomplete|shostak|3.162|
|cont_re_pow|✅ proved - incomplete|shostak|0.241|
|cont_re_sum|✅ proved - complete|shostak|0.269|
|cont_re_diff|✅ proved - incomplete|shostak|0.070|
|cont_re_div_aux|✅ proved - incomplete|shostak|0.000|
|cont_re_div|✅ proved - incomplete|shostak|0.070|

## `fresh_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|fresh_re_cnst|✅ proved - complete|shostak|0.030|
|fresh_re_val|✅ proved - complete|shostak|0.030|
|fresh_re_sum|✅ proved - complete|shostak|0.060|
|fresh_re_minus|✅ proved - complete|shostak|0.050|
|fresh_re_prod|✅ proved - complete|shostak|0.060|
|fresh_re_div_safe|✅ proved - incomplete|shostak|0.040|
|fresh_re_sqrt_safe|✅ proved - incomplete|shostak|0.030|
|fresh_re_pow|✅ proved - incomplete|shostak|0.131|
|fresh_re_exp|✅ proved - incomplete|shostak|0.044|
|fresh_re_expt|✅ proved - incomplete|shostak|0.576|
|fresh_re_ex1|✅ proved - complete|shostak|1.980|
|fresh_re_ex2|✅ proved - incomplete|shostak|2.611|
|not_fresh_re_val|✅ proved - complete|shostak|0.030|
|fresh_be_DLTRUE|✅ proved - complete|shostak|0.040|
|fresh_be_DLFALSE|✅ proved - complete|shostak|0.030|
|fresh_be_eq|✅ proved - complete|shostak|0.068|
|fresh_be_neq|✅ proved - complete|shostak|0.060|
|fresh_be_le|✅ proved - complete|shostak|0.070|
|fresh_be_lt|✅ proved - complete|shostak|0.062|
|fresh_be_ge|✅ proved - complete|shostak|0.060|
|fresh_be_gt|✅ proved - complete|shostak|0.060|
|fresh_be_or|✅ proved - complete|shostak|0.064|
|fresh_be_and|✅ proved - complete|shostak|0.070|
|fresh_be_implies|✅ proved - complete|shostak|0.060|
|fresh_be_not|✅ proved - complete|shostak|0.050|
|fresh_be_IFF|✅ proved - complete|shostak|0.077|
|fresh_fs_sol|✅ proved - incomplete|shostak|1.355|
|fresh_bstar_semantic_rel|✅ proved - incomplete|shostak|0.227|
|fresh_be_semantic_rel|✅ proved - incomplete|shostak|0.615|
|fresh_be_allruns|✅ proved - incomplete|shostak|0.072|
|fresh_be_allruns_e|✅ proved - incomplete|shostak|0.104|
|fresh_be_someruns|✅ proved - incomplete|shostak|0.070|

## `dynamic_logic`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|assign0_prop|✅ proved - incomplete|shostak|0.262|
|assign_assign_sub|✅ proved - incomplete|shostak|0.089|
|assign_sub_assign|✅ proved - incomplete|shostak|0.050|
|turnstile_TCC1|✅ proved - complete|shostak|0.050|
|turnstile_TCC2|✅ proved - complete|shostak|0.045|
|turnstile_TCC3|✅ proved - complete|shostak|0.060|
|turnstile_TCC4|✅ proved - incomplete|shostak|0.100|
|turnstile_TCC5|✅ proved - incomplete|shostak|0.098|
|turnstile_TCC6|✅ proved - incomplete|shostak|0.160|
|dlSequent_equiv|✅ proved - incomplete|shostak|0.119|
|dl_notR|✅ proved - incomplete|shostak|0.168|
|dl_notL|✅ proved - incomplete|shostak|0.170|
|dl_andR|✅ proved - incomplete|shostak|0.143|
|dl_andL|✅ proved - incomplete|shostak|0.165|
|dl_orR|✅ proved - incomplete|shostak|0.179|
|dl_orL|✅ proved - incomplete|shostak|0.189|
|dl_impliesR|✅ proved - incomplete|shostak|0.196|
|dl_impliesL|✅ proved - incomplete|shostak|0.228|
|dl_equivR|✅ proved - incomplete|shostak|0.000|
|dl_equivL|✅ proved - incomplete|shostak|0.290|
|dl_axiom|✅ proved - incomplete|shostak|0.174|
|dl_trueR|✅ proved - incomplete|shostak|0.090|
|dl_trueL|✅ proved - incomplete|shostak|0.125|
|dl_falseR|✅ proved - incomplete|shostak|0.110|
|dl_falseL|✅ proved - incomplete|shostak|0.090|
|dl_cut|✅ proved - incomplete|shostak|0.147|
|dl_weakR|✅ proved - incomplete|shostak|0.175|
|dl_weakL|✅ proved - incomplete|shostak|0.170|
|dl_forallR|✅ proved - incomplete|shostak|0.126|
|dl_forallL|✅ proved - incomplete|shostak|0.080|
|dl_existsR|✅ proved - incomplete|shostak|0.077|
|dl_existsL|✅ proved - incomplete|shostak|0.130|
|dl_existsrR|✅ proved - incomplete|shostak|0.076|
|dl_existsrRf|✅ proved - incomplete|shostak|0.100|
|dl_existsrL|✅ proved - incomplete|shostak|0.126|
|move_to_head_rec_TCC1|✅ proved - complete|shostak|0.050|
|move_to_head_rec_TCC2|✅ proved - complete|shostak|0.040|
|move_to_head_rec_TCC3|✅ proved - complete|shostak|0.080|
|move_to_head_rec_TCC4|✅ proved - complete|shostak|0.040|
|move_to_head_rec_nth_TCC1|✅ proved - complete|shostak|0.050|
|move_to_head_rec_nth_TCC2|✅ proved - complete|shostak|0.150|
|move_to_head_rec_nth_TCC3|✅ proved - complete|shostak|0.150|
|move_to_head_rec_nth_TCC4|✅ proved - complete|shostak|0.127|
|move_to_head_rec_nth_TCC5|✅ proved - complete|shostak|0.170|
|move_to_head_rec_nth_TCC6|✅ proved - complete|shostak|0.130|
|move_to_head_rec_nth_TCC7|✅ proved - complete|shostak|0.177|
|move_to_head_rec_nth_TCC8|✅ proved - complete|shostak|0.150|
|move_to_head_rec_nth_TCC9|✅ proved - incomplete|shostak|0.445|
|move_to_head_rec_nth_TCC10|✅ proved - incomplete|shostak|1.014|
|move_to_head_TCC1|✅ proved - complete|shostak|0.040|
|move_to_head_length|✅ proved - incomplete|shostak|0.162|
|move_to_head_car_TCC1|✅ proved - incomplete|shostak|0.040|
|move_to_head_car_TCC2|✅ proved - complete|shostak|0.030|
|move_to_head_car|✅ proved - incomplete|shostak|0.091|
|move_to_head_first_half_TCC1|✅ proved - incomplete|shostak|0.040|
|move_to_head_first_half_TCC2|✅ proved - complete|shostak|0.060|
|move_to_head_first_half|✅ proved - incomplete|shostak|0.161|
|move_to_head_second_half_TCC1|✅ proved - incomplete|shostak|0.040|
|move_to_head_second_half|✅ proved - incomplete|shostak|0.190|
|dl_moveR|✅ proved - incomplete|shostak|0.142|
|dl_moveL|✅ proved - incomplete|shostak|0.139|
|dl_hideR|✅ proved - incomplete|shostak|0.120|
|dl_hideL|✅ proved - incomplete|shostak|0.124|
|dl_boxd|✅ proved - incomplete|shostak|0.050|
|dl_assignb|✅ proved - incomplete|shostak|0.050|
|dl_assignb_restricted|✅ proved - incomplete|shostak|0.057|
|dl_assignd|✅ proved - incomplete|shostak|0.050|
|dl_testb|✅ proved - incomplete|shostak|0.080|
|dl_testb_true|✅ proved - incomplete|shostak|0.040|
|dl_testd|✅ proved - incomplete|shostak|0.058|
|dl_testd_true|✅ proved - incomplete|shostak|0.130|
|dl_choiceb|✅ proved - incomplete|shostak|0.124|
|dl_choiced|✅ proved - incomplete|shostak|0.110|
|dl_composeb|✅ proved - incomplete|shostak|0.090|
|dl_composed|✅ proved - incomplete|shostak|0.080|
|dl_iterateb|✅ proved - incomplete|shostak|0.100|
|dl_iterated|✅ proved - incomplete|shostak|0.166|
|dl_anyb_TCC1|✅ proved - complete|shostak|0.050|
|dl_anyb|✅ proved - incomplete|shostak|0.246|
|dl_anyd|✅ proved - incomplete|shostak|0.114|
|dl_boxand|✅ proved - incomplete|shostak|0.060|
|dl_diamondOr|✅ proved - incomplete|shostak|0.069|
|dl_iteratearrowb|✅ proved - incomplete|shostak|0.129|
|dl_starstarb|✅ proved - incomplete|shostak|0.424|
|dl_iterateIb|✅ proved - incomplete|shostak|0.550|
|dl_impliesallrunsb|✅ proved - incomplete|shostak|0.127|
|dl_impliesallrunsd|✅ proved - incomplete|shostak|0.136|
|dl_distimpliesb|✅ proved - incomplete|shostak|0.099|
|dl_const|✅ proved - incomplete|shostak|0.259|
|dl_constd|✅ proved - incomplete|shostak|0.243|
|dl_V|✅ proved - incomplete|shostak|0.998|
|dl_Vd|✅ proved - incomplete|shostak|1.019|
|dl_bool_const|✅ proved - incomplete|shostak|0.116|
|dl_subr_TCC1|✅ proved - incomplete|shostak|0.110|
|dl_subr|✅ proved - incomplete|shostak|0.170|
|dl_subl|✅ proved - incomplete|shostak|0.208|
|dl_subf|✅ proved - incomplete|shostak|0.202|
|dl_weak_impliesb|✅ proved - incomplete|shostak|0.090|
|dl_weak_impliesd|✅ proved - incomplete|shostak|0.093|
|dl_weak_impliesbE|✅ proved - incomplete|shostak|0.104|
|dl_weak_impliesdE|✅ proved - incomplete|shostak|0.097|
|dl_differential_auxiliary_TCC1|✅ proved - complete|shostak|0.050|
|dl_differential_auxiliary|✅ proved - incomplete|shostak|3.570|
|dl_bounded_loop|✅ proved - incomplete|shostak|0.415|
|dl_loop|✅ proved - incomplete|shostak|0.243|
|dl_MbL|✅ proved - incomplete|shostak|0.916|
|dl_MbR|✅ proved - incomplete|shostak|0.000|
|dl_MdL|✅ proved - incomplete|shostak|0.868|
|dl_MdR|✅ proved - incomplete|shostak|0.753|
|dl_MEbR|✅ proved - incomplete|shostak|0.780|
|dl_MEbRA|✅ proved - incomplete|shostak|0.386|
|dl_discrete_ghost|✅ proved - incomplete|shostak|0.236|
|dl_andb|✅ proved - incomplete|shostak|0.120|
|dl_andf|✅ proved - incomplete|shostak|0.150|
|dl_orb|✅ proved - incomplete|shostak|0.217|
|dl_hide_restR|✅ proved - incomplete|shostak|0.113|
|dl_hide_restL|✅ proved - incomplete|shostak|0.110|
|dl_hide_restLR|✅ proved - incomplete|shostak|0.267|
|dl_commuteEquivR|✅ proved - incomplete|shostak|0.174|
|dl_commuteEquivL|✅ proved - incomplete|shostak|0.140|
|dl_equivifyR|✅ proved - incomplete|shostak|0.194|
|dl_dW|✅ proved - incomplete|shostak|0.170|
|dl_dinit|✅ proved - incomplete|shostak|0.234|
|dl_dI_eq|✅ proved - incomplete|shostak|3.207|
|dl_dI_neq|✅ proved - incomplete|shostak|0.000|
|dl_dI_le|✅ proved - incomplete|shostak|2.149|
|dl_dI_lt|✅ proved - incomplete|shostak|0.000|
|dl_dI_ge|✅ proved - incomplete|shostak|2.209|
|dl_dI_gt|✅ proved - incomplete|shostak|2.431|
|dl_dI_lite|✅ proved - incomplete|shostak|3.348|
|dl_dI|✅ proved - incomplete|shostak|1.580|
|dl_dI_dlTRUE_TCC1|✅ proved - complete|shostak|0.030|
|dl_dI_dlTRUE|✅ proved - incomplete|shostak|0.060|
|dl_dC|✅ proved - incomplete|shostak|0.284|
|dl_differential_ghost_TCC1|✅ proved - complete|shostak|0.040|
|dl_differential_ghost|✅ proved - incomplete|shostak|3.778|

## `more_derivative_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_derivative_props_TCC1|✅ proved - complete|shostak|0.020|
|IMP_derivative_props_TCC2|✅ proved - complete|shostak|0.020|
|deriv_linear_TCC1|✅ proved - incomplete|shostak|0.030|
|deriv_linear|✅ proved - incomplete|shostak|2.995|

## `dl_solution`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|init_zip_sol_TCC1|✅ proved - complete|shostak|0.100|
|init_zip_sol_TCC2|✅ proved - complete|shostak|0.030|
|init_zip_sol_TCC3|✅ proved - complete|shostak|0.104|
|init_zip_sol_TCC4|✅ proved - complete|shostak|0.090|
|init_zip_sol_TCC5|✅ proved - complete|shostak|0.387|
|init_zip_sol_TCC6|✅ proved - complete|shostak|0.147|
|init_zip_sol_TCC7|✅ proved - complete|shostak|0.110|
|init_zip_sol_TCC8|✅ proved - complete|shostak|0.437|
|zip_sol_test_TCC1|✅ proved - incomplete|shostak|0.105|
|zip_sol_test_TCC2|✅ proved - incomplete|shostak|0.030|
|zip_sol_test_TCC3|✅ proved - complete|shostak|0.040|
|zip_sol_test|✅ proved - incomplete|shostak|0.130|
|zs_TCC1|✅ proved - complete|shostak|0.080|
|map_inj_zs|✅ proved - complete|shostak|0.191|
|solution_domain_ax_ode_TCC1|✅ proved - incomplete|shostak|0.030|
|solution_domain_ax_ode|✅ proved - incomplete|shostak|2.349|
|dl_solution_domain_iff|✅ proved - incomplete|shostak|0.807|
|dl_solution_domain|✅ proved - incomplete|shostak|0.044|
|solution_domain_ax_TCC1|✅ proved - complete|shostak|0.030|
|solution_domain_ax_TCC2|✅ proved - complete|shostak|0.090|
|solution_domain_ax|✅ proved - incomplete|shostak|0.737|
|solution_domain_ax_lin|✅ proved - incomplete|shostak|0.773|
|solution_domain_ax_lin_val|✅ proved - incomplete|shostak|2.872|
|solution_domain_ax_quad_TCC1|✅ proved - complete|shostak|0.030|
|solution_domain_ax_quad_TCC2|✅ proved - complete|shostak|0.084|
|solution_domain_ax_quad|✅ proved - incomplete|shostak|16.109|
|in_map_test_TCC1|✅ proved - complete|shostak|0.055|
|in_map_test|✅ proved - complete|shostak|0.090|
|get_index_TCC1|✅ proved - complete|shostak|0.040|
|get_index_TCC2|✅ proved - complete|shostak|0.040|
|get_index_TCC3|✅ proved - complete|shostak|0.120|
|get_index_TCC4|✅ proved - complete|shostak|0.040|
|get_index_TCC5|✅ proved - complete|shostak|0.080|
|get_index_TCC6|✅ proved - complete|shostak|0.256|
|cnst_val_0|✅ proved - complete|shostak|0.060|
|cnst_val_com|✅ proved - complete|shostak|0.040|
|val_inj|✅ proved - complete|shostak|0.040|
|in_map_ex_TCC1|✅ proved - complete|shostak|0.040|
|in_map_ex_TCC2|✅ proved - complete|shostak|0.029|
|in_map_ex_TCC3|✅ proved - complete|shostak|0.090|
|in_map_ex_eq|✅ proved - complete|shostak|0.000|
|env_c_val|✅ proved - complete|shostak|0.030|
|get_val_cnst_id_ex_TCC1|✅ proved - complete|shostak|0.141|
|get_val_cnst_id_ex_TCC2|✅ proved - complete|shostak|0.526|
|is_val_not_in_map?_TCC1|✅ proved - complete|shostak|0.436|
|Y_sol_ex_TCC1|✅ proved - complete|shostak|0.527|
|cnst_lins_def|✅ proved - complete|shostak|0.643|
|y_sol_Ex_TCC1|✅ proved - complete|shostak|0.060|
|y_sol_Ex_TCC2|✅ proved - complete|shostak|0.287|
|y_sol_Ex_TCC3|✅ proved - complete|shostak|0.070|
|y_sol_Ex|✅ proved - incomplete|shostak|19.615|
|cnst_lins_sol_TCC1|✅ proved - incomplete|shostak|0.030|
|cnst_lins_sol|✅ proved - incomplete|shostak|23.712|
|cnst_lins_sol_u_TCC1|✅ proved - incomplete|shostak|0.030|
|cnst_lins_sol_u|✅ proved - incomplete|shostak|10.768|
|solution_domain_ax_cnst_imp_zip|✅ proved - incomplete|shostak|0.050|
|solution_domain_ax_cnst_imp_zip_no_hyp|✅ proved - incomplete|shostak|0.446|

## `top_dtl`
No formula declaration found.
## `even_more_list_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|suffix_append|✅ proved - incomplete|shostak|0.540|
|caret_suffix_TCC1|✅ proved - complete|shostak|0.020|
|caret_suffix|✅ proved - incomplete|shostak|0.640|
|rdc_cdr_TCC1|✅ proved - complete|shostak|0.030|
|rdc_cdr_TCC2|✅ proved - complete|shostak|0.030|
|rdc_cdr_TCC3|✅ proved - incomplete|shostak|0.060|
|rdc_cdr|✅ proved - incomplete|shostak|0.191|

## `ltl_expr`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cut_inf_diff_TCC1|✅ proved - incomplete|shostak|0.030|
|cut_inf_diff_TCC2|✅ proved - incomplete|shostak|0.070|
|cut_inf_diff_TCC3|✅ proved - incomplete|shostak|0.030|
|cut_inf_diff_TCC4|✅ proved - incomplete|shostak|0.070|
|cut_state_diff_TCC1|✅ proved - incomplete|shostak|0.030|
|cut_state_diff_TCC2|✅ proved - incomplete|shostak|0.039|
|cut_state_diff_TCC3|✅ proved - incomplete|shostak|0.040|
|cut_state_diff_TCC4|✅ proved - incomplete|shostak|0.070|
|cut_state_diff_TCC5|✅ proved - incomplete|shostak|0.070|
|cut_state_diff_TCC6|✅ proved - incomplete|shostak|0.040|
|cut_state_diff_TCC7|✅ proved - incomplete|shostak|0.129|
|cut_state_diff_TCC8|✅ proved - incomplete|shostak|0.040|
|cut_state_diff_TCC9|✅ proved - incomplete|shostak|0.190|
|cut_state_diff_TCC10|✅ proved - incomplete|shostak|0.223|
|cut_state_zero_TCC1|✅ proved - incomplete|shostak|0.040|
|cut_state_zero|✅ proved - incomplete|shostak|0.333|
|cut_inf_zero_TCC1|✅ proved - incomplete|shostak|0.030|
|cut_inf_zero|✅ proved - incomplete|shostak|0.199|
|ALLRUNS_eq|✅ proved - incomplete|shostak|0.070|
|SOMERUNS_eq|✅ proved - incomplete|shostak|0.067|
|DLGLOBALLY_TCC1|✅ proved - incomplete|shostak|0.050|
|DLGLOBALLY_TCC2|✅ proved - incomplete|shostak|0.040|
|DLGLOBALLY_TCC3|✅ proved - incomplete|shostak|0.040|
|DLEVENTUALLY_TCC1|✅ proved - incomplete|shostak|0.060|
|norm_implies_DLGLOBALLY|✅ proved - incomplete|shostak|0.060|
|DLEVENTUALLY_implies_norm|✅ proved - incomplete|shostak|0.050|
|DLGLOBALLY_FORALL|✅ proved - incomplete|shostak|1.769|
|DLGLOBALLY_append|✅ proved - incomplete|shostak|0.645|
|normDLGLOBALLY_append|✅ proved - incomplete|shostak|0.256|
|DLEVENTUALLY_EXISTS|✅ proved - incomplete|shostak|0.927|
|DLEVENTUALLY_append|✅ proved - incomplete|shostak|0.000|
|normDLEVENTUALLY_append|✅ proved - incomplete|shostak|0.199|
|DLGE_nth_TCC1|✅ proved - incomplete|shostak|0.030|
|DLGE_nth|✅ proved - incomplete|shostak|8.340|
|normDLGE_append|✅ proved - incomplete|shostak|2.117|
|DLEG_nth|✅ proved - incomplete|shostak|5.678|
|normDLEG_append|✅ proved - incomplete|shostak|2.106|

## `trace_semantics`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|wf_trace?_TCC1|✅ proved - incomplete|shostak|0.030|
|finite_trace?_TCC1|✅ proved - incomplete|shostak|0.030|
|wf_append|✅ proved - incomplete|shostak|0.556|
|wf_append_finite|✅ proved - incomplete|shostak|0.339|
|init_env_TCC1|✅ proved - incomplete|shostak|0.040|
|final_env_TCC1|✅ proved - incomplete|shostak|0.060|
|final_env_TCC2|✅ proved - incomplete|shostak|0.040|
|trace_semantic_rel_TCC1|✅ proved - incomplete|shostak|0.000|
|trace_semantic_rel_TCC2|✅ proved - incomplete|shostak|0.050|
|trace_semantic_rel_TCC3|✅ proved - incomplete|shostak|0.050|
|trace_semantic_rel_TCC4|✅ proved - incomplete|shostak|0.110|
|trace_semantic_rel_TCC5|✅ proved - incomplete|shostak|0.070|
|trace_semantic_rel_TCC6|✅ proved - incomplete|shostak|0.090|
|trace_semantic_rel_TCC7|✅ proved - incomplete|shostak|0.107|
|trace_semantic_rel_TCC8|✅ proved - incomplete|shostak|0.120|
|trace_semantic_rel_TCC9|✅ proved - incomplete|shostak|0.110|
|trace_semantic_rel_TCC10|✅ proved - incomplete|shostak|0.122|
|trace_semantic_rel_TCC11|✅ proved - incomplete|shostak|0.120|
|trace_semantic_rel_TCC12|✅ proved - incomplete|shostak|0.150|
|trace_semantic_rel_TCC13|✅ proved - incomplete|shostak|0.120|
|trace_semantic_rel_TCC14|✅ proved - incomplete|shostak|0.134|
|trace_semantic_rel_TCC15|✅ proved - incomplete|shostak|0.150|
|trace_semantic_rel_TCC16|✅ proved - incomplete|shostak|0.150|
|trace_semantics_correct_assign|✅ proved - incomplete|shostak|0.248|
|trace_semantics_correct_diff|✅ proved - incomplete|shostak|0.765|
|trace_semantics_correct_any|✅ proved - incomplete|shostak|0.344|
|trace_semantics_correct_test|✅ proved - incomplete|shostak|0.508|
|trace_semantics_correct_seq|✅ proved - incomplete|shostak|0.480|
|trace_semantics_correct_union|✅ proved - incomplete|shostak|0.090|
|trace_semantics_correct_star|✅ proved - incomplete|shostak|0.834|
|trace_semantics_correct|✅ proved - incomplete|shostak|0.188|
|trace_semantics_complete_assign|✅ proved - incomplete|shostak|0.337|
|trace_semantics_complete_diff|✅ proved - incomplete|shostak|1.028|
|trace_semantics_complete_any|✅ proved - incomplete|shostak|0.304|
|trace_semantics_complete_test|✅ proved - incomplete|shostak|0.222|
|trace_semantics_complete_seq|✅ proved - incomplete|shostak|0.523|
|trace_semantics_complete_union|✅ proved - incomplete|shostak|0.146|
|trace_semantics_complete_star|✅ proved - incomplete|shostak|1.018|
|trace_semantics_complete|✅ proved - incomplete|shostak|0.448|

## `solution_odes_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|diff_odes_shift_TCC1|✅ proved - incomplete|shostak|0.030|
|diff_odes_shift|✅ proved - incomplete|shostak|0.786|
|env_at_t_shift|✅ proved - complete|shostak|0.264|
|solution_odes_shift|✅ proved - incomplete|shostak|0.000|
|diff_odes_cat_hp_TCC1|✅ proved - incomplete|shostak|0.030|
|diff_odes_cat_hp_TCC2|✅ proved - incomplete|shostak|0.407|
|diff_odes_cat_hp_TCC3|✅ proved - incomplete|shostak|0.030|
|diff_odes_cat_hp_TCC4|✅ proved - incomplete|shostak|0.032|
|diff_odes_cat_hp_TCC5|✅ proved - incomplete|shostak|0.090|
|diff_odes_cat_hp|✅ proved - incomplete|shostak|2.970|
|diff_odes_cat_ci_TCC1|✅ proved - incomplete|shostak|0.030|
|diff_odes_cat_ci_TCC2|✅ proved - incomplete|shostak|0.040|
|diff_odes_cat_ci_TCC3|✅ proved - incomplete|shostak|0.051|
|diff_odes_cat_ci_TCC4|✅ proved - incomplete|shostak|0.040|
|diff_odes_cat_ci_TCC5|✅ proved - incomplete|shostak|0.042|
|diff_odes_cat_ci_TCC6|✅ proved - incomplete|shostak|0.050|
|diff_odes_cat_ci_TCC7|✅ proved - incomplete|shostak|0.100|
|diff_odes_cat_ci_TCC8|✅ proved - incomplete|shostak|0.050|
|diff_odes_cat_ci_TCC9|✅ proved - incomplete|shostak|0.108|
|diff_odes_cat_ci_TCC10|✅ proved - incomplete|shostak|0.150|
|diff_odes_cat_ci|✅ proved - incomplete|shostak|6.158|
|der_odes_cat_hp_TCC1|✅ proved - incomplete|shostak|0.082|
|der_odes_cat_hp_TCC2|✅ proved - incomplete|shostak|0.040|
|der_odes_cat_hp_TCC3|✅ proved - incomplete|shostak|0.042|
|der_odes_cat_hp_TCC4|✅ proved - incomplete|shostak|0.050|
|der_odes_cat_hp_TCC5|✅ proved - incomplete|shostak|0.166|
|der_odes_cat_hp|✅ proved - incomplete|shostak|2.039|
|der_odes_cat_ci_TCC1|✅ proved - incomplete|shostak|0.050|
|der_odes_cat_ci_TCC2|✅ proved - incomplete|shostak|0.060|
|der_odes_cat_ci_TCC3|✅ proved - incomplete|shostak|0.351|
|der_odes_cat_ci_TCC4|✅ proved - incomplete|shostak|0.201|
|der_odes_cat_ci_TCC5|✅ proved - incomplete|shostak|0.184|
|der_odes_cat_ci_TCC6|✅ proved - incomplete|shostak|0.119|
|der_odes_cat_ci_TCC7|✅ proved - incomplete|shostak|0.050|
|der_odes_cat_ci_TCC8|✅ proved - incomplete|shostak|0.042|
|der_odes_cat_ci_TCC9|✅ proved - incomplete|shostak|0.130|
|der_odes_cat_ci_TCC10|✅ proved - incomplete|shostak|0.052|
|der_odes_cat_ci_TCC11|✅ proved - incomplete|shostak|0.050|
|der_odes_cat_ci|✅ proved - incomplete|shostak|17.083|
|solution_odes_deriv_at_T_hp_TCC1|✅ proved - incomplete|shostak|0.020|
|solution_odes_deriv_at_T_hp_TCC2|✅ proved - incomplete|shostak|0.042|
|solution_odes_deriv_at_T_hp_TCC3|✅ proved - incomplete|shostak|0.040|
|solution_odes_deriv_at_T_hp_TCC4|✅ proved - incomplete|shostak|0.040|
|solution_odes_deriv_at_T_hp_TCC5|✅ proved - incomplete|shostak|0.105|
|solution_odes_deriv_at_T_hp|✅ proved - incomplete|shostak|0.123|
|solution_odes_deriv_at_T_ci_TCC1|✅ proved - incomplete|shostak|0.040|
|solution_odes_deriv_at_T_ci_TCC2|✅ proved - incomplete|shostak|0.060|
|solution_odes_deriv_at_T_ci_TCC3|✅ proved - incomplete|shostak|0.041|
|solution_odes_deriv_at_T_ci_TCC4|✅ proved - incomplete|shostak|0.040|
|solution_odes_deriv_at_T_ci_TCC5|✅ proved - incomplete|shostak|0.107|
|solution_odes_deriv_at_T_ci_TCC6|✅ proved - incomplete|shostak|0.050|
|solution_odes_deriv_at_T_ci_TCC7|✅ proved - incomplete|shostak|0.051|
|solution_odes_deriv_at_T_ci|✅ proved - incomplete|shostak|0.130|
|solution_odes_hp_conc|✅ proved - incomplete|shostak|0.605|
|solution_odes_ci_conc_TCC1|✅ proved - incomplete|shostak|0.147|
|solution_odes_ci_conc|✅ proved - incomplete|shostak|0.000|
|solution_odes_u_shift|✅ proved - incomplete|shostak|0.788|
|solution_odes_u_init|✅ proved - incomplete|shostak|0.483|

## `temporal_logic`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|norm_DLGLOBALLY|✅ proved - incomplete|shostak|0.030|
|norm_DLEVENTUALLY|✅ proved - incomplete|shostak|0.040|
|norm_DLGE|✅ proved - incomplete|shostak|3.314|
|norm_DLEG|✅ proved - incomplete|shostak|2.133|
|dltl_SEQcap|✅ proved - incomplete|shostak|0.495|
|dltl_SEQcap_con|✅ proved - incomplete|shostak|0.330|
|dltl_SEQcap_dual|✅ proved - incomplete|shostak|0.981|
|dltl_SEQcup|✅ proved - incomplete|shostak|1.190|
|dltl_SEQcup_dual|✅ proved - incomplete|shostak|0.705|
|dltl_SEQcup_dual_con|✅ proved - incomplete|shostak|0.625|
|dltl_SEQtriangleEG|✅ proved - incomplete|shostak|0.000|
|dltl_SEQtriangleGE|✅ proved - incomplete|shostak|4.570|
|dltl_SEQEG_dual|✅ proved - incomplete|shostak|2.010|
|dltl_SEQGE_dual|✅ proved - incomplete|shostak|1.624|
|dltl_choice|✅ proved - incomplete|shostak|0.182|
|dltl_choice_st|✅ proved - incomplete|shostak|0.147|
|dltl_choice_dual|✅ proved - incomplete|shostak|0.110|
|dltl_choice_st_dual|✅ proved - incomplete|shostak|0.111|
|dltl_TESTcap_eq|✅ proved - incomplete|shostak|0.340|
|dltl_TESTcap_eq_dual|✅ proved - incomplete|shostak|0.367|
|dltl_TESTcup_eq|✅ proved - incomplete|shostak|0.353|
|dltl_TESTcup_eq_dual|✅ proved - incomplete|shostak|0.385|
|dltl_TESTEG_eq|✅ proved - incomplete|shostak|0.285|
|dltl_TESTEG_eq_dual|✅ proved - incomplete|shostak|0.298|
|dltl_TESTGE_eq|✅ proved - incomplete|shostak|0.293|
|dltl_TESTGE_eq_dual|✅ proved - incomplete|shostak|0.269|
|dltl_ASSIGNcap|✅ proved - incomplete|shostak|1.009|
|dltl_ASSIGNcap_dual|✅ proved - incomplete|shostak|0.547|
|dltl_ASSIGNcup|✅ proved - incomplete|shostak|0.390|
|dltl_ASSIGNcup_dual|✅ proved - incomplete|shostak|0.745|
|dltl_ASSIGNEG|✅ proved - incomplete|shostak|0.185|
|dltl_ASSIGNGE|✅ proved - incomplete|shostak|0.184|
|dltl_ASSIGNEG_dual|✅ proved - incomplete|shostak|0.159|
|dltl_ASSIGNGE_dual|✅ proved - incomplete|shostak|0.158|
|dltl_DIFFcap|✅ proved - incomplete|shostak|1.515|
|dltl_DIFFcap_eq|✅ proved - incomplete|shostak|0.918|
|dltl_DIFFcap_eq_dual_TCC1|✅ proved - incomplete|shostak|0.030|
|dltl_DIFFcap_eq_dual|✅ proved - incomplete|shostak|0.000|
|dltl_DIFFcup_eq|✅ proved - incomplete|shostak|3.906|
|dltl_DIFFcup_dual|✅ proved - incomplete|shostak|1.629|
|dltl_DIFFcup_dual_eq|✅ proved - incomplete|shostak|1.185|
|dltl_DIFFEG_eq|✅ proved - incomplete|shostak|0.423|
|dltl_DIFFEG_dual_eq|✅ proved - incomplete|shostak|5.557|
|dltl_DIFFGE_eq|✅ proved - incomplete|shostak|0.000|
|dltl_DIFFGE_dual_eq|✅ proved - incomplete|shostak|5.226|
|dltl_BSTARcap_eq|✅ proved - incomplete|shostak|0.000|
|dltl_STARcap_eq|✅ proved - incomplete|shostak|0.120|
|dltl_STARcup_dual|✅ proved - incomplete|shostak|1.031|
|dltl_STARcup|✅ proved - incomplete|shostak|0.933|
|dltl_STARcap_dual|✅ proved - incomplete|shostak|0.880|
|dltl_BSTARindcup|✅ proved - incomplete|shostak|1.605|
|dltl_STARindcup|✅ proved - incomplete|shostak|0.186|
|dltl_BSTAREG_dual|✅ proved - incomplete|shostak|0.000|
|dltl_BSTARGE_dual|✅ proved - incomplete|shostak|5.088|
|dltl_STAREG_dual|✅ proved - incomplete|shostak|0.780|
|dltl_STARGE_dual|✅ proved - incomplete|shostak|0.702|
|dltl_STAREG|✅ proved - incomplete|shostak|1.532|
|dltl_STARGE|✅ proved - incomplete|shostak|0.000|
|dltl_STARconcap|✅ proved - incomplete|shostak|4.147|
|ALLRUNS_st_imp|✅ proved - incomplete|shostak|0.040|
|ALLRUNS_st_finite_equiv|✅ proved - incomplete|shostak|0.035|

## `trace_bounded_star_semantics`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|trace_semantic_rel_bounded_star_TCC1|✅ proved - complete|shostak|0.020|
|trace_semantic_rel_bounded_star_TCC2|✅ proved - incomplete|shostak|0.060|
|trace_semantic_rel_bounded_star_TCC3|✅ proved - incomplete|shostak|0.090|
|trace_semantic_rel_bounded_star_TCC4|✅ proved - incomplete|shostak|0.081|
|trace_semantic_rel_bounded_star_TCC5|✅ proved - incomplete|shostak|0.130|
|trace_semantic_rel_bounded_star_TCC6|✅ proved - incomplete|shostak|0.070|
|trace_semantic_rel_bounded_star_TCC7|✅ proved - incomplete|shostak|0.092|
|trace_semantic_rel_bounded_star_TCC8|✅ proved - incomplete|shostak|0.060|
|trace_semantic_rel_bounded_star_TCC9|✅ proved - incomplete|shostak|0.050|
|trace_semantic_rel_bounded_star_inc|✅ proved - incomplete|shostak|0.791|
|trace_semantic_rel_implies_bounded|✅ proved - incomplete|shostak|0.546|
|bounded_implies_trace_semantic_rel|✅ proved - incomplete|shostak|0.836|
|trace_semantic_rel_bstar_reflexive|✅ proved - incomplete|shostak|0.120|
|trace_semantic_rel_bounded_bstar_trace_semantic_rel_bstar|✅ proved - incomplete|shostak|0.386|
|trace_semantic_rel_star_bounded_star|✅ proved - incomplete|shostak|0.040|
|trace_semantic_rel_star_bounded_star_con|✅ proved - incomplete|shostak|0.369|
|allruns_st_star|✅ proved - incomplete|shostak|0.060|
|someruns_st_star|✅ proved - incomplete|shostak|0.050|
|allruns_tr_star|✅ proved - incomplete|shostak|0.060|
|someruns_tr_star|✅ proved - incomplete|shostak|0.060|
|trace_semantic_rel_star_seq|✅ proved - incomplete|shostak|0.110|
|trace_semantic_rel_bounded_star_seq_switch_glob|✅ proved - incomplete|shostak|6.455|
|trace_semantic_rel_bounded_star_seq_switch_even|✅ proved - incomplete|shostak|0.000|
|trace_semantic_rel_bounded_star_seq_switch_ge|✅ proved - incomplete|shostak|4.639|
|trace_semantic_rel_bounded_star_seq_switch_eg|✅ proved - incomplete|shostak|4.686|
|trace_semantic_rel_bounded_star_seq_switch_glob_con|✅ proved - incomplete|shostak|3.894|
|trace_semantic_rel_bounded_star_seq_switch_ge_con|✅ proved - incomplete|shostak|0.000|
|trace_semantic_rel_bounded_star_seq_switch_eg_con|✅ proved - incomplete|shostak|2.653|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Mac OS X (Intel)] (Nov 14, 2020 23:13)|
| Patch Version| n/a|
| Library Path| `/Applications/pvs-7.1.0/pvslib/`<br/>`/Applications/pvs-7.1.0/lib/`<br/>`/Applications/pvs-7.1.0/pvslib/float/`<br/>`/Applications/pvs-7.1.0/pvslib/pvsio_utils/`|
| Loaded Patches | `/Applications/pvs-7.1.0/pvslib/.pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230712-static-update.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230710-tcc-gen.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230707-defattach.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230706-extrategies.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210323-wish.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210225-cl2pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210715a.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210715.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210707.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210706.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210511.lisp`|
