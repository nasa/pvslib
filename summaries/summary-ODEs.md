# Summary for `ODEs`
Run started at 7:41:39 7/8/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **545**   | **545**    | **545**    | **0**  | **9:57.157 s**   |
|top|0|0|0|0|0.000|
|r2v_def|23|23|23|0|3.508|
|exp_analysis|21|21|21|0|8.532|
|interval_def|15|15|15|0|3.441|
|r2v_analysis|75|75|75|0|17.640|
|r2v_continuous_extension|30|30|30|0|7.625|
|r2v_diff_extension|36|36|36|0|49.429|
|r2v_sequence_convergence|27|27|27|0|9.152|
|metric_rho|13|13|13|0|42.040|
|continuous_function_complete_rho|5|5|5|0|47.467|
|ODE_def|14|14|14|0|1.674|
|ODE_Lipschitz_def|17|17|17|0|4.935|
|ODE_continuous_def|23|23|23|0|15.581|
|norm_ineq|30|30|30|0|17.206|
|ODE_psi_def|11|11|11|0|5.214|
|ODE_psi_contraction|64|64|64|0|4:54.565|
|ODE_solution_existence_uniqueness|87|87|87|0|46.869|
|restrict_ode|20|20|20|0|2.748|
|linear_ode_1D|34|34|34|0|19.531|
## Detailed Summary 
## `top`
No formula declaration found.
## `r2v_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|r2v_n_r2v|✅ proved - incomplete|shostak|0.084|
|length_TCC1|✅ proved - incomplete|shostak|0.030|
|length_x|✅ proved - incomplete|shostak|0.050|
|nth_TCC1|✅ proved - incomplete|shostak|0.061|
|null_cons|✅ proved - incomplete|shostak|0.110|
|length_null|✅ proved - incomplete|shostak|0.103|
|length_cons|✅ proved - incomplete|shostak|0.110|
|car_TCC1|✅ proved - incomplete|shostak|0.070|
|cdr_TCC1|✅ proved - incomplete|shostak|0.140|
|cons_TCC1|✅ proved - incomplete|shostak|0.070|
|length_cdr|✅ proved - incomplete|shostak|0.110|
|nth_car_TCC1|✅ proved - incomplete|shostak|0.040|
|nth_car|✅ proved - incomplete|shostak|0.056|
|nth_cdr_TCC1|✅ proved - incomplete|shostak|0.070|
|nth_cdr|✅ proved - incomplete|shostak|0.050|
|nth_equal_TCC1|✅ proved - incomplete|shostak|0.070|
|nth_equal|✅ proved - incomplete|shostak|0.000|
|plusr2v_TCC1|✅ proved - incomplete|shostak|0.110|
|nth_add_TCC1|✅ proved - incomplete|shostak|0.050|
|nth_add|✅ proved - incomplete|shostak|0.224|
|subr2v_TCC1|✅ proved - incomplete|shostak|0.141|
|nth_sub_TCC1|✅ proved - incomplete|shostak|0.549|
|nth_sub|✅ proved - incomplete|shostak|1.210|

## `exp_analysis`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|deriv_domain_exp_a|✅ proved - complete|shostak|0.432|
|IMP_chain_rule_TCC1|✅ proved - complete|shostak|0.418|
|IMP_chain_rule_TCC2|✅ proved - complete|shostak|0.030|
|IMP_chain_rule_TCC3|✅ proved - complete|shostak|0.120|
|IMP_chain_rule_TCC4|✅ proved - complete|shostak|0.040|
|IMP_fundamental_theorem_TCC1|✅ proved - complete|shostak|0.040|
|IMP_fundamental_theorem_TCC2|✅ proved - complete|shostak|0.030|
|derivable_exp_lin|✅ proved - incomplete|shostak|0.501|
|deriv_exp_lin_TCC1|✅ proved - incomplete|shostak|0.030|
|deriv_exp_lin|✅ proved - incomplete|shostak|2.009|
|derivable_exp_lin_r|✅ proved - incomplete|shostak|0.340|
|deriv_exp_lin_r_TCC1|✅ proved - incomplete|shostak|0.383|
|deriv_exp_lin_r|✅ proved - incomplete|shostak|0.562|
|cont_exp_lin|✅ proved - incomplete|shostak|0.561|
|deriv_Int_lin_TCC1|✅ proved - incomplete|shostak|0.170|
|deriv_Int_lin|✅ proved - incomplete|shostak|0.421|
|derivable_exp_ln_TCC1|✅ proved - complete|shostak|0.050|
|derivable_exp_ln|✅ proved - incomplete|shostak|0.288|
|deriv_exp_ln_TCC1|✅ proved - incomplete|shostak|0.050|
|deriv_exp_ln_TCC2|✅ proved - complete|shostak|0.052|
|deriv_exp_ln|✅ proved - incomplete|shostak|2.005|

## `interval_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|closed_interval_TCC1|✅ proved - complete|shostak|0.038|
|ci_ci|✅ proved - complete|shostak|0.040|
|ci_nonempty|✅ proved - complete|shostak|0.040|
|ci_connected|✅ proved - complete|shostak|0.060|
|ci_not_one_element|✅ proved - complete|shostak|0.056|
|ci_deriv_domain|✅ proved - complete|shostak|0.455|
|ci_closed_D_TCC1|✅ proved - incomplete|shostak|0.050|
|ci_closed_D|✅ proved - incomplete|shostak|1.738|
|ci_bounded_D|✅ proved - incomplete|shostak|0.515|
|ci_nonempty_D|✅ proved - incomplete|shostak|0.060|
|d_three|✅ proved - incomplete|shostak|0.040|
|hp_noe|✅ proved - complete|shostak|0.080|
|hp_dd|✅ proved - complete|shostak|0.179|
|hp_con|✅ proved - complete|shostak|0.050|
|hp_ne|✅ proved - complete|shostak|0.040|

## `r2v_analysis`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|deriv_domain|✅ proved - complete|shostak|0.417|
|IMP_fundamental_theorem_TCC1|✅ proved - complete|shostak|0.040|
|IMP_fundamental_theorem_TCC2|✅ proved - complete|shostak|0.030|
|IMP_fundamental_theorem_TCC3|✅ proved - complete|shostak|0.030|
|IMP_r2v_def_TCC1|✅ proved - complete|shostak|0.030|
|derivable?_TCC1|✅ proved - incomplete|shostak|0.562|
|deriv_TCC1|✅ proved - incomplete|shostak|0.050|
|deriv_TCC2|✅ proved - incomplete|shostak|0.030|
|deriv_TCC3|✅ proved - incomplete|shostak|0.060|
|deriv_TCC4|✅ proved - incomplete|shostak|0.040|
|deriv_TCC5|✅ proved - incomplete|shostak|0.134|
|deriv_TCC6|✅ proved - incomplete|shostak|0.070|
|deriv_TCC7|✅ proved - incomplete|shostak|0.200|
|deriv_nth_TCC1|✅ proved - incomplete|shostak|0.040|
|deriv_nth_TCC2|✅ proved - incomplete|shostak|0.042|
|deriv_nth|✅ proved - incomplete|shostak|0.633|
|integrable?_TCC1|✅ proved - incomplete|shostak|0.040|
|integral_TCC1|✅ proved - incomplete|shostak|0.052|
|integral_TCC2|✅ proved - incomplete|shostak|0.060|
|integral_TCC3|✅ proved - incomplete|shostak|0.040|
|integral_TCC4|✅ proved - incomplete|shostak|0.070|
|integral_TCC5|✅ proved - incomplete|shostak|0.133|
|integral_TCC6|✅ proved - incomplete|shostak|0.100|
|integral_TCC7|✅ proved - incomplete|shostak|0.130|
|int_nth_TCC1|✅ proved - incomplete|shostak|0.403|
|int_nth_TCC2|✅ proved - incomplete|shostak|0.470|
|int_nth|✅ proved - incomplete|shostak|0.510|
|Integral_TCC1|✅ proved - incomplete|shostak|0.050|
|Integral_TCC2|✅ proved - incomplete|shostak|0.044|
|Integral_TCC3|✅ proved - incomplete|shostak|0.070|
|Integral_TCC4|✅ proved - incomplete|shostak|0.130|
|Integral_TCC5|✅ proved - incomplete|shostak|0.105|
|Integral_TCC6|✅ proved - incomplete|shostak|0.110|
|Int_nth_TCC1|✅ proved - incomplete|shostak|0.400|
|Int_nth_TCC2|✅ proved - incomplete|shostak|0.738|
|Int_nth|✅ proved - incomplete|shostak|0.452|
|Int_zero_TCC1|✅ proved - incomplete|shostak|0.050|
|Int_zero|✅ proved - incomplete|shostak|0.110|
|Int_int_TCC1|✅ proved - incomplete|shostak|0.519|
|Int_int|✅ proved - incomplete|shostak|0.142|
|Integrable_sum|✅ proved - incomplete|shostak|0.253|
|Int_sum_TCC1|✅ proved - incomplete|shostak|0.040|
|Int_sum|✅ proved - incomplete|shostak|0.000|
|Integrable_diff|✅ proved - incomplete|shostak|0.194|
|Int_diff_TCC1|✅ proved - incomplete|shostak|0.040|
|Int_diff|✅ proved - incomplete|shostak|0.876|
|Integrable_const_TCC1|✅ proved - incomplete|shostak|0.060|
|Integrable_const|✅ proved - incomplete|shostak|0.442|
|Integral_const_TCC1|✅ proved - incomplete|shostak|0.060|
|Integral_const|✅ proved - incomplete|shostak|1.191|
|cont_entry_v_TCC1|✅ proved - incomplete|shostak|0.130|
|cont_entry_v_TCC2|✅ proved - incomplete|shostak|0.130|
|cont_entry_v_TCC3|✅ proved - incomplete|shostak|0.040|
|cont_entry_v_TCC4|✅ proved - incomplete|shostak|0.063|
|cont_entry_v_TCC5|✅ proved - incomplete|shostak|0.040|
|cont_entry_v|✅ proved - incomplete|shostak|2.335|
|cont_v_entry_TCC1|✅ proved - incomplete|shostak|0.060|
|cont_v_entry_TCC2|✅ proved - incomplete|shostak|0.060|
|cont_v_entry_TCC3|✅ proved - incomplete|shostak|0.030|
|cont_v_entry_TCC4|✅ proved - incomplete|shostak|0.060|
|cont_v_entry_TCC5|✅ proved - incomplete|shostak|0.030|
|cont_v_entry|✅ proved - incomplete|shostak|1.025|
|cont_triv_TCC1|✅ proved - incomplete|shostak|0.040|
|cont_triv_TCC2|✅ proved - incomplete|shostak|0.040|
|cont_triv|✅ proved - incomplete|shostak|0.050|
|cont_nn_comp_TCC1|✅ proved - incomplete|shostak|0.162|
|cont_nn_comp|✅ proved - incomplete|shostak|0.541|
|cont_sub_TCC1|✅ proved - incomplete|shostak|0.341|
|cont_sub|✅ proved - incomplete|shostak|1.112|
|cont_int|✅ proved - incomplete|shostak|0.080|
|cont_Int|✅ proved - incomplete|shostak|0.070|
|Int_cont_TCC1|✅ proved - incomplete|shostak|0.040|
|Int_cont_TCC2|✅ proved - incomplete|shostak|0.070|
|Int_cont|✅ proved - incomplete|shostak|0.549|
|der_cont|✅ proved - incomplete|shostak|0.050|

## `r2v_continuous_extension`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_r2v_analysis_TCC1|✅ proved - complete|shostak|0.040|
|IMP_r2v_analysis_TCC2|✅ proved - complete|shostak|0.040|
|IMP_r2v_analysis_TCC3|✅ proved - complete|shostak|0.040|
|d_b_TCC1|✅ proved - incomplete|shostak|0.053|
|d_b_TCC2|✅ proved - incomplete|shostak|0.090|
|d_b_TCC3|✅ proved - incomplete|shostak|0.120|
|ext_c_TCC1|✅ proved - incomplete|shostak|0.050|
|ext_c_TCC2|✅ proved - incomplete|shostak|0.060|
|ext_c_TCC3|✅ proved - incomplete|shostak|0.105|
|ext_c_TCC4|✅ proved - incomplete|shostak|0.060|
|ext_c_TCC5|✅ proved - incomplete|shostak|0.050|
|ext_c_TCC6|✅ proved - incomplete|shostak|0.080|
|ext_cont_TCC1|✅ proved - incomplete|shostak|0.083|
|ext_cont_TCC2|✅ proved - incomplete|shostak|0.060|
|ext_cont_TCC3|✅ proved - incomplete|shostak|0.060|
|ext_cont_TCC4|✅ proved - incomplete|shostak|0.080|
|ext_cont|✅ proved - incomplete|shostak|2.907|
|ext_c_TCC7|✅ proved - incomplete|shostak|0.040|
|ext_c_TCC8|✅ proved - incomplete|shostak|0.050|
|ext_c_TCC9|✅ proved - incomplete|shostak|0.049|
|ext_c_TCC10|✅ proved - incomplete|shostak|0.100|
|ext_c_TCC11|✅ proved - incomplete|shostak|0.050|
|ext_c_TCC12|✅ proved - incomplete|shostak|0.050|
|ext_c_TCC13|✅ proved - incomplete|shostak|0.070|
|ext_const|✅ proved - incomplete|shostak|0.198|
|ext_cont_r|✅ proved - incomplete|shostak|2.409|
|ext_cont_D_TCC1|✅ proved - incomplete|shostak|0.100|
|ext_cont_D|✅ proved - incomplete|shostak|0.000|
|ext_plus|✅ proved - incomplete|shostak|0.370|
|ext_ineq|✅ proved - incomplete|shostak|0.161|

## `r2v_diff_extension`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_r2v_continuous_extension_TCC1|✅ proved - complete|shostak|0.030|
|ext_derivable_lb_TCC1|✅ proved - complete|shostak|0.050|
|ext_derivable_lb_TCC2|✅ proved - complete|shostak|0.060|
|ext_derivable_lb_TCC3|✅ proved - incomplete|shostak|0.140|
|ext_derivable_lb_TCC4|✅ proved - incomplete|shostak|0.140|
|ext_derivable_lb_TCC5|✅ proved - incomplete|shostak|0.098|
|ext_derivable_lb_TCC6|✅ proved - incomplete|shostak|0.150|
|ext_derivable_lb_TCC7|✅ proved - incomplete|shostak|0.050|
|ext_derivable_lb_TCC8|✅ proved - incomplete|shostak|0.210|
|ext_derivable_lb_TCC9|✅ proved - incomplete|shostak|0.109|
|ext_derivable_lb|✅ proved - incomplete|shostak|4.596|
|ext_deriv_lb_TCC1|✅ proved - incomplete|shostak|0.155|
|ext_deriv_lb_TCC2|✅ proved - incomplete|shostak|0.280|
|ext_deriv_lb|✅ proved - incomplete|shostak|7.611|
|ext_derivable_ub_TCC1|✅ proved - incomplete|shostak|0.194|
|ext_derivable_ub|✅ proved - incomplete|shostak|4.294|
|ext_deriv_ub_TCC1|✅ proved - incomplete|shostak|0.149|
|ext_deriv_ub_TCC2|✅ proved - incomplete|shostak|0.280|
|ext_deriv_ub|✅ proved - incomplete|shostak|8.611|
|ext_derivable_int_TCC1|✅ proved - incomplete|shostak|0.100|
|ext_derivable_int|✅ proved - incomplete|shostak|0.000|
|ext_deriv_int_TCC1|✅ proved - incomplete|shostak|0.160|
|ext_deriv_int_TCC2|✅ proved - incomplete|shostak|0.121|
|ext_deriv_int|✅ proved - incomplete|shostak|9.359|
|ext_derivable_ext_TCC1|✅ proved - incomplete|shostak|0.110|
|ext_derivable_ext|✅ proved - incomplete|shostak|3.368|
|ext_deriv_extl_TCC1|✅ proved - incomplete|shostak|0.150|
|ext_deriv_extl|✅ proved - incomplete|shostak|5.917|
|ext_deriv_extu_TCC1|✅ proved - incomplete|shostak|0.100|
|ext_deriv_extu_TCC2|✅ proved - incomplete|shostak|0.170|
|ext_deriv_extu|✅ proved - incomplete|shostak|1.259|
|ext_d_TCC1|✅ proved - incomplete|shostak|0.133|
|ext_d_TCC2|✅ proved - incomplete|shostak|0.050|
|ext_d_TCC3|✅ proved - incomplete|shostak|0.040|
|ext_d_TCC4|✅ proved - incomplete|shostak|0.310|
|ext_d_TCC5|✅ proved - incomplete|shostak|0.875|

## `r2v_sequence_convergence`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_r2v_analysis_TCC1|✅ proved - complete|shostak|0.030|
|IMP_r2v_analysis_TCC2|✅ proved - complete|shostak|0.030|
|IMP_r2v_analysis_TCC3|✅ proved - complete|shostak|0.030|
|conv_pw?_TCC1|✅ proved - incomplete|shostak|0.079|
|conv_pw?_TCC2|✅ proved - incomplete|shostak|0.060|
|conv_pw?_TCC3|✅ proved - incomplete|shostak|0.082|
|conv_pw?_TCC4|✅ proved - incomplete|shostak|0.060|
|cauchy_pw?_TCC1|✅ proved - incomplete|shostak|0.080|
|cauchy_conv_pw|✅ proved - incomplete|shostak|0.292|
|conv_u?_TCC1|✅ proved - incomplete|shostak|0.080|
|conv_u?_TCC2|✅ proved - incomplete|shostak|0.145|
|conv_u?_TCC3|✅ proved - incomplete|shostak|0.060|
|cauchy_u?_TCC1|✅ proved - incomplete|shostak|0.203|
|conv_pw_equiv|✅ proved - incomplete|shostak|1.663|
|cauchy_pw_equiv|✅ proved - incomplete|shostak|0.482|
|conv_u_equiv_TCC1|✅ proved - incomplete|shostak|0.080|
|conv_u_equiv|✅ proved - incomplete|shostak|1.138|
|cauchy_u_equiv|✅ proved - incomplete|shostak|1.566|
|cauchy_u_pw|✅ proved - incomplete|shostak|0.100|
|cauchy_u_conv_pw|✅ proved - incomplete|shostak|0.039|
|K_epsn|✅ proved - complete|shostak|0.060|
|norm_conv_bound_TCC1|✅ proved - incomplete|shostak|0.050|
|norm_conv_bound_TCC2|✅ proved - incomplete|shostak|0.130|
|norm_conv_bound_TCC3|✅ proved - incomplete|shostak|0.164|
|norm_conv_bound|✅ proved - incomplete|shostak|2.194|
|cauchy_u_conv_u|✅ proved - incomplete|shostak|0.255|
|conv_u_cont|✅ proved - incomplete|shostak|0.000|

## `metric_rho`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_r2v_continuous_extension_TCC1|✅ proved - complete|shostak|0.030|
|pre_rho_TCC1|✅ proved - incomplete|shostak|0.080|
|pre_rho_TCC2|✅ proved - incomplete|shostak|0.113|
|pre_rho_cont|✅ proved - incomplete|shostak|16.239|
|pre_rho_cont_D_TCC1|✅ proved - incomplete|shostak|0.150|
|pre_rho_cont_D|✅ proved - incomplete|shostak|1.986|
|rho_TCC1|✅ proved - incomplete|shostak|1.965|
|rho_TCC2|✅ proved - incomplete|shostak|0.055|
|rho_TCC3|✅ proved - incomplete|shostak|0.799|
|rho_zero|✅ proved - incomplete|shostak|0.586|
|rho_symmetric|✅ proved - incomplete|shostak|5.105|
|rho_triangle|✅ proved - incomplete|shostak|14.872|
|rho_metric|✅ proved - incomplete|shostak|0.060|

## `continuous_function_complete_rho`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_metric_rho_TCC1|✅ proved - complete|shostak|0.030|
|IMP_r2v_sequence_convergence_TCC1|✅ proved - complete|shostak|0.040|
|IMP_r2v_sequence_convergence_TCC2|✅ proved - complete|shostak|0.040|
|IMP_r2v_sequence_convergence_TCC3|✅ proved - complete|shostak|0.030|
|Cfs_complete|✅ proved - incomplete|shostak|47.327|

## `ODE_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_r2v_analysis_TCC1|✅ proved - complete|shostak|0.040|
|IMP_r2v_analysis_TCC2|✅ proved - complete|shostak|0.030|
|IMP_r2v_analysis_TCC3|✅ proved - complete|shostak|0.030|
|IMP_derivatives_def_TCC1|✅ proved - complete|shostak|0.030|
|od_fx_TCC1|✅ proved - incomplete|shostak|0.053|
|nth_od_fx_TCC1|✅ proved - incomplete|shostak|0.060|
|nth_od_fx_TCC2|✅ proved - incomplete|shostak|0.060|
|nth_od_fx|✅ proved - incomplete|shostak|0.266|
|od_sol?_TCC1|✅ proved - incomplete|shostak|0.040|
|od_sol_nth_TCC1|✅ proved - incomplete|shostak|0.278|
|od_sol_nth_TCC2|✅ proved - incomplete|shostak|0.369|
|od_sol_nth|✅ proved - incomplete|shostak|0.195|
|od_sol?_TCC2|✅ proved - incomplete|shostak|0.110|
|od_sol?_TCC3|✅ proved - incomplete|shostak|0.113|

## `ODE_Lipschitz_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_ODE_def_TCC1|✅ proved - complete|shostak|0.030|
|IMP_ODE_def_TCC2|✅ proved - complete|shostak|0.030|
|IMP_ODE_def_TCC3|✅ proved - complete|shostak|0.030|
|Lip_d?_TCC1|✅ proved - incomplete|shostak|0.100|
|Lip_d?_TCC2|✅ proved - incomplete|shostak|0.102|
|Lip_norm_od_f|✅ proved - incomplete|shostak|0.574|
|Lip_entry?_TCC1|✅ proved - incomplete|shostak|0.080|
|Lip_entry?_TCC2|✅ proved - incomplete|shostak|0.080|
|Lip_entry?_TCC3|✅ proved - incomplete|shostak|0.104|
|Lip_entry_c_TCC1|✅ proved - incomplete|shostak|0.110|
|Lip_entry_c_TCC2|✅ proved - incomplete|shostak|0.110|
|Lip_entry_c_TCC3|✅ proved - incomplete|shostak|0.093|
|Lip_entry_c_TCC4|✅ proved - incomplete|shostak|1.679|
|Lip_entry_equiv|✅ proved - incomplete|shostak|1.331|
|Lip_c_TCC1|✅ proved - incomplete|shostak|0.106|
|Lip_c_TCC2|✅ proved - incomplete|shostak|0.090|
|Lip_c_TCC3|✅ proved - incomplete|shostak|0.286|

## `ODE_continuous_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_ODE_Lipschitz_def_TCC1|✅ proved - complete|shostak|0.020|
|IMP_ODE_Lipschitz_def_TCC2|✅ proved - complete|shostak|0.031|
|IMP_ODE_Lipschitz_def_TCC3|✅ proved - complete|shostak|0.030|
|cont_d?_TCC1|✅ proved - incomplete|shostak|0.060|
|cont_d?_TCC2|✅ proved - incomplete|shostak|0.060|
|cont_d?_TCC3|✅ proved - complete|shostak|0.040|
|cont_Lip_2ndv_TCC1|✅ proved - incomplete|shostak|0.090|
|cont_Lip_2ndv|✅ proved - incomplete|shostak|0.565|
|cont_Lip_bothv_TCC1|✅ proved - incomplete|shostak|0.234|
|cont_Lip_bothv_TCC2|✅ proved - incomplete|shostak|0.220|
|cont_Lip_bothv_TCC3|✅ proved - incomplete|shostak|0.142|
|cont_Lip_bothv_TCC4|✅ proved - incomplete|shostak|0.050|
|cont_Lip_bothv|✅ proved - incomplete|shostak|7.291|
|cont_Lip_bothR_TCC1|✅ proved - incomplete|shostak|0.283|
|cont_Lip_bothR_TCC2|✅ proved - incomplete|shostak|0.270|
|cont_Lip_bothR_TCC3|✅ proved - incomplete|shostak|0.148|
|cont_Lip_bothR|✅ proved - incomplete|shostak|1.310|
|cont_Lip_norm_TCC1|✅ proved - incomplete|shostak|0.159|
|cont_Lip_norm|✅ proved - incomplete|shostak|1.524|
|cont_od_fx|✅ proved - incomplete|shostak|1.358|
|Int_od_fx|✅ proved - incomplete|shostak|0.057|
|cont_Lip_real_TCC1|✅ proved - incomplete|shostak|0.310|
|cont_Lip_real|✅ proved - incomplete|shostak|1.329|

## `norm_ineq`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_ODE_continuous_def_TCC1|✅ proved - complete|shostak|0.030|
|IMP_ODE_continuous_def_TCC2|✅ proved - complete|shostak|0.030|
|IMP_ODE_continuous_def_TCC3|✅ proved - complete|shostak|0.030|
|int_od_fx|✅ proved - incomplete|shostak|0.070|
|int_norm_od_fx_TCC1|✅ proved - incomplete|shostak|0.080|
|int_norm_od_fx_TCC2|✅ proved - incomplete|shostak|0.340|
|int_norm_od_fx|✅ proved - incomplete|shostak|0.120|
|norminf_int_TCC1|✅ proved - incomplete|shostak|0.030|
|norminf_int_TCC2|✅ proved - incomplete|shostak|0.090|
|norminf_int_TCC3|✅ proved - incomplete|shostak|0.030|
|norminf_int|✅ proved - incomplete|shostak|7.049|
|norminf_Int_TCC1|✅ proved - incomplete|shostak|0.086|
|norminf_Int_TCC2|✅ proved - incomplete|shostak|0.363|
|norminf_Int_TCC3|✅ proved - incomplete|shostak|0.330|
|norminf_Int_TCC4|✅ proved - incomplete|shostak|0.053|
|norminf_Int|✅ proved - incomplete|shostak|0.120|
|int_norm_cont_TCC1|✅ proved - incomplete|shostak|0.050|
|int_norm_cont_TCC2|✅ proved - incomplete|shostak|0.145|
|int_norm_cont|✅ proved - incomplete|shostak|0.111|
|normi_TCC1|✅ proved - incomplete|shostak|0.040|
|normi_TCC2|✅ proved - incomplete|shostak|0.050|
|normi_TCC3|✅ proved - incomplete|shostak|0.074|
|normi_TCC4|✅ proved - incomplete|shostak|0.140|
|normi_TCC5|✅ proved - incomplete|shostak|0.050|
|normi|✅ proved - incomplete|shostak|7.198|
|normI_TCC1|✅ proved - incomplete|shostak|0.040|
|normI_TCC2|✅ proved - incomplete|shostak|0.060|
|normI_TCC3|✅ proved - incomplete|shostak|0.151|
|normI_TCC4|✅ proved - incomplete|shostak|0.060|
|normI|✅ proved - incomplete|shostak|0.186|

## `ODE_psi_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_ODE_def_TCC1|✅ proved - complete|shostak|0.030|
|IMP_ODE_def_TCC2|✅ proved - complete|shostak|0.030|
|IMP_ODE_def_TCC3|✅ proved - complete|shostak|0.020|
|psi_TCC1|✅ proved - incomplete|shostak|0.050|
|psi_TCC2|✅ proved - incomplete|shostak|0.210|
|psi_TCC3|✅ proved - incomplete|shostak|0.123|
|psi_init|✅ proved - incomplete|shostak|0.110|
|psi_derivable|✅ proved - incomplete|shostak|2.044|
|psi_cont|✅ proved - incomplete|shostak|0.104|
|psi_deriv_TCC1|✅ proved - incomplete|shostak|0.030|
|psi_deriv|✅ proved - incomplete|shostak|2.463|

## `ODE_psi_contraction`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_exp_analysis_TCC1|✅ proved - complete|shostak|0.030|
|IMP_exp_analysis_TCC2|✅ proved - complete|shostak|0.034|
|IMP_exp_analysis_TCC3|✅ proved - complete|shostak|0.030|
|IMP_metric_rho_TCC1|✅ proved - complete|shostak|0.040|
|od_fx_diff_Int_TCC1|✅ proved - incomplete|shostak|0.475|
|od_fx_diff_Int_TCC2|✅ proved - incomplete|shostak|0.050|
|od_fx_diff_Int|✅ proved - incomplete|shostak|0.217|
|od_fx_contD_diff_TCC1|✅ proved - incomplete|shostak|0.481|
|od_fx_contD_diff_TCC2|✅ proved - incomplete|shostak|0.069|
|od_fx_contD_diff_TCC3|✅ proved - incomplete|shostak|0.270|
|od_fx_contD_diff|✅ proved - incomplete|shostak|13.377|
|rho_psi_int_TCC1|✅ proved - incomplete|shostak|0.060|
|rho_psi_int_TCC2|✅ proved - incomplete|shostak|0.050|
|rho_psi_int_TCC3|✅ proved - incomplete|shostak|0.080|
|rho_psi_int_TCC4|✅ proved - incomplete|shostak|0.090|
|rho_psi_int_TCC5|✅ proved - incomplete|shostak|0.082|
|rho_psi_int_TCC6|✅ proved - incomplete|shostak|0.080|
|rho_psi_int_TCC7|✅ proved - incomplete|shostak|19.246|
|rho_psi_int_TCC8|✅ proved - incomplete|shostak|0.060|
|rho_psi_int|✅ proved - incomplete|shostak|21.733|
|od_fx_diff_norm_int_TCC1|✅ proved - incomplete|shostak|0.160|
|od_fx_diff_norm_int|✅ proved - incomplete|shostak|0.672|
|od_fx_contD_Int_diff_TCC1|✅ proved - incomplete|shostak|0.469|
|od_fx_contD_Int_diff_TCC2|✅ proved - incomplete|shostak|0.070|
|od_fx_contD_Int_diff|✅ proved - incomplete|shostak|1:20.129|
|rho_psi_int_ineq_TCC1|✅ proved - incomplete|shostak|0.054|
|rho_psi_int_ineq_TCC2|✅ proved - incomplete|shostak|0.050|
|rho_psi_int_ineq_TCC3|✅ proved - incomplete|shostak|0.070|
|rho_psi_int_ineq_TCC4|✅ proved - incomplete|shostak|0.080|
|rho_psi_int_ineq_TCC5|✅ proved - incomplete|shostak|0.064|
|rho_psi_int_ineq_TCC6|✅ proved - incomplete|shostak|0.080|
|rho_psi_int_ineq_TCC7|✅ proved - incomplete|shostak|0.110|
|rho_psi_int_ineq_TCC8|✅ proved - incomplete|shostak|0.052|
|rho_psi_int_ineq|✅ proved - incomplete|shostak|3.358|
|norm_diff_Int_TCC1|✅ proved - incomplete|shostak|0.171|
|norm_diff_Int_TCC2|✅ proved - incomplete|shostak|0.130|
|norm_diff_Int_TCC3|✅ proved - incomplete|shostak|0.100|
|norm_diff_Int|✅ proved - incomplete|shostak|0.356|
|norm_diff_contD_TCC1|✅ proved - incomplete|shostak|0.130|
|norm_diff_contD_TCC2|✅ proved - incomplete|shostak|0.056|
|norm_diff_contD|✅ proved - incomplete|shostak|40.715|
|rho_psi_lip_ineq_TCC1|✅ proved - incomplete|shostak|0.237|
|rho_psi_lip_ineq|✅ proved - incomplete|shostak|5.421|
|rho_psi_exp_contD_triv_TCC1|✅ proved - incomplete|shostak|4.564|
|rho_psi_exp_contD_triv|✅ proved - incomplete|shostak|5.578|
|rho_psi_int_exp_TCC1|✅ proved - incomplete|shostak|0.000|
|rho_psi_int_exp|✅ proved - incomplete|shostak|1.618|
|exp_rho_Integrable|✅ proved - incomplete|shostak|0.630|
|exp_rho_contD_rho_TCC1|✅ proved - incomplete|shostak|0.110|
|exp_rho_contD_rho|✅ proved - incomplete|shostak|38.854|
|exp_rho_contD_TCC1|✅ proved - incomplete|shostak|0.050|
|exp_rho_contD_TCC2|✅ proved - incomplete|shostak|0.060|
|exp_rho_contD_TCC3|✅ proved - incomplete|shostak|0.050|
|exp_rho_contD_TCC4|✅ proved - incomplete|shostak|0.383|
|exp_rho_contD|✅ proved - incomplete|shostak|22.826|
|rho_psi_int_rho_TCC1|✅ proved - incomplete|shostak|0.150|
|rho_psi_int_rho|✅ proved - incomplete|shostak|13.245|
|rho_psi_rho_pull_TCC1|✅ proved - incomplete|shostak|0.149|
|rho_psi_rho_pull|✅ proved - incomplete|shostak|10.153|
|rho_psi_rho_exp_int|✅ proved - incomplete|shostak|4.555|
|psi_contraction|✅ proved - incomplete|shostak|0.097|
|psi_fixed_imp_sol_TCC1|✅ proved - incomplete|shostak|0.070|
|psi_fixed_imp_sol_TCC2|✅ proved - incomplete|shostak|0.099|
|psi_fixed_imp_sol|✅ proved - incomplete|shostak|2.036|

## `ODE_solution_existence_uniqueness`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Psi_TCC1|✅ proved - complete|shostak|0.070|
|Psi_TCC2|✅ proved - complete|shostak|0.050|
|Psi_TCC3|✅ proved - complete|shostak|0.040|
|Psi_TCC4|✅ proved - complete|shostak|0.040|
|Psi_TCC5|✅ proved - incomplete|shostak|0.669|
|Psi_TCC6|✅ proved - incomplete|shostak|0.575|
|Psi_TCC7|✅ proved - incomplete|shostak|0.110|
|Psi_TCC8|✅ proved - incomplete|shostak|0.140|
|Psi_contract_TCC1|✅ proved - incomplete|shostak|0.438|
|Psi_contract_TCC2|✅ proved - incomplete|shostak|0.210|
|Psi_contract_TCC3|✅ proved - incomplete|shostak|0.592|
|Psi_contract|✅ proved - incomplete|shostak|1.199|
|Psi_fixed_point_TCC1|✅ proved - incomplete|shostak|0.428|
|Psi_fixed_point|✅ proved - incomplete|shostak|1.312|
|init_unique_solution_TCC1|✅ proved - incomplete|shostak|0.705|
|init_unique_solution_TCC2|✅ proved - incomplete|shostak|0.085|
|init_unique_solution_TCC3|✅ proved - incomplete|shostak|0.090|
|init_unique_solution_TCC4|✅ proved - incomplete|shostak|0.511|
|init_unique_solution|✅ proved - incomplete|shostak|1.190|
|unique_solution|✅ proved - incomplete|shostak|0.167|
|ode_sol_TCC1|✅ proved - incomplete|shostak|0.281|
|ode_sol_TCC2|✅ proved - incomplete|shostak|0.090|
|ode_sol_TCC3|✅ proved - incomplete|shostak|0.976|
|ode_sol_extend_TCC1|✅ proved - complete|shostak|0.040|
|ode_sol_extend_TCC2|✅ proved - complete|shostak|0.030|
|ode_sol_extend_TCC3|✅ proved - complete|shostak|0.063|
|ode_sol_extend_TCC4|✅ proved - complete|shostak|0.080|
|ode_sol_extend_TCC5|✅ proved - complete|shostak|0.070|
|ode_sol_extend_TCC6|✅ proved - incomplete|shostak|0.570|
|ode_sol_extend_TCC7|✅ proved - incomplete|shostak|0.060|
|ode_sol_extend_TCC8|✅ proved - incomplete|shostak|0.060|
|ode_sol_extend_TCC9|✅ proved - incomplete|shostak|0.072|
|ode_sol_extend_TCC10|✅ proved - incomplete|shostak|0.080|
|ode_sol_extend_TCC11|✅ proved - incomplete|shostak|0.691|
|ode_sol_extend_TCC12|✅ proved - incomplete|shostak|0.080|
|ode_sol_extend_TCC13|✅ proved - incomplete|shostak|0.152|
|ode_sol_extend|✅ proved - incomplete|shostak|1.827|
|Lip_hp?_TCC1|✅ proved - incomplete|shostak|0.060|
|Lip_hp?_TCC2|✅ proved - incomplete|shostak|0.060|
|Lip_hp?_TCC3|✅ proved - incomplete|shostak|0.120|
|Lip_hp?_TCC4|✅ proved - incomplete|shostak|0.059|
|Lip_hp?_TCC5|✅ proved - incomplete|shostak|0.070|
|Lip_hp?_TCC6|✅ proved - incomplete|shostak|0.090|
|Lip_hp?_TCC7|✅ proved - incomplete|shostak|0.059|
|ode_sol_restrict_hp_TCC1|✅ proved - incomplete|shostak|0.370|
|ode_sol_restrict_hp_TCC2|✅ proved - incomplete|shostak|0.070|
|ode_sol_restrict_hp_TCC3|✅ proved - incomplete|shostak|0.090|
|ode_sol_restrict_hp_TCC4|✅ proved - incomplete|shostak|0.281|
|ode_sol_restrict_hp_TCC5|✅ proved - incomplete|shostak|0.058|
|ode_sol_restrict_hp|✅ proved - incomplete|shostak|3.158|
|unique_solution_restrict_TCC1|✅ proved - incomplete|shostak|0.062|
|unique_solution_restrict_TCC2|✅ proved - incomplete|shostak|0.060|
|unique_solution_restrict_TCC3|✅ proved - incomplete|shostak|0.060|
|unique_solution_restrict_TCC4|✅ proved - incomplete|shostak|0.070|
|unique_solution_restrict_TCC5|✅ proved - incomplete|shostak|0.220|
|unique_solution_restrict_TCC6|✅ proved - incomplete|shostak|0.064|
|unique_solution_restrict_TCC7|✅ proved - incomplete|shostak|0.070|
|unique_solution_restrict_TCC8|✅ proved - incomplete|shostak|0.863|
|unique_solution_restrict_TCC9|✅ proved - incomplete|shostak|0.080|
|unique_solution_restrict|✅ proved - incomplete|shostak|1.864|
|ci_lambda_eq_TCC1|✅ proved - incomplete|shostak|0.237|
|ci_lambda_eq_TCC2|✅ proved - incomplete|shostak|0.270|
|ci_lambda_eq_TCC3|✅ proved - incomplete|shostak|0.237|
|ci_lambda_eq_TCC4|✅ proved - incomplete|shostak|0.280|
|ci_lambda_eq_TCC5|✅ proved - incomplete|shostak|0.245|
|ci_lambda_eq|✅ proved - incomplete|shostak|0.307|
|ode_sol_derivable_TCC1|✅ proved - incomplete|shostak|0.120|
|ode_sol_derivable_TCC2|✅ proved - incomplete|shostak|0.600|
|ode_sol_derivable_TCC3|✅ proved - incomplete|shostak|0.589|
|ode_sol_derivable_TCC4|✅ proved - incomplete|shostak|0.110|
|ode_sol_derivable_TCC5|✅ proved - incomplete|shostak|0.561|
|ode_sol_derivable_TCC6|✅ proved - incomplete|shostak|0.140|
|ode_sol_derivable_TCC7|✅ proved - incomplete|shostak|0.652|
|ode_sol_derivable_TCC8|✅ proved - incomplete|shostak|0.153|
|ode_sol_derivable_TCC9|✅ proved - incomplete|shostak|0.182|
|ode_sol_derivable_TCC10|✅ proved - incomplete|shostak|0.190|
|ode_sol_derivable|✅ proved - incomplete|shostak|2.166|
|ode_sol_deriv_TCC1|✅ proved - incomplete|shostak|0.259|
|ode_sol_deriv_TCC2|✅ proved - incomplete|shostak|0.394|
|ode_sol_deriv|✅ proved - incomplete|shostak|10.465|
|ode_sol_init_TCC1|✅ proved - incomplete|shostak|0.393|
|ode_sol_init|✅ proved - incomplete|shostak|1.005|
|sol_uniq_hp_TCC1|✅ proved - incomplete|shostak|0.112|
|sol_uniq_hp_TCC2|✅ proved - incomplete|shostak|0.510|
|sol_uniq_hp|✅ proved - incomplete|shostak|4.376|
|ode_sol_TCC4|✅ proved - incomplete|shostak|0.192|
|ode_sol_TCC5|✅ proved - incomplete|shostak|0.323|

## `restrict_ode`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|restrict_TCC1|✅ proved - incomplete|shostak|0.040|
|restrict_cont_TCC1|✅ proved - complete|shostak|0.030|
|restrict_cont_TCC2|✅ proved - complete|shostak|0.040|
|restrict_cont_TCC3|✅ proved - complete|shostak|0.032|
|restrict_cont_TCC4|✅ proved - incomplete|shostak|0.050|
|restrict_cont_TCC5|✅ proved - incomplete|shostak|0.030|
|restrict_cont_TCC6|✅ proved - incomplete|shostak|0.030|
|restrict_cont|✅ proved - incomplete|shostak|0.216|
|restrict_Lip_TCC1|✅ proved - incomplete|shostak|0.040|
|restrict_Lip_TCC2|✅ proved - incomplete|shostak|0.040|
|restrict_Lip_TCC3|✅ proved - incomplete|shostak|0.040|
|restrict_Lip|✅ proved - incomplete|shostak|0.142|
|restrict_derivable_TCC1|✅ proved - incomplete|shostak|0.040|
|restrict_derivable_TCC2|✅ proved - incomplete|shostak|0.040|
|restrict_derivable_TCC3|✅ proved - incomplete|shostak|0.040|
|restrict_derivable_TCC4|✅ proved - incomplete|shostak|0.040|
|restrict_derivable|✅ proved - incomplete|shostak|0.183|
|restrict_deriv_TCC1|✅ proved - incomplete|shostak|0.070|
|restrict_deriv_TCC2|✅ proved - incomplete|shostak|0.000|
|restrict_deriv|✅ proved - incomplete|shostak|1.605|

## `linear_ode_1D`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|od_ln_TCC1|✅ proved - incomplete|shostak|0.183|
|od_ln_TCC2|✅ proved - incomplete|shostak|0.180|
|lin_lip_TCC1|✅ proved - complete|shostak|0.404|
|lin_lip_TCC2|✅ proved - complete|shostak|0.040|
|lin_lip_TCC3|✅ proved - complete|shostak|0.053|
|lin_lip|✅ proved - incomplete|shostak|1.663|
|lin_cont_d|✅ proved - incomplete|shostak|3.673|
|lin_cont_d_hp_TCC1|✅ proved - complete|shostak|0.045|
|lin_cont_d_hp_TCC2|✅ proved - complete|shostak|0.130|
|lin_cont_d_hp_TCC3|✅ proved - complete|shostak|0.050|
|lin_cont_d_hp|✅ proved - incomplete|shostak|0.909|
|lin_unique_solution_TCC1|✅ proved - incomplete|shostak|0.052|
|lin_unique_solution_TCC2|✅ proved - incomplete|shostak|0.340|
|lin_unique_solution_TCC3|✅ proved - incomplete|shostak|0.081|
|lin_unique_solution|✅ proved - incomplete|shostak|0.110|
|lin_unique_solution_hp_TCC1|✅ proved - incomplete|shostak|0.260|
|lin_unique_solution_hp|✅ proved - incomplete|shostak|1.889|
|lin_1D_unique_ci_TCC1|✅ proved - incomplete|shostak|0.050|
|lin_1D_unique_ci_TCC2|✅ proved - incomplete|shostak|0.339|
|lin_1D_unique_ci_TCC3|✅ proved - incomplete|shostak|0.273|
|lin_1D_unique_ci|✅ proved - incomplete|shostak|2.048|
|lin_1D_unique_hp_TCC1|✅ proved - incomplete|shostak|0.050|
|lin_1D_unique_hp_TCC2|✅ proved - incomplete|shostak|0.070|
|lin_1D_unique_hp|✅ proved - incomplete|shostak|1.884|
|lin_1D_unique_hp_ci_TCC1|✅ proved - incomplete|shostak|0.050|
|lin_1D_unique_hp_ci_TCC2|✅ proved - incomplete|shostak|0.193|
|lin_1D_unique_hp_ci_TCC3|✅ proved - incomplete|shostak|0.181|
|lin_1D_unique_hp_ci_TCC4|✅ proved - incomplete|shostak|0.318|
|lin_1D_unique_hp_ci_TCC5|✅ proved - incomplete|shostak|0.060|
|lin_1D_unique_hp_ci_TCC6|✅ proved - incomplete|shostak|0.307|
|lin_1D_unique_hp_ci_TCC7|✅ proved - incomplete|shostak|0.259|
|lin_1D_unique_hp_ci_TCC8|✅ proved - incomplete|shostak|0.201|
|lin_1D_unique_hp_ci_TCC9|✅ proved - incomplete|shostak|0.786|
|lin_1D_unique_hp_ci|✅ proved - incomplete|shostak|2.400|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib//float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-pvsio-fix.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210219-extratregies.lisp`|
