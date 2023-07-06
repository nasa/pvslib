# Summary for `ODEs`
Run started at 8:34:8 7/4/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **545**   | **545**    | **545**    | **0**  | **9:9.552 s**   |
|top|0|0|0|0|0.000|
|r2v_def|23|23|23|0|3.976|
|exp_analysis|21|21|21|0|8.239|
|interval_def|15|15|15|0|3.337|
|r2v_analysis|75|75|75|0|19.547|
|r2v_continuous_extension|30|30|30|0|7.736|
|r2v_diff_extension|36|36|36|0|48.514|
|r2v_sequence_convergence|27|27|27|0|9.386|
|metric_rho|13|13|13|0|41.644|
|continuous_function_complete_rho|5|5|5|0|34.538|
|ODE_def|14|14|14|0|1.719|
|ODE_Lipschitz_def|17|17|17|0|5.020|
|ODE_continuous_def|23|23|23|0|21.368|
|norm_ineq|30|30|30|0|7.443|
|ODE_psi_def|11|11|11|0|5.368|
|ODE_psi_contraction|64|64|64|0|4:19.645|
|ODE_solution_existence_uniqueness|87|87|87|0|46.854|
|restrict_ode|20|20|20|0|2.639|
|linear_ode_1D|34|34|34|0|22.579|
## Detailed Summary 
## `top`
No formula declaration found.
## `r2v_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|r2v_n_r2v|✅ proved - incomplete|shostak|0.000|
|length_TCC1|✅ proved - incomplete|shostak|0.040|
|length_x|✅ proved - incomplete|shostak|0.050|
|nth_TCC1|✅ proved - incomplete|shostak|0.050|
|null_cons|✅ proved - incomplete|shostak|0.110|
|length_null|✅ proved - incomplete|shostak|0.100|
|length_cons|✅ proved - incomplete|shostak|0.119|
|car_TCC1|✅ proved - incomplete|shostak|0.060|
|cdr_TCC1|✅ proved - incomplete|shostak|0.130|
|cons_TCC1|✅ proved - incomplete|shostak|0.069|
|length_cdr|✅ proved - incomplete|shostak|0.110|
|nth_car_TCC1|✅ proved - incomplete|shostak|0.040|
|nth_car|✅ proved - incomplete|shostak|0.050|
|nth_cdr_TCC1|✅ proved - incomplete|shostak|0.080|
|nth_cdr|✅ proved - incomplete|shostak|0.046|
|nth_equal_TCC1|✅ proved - incomplete|shostak|0.070|
|nth_equal|✅ proved - incomplete|shostak|0.632|
|plusr2v_TCC1|✅ proved - incomplete|shostak|0.110|
|nth_add_TCC1|✅ proved - incomplete|shostak|0.050|
|nth_add|✅ proved - incomplete|shostak|0.222|
|subr2v_TCC1|✅ proved - incomplete|shostak|0.140|
|nth_sub_TCC1|✅ proved - incomplete|shostak|0.517|
|nth_sub|✅ proved - incomplete|shostak|1.181|

## `exp_analysis`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|deriv_domain_exp_a|✅ proved - complete|shostak|0.402|
|IMP_chain_rule_TCC1|✅ proved - complete|shostak|0.412|
|IMP_chain_rule_TCC2|✅ proved - complete|shostak|0.030|
|IMP_chain_rule_TCC3|✅ proved - complete|shostak|0.120|
|IMP_chain_rule_TCC4|✅ proved - complete|shostak|0.040|
|IMP_fundamental_theorem_TCC1|✅ proved - complete|shostak|0.048|
|IMP_fundamental_theorem_TCC2|✅ proved - complete|shostak|0.040|
|derivable_exp_lin|✅ proved - incomplete|shostak|0.470|
|deriv_exp_lin_TCC1|✅ proved - incomplete|shostak|0.030|
|deriv_exp_lin|✅ proved - incomplete|shostak|1.961|
|derivable_exp_lin_r|✅ proved - incomplete|shostak|0.340|
|deriv_exp_lin_r_TCC1|✅ proved - incomplete|shostak|0.368|
|deriv_exp_lin_r|✅ proved - incomplete|shostak|0.535|
|cont_exp_lin|✅ proved - incomplete|shostak|0.556|
|deriv_Int_lin_TCC1|✅ proved - incomplete|shostak|0.164|
|deriv_Int_lin|✅ proved - incomplete|shostak|0.387|
|derivable_exp_ln_TCC1|✅ proved - complete|shostak|0.050|
|derivable_exp_ln|✅ proved - incomplete|shostak|0.287|
|deriv_exp_ln_TCC1|✅ proved - incomplete|shostak|0.040|
|deriv_exp_ln_TCC2|✅ proved - complete|shostak|0.050|
|deriv_exp_ln|✅ proved - incomplete|shostak|1.909|

## `interval_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|closed_interval_TCC1|✅ proved - complete|shostak|0.033|
|ci_ci|✅ proved - complete|shostak|0.050|
|ci_nonempty|✅ proved - complete|shostak|0.040|
|ci_connected|✅ proved - complete|shostak|0.060|
|ci_not_one_element|✅ proved - complete|shostak|0.056|
|ci_deriv_domain|✅ proved - complete|shostak|0.441|
|ci_closed_D_TCC1|✅ proved - incomplete|shostak|0.050|
|ci_closed_D|✅ proved - incomplete|shostak|1.675|
|ci_bounded_D|✅ proved - incomplete|shostak|0.484|
|ci_nonempty_D|✅ proved - incomplete|shostak|0.060|
|d_three|✅ proved - incomplete|shostak|0.040|
|hp_noe|✅ proved - complete|shostak|0.088|
|hp_dd|✅ proved - complete|shostak|0.180|
|hp_con|✅ proved - complete|shostak|0.040|
|hp_ne|✅ proved - complete|shostak|0.040|

## `r2v_analysis`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|deriv_domain|✅ proved - complete|shostak|0.000|
|IMP_fundamental_theorem_TCC1|✅ proved - complete|shostak|0.040|
|IMP_fundamental_theorem_TCC2|✅ proved - complete|shostak|0.023|
|IMP_fundamental_theorem_TCC3|✅ proved - complete|shostak|0.040|
|IMP_r2v_def_TCC1|✅ proved - complete|shostak|0.030|
|derivable?_TCC1|✅ proved - incomplete|shostak|0.540|
|deriv_TCC1|✅ proved - incomplete|shostak|0.050|
|deriv_TCC2|✅ proved - incomplete|shostak|0.040|
|deriv_TCC3|✅ proved - incomplete|shostak|0.070|
|deriv_TCC4|✅ proved - incomplete|shostak|0.040|
|deriv_TCC5|✅ proved - incomplete|shostak|0.120|
|deriv_TCC6|✅ proved - incomplete|shostak|0.072|
|deriv_TCC7|✅ proved - incomplete|shostak|0.190|
|deriv_nth_TCC1|✅ proved - incomplete|shostak|0.040|
|deriv_nth_TCC2|✅ proved - incomplete|shostak|0.040|
|deriv_nth|✅ proved - incomplete|shostak|0.645|
|integrable?_TCC1|✅ proved - incomplete|shostak|0.030|
|integral_TCC1|✅ proved - incomplete|shostak|0.040|
|integral_TCC2|✅ proved - incomplete|shostak|0.061|
|integral_TCC3|✅ proved - incomplete|shostak|0.040|
|integral_TCC4|✅ proved - incomplete|shostak|0.070|
|integral_TCC5|✅ proved - incomplete|shostak|0.120|
|integral_TCC6|✅ proved - incomplete|shostak|0.091|
|integral_TCC7|✅ proved - incomplete|shostak|0.130|
|int_nth_TCC1|✅ proved - incomplete|shostak|0.400|
|int_nth_TCC2|✅ proved - incomplete|shostak|0.469|
|int_nth|✅ proved - incomplete|shostak|0.524|
|Integral_TCC1|✅ proved - incomplete|shostak|0.050|
|Integral_TCC2|✅ proved - incomplete|shostak|0.050|
|Integral_TCC3|✅ proved - incomplete|shostak|0.060|
|Integral_TCC4|✅ proved - incomplete|shostak|0.132|
|Integral_TCC5|✅ proved - incomplete|shostak|0.090|
|Integral_TCC6|✅ proved - incomplete|shostak|0.110|
|Int_nth_TCC1|✅ proved - incomplete|shostak|0.411|
|Int_nth_TCC2|✅ proved - incomplete|shostak|0.738|
|Int_nth|✅ proved - incomplete|shostak|0.448|
|Int_zero_TCC1|✅ proved - incomplete|shostak|0.060|
|Int_zero|✅ proved - incomplete|shostak|0.098|
|Int_int_TCC1|✅ proved - incomplete|shostak|0.505|
|Int_int|✅ proved - incomplete|shostak|0.130|
|Integrable_sum|✅ proved - incomplete|shostak|0.243|
|Int_sum_TCC1|✅ proved - incomplete|shostak|0.030|
|Int_sum|✅ proved - incomplete|shostak|2.299|
|Integrable_diff|✅ proved - incomplete|shostak|0.194|
|Int_diff_TCC1|✅ proved - incomplete|shostak|0.030|
|Int_diff|✅ proved - incomplete|shostak|0.872|
|Integrable_const_TCC1|✅ proved - incomplete|shostak|0.060|
|Integrable_const|✅ proved - incomplete|shostak|0.445|
|Integral_const_TCC1|✅ proved - incomplete|shostak|0.071|
|Integral_const|✅ proved - incomplete|shostak|1.134|
|cont_entry_v_TCC1|✅ proved - incomplete|shostak|0.131|
|cont_entry_v_TCC2|✅ proved - incomplete|shostak|0.130|
|cont_entry_v_TCC3|✅ proved - incomplete|shostak|0.050|
|cont_entry_v_TCC4|✅ proved - incomplete|shostak|0.050|
|cont_entry_v_TCC5|✅ proved - incomplete|shostak|0.040|
|cont_entry_v|✅ proved - incomplete|shostak|2.383|
|cont_v_entry_TCC1|✅ proved - incomplete|shostak|0.050|
|cont_v_entry_TCC2|✅ proved - incomplete|shostak|0.054|
|cont_v_entry_TCC3|✅ proved - incomplete|shostak|0.040|
|cont_v_entry_TCC4|✅ proved - incomplete|shostak|0.060|
|cont_v_entry_TCC5|✅ proved - incomplete|shostak|0.040|
|cont_v_entry|✅ proved - incomplete|shostak|1.045|
|cont_triv_TCC1|✅ proved - incomplete|shostak|0.050|
|cont_triv_TCC2|✅ proved - incomplete|shostak|0.040|
|cont_triv|✅ proved - incomplete|shostak|0.050|
|cont_nn_comp_TCC1|✅ proved - incomplete|shostak|0.170|
|cont_nn_comp|✅ proved - incomplete|shostak|0.560|
|cont_sub_TCC1|✅ proved - incomplete|shostak|0.339|
|cont_sub|✅ proved - incomplete|shostak|1.132|
|cont_int|✅ proved - incomplete|shostak|0.099|
|cont_Int|✅ proved - incomplete|shostak|0.080|
|Int_cont_TCC1|✅ proved - incomplete|shostak|0.048|
|Int_cont_TCC2|✅ proved - incomplete|shostak|0.070|
|Int_cont|✅ proved - incomplete|shostak|0.561|
|der_cont|✅ proved - incomplete|shostak|0.060|

## `r2v_continuous_extension`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_r2v_analysis_TCC1|✅ proved - complete|shostak|0.040|
|IMP_r2v_analysis_TCC2|✅ proved - complete|shostak|0.040|
|IMP_r2v_analysis_TCC3|✅ proved - complete|shostak|0.040|
|d_b_TCC1|✅ proved - incomplete|shostak|0.060|
|d_b_TCC2|✅ proved - incomplete|shostak|0.090|
|d_b_TCC3|✅ proved - incomplete|shostak|0.120|
|ext_c_TCC1|✅ proved - incomplete|shostak|0.060|
|ext_c_TCC2|✅ proved - incomplete|shostak|0.050|
|ext_c_TCC3|✅ proved - incomplete|shostak|0.110|
|ext_c_TCC4|✅ proved - incomplete|shostak|0.060|
|ext_c_TCC5|✅ proved - incomplete|shostak|0.060|
|ext_c_TCC6|✅ proved - incomplete|shostak|0.080|
|ext_cont_TCC1|✅ proved - incomplete|shostak|0.090|
|ext_cont_TCC2|✅ proved - incomplete|shostak|0.060|
|ext_cont_TCC3|✅ proved - incomplete|shostak|0.060|
|ext_cont_TCC4|✅ proved - incomplete|shostak|0.090|
|ext_cont|✅ proved - incomplete|shostak|2.946|
|ext_c_TCC7|✅ proved - incomplete|shostak|0.050|
|ext_c_TCC8|✅ proved - incomplete|shostak|0.040|
|ext_c_TCC9|✅ proved - incomplete|shostak|0.050|
|ext_c_TCC10|✅ proved - incomplete|shostak|0.100|
|ext_c_TCC11|✅ proved - incomplete|shostak|0.060|
|ext_c_TCC12|✅ proved - incomplete|shostak|0.050|
|ext_c_TCC13|✅ proved - incomplete|shostak|0.070|
|ext_const|✅ proved - incomplete|shostak|0.207|
|ext_cont_r|✅ proved - incomplete|shostak|2.411|
|ext_cont_D_TCC1|✅ proved - incomplete|shostak|0.100|
|ext_cont_D|✅ proved - incomplete|shostak|0.000|
|ext_plus|✅ proved - incomplete|shostak|0.382|
|ext_ineq|✅ proved - incomplete|shostak|0.160|

## `r2v_diff_extension`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_r2v_continuous_extension_TCC1|✅ proved - complete|shostak|0.040|
|ext_derivable_lb_TCC1|✅ proved - complete|shostak|0.050|
|ext_derivable_lb_TCC2|✅ proved - complete|shostak|0.060|
|ext_derivable_lb_TCC3|✅ proved - incomplete|shostak|0.150|
|ext_derivable_lb_TCC4|✅ proved - incomplete|shostak|0.148|
|ext_derivable_lb_TCC5|✅ proved - incomplete|shostak|0.110|
|ext_derivable_lb_TCC6|✅ proved - incomplete|shostak|0.140|
|ext_derivable_lb_TCC7|✅ proved - incomplete|shostak|0.060|
|ext_derivable_lb_TCC8|✅ proved - incomplete|shostak|0.228|
|ext_derivable_lb_TCC9|✅ proved - incomplete|shostak|0.110|
|ext_derivable_lb|✅ proved - incomplete|shostak|4.641|
|ext_deriv_lb_TCC1|✅ proved - incomplete|shostak|0.150|
|ext_deriv_lb_TCC2|✅ proved - incomplete|shostak|0.290|
|ext_deriv_lb|✅ proved - incomplete|shostak|7.669|
|ext_derivable_ub_TCC1|✅ proved - incomplete|shostak|0.205|
|ext_derivable_ub|✅ proved - incomplete|shostak|4.368|
|ext_deriv_ub_TCC1|✅ proved - incomplete|shostak|0.150|
|ext_deriv_ub_TCC2|✅ proved - incomplete|shostak|0.300|
|ext_deriv_ub|✅ proved - incomplete|shostak|8.647|
|ext_derivable_int_TCC1|✅ proved - incomplete|shostak|0.110|
|ext_derivable_int|✅ proved - incomplete|shostak|0.000|
|ext_deriv_int_TCC1|✅ proved - incomplete|shostak|0.150|
|ext_deriv_int_TCC2|✅ proved - incomplete|shostak|0.122|
|ext_deriv_int|✅ proved - incomplete|shostak|9.247|
|ext_derivable_ext_TCC1|✅ proved - incomplete|shostak|0.110|
|ext_derivable_ext|✅ proved - incomplete|shostak|3.417|
|ext_deriv_extl_TCC1|✅ proved - incomplete|shostak|0.158|
|ext_deriv_extl|✅ proved - incomplete|shostak|5.988|
|ext_deriv_extu_TCC1|✅ proved - incomplete|shostak|0.100|
|ext_deriv_extu_TCC2|✅ proved - incomplete|shostak|0.160|
|ext_deriv_extu|✅ proved - incomplete|shostak|0.000|
|ext_d_TCC1|✅ proved - incomplete|shostak|0.145|
|ext_d_TCC2|✅ proved - incomplete|shostak|0.050|
|ext_d_TCC3|✅ proved - incomplete|shostak|0.050|
|ext_d_TCC4|✅ proved - incomplete|shostak|0.311|
|ext_d_TCC5|✅ proved - incomplete|shostak|0.880|

## `r2v_sequence_convergence`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_r2v_analysis_TCC1|✅ proved - complete|shostak|0.030|
|IMP_r2v_analysis_TCC2|✅ proved - complete|shostak|0.030|
|IMP_r2v_analysis_TCC3|✅ proved - complete|shostak|0.030|
|conv_pw?_TCC1|✅ proved - incomplete|shostak|0.087|
|conv_pw?_TCC2|✅ proved - incomplete|shostak|0.070|
|conv_pw?_TCC3|✅ proved - incomplete|shostak|0.080|
|conv_pw?_TCC4|✅ proved - incomplete|shostak|0.070|
|cauchy_pw?_TCC1|✅ proved - incomplete|shostak|0.072|
|cauchy_conv_pw|✅ proved - incomplete|shostak|0.306|
|conv_u?_TCC1|✅ proved - incomplete|shostak|0.080|
|conv_u?_TCC2|✅ proved - incomplete|shostak|0.145|
|conv_u?_TCC3|✅ proved - incomplete|shostak|0.070|
|cauchy_u?_TCC1|✅ proved - incomplete|shostak|0.194|
|conv_pw_equiv|✅ proved - incomplete|shostak|1.701|
|cauchy_pw_equiv|✅ proved - incomplete|shostak|0.500|
|conv_u_equiv_TCC1|✅ proved - incomplete|shostak|0.082|
|conv_u_equiv|✅ proved - incomplete|shostak|1.164|
|cauchy_u_equiv|✅ proved - incomplete|shostak|1.589|
|cauchy_u_pw|✅ proved - incomplete|shostak|0.100|
|cauchy_u_conv_pw|✅ proved - incomplete|shostak|0.040|
|K_epsn|✅ proved - complete|shostak|0.069|
|norm_conv_bound_TCC1|✅ proved - incomplete|shostak|0.060|
|norm_conv_bound_TCC2|✅ proved - incomplete|shostak|0.140|
|norm_conv_bound_TCC3|✅ proved - incomplete|shostak|0.162|
|norm_conv_bound|✅ proved - incomplete|shostak|2.252|
|cauchy_u_conv_u|✅ proved - incomplete|shostak|0.263|
|conv_u_cont|✅ proved - incomplete|shostak|0.000|

## `metric_rho`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_r2v_continuous_extension_TCC1|✅ proved - complete|shostak|0.040|
|pre_rho_TCC1|✅ proved - incomplete|shostak|0.080|
|pre_rho_TCC2|✅ proved - incomplete|shostak|0.123|
|pre_rho_cont|✅ proved - incomplete|shostak|15.483|
|pre_rho_cont_D_TCC1|✅ proved - incomplete|shostak|0.160|
|pre_rho_cont_D|✅ proved - incomplete|shostak|0.000|
|rho_TCC1|✅ proved - incomplete|shostak|2.182|
|rho_TCC2|✅ proved - incomplete|shostak|0.060|
|rho_TCC3|✅ proved - incomplete|shostak|0.867|
|rho_zero|✅ proved - incomplete|shostak|6.474|
|rho_symmetric|✅ proved - incomplete|shostak|5.027|
|rho_triangle|✅ proved - incomplete|shostak|11.078|
|rho_metric|✅ proved - incomplete|shostak|0.070|

## `continuous_function_complete_rho`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_metric_rho_TCC1|✅ proved - complete|shostak|0.030|
|IMP_r2v_sequence_convergence_TCC1|✅ proved - complete|shostak|0.040|
|IMP_r2v_sequence_convergence_TCC2|✅ proved - complete|shostak|0.040|
|IMP_r2v_sequence_convergence_TCC3|✅ proved - complete|shostak|0.040|
|Cfs_complete|✅ proved - incomplete|shostak|34.388|

## `ODE_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_r2v_analysis_TCC1|✅ proved - complete|shostak|0.030|
|IMP_r2v_analysis_TCC2|✅ proved - complete|shostak|0.030|
|IMP_r2v_analysis_TCC3|✅ proved - complete|shostak|0.030|
|IMP_derivatives_def_TCC1|✅ proved - complete|shostak|0.040|
|od_fx_TCC1|✅ proved - incomplete|shostak|0.060|
|nth_od_fx_TCC1|✅ proved - incomplete|shostak|0.060|
|nth_od_fx_TCC2|✅ proved - incomplete|shostak|0.061|
|nth_od_fx|✅ proved - incomplete|shostak|0.280|
|od_sol?_TCC1|✅ proved - incomplete|shostak|0.037|
|od_sol_nth_TCC1|✅ proved - incomplete|shostak|0.285|
|od_sol_nth_TCC2|✅ proved - incomplete|shostak|0.374|
|od_sol_nth|✅ proved - incomplete|shostak|0.212|
|od_sol?_TCC2|✅ proved - incomplete|shostak|0.110|
|od_sol?_TCC3|✅ proved - incomplete|shostak|0.110|

## `ODE_Lipschitz_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_ODE_def_TCC1|✅ proved - complete|shostak|0.030|
|IMP_ODE_def_TCC2|✅ proved - complete|shostak|0.032|
|IMP_ODE_def_TCC3|✅ proved - complete|shostak|0.030|
|Lip_d?_TCC1|✅ proved - incomplete|shostak|0.100|
|Lip_d?_TCC2|✅ proved - incomplete|shostak|0.100|
|Lip_norm_od_f|✅ proved - incomplete|shostak|0.572|
|Lip_entry?_TCC1|✅ proved - incomplete|shostak|0.080|
|Lip_entry?_TCC2|✅ proved - incomplete|shostak|0.090|
|Lip_entry?_TCC3|✅ proved - incomplete|shostak|0.100|
|Lip_entry_c_TCC1|✅ proved - incomplete|shostak|0.110|
|Lip_entry_c_TCC2|✅ proved - incomplete|shostak|0.120|
|Lip_entry_c_TCC3|✅ proved - incomplete|shostak|0.102|
|Lip_entry_c_TCC4|✅ proved - incomplete|shostak|1.719|
|Lip_entry_equiv|✅ proved - incomplete|shostak|1.340|
|Lip_c_TCC1|✅ proved - incomplete|shostak|0.106|
|Lip_c_TCC2|✅ proved - incomplete|shostak|0.090|
|Lip_c_TCC3|✅ proved - incomplete|shostak|0.299|

## `ODE_continuous_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_ODE_Lipschitz_def_TCC1|✅ proved - complete|shostak|0.030|
|IMP_ODE_Lipschitz_def_TCC2|✅ proved - complete|shostak|0.030|
|IMP_ODE_Lipschitz_def_TCC3|✅ proved - complete|shostak|0.032|
|cont_d?_TCC1|✅ proved - incomplete|shostak|0.060|
|cont_d?_TCC2|✅ proved - incomplete|shostak|0.060|
|cont_d?_TCC3|✅ proved - complete|shostak|0.040|
|cont_Lip_2ndv_TCC1|✅ proved - incomplete|shostak|0.090|
|cont_Lip_2ndv|✅ proved - incomplete|shostak|0.588|
|cont_Lip_bothv_TCC1|✅ proved - incomplete|shostak|0.220|
|cont_Lip_bothv_TCC2|✅ proved - incomplete|shostak|0.237|
|cont_Lip_bothv_TCC3|✅ proved - incomplete|shostak|0.140|
|cont_Lip_bothv_TCC4|✅ proved - incomplete|shostak|0.060|
|cont_Lip_bothv|✅ proved - incomplete|shostak|13.054|
|cont_Lip_bothR_TCC1|✅ proved - incomplete|shostak|0.271|
|cont_Lip_bothR_TCC2|✅ proved - incomplete|shostak|0.280|
|cont_Lip_bothR_TCC3|✅ proved - incomplete|shostak|0.160|
|cont_Lip_bothR|✅ proved - incomplete|shostak|1.316|
|cont_Lip_norm_TCC1|✅ proved - incomplete|shostak|0.160|
|cont_Lip_norm|✅ proved - incomplete|shostak|1.509|
|cont_od_fx|✅ proved - incomplete|shostak|1.379|
|Int_od_fx|✅ proved - incomplete|shostak|0.060|
|cont_Lip_real_TCC1|✅ proved - incomplete|shostak|0.319|
|cont_Lip_real|✅ proved - incomplete|shostak|1.273|

## `norm_ineq`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_ODE_continuous_def_TCC1|✅ proved - complete|shostak|0.030|
|IMP_ODE_continuous_def_TCC2|✅ proved - complete|shostak|0.030|
|IMP_ODE_continuous_def_TCC3|✅ proved - complete|shostak|0.030|
|int_od_fx|✅ proved - incomplete|shostak|0.080|
|int_norm_od_fx_TCC1|✅ proved - incomplete|shostak|0.080|
|int_norm_od_fx_TCC2|✅ proved - incomplete|shostak|0.327|
|int_norm_od_fx|✅ proved - incomplete|shostak|0.130|
|norminf_int_TCC1|✅ proved - incomplete|shostak|0.030|
|norminf_int_TCC2|✅ proved - incomplete|shostak|0.086|
|norminf_int_TCC3|✅ proved - incomplete|shostak|0.030|
|norminf_int|✅ proved - incomplete|shostak|4.425|
|norminf_Int_TCC1|✅ proved - incomplete|shostak|0.088|
|norminf_Int_TCC2|✅ proved - incomplete|shostak|0.360|
|norminf_Int_TCC3|✅ proved - incomplete|shostak|0.334|
|norminf_Int_TCC4|✅ proved - incomplete|shostak|0.061|
|norminf_Int|✅ proved - incomplete|shostak|0.130|
|int_norm_cont_TCC1|✅ proved - incomplete|shostak|0.050|
|int_norm_cont_TCC2|✅ proved - incomplete|shostak|0.143|
|int_norm_cont|✅ proved - incomplete|shostak|0.110|
|normi_TCC1|✅ proved - incomplete|shostak|0.040|
|normi_TCC2|✅ proved - incomplete|shostak|0.054|
|normi_TCC3|✅ proved - incomplete|shostak|0.070|
|normi_TCC4|✅ proved - incomplete|shostak|0.150|
|normi_TCC5|✅ proved - incomplete|shostak|0.050|
|normi|✅ proved - incomplete|shostak|0.000|
|normI_TCC1|✅ proved - incomplete|shostak|0.050|
|normI_TCC2|✅ proved - incomplete|shostak|0.070|
|normI_TCC3|✅ proved - incomplete|shostak|0.147|
|normI_TCC4|✅ proved - incomplete|shostak|0.060|
|normI|✅ proved - incomplete|shostak|0.198|

## `ODE_psi_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_ODE_def_TCC1|✅ proved - complete|shostak|0.030|
|IMP_ODE_def_TCC2|✅ proved - complete|shostak|0.030|
|IMP_ODE_def_TCC3|✅ proved - complete|shostak|0.030|
|psi_TCC1|✅ proved - incomplete|shostak|0.060|
|psi_TCC2|✅ proved - incomplete|shostak|0.218|
|psi_TCC3|✅ proved - incomplete|shostak|0.130|
|psi_init|✅ proved - incomplete|shostak|0.112|
|psi_derivable|✅ proved - incomplete|shostak|2.112|
|psi_cont|✅ proved - incomplete|shostak|0.106|
|psi_deriv_TCC1|✅ proved - incomplete|shostak|0.030|
|psi_deriv|✅ proved - incomplete|shostak|2.510|

## `ODE_psi_contraction`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_exp_analysis_TCC1|✅ proved - complete|shostak|0.030|
|IMP_exp_analysis_TCC2|✅ proved - complete|shostak|0.040|
|IMP_exp_analysis_TCC3|✅ proved - complete|shostak|0.030|
|IMP_metric_rho_TCC1|✅ proved - complete|shostak|0.040|
|od_fx_diff_Int_TCC1|✅ proved - incomplete|shostak|0.486|
|od_fx_diff_Int_TCC2|✅ proved - incomplete|shostak|0.048|
|od_fx_diff_Int|✅ proved - incomplete|shostak|0.220|
|od_fx_contD_diff_TCC1|✅ proved - incomplete|shostak|0.481|
|od_fx_contD_diff_TCC2|✅ proved - incomplete|shostak|0.070|
|od_fx_contD_diff_TCC3|✅ proved - incomplete|shostak|0.290|
|od_fx_contD_diff|✅ proved - incomplete|shostak|9.663|
|rho_psi_int_TCC1|✅ proved - incomplete|shostak|0.054|
|rho_psi_int_TCC2|✅ proved - incomplete|shostak|0.060|
|rho_psi_int_TCC3|✅ proved - incomplete|shostak|0.080|
|rho_psi_int_TCC4|✅ proved - incomplete|shostak|0.080|
|rho_psi_int_TCC5|✅ proved - incomplete|shostak|0.080|
|rho_psi_int_TCC6|✅ proved - incomplete|shostak|0.080|
|rho_psi_int_TCC7|✅ proved - incomplete|shostak|18.430|
|rho_psi_int_TCC8|✅ proved - incomplete|shostak|0.064|
|rho_psi_int|✅ proved - incomplete|shostak|17.887|
|od_fx_diff_norm_int_TCC1|✅ proved - incomplete|shostak|0.193|
|od_fx_diff_norm_int|✅ proved - incomplete|shostak|0.678|
|od_fx_contD_Int_diff_TCC1|✅ proved - incomplete|shostak|0.467|
|od_fx_contD_Int_diff_TCC2|✅ proved - incomplete|shostak|0.070|
|od_fx_contD_Int_diff|✅ proved - incomplete|shostak|1:11.240|
|rho_psi_int_ineq_TCC1|✅ proved - incomplete|shostak|0.060|
|rho_psi_int_ineq_TCC2|✅ proved - incomplete|shostak|0.050|
|rho_psi_int_ineq_TCC3|✅ proved - incomplete|shostak|0.073|
|rho_psi_int_ineq_TCC4|✅ proved - incomplete|shostak|0.080|
|rho_psi_int_ineq_TCC5|✅ proved - incomplete|shostak|0.070|
|rho_psi_int_ineq_TCC6|✅ proved - incomplete|shostak|0.080|
|rho_psi_int_ineq_TCC7|✅ proved - incomplete|shostak|0.114|
|rho_psi_int_ineq_TCC8|✅ proved - incomplete|shostak|0.060|
|rho_psi_int_ineq|✅ proved - incomplete|shostak|3.359|
|norm_diff_Int_TCC1|✅ proved - incomplete|shostak|0.178|
|norm_diff_Int_TCC2|✅ proved - incomplete|shostak|0.130|
|norm_diff_Int_TCC3|✅ proved - incomplete|shostak|0.111|
|norm_diff_Int|✅ proved - incomplete|shostak|0.344|
|norm_diff_contD_TCC1|✅ proved - incomplete|shostak|0.140|
|norm_diff_contD_TCC2|✅ proved - incomplete|shostak|0.051|
|norm_diff_contD|✅ proved - incomplete|shostak|40.233|
|rho_psi_lip_ineq_TCC1|✅ proved - incomplete|shostak|0.110|
|rho_psi_lip_ineq|✅ proved - incomplete|shostak|0.000|
|rho_psi_exp_contD_triv_TCC1|✅ proved - incomplete|shostak|4.478|
|rho_psi_exp_contD_triv|✅ proved - incomplete|shostak|5.513|
|rho_psi_int_exp_TCC1|✅ proved - incomplete|shostak|0.000|
|rho_psi_int_exp|✅ proved - incomplete|shostak|1.596|
|exp_rho_Integrable|✅ proved - incomplete|shostak|0.628|
|exp_rho_contD_rho_TCC1|✅ proved - incomplete|shostak|0.123|
|exp_rho_contD_rho|✅ proved - incomplete|shostak|35.738|
|exp_rho_contD_TCC1|✅ proved - incomplete|shostak|0.060|
|exp_rho_contD_TCC2|✅ proved - incomplete|shostak|0.050|
|exp_rho_contD_TCC3|✅ proved - incomplete|shostak|0.060|
|exp_rho_contD_TCC4|✅ proved - incomplete|shostak|0.373|
|exp_rho_contD|✅ proved - incomplete|shostak|25.945|
|rho_psi_int_rho_TCC1|✅ proved - incomplete|shostak|0.151|
|rho_psi_int_rho|✅ proved - incomplete|shostak|4.146|
|rho_psi_rho_pull_TCC1|✅ proved - incomplete|shostak|0.140|
|rho_psi_rho_pull|✅ proved - incomplete|shostak|10.158|
|rho_psi_rho_exp_int|✅ proved - incomplete|shostak|2.161|
|psi_contraction|✅ proved - incomplete|shostak|0.110|
|psi_fixed_imp_sol_TCC1|✅ proved - incomplete|shostak|0.070|
|psi_fixed_imp_sol_TCC2|✅ proved - incomplete|shostak|0.104|
|psi_fixed_imp_sol|✅ proved - incomplete|shostak|1.937|

## `ODE_solution_existence_uniqueness`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Psi_TCC1|✅ proved - complete|shostak|0.070|
|Psi_TCC2|✅ proved - complete|shostak|0.040|
|Psi_TCC3|✅ proved - complete|shostak|0.050|
|Psi_TCC4|✅ proved - complete|shostak|0.040|
|Psi_TCC5|✅ proved - incomplete|shostak|0.639|
|Psi_TCC6|✅ proved - incomplete|shostak|0.541|
|Psi_TCC7|✅ proved - incomplete|shostak|0.100|
|Psi_TCC8|✅ proved - incomplete|shostak|0.126|
|Psi_contract_TCC1|✅ proved - incomplete|shostak|0.420|
|Psi_contract_TCC2|✅ proved - incomplete|shostak|0.212|
|Psi_contract_TCC3|✅ proved - incomplete|shostak|0.606|
|Psi_contract|✅ proved - incomplete|shostak|1.195|
|Psi_fixed_point_TCC1|✅ proved - incomplete|shostak|0.427|
|Psi_fixed_point|✅ proved - incomplete|shostak|1.310|
|init_unique_solution_TCC1|✅ proved - incomplete|shostak|0.687|
|init_unique_solution_TCC2|✅ proved - incomplete|shostak|0.090|
|init_unique_solution_TCC3|✅ proved - incomplete|shostak|0.090|
|init_unique_solution_TCC4|✅ proved - incomplete|shostak|0.504|
|init_unique_solution|✅ proved - incomplete|shostak|1.136|
|unique_solution|✅ proved - incomplete|shostak|0.168|
|ode_sol_TCC1|✅ proved - incomplete|shostak|0.280|
|ode_sol_TCC2|✅ proved - incomplete|shostak|0.070|
|ode_sol_TCC3|✅ proved - incomplete|shostak|0.938|
|ode_sol_extend_TCC1|✅ proved - complete|shostak|0.040|
|ode_sol_extend_TCC2|✅ proved - complete|shostak|0.040|
|ode_sol_extend_TCC3|✅ proved - complete|shostak|0.070|
|ode_sol_extend_TCC4|✅ proved - complete|shostak|0.080|
|ode_sol_extend_TCC5|✅ proved - complete|shostak|0.060|
|ode_sol_extend_TCC6|✅ proved - incomplete|shostak|0.573|
|ode_sol_extend_TCC7|✅ proved - incomplete|shostak|0.060|
|ode_sol_extend_TCC8|✅ proved - incomplete|shostak|0.053|
|ode_sol_extend_TCC9|✅ proved - incomplete|shostak|0.060|
|ode_sol_extend_TCC10|✅ proved - incomplete|shostak|0.070|
|ode_sol_extend_TCC11|✅ proved - incomplete|shostak|0.673|
|ode_sol_extend_TCC12|✅ proved - incomplete|shostak|0.083|
|ode_sol_extend_TCC13|✅ proved - incomplete|shostak|0.150|
|ode_sol_extend|✅ proved - incomplete|shostak|0.000|
|Lip_hp?_TCC1|✅ proved - incomplete|shostak|0.050|
|Lip_hp?_TCC2|✅ proved - incomplete|shostak|0.060|
|Lip_hp?_TCC3|✅ proved - incomplete|shostak|0.110|
|Lip_hp?_TCC4|✅ proved - incomplete|shostak|0.070|
|Lip_hp?_TCC5|✅ proved - incomplete|shostak|0.070|
|Lip_hp?_TCC6|✅ proved - incomplete|shostak|0.090|
|Lip_hp?_TCC7|✅ proved - incomplete|shostak|0.069|
|ode_sol_restrict_hp_TCC1|✅ proved - incomplete|shostak|0.380|
|ode_sol_restrict_hp_TCC2|✅ proved - incomplete|shostak|0.064|
|ode_sol_restrict_hp_TCC3|✅ proved - incomplete|shostak|0.080|
|ode_sol_restrict_hp_TCC4|✅ proved - incomplete|shostak|0.284|
|ode_sol_restrict_hp_TCC5|✅ proved - incomplete|shostak|0.060|
|ode_sol_restrict_hp|✅ proved - incomplete|shostak|3.040|
|unique_solution_restrict_TCC1|✅ proved - incomplete|shostak|0.060|
|unique_solution_restrict_TCC2|✅ proved - incomplete|shostak|0.070|
|unique_solution_restrict_TCC3|✅ proved - incomplete|shostak|0.060|
|unique_solution_restrict_TCC4|✅ proved - incomplete|shostak|0.071|
|unique_solution_restrict_TCC5|✅ proved - incomplete|shostak|0.240|
|unique_solution_restrict_TCC6|✅ proved - incomplete|shostak|0.063|
|unique_solution_restrict_TCC7|✅ proved - incomplete|shostak|0.080|
|unique_solution_restrict_TCC8|✅ proved - incomplete|shostak|0.819|
|unique_solution_restrict_TCC9|✅ proved - incomplete|shostak|0.070|
|unique_solution_restrict|✅ proved - incomplete|shostak|1.802|
|ci_lambda_eq_TCC1|✅ proved - incomplete|shostak|0.230|
|ci_lambda_eq_TCC2|✅ proved - incomplete|shostak|0.265|
|ci_lambda_eq_TCC3|✅ proved - incomplete|shostak|0.230|
|ci_lambda_eq_TCC4|✅ proved - incomplete|shostak|0.258|
|ci_lambda_eq_TCC5|✅ proved - incomplete|shostak|0.230|
|ci_lambda_eq|✅ proved - incomplete|shostak|0.293|
|ode_sol_derivable_TCC1|✅ proved - incomplete|shostak|0.120|
|ode_sol_derivable_TCC2|✅ proved - incomplete|shostak|0.578|
|ode_sol_derivable_TCC3|✅ proved - incomplete|shostak|0.625|
|ode_sol_derivable_TCC4|✅ proved - incomplete|shostak|0.100|
|ode_sol_derivable_TCC5|✅ proved - incomplete|shostak|0.000|
|ode_sol_derivable_TCC6|✅ proved - incomplete|shostak|0.140|
|ode_sol_derivable_TCC7|✅ proved - incomplete|shostak|0.655|
|ode_sol_derivable_TCC8|✅ proved - incomplete|shostak|0.150|
|ode_sol_derivable_TCC9|✅ proved - incomplete|shostak|0.192|
|ode_sol_derivable_TCC10|✅ proved - incomplete|shostak|0.190|
|ode_sol_derivable|✅ proved - incomplete|shostak|8.393|
|ode_sol_deriv_TCC1|✅ proved - incomplete|shostak|0.243|
|ode_sol_deriv_TCC2|✅ proved - incomplete|shostak|0.396|
|ode_sol_deriv|✅ proved - incomplete|shostak|7.855|
|ode_sol_init_TCC1|✅ proved - incomplete|shostak|0.000|
|ode_sol_init|✅ proved - incomplete|shostak|0.959|
|sol_uniq_hp_TCC1|✅ proved - incomplete|shostak|0.100|
|sol_uniq_hp_TCC2|✅ proved - incomplete|shostak|0.488|
|sol_uniq_hp|✅ proved - incomplete|shostak|4.163|
|ode_sol_TCC4|✅ proved - incomplete|shostak|0.188|
|ode_sol_TCC5|✅ proved - incomplete|shostak|0.300|

## `restrict_ode`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|restrict_TCC1|✅ proved - incomplete|shostak|0.040|
|restrict_cont_TCC1|✅ proved - complete|shostak|0.040|
|restrict_cont_TCC2|✅ proved - complete|shostak|0.030|
|restrict_cont_TCC3|✅ proved - complete|shostak|0.030|
|restrict_cont_TCC4|✅ proved - incomplete|shostak|0.036|
|restrict_cont_TCC5|✅ proved - incomplete|shostak|0.040|
|restrict_cont_TCC6|✅ proved - incomplete|shostak|0.040|
|restrict_cont|✅ proved - incomplete|shostak|0.206|
|restrict_Lip_TCC1|✅ proved - incomplete|shostak|0.040|
|restrict_Lip_TCC2|✅ proved - incomplete|shostak|0.040|
|restrict_Lip_TCC3|✅ proved - incomplete|shostak|0.040|
|restrict_Lip|✅ proved - incomplete|shostak|0.136|
|restrict_derivable_TCC1|✅ proved - incomplete|shostak|0.040|
|restrict_derivable_TCC2|✅ proved - incomplete|shostak|0.040|
|restrict_derivable_TCC3|✅ proved - incomplete|shostak|0.040|
|restrict_derivable_TCC4|✅ proved - incomplete|shostak|0.040|
|restrict_derivable|✅ proved - incomplete|shostak|0.175|
|restrict_deriv_TCC1|✅ proved - incomplete|shostak|0.070|
|restrict_deriv_TCC2|✅ proved - incomplete|shostak|0.030|
|restrict_deriv|✅ proved - incomplete|shostak|1.486|

## `linear_ode_1D`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|od_ln_TCC1|✅ proved - incomplete|shostak|0.184|
|od_ln_TCC2|✅ proved - incomplete|shostak|0.180|
|lin_lip_TCC1|✅ proved - complete|shostak|0.377|
|lin_lip_TCC2|✅ proved - complete|shostak|0.050|
|lin_lip_TCC3|✅ proved - complete|shostak|0.040|
|lin_lip|✅ proved - incomplete|shostak|1.594|
|lin_cont_d|✅ proved - incomplete|shostak|3.389|
|lin_cont_d_hp_TCC1|✅ proved - complete|shostak|0.040|
|lin_cont_d_hp_TCC2|✅ proved - complete|shostak|0.122|
|lin_cont_d_hp_TCC3|✅ proved - complete|shostak|0.050|
|lin_cont_d_hp|✅ proved - incomplete|shostak|0.860|
|lin_unique_solution_TCC1|✅ proved - incomplete|shostak|0.050|
|lin_unique_solution_TCC2|✅ proved - incomplete|shostak|0.327|
|lin_unique_solution_TCC3|✅ proved - incomplete|shostak|0.090|
|lin_unique_solution|✅ proved - incomplete|shostak|0.100|
|lin_unique_solution_hp_TCC1|✅ proved - incomplete|shostak|0.249|
|lin_unique_solution_hp|✅ proved - incomplete|shostak|1.767|
|lin_1D_unique_ci_TCC1|✅ proved - incomplete|shostak|0.050|
|lin_1D_unique_ci_TCC2|✅ proved - incomplete|shostak|0.307|
|lin_1D_unique_ci_TCC3|✅ proved - incomplete|shostak|0.251|
|lin_1D_unique_ci|✅ proved - incomplete|shostak|0.000|
|lin_1D_unique_hp_TCC1|✅ proved - incomplete|shostak|0.047|
|lin_1D_unique_hp_TCC2|✅ proved - incomplete|shostak|0.070|
|lin_1D_unique_hp|✅ proved - incomplete|shostak|1.771|
|lin_1D_unique_hp_ci_TCC1|✅ proved - incomplete|shostak|0.040|
|lin_1D_unique_hp_ci_TCC2|✅ proved - incomplete|shostak|0.190|
|lin_1D_unique_hp_ci_TCC3|✅ proved - incomplete|shostak|0.161|
|lin_1D_unique_hp_ci_TCC4|✅ proved - incomplete|shostak|0.310|
|lin_1D_unique_hp_ci_TCC5|✅ proved - incomplete|shostak|0.070|
|lin_1D_unique_hp_ci_TCC6|✅ proved - incomplete|shostak|0.307|
|lin_1D_unique_hp_ci_TCC7|✅ proved - incomplete|shostak|0.247|
|lin_1D_unique_hp_ci_TCC8|✅ proved - incomplete|shostak|0.191|
|lin_1D_unique_hp_ci_TCC9|✅ proved - incomplete|shostak|0.750|
|lin_1D_unique_hp_ci|✅ proved - incomplete|shostak|8.348|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib//float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-pvsio-fix.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210219-extratregies.lisp`|
