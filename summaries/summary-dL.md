# Summary for `dL`
Run started at 14:51:0 11/7/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **1069**   | **1069**    | **1069**    | **0**  | **11:50.374 s**   |
|top|0|0|0|0|0.000|
|hp_def|34|34|34|0|5.605|
|hp_expr|32|32|32|0|3.387|
|bounded_star_semantics|23|23|23|0|4.322|
|bool_expr|36|36|36|0|3.776|
|bound_variables_def|17|17|17|0|3.210|
|hp_props|21|21|21|0|5.871|
|substitution|58|58|58|0|10.168|
|ODEs_equiv|103|103|103|0|37.324|
|differentiation|120|120|120|0|54.792|
|chain_rule_re|134|134|134|0|1:56.881|
|diff_re_props|15|15|15|0|33.266|
|continuity_re_def|1|1|1|0|0.040|
|continuity_props|14|14|14|0|5.426|
|continuity_re_props|8|8|8|0|6.149|
|fresh_props|30|30|30|0|6.305|
|dynamic_logic|138|138|138|0|1:12.904|
|more_derivative_props|4|4|4|0|4.771|
|dl_solution|51|51|51|0|1:12.373|
|top_dtl|0|0|0|0|0.000|
|even_more_list_props|7|7|7|0|2.407|
|ltl_expr|37|37|37|0|30.366|
|trace_semantics|39|39|39|0|14.464|
|solution_odes_props|58|58|58|0|48.207|
|temporal_logic|61|61|61|0|2:2.341|
|trace_bounded_star_semantics|28|28|28|0|46.019|
## Detailed Summary 
## `top`
No formula declaration found.
## `hp_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|dlvar_inj|✅ proved - complete|shostak|0.161|
|dlvar_eq|✅ proved - complete|shostak|0.030|
|mapexpr_inj_TCC1|✅ proved - complete|shostak|0.100|
|mapexpr_inj_TCC2|✅ proved - complete|shostak|0.090|
|mapexpr_inj_cons|✅ proved - complete|shostak|0.240|
|mapexpr_inj_eq|✅ proved - complete|shostak|0.140|
|mapexpr_inj_eq_index|✅ proved - complete|shostak|0.070|
|null_MapExprInj|✅ proved - complete|shostak|0.110|
|cdr_is_MapExprInj|✅ proved - complete|shostak|0.202|
|sub_mapexpr_inj_is_mapexpr_inj|✅ proved - incomplete|shostak|0.150|
|in_map_cons|✅ proved - complete|shostak|0.191|
|in_map_null_false|✅ proved - complete|shostak|0.070|
|not_in_map_null|✅ proved - complete|shostak|0.060|
|index_of_j|✅ proved - complete|shostak|0.095|
|expr_car_TCC1|✅ proved - complete|shostak|0.070|
|expr_car|✅ proved - complete|shostak|0.150|
|expr_not_car_TCC1|✅ proved - complete|shostak|0.118|
|expr_not_car|✅ proved - complete|shostak|0.280|
|same_var_eq|✅ proved - complete|shostak|0.050|
|distinct_var?_TCC1|✅ proved - complete|shostak|0.040|
|distinct_var?_TCC2|✅ proved - complete|shostak|0.050|
|distinct_var?_TCC3|✅ proved - complete|shostak|0.235|
|pairwise_distinct_vars?_TCC1|✅ proved - complete|shostak|0.040|
|pairwise_distinct_vars?_TCC2|✅ proved - complete|shostak|0.465|
|fresh_var|✅ proved - complete|shostak|0.252|
|mapexpr_inj_distinct_vars|✅ proved - complete|shostak|0.170|
|max_var_rec_TCC1|✅ proved - complete|shostak|0.050|
|max_var_rec_TCC2|✅ proved - complete|shostak|0.060|
|max_var_rec_pull|✅ proved - complete|shostak|0.585|
|max_var_max|✅ proved - complete|shostak|0.300|
|max_var_exist|✅ proved - complete|shostak|0.396|
|pigeon_map|✅ proved - complete|shostak|0.353|
|max_var_length|✅ proved - complete|shostak|0.162|
|nip_max_var|✅ proved - complete|shostak|0.070|

## `hp_expr`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_table_of_integrals_TCC1|✅ proved - complete|shostak|0.040|
|IMP_table_of_integrals_TCC2|✅ proved - incomplete|shostak|0.030|
|size_TCC1|✅ proved - incomplete|shostak|0.080|
|size_TCC2|✅ proved - incomplete|shostak|0.060|
|size_TCC3|✅ proved - incomplete|shostak|0.064|
|size_TCC4|✅ proved - incomplete|shostak|0.060|
|size_TCC5|✅ proved - incomplete|shostak|0.050|
|dd?_TCC1|✅ proved - incomplete|shostak|0.030|
|dd_deriv_domain|✅ proved - incomplete|shostak|0.170|
|dd_noe|✅ proved - incomplete|shostak|0.072|
|dd_con|✅ proved - incomplete|shostak|0.080|
|dd_ne|✅ proved - incomplete|shostak|0.060|
|dd_ci_TCC1|✅ proved - incomplete|shostak|0.050|
|dd_ci|✅ proved - incomplete|shostak|0.047|
|derivable_odes?_TCC1|✅ proved - incomplete|shostak|0.050|
|derivable_odes?_TCC2|✅ proved - incomplete|shostak|0.070|
|env_at_t_TCC1|✅ proved - incomplete|shostak|0.060|
|env_at_t_TCC2|✅ proved - incomplete|shostak|0.424|
|sol_at_t?_TCC1|✅ proved - incomplete|shostak|0.521|
|semantic_rel_TCC1|✅ proved - incomplete|shostak|0.060|
|semantic_rel_TCC2|✅ proved - incomplete|shostak|0.110|
|semantic_rel_TCC3|✅ proved - incomplete|shostak|0.120|
|semantic_rel_TCC4|✅ proved - incomplete|shostak|0.122|
|fresh_li?_TCC1|✅ proved - incomplete|shostak|0.050|
|fresh_li?_TCC2|✅ proved - incomplete|shostak|0.040|
|fresh_assign_nth|✅ proved - incomplete|shostak|0.252|
|fresh_mapexpr_inj|✅ proved - incomplete|shostak|0.211|
|fresh_mapexp_nth_2|✅ proved - incomplete|shostak|0.180|
|fresh_hp?_TCC1|✅ proved - incomplete|shostak|0.050|
|fresh_hp?_TCC2|✅ proved - incomplete|shostak|0.060|
|fresh_hp?_TCC3|✅ proved - incomplete|shostak|0.054|
|fresh_hp?_TCC4|✅ proved - incomplete|shostak|0.060|

## `bounded_star_semantics`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|semantic_rel_bounded_star_TCC1|✅ proved - complete|shostak|0.030|
|semantic_rel_bounded_star_TCC2|✅ proved - incomplete|shostak|0.070|
|semantic_rel_bounded_star_TCC3|✅ proved - complete|shostak|0.070|
|semantic_rel_bounded_star_TCC4|✅ proved - complete|shostak|0.070|
|semantic_rel_bounded_star_TCC5|✅ proved - complete|shostak|0.060|
|semantic_rel_bounded_star_TCC6|✅ proved - complete|shostak|0.071|
|semantic_rel_bounded_star_TCC7|✅ proved - incomplete|shostak|0.110|
|semantic_rel_bounded_star_TCC8|✅ proved - incomplete|shostak|0.090|
|semantic_rel_bounded_star_inc|✅ proved - incomplete|shostak|0.675|
|semantic_rel_implies_bounded|✅ proved - incomplete|shostak|0.459|
|bounded_implies_semantic_rel|✅ proved - incomplete|shostak|0.575|
|BSTAR_TCC1|✅ proved - complete|shostak|0.050|
|BSTAR_TCC2|✅ proved - complete|shostak|0.040|
|semantic_rel_bstar_reflexive|✅ proved - incomplete|shostak|0.090|
|semantic_rel_bounded_bstar_semantic_rel_bstar|✅ proved - incomplete|shostak|0.174|
|semantic_rel_star_bounded_star|✅ proved - incomplete|shostak|0.060|
|semantic_rel_star_bounded_star_con|✅ proved - incomplete|shostak|0.175|
|semantic_rel_bounded_star_seq_switch|✅ proved - incomplete|shostak|0.767|
|semantic_rel_star_seq_switch|✅ proved - incomplete|shostak|0.263|
|semantic_rel_bounded_star_iter|✅ proved - incomplete|shostak|0.103|
|semantic_rel_bounded_star_iter_con_TCC1|✅ proved - incomplete|shostak|0.080|
|semantic_rel_bounded_star_iter_con|✅ proved - incomplete|shostak|0.110|
|semantic_rel_star_iter|✅ proved - incomplete|shostak|0.130|

## `bool_expr`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|fresh?_TCC1|✅ proved - complete|shostak|0.040|
|fresh?_TCC2|✅ proved - complete|shostak|0.064|
|fresh_formula_nth|✅ proved - complete|shostak|0.140|
|fresh_be_invar|✅ proved - complete|shostak|0.204|
|dl_not_not|✅ proved - complete|shostak|0.050|
|dl_not_true|✅ proved - complete|shostak|0.050|
|dl_not_false|✅ proved - complete|shostak|0.040|
|dl_true_and|✅ proved - complete|shostak|0.050|
|dl_and_true|✅ proved - complete|shostak|0.045|
|dl_false_and|✅ proved - complete|shostak|0.050|
|dl_and_false|✅ proved - complete|shostak|0.050|
|dl_true_or|✅ proved - complete|shostak|0.050|
|dl_or_true|✅ proved - complete|shostak|0.050|
|dl_false_or|✅ proved - complete|shostak|0.040|
|dl_or_false|✅ proved - complete|shostak|0.050|
|dl_true_implies|✅ proved - complete|shostak|0.050|
|dl_implies_true|✅ proved - complete|shostak|0.044|
|dl_false_implies|✅ proved - complete|shostak|0.050|
|dl_implies_false|✅ proved - complete|shostak|0.050|
|dl_forall_bool|✅ proved - complete|shostak|0.050|
|dl_exists_bool|✅ proved - complete|shostak|0.040|
|nqb_to_be_TCC1|✅ proved - complete|shostak|0.060|
|nqb_to_be_TCC2|✅ proved - complete|shostak|0.050|
|nqb_to_be_TCC3|✅ proved - complete|shostak|0.044|
|nqb_to_be_TCC4|✅ proved - complete|shostak|0.040|
|nqb_to_be_TCC5|✅ proved - complete|shostak|0.040|
|nqb_normal?_TCC1|✅ proved - complete|shostak|0.040|
|nqb_normal?_TCC2|✅ proved - complete|shostak|0.050|
|normalize_rec_TCC1|✅ proved - complete|shostak|0.060|
|normalize_rec_TCC2|✅ proved - complete|shostak|0.217|
|normalize_rec_TCC3|✅ proved - complete|shostak|0.913|
|normalize_rec_TCC4|✅ proved - complete|shostak|0.201|
|normalize_rec_TCC5|✅ proved - complete|shostak|0.448|
|normalize_rec_TCC6|✅ proved - complete|shostak|0.206|
|normalize_rec_TCC7|✅ proved - complete|shostak|0.100|
|normalize_TCC1|✅ proved - complete|shostak|0.050|

## `bound_variables_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|bv_me_TCC1|✅ proved - complete|shostak|0.040|
|bv_me_TCC2|✅ proved - complete|shostak|0.060|
|bv_me_TCC3|✅ proved - complete|shostak|0.040|
|bv_me_TCC4|✅ proved - complete|shostak|0.100|
|bv_me_TCC5|✅ proved - incomplete|shostak|0.060|
|BV_TCC1|✅ proved - complete|shostak|0.044|
|BV_TCC2|✅ proved - complete|shostak|0.130|
|BV_TCC3|✅ proved - complete|shostak|0.140|
|BV_TCC4|✅ proved - complete|shostak|0.100|
|BV_TCC5|✅ proved - incomplete|shostak|0.060|
|bv_me_nth_TCC1|✅ proved - incomplete|shostak|0.200|
|bv_me_nth|✅ proved - incomplete|shostak|0.332|
|BV_implies_not_fresh|✅ proved - incomplete|shostak|0.956|
|BV_invar|✅ proved - incomplete|shostak|0.718|
|bvs?_TCC1|✅ proved - complete|shostak|0.050|
|bvs?_TCC2|✅ proved - incomplete|shostak|0.050|
|bvs?_TCC3|✅ proved - incomplete|shostak|0.130|

## `hp_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|assign1_prop_TCC1|✅ proved - complete|shostak|0.070|
|assign1_prop|✅ proved - incomplete|shostak|0.294|
|assign_prop_TCC1|✅ proved - complete|shostak|0.060|
|assign_prop|✅ proved - incomplete|shostak|0.448|
|assign_comm_TCC1|✅ proved - complete|shostak|0.100|
|assign_comm|✅ proved - incomplete|shostak|0.284|
|union_prop_TCC1|✅ proved - incomplete|shostak|0.147|
|union_prop|✅ proved - incomplete|shostak|0.233|
|union_prop_xx|✅ proved - incomplete|shostak|0.060|
|union_id|✅ proved - incomplete|shostak|0.060|
|union_comm|✅ proved - incomplete|shostak|0.196|
|seq_prop|✅ proved - incomplete|shostak|0.660|
|test_prop|✅ proved - incomplete|shostak|0.070|
|test_prop_ensures|✅ proved - incomplete|shostak|0.060|
|test_prop_vacuity|✅ proved - incomplete|shostak|0.100|
|diff_prop_TCC1|✅ proved - incomplete|shostak|0.136|
|diff_prop|✅ proved - incomplete|shostak|0.000|
|star_prop_TCC1|✅ proved - incomplete|shostak|0.150|
|star_prop|✅ proved - incomplete|shostak|0.833|
|while_prop|✅ proved - incomplete|shostak|1.740|
|any_prop|✅ proved - incomplete|shostak|0.170|

## `substitution`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|assign_env_TCC1|✅ proved - complete|shostak|0.060|
|assign_env_TCC2|✅ proved - complete|shostak|0.050|
|assign_env_TCC3|✅ proved - complete|shostak|0.120|
|assign_env_TCC4|✅ proved - complete|shostak|0.060|
|SUB_MapExpr_TCC1|✅ proved - complete|shostak|0.050|
|SUB_MapExpr_TCC2|✅ proved - complete|shostak|0.070|
|SUB_MapExpr_TCC3|✅ proved - complete|shostak|0.060|
|SUB_MapExpr_TCC4|✅ proved - complete|shostak|0.149|
|SUB_MapExpr_TCC5|✅ proved - complete|shostak|1.027|
|assign_env__TCC1|✅ proved - incomplete|shostak|0.090|
|assign_env__TCC2|✅ proved - incomplete|shostak|0.070|
|assign_env__alt_j_TCC1|✅ proved - complete|shostak|0.040|
|assign_env__alt_j_TCC2|✅ proved - complete|shostak|0.040|
|assign_env__alt_j_TCC3|✅ proved - incomplete|shostak|0.110|
|assign_env__alt_j_TCC4|✅ proved - incomplete|shostak|0.635|
|assign_env__alt_j_TCC5|✅ proved - incomplete|shostak|0.735|
|assign_env_phantom_eq_TCC1|✅ proved - complete|shostak|0.040|
|assign_env_phantom_eq|✅ proved - incomplete|shostak|0.611|
|assign_env_alt|✅ proved - incomplete|shostak|0.152|
|assign_env_ext|✅ proved - complete|shostak|0.341|
|assign_sub_ext|✅ proved - complete|shostak|0.040|
|SUB_MapVar_TCC1|✅ proved - complete|shostak|0.060|
|SUB_MapVar_TCC2|✅ proved - complete|shostak|0.164|
|SUB_MapVar_TCC3|✅ proved - complete|shostak|0.050|
|SUB_MapVar_TCC4|✅ proved - complete|shostak|0.110|
|SUB_MapVar_TCC5|✅ proved - complete|shostak|0.122|
|dl_subre_val|✅ proved - complete|shostak|0.060|
|dl_subre_const|✅ proved - complete|shostak|0.060|
|dl_subre_plus|✅ proved - complete|shostak|0.100|
|dl_subre_minus|✅ proved - complete|shostak|0.080|
|dl_subre_neg|✅ proved - complete|shostak|0.075|
|dl_subre_prod|✅ proved - complete|shostak|0.100|
|dl_subre_prod_scal1|✅ proved - complete|shostak|0.100|
|dl_subre_prod_scal2|✅ proved - complete|shostak|0.090|
|dl_subre_exp|✅ proved - incomplete|shostak|0.142|
|dl_sub_bool|✅ proved - complete|shostak|0.070|
|dl_sub_bool_restricted|✅ proved - complete|shostak|0.070|
|dl_sub_and|✅ proved - complete|shostak|0.070|
|dl_sub_or|✅ proved - complete|shostak|0.080|
|dl_sub_not|✅ proved - complete|shostak|0.061|
|dl_sub_implies|✅ proved - complete|shostak|0.070|
|dl_sub_ge|✅ proved - complete|shostak|0.070|
|dl_sub_gt|✅ proved - complete|shostak|0.080|
|dl_sub_le|✅ proved - complete|shostak|0.070|
|dl_sub_lt|✅ proved - complete|shostak|0.077|
|dl_sub_eq|✅ proved - complete|shostak|0.070|
|dl_sub_neq|✅ proved - complete|shostak|0.080|
|dl_sub_iff|✅ proved - complete|shostak|0.080|
|dl_sub_allruns0_x_neq_y_TCC1|✅ proved - incomplete|shostak|0.130|
|dl_sub_allruns0_x_neq_y_TCC2|✅ proved - incomplete|shostak|0.000|
|dl_sub_allruns0_x_neq_y_TCC3|✅ proved - complete|shostak|0.150|
|dl_sub_allruns0_x_neq_y_TCC4|✅ proved - incomplete|shostak|0.160|
|dl_sub_allruns0_x_neq_y|✅ proved - incomplete|shostak|2.080|
|dl_sub_allruns_assign0_x_eq_y_TCC1|✅ proved - incomplete|shostak|0.150|
|dl_sub_allruns_assign0_x_eq_y_TCC2|✅ proved - incomplete|shostak|0.149|
|dl_sub_allruns_assign0_x_eq_y|✅ proved - incomplete|shostak|0.398|
|dl_sub_forall|✅ proved - complete|shostak|0.070|
|dl_sub_exists|✅ proved - complete|shostak|0.070|

## `ODEs_equiv`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Re_TCC1|✅ proved - incomplete|shostak|0.090|
|Re_TCC2|✅ proved - complete|shostak|0.060|
|Re_TCC3|✅ proved - complete|shostak|0.050|
|Re_TCC4|✅ proved - complete|shostak|0.086|
|Re_TCC5|✅ proved - incomplete|shostak|0.200|
|Re_TCC6|✅ proved - complete|shostak|0.060|
|Re_nth_TCC1|✅ proved - incomplete|shostak|0.070|
|Re_nth|✅ proved - incomplete|shostak|0.279|
|env_vec_TCC1|✅ proved - complete|shostak|0.050|
|env_vec_TCC2|✅ proved - complete|shostak|0.130|
|env_vec_TCC3|✅ proved - incomplete|shostak|0.180|
|env_vec_nth_TCC1|✅ proved - incomplete|shostak|0.070|
|env_vec_nth|✅ proved - incomplete|shostak|0.331|
|r2v_2_fs_TCC1|✅ proved - complete|shostak|0.070|
|r2v_2_fs_TCC2|✅ proved - incomplete|shostak|0.050|
|r2v_2_fs_TCC3|✅ proved - incomplete|shostak|0.040|
|r2v_2_fs_TCC4|✅ proved - incomplete|shostak|0.454|
|r2v_2_fs_TCC5|✅ proved - incomplete|shostak|0.090|
|fs_2_r2v_TCC1|✅ proved - incomplete|shostak|0.050|
|fs_2_r2v_TCC2|✅ proved - incomplete|shostak|0.060|
|fs_2_r2v_TCC3|✅ proved - incomplete|shostak|0.055|
|fs_2_r2v_TCC4|✅ proved - incomplete|shostak|0.040|
|fs_2_r2v_TCC5|✅ proved - incomplete|shostak|0.070|
|fs_2_r2v_TCC6|✅ proved - incomplete|shostak|0.050|
|fs_2_r2v_TCC7|✅ proved - incomplete|shostak|0.050|
|fs_2_r2v_TCC8|✅ proved - incomplete|shostak|0.090|
|fs_2_r2v_TCC9|✅ proved - incomplete|shostak|0.403|
|fs_2_f2v_nth_TCC1|✅ proved - incomplete|shostak|0.080|
|fs_2_f2v_nth|✅ proved - incomplete|shostak|0.480|
|fs_2_f2v_eq_TCC1|✅ proved - incomplete|shostak|0.040|
|fs_2_f2v_eq_TCC2|✅ proved - incomplete|shostak|0.080|
|fs_2_f2v_eq_TCC3|✅ proved - incomplete|shostak|0.090|
|fs_2_f2v_eq_TCC4|✅ proved - incomplete|shostak|0.065|
|fs_2_f2v_eq_TCC5|✅ proved - incomplete|shostak|0.060|
|fs_2_f2v_eq_TCC6|✅ proved - incomplete|shostak|0.270|
|fs_2_f2v_eq|✅ proved - incomplete|shostak|2.290|
|Odes_f_TCC1|✅ proved - incomplete|shostak|0.050|
|cont_f?_TCC1|✅ proved - incomplete|shostak|0.066|
|cont_f?_TCC2|✅ proved - incomplete|shostak|0.060|
|cont_f?_TCC3|✅ proved - incomplete|shostak|0.070|
|cont_f?_TCC4|✅ proved - incomplete|shostak|0.180|
|cont_f?_TCC5|✅ proved - incomplete|shostak|0.122|
|cont_f?_TCC6|✅ proved - incomplete|shostak|0.070|
|max_diff_TCC1|✅ proved - incomplete|shostak|0.050|
|max_diff_TCC2|✅ proved - incomplete|shostak|0.140|
|max_diff_TCC3|✅ proved - incomplete|shostak|0.050|
|max_diff_TCC4|✅ proved - incomplete|shostak|0.050|
|max_diff_TCC5|✅ proved - incomplete|shostak|0.162|
|max_diff_TCC6|✅ proved - incomplete|shostak|0.200|
|max_diff_TCC7|✅ proved - incomplete|shostak|0.080|
|max_diff_TCC8|✅ proved - incomplete|shostak|0.040|
|max_diff_TCC9|✅ proved - incomplete|shostak|1.116|
|max_diff_norm_inf_TCC1|✅ proved - incomplete|shostak|0.050|
|max_diff_norm_inf_TCC2|✅ proved - incomplete|shostak|0.080|
|max_diff_norm_inf_TCC3|✅ proved - incomplete|shostak|0.050|
|max_diff_norm_inf_TCC4|✅ proved - incomplete|shostak|0.080|
|max_diff_norm_inf_TCC5|✅ proved - incomplete|shostak|0.126|
|max_diff_norm_inf|✅ proved - incomplete|shostak|3.496|
|cdr_TCC1|✅ proved - incomplete|shostak|0.040|
|cdr_TCC2|✅ proved - incomplete|shostak|0.040|
|cdr_const_TCC1|✅ proved - incomplete|shostak|0.050|
|cdr_const|✅ proved - incomplete|shostak|0.180|
|Lip_ODEs?_TCC1|✅ proved - incomplete|shostak|0.060|
|Lip_ODEs?_TCC2|✅ proved - incomplete|shostak|0.107|
|Lip_ODEs?_TCC3|✅ proved - incomplete|shostak|0.150|
|Lip_ODEs?_TCC4|✅ proved - incomplete|shostak|0.100|
|Lip_DDL_ODEs|✅ proved - incomplete|shostak|2.989|
|cont_DDL_ODEs|✅ proved - incomplete|shostak|0.000|
|diff_sol_Lip_TCC1|✅ proved - incomplete|shostak|0.550|
|diff_sol_Lip_TCC2|✅ proved - incomplete|shostak|0.055|
|diff_sol_Lip|✅ proved - incomplete|shostak|7.915|
|diff_sol_eq_TCC1|✅ proved - incomplete|shostak|0.140|
|diff_sol_eq_TCC2|✅ proved - incomplete|shostak|0.060|
|diff_sol_eq|✅ proved - incomplete|shostak|0.060|
|fs_sol_TCC1|✅ proved - incomplete|shostak|0.102|
|ODEs_s_sub_TCC1|✅ proved - incomplete|shostak|0.640|
|ODEs_s_sub_TCC2|✅ proved - incomplete|shostak|0.089|
|ODEs_s_sub|✅ proved - incomplete|shostak|0.737|
|fs_sol_sub_TCC1|✅ proved - incomplete|shostak|0.059|
|fs_sol_sub_TCC2|✅ proved - incomplete|shostak|0.080|
|fs_sol_sub_TCC3|✅ proved - incomplete|shostak|0.060|
|fs_sol_sub|✅ proved - incomplete|shostak|0.192|
|env_sol_sub_TCC1|✅ proved - incomplete|shostak|0.643|
|env_sol_sub_TCC2|✅ proved - incomplete|shostak|0.847|
|env_sol_sub_TCC3|✅ proved - incomplete|shostak|0.080|
|env_sol_sub_TCC4|✅ proved - incomplete|shostak|0.065|
|env_sol_sub|✅ proved - incomplete|shostak|0.310|
|solution_odes_sub|✅ proved - incomplete|shostak|0.304|
|solution_odes_subset|✅ proved - incomplete|shostak|0.104|
|odes_hp_s_TCC1|✅ proved - incomplete|shostak|0.050|
|odes_hp_s_TCC2|✅ proved - incomplete|shostak|0.060|
|odes_hp_s_TCC3|✅ proved - incomplete|shostak|0.320|
|odes_hp_s|✅ proved - incomplete|shostak|0.355|
|fs_sol_hp_TCC1|✅ proved - incomplete|shostak|0.313|
|fs_sol_hp_TCC2|✅ proved - incomplete|shostak|0.000|
|fs_sol_hp_TCC3|✅ proved - incomplete|shostak|0.220|
|fs_sol_hp_TCC4|✅ proved - incomplete|shostak|0.380|
|fs_sol_hp_TCC5|✅ proved - incomplete|shostak|0.473|
|fs_sol_hp_fs_TCC1|✅ proved - incomplete|shostak|0.060|
|fs_sol_hp_fs|✅ proved - incomplete|shostak|0.394|
|fs_sol_hp_sol|✅ proved - incomplete|shostak|2.485|
|fs_sol_hp_sol_u|✅ proved - incomplete|shostak|1.029|
|diff_sol_eq_dd|✅ proved - incomplete|shostak|1.306|

## `differentiation`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_derivatives_TCC1|✅ proved - incomplete|shostak|0.040|
|IMP_derivatives_TCC2|✅ proved - incomplete|shostak|0.050|
|right_dd_i|✅ proved - incomplete|shostak|0.220|
|right_dd|✅ proved - incomplete|shostak|0.055|
|connection_proj|✅ proved - incomplete|shostak|0.110|
|right_ne_i|✅ proved - incomplete|shostak|0.200|
|right_ne|✅ proved - incomplete|shostak|0.050|
|ddl_dom_upto|✅ proved - incomplete|shostak|0.060|
|ddl_dom_weak|✅ proved - incomplete|shostak|0.060|
|ddl_dom_dd|✅ proved - incomplete|shostak|0.673|
|ddl_dom__upto_dd|✅ proved - incomplete|shostak|0.050|
|ddl_dom_noe|✅ proved - incomplete|shostak|0.050|
|dl_true_DDL|✅ proved - incomplete|shostak|0.161|
|dl_true_up_DDL|✅ proved - incomplete|shostak|0.140|
|derivable?_TCC1|✅ proved - incomplete|shostak|0.120|
|derivable?_TCC2|✅ proved - incomplete|shostak|0.044|
|derivable?_TCC3|✅ proved - incomplete|shostak|0.050|
|derivable_up?_TCC1|✅ proved - incomplete|shostak|0.050|
|derivable?_TCC4|✅ proved - incomplete|shostak|0.080|
|hathat_diff_real_TCC1|✅ proved - incomplete|shostak|0.040|
|hathat_diff_real_TCC2|✅ proved - incomplete|shostak|1.322|
|hathat_diff_real_TCC3|✅ proved - incomplete|shostak|0.148|
|hathat_diff_real|✅ proved - incomplete|shostak|0.190|
|expt_TCC1|✅ proved - incomplete|shostak|0.060|
|expt_TCC2|✅ proved - incomplete|shostak|0.050|
|sqrt_hathat_TCC1|✅ proved - incomplete|shostak|0.040|
|sqrt_hathat|✅ proved - incomplete|shostak|0.599|
|sqrt_hathat_neg_TCC1|✅ proved - incomplete|shostak|0.070|
|sqrt_hathat_neg|✅ proved - incomplete|shostak|0.232|
|expt_exp_equiv|✅ proved - incomplete|shostak|0.060|
|partial_diff_TCC1|✅ proved - incomplete|shostak|0.060|
|dl_derivable_const|✅ proved - incomplete|shostak|0.070|
|dl_partial_const_TCC1|✅ proved - incomplete|shostak|0.050|
|dl_partial_const|✅ proved - incomplete|shostak|0.194|
|dl_derivable_up_cnst|✅ proved - incomplete|shostak|0.060|
|dl_derivable_val|✅ proved - incomplete|shostak|0.103|
|dl_derivable_up_val|✅ proved - incomplete|shostak|0.070|
|dl_partial_val_TCC1|✅ proved - incomplete|shostak|0.050|
|dl_partial_val|✅ proved - incomplete|shostak|0.258|
|dl_derivable_plus|✅ proved - incomplete|shostak|0.152|
|dl_partial_plus_TCC1|✅ proved - incomplete|shostak|0.060|
|dl_partial_plus|✅ proved - incomplete|shostak|0.322|
|dl_derivable_up_sum|✅ proved - incomplete|shostak|0.071|
|dl_derivable_mult|✅ proved - incomplete|shostak|0.080|
|dl_partial_mult_TCC1|✅ proved - incomplete|shostak|0.040|
|dl_partial_mult|✅ proved - incomplete|shostak|0.443|
|dl_derivable_up_prod|✅ proved - incomplete|shostak|0.081|
|dl_derivable_minus|✅ proved - incomplete|shostak|0.080|
|dl_partial_minus_TCC1|✅ proved - incomplete|shostak|0.050|
|dl_partial_minus|✅ proved - incomplete|shostak|0.251|
|dl_derivable_up_minus|✅ proved - incomplete|shostak|0.134|
|dl_derivable_negative|✅ proved - incomplete|shostak|0.150|
|dl_partial_negative_TCC1|✅ proved - incomplete|shostak|0.040|
|dl_partial_negative|✅ proved - incomplete|shostak|0.271|
|dl_derivable_pow|✅ proved - incomplete|shostak|0.654|
|dl_derivable_up_pow|✅ proved - incomplete|shostak|0.231|
|dl_derivable_div|✅ proved - incomplete|shostak|0.381|
|dl_partial_div_TCC1|✅ proved - incomplete|shostak|0.040|
|dl_partial_div|✅ proved - incomplete|shostak|1.063|
|dl_derivable_up_div|✅ proved - incomplete|shostak|0.090|
|dl_derivable_comp_point_TCC1|✅ proved - incomplete|shostak|1.978|
|dl_derivable_comp_point_TCC2|✅ proved - incomplete|shostak|0.050|
|dl_derivable_comp_point_TCC3|✅ proved - incomplete|shostak|0.170|
|dl_derivable_comp_point|✅ proved - incomplete|shostak|0.278|
|dl_derivable_comp_TCC1|✅ proved - incomplete|shostak|0.056|
|dl_derivable_comp_TCC2|✅ proved - incomplete|shostak|0.060|
|dl_derivable_comp_TCC3|✅ proved - incomplete|shostak|0.170|
|dl_derivable_comp|✅ proved - incomplete|shostak|0.078|
|dl_partial_chain_TCC1|✅ proved - incomplete|shostak|0.040|
|dl_partial_chain_TCC2|✅ proved - incomplete|shostak|0.060|
|dl_partial_chain_TCC3|✅ proved - incomplete|shostak|0.060|
|dl_partial_chain_TCC4|✅ proved - incomplete|shostak|0.000|
|dl_partial_chain|✅ proved - incomplete|shostak|0.599|
|dl_derivable_exp|✅ proved - incomplete|shostak|2.112|
|dl_partial_exp_TCC1|✅ proved - incomplete|shostak|0.050|
|dl_partial_exp|✅ proved - incomplete|shostak|6.018|
|dl_derivable_sqrt|✅ proved - incomplete|shostak|0.525|
|dl_partial_sqrt_TCC1|✅ proved - incomplete|shostak|0.050|
|dl_partial_sqrt|✅ proved - incomplete|shostak|1.098|
|DIFT_last_TCC1|✅ proved - incomplete|shostak|0.050|
|DIFT_last_TCC2|✅ proved - incomplete|shostak|0.080|
|DIFT_last|✅ proved - incomplete|shostak|0.556|
|dl_dift_val_zero|✅ proved - incomplete|shostak|0.557|
|dl_dift_val_P|✅ proved - incomplete|shostak|1.173|
|dl_dift_val_TCC1|✅ proved - incomplete|shostak|0.050|
|dl_dift_val|✅ proved - incomplete|shostak|0.088|
|dl_dift_const|✅ proved - incomplete|shostak|0.905|
|dl_dift_plus_TCC1|✅ proved - incomplete|shostak|0.050|
|dl_dift_plus|✅ proved - incomplete|shostak|2.536|
|dl_dift_minus|✅ proved - incomplete|shostak|1.140|
|dl_dift_negative|✅ proved - incomplete|shostak|2.006|
|dl_dift_mult|✅ proved - incomplete|shostak|0.000|
|dl_dift_divsafe|✅ proved - incomplete|shostak|4.635|
|dl_dift_exp|✅ proved - incomplete|shostak|1.029|
|dl_dift_pow|✅ proved - incomplete|shostak|1.624|
|dl_dift_sqrt|✅ proved - incomplete|shostak|1.325|
|ddt_TCC1|✅ proved - incomplete|shostak|0.060|
|ddt_TCC2|✅ proved - incomplete|shostak|0.060|
|ddt_TCC3|✅ proved - incomplete|shostak|0.168|
|ddt_not_in_map|✅ proved - incomplete|shostak|0.290|
|ddt_in_map_TCC1|✅ proved - incomplete|shostak|0.213|
|ddt_in_map|✅ proved - incomplete|shostak|1.503|
|re_plus_cnst0|✅ proved - incomplete|shostak|0.060|
|cnst0_plus_re|✅ proved - incomplete|shostak|0.052|
|re_minus_cnst0|✅ proved - incomplete|shostak|0.050|
|cnst0_minus_re|✅ proved - incomplete|shostak|0.110|
|re_prod_cnst0|✅ proved - incomplete|shostak|0.060|
|cnst0_prod_re|✅ proved - incomplete|shostak|0.110|
|sqrt_safe_sq|✅ proved - incomplete|shostak|0.112|
|ODEs_P?_TCC1|✅ proved - incomplete|shostak|8.156|
|DIFT_TCC1|✅ proved - incomplete|shostak|0.071|
|DIFT_TCC2|✅ proved - incomplete|shostak|0.140|
|DIFT_TCC3|✅ proved - incomplete|shostak|0.090|
|DIFT_TCC4|✅ proved - incomplete|shostak|0.592|
|DIFT_TCC5|✅ proved - incomplete|shostak|0.090|
|DIFT_TCC6|✅ proved - incomplete|shostak|0.483|
|DIFT_TCC7|✅ proved - incomplete|shostak|0.090|
|DIFT_TCC8|✅ proved - incomplete|shostak|0.153|
|DIFT_TCC9|✅ proved - incomplete|shostak|0.090|
|DIFT_TCC10|✅ proved - incomplete|shostak|0.060|

## `chain_rule_re`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|env_2_vec_TCC1|✅ proved - incomplete|shostak|0.060|
|env_2_vec_TCC2|✅ proved - complete|shostak|0.060|
|env_2_vec_TCC3|✅ proved - complete|shostak|0.050|
|env_2_vec_TCC4|✅ proved - incomplete|shostak|0.081|
|env_2_vec_nth_TCC1|✅ proved - incomplete|shostak|0.150|
|env_2_vec_nth|✅ proved - incomplete|shostak|0.259|
|projv_dd|✅ proved - incomplete|shostak|4.094|
|proj_projv_TCC1|✅ proved - incomplete|shostak|0.070|
|proj_projv_TCC2|✅ proved - incomplete|shostak|0.233|
|proj_projv|✅ proved - incomplete|shostak|1.065|
|projv_proj_TCC1|✅ proved - complete|shostak|0.050|
|projv_proj_TCC2|✅ proved - incomplete|shostak|0.229|
|projv_proj|✅ proved - incomplete|shostak|0.550|
|ddl_dom_dom_dir|✅ proved - incomplete|shostak|1.429|
|dd_e_partial|✅ proved - incomplete|shostak|1.267|
|vec_2_env_TCC1|✅ proved - incomplete|shostak|0.140|
|vec_2_env_id|✅ proved - incomplete|shostak|0.260|
|env_2_vec_id|✅ proved - incomplete|shostak|0.315|
|vec_2_env_plus_TCC1|✅ proved - incomplete|shostak|0.208|
|vec_2_env_plus_TCC2|✅ proved - incomplete|shostak|0.080|
|vec_2_env_plus|✅ proved - incomplete|shostak|1.928|
|differentiable_re_p?_TCC1|✅ proved - incomplete|shostak|0.050|
|differentiable_re_p?_TCC2|✅ proved - incomplete|shostak|0.050|
|diff_env_change|✅ proved - incomplete|shostak|0.360|
|diff_re_diff_mv_TCC1|✅ proved - incomplete|shostak|0.057|
|diff_re_diff_mv|✅ proved - incomplete|shostak|0.286|
|der_re_p_TCC1|✅ proved - incomplete|shostak|0.300|
|der_re_TCC1|✅ proved - incomplete|shostak|0.000|
|der_re_grad_TCC1|✅ proved - incomplete|shostak|0.160|
|der_re_grad_TCC2|✅ proved - incomplete|shostak|0.292|
|der_re_grad|✅ proved - incomplete|shostak|0.455|
|diff_re_init_partial_TCC1|✅ proved - incomplete|shostak|0.140|
|diff_re_init_partial|✅ proved - incomplete|shostak|0.199|
|der_re_partial_TCC1|✅ proved - incomplete|shostak|0.189|
|der_re_partial|✅ proved - incomplete|shostak|0.170|
|re_diff_mv|✅ proved - incomplete|shostak|0.170|
|re_der_mv_TCC1|✅ proved - incomplete|shostak|0.110|
|re_der_mv|✅ proved - incomplete|shostak|0.335|
|re_diff_mv_ll_TCC1|✅ proved - incomplete|shostak|0.050|
|re_diff_mv_ll_TCC2|✅ proved - incomplete|shostak|0.371|
|re_diff_mv_ll_TCC3|✅ proved - incomplete|shostak|0.070|
|re_diff_mv_ll_TCC4|✅ proved - incomplete|shostak|0.070|
|re_diff_mv_ll_TCC5|✅ proved - incomplete|shostak|0.090|
|re_diff_mv_ll|✅ proved - incomplete|shostak|0.888|
|re_der_mv_ll_TCC1|✅ proved - incomplete|shostak|0.150|
|re_der_mv_ll_TCC2|✅ proved - incomplete|shostak|0.070|
|re_der_mv_ll_TCC3|✅ proved - incomplete|shostak|0.091|
|re_der_mv_ll|✅ proved - incomplete|shostak|0.860|
|with_e_vec_TCC1|✅ proved - complete|shostak|0.050|
|with_e_vec_TCC2|✅ proved - incomplete|shostak|0.251|
|with_e_vec|✅ proved - incomplete|shostak|0.562|
|derivable_partial_TCC1|✅ proved - incomplete|shostak|0.130|
|derivable_partial_TCC2|✅ proved - incomplete|shostak|0.070|
|derivable_partial_TCC3|✅ proved - incomplete|shostak|0.133|
|derivable_partial|✅ proved - incomplete|shostak|4.177|
|derivable_partial_D_TCC1|✅ proved - incomplete|shostak|0.060|
|derivable_partial_D|✅ proved - incomplete|shostak|0.671|
|deriv_partial_TCC1|✅ proved - incomplete|shostak|0.130|
|deriv_partial|✅ proved - incomplete|shostak|3.405|
|diff_re_derivable_partial_TCC1|✅ proved - incomplete|shostak|0.462|
|diff_re_derivable_partial|✅ proved - incomplete|shostak|0.077|
|diff_re_partialable_p_TCC1|✅ proved - incomplete|shostak|0.460|
|diff_re_partialable_p|✅ proved - incomplete|shostak|0.230|
|diff_re_derivable_up_TCC1|✅ proved - incomplete|shostak|0.446|
|diff_re_derivable_up|✅ proved - incomplete|shostak|0.130|
|der_re_partial_der_TCC1|✅ proved - incomplete|shostak|0.050|
|der_re_partial_der|✅ proved - incomplete|shostak|0.125|
|der_ll_partial_der_TCC1|✅ proved - incomplete|shostak|0.090|
|der_ll_partial_der_TCC2|✅ proved - incomplete|shostak|0.080|
|der_ll_partial_der_TCC3|✅ proved - incomplete|shostak|0.305|
|der_ll_partial_der_TCC4|✅ proved - incomplete|shostak|0.090|
|der_ll_partial_der_TCC5|✅ proved - incomplete|shostak|14.306|
|der_ll_partial_der|✅ proved - incomplete|shostak|0.150|
|eq_re_comp|✅ proved - incomplete|shostak|0.286|
|env_sol_env2vec|✅ proved - incomplete|shostak|0.000|
|e2v_diff_p_TCC1|✅ proved - incomplete|shostak|0.060|
|e2v_diff_p|✅ proved - incomplete|shostak|3.397|
|e2v_der_p_TCC1|✅ proved - incomplete|shostak|0.171|
|e2v_der_p_TCC2|✅ proved - incomplete|shostak|0.600|
|e2v_der_p_TCC3|✅ proved - incomplete|shostak|0.353|
|e2v_der_p|✅ proved - incomplete|shostak|0.400|
|e2v_der_p_not_in_map|✅ proved - incomplete|shostak|1.570|
|e2v_der_p_in_map|✅ proved - incomplete|shostak|11.063|
|e2v_der_p_in_map_ode|✅ proved - incomplete|shostak|13.636|
|e2v_re_diff_p_TCC1|✅ proved - incomplete|shostak|0.071|
|e2v_re_diff_p_TCC2|✅ proved - incomplete|shostak|0.060|
|e2v_re_diff_p|✅ proved - incomplete|shostak|1.723|
|e2v_re_der_p_TCC1|✅ proved - incomplete|shostak|0.081|
|e2v_re_der_p_TCC2|✅ proved - incomplete|shostak|0.070|
|e2v_re_der_p_TCC3|✅ proved - incomplete|shostak|0.150|
|e2v_re_der_p_TCC4|✅ proved - incomplete|shostak|0.060|
|e2v_re_der_p_TCC5|✅ proved - incomplete|shostak|0.088|
|e2v_re_der_p_TCC6|✅ proved - incomplete|shostak|0.180|
|e2v_re_der_p|✅ proved - incomplete|shostak|2.226|
|re_diff_chain_TCC1|✅ proved - incomplete|shostak|0.100|
|re_diff_chain_TCC2|✅ proved - incomplete|shostak|0.066|
|re_diff_chain_TCC3|✅ proved - incomplete|shostak|0.060|
|re_diff_chain|✅ proved - incomplete|shostak|0.233|
|init_re_der_chain_TCC1|✅ proved - incomplete|shostak|0.060|
|init_re_der_chain_TCC2|✅ proved - incomplete|shostak|0.060|
|init_re_der_chain_TCC3|✅ proved - incomplete|shostak|0.161|
|init_re_der_chain_TCC4|✅ proved - incomplete|shostak|0.060|
|init_re_der_chain_TCC5|✅ proved - incomplete|shostak|0.070|
|init_re_der_chain_TCC6|✅ proved - incomplete|shostak|0.087|
|init_re_der_chain_TCC7|✅ proved - incomplete|shostak|0.190|
|init_re_der_chain_TCC8|✅ proved - incomplete|shostak|0.060|
|init_re_der_chain_TCC9|✅ proved - incomplete|shostak|0.068|
|init_re_der_chain_TCC10|✅ proved - incomplete|shostak|1.120|
|init_re_der_chain_TCC11|✅ proved - incomplete|shostak|1.551|
|init_re_der_chain|✅ proved - incomplete|shostak|0.629|
|init2_re_der_chain_TCC1|✅ proved - incomplete|shostak|0.064|
|init2_re_der_chain_TCC2|✅ proved - incomplete|shostak|0.060|
|init2_re_der_chain_TCC3|✅ proved - incomplete|shostak|0.060|
|init2_re_der_chain|✅ proved - incomplete|shostak|0.000|
|init3_re_der_chain_TCC1|✅ proved - incomplete|shostak|0.060|
|init3_re_der_chain_TCC2|✅ proved - incomplete|shostak|0.070|
|init3_re_der_chain_TCC3|✅ proved - incomplete|shostak|0.074|
|init3_re_der_chain_TCC4|✅ proved - incomplete|shostak|0.210|
|init3_re_der_chain_TCC5|✅ proved - incomplete|shostak|0.110|
|init3_re_der_chain_TCC6|✅ proved - incomplete|shostak|0.104|
|init3_re_der_chain_TCC7|✅ proved - incomplete|shostak|0.220|
|init3_re_der_chain_TCC8|✅ proved - incomplete|shostak|0.283|
|init3_re_der_chain_TCC9|✅ proved - incomplete|shostak|0.300|
|init3_re_der_chain_TCC10|✅ proved - incomplete|shostak|0.111|
|init3_re_der_chain_TCC11|✅ proved - incomplete|shostak|0.110|
|init3_re_der_chain|✅ proved - incomplete|shostak|11.903|
|SUB_DIFTRe_sig_TCC1|✅ proved - incomplete|shostak|0.092|
|SUB_DIFTRe_sig_TCC2|✅ proved - incomplete|shostak|0.060|
|SUB_DIFTRe_sig_TCC3|✅ proved - incomplete|shostak|0.060|
|SUB_DIFTRe_sig|✅ proved - incomplete|shostak|15.927|
|derivable_M_nqbool?_TCC1|✅ proved - incomplete|shostak|0.290|
|derivable_M_nqbool?_TCC2|✅ proved - incomplete|shostak|0.299|
|derivable_M_normalize_rec|✅ proved - incomplete|shostak|0.283|
|derivable_M_normalize|✅ proved - incomplete|shostak|0.060|

## `diff_re_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|diff_re_cont_TCC1|✅ proved - incomplete|shostak|1.041|
|diff_re_cont_TCC2|✅ proved - incomplete|shostak|0.834|
|diff_re_cont|✅ proved - incomplete|shostak|1.236|
|diff_re_divbound_TCC1|✅ proved - incomplete|shostak|0.300|
|diff_re_divbound_TCC2|✅ proved - incomplete|shostak|0.090|
|diff_re_divbound|✅ proved - incomplete|shostak|1.198|
|diff_re_val|✅ proved - incomplete|shostak|2.698|
|diff_re_cnst|✅ proved - incomplete|shostak|0.732|
|diff_re_prod|✅ proved - incomplete|shostak|12.021|
|diff_re_pow|✅ proved - incomplete|shostak|0.214|
|diff_re_sum|✅ proved - incomplete|shostak|1.302|
|diff_re_diff|✅ proved - incomplete|shostak|0.100|
|diff_re_inv_aux|✅ proved - incomplete|shostak|11.094|
|diff_re_inv|✅ proved - incomplete|shostak|0.186|
|diff_re_div|✅ proved - incomplete|shostak|0.220|

## `continuity_re_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cont_re?_TCC1|✅ proved - complete|shostak|0.040|

## `continuity_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|f_sol_continuous|✅ proved - incomplete|shostak|0.125|
|c_delt_TCC1|✅ proved - incomplete|shostak|0.787|
|min_delt_TCC1|✅ proved - incomplete|shostak|0.080|
|min_delt_TCC2|✅ proved - incomplete|shostak|0.261|
|min_delt_TCC3|✅ proved - incomplete|shostak|0.470|
|min_delt_TCC4|✅ proved - incomplete|shostak|0.078|
|min_delt_TCC5|✅ proved - incomplete|shostak|0.260|
|min_delt_TCC6|✅ proved - incomplete|shostak|0.120|
|min_delt_TCC7|✅ proved - incomplete|shostak|0.090|
|min_delt_TCC8|✅ proved - incomplete|shostak|0.356|
|min_delt_TCC9|✅ proved - incomplete|shostak|0.090|
|min_delt_TCC10|✅ proved - incomplete|shostak|1.249|
|env_at_t_continuous|✅ proved - incomplete|shostak|0.311|
|re_env_continuous|✅ proved - incomplete|shostak|1.149|

## `continuity_re_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cont_re_val|✅ proved - complete|shostak|0.100|
|cont_re_cnst|✅ proved - complete|shostak|0.101|
|cont_re_prod|✅ proved - incomplete|shostak|4.925|
|cont_re_pow|✅ proved - incomplete|shostak|0.380|
|cont_re_sum|✅ proved - complete|shostak|0.412|
|cont_re_diff|✅ proved - incomplete|shostak|0.111|
|cont_re_div_aux|✅ proved - incomplete|shostak|0.000|
|cont_re_div|✅ proved - incomplete|shostak|0.120|

## `fresh_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|fresh_re_cnst|✅ proved - complete|shostak|0.059|
|fresh_re_val|✅ proved - complete|shostak|0.050|
|fresh_re_sum|✅ proved - complete|shostak|0.090|
|fresh_re_minus|✅ proved - complete|shostak|0.080|
|fresh_re_prod|✅ proved - complete|shostak|0.092|
|fresh_re_div_safe|✅ proved - incomplete|shostak|0.070|
|fresh_re_sqrt_safe|✅ proved - incomplete|shostak|0.060|
|fresh_re_pow|✅ proved - incomplete|shostak|0.193|
|fresh_re_exp|✅ proved - incomplete|shostak|0.060|
|fresh_re_expt|✅ proved - incomplete|shostak|0.942|
|not_fresh_re_val|✅ proved - complete|shostak|0.060|
|fresh_be_DLTRUE|✅ proved - complete|shostak|0.060|
|fresh_be_DLFALSE|✅ proved - complete|shostak|0.040|
|fresh_be_eq|✅ proved - complete|shostak|0.105|
|fresh_be_neq|✅ proved - complete|shostak|0.110|
|fresh_be_le|✅ proved - complete|shostak|0.100|
|fresh_be_lt|✅ proved - complete|shostak|0.100|
|fresh_be_ge|✅ proved - complete|shostak|0.106|
|fresh_be_gt|✅ proved - complete|shostak|0.100|
|fresh_be_or|✅ proved - complete|shostak|0.100|
|fresh_be_and|✅ proved - complete|shostak|0.105|
|fresh_be_implies|✅ proved - complete|shostak|0.100|
|fresh_be_not|✅ proved - complete|shostak|0.070|
|fresh_be_IFF|✅ proved - complete|shostak|0.130|
|fresh_fs_sol|✅ proved - incomplete|shostak|1.628|
|fresh_bstar_semantic_rel|✅ proved - incomplete|shostak|0.330|
|fresh_be_semantic_rel|✅ proved - incomplete|shostak|0.971|
|fresh_be_allruns|✅ proved - incomplete|shostak|0.110|
|fresh_be_allruns_e|✅ proved - incomplete|shostak|0.167|
|fresh_be_someruns|✅ proved - incomplete|shostak|0.117|

## `dynamic_logic`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|assign0_prop|✅ proved - incomplete|shostak|0.453|
|assign_assign_sub|✅ proved - incomplete|shostak|0.130|
|assign_sub_assign|✅ proved - incomplete|shostak|0.080|
|turnstile_TCC1|✅ proved - complete|shostak|0.070|
|turnstile_TCC2|✅ proved - complete|shostak|0.057|
|turnstile_TCC3|✅ proved - complete|shostak|0.100|
|turnstile_TCC4|✅ proved - incomplete|shostak|0.170|
|turnstile_TCC5|✅ proved - incomplete|shostak|0.160|
|turnstile_TCC6|✅ proved - incomplete|shostak|0.254|
|dlSequent_equiv|✅ proved - incomplete|shostak|0.200|
|dl_notR|✅ proved - incomplete|shostak|0.255|
|dl_notL|✅ proved - incomplete|shostak|0.270|
|dl_andR|✅ proved - incomplete|shostak|0.216|
|dl_andL|✅ proved - incomplete|shostak|0.238|
|dl_orR|✅ proved - incomplete|shostak|0.280|
|dl_orL|✅ proved - incomplete|shostak|0.318|
|dl_impliesR|✅ proved - incomplete|shostak|0.289|
|dl_impliesL|✅ proved - incomplete|shostak|0.360|
|dl_equivR|✅ proved - incomplete|shostak|0.776|
|dl_equivL|✅ proved - incomplete|shostak|0.442|
|dl_axiom|✅ proved - incomplete|shostak|0.000|
|dl_trueR|✅ proved - incomplete|shostak|0.150|
|dl_trueL|✅ proved - incomplete|shostak|0.180|
|dl_falseR|✅ proved - incomplete|shostak|0.182|
|dl_falseL|✅ proved - incomplete|shostak|0.140|
|dl_cut|✅ proved - incomplete|shostak|0.240|
|dl_weakR|✅ proved - incomplete|shostak|0.260|
|dl_weakL|✅ proved - incomplete|shostak|0.262|
|dl_forallR|✅ proved - incomplete|shostak|0.190|
|dl_forallL|✅ proved - incomplete|shostak|0.131|
|dl_existsR|✅ proved - incomplete|shostak|0.120|
|dl_existsL|✅ proved - incomplete|shostak|0.191|
|dl_existsrR|✅ proved - incomplete|shostak|0.130|
|dl_existsrRf|✅ proved - incomplete|shostak|0.142|
|dl_existsrL|✅ proved - incomplete|shostak|0.190|
|move_to_head_rec_TCC1|✅ proved - complete|shostak|0.070|
|move_to_head_rec_TCC2|✅ proved - complete|shostak|0.073|
|move_to_head_rec_TCC3|✅ proved - complete|shostak|0.130|
|move_to_head_rec_TCC4|✅ proved - complete|shostak|0.050|
|move_to_head_rec_nth_TCC1|✅ proved - complete|shostak|0.060|
|move_to_head_rec_nth_TCC2|✅ proved - complete|shostak|0.220|
|move_to_head_rec_nth_TCC3|✅ proved - complete|shostak|0.252|
|move_to_head_rec_nth_TCC4|✅ proved - complete|shostak|0.190|
|move_to_head_rec_nth_TCC5|✅ proved - complete|shostak|0.240|
|move_to_head_rec_nth_TCC6|✅ proved - complete|shostak|0.212|
|move_to_head_rec_nth_TCC7|✅ proved - complete|shostak|0.240|
|move_to_head_rec_nth_TCC8|✅ proved - complete|shostak|0.240|
|move_to_head_rec_nth_TCC9|✅ proved - incomplete|shostak|0.649|
|move_to_head_rec_nth_TCC10|✅ proved - incomplete|shostak|1.439|
|move_to_head_TCC1|✅ proved - complete|shostak|0.060|
|move_to_head_length|✅ proved - incomplete|shostak|0.260|
|move_to_head_car_TCC1|✅ proved - incomplete|shostak|0.070|
|move_to_head_car_TCC2|✅ proved - complete|shostak|0.050|
|move_to_head_car|✅ proved - incomplete|shostak|0.160|
|move_to_head_first_half_TCC1|✅ proved - incomplete|shostak|0.075|
|move_to_head_first_half_TCC2|✅ proved - complete|shostak|0.080|
|move_to_head_first_half|✅ proved - incomplete|shostak|0.260|
|move_to_head_second_half_TCC1|✅ proved - incomplete|shostak|0.060|
|move_to_head_second_half|✅ proved - incomplete|shostak|0.294|
|dl_moveR|✅ proved - incomplete|shostak|0.210|
|dl_moveL|✅ proved - incomplete|shostak|0.224|
|dl_hideR|✅ proved - incomplete|shostak|0.194|
|dl_hideL|✅ proved - incomplete|shostak|0.180|
|dl_boxd|✅ proved - incomplete|shostak|0.080|
|dl_assignb|✅ proved - incomplete|shostak|0.089|
|dl_assignb_restricted|✅ proved - incomplete|shostak|0.090|
|dl_assignd|✅ proved - incomplete|shostak|0.070|
|dl_testb|✅ proved - incomplete|shostak|0.080|
|dl_testb_true|✅ proved - incomplete|shostak|0.061|
|dl_testd|✅ proved - incomplete|shostak|0.080|
|dl_testd_true|✅ proved - incomplete|shostak|0.190|
|dl_choiceb|✅ proved - incomplete|shostak|0.180|
|dl_choiced|✅ proved - incomplete|shostak|0.150|
|dl_composeb|✅ proved - incomplete|shostak|0.120|
|dl_composed|✅ proved - incomplete|shostak|0.131|
|dl_iterateb|✅ proved - incomplete|shostak|0.140|
|dl_iterated|✅ proved - incomplete|shostak|0.228|
|dl_anyb_TCC1|✅ proved - complete|shostak|0.080|
|dl_anyb|✅ proved - incomplete|shostak|0.322|
|dl_anyb_with|✅ proved - incomplete|shostak|0.347|
|dl_anyd|✅ proved - incomplete|shostak|0.150|
|dl_anyd_with|✅ proved - incomplete|shostak|0.320|
|dl_boxand|✅ proved - incomplete|shostak|0.101|
|dl_diamondOr|✅ proved - incomplete|shostak|0.090|
|dl_iteratearrowb|✅ proved - incomplete|shostak|0.181|
|dl_starstarb|✅ proved - incomplete|shostak|0.630|
|dl_iterateIb|✅ proved - incomplete|shostak|0.837|
|dl_impliesallrunsb|✅ proved - incomplete|shostak|0.195|
|dl_impliesallrunsd|✅ proved - incomplete|shostak|0.203|
|dl_distimpliesb|✅ proved - incomplete|shostak|0.172|
|dl_const|✅ proved - incomplete|shostak|0.408|
|dl_constd|✅ proved - incomplete|shostak|0.392|
|dl_V|✅ proved - incomplete|shostak|1.539|
|dl_Vd|✅ proved - incomplete|shostak|1.618|
|dl_bool_const|✅ proved - incomplete|shostak|0.192|
|dl_subr_TCC1|✅ proved - incomplete|shostak|0.180|
|dl_subr|✅ proved - incomplete|shostak|0.261|
|dl_subl|✅ proved - incomplete|shostak|0.281|
|dl_subf|✅ proved - incomplete|shostak|0.322|
|dl_weak_impliesb|✅ proved - incomplete|shostak|0.140|
|dl_weak_impliesd|✅ proved - incomplete|shostak|0.138|
|dl_weak_impliesbE|✅ proved - incomplete|shostak|0.150|
|dl_weak_impliesdE|✅ proved - incomplete|shostak|0.150|
|dl_differential_auxiliary_TCC1|✅ proved - complete|shostak|0.090|
|dl_differential_auxiliary|✅ proved - incomplete|shostak|5.751|
|dl_bounded_loop|✅ proved - incomplete|shostak|0.657|
|dl_loop|✅ proved - incomplete|shostak|0.376|
|dl_MbL|✅ proved - incomplete|shostak|1.526|
|dl_MbR|✅ proved - incomplete|shostak|0.000|
|dl_MdL|✅ proved - incomplete|shostak|1.467|
|dl_MdR|✅ proved - incomplete|shostak|1.260|
|dl_MEbR|✅ proved - incomplete|shostak|1.322|
|dl_MEbRA|✅ proved - incomplete|shostak|0.611|
|dl_discrete_ghost|✅ proved - incomplete|shostak|0.361|
|dl_andb|✅ proved - incomplete|shostak|0.217|
|dl_andf|✅ proved - incomplete|shostak|0.230|
|dl_orb|✅ proved - incomplete|shostak|0.343|
|dl_hide_restR|✅ proved - incomplete|shostak|0.179|
|dl_hide_restL|✅ proved - incomplete|shostak|0.170|
|dl_hide_restLR|✅ proved - incomplete|shostak|0.447|
|dl_commuteEquivR|✅ proved - incomplete|shostak|0.270|
|dl_commuteEquivL|✅ proved - incomplete|shostak|0.237|
|dl_equivifyR|✅ proved - incomplete|shostak|0.330|
|dl_dW|✅ proved - incomplete|shostak|0.280|
|dl_dinit|✅ proved - incomplete|shostak|0.349|
|dl_dI_eq|✅ proved - incomplete|shostak|0.000|
|dl_dI_neq|✅ proved - incomplete|shostak|3.541|
|dl_dI_le|✅ proved - incomplete|shostak|3.090|
|dl_dI_lt|✅ proved - incomplete|shostak|0.000|
|dl_dI_ge|✅ proved - incomplete|shostak|3.079|
|dl_dI_gt|✅ proved - incomplete|shostak|3.425|
|dl_dI_lite|✅ proved - incomplete|shostak|10.099|
|dl_dI|✅ proved - incomplete|shostak|3.719|
|dl_dI_dlTRUE_TCC1|✅ proved - complete|shostak|0.050|
|dl_dI_dlTRUE|✅ proved - incomplete|shostak|0.088|
|dl_dC|✅ proved - incomplete|shostak|0.418|
|dl_differential_ghost_TCC1|✅ proved - complete|shostak|0.080|
|dl_differential_ghost|✅ proved - incomplete|shostak|3.886|

## `more_derivative_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_derivative_props_TCC1|✅ proved - complete|shostak|0.040|
|IMP_derivative_props_TCC2|✅ proved - complete|shostak|0.030|
|deriv_linear_TCC1|✅ proved - incomplete|shostak|0.050|
|deriv_linear|✅ proved - incomplete|shostak|4.651|

## `dl_solution`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|init_zip_sol_TCC1|✅ proved - complete|shostak|0.150|
|init_zip_sol_TCC2|✅ proved - complete|shostak|0.058|
|init_zip_sol_TCC3|✅ proved - complete|shostak|0.170|
|init_zip_sol_TCC4|✅ proved - complete|shostak|0.190|
|init_zip_sol_TCC5|✅ proved - complete|shostak|0.617|
|init_zip_sol_TCC6|✅ proved - complete|shostak|0.250|
|init_zip_sol_TCC7|✅ proved - complete|shostak|0.199|
|init_zip_sol_TCC8|✅ proved - complete|shostak|0.690|
|zip_sol_test_TCC1|✅ proved - incomplete|shostak|0.180|
|zip_sol_test_TCC2|✅ proved - incomplete|shostak|0.050|
|zip_sol_test_TCC3|✅ proved - complete|shostak|0.060|
|zip_sol_test|✅ proved - incomplete|shostak|0.080|
|zs_TCC1|✅ proved - complete|shostak|0.120|
|map_inj_zs|✅ proved - complete|shostak|0.320|
|solution_domain_ax_ode_TCC1|✅ proved - incomplete|shostak|0.060|
|solution_domain_ax_ode|✅ proved - incomplete|shostak|4.139|
|dl_solution_domain_iff|✅ proved - incomplete|shostak|1.442|
|dl_solution_domain|✅ proved - incomplete|shostak|0.084|
|solution_domain_ax_TCC1|✅ proved - complete|shostak|0.050|
|solution_domain_ax_TCC2|✅ proved - complete|shostak|0.160|
|solution_domain_ax|✅ proved - incomplete|shostak|1.235|
|solution_domain_ax_lin|✅ proved - incomplete|shostak|0.000|
|solution_domain_ax_lin_val|✅ proved - incomplete|shostak|12.014|
|solution_domain_ax_quad_TCC1|✅ proved - complete|shostak|0.040|
|solution_domain_ax_quad_TCC2|✅ proved - complete|shostak|0.137|
|solution_domain_ax_quad|✅ proved - incomplete|shostak|6.496|
|get_index_TCC1|✅ proved - complete|shostak|0.070|
|get_index_TCC2|✅ proved - complete|shostak|0.070|
|get_index_TCC3|✅ proved - complete|shostak|0.190|
|get_index_TCC4|✅ proved - complete|shostak|0.050|
|get_index_TCC5|✅ proved - complete|shostak|0.140|
|get_index_TCC6|✅ proved - complete|shostak|0.364|
|cnst_val_0|✅ proved - complete|shostak|0.080|
|cnst_val_com|✅ proved - complete|shostak|0.070|
|val_inj|✅ proved - complete|shostak|0.064|
|in_map_ex_TCC1|✅ proved - complete|shostak|0.070|
|in_map_ex_TCC2|✅ proved - complete|shostak|0.050|
|in_map_ex_TCC3|✅ proved - complete|shostak|0.150|
|in_map_ex_eq|✅ proved - complete|shostak|0.411|
|env_c_val|✅ proved - complete|shostak|0.050|
|get_val_cnst_id_ex_TCC1|✅ proved - complete|shostak|0.242|
|get_val_cnst_id_ex_TCC2|✅ proved - complete|shostak|0.878|
|is_val_not_in_map?_TCC1|✅ proved - complete|shostak|0.630|
|Y_sol_ex_TCC1|✅ proved - complete|shostak|0.911|
|cnst_lins_def|✅ proved - complete|shostak|1.028|
|cnst_lins_sol_TCC1|✅ proved - incomplete|shostak|0.050|
|cnst_lins_sol|✅ proved - incomplete|shostak|31.854|
|cnst_lins_sol_u_TCC1|✅ proved - incomplete|shostak|0.050|
|cnst_lins_sol_u|✅ proved - incomplete|shostak|5.074|
|solution_domain_ax_cnst_imp_zip|✅ proved - incomplete|shostak|0.090|
|solution_domain_ax_cnst_imp_zip_no_hyp|✅ proved - incomplete|shostak|0.746|

## `top_dtl`
No formula declaration found.
## `even_more_list_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|suffix_append|✅ proved - incomplete|shostak|0.849|
|caret_suffix_TCC1|✅ proved - complete|shostak|0.030|
|caret_suffix|✅ proved - incomplete|shostak|1.031|
|rdc_cdr_TCC1|✅ proved - complete|shostak|0.040|
|rdc_cdr_TCC2|✅ proved - complete|shostak|0.047|
|rdc_cdr_TCC3|✅ proved - incomplete|shostak|0.090|
|rdc_cdr|✅ proved - incomplete|shostak|0.320|

## `ltl_expr`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cut_inf_diff_TCC1|✅ proved - incomplete|shostak|0.050|
|cut_inf_diff_TCC2|✅ proved - incomplete|shostak|0.115|
|cut_inf_diff_TCC3|✅ proved - incomplete|shostak|0.050|
|cut_inf_diff_TCC4|✅ proved - incomplete|shostak|0.110|
|cut_state_diff_TCC1|✅ proved - incomplete|shostak|0.050|
|cut_state_diff_TCC2|✅ proved - incomplete|shostak|0.060|
|cut_state_diff_TCC3|✅ proved - incomplete|shostak|0.070|
|cut_state_diff_TCC4|✅ proved - incomplete|shostak|0.100|
|cut_state_diff_TCC5|✅ proved - incomplete|shostak|0.126|
|cut_state_diff_TCC6|✅ proved - incomplete|shostak|0.070|
|cut_state_diff_TCC7|✅ proved - incomplete|shostak|0.210|
|cut_state_diff_TCC8|✅ proved - incomplete|shostak|0.060|
|cut_state_diff_TCC9|✅ proved - incomplete|shostak|0.329|
|cut_state_diff_TCC10|✅ proved - incomplete|shostak|0.371|
|cut_state_zero_TCC1|✅ proved - incomplete|shostak|0.080|
|cut_state_zero|✅ proved - incomplete|shostak|0.521|
|cut_inf_zero_TCC1|✅ proved - incomplete|shostak|0.040|
|cut_inf_zero|✅ proved - incomplete|shostak|0.328|
|ALLRUNS_eq|✅ proved - incomplete|shostak|0.100|
|SOMERUNS_eq|✅ proved - incomplete|shostak|0.099|
|DLGLOBALLY_TCC1|✅ proved - incomplete|shostak|0.060|
|DLGLOBALLY_TCC2|✅ proved - incomplete|shostak|0.070|
|DLGLOBALLY_TCC3|✅ proved - incomplete|shostak|0.070|
|DLEVENTUALLY_TCC1|✅ proved - incomplete|shostak|0.090|
|norm_implies_DLGLOBALLY|✅ proved - incomplete|shostak|0.089|
|DLEVENTUALLY_implies_norm|✅ proved - incomplete|shostak|0.080|
|DLGLOBALLY_FORALL|✅ proved - incomplete|shostak|2.771|
|DLGLOBALLY_append|✅ proved - incomplete|shostak|1.019|
|normDLGLOBALLY_append|✅ proved - incomplete|shostak|0.407|
|DLEVENTUALLY_EXISTS|✅ proved - incomplete|shostak|1.480|
|DLEVENTUALLY_append|✅ proved - incomplete|shostak|1.102|
|normDLEVENTUALLY_append|✅ proved - incomplete|shostak|0.293|
|DLGE_nth_TCC1|✅ proved - incomplete|shostak|0.050|
|DLGE_nth|✅ proved - incomplete|shostak|13.156|
|normDLGE_append|✅ proved - incomplete|shostak|3.355|
|DLEG_nth|✅ proved - incomplete|shostak|0.000|
|normDLEG_append|✅ proved - incomplete|shostak|3.335|

## `trace_semantics`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|wf_trace?_TCC1|✅ proved - incomplete|shostak|0.050|
|finite_trace?_TCC1|✅ proved - incomplete|shostak|0.050|
|wf_append|✅ proved - incomplete|shostak|0.885|
|wf_append_finite|✅ proved - incomplete|shostak|0.536|
|init_env_TCC1|✅ proved - incomplete|shostak|0.070|
|final_env_TCC1|✅ proved - incomplete|shostak|0.100|
|final_env_TCC2|✅ proved - incomplete|shostak|0.070|
|trace_semantic_rel_TCC1|✅ proved - incomplete|shostak|0.091|
|trace_semantic_rel_TCC2|✅ proved - incomplete|shostak|0.090|
|trace_semantic_rel_TCC3|✅ proved - incomplete|shostak|0.090|
|trace_semantic_rel_TCC4|✅ proved - incomplete|shostak|0.180|
|trace_semantic_rel_TCC5|✅ proved - incomplete|shostak|0.110|
|trace_semantic_rel_TCC6|✅ proved - incomplete|shostak|0.155|
|trace_semantic_rel_TCC7|✅ proved - incomplete|shostak|0.170|
|trace_semantic_rel_TCC8|✅ proved - incomplete|shostak|0.190|
|trace_semantic_rel_TCC9|✅ proved - incomplete|shostak|0.170|
|trace_semantic_rel_TCC10|✅ proved - incomplete|shostak|0.199|
|trace_semantic_rel_TCC11|✅ proved - incomplete|shostak|0.230|
|trace_semantic_rel_TCC12|✅ proved - incomplete|shostak|0.210|
|trace_semantic_rel_TCC13|✅ proved - incomplete|shostak|0.205|
|trace_semantic_rel_TCC14|✅ proved - incomplete|shostak|0.200|
|trace_semantic_rel_TCC15|✅ proved - incomplete|shostak|0.231|
|trace_semantic_rel_TCC16|✅ proved - incomplete|shostak|0.230|
|trace_semantics_correct_assign|✅ proved - incomplete|shostak|0.391|
|trace_semantics_correct_diff|✅ proved - incomplete|shostak|1.197|
|trace_semantics_correct_any|✅ proved - incomplete|shostak|0.459|
|trace_semantics_correct_test|✅ proved - incomplete|shostak|0.814|
|trace_semantics_correct_seq|✅ proved - incomplete|shostak|0.711|
|trace_semantics_correct_union|✅ proved - incomplete|shostak|0.160|
|trace_semantics_correct_star|✅ proved - incomplete|shostak|1.299|
|trace_semantics_correct|✅ proved - incomplete|shostak|0.251|
|trace_semantics_complete_assign|✅ proved - incomplete|shostak|0.533|
|trace_semantics_complete_diff|✅ proved - incomplete|shostak|0.000|
|trace_semantics_complete_any|✅ proved - incomplete|shostak|0.493|
|trace_semantics_complete_test|✅ proved - incomplete|shostak|0.349|
|trace_semantics_complete_seq|✅ proved - incomplete|shostak|0.798|
|trace_semantics_complete_union|✅ proved - incomplete|shostak|0.235|
|trace_semantics_complete_star|✅ proved - incomplete|shostak|1.552|
|trace_semantics_complete|✅ proved - incomplete|shostak|0.710|

## `solution_odes_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|diff_odes_shift_TCC1|✅ proved - incomplete|shostak|0.040|
|diff_odes_shift|✅ proved - incomplete|shostak|1.217|
|env_at_t_shift|✅ proved - complete|shostak|0.424|
|solution_odes_shift|✅ proved - incomplete|shostak|2.999|
|diff_odes_cat_hp_TCC1|✅ proved - incomplete|shostak|0.050|
|diff_odes_cat_hp_TCC2|✅ proved - incomplete|shostak|0.624|
|diff_odes_cat_hp_TCC3|✅ proved - incomplete|shostak|0.060|
|diff_odes_cat_hp_TCC4|✅ proved - incomplete|shostak|0.071|
|diff_odes_cat_hp_TCC5|✅ proved - incomplete|shostak|0.140|
|diff_odes_cat_hp|✅ proved - incomplete|shostak|4.661|
|diff_odes_cat_ci_TCC1|✅ proved - incomplete|shostak|0.050|
|diff_odes_cat_ci_TCC2|✅ proved - incomplete|shostak|0.060|
|diff_odes_cat_ci_TCC3|✅ proved - incomplete|shostak|0.090|
|diff_odes_cat_ci_TCC4|✅ proved - incomplete|shostak|0.060|
|diff_odes_cat_ci_TCC5|✅ proved - incomplete|shostak|0.070|
|diff_odes_cat_ci_TCC6|✅ proved - incomplete|shostak|0.090|
|diff_odes_cat_ci_TCC7|✅ proved - incomplete|shostak|0.150|
|diff_odes_cat_ci_TCC8|✅ proved - incomplete|shostak|0.080|
|diff_odes_cat_ci_TCC9|✅ proved - incomplete|shostak|0.172|
|diff_odes_cat_ci_TCC10|✅ proved - incomplete|shostak|0.220|
|diff_odes_cat_ci|✅ proved - incomplete|shostak|0.000|
|der_odes_cat_hp_TCC1|✅ proved - incomplete|shostak|0.140|
|der_odes_cat_hp_TCC2|✅ proved - incomplete|shostak|0.064|
|der_odes_cat_hp_TCC3|✅ proved - incomplete|shostak|0.060|
|der_odes_cat_hp_TCC4|✅ proved - incomplete|shostak|0.070|
|der_odes_cat_hp_TCC5|✅ proved - incomplete|shostak|0.274|
|der_odes_cat_hp|✅ proved - incomplete|shostak|14.398|
|der_odes_cat_ci_TCC1|✅ proved - incomplete|shostak|0.094|
|der_odes_cat_ci_TCC2|✅ proved - incomplete|shostak|0.090|
|der_odes_cat_ci_TCC3|✅ proved - incomplete|shostak|0.570|
|der_odes_cat_ci_TCC4|✅ proved - incomplete|shostak|0.321|
|der_odes_cat_ci_TCC5|✅ proved - incomplete|shostak|0.300|
|der_odes_cat_ci_TCC6|✅ proved - incomplete|shostak|0.180|
|der_odes_cat_ci_TCC7|✅ proved - incomplete|shostak|0.070|
|der_odes_cat_ci_TCC8|✅ proved - incomplete|shostak|0.065|
|der_odes_cat_ci_TCC9|✅ proved - incomplete|shostak|0.210|
|der_odes_cat_ci_TCC10|✅ proved - incomplete|shostak|0.095|
|der_odes_cat_ci_TCC11|✅ proved - incomplete|shostak|0.090|
|der_odes_cat_ci|✅ proved - incomplete|shostak|13.434|
|solution_odes_deriv_at_T_hp_TCC1|✅ proved - incomplete|shostak|0.050|
|solution_odes_deriv_at_T_hp_TCC2|✅ proved - incomplete|shostak|0.080|
|solution_odes_deriv_at_T_hp_TCC3|✅ proved - incomplete|shostak|0.063|
|solution_odes_deriv_at_T_hp_TCC4|✅ proved - incomplete|shostak|0.070|
|solution_odes_deriv_at_T_hp_TCC5|✅ proved - incomplete|shostak|0.180|
|solution_odes_deriv_at_T_hp|✅ proved - incomplete|shostak|0.201|
|solution_odes_deriv_at_T_ci_TCC1|✅ proved - incomplete|shostak|0.060|
|solution_odes_deriv_at_T_ci_TCC2|✅ proved - incomplete|shostak|0.076|
|solution_odes_deriv_at_T_ci_TCC3|✅ proved - incomplete|shostak|0.060|
|solution_odes_deriv_at_T_ci_TCC4|✅ proved - incomplete|shostak|0.060|
|solution_odes_deriv_at_T_ci_TCC5|✅ proved - incomplete|shostak|0.181|
|solution_odes_deriv_at_T_ci_TCC6|✅ proved - incomplete|shostak|0.090|
|solution_odes_deriv_at_T_ci_TCC7|✅ proved - incomplete|shostak|0.080|
|solution_odes_deriv_at_T_ci|✅ proved - incomplete|shostak|0.209|
|solution_odes_hp_conc|✅ proved - incomplete|shostak|0.922|
|solution_odes_ci_conc_TCC1|✅ proved - incomplete|shostak|0.233|
|solution_odes_ci_conc|✅ proved - incomplete|shostak|1.763|
|solution_odes_u_shift|✅ proved - incomplete|shostak|1.223|
|solution_odes_u_init|✅ proved - incomplete|shostak|0.753|

## `temporal_logic`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|norm_DLGLOBALLY|✅ proved - incomplete|shostak|0.060|
|norm_DLEVENTUALLY|✅ proved - incomplete|shostak|0.060|
|norm_DLGE|✅ proved - incomplete|shostak|4.987|
|norm_DLEG|✅ proved - incomplete|shostak|0.000|
|dltl_SEQcap|✅ proved - incomplete|shostak|0.780|
|dltl_SEQcap_con|✅ proved - incomplete|shostak|0.512|
|dltl_SEQcap_dual|✅ proved - incomplete|shostak|1.525|
|dltl_SEQcup|✅ proved - incomplete|shostak|1.934|
|dltl_SEQcup_dual|✅ proved - incomplete|shostak|1.047|
|dltl_SEQcup_dual_con|✅ proved - incomplete|shostak|0.974|
|dltl_SEQtriangleEG|✅ proved - incomplete|shostak|7.396|
|dltl_SEQtriangleGE|✅ proved - incomplete|shostak|7.211|
|dltl_SEQEG_dual|✅ proved - incomplete|shostak|3.219|
|dltl_SEQGE_dual|✅ proved - incomplete|shostak|2.526|
|dltl_choice|✅ proved - incomplete|shostak|0.000|
|dltl_choice_st|✅ proved - incomplete|shostak|0.240|
|dltl_choice_dual|✅ proved - incomplete|shostak|0.162|
|dltl_choice_st_dual|✅ proved - incomplete|shostak|0.170|
|dltl_TESTcap_eq|✅ proved - incomplete|shostak|0.546|
|dltl_TESTcap_eq_dual|✅ proved - incomplete|shostak|0.586|
|dltl_TESTcup_eq|✅ proved - incomplete|shostak|0.537|
|dltl_TESTcup_eq_dual|✅ proved - incomplete|shostak|0.548|
|dltl_TESTEG_eq|✅ proved - incomplete|shostak|0.433|
|dltl_TESTEG_eq_dual|✅ proved - incomplete|shostak|0.470|
|dltl_TESTGE_eq|✅ proved - incomplete|shostak|0.461|
|dltl_TESTGE_eq_dual|✅ proved - incomplete|shostak|0.424|
|dltl_ASSIGNcap|✅ proved - incomplete|shostak|1.615|
|dltl_ASSIGNcap_dual|✅ proved - incomplete|shostak|0.869|
|dltl_ASSIGNcup|✅ proved - incomplete|shostak|0.600|
|dltl_ASSIGNcup_dual|✅ proved - incomplete|shostak|1.165|
|dltl_ASSIGNEG|✅ proved - incomplete|shostak|0.292|
|dltl_ASSIGNGE|✅ proved - incomplete|shostak|0.291|
|dltl_ASSIGNEG_dual|✅ proved - incomplete|shostak|0.250|
|dltl_ASSIGNGE_dual|✅ proved - incomplete|shostak|0.261|
|dltl_DIFFcap|✅ proved - incomplete|shostak|2.371|
|dltl_DIFFcap_eq|✅ proved - incomplete|shostak|1.448|
|dltl_DIFFcap_eq_dual_TCC1|✅ proved - incomplete|shostak|0.050|
|dltl_DIFFcap_eq_dual|✅ proved - incomplete|shostak|6.638|
|dltl_DIFFcup_eq|✅ proved - incomplete|shostak|0.000|
|dltl_DIFFcup_dual|✅ proved - incomplete|shostak|2.501|
|dltl_DIFFcup_dual_eq|✅ proved - incomplete|shostak|1.900|
|dltl_DIFFEG_eq|✅ proved - incomplete|shostak|12.037|
|dltl_DIFFEG_dual_eq|✅ proved - incomplete|shostak|0.000|
|dltl_DIFFGE_eq|✅ proved - incomplete|shostak|7.453|
|dltl_DIFFGE_dual_eq|✅ proved - incomplete|shostak|0.000|
|dltl_BSTARcap_eq|✅ proved - incomplete|shostak|10.686|
|dltl_STARcap_eq|✅ proved - incomplete|shostak|0.188|
|dltl_STARcup_dual|✅ proved - incomplete|shostak|1.631|
|dltl_STARcup|✅ proved - incomplete|shostak|0.000|
|dltl_STARcap_dual|✅ proved - incomplete|shostak|1.439|
|dltl_BSTARindcup|✅ proved - incomplete|shostak|2.454|
|dltl_STARindcup|✅ proved - incomplete|shostak|0.278|
|dltl_BSTAREG_dual|✅ proved - incomplete|shostak|7.878|
|dltl_BSTARGE_dual|✅ proved - incomplete|shostak|7.997|
|dltl_STAREG_dual|✅ proved - incomplete|shostak|1.303|
|dltl_STARGE_dual|✅ proved - incomplete|shostak|0.000|
|dltl_STAREG|✅ proved - incomplete|shostak|2.416|
|dltl_STARGE|✅ proved - incomplete|shostak|2.359|
|dltl_STARconcap|✅ proved - incomplete|shostak|7.030|
|ALLRUNS_st_imp|✅ proved - incomplete|shostak|0.073|
|ALLRUNS_st_finite_equiv|✅ proved - incomplete|shostak|0.060|

## `trace_bounded_star_semantics`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|trace_semantic_rel_bounded_star_TCC1|✅ proved - complete|shostak|0.040|
|trace_semantic_rel_bounded_star_TCC2|✅ proved - incomplete|shostak|0.090|
|trace_semantic_rel_bounded_star_TCC3|✅ proved - incomplete|shostak|0.130|
|trace_semantic_rel_bounded_star_TCC4|✅ proved - incomplete|shostak|0.145|
|trace_semantic_rel_bounded_star_TCC5|✅ proved - incomplete|shostak|0.200|
|trace_semantic_rel_bounded_star_TCC6|✅ proved - incomplete|shostak|0.110|
|trace_semantic_rel_bounded_star_TCC7|✅ proved - incomplete|shostak|0.118|
|trace_semantic_rel_bounded_star_TCC8|✅ proved - incomplete|shostak|0.100|
|trace_semantic_rel_bounded_star_TCC9|✅ proved - incomplete|shostak|0.080|
|trace_semantic_rel_bounded_star_inc|✅ proved - incomplete|shostak|0.000|
|trace_semantic_rel_implies_bounded|✅ proved - incomplete|shostak|0.832|
|bounded_implies_trace_semantic_rel|✅ proved - incomplete|shostak|1.315|
|trace_semantic_rel_bstar_reflexive|✅ proved - incomplete|shostak|0.184|
|trace_semantic_rel_bounded_bstar_trace_semantic_rel_bstar|✅ proved - incomplete|shostak|0.593|
|trace_semantic_rel_star_bounded_star|✅ proved - incomplete|shostak|0.070|
|trace_semantic_rel_star_bounded_star_con|✅ proved - incomplete|shostak|0.586|
|allruns_st_star|✅ proved - incomplete|shostak|0.100|
|someruns_st_star|✅ proved - incomplete|shostak|0.103|
|allruns_tr_star|✅ proved - incomplete|shostak|0.100|
|someruns_tr_star|✅ proved - incomplete|shostak|0.090|
|trace_semantic_rel_star_seq|✅ proved - incomplete|shostak|0.180|
|trace_semantic_rel_bounded_star_seq_switch_glob|✅ proved - incomplete|shostak|10.060|
|trace_semantic_rel_bounded_star_seq_switch_even|✅ proved - incomplete|shostak|9.340|
|trace_semantic_rel_bounded_star_seq_switch_ge|✅ proved - incomplete|shostak|7.204|
|trace_semantic_rel_bounded_star_seq_switch_eg|✅ proved - incomplete|shostak|0.000|
|trace_semantic_rel_bounded_star_seq_switch_glob_con|✅ proved - incomplete|shostak|5.978|
|trace_semantic_rel_bounded_star_seq_switch_ge_con|✅ proved - incomplete|shostak|4.143|
|trace_semantic_rel_bounded_star_seq_switch_eg_con|✅ proved - incomplete|shostak|4.128|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/PVS-7.1/nasalib/`<br/>`/home/cmunoz/local/PVS-7.1/lib/`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/float/`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvsio_utils/`|
| Loaded Patches | `/home/cmunoz/.pvs.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20230712-static-update.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20230710-tcc-gen.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20230707-defattach.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20230706-extrategies.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`|
