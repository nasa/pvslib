# Summary for `dL`
Run started at 15:50:0 9/18/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **833**   | **833**    | **833**    | **0**  | **14:12.315 s**   |
|top|0|0|0|0|0.000|
|hp_def|24|24|24|0|5.210|
|hp_expr|32|32|32|0|3.717|
|bounded_star_semantics|23|23|23|0|4.231|
|bool_expr|36|36|36|0|3.892|
|bound_variables_def|17|17|17|0|3.266|
|hp_props|19|19|19|0|11.749|
|substitution|58|58|58|0|10.250|
|ODEs_equiv|103|103|103|0|37.284|
|differentiation|120|120|120|0|59.326|
|chain_rule_re|134|134|134|0|1:28.109|
|diff_re_props|15|15|15|0|2:43.711|
|continuity_re_def|1|1|1|0|0.040|
|continuity_props|14|14|14|0|5.199|
|continuity_re_props|8|8|8|0|13.426|
|fresh_props|32|32|32|0|12.730|
|dynamic_logic|136|136|136|0|1:22.705|
|more_derivative_props|4|4|4|0|16.298|
|dl_solution|57|57|57|0|5:31.172|
## Detailed Summary 
## `top`
No formula declaration found.
## `hp_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|mapexpr_inj_TCC1|✅ proved - complete|shostak|0.129|
|mapexpr_inj_TCC2|✅ proved - complete|shostak|0.120|
|mapexpr_inj_cons|✅ proved - complete|shostak|0.308|
|mapexpr_inj_eq|✅ proved - complete|shostak|0.169|
|null_MapExprInj|✅ proved - complete|shostak|0.100|
|cdr_is_MapExprInj|✅ proved - complete|shostak|0.204|
|sub_mapexpr_inj_is_mapexpr_inj|✅ proved - incomplete|shostak|0.151|
|in_map_cons|✅ proved - complete|shostak|0.174|
|in_map_null_false|✅ proved - complete|shostak|0.050|
|not_in_map_null|✅ proved - complete|shostak|0.053|
|index_of_j|✅ proved - complete|shostak|0.066|
|expr_car_TCC1|✅ proved - complete|shostak|0.080|
|expr_car|✅ proved - complete|shostak|0.144|
|expr_not_car_TCC1|✅ proved - complete|shostak|0.102|
|expr_not_car|✅ proved - complete|shostak|0.278|
|max_var_rec_TCC1|✅ proved - complete|shostak|0.040|
|max_var_rec_TCC2|✅ proved - complete|shostak|0.035|
|max_var_rec_TCC3|✅ proved - complete|shostak|0.070|
|max_var_rec_pull|✅ proved - complete|shostak|0.448|
|max_var_max|✅ proved - complete|shostak|0.366|
|max_var_exist|✅ proved - complete|shostak|1.435|
|pigeon_map|✅ proved - complete|shostak|0.351|
|max_var_length|✅ proved - complete|shostak|0.213|
|nip_max_var|✅ proved - complete|shostak|0.124|

## `hp_expr`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_table_of_integrals_TCC1|✅ proved - complete|shostak|0.030|
|IMP_table_of_integrals_TCC2|✅ proved - incomplete|shostak|0.020|
|size_TCC1|✅ proved - incomplete|shostak|0.064|
|size_TCC2|✅ proved - incomplete|shostak|0.050|
|size_TCC3|✅ proved - incomplete|shostak|0.060|
|size_TCC4|✅ proved - incomplete|shostak|0.060|
|size_TCC5|✅ proved - incomplete|shostak|0.048|
|dd?_TCC1|✅ proved - incomplete|shostak|0.030|
|dd_deriv_domain|✅ proved - incomplete|shostak|0.165|
|dd_noe|✅ proved - incomplete|shostak|0.060|
|dd_con|✅ proved - incomplete|shostak|0.069|
|dd_ne|✅ proved - incomplete|shostak|0.052|
|dd_ci_TCC1|✅ proved - incomplete|shostak|0.050|
|dd_ci|✅ proved - incomplete|shostak|0.054|
|derivable_odes?_TCC1|✅ proved - incomplete|shostak|0.040|
|derivable_odes?_TCC2|✅ proved - incomplete|shostak|0.066|
|env_at_t_TCC1|✅ proved - incomplete|shostak|0.065|
|env_at_t_TCC2|✅ proved - incomplete|shostak|0.503|
|sol_at_t?_TCC1|✅ proved - incomplete|shostak|0.703|
|semantic_rel_TCC1|✅ proved - incomplete|shostak|0.171|
|semantic_rel_TCC2|✅ proved - incomplete|shostak|0.114|
|semantic_rel_TCC3|✅ proved - incomplete|shostak|0.107|
|semantic_rel_TCC4|✅ proved - incomplete|shostak|0.123|
|fresh_li?_TCC1|✅ proved - incomplete|shostak|0.050|
|fresh_li?_TCC2|✅ proved - incomplete|shostak|0.040|
|fresh_assign_nth|✅ proved - incomplete|shostak|0.291|
|fresh_mapexpr_inj|✅ proved - incomplete|shostak|0.226|
|fresh_mapexp_nth_2|✅ proved - incomplete|shostak|0.189|
|fresh_hp?_TCC1|✅ proved - incomplete|shostak|0.050|
|fresh_hp?_TCC2|✅ proved - incomplete|shostak|0.050|
|fresh_hp?_TCC3|✅ proved - incomplete|shostak|0.057|
|fresh_hp?_TCC4|✅ proved - incomplete|shostak|0.060|

## `bounded_star_semantics`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|semantic_rel_bounded_star_TCC1|✅ proved - complete|shostak|0.030|
|semantic_rel_bounded_star_TCC2|✅ proved - incomplete|shostak|0.075|
|semantic_rel_bounded_star_TCC3|✅ proved - complete|shostak|0.064|
|semantic_rel_bounded_star_TCC4|✅ proved - complete|shostak|0.073|
|semantic_rel_bounded_star_TCC5|✅ proved - complete|shostak|0.070|
|semantic_rel_bounded_star_TCC6|✅ proved - complete|shostak|0.071|
|semantic_rel_bounded_star_TCC7|✅ proved - incomplete|shostak|0.095|
|semantic_rel_bounded_star_TCC8|✅ proved - incomplete|shostak|0.084|
|semantic_rel_bounded_star_inc|✅ proved - incomplete|shostak|0.656|
|semantic_rel_implies_bounded|✅ proved - incomplete|shostak|0.475|
|bounded_implies_semantic_rel|✅ proved - incomplete|shostak|0.568|
|BSTAR_TCC1|✅ proved - complete|shostak|0.050|
|BSTAR_TCC2|✅ proved - complete|shostak|0.030|
|semantic_rel_bstar_reflexive|✅ proved - incomplete|shostak|0.091|
|semantic_rel_bounded_bstar_semantic_rel_bstar|✅ proved - incomplete|shostak|0.169|
|semantic_rel_star_bounded_star|✅ proved - incomplete|shostak|0.054|
|semantic_rel_star_bounded_star_con|✅ proved - incomplete|shostak|0.172|
|semantic_rel_bounded_star_seq_switch|✅ proved - incomplete|shostak|0.795|
|semantic_rel_star_seq_switch|✅ proved - incomplete|shostak|0.278|
|semantic_rel_bounded_star_iter|✅ proved - incomplete|shostak|0.097|
|semantic_rel_bounded_star_iter_con_TCC1|✅ proved - incomplete|shostak|0.079|
|semantic_rel_bounded_star_iter_con|✅ proved - incomplete|shostak|0.000|
|semantic_rel_star_iter|✅ proved - incomplete|shostak|0.155|

## `bool_expr`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|fresh?_TCC1|✅ proved - complete|shostak|0.050|
|fresh?_TCC2|✅ proved - complete|shostak|0.070|
|fresh_formula_nth|✅ proved - complete|shostak|0.178|
|fresh_be_invar|✅ proved - complete|shostak|0.203|
|dl_not_not|✅ proved - complete|shostak|0.050|
|dl_not_true|✅ proved - complete|shostak|0.033|
|dl_not_false|✅ proved - complete|shostak|0.030|
|dl_true_and|✅ proved - complete|shostak|0.040|
|dl_and_true|✅ proved - complete|shostak|0.045|
|dl_false_and|✅ proved - complete|shostak|0.040|
|dl_and_false|✅ proved - complete|shostak|0.045|
|dl_true_or|✅ proved - complete|shostak|0.040|
|dl_or_true|✅ proved - complete|shostak|0.040|
|dl_false_or|✅ proved - complete|shostak|0.046|
|dl_or_false|✅ proved - complete|shostak|0.040|
|dl_true_implies|✅ proved - complete|shostak|0.045|
|dl_implies_true|✅ proved - complete|shostak|0.040|
|dl_false_implies|✅ proved - complete|shostak|0.040|
|dl_implies_false|✅ proved - complete|shostak|0.046|
|dl_forall_bool|✅ proved - complete|shostak|0.050|
|dl_exists_bool|✅ proved - complete|shostak|0.045|
|nqb_to_be_TCC1|✅ proved - complete|shostak|0.050|
|nqb_to_be_TCC2|✅ proved - complete|shostak|0.050|
|nqb_to_be_TCC3|✅ proved - complete|shostak|0.047|
|nqb_to_be_TCC4|✅ proved - complete|shostak|0.050|
|nqb_to_be_TCC5|✅ proved - complete|shostak|0.045|
|nqb_normal?_TCC1|✅ proved - complete|shostak|0.040|
|nqb_normal?_TCC2|✅ proved - complete|shostak|0.040|
|normalize_rec_TCC1|✅ proved - complete|shostak|0.056|
|normalize_rec_TCC2|✅ proved - complete|shostak|0.237|
|normalize_rec_TCC3|✅ proved - complete|shostak|1.026|
|normalize_rec_TCC4|✅ proved - complete|shostak|0.204|
|normalize_rec_TCC5|✅ proved - complete|shostak|0.490|
|normalize_rec_TCC6|✅ proved - complete|shostak|0.202|
|normalize_rec_TCC7|✅ proved - complete|shostak|0.101|
|normalize_TCC1|✅ proved - complete|shostak|0.038|

## `bound_variables_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|bv_me_TCC1|✅ proved - complete|shostak|0.030|
|bv_me_TCC2|✅ proved - complete|shostak|0.040|
|bv_me_TCC3|✅ proved - complete|shostak|0.030|
|bv_me_TCC4|✅ proved - complete|shostak|0.115|
|bv_me_TCC5|✅ proved - incomplete|shostak|0.066|
|BV_TCC1|✅ proved - complete|shostak|0.030|
|BV_TCC2|✅ proved - complete|shostak|0.144|
|BV_TCC3|✅ proved - complete|shostak|0.130|
|BV_TCC4|✅ proved - complete|shostak|0.109|
|BV_TCC5|✅ proved - incomplete|shostak|0.060|
|bv_me_nth_TCC1|✅ proved - incomplete|shostak|0.214|
|bv_me_nth|✅ proved - incomplete|shostak|0.366|
|BV_implies_not_fresh|✅ proved - incomplete|shostak|0.958|
|BV_invar|✅ proved - incomplete|shostak|0.753|
|bvs?_TCC1|✅ proved - complete|shostak|0.050|
|bvs?_TCC2|✅ proved - incomplete|shostak|0.041|
|bvs?_TCC3|✅ proved - incomplete|shostak|0.130|

## `hp_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|assign1_prop_TCC1|✅ proved - complete|shostak|0.068|
|assign1_prop|✅ proved - incomplete|shostak|0.309|
|assign_prop_TCC1|✅ proved - complete|shostak|0.071|
|assign_prop|✅ proved - incomplete|shostak|0.472|
|assign_comm_TCC1|✅ proved - complete|shostak|0.100|
|assign_comm|✅ proved - incomplete|shostak|0.283|
|union_prop_TCC1|✅ proved - incomplete|shostak|0.152|
|union_prop|✅ proved - incomplete|shostak|0.257|
|union_prop_xx|✅ proved - incomplete|shostak|0.058|
|union_id|✅ proved - incomplete|shostak|0.064|
|union_comm|✅ proved - incomplete|shostak|0.213|
|seq_prop|✅ proved - incomplete|shostak|0.670|
|test_prop|✅ proved - incomplete|shostak|0.070|
|diff_prop_TCC1|✅ proved - incomplete|shostak|0.140|
|diff_prop|✅ proved - incomplete|shostak|7.083|
|star_prop_imp_TCC1|✅ proved - complete|shostak|0.071|
|star_prop_imp|✅ proved - incomplete|shostak|0.385|
|star2_prop_imp_TCC1|✅ proved - complete|shostak|0.062|
|star2_prop_imp|✅ proved - incomplete|shostak|1.221|

## `substitution`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|assign_env_TCC1|✅ proved - complete|shostak|0.060|
|assign_env_TCC2|✅ proved - complete|shostak|0.041|
|assign_env_TCC3|✅ proved - complete|shostak|0.120|
|assign_env_TCC4|✅ proved - complete|shostak|0.052|
|SUB_MapExpr_TCC1|✅ proved - complete|shostak|0.050|
|SUB_MapExpr_TCC2|✅ proved - complete|shostak|0.063|
|SUB_MapExpr_TCC3|✅ proved - complete|shostak|0.057|
|SUB_MapExpr_TCC4|✅ proved - complete|shostak|0.150|
|SUB_MapExpr_TCC5|✅ proved - complete|shostak|1.091|
|assign_env__TCC1|✅ proved - incomplete|shostak|0.086|
|assign_env__TCC2|✅ proved - incomplete|shostak|0.059|
|assign_env__alt_j_TCC1|✅ proved - complete|shostak|0.050|
|assign_env__alt_j_TCC2|✅ proved - complete|shostak|0.030|
|assign_env__alt_j_TCC3|✅ proved - incomplete|shostak|0.117|
|assign_env__alt_j_TCC4|✅ proved - incomplete|shostak|0.645|
|assign_env__alt_j_TCC5|✅ proved - incomplete|shostak|0.800|
|assign_env_phantom_eq_TCC1|✅ proved - complete|shostak|0.040|
|assign_env_phantom_eq|✅ proved - incomplete|shostak|0.620|
|assign_env_alt|✅ proved - incomplete|shostak|0.158|
|assign_env_ext|✅ proved - complete|shostak|0.362|
|assign_sub_ext|✅ proved - complete|shostak|0.040|
|SUB_MapVar_TCC1|✅ proved - complete|shostak|0.052|
|SUB_MapVar_TCC2|✅ proved - complete|shostak|0.153|
|SUB_MapVar_TCC3|✅ proved - complete|shostak|0.040|
|SUB_MapVar_TCC4|✅ proved - complete|shostak|0.113|
|SUB_MapVar_TCC5|✅ proved - complete|shostak|0.168|
|dl_subre_val|✅ proved - complete|shostak|0.060|
|dl_subre_const|✅ proved - complete|shostak|0.052|
|dl_subre_plus|✅ proved - complete|shostak|0.095|
|dl_subre_minus|✅ proved - complete|shostak|0.070|
|dl_subre_neg|✅ proved - complete|shostak|0.074|
|dl_subre_prod|✅ proved - complete|shostak|0.093|
|dl_subre_prod_scal1|✅ proved - complete|shostak|0.093|
|dl_subre_prod_scal2|✅ proved - complete|shostak|0.090|
|dl_subre_exp|✅ proved - incomplete|shostak|0.142|
|dl_sub_bool|✅ proved - complete|shostak|0.061|
|dl_sub_bool_restricted|✅ proved - complete|shostak|0.061|
|dl_sub_and|✅ proved - complete|shostak|0.072|
|dl_sub_or|✅ proved - complete|shostak|0.070|
|dl_sub_not|✅ proved - complete|shostak|0.063|
|dl_sub_implies|✅ proved - complete|shostak|0.060|
|dl_sub_ge|✅ proved - complete|shostak|0.064|
|dl_sub_gt|✅ proved - complete|shostak|0.072|
|dl_sub_le|✅ proved - complete|shostak|0.070|
|dl_sub_lt|✅ proved - complete|shostak|0.064|
|dl_sub_eq|✅ proved - complete|shostak|0.064|
|dl_sub_neq|✅ proved - complete|shostak|0.070|
|dl_sub_iff|✅ proved - complete|shostak|0.073|
|dl_sub_allruns0_x_neq_y_TCC1|✅ proved - incomplete|shostak|0.131|
|dl_sub_allruns0_x_neq_y_TCC2|✅ proved - incomplete|shostak|0.181|
|dl_sub_allruns0_x_neq_y_TCC3|✅ proved - complete|shostak|0.154|
|dl_sub_allruns0_x_neq_y_TCC4|✅ proved - incomplete|shostak|0.171|
|dl_sub_allruns0_x_neq_y|✅ proved - incomplete|shostak|1.859|
|dl_sub_allruns_assign0_x_eq_y_TCC1|✅ proved - incomplete|shostak|0.174|
|dl_sub_allruns_assign0_x_eq_y_TCC2|✅ proved - incomplete|shostak|0.166|
|dl_sub_allruns_assign0_x_eq_y|✅ proved - incomplete|shostak|0.423|
|dl_sub_forall|✅ proved - complete|shostak|0.070|
|dl_sub_exists|✅ proved - complete|shostak|0.071|

## `ODEs_equiv`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Re_TCC1|✅ proved - incomplete|shostak|0.057|
|Re_TCC2|✅ proved - complete|shostak|0.060|
|Re_TCC3|✅ proved - complete|shostak|0.040|
|Re_TCC4|✅ proved - complete|shostak|0.100|
|Re_TCC5|✅ proved - incomplete|shostak|0.237|
|Re_TCC6|✅ proved - complete|shostak|0.060|
|Re_nth_TCC1|✅ proved - incomplete|shostak|0.074|
|Re_nth|✅ proved - incomplete|shostak|0.302|
|env_vec_TCC1|✅ proved - complete|shostak|0.040|
|env_vec_TCC2|✅ proved - complete|shostak|0.144|
|env_vec_TCC3|✅ proved - incomplete|shostak|0.183|
|env_vec_nth_TCC1|✅ proved - incomplete|shostak|0.082|
|env_vec_nth|✅ proved - incomplete|shostak|0.356|
|r2v_2_fs_TCC1|✅ proved - complete|shostak|0.075|
|r2v_2_fs_TCC2|✅ proved - incomplete|shostak|0.040|
|r2v_2_fs_TCC3|✅ proved - incomplete|shostak|0.043|
|r2v_2_fs_TCC4|✅ proved - incomplete|shostak|0.480|
|r2v_2_fs_TCC5|✅ proved - incomplete|shostak|0.084|
|fs_2_r2v_TCC1|✅ proved - incomplete|shostak|0.040|
|fs_2_r2v_TCC2|✅ proved - incomplete|shostak|0.060|
|fs_2_r2v_TCC3|✅ proved - incomplete|shostak|0.053|
|fs_2_r2v_TCC4|✅ proved - incomplete|shostak|0.040|
|fs_2_r2v_TCC5|✅ proved - incomplete|shostak|0.062|
|fs_2_r2v_TCC6|✅ proved - incomplete|shostak|0.040|
|fs_2_r2v_TCC7|✅ proved - incomplete|shostak|0.040|
|fs_2_r2v_TCC8|✅ proved - incomplete|shostak|0.084|
|fs_2_r2v_TCC9|✅ proved - incomplete|shostak|0.000|
|fs_2_f2v_nth_TCC1|✅ proved - incomplete|shostak|0.070|
|fs_2_f2v_nth|✅ proved - incomplete|shostak|0.486|
|fs_2_f2v_eq_TCC1|✅ proved - incomplete|shostak|0.040|
|fs_2_f2v_eq_TCC2|✅ proved - incomplete|shostak|0.071|
|fs_2_f2v_eq_TCC3|✅ proved - incomplete|shostak|0.081|
|fs_2_f2v_eq_TCC4|✅ proved - incomplete|shostak|0.060|
|fs_2_f2v_eq_TCC5|✅ proved - incomplete|shostak|0.047|
|fs_2_f2v_eq_TCC6|✅ proved - incomplete|shostak|0.275|
|fs_2_f2v_eq|✅ proved - incomplete|shostak|2.310|
|Odes_f_TCC1|✅ proved - incomplete|shostak|0.050|
|cont_f?_TCC1|✅ proved - incomplete|shostak|0.060|
|cont_f?_TCC2|✅ proved - incomplete|shostak|0.065|
|cont_f?_TCC3|✅ proved - incomplete|shostak|0.060|
|cont_f?_TCC4|✅ proved - incomplete|shostak|0.177|
|cont_f?_TCC5|✅ proved - incomplete|shostak|0.122|
|cont_f?_TCC6|✅ proved - incomplete|shostak|0.065|
|max_diff_TCC1|✅ proved - incomplete|shostak|0.040|
|max_diff_TCC2|✅ proved - incomplete|shostak|0.137|
|max_diff_TCC3|✅ proved - incomplete|shostak|0.050|
|max_diff_TCC4|✅ proved - incomplete|shostak|0.050|
|max_diff_TCC5|✅ proved - incomplete|shostak|0.154|
|max_diff_TCC6|✅ proved - incomplete|shostak|0.204|
|max_diff_TCC7|✅ proved - incomplete|shostak|0.084|
|max_diff_TCC8|✅ proved - incomplete|shostak|0.040|
|max_diff_TCC9|✅ proved - incomplete|shostak|1.107|
|max_diff_norm_inf_TCC1|✅ proved - incomplete|shostak|0.040|
|max_diff_norm_inf_TCC2|✅ proved - incomplete|shostak|0.072|
|max_diff_norm_inf_TCC3|✅ proved - incomplete|shostak|0.040|
|max_diff_norm_inf_TCC4|✅ proved - incomplete|shostak|0.074|
|max_diff_norm_inf_TCC5|✅ proved - incomplete|shostak|0.110|
|max_diff_norm_inf|✅ proved - incomplete|shostak|3.443|
|cdr_TCC1|✅ proved - incomplete|shostak|0.040|
|cdr_TCC2|✅ proved - incomplete|shostak|0.040|
|cdr_const_TCC1|✅ proved - incomplete|shostak|0.037|
|cdr_const|✅ proved - incomplete|shostak|0.177|
|Lip_ODEs?_TCC1|✅ proved - incomplete|shostak|0.061|
|Lip_ODEs?_TCC2|✅ proved - incomplete|shostak|0.098|
|Lip_ODEs?_TCC3|✅ proved - incomplete|shostak|0.149|
|Lip_ODEs?_TCC4|✅ proved - incomplete|shostak|0.104|
|Lip_DDL_ODEs|✅ proved - incomplete|shostak|3.075|
|cont_DDL_ODEs|✅ proved - incomplete|shostak|0.000|
|diff_sol_Lip_TCC1|✅ proved - incomplete|shostak|0.562|
|diff_sol_Lip_TCC2|✅ proved - incomplete|shostak|0.054|
|diff_sol_Lip|✅ proved - incomplete|shostak|8.060|
|diff_sol_eq_TCC1|✅ proved - incomplete|shostak|0.127|
|diff_sol_eq_TCC2|✅ proved - incomplete|shostak|0.060|
|diff_sol_eq|✅ proved - incomplete|shostak|0.055|
|fs_sol_TCC1|✅ proved - incomplete|shostak|0.093|
|ODEs_s_sub_TCC1|✅ proved - incomplete|shostak|0.656|
|ODEs_s_sub_TCC2|✅ proved - incomplete|shostak|0.084|
|ODEs_s_sub|✅ proved - incomplete|shostak|0.757|
|fs_sol_sub_TCC1|✅ proved - incomplete|shostak|0.064|
|fs_sol_sub_TCC2|✅ proved - incomplete|shostak|0.078|
|fs_sol_sub_TCC3|✅ proved - incomplete|shostak|0.056|
|fs_sol_sub|✅ proved - incomplete|shostak|0.189|
|env_sol_sub_TCC1|✅ proved - incomplete|shostak|0.644|
|env_sol_sub_TCC2|✅ proved - incomplete|shostak|0.847|
|env_sol_sub_TCC3|✅ proved - incomplete|shostak|0.069|
|env_sol_sub_TCC4|✅ proved - incomplete|shostak|0.000|
|env_sol_sub|✅ proved - incomplete|shostak|0.311|
|solution_odes_sub|✅ proved - incomplete|shostak|0.317|
|solution_odes_subset|✅ proved - incomplete|shostak|0.097|
|odes_hp_s_TCC1|✅ proved - incomplete|shostak|0.040|
|odes_hp_s_TCC2|✅ proved - incomplete|shostak|0.050|
|odes_hp_s_TCC3|✅ proved - incomplete|shostak|0.334|
|odes_hp_s|✅ proved - incomplete|shostak|0.364|
|fs_sol_hp_TCC1|✅ proved - incomplete|shostak|0.331|
|fs_sol_hp_TCC2|✅ proved - incomplete|shostak|0.378|
|fs_sol_hp_TCC3|✅ proved - incomplete|shostak|0.208|
|fs_sol_hp_TCC4|✅ proved - incomplete|shostak|0.377|
|fs_sol_hp_TCC5|✅ proved - incomplete|shostak|0.454|
|fs_sol_hp_fs_TCC1|✅ proved - incomplete|shostak|0.057|
|fs_sol_hp_fs|✅ proved - incomplete|shostak|0.387|
|fs_sol_hp_sol|✅ proved - incomplete|shostak|2.419|
|fs_sol_hp_sol_u|✅ proved - incomplete|shostak|1.037|
|diff_sol_eq_dd|✅ proved - incomplete|shostak|1.327|

## `differentiation`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_derivatives_TCC1|✅ proved - incomplete|shostak|0.030|
|IMP_derivatives_TCC2|✅ proved - incomplete|shostak|0.050|
|right_dd_i|✅ proved - incomplete|shostak|0.219|
|right_dd|✅ proved - incomplete|shostak|0.052|
|connection_proj|✅ proved - incomplete|shostak|0.102|
|right_ne_i|✅ proved - incomplete|shostak|0.194|
|right_ne|✅ proved - incomplete|shostak|0.050|
|ddl_dom_upto|✅ proved - incomplete|shostak|0.047|
|ddl_dom_weak|✅ proved - incomplete|shostak|0.063|
|ddl_dom_dd|✅ proved - incomplete|shostak|0.696|
|ddl_dom__upto_dd|✅ proved - incomplete|shostak|0.048|
|ddl_dom_noe|✅ proved - incomplete|shostak|0.040|
|dl_true_DDL|✅ proved - incomplete|shostak|0.152|
|dl_true_up_DDL|✅ proved - incomplete|shostak|0.142|
|derivable?_TCC1|✅ proved - incomplete|shostak|0.119|
|derivable?_TCC2|✅ proved - incomplete|shostak|0.050|
|derivable?_TCC3|✅ proved - incomplete|shostak|0.044|
|derivable_up?_TCC1|✅ proved - incomplete|shostak|0.050|
|derivable?_TCC4|✅ proved - incomplete|shostak|0.075|
|hathat_diff_real_TCC1|✅ proved - incomplete|shostak|0.040|
|hathat_diff_real_TCC2|✅ proved - incomplete|shostak|1.085|
|hathat_diff_real_TCC3|✅ proved - incomplete|shostak|0.040|
|hathat_diff_real|✅ proved - incomplete|shostak|0.184|
|expt_TCC1|✅ proved - incomplete|shostak|0.054|
|expt_TCC2|✅ proved - incomplete|shostak|0.050|
|sqrt_hathat_TCC1|✅ proved - incomplete|shostak|0.040|
|sqrt_hathat|✅ proved - incomplete|shostak|0.547|
|sqrt_hathat_neg_TCC1|✅ proved - incomplete|shostak|0.060|
|sqrt_hathat_neg|✅ proved - incomplete|shostak|0.234|
|expt_exp_equiv|✅ proved - incomplete|shostak|0.054|
|partial_diff_TCC1|✅ proved - incomplete|shostak|0.063|
|dl_derivable_const|✅ proved - incomplete|shostak|0.075|
|dl_partial_const_TCC1|✅ proved - incomplete|shostak|0.040|
|dl_partial_const|✅ proved - incomplete|shostak|0.199|
|dl_derivable_up_cnst|✅ proved - incomplete|shostak|0.063|
|dl_derivable_val|✅ proved - incomplete|shostak|0.085|
|dl_derivable_up_val|✅ proved - incomplete|shostak|0.062|
|dl_partial_val_TCC1|✅ proved - incomplete|shostak|0.047|
|dl_partial_val|✅ proved - incomplete|shostak|0.242|
|dl_derivable_plus|✅ proved - incomplete|shostak|0.144|
|dl_partial_plus_TCC1|✅ proved - incomplete|shostak|0.053|
|dl_partial_plus|✅ proved - incomplete|shostak|0.320|
|dl_derivable_up_sum|✅ proved - incomplete|shostak|0.081|
|dl_derivable_mult|✅ proved - incomplete|shostak|0.074|
|dl_partial_mult_TCC1|✅ proved - incomplete|shostak|0.039|
|dl_partial_mult|✅ proved - incomplete|shostak|0.421|
|dl_derivable_up_prod|✅ proved - incomplete|shostak|0.072|
|dl_derivable_minus|✅ proved - incomplete|shostak|0.085|
|dl_partial_minus_TCC1|✅ proved - incomplete|shostak|0.030|
|dl_partial_minus|✅ proved - incomplete|shostak|0.250|
|dl_derivable_up_minus|✅ proved - incomplete|shostak|0.125|
|dl_derivable_negative|✅ proved - incomplete|shostak|0.149|
|dl_partial_negative_TCC1|✅ proved - incomplete|shostak|0.040|
|dl_partial_negative|✅ proved - incomplete|shostak|0.263|
|dl_derivable_pow|✅ proved - incomplete|shostak|0.643|
|dl_derivable_up_pow|✅ proved - incomplete|shostak|0.227|
|dl_derivable_div|✅ proved - incomplete|shostak|0.363|
|dl_partial_div_TCC1|✅ proved - incomplete|shostak|0.030|
|dl_partial_div|✅ proved - incomplete|shostak|0.000|
|dl_derivable_up_div|✅ proved - incomplete|shostak|0.077|
|dl_derivable_comp_point_TCC1|✅ proved - incomplete|shostak|2.110|
|dl_derivable_comp_point_TCC2|✅ proved - incomplete|shostak|0.050|
|dl_derivable_comp_point_TCC3|✅ proved - incomplete|shostak|0.169|
|dl_derivable_comp_point|✅ proved - incomplete|shostak|0.275|
|dl_derivable_comp_TCC1|✅ proved - incomplete|shostak|0.054|
|dl_derivable_comp_TCC2|✅ proved - incomplete|shostak|0.050|
|dl_derivable_comp_TCC3|✅ proved - incomplete|shostak|0.169|
|dl_derivable_comp|✅ proved - incomplete|shostak|0.064|
|dl_partial_chain_TCC1|✅ proved - incomplete|shostak|0.030|
|dl_partial_chain_TCC2|✅ proved - incomplete|shostak|0.057|
|dl_partial_chain_TCC3|✅ proved - incomplete|shostak|0.056|
|dl_partial_chain_TCC4|✅ proved - incomplete|shostak|0.165|
|dl_partial_chain|✅ proved - incomplete|shostak|0.583|
|dl_derivable_exp|✅ proved - incomplete|shostak|2.084|
|dl_partial_exp_TCC1|✅ proved - incomplete|shostak|0.040|
|dl_partial_exp|✅ proved - incomplete|shostak|5.928|
|dl_derivable_sqrt|✅ proved - incomplete|shostak|0.000|
|dl_partial_sqrt_TCC1|✅ proved - incomplete|shostak|0.048|
|dl_partial_sqrt|✅ proved - incomplete|shostak|1.112|
|DIFT_last_TCC1|✅ proved - incomplete|shostak|0.040|
|DIFT_last_TCC2|✅ proved - incomplete|shostak|0.080|
|DIFT_last|✅ proved - incomplete|shostak|0.490|
|dl_dift_val_zero|✅ proved - incomplete|shostak|0.548|
|dl_dift_val_P|✅ proved - incomplete|shostak|1.184|
|dl_dift_val_TCC1|✅ proved - incomplete|shostak|0.040|
|dl_dift_val|✅ proved - incomplete|shostak|0.083|
|dl_dift_const|✅ proved - incomplete|shostak|0.927|
|dl_dift_plus_TCC1|✅ proved - incomplete|shostak|0.046|
|dl_dift_plus|✅ proved - incomplete|shostak|2.599|
|dl_dift_minus|✅ proved - incomplete|shostak|1.140|
|dl_dift_negative|✅ proved - incomplete|shostak|0.000|
|dl_dift_mult|✅ proved - incomplete|shostak|4.416|
|dl_dift_divsafe|✅ proved - incomplete|shostak|4.644|
|dl_dift_exp|✅ proved - incomplete|shostak|1.028|
|dl_dift_pow|✅ proved - incomplete|shostak|1.607|
|dl_dift_sqrt|✅ proved - incomplete|shostak|1.307|
|ddt_TCC1|✅ proved - incomplete|shostak|0.060|
|ddt_TCC2|✅ proved - incomplete|shostak|0.057|
|ddt_TCC3|✅ proved - incomplete|shostak|0.140|
|ddt_not_in_map|✅ proved - incomplete|shostak|0.295|
|ddt_in_map_TCC1|✅ proved - incomplete|shostak|0.219|
|ddt_in_map|✅ proved - incomplete|shostak|1.548|
|re_plus_cnst0|✅ proved - incomplete|shostak|0.048|
|cnst0_plus_re|✅ proved - incomplete|shostak|0.054|
|re_minus_cnst0|✅ proved - incomplete|shostak|0.050|
|cnst0_minus_re|✅ proved - incomplete|shostak|0.121|
|re_prod_cnst0|✅ proved - incomplete|shostak|0.055|
|cnst0_prod_re|✅ proved - incomplete|shostak|0.120|
|sqrt_safe_sq|✅ proved - incomplete|shostak|0.102|
|ODEs_P?_TCC1|✅ proved - incomplete|shostak|12.426|
|DIFT_TCC1|✅ proved - incomplete|shostak|0.071|
|DIFT_TCC2|✅ proved - incomplete|shostak|0.134|
|DIFT_TCC3|✅ proved - incomplete|shostak|0.085|
|DIFT_TCC4|✅ proved - incomplete|shostak|0.603|
|DIFT_TCC5|✅ proved - incomplete|shostak|0.085|
|DIFT_TCC6|✅ proved - incomplete|shostak|0.488|
|DIFT_TCC7|✅ proved - incomplete|shostak|0.086|
|DIFT_TCC8|✅ proved - incomplete|shostak|0.146|
|DIFT_TCC9|✅ proved - incomplete|shostak|0.080|
|DIFT_TCC10|✅ proved - incomplete|shostak|0.057|

## `chain_rule_re`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|env_2_vec_TCC1|✅ proved - incomplete|shostak|0.050|
|env_2_vec_TCC2|✅ proved - complete|shostak|0.065|
|env_2_vec_TCC3|✅ proved - complete|shostak|0.040|
|env_2_vec_TCC4|✅ proved - incomplete|shostak|0.070|
|env_2_vec_nth_TCC1|✅ proved - incomplete|shostak|0.131|
|env_2_vec_nth|✅ proved - incomplete|shostak|0.238|
|projv_dd|✅ proved - incomplete|shostak|4.069|
|proj_projv_TCC1|✅ proved - incomplete|shostak|0.058|
|proj_projv_TCC2|✅ proved - incomplete|shostak|0.220|
|proj_projv|✅ proved - incomplete|shostak|0.000|
|projv_proj_TCC1|✅ proved - complete|shostak|0.050|
|projv_proj_TCC2|✅ proved - incomplete|shostak|0.230|
|projv_proj|✅ proved - incomplete|shostak|0.551|
|ddl_dom_dom_dir|✅ proved - incomplete|shostak|1.441|
|dd_e_partial|✅ proved - incomplete|shostak|1.287|
|vec_2_env_TCC1|✅ proved - incomplete|shostak|0.130|
|vec_2_env_id|✅ proved - incomplete|shostak|0.260|
|env_2_vec_id|✅ proved - incomplete|shostak|0.314|
|vec_2_env_plus_TCC1|✅ proved - incomplete|shostak|0.218|
|vec_2_env_plus_TCC2|✅ proved - incomplete|shostak|0.068|
|vec_2_env_plus|✅ proved - incomplete|shostak|1.947|
|differentiable_re_p?_TCC1|✅ proved - incomplete|shostak|0.047|
|differentiable_re_p?_TCC2|✅ proved - incomplete|shostak|0.050|
|diff_env_change|✅ proved - incomplete|shostak|0.366|
|diff_re_diff_mv_TCC1|✅ proved - incomplete|shostak|0.055|
|diff_re_diff_mv|✅ proved - incomplete|shostak|0.293|
|der_re_p_TCC1|✅ proved - incomplete|shostak|0.299|
|der_re_TCC1|✅ proved - incomplete|shostak|3.592|
|der_re_grad_TCC1|✅ proved - incomplete|shostak|0.144|
|der_re_grad_TCC2|✅ proved - incomplete|shostak|0.312|
|der_re_grad|✅ proved - incomplete|shostak|0.453|
|diff_re_init_partial_TCC1|✅ proved - incomplete|shostak|0.139|
|diff_re_init_partial|✅ proved - incomplete|shostak|0.191|
|der_re_partial_TCC1|✅ proved - incomplete|shostak|0.184|
|der_re_partial|✅ proved - incomplete|shostak|0.163|
|re_diff_mv|✅ proved - incomplete|shostak|0.172|
|re_der_mv_TCC1|✅ proved - incomplete|shostak|0.124|
|re_der_mv|✅ proved - incomplete|shostak|0.334|
|re_diff_mv_ll_TCC1|✅ proved - incomplete|shostak|0.054|
|re_diff_mv_ll_TCC2|✅ proved - incomplete|shostak|0.361|
|re_diff_mv_ll_TCC3|✅ proved - incomplete|shostak|0.062|
|re_diff_mv_ll_TCC4|✅ proved - incomplete|shostak|0.068|
|re_diff_mv_ll_TCC5|✅ proved - incomplete|shostak|0.084|
|re_diff_mv_ll|✅ proved - incomplete|shostak|0.887|
|re_der_mv_ll_TCC1|✅ proved - incomplete|shostak|0.148|
|re_der_mv_ll_TCC2|✅ proved - incomplete|shostak|0.055|
|re_der_mv_ll_TCC3|✅ proved - incomplete|shostak|0.079|
|re_der_mv_ll|✅ proved - incomplete|shostak|0.835|
|with_e_vec_TCC1|✅ proved - complete|shostak|0.050|
|with_e_vec_TCC2|✅ proved - incomplete|shostak|0.253|
|with_e_vec|✅ proved - incomplete|shostak|0.567|
|derivable_partial_TCC1|✅ proved - incomplete|shostak|0.130|
|derivable_partial_TCC2|✅ proved - incomplete|shostak|0.065|
|derivable_partial_TCC3|✅ proved - incomplete|shostak|0.123|
|derivable_partial|✅ proved - incomplete|shostak|0.000|
|derivable_partial_D_TCC1|✅ proved - incomplete|shostak|0.050|
|derivable_partial_D|✅ proved - incomplete|shostak|0.672|
|deriv_partial_TCC1|✅ proved - incomplete|shostak|0.133|
|deriv_partial|✅ proved - incomplete|shostak|3.388|
|diff_re_derivable_partial_TCC1|✅ proved - incomplete|shostak|0.471|
|diff_re_derivable_partial|✅ proved - incomplete|shostak|0.078|
|diff_re_partialable_p_TCC1|✅ proved - incomplete|shostak|0.472|
|diff_re_partialable_p|✅ proved - incomplete|shostak|0.230|
|diff_re_derivable_up_TCC1|✅ proved - incomplete|shostak|0.443|
|diff_re_derivable_up|✅ proved - incomplete|shostak|0.123|
|der_re_partial_der_TCC1|✅ proved - incomplete|shostak|0.055|
|der_re_partial_der|✅ proved - incomplete|shostak|0.124|
|der_ll_partial_der_TCC1|✅ proved - incomplete|shostak|0.094|
|der_ll_partial_der_TCC2|✅ proved - incomplete|shostak|0.085|
|der_ll_partial_der_TCC3|✅ proved - incomplete|shostak|0.316|
|der_ll_partial_der_TCC4|✅ proved - incomplete|shostak|0.088|
|der_ll_partial_der_TCC5|✅ proved - incomplete|shostak|5.717|
|der_ll_partial_der|✅ proved - incomplete|shostak|0.151|
|eq_re_comp|✅ proved - incomplete|shostak|0.285|
|env_sol_env2vec|✅ proved - incomplete|shostak|0.383|
|e2v_diff_p_TCC1|✅ proved - incomplete|shostak|0.053|
|e2v_diff_p|✅ proved - incomplete|shostak|3.447|
|e2v_der_p_TCC1|✅ proved - incomplete|shostak|0.159|
|e2v_der_p_TCC2|✅ proved - incomplete|shostak|0.605|
|e2v_der_p_TCC3|✅ proved - incomplete|shostak|0.359|
|e2v_der_p|✅ proved - incomplete|shostak|0.398|
|e2v_der_p_not_in_map|✅ proved - incomplete|shostak|1.607|
|e2v_der_p_in_map|✅ proved - incomplete|shostak|11.485|
|e2v_der_p_in_map_ode|✅ proved - incomplete|shostak|0.000|
|e2v_re_diff_p_TCC1|✅ proved - incomplete|shostak|0.060|
|e2v_re_diff_p_TCC2|✅ proved - incomplete|shostak|0.059|
|e2v_re_diff_p|✅ proved - incomplete|shostak|1.938|
|e2v_re_der_p_TCC1|✅ proved - incomplete|shostak|0.069|
|e2v_re_der_p_TCC2|✅ proved - incomplete|shostak|0.065|
|e2v_re_der_p_TCC3|✅ proved - incomplete|shostak|0.143|
|e2v_re_der_p_TCC4|✅ proved - incomplete|shostak|0.066|
|e2v_re_der_p_TCC5|✅ proved - incomplete|shostak|0.089|
|e2v_re_der_p_TCC6|✅ proved - incomplete|shostak|0.184|
|e2v_re_der_p|✅ proved - incomplete|shostak|2.223|
|re_diff_chain_TCC1|✅ proved - incomplete|shostak|0.096|
|re_diff_chain_TCC2|✅ proved - incomplete|shostak|0.050|
|re_diff_chain_TCC3|✅ proved - incomplete|shostak|0.051|
|re_diff_chain|✅ proved - incomplete|shostak|0.218|
|init_re_der_chain_TCC1|✅ proved - incomplete|shostak|0.063|
|init_re_der_chain_TCC2|✅ proved - incomplete|shostak|0.056|
|init_re_der_chain_TCC3|✅ proved - incomplete|shostak|0.156|
|init_re_der_chain_TCC4|✅ proved - incomplete|shostak|0.060|
|init_re_der_chain_TCC5|✅ proved - incomplete|shostak|0.060|
|init_re_der_chain_TCC6|✅ proved - incomplete|shostak|0.076|
|init_re_der_chain_TCC7|✅ proved - incomplete|shostak|0.185|
|init_re_der_chain_TCC8|✅ proved - incomplete|shostak|0.065|
|init_re_der_chain_TCC9|✅ proved - incomplete|shostak|0.063|
|init_re_der_chain_TCC10|✅ proved - incomplete|shostak|1.142|
|init_re_der_chain_TCC11|✅ proved - incomplete|shostak|1.564|
|init_re_der_chain|✅ proved - incomplete|shostak|0.610|
|init2_re_der_chain_TCC1|✅ proved - incomplete|shostak|0.050|
|init2_re_der_chain_TCC2|✅ proved - incomplete|shostak|0.060|
|init2_re_der_chain_TCC3|✅ proved - incomplete|shostak|0.062|
|init2_re_der_chain|✅ proved - incomplete|shostak|2.629|
|init3_re_der_chain_TCC1|✅ proved - incomplete|shostak|0.060|
|init3_re_der_chain_TCC2|✅ proved - incomplete|shostak|0.055|
|init3_re_der_chain_TCC3|✅ proved - incomplete|shostak|0.075|
|init3_re_der_chain_TCC4|✅ proved - incomplete|shostak|0.204|
|init3_re_der_chain_TCC5|✅ proved - incomplete|shostak|0.098|
|init3_re_der_chain_TCC6|✅ proved - incomplete|shostak|0.104|
|init3_re_der_chain_TCC7|✅ proved - incomplete|shostak|0.215|
|init3_re_der_chain_TCC8|✅ proved - incomplete|shostak|0.273|
|init3_re_der_chain_TCC9|✅ proved - incomplete|shostak|0.303|
|init3_re_der_chain_TCC10|✅ proved - incomplete|shostak|0.111|
|init3_re_der_chain_TCC11|✅ proved - incomplete|shostak|0.110|
|init3_re_der_chain|✅ proved - incomplete|shostak|3.201|
|SUB_DIFTRe_sig_TCC1|✅ proved - incomplete|shostak|0.071|
|SUB_DIFTRe_sig_TCC2|✅ proved - incomplete|shostak|0.052|
|SUB_DIFTRe_sig_TCC3|✅ proved - incomplete|shostak|0.045|
|SUB_DIFTRe_sig|✅ proved - incomplete|shostak|16.347|
|derivable_M_nqbool?_TCC1|✅ proved - incomplete|shostak|0.285|
|derivable_M_nqbool?_TCC2|✅ proved - incomplete|shostak|0.294|
|derivable_M_normalize_rec|✅ proved - incomplete|shostak|0.287|
|derivable_M_normalize|✅ proved - incomplete|shostak|0.060|

## `diff_re_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|diff_re_cont_TCC1|✅ proved - incomplete|shostak|1.047|
|diff_re_cont_TCC2|✅ proved - incomplete|shostak|0.823|
|diff_re_cont|✅ proved - incomplete|shostak|3.315|
|diff_re_divbound_TCC1|✅ proved - incomplete|shostak|0.301|
|diff_re_divbound_TCC2|✅ proved - incomplete|shostak|0.084|
|diff_re_divbound|✅ proved - incomplete|shostak|1.197|
|diff_re_val|✅ proved - incomplete|shostak|2.537|
|diff_re_cnst|✅ proved - incomplete|shostak|0.733|
|diff_re_prod|✅ proved - incomplete|shostak|16.017|
|diff_re_pow|✅ proved - incomplete|shostak|0.210|
|diff_re_sum|✅ proved - incomplete|shostak|1.258|
|diff_re_diff|✅ proved - incomplete|shostak|0.107|
|diff_re_inv_aux|✅ proved - incomplete|shostak|2:15.675|
|diff_re_inv|✅ proved - incomplete|shostak|0.185|
|diff_re_div|✅ proved - incomplete|shostak|0.222|

## `continuity_re_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cont_re?_TCC1|✅ proved - complete|shostak|0.040|

## `continuity_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|f_sol_continuous|✅ proved - incomplete|shostak|0.118|
|c_delt_TCC1|✅ proved - incomplete|shostak|0.777|
|min_delt_TCC1|✅ proved - incomplete|shostak|0.086|
|min_delt_TCC2|✅ proved - incomplete|shostak|0.000|
|min_delt_TCC3|✅ proved - incomplete|shostak|0.541|
|min_delt_TCC4|✅ proved - incomplete|shostak|0.080|
|min_delt_TCC5|✅ proved - incomplete|shostak|0.258|
|min_delt_TCC6|✅ proved - incomplete|shostak|0.125|
|min_delt_TCC7|✅ proved - incomplete|shostak|0.080|
|min_delt_TCC8|✅ proved - incomplete|shostak|0.350|
|min_delt_TCC9|✅ proved - incomplete|shostak|0.090|
|min_delt_TCC10|✅ proved - incomplete|shostak|1.247|
|env_at_t_continuous|✅ proved - incomplete|shostak|0.297|
|re_env_continuous|✅ proved - incomplete|shostak|1.150|

## `continuity_re_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cont_re_val|✅ proved - complete|shostak|0.098|
|cont_re_cnst|✅ proved - complete|shostak|0.104|
|cont_re_prod|✅ proved - incomplete|shostak|5.039|
|cont_re_pow|✅ proved - incomplete|shostak|0.393|
|cont_re_sum|✅ proved - complete|shostak|0.404|
|cont_re_diff|✅ proved - incomplete|shostak|0.114|
|cont_re_div_aux|✅ proved - incomplete|shostak|7.170|
|cont_re_div|✅ proved - incomplete|shostak|0.104|

## `fresh_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|fresh_re_cnst|✅ proved - complete|shostak|0.053|
|fresh_re_val|✅ proved - complete|shostak|0.045|
|fresh_re_sum|✅ proved - complete|shostak|0.090|
|fresh_re_minus|✅ proved - complete|shostak|0.070|
|fresh_re_prod|✅ proved - complete|shostak|0.099|
|fresh_re_div_safe|✅ proved - incomplete|shostak|0.053|
|fresh_re_sqrt_safe|✅ proved - incomplete|shostak|0.060|
|fresh_re_pow|✅ proved - incomplete|shostak|0.201|
|fresh_re_exp|✅ proved - incomplete|shostak|0.055|
|fresh_re_expt|✅ proved - incomplete|shostak|0.943|
|fresh_re_ex1|✅ proved - complete|shostak|3.333|
|fresh_re_ex2|✅ proved - incomplete|shostak|4.799|
|not_fresh_re_val|✅ proved - complete|shostak|0.050|
|fresh_be_DLTRUE|✅ proved - complete|shostak|0.052|
|fresh_be_DLFALSE|✅ proved - complete|shostak|0.040|
|fresh_be_eq|✅ proved - complete|shostak|0.094|
|fresh_be_neq|✅ proved - complete|shostak|0.096|
|fresh_be_le|✅ proved - complete|shostak|0.105|
|fresh_be_lt|✅ proved - complete|shostak|0.103|
|fresh_be_ge|✅ proved - complete|shostak|0.100|
|fresh_be_gt|✅ proved - complete|shostak|0.105|
|fresh_be_or|✅ proved - complete|shostak|0.093|
|fresh_be_and|✅ proved - complete|shostak|0.094|
|fresh_be_implies|✅ proved - complete|shostak|0.104|
|fresh_be_not|✅ proved - complete|shostak|0.073|
|fresh_be_IFF|✅ proved - complete|shostak|0.133|
|fresh_fs_sol|✅ proved - incomplete|shostak|0.000|
|fresh_bstar_semantic_rel|✅ proved - incomplete|shostak|0.354|
|fresh_be_semantic_rel|✅ proved - incomplete|shostak|0.954|
|fresh_be_allruns|✅ proved - incomplete|shostak|0.105|
|fresh_be_allruns_e|✅ proved - incomplete|shostak|0.161|
|fresh_be_someruns|✅ proved - incomplete|shostak|0.113|

## `dynamic_logic`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|assign0_prop|✅ proved - incomplete|shostak|0.426|
|assign_assign_sub|✅ proved - incomplete|shostak|0.118|
|assign_sub_assign|✅ proved - incomplete|shostak|0.075|
|turnstile_TCC1|✅ proved - complete|shostak|0.080|
|turnstile_TCC2|✅ proved - complete|shostak|0.060|
|turnstile_TCC3|✅ proved - complete|shostak|0.100|
|turnstile_TCC4|✅ proved - incomplete|shostak|0.160|
|turnstile_TCC5|✅ proved - incomplete|shostak|0.142|
|turnstile_TCC6|✅ proved - incomplete|shostak|0.252|
|dlSequent_equiv|✅ proved - incomplete|shostak|0.185|
|dl_notR|✅ proved - incomplete|shostak|0.266|
|dl_notL|✅ proved - incomplete|shostak|0.277|
|dl_andR|✅ proved - incomplete|shostak|0.228|
|dl_andL|✅ proved - incomplete|shostak|0.250|
|dl_orR|✅ proved - incomplete|shostak|0.286|
|dl_orL|✅ proved - incomplete|shostak|0.308|
|dl_impliesR|✅ proved - incomplete|shostak|0.285|
|dl_impliesL|✅ proved - incomplete|shostak|0.350|
|dl_equivR|✅ proved - incomplete|shostak|0.778|
|dl_equivL|✅ proved - incomplete|shostak|0.443|
|dl_axiom|✅ proved - incomplete|shostak|0.281|
|dl_trueR|✅ proved - incomplete|shostak|0.141|
|dl_trueL|✅ proved - incomplete|shostak|0.185|
|dl_falseR|✅ proved - incomplete|shostak|0.173|
|dl_falseL|✅ proved - incomplete|shostak|0.135|
|dl_cut|✅ proved - incomplete|shostak|0.228|
|dl_weakR|✅ proved - incomplete|shostak|0.260|
|dl_weakL|✅ proved - incomplete|shostak|0.262|
|dl_forallR|✅ proved - incomplete|shostak|0.204|
|dl_forallL|✅ proved - incomplete|shostak|0.123|
|dl_existsR|✅ proved - incomplete|shostak|0.121|
|dl_existsL|✅ proved - incomplete|shostak|0.197|
|dl_existsrR|✅ proved - incomplete|shostak|0.126|
|dl_existsrRf|✅ proved - incomplete|shostak|0.136|
|dl_existsrL|✅ proved - incomplete|shostak|0.195|
|move_to_head_rec_TCC1|✅ proved - complete|shostak|0.073|
|move_to_head_rec_TCC2|✅ proved - complete|shostak|0.070|
|move_to_head_rec_TCC3|✅ proved - complete|shostak|0.123|
|move_to_head_rec_TCC4|✅ proved - complete|shostak|0.040|
|move_to_head_rec_nth_TCC1|✅ proved - complete|shostak|0.050|
|move_to_head_rec_nth_TCC2|✅ proved - complete|shostak|0.209|
|move_to_head_rec_nth_TCC3|✅ proved - complete|shostak|0.253|
|move_to_head_rec_nth_TCC4|✅ proved - complete|shostak|0.195|
|move_to_head_rec_nth_TCC5|✅ proved - complete|shostak|0.264|
|move_to_head_rec_nth_TCC6|✅ proved - complete|shostak|0.204|
|move_to_head_rec_nth_TCC7|✅ proved - complete|shostak|0.255|
|move_to_head_rec_nth_TCC8|✅ proved - complete|shostak|0.248|
|move_to_head_rec_nth_TCC9|✅ proved - incomplete|shostak|0.662|
|move_to_head_rec_nth_TCC10|✅ proved - incomplete|shostak|0.000|
|move_to_head_TCC1|✅ proved - complete|shostak|0.060|
|move_to_head_length|✅ proved - incomplete|shostak|0.269|
|move_to_head_car_TCC1|✅ proved - incomplete|shostak|0.070|
|move_to_head_car_TCC2|✅ proved - complete|shostak|0.044|
|move_to_head_car|✅ proved - incomplete|shostak|0.163|
|move_to_head_first_half_TCC1|✅ proved - incomplete|shostak|0.070|
|move_to_head_first_half_TCC2|✅ proved - complete|shostak|0.090|
|move_to_head_first_half|✅ proved - incomplete|shostak|0.263|
|move_to_head_second_half_TCC1|✅ proved - incomplete|shostak|0.043|
|move_to_head_second_half|✅ proved - incomplete|shostak|0.294|
|dl_moveR|✅ proved - incomplete|shostak|0.229|
|dl_moveL|✅ proved - incomplete|shostak|0.238|
|dl_hideR|✅ proved - incomplete|shostak|0.189|
|dl_hideL|✅ proved - incomplete|shostak|0.179|
|dl_boxd|✅ proved - incomplete|shostak|0.075|
|dl_assignb|✅ proved - incomplete|shostak|0.074|
|dl_assignb_restricted|✅ proved - incomplete|shostak|0.084|
|dl_assignd|✅ proved - incomplete|shostak|0.083|
|dl_testb|✅ proved - incomplete|shostak|0.093|
|dl_testb_true|✅ proved - incomplete|shostak|0.063|
|dl_testd|✅ proved - incomplete|shostak|0.104|
|dl_testd_true|✅ proved - incomplete|shostak|0.193|
|dl_choiceb|✅ proved - incomplete|shostak|0.204|
|dl_choiced|✅ proved - incomplete|shostak|0.165|
|dl_composeb|✅ proved - incomplete|shostak|0.125|
|dl_composed|✅ proved - incomplete|shostak|0.133|
|dl_iterateb|✅ proved - incomplete|shostak|0.145|
|dl_iterated|✅ proved - incomplete|shostak|0.243|
|dl_anyb_TCC1|✅ proved - complete|shostak|0.078|
|dl_anyb|✅ proved - incomplete|shostak|0.384|
|dl_anyd|✅ proved - incomplete|shostak|0.173|
|dl_boxand|✅ proved - incomplete|shostak|0.095|
|dl_diamondOr|✅ proved - incomplete|shostak|0.098|
|dl_iteratearrowb|✅ proved - incomplete|shostak|0.195|
|dl_starstarb|✅ proved - incomplete|shostak|0.669|
|dl_iterateIb|✅ proved - incomplete|shostak|0.839|
|dl_impliesallrunsb|✅ proved - incomplete|shostak|0.200|
|dl_impliesallrunsd|✅ proved - incomplete|shostak|0.218|
|dl_distimpliesb|✅ proved - incomplete|shostak|0.167|
|dl_const|✅ proved - incomplete|shostak|0.402|
|dl_constd|✅ proved - incomplete|shostak|0.372|
|dl_V|✅ proved - incomplete|shostak|1.409|
|dl_Vd|✅ proved - incomplete|shostak|1.595|
|dl_bool_const|✅ proved - incomplete|shostak|0.175|
|dl_subr_TCC1|✅ proved - incomplete|shostak|0.175|
|dl_subr|✅ proved - incomplete|shostak|0.258|
|dl_subl|✅ proved - incomplete|shostak|0.325|
|dl_subf|✅ proved - incomplete|shostak|0.304|
|dl_weak_impliesb|✅ proved - incomplete|shostak|0.143|
|dl_weak_impliesd|✅ proved - incomplete|shostak|0.135|
|dl_weak_impliesbE|✅ proved - incomplete|shostak|0.156|
|dl_weak_impliesdE|✅ proved - incomplete|shostak|0.143|
|dl_differential_auxiliary_TCC1|✅ proved - complete|shostak|0.000|
|dl_differential_auxiliary|✅ proved - incomplete|shostak|16.306|
|dl_bounded_loop|✅ proved - incomplete|shostak|0.648|
|dl_loop|✅ proved - incomplete|shostak|0.378|
|dl_MbL|✅ proved - incomplete|shostak|0.000|
|dl_MbR|✅ proved - incomplete|shostak|1.503|
|dl_MdL|✅ proved - incomplete|shostak|1.467|
|dl_MdR|✅ proved - incomplete|shostak|1.265|
|dl_MEbR|✅ proved - incomplete|shostak|1.291|
|dl_MEbRA|✅ proved - incomplete|shostak|0.609|
|dl_discrete_ghost|✅ proved - incomplete|shostak|0.356|
|dl_andb|✅ proved - incomplete|shostak|0.172|
|dl_andf|✅ proved - incomplete|shostak|0.238|
|dl_orb|✅ proved - incomplete|shostak|0.342|
|dl_hide_restR|✅ proved - incomplete|shostak|0.171|
|dl_hide_restL|✅ proved - incomplete|shostak|0.163|
|dl_hide_restLR|✅ proved - incomplete|shostak|0.428|
|dl_commuteEquivR|✅ proved - incomplete|shostak|0.260|
|dl_commuteEquivL|✅ proved - incomplete|shostak|0.223|
|dl_equivifyR|✅ proved - incomplete|shostak|0.335|
|dl_dW|✅ proved - incomplete|shostak|0.258|
|dl_dinit|✅ proved - incomplete|shostak|0.354|
|dl_dI_eq|✅ proved - incomplete|shostak|0.000|
|dl_dI_neq|✅ proved - incomplete|shostak|3.805|
|dl_dI_le|✅ proved - incomplete|shostak|0.000|
|dl_dI_lt|✅ proved - incomplete|shostak|2.816|
|dl_dI_ge|✅ proved - incomplete|shostak|3.349|
|dl_dI_gt|✅ proved - incomplete|shostak|0.000|
|dl_dI_lite|✅ proved - incomplete|shostak|12.723|
|dl_dI|✅ proved - incomplete|shostak|2.046|
|dl_dI_dlTRUE_TCC1|✅ proved - complete|shostak|0.050|
|dl_dI_dlTRUE|✅ proved - incomplete|shostak|0.087|
|dl_dC|✅ proved - incomplete|shostak|0.440|
|dl_differential_ghost_TCC1|✅ proved - complete|shostak|0.068|
|dl_differential_ghost|✅ proved - incomplete|shostak|7.379|

## `more_derivative_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_derivative_props_TCC1|✅ proved - complete|shostak|0.030|
|IMP_derivative_props_TCC2|✅ proved - complete|shostak|0.024|
|deriv_linear_TCC1|✅ proved - incomplete|shostak|0.050|
|deriv_linear|✅ proved - incomplete|shostak|16.194|

## `dl_solution`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|init_zip_sol_TCC1|✅ proved - complete|shostak|0.156|
|init_zip_sol_TCC2|✅ proved - complete|shostak|0.050|
|init_zip_sol_TCC3|✅ proved - complete|shostak|0.160|
|init_zip_sol_TCC4|✅ proved - complete|shostak|0.166|
|init_zip_sol_TCC5|✅ proved - complete|shostak|0.589|
|init_zip_sol_TCC6|✅ proved - complete|shostak|0.229|
|init_zip_sol_TCC7|✅ proved - complete|shostak|0.000|
|init_zip_sol_TCC8|✅ proved - complete|shostak|0.751|
|zip_sol_test_TCC1|✅ proved - incomplete|shostak|0.170|
|zip_sol_test_TCC2|✅ proved - incomplete|shostak|0.040|
|zip_sol_test_TCC3|✅ proved - complete|shostak|0.044|
|zip_sol_test|✅ proved - incomplete|shostak|0.210|
|zs_TCC1|✅ proved - complete|shostak|0.123|
|map_inj_zs|✅ proved - complete|shostak|0.298|
|solution_domain_ax_ode_TCC1|✅ proved - incomplete|shostak|0.045|
|solution_domain_ax_ode|✅ proved - incomplete|shostak|3.715|
|dl_solution_domain_iff|✅ proved - incomplete|shostak|1.338|
|dl_solution_domain|✅ proved - incomplete|shostak|0.070|
|solution_domain_ax_TCC1|✅ proved - complete|shostak|0.052|
|solution_domain_ax_TCC2|✅ proved - complete|shostak|0.130|
|solution_domain_ax|✅ proved - incomplete|shostak|1.237|
|solution_domain_ax_lin|✅ proved - incomplete|shostak|23.667|
|solution_domain_ax_lin_val|✅ proved - incomplete|shostak|27.025|
|solution_domain_ax_quad_TCC1|✅ proved - complete|shostak|0.050|
|solution_domain_ax_quad_TCC2|✅ proved - complete|shostak|0.130|
|solution_domain_ax_quad|✅ proved - incomplete|shostak|1:22.483|
|in_map_test_TCC1|✅ proved - complete|shostak|0.080|
|in_map_test|✅ proved - complete|shostak|0.138|
|get_index_TCC1|✅ proved - complete|shostak|0.060|
|get_index_TCC2|✅ proved - complete|shostak|0.064|
|get_index_TCC3|✅ proved - complete|shostak|0.194|
|get_index_TCC4|✅ proved - complete|shostak|0.047|
|get_index_TCC5|✅ proved - complete|shostak|0.131|
|get_index_TCC6|✅ proved - complete|shostak|0.406|
|cnst_val_0|✅ proved - complete|shostak|0.080|
|cnst_val_com|✅ proved - complete|shostak|0.065|
|val_inj|✅ proved - complete|shostak|0.063|
|in_map_ex_TCC1|✅ proved - complete|shostak|0.060|
|in_map_ex_TCC2|✅ proved - complete|shostak|0.045|
|in_map_ex_TCC3|✅ proved - complete|shostak|0.150|
|in_map_ex_eq|✅ proved - complete|shostak|0.428|
|env_c_val|✅ proved - complete|shostak|0.040|
|get_val_cnst_id_ex_TCC1|✅ proved - complete|shostak|0.223|
|get_val_cnst_id_ex_TCC2|✅ proved - complete|shostak|0.817|
|is_val_not_in_map?_TCC1|✅ proved - complete|shostak|0.670|
|Y_sol_ex_TCC1|✅ proved - complete|shostak|0.826|
|cnst_lins_def|✅ proved - complete|shostak|0.000|
|y_sol_Ex_TCC1|✅ proved - complete|shostak|0.103|
|y_sol_Ex_TCC2|✅ proved - complete|shostak|0.435|
|y_sol_Ex_TCC3|✅ proved - complete|shostak|0.106|
|y_sol_Ex|✅ proved - incomplete|shostak|33.745|
|cnst_lins_sol_TCC1|✅ proved - incomplete|shostak|0.050|
|cnst_lins_sol|✅ proved - incomplete|shostak|1:11.651|
|cnst_lins_sol_u_TCC1|✅ proved - incomplete|shostak|0.048|
|cnst_lins_sol_u|✅ proved - incomplete|shostak|1:16.722|
|solution_domain_ax_cnst_imp_zip|✅ proved - incomplete|shostak|0.080|
|solution_domain_ax_cnst_imp_zip_no_hyp|✅ proved - incomplete|shostak|0.717|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib/pvsio_utils/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230712-static-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230710-tcc-gen.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230707-defattach.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230706-extrategies.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`|
