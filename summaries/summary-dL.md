# Summary for `dL`
Run started at 10:59:10 10/24/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **1060**   | **1060**    | **1060**    | **0**  | **11:3.922 s**   |
|top|0|0|0|0|0.000|
|hp_def|27|27|27|0|4.262|
|hp_expr|32|32|32|0|2.899|
|bounded_star_semantics|23|23|23|0|4.241|
|bool_expr|36|36|36|0|3.980|
|bound_variables_def|17|17|17|0|3.262|
|hp_props|21|21|21|0|5.947|
|substitution|58|58|58|0|10.402|
|ODEs_equiv|103|103|103|0|36.925|
|differentiation|120|120|120|0|1:8.432|
|chain_rule_re|134|134|134|0|1:30.625|
|diff_re_props|15|15|15|0|44.038|
|continuity_re_def|1|1|1|0|0.050|
|continuity_props|14|14|14|0|5.169|
|continuity_re_props|8|8|8|0|12.946|
|fresh_props|30|30|30|0|6.065|
|dynamic_logic|136|136|136|0|59.822|
|more_derivative_props|4|4|4|0|16.635|
|dl_solution|51|51|51|0|49.446|
|top_dtl|0|0|0|0|0.000|
|even_more_list_props|7|7|7|0|2.364|
|ltl_expr|37|37|37|0|29.623|
|trace_semantics|39|39|39|0|15.759|
|solution_odes_props|58|58|58|0|53.609|
|temporal_logic|61|61|61|0|1:31.058|
|trace_bounded_star_semantics|28|28|28|0|46.363|
## Detailed Summary 
## `top`
No formula declaration found.
## `hp_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|dlvar_inj|✅ proved - complete|shostak|0.140|
|dlvar_eq|✅ proved - complete|shostak|0.040|
|mapexpr_inj_TCC1|✅ proved - complete|shostak|0.090|
|mapexpr_inj_TCC2|✅ proved - complete|shostak|0.100|
|mapexpr_inj_cons|✅ proved - complete|shostak|0.222|
|mapexpr_inj_eq|✅ proved - complete|shostak|0.140|
|mapexpr_inj_eq_index|✅ proved - complete|shostak|0.080|
|null_MapExprInj|✅ proved - complete|shostak|0.111|
|cdr_is_MapExprInj|✅ proved - complete|shostak|0.190|
|sub_mapexpr_inj_is_mapexpr_inj|✅ proved - incomplete|shostak|0.160|
|in_map_cons|✅ proved - complete|shostak|0.184|
|in_map_null_false|✅ proved - complete|shostak|0.060|
|not_in_map_null|✅ proved - complete|shostak|0.050|
|index_of_j|✅ proved - complete|shostak|0.083|
|expr_car_TCC1|✅ proved - complete|shostak|0.080|
|expr_car|✅ proved - complete|shostak|0.150|
|expr_not_car_TCC1|✅ proved - complete|shostak|0.100|
|expr_not_car|✅ proved - complete|shostak|0.281|
|same_var_eq|✅ proved - complete|shostak|0.050|
|max_var_rec_TCC1|✅ proved - complete|shostak|0.040|
|max_var_rec_TCC2|✅ proved - complete|shostak|0.060|
|max_var_rec_pull|✅ proved - complete|shostak|0.572|
|max_var_max|✅ proved - complete|shostak|0.305|
|max_var_exist|✅ proved - complete|shostak|0.374|
|pigeon_map|✅ proved - complete|shostak|0.356|
|max_var_length|✅ proved - complete|shostak|0.164|
|nip_max_var|✅ proved - complete|shostak|0.080|

## `hp_expr`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_table_of_integrals_TCC1|✅ proved - complete|shostak|0.040|
|IMP_table_of_integrals_TCC2|✅ proved - incomplete|shostak|0.030|
|size_TCC1|✅ proved - incomplete|shostak|0.080|
|size_TCC2|✅ proved - incomplete|shostak|0.060|
|size_TCC3|✅ proved - incomplete|shostak|0.067|
|size_TCC4|✅ proved - incomplete|shostak|0.060|
|size_TCC5|✅ proved - incomplete|shostak|0.060|
|dd?_TCC1|✅ proved - incomplete|shostak|0.040|
|dd_deriv_domain|✅ proved - incomplete|shostak|0.170|
|dd_noe|✅ proved - incomplete|shostak|0.074|
|dd_con|✅ proved - incomplete|shostak|0.070|
|dd_ne|✅ proved - incomplete|shostak|0.060|
|dd_ci_TCC1|✅ proved - incomplete|shostak|0.060|
|dd_ci|✅ proved - incomplete|shostak|0.060|
|derivable_odes?_TCC1|✅ proved - incomplete|shostak|0.044|
|derivable_odes?_TCC2|✅ proved - incomplete|shostak|0.070|
|env_at_t_TCC1|✅ proved - incomplete|shostak|0.070|
|env_at_t_TCC2|✅ proved - incomplete|shostak|0.424|
|sol_at_t?_TCC1|✅ proved - incomplete|shostak|0.000|
|semantic_rel_TCC1|✅ proved - incomplete|shostak|0.060|
|semantic_rel_TCC2|✅ proved - incomplete|shostak|0.120|
|semantic_rel_TCC3|✅ proved - incomplete|shostak|0.110|
|semantic_rel_TCC4|✅ proved - incomplete|shostak|0.120|
|fresh_li?_TCC1|✅ proved - incomplete|shostak|0.049|
|fresh_li?_TCC2|✅ proved - incomplete|shostak|0.050|
|fresh_assign_nth|✅ proved - incomplete|shostak|0.230|
|fresh_mapexpr_inj|✅ proved - incomplete|shostak|0.226|
|fresh_mapexp_nth_2|✅ proved - incomplete|shostak|0.175|
|fresh_hp?_TCC1|✅ proved - incomplete|shostak|0.050|
|fresh_hp?_TCC2|✅ proved - incomplete|shostak|0.050|
|fresh_hp?_TCC3|✅ proved - incomplete|shostak|0.060|
|fresh_hp?_TCC4|✅ proved - incomplete|shostak|0.060|

## `bounded_star_semantics`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|semantic_rel_bounded_star_TCC1|✅ proved - complete|shostak|0.030|
|semantic_rel_bounded_star_TCC2|✅ proved - incomplete|shostak|0.070|
|semantic_rel_bounded_star_TCC3|✅ proved - complete|shostak|0.080|
|semantic_rel_bounded_star_TCC4|✅ proved - complete|shostak|0.084|
|semantic_rel_bounded_star_TCC5|✅ proved - complete|shostak|0.080|
|semantic_rel_bounded_star_TCC6|✅ proved - complete|shostak|0.080|
|semantic_rel_bounded_star_TCC7|✅ proved - incomplete|shostak|0.110|
|semantic_rel_bounded_star_TCC8|✅ proved - incomplete|shostak|0.090|
|semantic_rel_bounded_star_inc|✅ proved - incomplete|shostak|0.653|
|semantic_rel_implies_bounded|✅ proved - incomplete|shostak|0.456|
|bounded_implies_semantic_rel|✅ proved - incomplete|shostak|0.552|
|BSTAR_TCC1|✅ proved - complete|shostak|0.050|
|BSTAR_TCC2|✅ proved - complete|shostak|0.040|
|semantic_rel_bstar_reflexive|✅ proved - incomplete|shostak|0.085|
|semantic_rel_bounded_bstar_semantic_rel_bstar|✅ proved - incomplete|shostak|0.170|
|semantic_rel_star_bounded_star|✅ proved - incomplete|shostak|0.060|
|semantic_rel_star_bounded_star_con|✅ proved - incomplete|shostak|0.158|
|semantic_rel_bounded_star_seq_switch|✅ proved - incomplete|shostak|0.743|
|semantic_rel_star_seq_switch|✅ proved - incomplete|shostak|0.257|
|semantic_rel_bounded_star_iter|✅ proved - incomplete|shostak|0.093|
|semantic_rel_bounded_star_iter_con_TCC1|✅ proved - incomplete|shostak|0.070|
|semantic_rel_bounded_star_iter_con|✅ proved - incomplete|shostak|0.110|
|semantic_rel_star_iter|✅ proved - incomplete|shostak|0.120|

## `bool_expr`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|fresh?_TCC1|✅ proved - complete|shostak|0.050|
|fresh?_TCC2|✅ proved - complete|shostak|0.060|
|fresh_formula_nth|✅ proved - complete|shostak|0.146|
|fresh_be_invar|✅ proved - complete|shostak|0.206|
|dl_not_not|✅ proved - complete|shostak|0.050|
|dl_not_true|✅ proved - complete|shostak|0.040|
|dl_not_false|✅ proved - complete|shostak|0.050|
|dl_true_and|✅ proved - complete|shostak|0.050|
|dl_and_true|✅ proved - complete|shostak|0.057|
|dl_false_and|✅ proved - complete|shostak|0.050|
|dl_and_false|✅ proved - complete|shostak|0.040|
|dl_true_or|✅ proved - complete|shostak|0.050|
|dl_or_true|✅ proved - complete|shostak|0.050|
|dl_false_or|✅ proved - complete|shostak|0.050|
|dl_or_false|✅ proved - complete|shostak|0.050|
|dl_true_implies|✅ proved - complete|shostak|0.040|
|dl_implies_true|✅ proved - complete|shostak|0.050|
|dl_false_implies|✅ proved - complete|shostak|0.049|
|dl_implies_false|✅ proved - complete|shostak|0.050|
|dl_forall_bool|✅ proved - complete|shostak|0.060|
|dl_exists_bool|✅ proved - complete|shostak|0.050|
|nqb_to_be_TCC1|✅ proved - complete|shostak|0.060|
|nqb_to_be_TCC2|✅ proved - complete|shostak|0.050|
|nqb_to_be_TCC3|✅ proved - complete|shostak|0.060|
|nqb_to_be_TCC4|✅ proved - complete|shostak|0.050|
|nqb_to_be_TCC5|✅ proved - complete|shostak|0.057|
|nqb_normal?_TCC1|✅ proved - complete|shostak|0.050|
|nqb_normal?_TCC2|✅ proved - complete|shostak|0.040|
|normalize_rec_TCC1|✅ proved - complete|shostak|0.060|
|normalize_rec_TCC2|✅ proved - complete|shostak|0.240|
|normalize_rec_TCC3|✅ proved - complete|shostak|0.993|
|normalize_rec_TCC4|✅ proved - complete|shostak|0.193|
|normalize_rec_TCC5|✅ proved - complete|shostak|0.480|
|normalize_rec_TCC6|✅ proved - complete|shostak|0.201|
|normalize_rec_TCC7|✅ proved - complete|shostak|0.098|
|normalize_TCC1|✅ proved - complete|shostak|0.050|

## `bound_variables_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|bv_me_TCC1|✅ proved - complete|shostak|0.040|
|bv_me_TCC2|✅ proved - complete|shostak|0.060|
|bv_me_TCC3|✅ proved - complete|shostak|0.040|
|bv_me_TCC4|✅ proved - complete|shostak|0.100|
|bv_me_TCC5|✅ proved - incomplete|shostak|0.060|
|BV_TCC1|✅ proved - complete|shostak|0.040|
|BV_TCC2|✅ proved - complete|shostak|0.140|
|BV_TCC3|✅ proved - complete|shostak|0.140|
|BV_TCC4|✅ proved - complete|shostak|0.116|
|BV_TCC5|✅ proved - incomplete|shostak|0.060|
|bv_me_nth_TCC1|✅ proved - incomplete|shostak|0.200|
|bv_me_nth|✅ proved - incomplete|shostak|0.342|
|BV_implies_not_fresh|✅ proved - incomplete|shostak|0.955|
|BV_invar|✅ proved - incomplete|shostak|0.732|
|bvs?_TCC1|✅ proved - complete|shostak|0.050|
|bvs?_TCC2|✅ proved - incomplete|shostak|0.050|
|bvs?_TCC3|✅ proved - incomplete|shostak|0.137|

## `hp_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|assign1_prop_TCC1|✅ proved - complete|shostak|0.070|
|assign1_prop|✅ proved - incomplete|shostak|0.285|
|assign_prop_TCC1|✅ proved - complete|shostak|0.130|
|assign_prop|✅ proved - incomplete|shostak|0.483|
|assign_comm_TCC1|✅ proved - complete|shostak|0.100|
|assign_comm|✅ proved - incomplete|shostak|0.343|
|union_prop_TCC1|✅ proved - incomplete|shostak|0.141|
|union_prop|✅ proved - incomplete|shostak|0.240|
|union_prop_xx|✅ proved - incomplete|shostak|0.056|
|union_id|✅ proved - incomplete|shostak|0.060|
|union_comm|✅ proved - incomplete|shostak|0.190|
|seq_prop|✅ proved - incomplete|shostak|0.654|
|test_prop|✅ proved - incomplete|shostak|0.060|
|test_prop_ensures|✅ proved - incomplete|shostak|0.060|
|test_prop_vacuity|✅ proved - incomplete|shostak|0.087|
|diff_prop_TCC1|✅ proved - incomplete|shostak|0.130|
|diff_prop|✅ proved - incomplete|shostak|0.000|
|star_prop_TCC1|✅ proved - incomplete|shostak|0.140|
|star_prop|✅ proved - incomplete|shostak|0.823|
|while_prop|✅ proved - incomplete|shostak|1.717|
|any_prop|✅ proved - incomplete|shostak|0.178|

## `substitution`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|assign_env_TCC1|✅ proved - complete|shostak|0.060|
|assign_env_TCC2|✅ proved - complete|shostak|0.050|
|assign_env_TCC3|✅ proved - complete|shostak|0.120|
|assign_env_TCC4|✅ proved - complete|shostak|0.050|
|SUB_MapExpr_TCC1|✅ proved - complete|shostak|0.053|
|SUB_MapExpr_TCC2|✅ proved - complete|shostak|0.070|
|SUB_MapExpr_TCC3|✅ proved - complete|shostak|0.050|
|SUB_MapExpr_TCC4|✅ proved - complete|shostak|0.140|
|SUB_MapExpr_TCC5|✅ proved - complete|shostak|1.028|
|assign_env__TCC1|✅ proved - incomplete|shostak|0.090|
|assign_env__TCC2|✅ proved - incomplete|shostak|0.063|
|assign_env__alt_j_TCC1|✅ proved - complete|shostak|0.050|
|assign_env__alt_j_TCC2|✅ proved - complete|shostak|0.050|
|assign_env__alt_j_TCC3|✅ proved - incomplete|shostak|0.110|
|assign_env__alt_j_TCC4|✅ proved - incomplete|shostak|0.645|
|assign_env__alt_j_TCC5|✅ proved - incomplete|shostak|0.731|
|assign_env_phantom_eq_TCC1|✅ proved - complete|shostak|0.040|
|assign_env_phantom_eq|✅ proved - incomplete|shostak|0.615|
|assign_env_alt|✅ proved - incomplete|shostak|0.155|
|assign_env_ext|✅ proved - complete|shostak|0.335|
|assign_sub_ext|✅ proved - complete|shostak|0.050|
|SUB_MapVar_TCC1|✅ proved - complete|shostak|0.060|
|SUB_MapVar_TCC2|✅ proved - complete|shostak|0.168|
|SUB_MapVar_TCC3|✅ proved - complete|shostak|0.040|
|SUB_MapVar_TCC4|✅ proved - complete|shostak|0.110|
|SUB_MapVar_TCC5|✅ proved - complete|shostak|0.146|
|dl_subre_val|✅ proved - complete|shostak|0.070|
|dl_subre_const|✅ proved - complete|shostak|0.060|
|dl_subre_plus|✅ proved - complete|shostak|0.090|
|dl_subre_minus|✅ proved - complete|shostak|0.080|
|dl_subre_neg|✅ proved - complete|shostak|0.076|
|dl_subre_prod|✅ proved - complete|shostak|0.090|
|dl_subre_prod_scal1|✅ proved - complete|shostak|0.090|
|dl_subre_prod_scal2|✅ proved - complete|shostak|0.100|
|dl_subre_exp|✅ proved - incomplete|shostak|0.150|
|dl_sub_bool|✅ proved - complete|shostak|0.067|
|dl_sub_bool_restricted|✅ proved - complete|shostak|0.070|
|dl_sub_and|✅ proved - complete|shostak|0.080|
|dl_sub_or|✅ proved - complete|shostak|0.070|
|dl_sub_not|✅ proved - complete|shostak|0.070|
|dl_sub_implies|✅ proved - complete|shostak|0.079|
|dl_sub_ge|✅ proved - complete|shostak|0.070|
|dl_sub_gt|✅ proved - complete|shostak|0.080|
|dl_sub_le|✅ proved - complete|shostak|0.070|
|dl_sub_lt|✅ proved - complete|shostak|0.080|
|dl_sub_eq|✅ proved - complete|shostak|0.069|
|dl_sub_neq|✅ proved - complete|shostak|0.080|
|dl_sub_iff|✅ proved - complete|shostak|0.080|
|dl_sub_allruns0_x_neq_y_TCC1|✅ proved - incomplete|shostak|0.140|
|dl_sub_allruns0_x_neq_y_TCC2|✅ proved - incomplete|shostak|0.160|
|dl_sub_allruns0_x_neq_y_TCC3|✅ proved - complete|shostak|0.153|
|dl_sub_allruns0_x_neq_y_TCC4|✅ proved - incomplete|shostak|0.160|
|dl_sub_allruns0_x_neq_y|✅ proved - incomplete|shostak|2.104|
|dl_sub_allruns_assign0_x_eq_y_TCC1|✅ proved - incomplete|shostak|0.150|
|dl_sub_allruns_assign0_x_eq_y_TCC2|✅ proved - incomplete|shostak|0.150|
|dl_sub_allruns_assign0_x_eq_y|✅ proved - incomplete|shostak|0.395|
|dl_sub_forall|✅ proved - complete|shostak|0.070|
|dl_sub_exists|✅ proved - complete|shostak|0.070|

## `ODEs_equiv`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Re_TCC1|✅ proved - incomplete|shostak|0.090|
|Re_TCC2|✅ proved - complete|shostak|0.060|
|Re_TCC3|✅ proved - complete|shostak|0.050|
|Re_TCC4|✅ proved - complete|shostak|0.080|
|Re_TCC5|✅ proved - incomplete|shostak|0.210|
|Re_TCC6|✅ proved - complete|shostak|0.063|
|Re_nth_TCC1|✅ proved - incomplete|shostak|0.080|
|Re_nth|✅ proved - incomplete|shostak|0.277|
|env_vec_TCC1|✅ proved - complete|shostak|0.050|
|env_vec_TCC2|✅ proved - complete|shostak|0.140|
|env_vec_TCC3|✅ proved - incomplete|shostak|0.170|
|env_vec_nth_TCC1|✅ proved - incomplete|shostak|0.080|
|env_vec_nth|✅ proved - incomplete|shostak|0.342|
|r2v_2_fs_TCC1|✅ proved - complete|shostak|0.070|
|r2v_2_fs_TCC2|✅ proved - incomplete|shostak|0.060|
|r2v_2_fs_TCC3|✅ proved - incomplete|shostak|0.050|
|r2v_2_fs_TCC4|✅ proved - incomplete|shostak|0.466|
|r2v_2_fs_TCC5|✅ proved - incomplete|shostak|0.090|
|fs_2_r2v_TCC1|✅ proved - incomplete|shostak|0.040|
|fs_2_r2v_TCC2|✅ proved - incomplete|shostak|0.060|
|fs_2_r2v_TCC3|✅ proved - incomplete|shostak|0.063|
|fs_2_r2v_TCC4|✅ proved - incomplete|shostak|0.040|
|fs_2_r2v_TCC5|✅ proved - incomplete|shostak|0.070|
|fs_2_r2v_TCC6|✅ proved - incomplete|shostak|0.050|
|fs_2_r2v_TCC7|✅ proved - incomplete|shostak|0.050|
|fs_2_r2v_TCC8|✅ proved - incomplete|shostak|0.100|
|fs_2_r2v_TCC9|✅ proved - incomplete|shostak|0.384|
|fs_2_f2v_nth_TCC1|✅ proved - incomplete|shostak|0.080|
|fs_2_f2v_nth|✅ proved - incomplete|shostak|0.473|
|fs_2_f2v_eq_TCC1|✅ proved - incomplete|shostak|0.040|
|fs_2_f2v_eq_TCC2|✅ proved - incomplete|shostak|0.075|
|fs_2_f2v_eq_TCC3|✅ proved - incomplete|shostak|0.100|
|fs_2_f2v_eq_TCC4|✅ proved - incomplete|shostak|0.070|
|fs_2_f2v_eq_TCC5|✅ proved - incomplete|shostak|0.060|
|fs_2_f2v_eq_TCC6|✅ proved - incomplete|shostak|0.285|
|fs_2_f2v_eq|✅ proved - incomplete|shostak|2.507|
|Odes_f_TCC1|✅ proved - incomplete|shostak|0.000|
|cont_f?_TCC1|✅ proved - incomplete|shostak|0.077|
|cont_f?_TCC2|✅ proved - incomplete|shostak|0.060|
|cont_f?_TCC3|✅ proved - incomplete|shostak|0.070|
|cont_f?_TCC4|✅ proved - incomplete|shostak|0.200|
|cont_f?_TCC5|✅ proved - incomplete|shostak|0.130|
|cont_f?_TCC6|✅ proved - incomplete|shostak|0.078|
|max_diff_TCC1|✅ proved - incomplete|shostak|0.050|
|max_diff_TCC2|✅ proved - incomplete|shostak|0.140|
|max_diff_TCC3|✅ proved - incomplete|shostak|0.050|
|max_diff_TCC4|✅ proved - incomplete|shostak|0.050|
|max_diff_TCC5|✅ proved - incomplete|shostak|0.160|
|max_diff_TCC6|✅ proved - incomplete|shostak|0.208|
|max_diff_TCC7|✅ proved - incomplete|shostak|0.090|
|max_diff_TCC8|✅ proved - incomplete|shostak|0.050|
|max_diff_TCC9|✅ proved - incomplete|shostak|1.099|
|max_diff_norm_inf_TCC1|✅ proved - incomplete|shostak|0.050|
|max_diff_norm_inf_TCC2|✅ proved - incomplete|shostak|0.080|
|max_diff_norm_inf_TCC3|✅ proved - incomplete|shostak|0.050|
|max_diff_norm_inf_TCC4|✅ proved - incomplete|shostak|0.086|
|max_diff_norm_inf_TCC5|✅ proved - incomplete|shostak|0.120|
|max_diff_norm_inf|✅ proved - incomplete|shostak|3.536|
|cdr_TCC1|✅ proved - incomplete|shostak|0.040|
|cdr_TCC2|✅ proved - incomplete|shostak|0.040|
|cdr_const_TCC1|✅ proved - incomplete|shostak|0.050|
|cdr_const|✅ proved - incomplete|shostak|0.180|
|Lip_ODEs?_TCC1|✅ proved - incomplete|shostak|0.070|
|Lip_ODEs?_TCC2|✅ proved - incomplete|shostak|0.110|
|Lip_ODEs?_TCC3|✅ proved - incomplete|shostak|0.170|
|Lip_ODEs?_TCC4|✅ proved - incomplete|shostak|0.110|
|Lip_DDL_ODEs|✅ proved - incomplete|shostak|3.013|
|cont_DDL_ODEs|✅ proved - incomplete|shostak|0.000|
|diff_sol_Lip_TCC1|✅ proved - incomplete|shostak|0.550|
|diff_sol_Lip_TCC2|✅ proved - incomplete|shostak|0.050|
|diff_sol_Lip|✅ proved - incomplete|shostak|7.896|
|diff_sol_eq_TCC1|✅ proved - incomplete|shostak|0.130|
|diff_sol_eq_TCC2|✅ proved - incomplete|shostak|0.050|
|diff_sol_eq|✅ proved - incomplete|shostak|0.060|
|fs_sol_TCC1|✅ proved - incomplete|shostak|0.102|
|ODEs_s_sub_TCC1|✅ proved - incomplete|shostak|0.632|
|ODEs_s_sub_TCC2|✅ proved - incomplete|shostak|0.080|
|ODEs_s_sub|✅ proved - incomplete|shostak|0.748|
|fs_sol_sub_TCC1|✅ proved - incomplete|shostak|0.060|
|fs_sol_sub_TCC2|✅ proved - incomplete|shostak|0.080|
|fs_sol_sub_TCC3|✅ proved - incomplete|shostak|0.067|
|fs_sol_sub|✅ proved - incomplete|shostak|0.190|
|env_sol_sub_TCC1|✅ proved - incomplete|shostak|0.642|
|env_sol_sub_TCC2|✅ proved - incomplete|shostak|0.852|
|env_sol_sub_TCC3|✅ proved - incomplete|shostak|0.080|
|env_sol_sub_TCC4|✅ proved - incomplete|shostak|0.058|
|env_sol_sub|✅ proved - incomplete|shostak|0.310|
|solution_odes_sub|✅ proved - incomplete|shostak|0.285|
|solution_odes_subset|✅ proved - incomplete|shostak|0.106|
|odes_hp_s_TCC1|✅ proved - incomplete|shostak|0.050|
|odes_hp_s_TCC2|✅ proved - incomplete|shostak|0.060|
|odes_hp_s_TCC3|✅ proved - incomplete|shostak|0.330|
|odes_hp_s|✅ proved - incomplete|shostak|0.346|
|fs_sol_hp_TCC1|✅ proved - incomplete|shostak|0.315|
|fs_sol_hp_TCC2|✅ proved - incomplete|shostak|0.372|
|fs_sol_hp_TCC3|✅ proved - incomplete|shostak|0.200|
|fs_sol_hp_TCC4|✅ proved - incomplete|shostak|0.375|
|fs_sol_hp_TCC5|✅ proved - incomplete|shostak|0.453|
|fs_sol_hp_fs_TCC1|✅ proved - incomplete|shostak|0.060|
|fs_sol_hp_fs|✅ proved - incomplete|shostak|0.396|
|fs_sol_hp_sol|✅ proved - incomplete|shostak|2.464|
|fs_sol_hp_sol_u|✅ proved - incomplete|shostak|0.000|
|diff_sol_eq_dd|✅ proved - incomplete|shostak|1.284|

## `differentiation`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_derivatives_TCC1|✅ proved - incomplete|shostak|0.030|
|IMP_derivatives_TCC2|✅ proved - incomplete|shostak|0.050|
|right_dd_i|✅ proved - incomplete|shostak|0.211|
|right_dd|✅ proved - incomplete|shostak|0.060|
|connection_proj|✅ proved - incomplete|shostak|0.100|
|right_ne_i|✅ proved - incomplete|shostak|0.202|
|right_ne|✅ proved - incomplete|shostak|0.050|
|ddl_dom_upto|✅ proved - incomplete|shostak|0.050|
|ddl_dom_weak|✅ proved - incomplete|shostak|0.060|
|ddl_dom_dd|✅ proved - incomplete|shostak|0.701|
|ddl_dom__upto_dd|✅ proved - incomplete|shostak|0.060|
|ddl_dom_noe|✅ proved - incomplete|shostak|0.046|
|dl_true_DDL|✅ proved - incomplete|shostak|0.140|
|dl_true_up_DDL|✅ proved - incomplete|shostak|0.140|
|derivable?_TCC1|✅ proved - incomplete|shostak|0.120|
|derivable?_TCC2|✅ proved - incomplete|shostak|0.057|
|derivable?_TCC3|✅ proved - incomplete|shostak|0.050|
|derivable_up?_TCC1|✅ proved - incomplete|shostak|0.050|
|derivable?_TCC4|✅ proved - incomplete|shostak|0.060|
|hathat_diff_real_TCC1|✅ proved - incomplete|shostak|0.040|
|hathat_diff_real_TCC2|✅ proved - incomplete|shostak|0.990|
|hathat_diff_real_TCC3|✅ proved - incomplete|shostak|0.050|
|hathat_diff_real|✅ proved - incomplete|shostak|0.180|
|expt_TCC1|✅ proved - incomplete|shostak|0.060|
|expt_TCC2|✅ proved - incomplete|shostak|0.060|
|sqrt_hathat_TCC1|✅ proved - incomplete|shostak|0.040|
|sqrt_hathat|✅ proved - incomplete|shostak|0.597|
|sqrt_hathat_neg_TCC1|✅ proved - incomplete|shostak|0.070|
|sqrt_hathat_neg|✅ proved - incomplete|shostak|0.240|
|expt_exp_equiv|✅ proved - incomplete|shostak|0.067|
|partial_diff_TCC1|✅ proved - incomplete|shostak|0.060|
|dl_derivable_const|✅ proved - incomplete|shostak|0.080|
|dl_partial_const_TCC1|✅ proved - incomplete|shostak|0.050|
|dl_partial_const|✅ proved - incomplete|shostak|0.206|
|dl_derivable_up_cnst|✅ proved - incomplete|shostak|0.070|
|dl_derivable_val|✅ proved - incomplete|shostak|0.105|
|dl_derivable_up_val|✅ proved - incomplete|shostak|0.070|
|dl_partial_val_TCC1|✅ proved - incomplete|shostak|0.050|
|dl_partial_val|✅ proved - incomplete|shostak|0.272|
|dl_derivable_plus|✅ proved - incomplete|shostak|0.155|
|dl_partial_plus_TCC1|✅ proved - incomplete|shostak|0.060|
|dl_partial_plus|✅ proved - incomplete|shostak|0.323|
|dl_derivable_up_sum|✅ proved - incomplete|shostak|0.080|
|dl_derivable_mult|✅ proved - incomplete|shostak|0.087|
|dl_partial_mult_TCC1|✅ proved - incomplete|shostak|0.050|
|dl_partial_mult|✅ proved - incomplete|shostak|0.425|
|dl_derivable_up_prod|✅ proved - incomplete|shostak|0.080|
|dl_derivable_minus|✅ proved - incomplete|shostak|0.085|
|dl_partial_minus_TCC1|✅ proved - incomplete|shostak|0.040|
|dl_partial_minus|✅ proved - incomplete|shostak|0.240|
|dl_derivable_up_minus|✅ proved - incomplete|shostak|0.132|
|dl_derivable_negative|✅ proved - incomplete|shostak|0.150|
|dl_partial_negative_TCC1|✅ proved - incomplete|shostak|0.050|
|dl_partial_negative|✅ proved - incomplete|shostak|0.266|
|dl_derivable_pow|✅ proved - incomplete|shostak|0.636|
|dl_derivable_up_pow|✅ proved - incomplete|shostak|0.210|
|dl_derivable_div|✅ proved - incomplete|shostak|0.365|
|dl_partial_div_TCC1|✅ proved - incomplete|shostak|0.040|
|dl_partial_div|✅ proved - incomplete|shostak|1.023|
|dl_derivable_up_div|✅ proved - incomplete|shostak|0.070|
|dl_derivable_comp_point_TCC1|✅ proved - incomplete|shostak|2.021|
|dl_derivable_comp_point_TCC2|✅ proved - incomplete|shostak|0.060|
|dl_derivable_comp_point_TCC3|✅ proved - incomplete|shostak|0.170|
|dl_derivable_comp_point|✅ proved - incomplete|shostak|0.277|
|dl_derivable_comp_TCC1|✅ proved - incomplete|shostak|0.050|
|dl_derivable_comp_TCC2|✅ proved - incomplete|shostak|0.058|
|dl_derivable_comp_TCC3|✅ proved - incomplete|shostak|0.170|
|dl_derivable_comp|✅ proved - incomplete|shostak|0.079|
|dl_partial_chain_TCC1|✅ proved - incomplete|shostak|0.040|
|dl_partial_chain_TCC2|✅ proved - incomplete|shostak|0.060|
|dl_partial_chain_TCC3|✅ proved - incomplete|shostak|0.050|
|dl_partial_chain_TCC4|✅ proved - incomplete|shostak|0.174|
|dl_partial_chain|✅ proved - incomplete|shostak|0.603|
|dl_derivable_exp|✅ proved - incomplete|shostak|1.991|
|dl_partial_exp_TCC1|✅ proved - incomplete|shostak|0.050|
|dl_partial_exp|✅ proved - incomplete|shostak|5.862|
|dl_derivable_sqrt|✅ proved - incomplete|shostak|0.000|
|dl_partial_sqrt_TCC1|✅ proved - incomplete|shostak|0.060|
|dl_partial_sqrt|✅ proved - incomplete|shostak|1.084|
|DIFT_last_TCC1|✅ proved - incomplete|shostak|0.050|
|DIFT_last_TCC2|✅ proved - incomplete|shostak|0.080|
|DIFT_last|✅ proved - incomplete|shostak|0.549|
|dl_dift_val_zero|✅ proved - incomplete|shostak|0.531|
|dl_dift_val_P|✅ proved - incomplete|shostak|1.161|
|dl_dift_val_TCC1|✅ proved - incomplete|shostak|0.054|
|dl_dift_val|✅ proved - incomplete|shostak|0.080|
|dl_dift_const|✅ proved - incomplete|shostak|0.892|
|dl_dift_plus_TCC1|✅ proved - incomplete|shostak|0.050|
|dl_dift_plus|✅ proved - incomplete|shostak|2.500|
|dl_dift_minus|✅ proved - incomplete|shostak|1.119|
|dl_dift_negative|✅ proved - incomplete|shostak|1.925|
|dl_dift_mult|✅ proved - incomplete|shostak|4.246|
|dl_dift_divsafe|✅ proved - incomplete|shostak|4.553|
|dl_dift_exp|✅ proved - incomplete|shostak|1.008|
|dl_dift_pow|✅ proved - incomplete|shostak|1.600|
|dl_dift_sqrt|✅ proved - incomplete|shostak|0.000|
|ddt_TCC1|✅ proved - incomplete|shostak|0.060|
|ddt_TCC2|✅ proved - incomplete|shostak|0.060|
|ddt_TCC3|✅ proved - incomplete|shostak|0.143|
|ddt_not_in_map|✅ proved - incomplete|shostak|0.280|
|ddt_in_map_TCC1|✅ proved - incomplete|shostak|0.218|
|ddt_in_map|✅ proved - incomplete|shostak|1.480|
|re_plus_cnst0|✅ proved - incomplete|shostak|0.060|
|cnst0_plus_re|✅ proved - incomplete|shostak|0.060|
|re_minus_cnst0|✅ proved - incomplete|shostak|0.064|
|cnst0_minus_re|✅ proved - incomplete|shostak|0.120|
|re_prod_cnst0|✅ proved - incomplete|shostak|0.060|
|cnst0_prod_re|✅ proved - incomplete|shostak|0.110|
|sqrt_safe_sq|✅ proved - incomplete|shostak|0.110|
|ODEs_P?_TCC1|✅ proved - incomplete|shostak|20.346|
|DIFT_TCC1|✅ proved - incomplete|shostak|0.070|
|DIFT_TCC2|✅ proved - incomplete|shostak|0.140|
|DIFT_TCC3|✅ proved - incomplete|shostak|0.085|
|DIFT_TCC4|✅ proved - incomplete|shostak|0.590|
|DIFT_TCC5|✅ proved - incomplete|shostak|0.092|
|DIFT_TCC6|✅ proved - incomplete|shostak|0.480|
|DIFT_TCC7|✅ proved - incomplete|shostak|0.090|
|DIFT_TCC8|✅ proved - incomplete|shostak|0.146|
|DIFT_TCC9|✅ proved - incomplete|shostak|0.090|
|DIFT_TCC10|✅ proved - incomplete|shostak|0.060|

## `chain_rule_re`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|env_2_vec_TCC1|✅ proved - incomplete|shostak|0.060|
|env_2_vec_TCC2|✅ proved - complete|shostak|0.060|
|env_2_vec_TCC3|✅ proved - complete|shostak|0.050|
|env_2_vec_TCC4|✅ proved - incomplete|shostak|0.076|
|env_2_vec_nth_TCC1|✅ proved - incomplete|shostak|0.140|
|env_2_vec_nth|✅ proved - incomplete|shostak|0.250|
|projv_dd|✅ proved - incomplete|shostak|0.000|
|proj_projv_TCC1|✅ proved - incomplete|shostak|0.070|
|proj_projv_TCC2|✅ proved - incomplete|shostak|0.225|
|proj_projv|✅ proved - incomplete|shostak|1.057|
|projv_proj_TCC1|✅ proved - complete|shostak|0.050|
|projv_proj_TCC2|✅ proved - incomplete|shostak|0.220|
|projv_proj|✅ proved - incomplete|shostak|0.536|
|ddl_dom_dom_dir|✅ proved - incomplete|shostak|1.396|
|dd_e_partial|✅ proved - incomplete|shostak|1.228|
|vec_2_env_TCC1|✅ proved - incomplete|shostak|0.140|
|vec_2_env_id|✅ proved - incomplete|shostak|0.266|
|env_2_vec_id|✅ proved - incomplete|shostak|0.310|
|vec_2_env_plus_TCC1|✅ proved - incomplete|shostak|0.214|
|vec_2_env_plus_TCC2|✅ proved - incomplete|shostak|0.080|
|vec_2_env_plus|✅ proved - incomplete|shostak|1.904|
|differentiable_re_p?_TCC1|✅ proved - incomplete|shostak|0.050|
|differentiable_re_p?_TCC2|✅ proved - incomplete|shostak|0.049|
|diff_env_change|✅ proved - incomplete|shostak|0.353|
|diff_re_diff_mv_TCC1|✅ proved - incomplete|shostak|0.050|
|diff_re_diff_mv|✅ proved - incomplete|shostak|0.286|
|der_re_p_TCC1|✅ proved - incomplete|shostak|0.290|
|der_re_TCC1|✅ proved - incomplete|shostak|3.285|
|der_re_grad_TCC1|✅ proved - incomplete|shostak|0.155|
|der_re_grad_TCC2|✅ proved - incomplete|shostak|0.302|
|der_re_grad|✅ proved - incomplete|shostak|0.443|
|diff_re_init_partial_TCC1|✅ proved - incomplete|shostak|0.130|
|diff_re_init_partial|✅ proved - incomplete|shostak|0.191|
|der_re_partial_TCC1|✅ proved - incomplete|shostak|0.190|
|der_re_partial|✅ proved - incomplete|shostak|0.158|
|re_diff_mv|✅ proved - incomplete|shostak|0.170|
|re_der_mv_TCC1|✅ proved - incomplete|shostak|0.120|
|re_der_mv|✅ proved - incomplete|shostak|0.334|
|re_diff_mv_ll_TCC1|✅ proved - incomplete|shostak|0.060|
|re_diff_mv_ll_TCC2|✅ proved - incomplete|shostak|0.363|
|re_diff_mv_ll_TCC3|✅ proved - incomplete|shostak|0.070|
|re_diff_mv_ll_TCC4|✅ proved - incomplete|shostak|0.070|
|re_diff_mv_ll_TCC5|✅ proved - incomplete|shostak|0.090|
|re_diff_mv_ll|✅ proved - incomplete|shostak|0.879|
|re_der_mv_ll_TCC1|✅ proved - incomplete|shostak|0.151|
|re_der_mv_ll_TCC2|✅ proved - incomplete|shostak|0.060|
|re_der_mv_ll_TCC3|✅ proved - incomplete|shostak|0.090|
|re_der_mv_ll|✅ proved - incomplete|shostak|0.827|
|with_e_vec_TCC1|✅ proved - complete|shostak|0.050|
|with_e_vec_TCC2|✅ proved - incomplete|shostak|0.250|
|with_e_vec|✅ proved - incomplete|shostak|0.563|
|derivable_partial_TCC1|✅ proved - incomplete|shostak|0.145|
|derivable_partial_TCC2|✅ proved - incomplete|shostak|0.060|
|derivable_partial_TCC3|✅ proved - incomplete|shostak|0.130|
|derivable_partial|✅ proved - incomplete|shostak|4.052|
|derivable_partial_D_TCC1|✅ proved - incomplete|shostak|0.068|
|derivable_partial_D|✅ proved - incomplete|shostak|0.662|
|deriv_partial_TCC1|✅ proved - incomplete|shostak|0.140|
|deriv_partial|✅ proved - incomplete|shostak|3.322|
|diff_re_derivable_partial_TCC1|✅ proved - incomplete|shostak|0.455|
|diff_re_derivable_partial|✅ proved - incomplete|shostak|0.080|
|diff_re_partialable_p_TCC1|✅ proved - incomplete|shostak|0.465|
|diff_re_partialable_p|✅ proved - incomplete|shostak|0.229|
|diff_re_derivable_up_TCC1|✅ proved - incomplete|shostak|0.448|
|diff_re_derivable_up|✅ proved - incomplete|shostak|0.130|
|der_re_partial_der_TCC1|✅ proved - incomplete|shostak|0.060|
|der_re_partial_der|✅ proved - incomplete|shostak|0.113|
|der_ll_partial_der_TCC1|✅ proved - incomplete|shostak|0.090|
|der_ll_partial_der_TCC2|✅ proved - incomplete|shostak|0.090|
|der_ll_partial_der_TCC3|✅ proved - incomplete|shostak|0.307|
|der_ll_partial_der_TCC4|✅ proved - incomplete|shostak|0.080|
|der_ll_partial_der_TCC5|✅ proved - incomplete|shostak|1.659|
|der_ll_partial_der|✅ proved - incomplete|shostak|0.160|
|eq_re_comp|✅ proved - incomplete|shostak|0.287|
|env_sol_env2vec|✅ proved - incomplete|shostak|0.351|
|e2v_diff_p_TCC1|✅ proved - incomplete|shostak|0.060|
|e2v_diff_p|✅ proved - incomplete|shostak|3.340|
|e2v_der_p_TCC1|✅ proved - incomplete|shostak|0.160|
|e2v_der_p_TCC2|✅ proved - incomplete|shostak|0.596|
|e2v_der_p_TCC3|✅ proved - incomplete|shostak|0.350|
|e2v_der_p|✅ proved - incomplete|shostak|0.384|
|e2v_der_p_not_in_map|✅ proved - incomplete|shostak|1.545|
|e2v_der_p_in_map|✅ proved - incomplete|shostak|10.758|
|e2v_der_p_in_map_ode|✅ proved - incomplete|shostak|13.006|
|e2v_re_diff_p_TCC1|✅ proved - incomplete|shostak|0.060|
|e2v_re_diff_p_TCC2|✅ proved - incomplete|shostak|0.063|
|e2v_re_diff_p|✅ proved - incomplete|shostak|0.000|
|e2v_re_der_p_TCC1|✅ proved - incomplete|shostak|0.080|
|e2v_re_der_p_TCC2|✅ proved - incomplete|shostak|0.070|
|e2v_re_der_p_TCC3|✅ proved - incomplete|shostak|0.153|
|e2v_re_der_p_TCC4|✅ proved - incomplete|shostak|0.060|
|e2v_re_der_p_TCC5|✅ proved - incomplete|shostak|0.100|
|e2v_re_der_p_TCC6|✅ proved - incomplete|shostak|0.180|
|e2v_re_der_p|✅ proved - incomplete|shostak|2.131|
|re_diff_chain_TCC1|✅ proved - incomplete|shostak|0.107|
|re_diff_chain_TCC2|✅ proved - incomplete|shostak|0.060|
|re_diff_chain_TCC3|✅ proved - incomplete|shostak|0.050|
|re_diff_chain|✅ proved - incomplete|shostak|0.219|
|init_re_der_chain_TCC1|✅ proved - incomplete|shostak|0.070|
|init_re_der_chain_TCC2|✅ proved - incomplete|shostak|0.060|
|init_re_der_chain_TCC3|✅ proved - incomplete|shostak|0.160|
|init_re_der_chain_TCC4|✅ proved - incomplete|shostak|0.070|
|init_re_der_chain_TCC5|✅ proved - incomplete|shostak|0.060|
|init_re_der_chain_TCC6|✅ proved - incomplete|shostak|0.079|
|init_re_der_chain_TCC7|✅ proved - incomplete|shostak|0.180|
|init_re_der_chain_TCC8|✅ proved - incomplete|shostak|0.070|
|init_re_der_chain_TCC9|✅ proved - incomplete|shostak|0.067|
|init_re_der_chain_TCC10|✅ proved - incomplete|shostak|1.092|
|init_re_der_chain_TCC11|✅ proved - incomplete|shostak|1.548|
|init_re_der_chain|✅ proved - incomplete|shostak|0.601|
|init2_re_der_chain_TCC1|✅ proved - incomplete|shostak|0.070|
|init2_re_der_chain_TCC2|✅ proved - incomplete|shostak|0.050|
|init2_re_der_chain_TCC3|✅ proved - incomplete|shostak|0.060|
|init2_re_der_chain|✅ proved - incomplete|shostak|2.530|
|init3_re_der_chain_TCC1|✅ proved - incomplete|shostak|0.070|
|init3_re_der_chain_TCC2|✅ proved - incomplete|shostak|0.060|
|init3_re_der_chain_TCC3|✅ proved - incomplete|shostak|0.070|
|init3_re_der_chain_TCC4|✅ proved - incomplete|shostak|0.210|
|init3_re_der_chain_TCC5|✅ proved - incomplete|shostak|0.102|
|init3_re_der_chain_TCC6|✅ proved - incomplete|shostak|0.100|
|init3_re_der_chain_TCC7|✅ proved - incomplete|shostak|0.220|
|init3_re_der_chain_TCC8|✅ proved - incomplete|shostak|0.260|
|init3_re_der_chain_TCC9|✅ proved - incomplete|shostak|0.310|
|init3_re_der_chain_TCC10|✅ proved - incomplete|shostak|0.102|
|init3_re_der_chain_TCC11|✅ proved - incomplete|shostak|0.110|
|init3_re_der_chain|✅ proved - incomplete|shostak|11.732|
|SUB_DIFTRe_sig_TCC1|✅ proved - incomplete|shostak|0.080|
|SUB_DIFTRe_sig_TCC2|✅ proved - incomplete|shostak|0.054|
|SUB_DIFTRe_sig_TCC3|✅ proved - incomplete|shostak|0.060|
|SUB_DIFTRe_sig|✅ proved - incomplete|shostak|3.909|
|derivable_M_nqbool?_TCC1|✅ proved - incomplete|shostak|0.290|
|derivable_M_nqbool?_TCC2|✅ proved - incomplete|shostak|0.269|
|derivable_M_normalize_rec|✅ proved - incomplete|shostak|0.274|
|derivable_M_normalize|✅ proved - incomplete|shostak|0.050|

## `diff_re_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|diff_re_cont_TCC1|✅ proved - incomplete|shostak|1.014|
|diff_re_cont_TCC2|✅ proved - incomplete|shostak|0.820|
|diff_re_cont|✅ proved - incomplete|shostak|13.121|
|diff_re_divbound_TCC1|✅ proved - incomplete|shostak|0.300|
|diff_re_divbound_TCC2|✅ proved - incomplete|shostak|0.090|
|diff_re_divbound|✅ proved - incomplete|shostak|1.175|
|diff_re_val|✅ proved - incomplete|shostak|2.655|
|diff_re_cnst|✅ proved - incomplete|shostak|0.727|
|diff_re_prod|✅ proved - incomplete|shostak|11.449|
|diff_re_pow|✅ proved - incomplete|shostak|0.210|
|diff_re_sum|✅ proved - incomplete|shostak|1.288|
|diff_re_diff|✅ proved - incomplete|shostak|0.119|
|diff_re_inv_aux|✅ proved - incomplete|shostak|10.647|
|diff_re_inv|✅ proved - incomplete|shostak|0.193|
|diff_re_div|✅ proved - incomplete|shostak|0.230|

## `continuity_re_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cont_re?_TCC1|✅ proved - complete|shostak|0.050|

## `continuity_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|f_sol_continuous|✅ proved - incomplete|shostak|0.000|
|c_delt_TCC1|✅ proved - incomplete|shostak|0.786|
|min_delt_TCC1|✅ proved - incomplete|shostak|0.080|
|min_delt_TCC2|✅ proved - incomplete|shostak|0.258|
|min_delt_TCC3|✅ proved - incomplete|shostak|0.457|
|min_delt_TCC4|✅ proved - incomplete|shostak|0.080|
|min_delt_TCC5|✅ proved - incomplete|shostak|0.250|
|min_delt_TCC6|✅ proved - incomplete|shostak|0.121|
|min_delt_TCC7|✅ proved - incomplete|shostak|0.080|
|min_delt_TCC8|✅ proved - incomplete|shostak|0.340|
|min_delt_TCC9|✅ proved - incomplete|shostak|0.090|
|min_delt_TCC10|✅ proved - incomplete|shostak|1.213|
|env_at_t_continuous|✅ proved - incomplete|shostak|0.296|
|re_env_continuous|✅ proved - incomplete|shostak|1.118|

## `continuity_re_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cont_re_val|✅ proved - complete|shostak|0.100|
|cont_re_cnst|✅ proved - complete|shostak|0.103|
|cont_re_prod|✅ proved - incomplete|shostak|4.837|
|cont_re_pow|✅ proved - incomplete|shostak|0.385|
|cont_re_sum|✅ proved - complete|shostak|0.402|
|cont_re_diff|✅ proved - incomplete|shostak|0.110|
|cont_re_div_aux|✅ proved - incomplete|shostak|6.899|
|cont_re_div|✅ proved - incomplete|shostak|0.110|

## `fresh_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|fresh_re_cnst|✅ proved - complete|shostak|0.050|
|fresh_re_val|✅ proved - complete|shostak|0.060|
|fresh_re_sum|✅ proved - complete|shostak|0.083|
|fresh_re_minus|✅ proved - complete|shostak|0.080|
|fresh_re_prod|✅ proved - complete|shostak|0.090|
|fresh_re_div_safe|✅ proved - incomplete|shostak|0.070|
|fresh_re_sqrt_safe|✅ proved - incomplete|shostak|0.058|
|fresh_re_pow|✅ proved - incomplete|shostak|0.190|
|fresh_re_exp|✅ proved - incomplete|shostak|0.070|
|fresh_re_expt|✅ proved - incomplete|shostak|0.820|
|not_fresh_re_val|✅ proved - complete|shostak|0.050|
|fresh_be_DLTRUE|✅ proved - complete|shostak|0.050|
|fresh_be_DLFALSE|✅ proved - complete|shostak|0.050|
|fresh_be_eq|✅ proved - complete|shostak|0.107|
|fresh_be_neq|✅ proved - complete|shostak|0.100|
|fresh_be_le|✅ proved - complete|shostak|0.110|
|fresh_be_lt|✅ proved - complete|shostak|0.100|
|fresh_be_ge|✅ proved - complete|shostak|0.098|
|fresh_be_gt|✅ proved - complete|shostak|0.090|
|fresh_be_or|✅ proved - complete|shostak|0.090|
|fresh_be_and|✅ proved - complete|shostak|0.100|
|fresh_be_implies|✅ proved - complete|shostak|0.097|
|fresh_be_not|✅ proved - complete|shostak|0.070|
|fresh_be_IFF|✅ proved - complete|shostak|0.120|
|fresh_fs_sol|✅ proved - incomplete|shostak|1.600|
|fresh_bstar_semantic_rel|✅ proved - incomplete|shostak|0.333|
|fresh_be_semantic_rel|✅ proved - incomplete|shostak|0.938|
|fresh_be_allruns|✅ proved - incomplete|shostak|0.110|
|fresh_be_allruns_e|✅ proved - incomplete|shostak|0.161|
|fresh_be_someruns|✅ proved - incomplete|shostak|0.120|

## `dynamic_logic`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|assign0_prop|✅ proved - incomplete|shostak|0.438|
|assign_assign_sub|✅ proved - incomplete|shostak|0.000|
|assign_sub_assign|✅ proved - incomplete|shostak|0.080|
|turnstile_TCC1|✅ proved - complete|shostak|0.070|
|turnstile_TCC2|✅ proved - complete|shostak|0.070|
|turnstile_TCC3|✅ proved - complete|shostak|0.110|
|turnstile_TCC4|✅ proved - incomplete|shostak|0.174|
|turnstile_TCC5|✅ proved - incomplete|shostak|0.150|
|turnstile_TCC6|✅ proved - incomplete|shostak|0.260|
|dlSequent_equiv|✅ proved - incomplete|shostak|0.215|
|dl_notR|✅ proved - incomplete|shostak|0.265|
|dl_notL|✅ proved - incomplete|shostak|0.270|
|dl_andR|✅ proved - incomplete|shostak|0.223|
|dl_andL|✅ proved - incomplete|shostak|0.245|
|dl_orR|✅ proved - incomplete|shostak|0.280|
|dl_orL|✅ proved - incomplete|shostak|0.311|
|dl_impliesR|✅ proved - incomplete|shostak|0.293|
|dl_impliesL|✅ proved - incomplete|shostak|0.350|
|dl_equivR|✅ proved - incomplete|shostak|0.776|
|dl_equivL|✅ proved - incomplete|shostak|0.442|
|dl_axiom|✅ proved - incomplete|shostak|0.280|
|dl_trueR|✅ proved - incomplete|shostak|0.140|
|dl_trueL|✅ proved - incomplete|shostak|0.190|
|dl_falseR|✅ proved - incomplete|shostak|0.180|
|dl_falseL|✅ proved - incomplete|shostak|0.143|
|dl_cut|✅ proved - incomplete|shostak|0.240|
|dl_weakR|✅ proved - incomplete|shostak|0.263|
|dl_weakL|✅ proved - incomplete|shostak|0.275|
|dl_forallR|✅ proved - incomplete|shostak|0.201|
|dl_forallL|✅ proved - incomplete|shostak|0.130|
|dl_existsR|✅ proved - incomplete|shostak|0.135|
|dl_existsL|✅ proved - incomplete|shostak|0.190|
|dl_existsrR|✅ proved - incomplete|shostak|0.130|
|dl_existsrRf|✅ proved - incomplete|shostak|0.140|
|dl_existsrL|✅ proved - incomplete|shostak|0.194|
|move_to_head_rec_TCC1|✅ proved - complete|shostak|0.080|
|move_to_head_rec_TCC2|✅ proved - complete|shostak|0.070|
|move_to_head_rec_TCC3|✅ proved - complete|shostak|0.130|
|move_to_head_rec_TCC4|✅ proved - complete|shostak|0.050|
|move_to_head_rec_nth_TCC1|✅ proved - complete|shostak|0.060|
|move_to_head_rec_nth_TCC2|✅ proved - complete|shostak|0.227|
|move_to_head_rec_nth_TCC3|✅ proved - complete|shostak|0.250|
|move_to_head_rec_nth_TCC4|✅ proved - complete|shostak|0.190|
|move_to_head_rec_nth_TCC5|✅ proved - complete|shostak|0.240|
|move_to_head_rec_nth_TCC6|✅ proved - complete|shostak|0.210|
|move_to_head_rec_nth_TCC7|✅ proved - complete|shostak|0.250|
|move_to_head_rec_nth_TCC8|✅ proved - complete|shostak|0.244|
|move_to_head_rec_nth_TCC9|✅ proved - incomplete|shostak|0.650|
|move_to_head_rec_nth_TCC10|✅ proved - incomplete|shostak|1.415|
|move_to_head_TCC1|✅ proved - complete|shostak|0.070|
|move_to_head_length|✅ proved - incomplete|shostak|0.266|
|move_to_head_car_TCC1|✅ proved - incomplete|shostak|0.070|
|move_to_head_car_TCC2|✅ proved - complete|shostak|0.050|
|move_to_head_car|✅ proved - incomplete|shostak|0.160|
|move_to_head_first_half_TCC1|✅ proved - incomplete|shostak|0.076|
|move_to_head_first_half_TCC2|✅ proved - complete|shostak|0.080|
|move_to_head_first_half|✅ proved - incomplete|shostak|0.260|
|move_to_head_second_half_TCC1|✅ proved - incomplete|shostak|0.050|
|move_to_head_second_half|✅ proved - incomplete|shostak|0.286|
|dl_moveR|✅ proved - incomplete|shostak|0.220|
|dl_moveL|✅ proved - incomplete|shostak|0.236|
|dl_hideR|✅ proved - incomplete|shostak|0.190|
|dl_hideL|✅ proved - incomplete|shostak|0.187|
|dl_boxd|✅ proved - incomplete|shostak|0.090|
|dl_assignb|✅ proved - incomplete|shostak|0.090|
|dl_assignb_restricted|✅ proved - incomplete|shostak|0.090|
|dl_assignd|✅ proved - incomplete|shostak|0.074|
|dl_testb|✅ proved - incomplete|shostak|0.080|
|dl_testb_true|✅ proved - incomplete|shostak|0.050|
|dl_testd|✅ proved - incomplete|shostak|0.090|
|dl_testd_true|✅ proved - incomplete|shostak|0.192|
|dl_choiceb|✅ proved - incomplete|shostak|0.190|
|dl_choiced|✅ proved - incomplete|shostak|0.170|
|dl_composeb|✅ proved - incomplete|shostak|0.132|
|dl_composed|✅ proved - incomplete|shostak|0.130|
|dl_iterateb|✅ proved - incomplete|shostak|0.153|
|dl_iterated|✅ proved - incomplete|shostak|0.240|
|dl_anyb_TCC1|✅ proved - complete|shostak|0.080|
|dl_anyb|✅ proved - incomplete|shostak|0.314|
|dl_anyd|✅ proved - incomplete|shostak|0.151|
|dl_boxand|✅ proved - incomplete|shostak|0.100|
|dl_diamondOr|✅ proved - incomplete|shostak|0.100|
|dl_iteratearrowb|✅ proved - incomplete|shostak|0.194|
|dl_starstarb|✅ proved - incomplete|shostak|0.642|
|dl_iterateIb|✅ proved - incomplete|shostak|0.828|
|dl_impliesallrunsb|✅ proved - incomplete|shostak|0.200|
|dl_impliesallrunsd|✅ proved - incomplete|shostak|0.196|
|dl_distimpliesb|✅ proved - incomplete|shostak|0.161|
|dl_const|✅ proved - incomplete|shostak|0.000|
|dl_constd|✅ proved - incomplete|shostak|0.380|
|dl_V|✅ proved - incomplete|shostak|1.495|
|dl_Vd|✅ proved - incomplete|shostak|1.579|
|dl_bool_const|✅ proved - incomplete|shostak|0.180|
|dl_subr_TCC1|✅ proved - incomplete|shostak|0.182|
|dl_subr|✅ proved - incomplete|shostak|0.264|
|dl_subl|✅ proved - incomplete|shostak|0.280|
|dl_subf|✅ proved - incomplete|shostak|0.316|
|dl_weak_impliesb|✅ proved - incomplete|shostak|0.146|
|dl_weak_impliesd|✅ proved - incomplete|shostak|0.137|
|dl_weak_impliesbE|✅ proved - incomplete|shostak|0.150|
|dl_weak_impliesdE|✅ proved - incomplete|shostak|0.150|
|dl_differential_auxiliary_TCC1|✅ proved - complete|shostak|0.090|
|dl_differential_auxiliary|✅ proved - incomplete|shostak|4.389|
|dl_bounded_loop|✅ proved - incomplete|shostak|0.640|
|dl_loop|✅ proved - incomplete|shostak|0.369|
|dl_MbL|✅ proved - incomplete|shostak|1.489|
|dl_MbR|✅ proved - incomplete|shostak|1.540|
|dl_MdL|✅ proved - incomplete|shostak|1.489|
|dl_MdR|✅ proved - incomplete|shostak|1.287|
|dl_MEbR|✅ proved - incomplete|shostak|1.318|
|dl_MEbRA|✅ proved - incomplete|shostak|0.593|
|dl_discrete_ghost|✅ proved - incomplete|shostak|0.359|
|dl_andb|✅ proved - incomplete|shostak|0.171|
|dl_andf|✅ proved - incomplete|shostak|0.240|
|dl_orb|✅ proved - incomplete|shostak|0.336|
|dl_hide_restR|✅ proved - incomplete|shostak|0.170|
|dl_hide_restL|✅ proved - incomplete|shostak|0.171|
|dl_hide_restLR|✅ proved - incomplete|shostak|0.410|
|dl_commuteEquivR|✅ proved - incomplete|shostak|0.263|
|dl_commuteEquivL|✅ proved - incomplete|shostak|0.230|
|dl_equivifyR|✅ proved - incomplete|shostak|0.318|
|dl_dW|✅ proved - incomplete|shostak|0.280|
|dl_dinit|✅ proved - incomplete|shostak|0.348|
|dl_dI_eq|✅ proved - incomplete|shostak|0.000|
|dl_dI_neq|✅ proved - incomplete|shostak|3.500|
|dl_dI_le|✅ proved - incomplete|shostak|3.046|
|dl_dI_lt|✅ proved - incomplete|shostak|0.000|
|dl_dI_ge|✅ proved - incomplete|shostak|3.036|
|dl_dI_gt|✅ proved - incomplete|shostak|3.357|
|dl_dI_lite|✅ proved - incomplete|shostak|0.000|
|dl_dI|✅ proved - incomplete|shostak|2.050|
|dl_dI_dlTRUE_TCC1|✅ proved - complete|shostak|0.060|
|dl_dI_dlTRUE|✅ proved - incomplete|shostak|0.090|
|dl_dC|✅ proved - incomplete|shostak|0.419|
|dl_differential_ghost_TCC1|✅ proved - complete|shostak|0.087|
|dl_differential_ghost|✅ proved - incomplete|shostak|3.561|

## `more_derivative_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_derivative_props_TCC1|✅ proved - complete|shostak|0.030|
|IMP_derivative_props_TCC2|✅ proved - complete|shostak|0.030|
|deriv_linear_TCC1|✅ proved - incomplete|shostak|0.060|
|deriv_linear|✅ proved - incomplete|shostak|16.515|

## `dl_solution`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|init_zip_sol_TCC1|✅ proved - complete|shostak|0.150|
|init_zip_sol_TCC2|✅ proved - complete|shostak|0.060|
|init_zip_sol_TCC3|✅ proved - complete|shostak|0.165|
|init_zip_sol_TCC4|✅ proved - complete|shostak|0.160|
|init_zip_sol_TCC5|✅ proved - complete|shostak|0.554|
|init_zip_sol_TCC6|✅ proved - complete|shostak|0.230|
|init_zip_sol_TCC7|✅ proved - complete|shostak|0.170|
|init_zip_sol_TCC8|✅ proved - complete|shostak|0.649|
|zip_sol_test_TCC1|✅ proved - incomplete|shostak|0.169|
|zip_sol_test_TCC2|✅ proved - incomplete|shostak|0.050|
|zip_sol_test_TCC3|✅ proved - complete|shostak|0.060|
|zip_sol_test|✅ proved - incomplete|shostak|0.070|
|zs_TCC1|✅ proved - complete|shostak|0.120|
|map_inj_zs|✅ proved - complete|shostak|0.000|
|solution_domain_ax_ode_TCC1|✅ proved - incomplete|shostak|0.050|
|solution_domain_ax_ode|✅ proved - incomplete|shostak|3.884|
|dl_solution_domain_iff|✅ proved - incomplete|shostak|1.395|
|dl_solution_domain|✅ proved - incomplete|shostak|0.070|
|solution_domain_ax_TCC1|✅ proved - complete|shostak|0.050|
|solution_domain_ax_TCC2|✅ proved - complete|shostak|0.130|
|solution_domain_ax|✅ proved - incomplete|shostak|1.232|
|solution_domain_ax_lin|✅ proved - incomplete|shostak|6.483|
|solution_domain_ax_lin_val|✅ proved - incomplete|shostak|0.000|
|solution_domain_ax_quad_TCC1|✅ proved - complete|shostak|0.050|
|solution_domain_ax_quad_TCC2|✅ proved - complete|shostak|0.130|
|solution_domain_ax_quad|✅ proved - incomplete|shostak|0.000|
|get_index_TCC1|✅ proved - complete|shostak|0.059|
|get_index_TCC2|✅ proved - complete|shostak|0.070|
|get_index_TCC3|✅ proved - complete|shostak|0.170|
|get_index_TCC4|✅ proved - complete|shostak|0.050|
|get_index_TCC5|✅ proved - complete|shostak|0.130|
|get_index_TCC6|✅ proved - complete|shostak|0.366|
|cnst_val_0|✅ proved - complete|shostak|0.079|
|cnst_val_com|✅ proved - complete|shostak|0.070|
|val_inj|✅ proved - complete|shostak|0.060|
|in_map_ex_TCC1|✅ proved - complete|shostak|0.070|
|in_map_ex_TCC2|✅ proved - complete|shostak|0.050|
|in_map_ex_TCC3|✅ proved - complete|shostak|0.140|
|in_map_ex_eq|✅ proved - complete|shostak|0.416|
|env_c_val|✅ proved - complete|shostak|0.050|
|get_val_cnst_id_ex_TCC1|✅ proved - complete|shostak|0.227|
|get_val_cnst_id_ex_TCC2|✅ proved - complete|shostak|0.852|
|is_val_not_in_map?_TCC1|✅ proved - complete|shostak|0.613|
|Y_sol_ex_TCC1|✅ proved - complete|shostak|0.848|
|cnst_lins_def|✅ proved - complete|shostak|1.003|
|cnst_lins_sol_TCC1|✅ proved - incomplete|shostak|0.050|
|cnst_lins_sol|✅ proved - incomplete|shostak|27.129|
|cnst_lins_sol_u_TCC1|✅ proved - incomplete|shostak|0.050|
|cnst_lins_sol_u|✅ proved - incomplete|shostak|0.000|
|solution_domain_ax_cnst_imp_zip|✅ proved - incomplete|shostak|0.080|
|solution_domain_ax_cnst_imp_zip_no_hyp|✅ proved - incomplete|shostak|0.733|

## `top_dtl`
No formula declaration found.
## `even_more_list_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|suffix_append|✅ proved - incomplete|shostak|0.843|
|caret_suffix_TCC1|✅ proved - complete|shostak|0.040|
|caret_suffix|✅ proved - incomplete|shostak|0.996|
|rdc_cdr_TCC1|✅ proved - complete|shostak|0.050|
|rdc_cdr_TCC2|✅ proved - complete|shostak|0.040|
|rdc_cdr_TCC3|✅ proved - incomplete|shostak|0.090|
|rdc_cdr|✅ proved - incomplete|shostak|0.305|

## `ltl_expr`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cut_inf_diff_TCC1|✅ proved - incomplete|shostak|0.050|
|cut_inf_diff_TCC2|✅ proved - incomplete|shostak|0.110|
|cut_inf_diff_TCC3|✅ proved - incomplete|shostak|0.040|
|cut_inf_diff_TCC4|✅ proved - incomplete|shostak|0.100|
|cut_state_diff_TCC1|✅ proved - incomplete|shostak|0.050|
|cut_state_diff_TCC2|✅ proved - incomplete|shostak|0.060|
|cut_state_diff_TCC3|✅ proved - incomplete|shostak|0.065|
|cut_state_diff_TCC4|✅ proved - incomplete|shostak|0.110|
|cut_state_diff_TCC5|✅ proved - incomplete|shostak|0.110|
|cut_state_diff_TCC6|✅ proved - incomplete|shostak|0.070|
|cut_state_diff_TCC7|✅ proved - incomplete|shostak|0.210|
|cut_state_diff_TCC8|✅ proved - incomplete|shostak|0.060|
|cut_state_diff_TCC9|✅ proved - incomplete|shostak|0.300|
|cut_state_diff_TCC10|✅ proved - incomplete|shostak|0.355|
|cut_state_zero_TCC1|✅ proved - incomplete|shostak|0.080|
|cut_state_zero|✅ proved - incomplete|shostak|0.501|
|cut_inf_zero_TCC1|✅ proved - incomplete|shostak|0.040|
|cut_inf_zero|✅ proved - incomplete|shostak|0.303|
|ALLRUNS_eq|✅ proved - incomplete|shostak|0.100|
|SOMERUNS_eq|✅ proved - incomplete|shostak|0.090|
|DLGLOBALLY_TCC1|✅ proved - incomplete|shostak|0.070|
|DLGLOBALLY_TCC2|✅ proved - incomplete|shostak|0.075|
|DLGLOBALLY_TCC3|✅ proved - incomplete|shostak|0.070|
|DLEVENTUALLY_TCC1|✅ proved - incomplete|shostak|0.090|
|norm_implies_DLGLOBALLY|✅ proved - incomplete|shostak|0.080|
|DLEVENTUALLY_implies_norm|✅ proved - incomplete|shostak|0.070|
|DLGLOBALLY_FORALL|✅ proved - incomplete|shostak|2.689|
|DLGLOBALLY_append|✅ proved - incomplete|shostak|1.013|
|normDLGLOBALLY_append|✅ proved - incomplete|shostak|0.407|
|DLEVENTUALLY_EXISTS|✅ proved - incomplete|shostak|1.466|
|DLEVENTUALLY_append|✅ proved - incomplete|shostak|1.081|
|normDLEVENTUALLY_append|✅ proved - incomplete|shostak|0.277|
|DLGE_nth_TCC1|✅ proved - incomplete|shostak|0.060|
|DLGE_nth|✅ proved - incomplete|shostak|12.797|
|normDLGE_append|✅ proved - incomplete|shostak|3.286|
|DLEG_nth|✅ proved - incomplete|shostak|0.000|
|normDLEG_append|✅ proved - incomplete|shostak|3.288|

## `trace_semantics`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|wf_trace?_TCC1|✅ proved - incomplete|shostak|0.050|
|finite_trace?_TCC1|✅ proved - incomplete|shostak|0.050|
|wf_append|✅ proved - incomplete|shostak|0.873|
|wf_append_finite|✅ proved - incomplete|shostak|0.537|
|init_env_TCC1|✅ proved - incomplete|shostak|0.070|
|final_env_TCC1|✅ proved - incomplete|shostak|0.100|
|final_env_TCC2|✅ proved - incomplete|shostak|0.070|
|trace_semantic_rel_TCC1|✅ proved - incomplete|shostak|0.090|
|trace_semantic_rel_TCC2|✅ proved - incomplete|shostak|0.080|
|trace_semantic_rel_TCC3|✅ proved - incomplete|shostak|0.077|
|trace_semantic_rel_TCC4|✅ proved - incomplete|shostak|0.180|
|trace_semantic_rel_TCC5|✅ proved - incomplete|shostak|0.110|
|trace_semantic_rel_TCC6|✅ proved - incomplete|shostak|0.140|
|trace_semantic_rel_TCC7|✅ proved - incomplete|shostak|0.166|
|trace_semantic_rel_TCC8|✅ proved - incomplete|shostak|0.190|
|trace_semantic_rel_TCC9|✅ proved - incomplete|shostak|0.180|
|trace_semantic_rel_TCC10|✅ proved - incomplete|shostak|0.190|
|trace_semantic_rel_TCC11|✅ proved - incomplete|shostak|0.190|
|trace_semantic_rel_TCC12|✅ proved - incomplete|shostak|0.208|
|trace_semantic_rel_TCC13|✅ proved - incomplete|shostak|0.200|
|trace_semantic_rel_TCC14|✅ proved - incomplete|shostak|0.200|
|trace_semantic_rel_TCC15|✅ proved - incomplete|shostak|0.216|
|trace_semantic_rel_TCC16|✅ proved - incomplete|shostak|0.220|
|trace_semantics_correct_assign|✅ proved - incomplete|shostak|0.384|
|trace_semantics_correct_diff|✅ proved - incomplete|shostak|1.174|
|trace_semantics_correct_any|✅ proved - incomplete|shostak|0.449|
|trace_semantics_correct_test|✅ proved - incomplete|shostak|0.790|
|trace_semantics_correct_seq|✅ proved - incomplete|shostak|0.715|
|trace_semantics_correct_union|✅ proved - incomplete|shostak|0.152|
|trace_semantics_correct_star|✅ proved - incomplete|shostak|1.276|
|trace_semantics_correct|✅ proved - incomplete|shostak|0.263|
|trace_semantics_complete_assign|✅ proved - incomplete|shostak|0.509|
|trace_semantics_complete_diff|✅ proved - incomplete|shostak|1.586|
|trace_semantics_complete_any|✅ proved - incomplete|shostak|0.469|
|trace_semantics_complete_test|✅ proved - incomplete|shostak|0.358|
|trace_semantics_complete_seq|✅ proved - incomplete|shostak|0.806|
|trace_semantics_complete_union|✅ proved - incomplete|shostak|0.230|
|trace_semantics_complete_star|✅ proved - incomplete|shostak|1.519|
|trace_semantics_complete|✅ proved - incomplete|shostak|0.692|

## `solution_odes_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|diff_odes_shift_TCC1|✅ proved - incomplete|shostak|0.050|
|diff_odes_shift|✅ proved - incomplete|shostak|1.184|
|env_at_t_shift|✅ proved - complete|shostak|0.409|
|solution_odes_shift|✅ proved - incomplete|shostak|2.894|
|diff_odes_cat_hp_TCC1|✅ proved - incomplete|shostak|0.050|
|diff_odes_cat_hp_TCC2|✅ proved - incomplete|shostak|0.000|
|diff_odes_cat_hp_TCC3|✅ proved - incomplete|shostak|0.060|
|diff_odes_cat_hp_TCC4|✅ proved - incomplete|shostak|0.059|
|diff_odes_cat_hp_TCC5|✅ proved - incomplete|shostak|0.140|
|diff_odes_cat_hp|✅ proved - incomplete|shostak|4.588|
|diff_odes_cat_ci_TCC1|✅ proved - incomplete|shostak|0.040|
|diff_odes_cat_ci_TCC2|✅ proved - incomplete|shostak|0.069|
|diff_odes_cat_ci_TCC3|✅ proved - incomplete|shostak|0.090|
|diff_odes_cat_ci_TCC4|✅ proved - incomplete|shostak|0.060|
|diff_odes_cat_ci_TCC5|✅ proved - incomplete|shostak|0.059|
|diff_odes_cat_ci_TCC6|✅ proved - incomplete|shostak|0.100|
|diff_odes_cat_ci_TCC7|✅ proved - incomplete|shostak|0.150|
|diff_odes_cat_ci_TCC8|✅ proved - incomplete|shostak|0.082|
|diff_odes_cat_ci_TCC9|✅ proved - incomplete|shostak|0.170|
|diff_odes_cat_ci_TCC10|✅ proved - incomplete|shostak|0.210|
|diff_odes_cat_ci|✅ proved - incomplete|shostak|9.498|
|der_odes_cat_hp_TCC1|✅ proved - incomplete|shostak|0.140|
|der_odes_cat_hp_TCC2|✅ proved - incomplete|shostak|0.067|
|der_odes_cat_hp_TCC3|✅ proved - incomplete|shostak|0.070|
|der_odes_cat_hp_TCC4|✅ proved - incomplete|shostak|0.070|
|der_odes_cat_hp_TCC5|✅ proved - incomplete|shostak|0.270|
|der_odes_cat_hp|✅ proved - incomplete|shostak|0.770|
|der_odes_cat_ci_TCC1|✅ proved - incomplete|shostak|0.083|
|der_odes_cat_ci_TCC2|✅ proved - incomplete|shostak|0.090|
|der_odes_cat_ci_TCC3|✅ proved - incomplete|shostak|0.550|
|der_odes_cat_ci_TCC4|✅ proved - incomplete|shostak|0.329|
|der_odes_cat_ci_TCC5|✅ proved - incomplete|shostak|0.306|
|der_odes_cat_ci_TCC6|✅ proved - incomplete|shostak|0.190|
|der_odes_cat_ci_TCC7|✅ proved - incomplete|shostak|0.070|
|der_odes_cat_ci_TCC8|✅ proved - incomplete|shostak|0.078|
|der_odes_cat_ci_TCC9|✅ proved - incomplete|shostak|0.200|
|der_odes_cat_ci_TCC10|✅ proved - incomplete|shostak|0.090|
|der_odes_cat_ci_TCC11|✅ proved - incomplete|shostak|0.088|
|der_odes_cat_ci|✅ proved - incomplete|shostak|25.109|
|solution_odes_deriv_at_T_hp_TCC1|✅ proved - incomplete|shostak|0.050|
|solution_odes_deriv_at_T_hp_TCC2|✅ proved - incomplete|shostak|0.083|
|solution_odes_deriv_at_T_hp_TCC3|✅ proved - incomplete|shostak|0.070|
|solution_odes_deriv_at_T_hp_TCC4|✅ proved - incomplete|shostak|0.060|
|solution_odes_deriv_at_T_hp_TCC5|✅ proved - incomplete|shostak|0.181|
|solution_odes_deriv_at_T_hp|✅ proved - incomplete|shostak|0.190|
|solution_odes_deriv_at_T_ci_TCC1|✅ proved - incomplete|shostak|0.066|
|solution_odes_deriv_at_T_ci_TCC2|✅ proved - incomplete|shostak|0.080|
|solution_odes_deriv_at_T_ci_TCC3|✅ proved - incomplete|shostak|0.060|
|solution_odes_deriv_at_T_ci_TCC4|✅ proved - incomplete|shostak|0.066|
|solution_odes_deriv_at_T_ci_TCC5|✅ proved - incomplete|shostak|0.180|
|solution_odes_deriv_at_T_ci_TCC6|✅ proved - incomplete|shostak|0.090|
|solution_odes_deriv_at_T_ci_TCC7|✅ proved - incomplete|shostak|0.080|
|solution_odes_deriv_at_T_ci|✅ proved - incomplete|shostak|0.210|
|solution_odes_hp_conc|✅ proved - incomplete|shostak|0.905|
|solution_odes_ci_conc_TCC1|✅ proved - incomplete|shostak|0.235|
|solution_odes_ci_conc|✅ proved - incomplete|shostak|1.726|
|solution_odes_u_shift|✅ proved - incomplete|shostak|0.000|
|solution_odes_u_init|✅ proved - incomplete|shostak|0.745|

## `temporal_logic`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|norm_DLGLOBALLY|✅ proved - incomplete|shostak|0.060|
|norm_DLEVENTUALLY|✅ proved - incomplete|shostak|0.060|
|norm_DLGE|✅ proved - incomplete|shostak|4.925|
|norm_DLEG|✅ proved - incomplete|shostak|3.269|
|dltl_SEQcap|✅ proved - incomplete|shostak|0.763|
|dltl_SEQcap_con|✅ proved - incomplete|shostak|0.502|
|dltl_SEQcap_dual|✅ proved - incomplete|shostak|1.532|
|dltl_SEQcup|✅ proved - incomplete|shostak|1.887|
|dltl_SEQcup_dual|✅ proved - incomplete|shostak|1.029|
|dltl_SEQcup_dual_con|✅ proved - incomplete|shostak|0.956|
|dltl_SEQtriangleEG|✅ proved - incomplete|shostak|7.228|
|dltl_SEQtriangleGE|✅ proved - incomplete|shostak|0.000|
|dltl_SEQEG_dual|✅ proved - incomplete|shostak|3.166|
|dltl_SEQGE_dual|✅ proved - incomplete|shostak|2.515|
|dltl_choice|✅ proved - incomplete|shostak|0.290|
|dltl_choice_st|✅ proved - incomplete|shostak|0.237|
|dltl_choice_dual|✅ proved - incomplete|shostak|0.170|
|dltl_choice_st_dual|✅ proved - incomplete|shostak|0.170|
|dltl_TESTcap_eq|✅ proved - incomplete|shostak|0.542|
|dltl_TESTcap_eq_dual|✅ proved - incomplete|shostak|0.579|
|dltl_TESTcup_eq|✅ proved - incomplete|shostak|0.550|
|dltl_TESTcup_eq_dual|✅ proved - incomplete|shostak|0.537|
|dltl_TESTEG_eq|✅ proved - incomplete|shostak|0.447|
|dltl_TESTEG_eq_dual|✅ proved - incomplete|shostak|0.466|
|dltl_TESTGE_eq|✅ proved - incomplete|shostak|0.419|
|dltl_TESTGE_eq_dual|✅ proved - incomplete|shostak|0.402|
|dltl_ASSIGNcap|✅ proved - incomplete|shostak|1.601|
|dltl_ASSIGNcap_dual|✅ proved - incomplete|shostak|0.853|
|dltl_ASSIGNcup|✅ proved - incomplete|shostak|0.591|
|dltl_ASSIGNcup_dual|✅ proved - incomplete|shostak|1.133|
|dltl_ASSIGNEG|✅ proved - incomplete|shostak|0.290|
|dltl_ASSIGNGE|✅ proved - incomplete|shostak|0.303|
|dltl_ASSIGNEG_dual|✅ proved - incomplete|shostak|0.253|
|dltl_ASSIGNGE_dual|✅ proved - incomplete|shostak|0.250|
|dltl_DIFFcap|✅ proved - incomplete|shostak|2.314|
|dltl_DIFFcap_eq|✅ proved - incomplete|shostak|1.413|
|dltl_DIFFcap_eq_dual_TCC1|✅ proved - incomplete|shostak|0.050|
|dltl_DIFFcap_eq_dual|✅ proved - incomplete|shostak|0.000|
|dltl_DIFFcup_eq|✅ proved - incomplete|shostak|6.041|
|dltl_DIFFcup_dual|✅ proved - incomplete|shostak|2.463|
|dltl_DIFFcup_dual_eq|✅ proved - incomplete|shostak|1.877|
|dltl_DIFFEG_eq|✅ proved - incomplete|shostak|0.000|
|dltl_DIFFEG_dual_eq|✅ proved - incomplete|shostak|8.637|
|dltl_DIFFGE_eq|✅ proved - incomplete|shostak|0.000|
|dltl_DIFFGE_dual_eq|✅ proved - incomplete|shostak|7.997|
|dltl_BSTARcap_eq|✅ proved - incomplete|shostak|0.000|
|dltl_STARcap_eq|✅ proved - incomplete|shostak|0.180|
|dltl_STARcup_dual|✅ proved - incomplete|shostak|1.607|
|dltl_STARcup|✅ proved - incomplete|shostak|1.488|
|dltl_STARcap_dual|✅ proved - incomplete|shostak|1.334|
|dltl_BSTARindcup|✅ proved - incomplete|shostak|2.395|
|dltl_STARindcup|✅ proved - incomplete|shostak|0.271|
|dltl_BSTAREG_dual|✅ proved - incomplete|shostak|0.000|
|dltl_BSTARGE_dual|✅ proved - incomplete|shostak|7.817|
|dltl_STAREG_dual|✅ proved - incomplete|shostak|1.323|
|dltl_STARGE_dual|✅ proved - incomplete|shostak|1.123|
|dltl_STAREG|✅ proved - incomplete|shostak|2.347|
|dltl_STARGE|✅ proved - incomplete|shostak|2.276|
|dltl_STARconcap|✅ proved - incomplete|shostak|0.000|
|ALLRUNS_st_imp|✅ proved - incomplete|shostak|0.070|
|ALLRUNS_st_finite_equiv|✅ proved - incomplete|shostak|0.060|

## `trace_bounded_star_semantics`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|trace_semantic_rel_bounded_star_TCC1|✅ proved - complete|shostak|0.033|
|trace_semantic_rel_bounded_star_TCC2|✅ proved - incomplete|shostak|0.090|
|trace_semantic_rel_bounded_star_TCC3|✅ proved - incomplete|shostak|0.130|
|trace_semantic_rel_bounded_star_TCC4|✅ proved - incomplete|shostak|0.130|
|trace_semantic_rel_bounded_star_TCC5|✅ proved - incomplete|shostak|0.195|
|trace_semantic_rel_bounded_star_TCC6|✅ proved - incomplete|shostak|0.120|
|trace_semantic_rel_bounded_star_TCC7|✅ proved - incomplete|shostak|0.120|
|trace_semantic_rel_bounded_star_TCC8|✅ proved - incomplete|shostak|0.100|
|trace_semantic_rel_bounded_star_TCC9|✅ proved - incomplete|shostak|0.082|
|trace_semantic_rel_bounded_star_inc|✅ proved - incomplete|shostak|1.219|
|trace_semantic_rel_implies_bounded|✅ proved - incomplete|shostak|0.817|
|bounded_implies_trace_semantic_rel|✅ proved - incomplete|shostak|1.289|
|trace_semantic_rel_bstar_reflexive|✅ proved - incomplete|shostak|0.190|
|trace_semantic_rel_bounded_bstar_trace_semantic_rel_bstar|✅ proved - incomplete|shostak|0.589|
|trace_semantic_rel_star_bounded_star|✅ proved - incomplete|shostak|0.060|
|trace_semantic_rel_star_bounded_star_con|✅ proved - incomplete|shostak|0.535|
|allruns_st_star|✅ proved - incomplete|shostak|0.090|
|someruns_st_star|✅ proved - incomplete|shostak|0.097|
|allruns_tr_star|✅ proved - incomplete|shostak|0.100|
|someruns_tr_star|✅ proved - incomplete|shostak|0.090|
|trace_semantic_rel_star_seq|✅ proved - incomplete|shostak|0.176|
|trace_semantic_rel_bounded_star_seq_switch_glob|✅ proved - incomplete|shostak|9.901|
|trace_semantic_rel_bounded_star_seq_switch_even|✅ proved - incomplete|shostak|9.235|
|trace_semantic_rel_bounded_star_seq_switch_ge|✅ proved - incomplete|shostak|0.000|
|trace_semantic_rel_bounded_star_seq_switch_eg|✅ proved - incomplete|shostak|7.104|
|trace_semantic_rel_bounded_star_seq_switch_glob_con|✅ proved - incomplete|shostak|5.796|
|trace_semantic_rel_bounded_star_seq_switch_ge_con|✅ proved - incomplete|shostak|4.029|
|trace_semantic_rel_bounded_star_seq_switch_eg_con|✅ proved - incomplete|shostak|4.046|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/PVS-7.1/nasalib/`<br/>`/home/cmunoz/local/PVS-7.1/lib/`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/float/`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvsio_utils/`|
| Loaded Patches | `/home/cmunoz/.pvs.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20230712-static-update.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20230710-tcc-gen.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20230707-defattach.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20230706-extrategies.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/home/cmunoz/local/PVS-7.1/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`|
