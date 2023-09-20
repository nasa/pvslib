# Summary for `ODEs`
Run started at 5:41:29 9/20/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **545**   | **545**    | **545**    | **0**  | **10:17.758 s**   |
|top|0|0|0|0|0.000|
|r2v_def|23|23|23|0|4.195|
|exp_analysis|21|21|21|0|6.890|
|interval_def|15|15|15|0|3.522|
|r2v_analysis|75|75|75|0|18.727|
|r2v_continuous_extension|30|30|30|0|11.688|
|r2v_diff_extension|36|36|36|0|49.983|
|r2v_sequence_convergence|27|27|27|0|10.153|
|metric_rho|13|13|13|0|46.492|
|continuous_function_complete_rho|5|5|5|0|38.075|
|ODE_def|14|14|14|0|1.809|
|ODE_Lipschitz_def|17|17|17|0|5.501|
|ODE_continuous_def|23|23|23|0|23.358|
|norm_ineq|30|30|30|0|11.106|
|ODE_psi_def|11|11|11|0|5.903|
|ODE_psi_contraction|64|64|64|0|4:58.951|
|ODE_solution_existence_uniqueness|87|87|87|0|1:0.490|
|restrict_ode|20|20|20|0|2.996|
|linear_ode_1D|34|34|34|0|17.919|
## Detailed Summary 
## `top`
No formula declaration found.
## `r2v_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|r2v_n_r2v|✅ proved - incomplete|shostak|0.080|
|length_TCC1|✅ proved - incomplete|shostak|0.040|
|length_x|✅ proved - incomplete|shostak|0.060|
|nth_TCC1|✅ proved - incomplete|shostak|0.054|
|null_cons|✅ proved - incomplete|shostak|0.120|
|length_null|✅ proved - incomplete|shostak|0.100|
|length_cons|✅ proved - incomplete|shostak|0.110|
|car_TCC1|✅ proved - incomplete|shostak|0.060|
|cdr_TCC1|✅ proved - incomplete|shostak|0.140|
|cons_TCC1|✅ proved - incomplete|shostak|0.079|
|length_cdr|✅ proved - incomplete|shostak|0.100|
|nth_car_TCC1|✅ proved - incomplete|shostak|0.050|
|nth_car|✅ proved - incomplete|shostak|0.050|
|nth_cdr_TCC1|✅ proved - incomplete|shostak|0.080|
|nth_cdr|✅ proved - incomplete|shostak|0.049|
|nth_equal_TCC1|✅ proved - incomplete|shostak|0.070|
|nth_equal|✅ proved - incomplete|shostak|0.648|
|plusr2v_TCC1|✅ proved - incomplete|shostak|0.110|
|nth_add_TCC1|✅ proved - incomplete|shostak|0.060|
|nth_add|✅ proved - incomplete|shostak|0.220|
|subr2v_TCC1|✅ proved - incomplete|shostak|0.151|
|nth_sub_TCC1|✅ proved - incomplete|shostak|0.548|
|nth_sub|✅ proved - incomplete|shostak|1.216|

## `exp_analysis`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|deriv_domain_exp_a|✅ proved - complete|shostak|0.436|
|IMP_chain_rule_TCC1|✅ proved - complete|shostak|0.457|
|IMP_chain_rule_TCC2|✅ proved - complete|shostak|0.030|
|IMP_chain_rule_TCC3|✅ proved - complete|shostak|0.120|
|IMP_chain_rule_TCC4|✅ proved - complete|shostak|0.050|
|IMP_fundamental_theorem_TCC1|✅ proved - complete|shostak|0.040|
|IMP_fundamental_theorem_TCC2|✅ proved - complete|shostak|0.030|
|derivable_exp_lin|✅ proved - incomplete|shostak|0.482|
|deriv_exp_lin_TCC1|✅ proved - incomplete|shostak|0.040|
|deriv_exp_lin|✅ proved - incomplete|shostak|0.000|
|derivable_exp_lin_r|✅ proved - incomplete|shostak|0.375|
|deriv_exp_lin_r_TCC1|✅ proved - incomplete|shostak|0.403|
|deriv_exp_lin_r|✅ proved - incomplete|shostak|0.587|
|cont_exp_lin|✅ proved - incomplete|shostak|0.598|
|deriv_Int_lin_TCC1|✅ proved - incomplete|shostak|0.180|
|deriv_Int_lin|✅ proved - incomplete|shostak|0.423|
|derivable_exp_ln_TCC1|✅ proved - complete|shostak|0.060|
|derivable_exp_ln|✅ proved - incomplete|shostak|0.311|
|deriv_exp_ln_TCC1|✅ proved - incomplete|shostak|0.060|
|deriv_exp_ln_TCC2|✅ proved - complete|shostak|0.060|
|deriv_exp_ln|✅ proved - incomplete|shostak|2.148|

## `interval_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|closed_interval_TCC1|✅ proved - complete|shostak|0.040|
|ci_ci|✅ proved - complete|shostak|0.040|
|ci_nonempty|✅ proved - complete|shostak|0.050|
|ci_connected|✅ proved - complete|shostak|0.059|
|ci_not_one_element|✅ proved - complete|shostak|0.060|
|ci_deriv_domain|✅ proved - complete|shostak|0.494|
|ci_closed_D_TCC1|✅ proved - incomplete|shostak|0.053|
|ci_closed_D|✅ proved - incomplete|shostak|1.736|
|ci_bounded_D|✅ proved - incomplete|shostak|0.521|
|ci_nonempty_D|✅ proved - incomplete|shostak|0.060|
|d_three|✅ proved - incomplete|shostak|0.040|
|hp_noe|✅ proved - complete|shostak|0.090|
|hp_dd|✅ proved - complete|shostak|0.190|
|hp_con|✅ proved - complete|shostak|0.049|
|hp_ne|✅ proved - complete|shostak|0.040|

## `r2v_analysis`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|deriv_domain|✅ proved - complete|shostak|0.447|
|IMP_fundamental_theorem_TCC1|✅ proved - complete|shostak|0.040|
|IMP_fundamental_theorem_TCC2|✅ proved - complete|shostak|0.030|
|IMP_fundamental_theorem_TCC3|✅ proved - complete|shostak|0.030|
|IMP_r2v_def_TCC1|✅ proved - complete|shostak|0.040|
|derivable?_TCC1|✅ proved - incomplete|shostak|0.588|
|deriv_TCC1|✅ proved - incomplete|shostak|0.060|
|deriv_TCC2|✅ proved - incomplete|shostak|0.040|
|deriv_TCC3|✅ proved - incomplete|shostak|0.070|
|deriv_TCC4|✅ proved - incomplete|shostak|0.040|
|deriv_TCC5|✅ proved - incomplete|shostak|0.140|
|deriv_TCC6|✅ proved - incomplete|shostak|0.070|
|deriv_TCC7|✅ proved - incomplete|shostak|0.210|
|deriv_nth_TCC1|✅ proved - incomplete|shostak|0.050|
|deriv_nth_TCC2|✅ proved - incomplete|shostak|0.040|
|deriv_nth|✅ proved - incomplete|shostak|0.687|
|integrable?_TCC1|✅ proved - incomplete|shostak|0.040|
|integral_TCC1|✅ proved - incomplete|shostak|0.050|
|integral_TCC2|✅ proved - incomplete|shostak|0.060|
|integral_TCC3|✅ proved - incomplete|shostak|0.050|
|integral_TCC4|✅ proved - incomplete|shostak|0.080|
|integral_TCC5|✅ proved - incomplete|shostak|0.140|
|integral_TCC6|✅ proved - incomplete|shostak|0.100|
|integral_TCC7|✅ proved - incomplete|shostak|0.142|
|int_nth_TCC1|✅ proved - incomplete|shostak|0.409|
|int_nth_TCC2|✅ proved - incomplete|shostak|0.489|
|int_nth|✅ proved - incomplete|shostak|0.557|
|Integral_TCC1|✅ proved - incomplete|shostak|0.050|
|Integral_TCC2|✅ proved - incomplete|shostak|0.040|
|Integral_TCC3|✅ proved - incomplete|shostak|0.070|
|Integral_TCC4|✅ proved - incomplete|shostak|0.142|
|Integral_TCC5|✅ proved - incomplete|shostak|0.110|
|Integral_TCC6|✅ proved - incomplete|shostak|0.120|
|Int_nth_TCC1|✅ proved - incomplete|shostak|0.430|
|Int_nth_TCC2|✅ proved - incomplete|shostak|0.779|
|Int_nth|✅ proved - incomplete|shostak|0.491|
|Int_zero_TCC1|✅ proved - incomplete|shostak|0.060|
|Int_zero|✅ proved - incomplete|shostak|0.110|
|Int_int_TCC1|✅ proved - incomplete|shostak|0.541|
|Int_int|✅ proved - incomplete|shostak|0.150|
|Integrable_sum|✅ proved - incomplete|shostak|0.262|
|Int_sum_TCC1|✅ proved - incomplete|shostak|0.040|
|Int_sum|✅ proved - incomplete|shostak|2.469|
|Integrable_diff|✅ proved - incomplete|shostak|0.200|
|Int_diff_TCC1|✅ proved - incomplete|shostak|0.040|
|Int_diff|✅ proved - incomplete|shostak|0.944|
|Integrable_const_TCC1|✅ proved - incomplete|shostak|0.060|
|Integrable_const|✅ proved - incomplete|shostak|0.468|
|Integral_const_TCC1|✅ proved - incomplete|shostak|0.062|
|Integral_const|✅ proved - incomplete|shostak|1.216|
|cont_entry_v_TCC1|✅ proved - incomplete|shostak|0.140|
|cont_entry_v_TCC2|✅ proved - incomplete|shostak|0.140|
|cont_entry_v_TCC3|✅ proved - incomplete|shostak|0.050|
|cont_entry_v_TCC4|✅ proved - incomplete|shostak|0.070|
|cont_entry_v_TCC5|✅ proved - incomplete|shostak|0.040|
|cont_entry_v|✅ proved - incomplete|shostak|0.000|
|cont_v_entry_TCC1|✅ proved - incomplete|shostak|0.060|
|cont_v_entry_TCC2|✅ proved - incomplete|shostak|0.060|
|cont_v_entry_TCC3|✅ proved - incomplete|shostak|0.040|
|cont_v_entry_TCC4|✅ proved - incomplete|shostak|0.070|
|cont_v_entry_TCC5|✅ proved - incomplete|shostak|0.040|
|cont_v_entry|✅ proved - incomplete|shostak|1.080|
|cont_triv_TCC1|✅ proved - incomplete|shostak|0.050|
|cont_triv_TCC2|✅ proved - incomplete|shostak|0.040|
|cont_triv|✅ proved - incomplete|shostak|0.050|
|cont_nn_comp_TCC1|✅ proved - incomplete|shostak|0.175|
|cont_nn_comp|✅ proved - incomplete|shostak|0.579|
|cont_sub_TCC1|✅ proved - incomplete|shostak|0.370|
|cont_sub|✅ proved - incomplete|shostak|1.197|
|cont_int|✅ proved - incomplete|shostak|0.100|
|cont_Int|✅ proved - incomplete|shostak|0.080|
|Int_cont_TCC1|✅ proved - incomplete|shostak|0.040|
|Int_cont_TCC2|✅ proved - incomplete|shostak|0.071|
|Int_cont|✅ proved - incomplete|shostak|0.572|
|der_cont|✅ proved - incomplete|shostak|0.060|

## `r2v_continuous_extension`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_r2v_analysis_TCC1|✅ proved - complete|shostak|0.050|
|IMP_r2v_analysis_TCC2|✅ proved - complete|shostak|0.040|
|IMP_r2v_analysis_TCC3|✅ proved - complete|shostak|0.044|
|d_b_TCC1|✅ proved - incomplete|shostak|0.060|
|d_b_TCC2|✅ proved - incomplete|shostak|0.110|
|d_b_TCC3|✅ proved - incomplete|shostak|0.180|
|ext_c_TCC1|✅ proved - incomplete|shostak|0.080|
|ext_c_TCC2|✅ proved - incomplete|shostak|0.080|
|ext_c_TCC3|✅ proved - incomplete|shostak|0.147|
|ext_c_TCC4|✅ proved - incomplete|shostak|0.080|
|ext_c_TCC5|✅ proved - incomplete|shostak|0.070|
|ext_c_TCC6|✅ proved - incomplete|shostak|0.110|
|ext_cont_TCC1|✅ proved - incomplete|shostak|0.120|
|ext_cont_TCC2|✅ proved - incomplete|shostak|0.086|
|ext_cont_TCC3|✅ proved - incomplete|shostak|0.060|
|ext_cont_TCC4|✅ proved - incomplete|shostak|0.090|
|ext_cont|✅ proved - incomplete|shostak|3.034|
|ext_c_TCC7|✅ proved - incomplete|shostak|0.048|
|ext_c_TCC8|✅ proved - incomplete|shostak|0.050|
|ext_c_TCC9|✅ proved - incomplete|shostak|0.050|
|ext_c_TCC10|✅ proved - incomplete|shostak|0.110|
|ext_c_TCC11|✅ proved - incomplete|shostak|0.060|
|ext_c_TCC12|✅ proved - incomplete|shostak|0.060|
|ext_c_TCC13|✅ proved - incomplete|shostak|0.070|
|ext_const|✅ proved - incomplete|shostak|0.194|
|ext_cont_r|✅ proved - incomplete|shostak|2.720|
|ext_cont_D_TCC1|✅ proved - incomplete|shostak|0.146|
|ext_cont_D|✅ proved - incomplete|shostak|3.160|
|ext_plus|✅ proved - incomplete|shostak|0.400|
|ext_ineq|✅ proved - incomplete|shostak|0.179|

## `r2v_diff_extension`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_r2v_continuous_extension_TCC1|✅ proved - complete|shostak|0.030|
|ext_derivable_lb_TCC1|✅ proved - complete|shostak|0.060|
|ext_derivable_lb_TCC2|✅ proved - complete|shostak|0.060|
|ext_derivable_lb_TCC3|✅ proved - incomplete|shostak|0.160|
|ext_derivable_lb_TCC4|✅ proved - incomplete|shostak|0.140|
|ext_derivable_lb_TCC5|✅ proved - incomplete|shostak|0.109|
|ext_derivable_lb_TCC6|✅ proved - incomplete|shostak|0.150|
|ext_derivable_lb_TCC7|✅ proved - incomplete|shostak|0.060|
|ext_derivable_lb_TCC8|✅ proved - incomplete|shostak|0.230|
|ext_derivable_lb_TCC9|✅ proved - incomplete|shostak|0.120|
|ext_derivable_lb|✅ proved - incomplete|shostak|4.921|
|ext_deriv_lb_TCC1|✅ proved - incomplete|shostak|0.170|
|ext_deriv_lb_TCC2|✅ proved - incomplete|shostak|0.310|
|ext_deriv_lb|✅ proved - incomplete|shostak|8.072|
|ext_derivable_ub_TCC1|✅ proved - incomplete|shostak|0.221|
|ext_derivable_ub|✅ proved - incomplete|shostak|4.581|
|ext_deriv_ub_TCC1|✅ proved - incomplete|shostak|0.170|
|ext_deriv_ub_TCC2|✅ proved - incomplete|shostak|0.300|
|ext_deriv_ub|✅ proved - incomplete|shostak|2.421|
|ext_derivable_int_TCC1|✅ proved - incomplete|shostak|0.112|
|ext_derivable_int|✅ proved - incomplete|shostak|3.628|
|ext_deriv_int_TCC1|✅ proved - incomplete|shostak|0.179|
|ext_deriv_int_TCC2|✅ proved - incomplete|shostak|0.140|
|ext_deriv_int|✅ proved - incomplete|shostak|10.431|
|ext_derivable_ext_TCC1|✅ proved - incomplete|shostak|0.110|
|ext_derivable_ext|✅ proved - incomplete|shostak|3.587|
|ext_deriv_extl_TCC1|✅ proved - incomplete|shostak|0.170|
|ext_deriv_extl|✅ proved - incomplete|shostak|0.000|
|ext_deriv_extu_TCC1|✅ proved - incomplete|shostak|0.110|
|ext_deriv_extu_TCC2|✅ proved - incomplete|shostak|0.180|
|ext_deriv_extu|✅ proved - incomplete|shostak|7.501|
|ext_d_TCC1|✅ proved - incomplete|shostak|0.150|
|ext_d_TCC2|✅ proved - incomplete|shostak|0.060|
|ext_d_TCC3|✅ proved - incomplete|shostak|0.050|
|ext_d_TCC4|✅ proved - incomplete|shostak|0.341|
|ext_d_TCC5|✅ proved - incomplete|shostak|0.949|

## `r2v_sequence_convergence`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_r2v_analysis_TCC1|✅ proved - complete|shostak|0.030|
|IMP_r2v_analysis_TCC2|✅ proved - complete|shostak|0.030|
|IMP_r2v_analysis_TCC3|✅ proved - complete|shostak|0.030|
|conv_pw?_TCC1|✅ proved - incomplete|shostak|0.090|
|conv_pw?_TCC2|✅ proved - incomplete|shostak|0.071|
|conv_pw?_TCC3|✅ proved - incomplete|shostak|0.090|
|conv_pw?_TCC4|✅ proved - incomplete|shostak|0.070|
|cauchy_pw?_TCC1|✅ proved - incomplete|shostak|0.080|
|cauchy_conv_pw|✅ proved - incomplete|shostak|0.341|
|conv_u?_TCC1|✅ proved - incomplete|shostak|0.090|
|conv_u?_TCC2|✅ proved - incomplete|shostak|0.154|
|conv_u?_TCC3|✅ proved - incomplete|shostak|0.070|
|cauchy_u?_TCC1|✅ proved - incomplete|shostak|0.215|
|conv_pw_equiv|✅ proved - incomplete|shostak|1.845|
|cauchy_pw_equiv|✅ proved - incomplete|shostak|0.537|
|conv_u_equiv_TCC1|✅ proved - incomplete|shostak|0.090|
|conv_u_equiv|✅ proved - incomplete|shostak|1.254|
|cauchy_u_equiv|✅ proved - incomplete|shostak|1.773|
|cauchy_u_pw|✅ proved - incomplete|shostak|0.110|
|cauchy_u_conv_pw|✅ proved - incomplete|shostak|0.045|
|K_epsn|✅ proved - complete|shostak|0.070|
|norm_conv_bound_TCC1|✅ proved - incomplete|shostak|0.070|
|norm_conv_bound_TCC2|✅ proved - incomplete|shostak|0.140|
|norm_conv_bound_TCC3|✅ proved - incomplete|shostak|0.170|
|norm_conv_bound|✅ proved - incomplete|shostak|2.398|
|cauchy_u_conv_u|✅ proved - incomplete|shostak|0.290|
|conv_u_cont|✅ proved - incomplete|shostak|0.000|

## `metric_rho`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_r2v_continuous_extension_TCC1|✅ proved - complete|shostak|0.030|
|pre_rho_TCC1|✅ proved - incomplete|shostak|0.090|
|pre_rho_TCC2|✅ proved - incomplete|shostak|0.120|
|pre_rho_cont|✅ proved - incomplete|shostak|15.595|
|pre_rho_cont_D_TCC1|✅ proved - incomplete|shostak|0.180|
|pre_rho_cont_D|✅ proved - incomplete|shostak|2.155|
|rho_TCC1|✅ proved - incomplete|shostak|2.150|
|rho_TCC2|✅ proved - incomplete|shostak|0.061|
|rho_TCC3|✅ proved - incomplete|shostak|0.880|
|rho_zero|✅ proved - incomplete|shostak|0.008|
|rho_symmetric|✅ proved - incomplete|shostak|5.233|
|rho_triangle|✅ proved - incomplete|shostak|19.930|
|rho_metric|✅ proved - incomplete|shostak|0.060|

## `continuous_function_complete_rho`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_metric_rho_TCC1|✅ proved - complete|shostak|0.030|
|IMP_r2v_sequence_convergence_TCC1|✅ proved - complete|shostak|0.050|
|IMP_r2v_sequence_convergence_TCC2|✅ proved - complete|shostak|0.042|
|IMP_r2v_sequence_convergence_TCC3|✅ proved - complete|shostak|0.050|
|Cfs_complete|✅ proved - incomplete|shostak|37.903|

## `ODE_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_r2v_analysis_TCC1|✅ proved - complete|shostak|0.030|
|IMP_r2v_analysis_TCC2|✅ proved - complete|shostak|0.030|
|IMP_r2v_analysis_TCC3|✅ proved - complete|shostak|0.040|
|IMP_derivatives_def_TCC1|✅ proved - complete|shostak|0.040|
|od_fx_TCC1|✅ proved - incomplete|shostak|0.060|
|nth_od_fx_TCC1|✅ proved - incomplete|shostak|0.060|
|nth_od_fx_TCC2|✅ proved - incomplete|shostak|0.060|
|nth_od_fx|✅ proved - incomplete|shostak|0.299|
|od_sol?_TCC1|✅ proved - incomplete|shostak|0.037|
|od_sol_nth_TCC1|✅ proved - incomplete|shostak|0.290|
|od_sol_nth_TCC2|✅ proved - incomplete|shostak|0.398|
|od_sol_nth|✅ proved - incomplete|shostak|0.235|
|od_sol?_TCC2|✅ proved - incomplete|shostak|0.110|
|od_sol?_TCC3|✅ proved - incomplete|shostak|0.120|

## `ODE_Lipschitz_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_ODE_def_TCC1|✅ proved - complete|shostak|0.030|
|IMP_ODE_def_TCC2|✅ proved - complete|shostak|0.040|
|IMP_ODE_def_TCC3|✅ proved - complete|shostak|0.026|
|Lip_d?_TCC1|✅ proved - incomplete|shostak|0.120|
|Lip_d?_TCC2|✅ proved - incomplete|shostak|0.110|
|Lip_norm_od_f|✅ proved - incomplete|shostak|0.639|
|Lip_entry?_TCC1|✅ proved - incomplete|shostak|0.090|
|Lip_entry?_TCC2|✅ proved - incomplete|shostak|0.091|
|Lip_entry?_TCC3|✅ proved - incomplete|shostak|0.120|
|Lip_entry_c_TCC1|✅ proved - incomplete|shostak|0.120|
|Lip_entry_c_TCC2|✅ proved - incomplete|shostak|0.121|
|Lip_entry_c_TCC3|✅ proved - incomplete|shostak|0.110|
|Lip_entry_c_TCC4|✅ proved - incomplete|shostak|1.853|
|Lip_entry_equiv|✅ proved - incomplete|shostak|1.485|
|Lip_c_TCC1|✅ proved - incomplete|shostak|0.120|
|Lip_c_TCC2|✅ proved - incomplete|shostak|0.106|
|Lip_c_TCC3|✅ proved - incomplete|shostak|0.320|

## `ODE_continuous_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_ODE_Lipschitz_def_TCC1|✅ proved - complete|shostak|0.030|
|IMP_ODE_Lipschitz_def_TCC2|✅ proved - complete|shostak|0.030|
|IMP_ODE_Lipschitz_def_TCC3|✅ proved - complete|shostak|0.030|
|cont_d?_TCC1|✅ proved - incomplete|shostak|0.070|
|cont_d?_TCC2|✅ proved - incomplete|shostak|0.070|
|cont_d?_TCC3|✅ proved - complete|shostak|0.050|
|cont_Lip_2ndv_TCC1|✅ proved - incomplete|shostak|0.100|
|cont_Lip_2ndv|✅ proved - incomplete|shostak|0.639|
|cont_Lip_bothv_TCC1|✅ proved - incomplete|shostak|0.257|
|cont_Lip_bothv_TCC2|✅ proved - incomplete|shostak|0.240|
|cont_Lip_bothv_TCC3|✅ proved - incomplete|shostak|0.140|
|cont_Lip_bothv_TCC4|✅ proved - incomplete|shostak|0.060|
|cont_Lip_bothv|✅ proved - incomplete|shostak|14.509|
|cont_Lip_bothR_TCC1|✅ proved - incomplete|shostak|0.290|
|cont_Lip_bothR_TCC2|✅ proved - incomplete|shostak|0.299|
|cont_Lip_bothR_TCC3|✅ proved - incomplete|shostak|0.160|
|cont_Lip_bothR|✅ proved - incomplete|shostak|1.465|
|cont_Lip_norm_TCC1|✅ proved - incomplete|shostak|0.165|
|cont_Lip_norm|✅ proved - incomplete|shostak|1.584|
|cont_od_fx|✅ proved - incomplete|shostak|1.440|
|Int_od_fx|✅ proved - incomplete|shostak|0.060|
|cont_Lip_real_TCC1|✅ proved - incomplete|shostak|0.349|
|cont_Lip_real|✅ proved - incomplete|shostak|1.321|

## `norm_ineq`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_ODE_continuous_def_TCC1|✅ proved - complete|shostak|0.030|
|IMP_ODE_continuous_def_TCC2|✅ proved - complete|shostak|0.030|
|IMP_ODE_continuous_def_TCC3|✅ proved - complete|shostak|0.030|
|int_od_fx|✅ proved - incomplete|shostak|0.070|
|int_norm_od_fx_TCC1|✅ proved - incomplete|shostak|0.090|
|int_norm_od_fx_TCC2|✅ proved - incomplete|shostak|0.381|
|int_norm_od_fx|✅ proved - incomplete|shostak|0.135|
|norminf_int_TCC1|✅ proved - incomplete|shostak|0.030|
|norminf_int_TCC2|✅ proved - incomplete|shostak|0.090|
|norminf_int_TCC3|✅ proved - incomplete|shostak|0.040|
|norminf_int|✅ proved - incomplete|shostak|6.715|
|norminf_Int_TCC1|✅ proved - incomplete|shostak|0.181|
|norminf_Int_TCC2|✅ proved - incomplete|shostak|0.430|
|norminf_Int_TCC3|✅ proved - incomplete|shostak|0.370|
|norminf_Int_TCC4|✅ proved - incomplete|shostak|0.063|
|norminf_Int|✅ proved - incomplete|shostak|0.140|
|int_norm_cont_TCC1|✅ proved - incomplete|shostak|0.060|
|int_norm_cont_TCC2|✅ proved - incomplete|shostak|0.150|
|int_norm_cont|✅ proved - incomplete|shostak|0.110|
|normi_TCC1|✅ proved - incomplete|shostak|0.050|
|normi_TCC2|✅ proved - incomplete|shostak|0.050|
|normi_TCC3|✅ proved - incomplete|shostak|0.080|
|normi_TCC4|✅ proved - incomplete|shostak|0.150|
|normi_TCC5|✅ proved - incomplete|shostak|0.060|
|normi|✅ proved - incomplete|shostak|0.990|
|normI_TCC1|✅ proved - incomplete|shostak|0.050|
|normI_TCC2|✅ proved - incomplete|shostak|0.080|
|normI_TCC3|✅ proved - incomplete|shostak|0.160|
|normI_TCC4|✅ proved - incomplete|shostak|0.070|
|normI|✅ proved - incomplete|shostak|0.221|

## `ODE_psi_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_ODE_def_TCC1|✅ proved - complete|shostak|0.040|
|IMP_ODE_def_TCC2|✅ proved - complete|shostak|0.030|
|IMP_ODE_def_TCC3|✅ proved - complete|shostak|0.040|
|psi_TCC1|✅ proved - incomplete|shostak|0.060|
|psi_TCC2|✅ proved - incomplete|shostak|0.235|
|psi_TCC3|✅ proved - incomplete|shostak|0.130|
|psi_init|✅ proved - incomplete|shostak|0.118|
|psi_derivable|✅ proved - incomplete|shostak|2.330|
|psi_cont|✅ proved - incomplete|shostak|0.108|
|psi_deriv_TCC1|✅ proved - incomplete|shostak|0.030|
|psi_deriv|✅ proved - incomplete|shostak|2.782|

## `ODE_psi_contraction`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_exp_analysis_TCC1|✅ proved - complete|shostak|0.040|
|IMP_exp_analysis_TCC2|✅ proved - complete|shostak|0.040|
|IMP_exp_analysis_TCC3|✅ proved - complete|shostak|0.038|
|IMP_metric_rho_TCC1|✅ proved - complete|shostak|0.040|
|od_fx_diff_Int_TCC1|✅ proved - incomplete|shostak|0.516|
|od_fx_diff_Int_TCC2|✅ proved - incomplete|shostak|0.050|
|od_fx_diff_Int|✅ proved - incomplete|shostak|0.241|
|od_fx_contD_diff_TCC1|✅ proved - incomplete|shostak|0.508|
|od_fx_contD_diff_TCC2|✅ proved - incomplete|shostak|0.065|
|od_fx_contD_diff_TCC3|✅ proved - incomplete|shostak|0.320|
|od_fx_contD_diff|✅ proved - incomplete|shostak|11.603|
|rho_psi_int_TCC1|✅ proved - incomplete|shostak|0.064|
|rho_psi_int_TCC2|✅ proved - incomplete|shostak|0.050|
|rho_psi_int_TCC3|✅ proved - incomplete|shostak|0.070|
|rho_psi_int_TCC4|✅ proved - incomplete|shostak|0.090|
|rho_psi_int_TCC5|✅ proved - incomplete|shostak|0.090|
|rho_psi_int_TCC6|✅ proved - incomplete|shostak|0.101|
|rho_psi_int_TCC7|✅ proved - incomplete|shostak|18.403|
|rho_psi_int_TCC8|✅ proved - incomplete|shostak|0.060|
|rho_psi_int|✅ proved - incomplete|shostak|21.330|
|od_fx_diff_norm_int_TCC1|✅ proved - incomplete|shostak|0.240|
|od_fx_diff_norm_int|✅ proved - incomplete|shostak|0.790|
|od_fx_contD_Int_diff_TCC1|✅ proved - incomplete|shostak|0.516|
|od_fx_contD_Int_diff_TCC2|✅ proved - incomplete|shostak|0.070|
|od_fx_contD_Int_diff|✅ proved - incomplete|shostak|1:18.700|
|rho_psi_int_ineq_TCC1|✅ proved - incomplete|shostak|0.080|
|rho_psi_int_ineq_TCC2|✅ proved - incomplete|shostak|0.080|
|rho_psi_int_ineq_TCC3|✅ proved - incomplete|shostak|0.097|
|rho_psi_int_ineq_TCC4|✅ proved - incomplete|shostak|0.110|
|rho_psi_int_ineq_TCC5|✅ proved - incomplete|shostak|0.090|
|rho_psi_int_ineq_TCC6|✅ proved - incomplete|shostak|0.090|
|rho_psi_int_ineq_TCC7|✅ proved - incomplete|shostak|0.142|
|rho_psi_int_ineq_TCC8|✅ proved - incomplete|shostak|0.060|
|rho_psi_int_ineq|✅ proved - incomplete|shostak|4.058|
|norm_diff_Int_TCC1|✅ proved - incomplete|shostak|0.200|
|norm_diff_Int_TCC2|✅ proved - incomplete|shostak|0.161|
|norm_diff_Int_TCC3|✅ proved - incomplete|shostak|0.120|
|norm_diff_Int|✅ proved - incomplete|shostak|0.426|
|norm_diff_contD_TCC1|✅ proved - incomplete|shostak|0.170|
|norm_diff_contD_TCC2|✅ proved - incomplete|shostak|0.070|
|norm_diff_contD|✅ proved - incomplete|shostak|42.794|
|rho_psi_lip_ineq_TCC1|✅ proved - incomplete|shostak|0.130|
|rho_psi_lip_ineq|✅ proved - incomplete|shostak|6.334|
|rho_psi_exp_contD_triv_TCC1|✅ proved - incomplete|shostak|4.748|
|rho_psi_exp_contD_triv|✅ proved - incomplete|shostak|5.966|
|rho_psi_int_exp_TCC1|✅ proved - incomplete|shostak|0.000|
|rho_psi_int_exp|✅ proved - incomplete|shostak|1.998|
|exp_rho_Integrable|✅ proved - incomplete|shostak|0.745|
|exp_rho_contD_rho_TCC1|✅ proved - incomplete|shostak|0.130|
|exp_rho_contD_rho|✅ proved - incomplete|shostak|39.055|
|exp_rho_contD_TCC1|✅ proved - incomplete|shostak|0.063|
|exp_rho_contD_TCC2|✅ proved - incomplete|shostak|0.070|
|exp_rho_contD_TCC3|✅ proved - incomplete|shostak|0.060|
|exp_rho_contD_TCC4|✅ proved - incomplete|shostak|0.430|
|exp_rho_contD|✅ proved - incomplete|shostak|28.839|
|rho_psi_int_rho_TCC1|✅ proved - incomplete|shostak|0.190|
|rho_psi_int_rho|✅ proved - incomplete|shostak|7.642|
|rho_psi_rho_pull_TCC1|✅ proved - incomplete|shostak|0.189|
|rho_psi_rho_pull|✅ proved - incomplete|shostak|12.277|
|rho_psi_rho_exp_int|✅ proved - incomplete|shostak|4.696|
|psi_contraction|✅ proved - incomplete|shostak|0.120|
|psi_fixed_imp_sol_TCC1|✅ proved - incomplete|shostak|0.080|
|psi_fixed_imp_sol_TCC2|✅ proved - incomplete|shostak|0.110|
|psi_fixed_imp_sol|✅ proved - incomplete|shostak|2.296|

## `ODE_solution_existence_uniqueness`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Psi_TCC1|✅ proved - complete|shostak|0.080|
|Psi_TCC2|✅ proved - complete|shostak|0.050|
|Psi_TCC3|✅ proved - complete|shostak|0.050|
|Psi_TCC4|✅ proved - complete|shostak|0.040|
|Psi_TCC5|✅ proved - incomplete|shostak|0.719|
|Psi_TCC6|✅ proved - incomplete|shostak|0.593|
|Psi_TCC7|✅ proved - incomplete|shostak|0.116|
|Psi_TCC8|✅ proved - incomplete|shostak|0.150|
|Psi_contract_TCC1|✅ proved - incomplete|shostak|0.454|
|Psi_contract_TCC2|✅ proved - incomplete|shostak|0.230|
|Psi_contract_TCC3|✅ proved - incomplete|shostak|0.656|
|Psi_contract|✅ proved - incomplete|shostak|1.365|
|Psi_fixed_point_TCC1|✅ proved - incomplete|shostak|0.457|
|Psi_fixed_point|✅ proved - incomplete|shostak|1.452|
|init_unique_solution_TCC1|✅ proved - incomplete|shostak|0.777|
|init_unique_solution_TCC2|✅ proved - incomplete|shostak|0.120|
|init_unique_solution_TCC3|✅ proved - incomplete|shostak|0.120|
|init_unique_solution_TCC4|✅ proved - incomplete|shostak|0.616|
|init_unique_solution|✅ proved - incomplete|shostak|1.263|
|unique_solution|✅ proved - incomplete|shostak|0.190|
|ode_sol_TCC1|✅ proved - incomplete|shostak|0.300|
|ode_sol_TCC2|✅ proved - incomplete|shostak|0.100|
|ode_sol_TCC3|✅ proved - incomplete|shostak|1.049|
|ode_sol_extend_TCC1|✅ proved - complete|shostak|0.050|
|ode_sol_extend_TCC2|✅ proved - complete|shostak|0.050|
|ode_sol_extend_TCC3|✅ proved - complete|shostak|0.070|
|ode_sol_extend_TCC4|✅ proved - complete|shostak|0.099|
|ode_sol_extend_TCC5|✅ proved - complete|shostak|0.070|
|ode_sol_extend_TCC6|✅ proved - incomplete|shostak|0.627|
|ode_sol_extend_TCC7|✅ proved - incomplete|shostak|0.070|
|ode_sol_extend_TCC8|✅ proved - incomplete|shostak|0.071|
|ode_sol_extend_TCC9|✅ proved - incomplete|shostak|0.080|
|ode_sol_extend_TCC10|✅ proved - incomplete|shostak|0.080|
|ode_sol_extend_TCC11|✅ proved - incomplete|shostak|0.735|
|ode_sol_extend_TCC12|✅ proved - incomplete|shostak|0.100|
|ode_sol_extend_TCC13|✅ proved - incomplete|shostak|0.170|
|ode_sol_extend|✅ proved - incomplete|shostak|9.281|
|Lip_hp?_TCC1|✅ proved - incomplete|shostak|0.060|
|Lip_hp?_TCC2|✅ proved - incomplete|shostak|0.070|
|Lip_hp?_TCC3|✅ proved - incomplete|shostak|0.130|
|Lip_hp?_TCC4|✅ proved - incomplete|shostak|0.070|
|Lip_hp?_TCC5|✅ proved - incomplete|shostak|0.000|
|Lip_hp?_TCC6|✅ proved - incomplete|shostak|0.100|
|Lip_hp?_TCC7|✅ proved - incomplete|shostak|0.070|
|ode_sol_restrict_hp_TCC1|✅ proved - incomplete|shostak|0.419|
|ode_sol_restrict_hp_TCC2|✅ proved - incomplete|shostak|0.080|
|ode_sol_restrict_hp_TCC3|✅ proved - incomplete|shostak|0.100|
|ode_sol_restrict_hp_TCC4|✅ proved - incomplete|shostak|0.323|
|ode_sol_restrict_hp_TCC5|✅ proved - incomplete|shostak|0.070|
|ode_sol_restrict_hp|✅ proved - incomplete|shostak|3.527|
|unique_solution_restrict_TCC1|✅ proved - incomplete|shostak|0.070|
|unique_solution_restrict_TCC2|✅ proved - incomplete|shostak|0.070|
|unique_solution_restrict_TCC3|✅ proved - incomplete|shostak|0.070|
|unique_solution_restrict_TCC4|✅ proved - incomplete|shostak|0.080|
|unique_solution_restrict_TCC5|✅ proved - incomplete|shostak|0.275|
|unique_solution_restrict_TCC6|✅ proved - incomplete|shostak|0.092|
|unique_solution_restrict_TCC7|✅ proved - incomplete|shostak|0.100|
|unique_solution_restrict_TCC8|✅ proved - incomplete|shostak|0.974|
|unique_solution_restrict_TCC9|✅ proved - incomplete|shostak|0.090|
|unique_solution_restrict|✅ proved - incomplete|shostak|2.149|
|ci_lambda_eq_TCC1|✅ proved - incomplete|shostak|0.250|
|ci_lambda_eq_TCC2|✅ proved - incomplete|shostak|0.295|
|ci_lambda_eq_TCC3|✅ proved - incomplete|shostak|0.250|
|ci_lambda_eq_TCC4|✅ proved - incomplete|shostak|0.283|
|ci_lambda_eq_TCC5|✅ proved - incomplete|shostak|0.280|
|ci_lambda_eq|✅ proved - incomplete|shostak|0.330|
|ode_sol_derivable_TCC1|✅ proved - incomplete|shostak|0.130|
|ode_sol_derivable_TCC2|✅ proved - incomplete|shostak|0.643|
|ode_sol_derivable_TCC3|✅ proved - incomplete|shostak|0.616|
|ode_sol_derivable_TCC4|✅ proved - incomplete|shostak|0.121|
|ode_sol_derivable_TCC5|✅ proved - incomplete|shostak|0.646|
|ode_sol_derivable_TCC6|✅ proved - incomplete|shostak|0.170|
|ode_sol_derivable_TCC7|✅ proved - incomplete|shostak|0.729|
|ode_sol_derivable_TCC8|✅ proved - incomplete|shostak|0.171|
|ode_sol_derivable_TCC9|✅ proved - incomplete|shostak|0.220|
|ode_sol_derivable_TCC10|✅ proved - incomplete|shostak|0.222|
|ode_sol_derivable|✅ proved - incomplete|shostak|2.638|
|ode_sol_deriv_TCC1|✅ proved - incomplete|shostak|0.260|
|ode_sol_deriv_TCC2|✅ proved - incomplete|shostak|0.420|
|ode_sol_deriv|✅ proved - incomplete|shostak|12.739|
|ode_sol_init_TCC1|✅ proved - incomplete|shostak|0.406|
|ode_sol_init|✅ proved - incomplete|shostak|1.113|
|sol_uniq_hp_TCC1|✅ proved - incomplete|shostak|0.116|
|sol_uniq_hp_TCC2|✅ proved - incomplete|shostak|0.536|
|sol_uniq_hp|✅ proved - incomplete|shostak|4.890|
|ode_sol_TCC4|✅ proved - incomplete|shostak|0.197|
|ode_sol_TCC5|✅ proved - incomplete|shostak|0.330|

## `restrict_ode`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|restrict_TCC1|✅ proved - incomplete|shostak|0.050|
|restrict_cont_TCC1|✅ proved - complete|shostak|0.040|
|restrict_cont_TCC2|✅ proved - complete|shostak|0.030|
|restrict_cont_TCC3|✅ proved - complete|shostak|0.030|
|restrict_cont_TCC4|✅ proved - incomplete|shostak|0.040|
|restrict_cont_TCC5|✅ proved - incomplete|shostak|0.040|
|restrict_cont_TCC6|✅ proved - incomplete|shostak|0.040|
|restrict_cont|✅ proved - incomplete|shostak|0.239|
|restrict_Lip_TCC1|✅ proved - incomplete|shostak|0.050|
|restrict_Lip_TCC2|✅ proved - incomplete|shostak|0.040|
|restrict_Lip_TCC3|✅ proved - incomplete|shostak|0.040|
|restrict_Lip|✅ proved - incomplete|shostak|0.156|
|restrict_derivable_TCC1|✅ proved - incomplete|shostak|0.040|
|restrict_derivable_TCC2|✅ proved - incomplete|shostak|0.050|
|restrict_derivable_TCC3|✅ proved - incomplete|shostak|0.040|
|restrict_derivable_TCC4|✅ proved - incomplete|shostak|0.040|
|restrict_derivable|✅ proved - incomplete|shostak|0.201|
|restrict_deriv_TCC1|✅ proved - incomplete|shostak|0.090|
|restrict_deriv_TCC2|✅ proved - incomplete|shostak|0.040|
|restrict_deriv|✅ proved - incomplete|shostak|1.700|

## `linear_ode_1D`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|od_ln_TCC1|✅ proved - incomplete|shostak|0.200|
|od_ln_TCC2|✅ proved - incomplete|shostak|0.190|
|lin_lip_TCC1|✅ proved - complete|shostak|0.456|
|lin_lip_TCC2|✅ proved - complete|shostak|0.060|
|lin_lip_TCC3|✅ proved - complete|shostak|0.050|
|lin_lip|✅ proved - incomplete|shostak|0.000|
|lin_cont_d|✅ proved - incomplete|shostak|3.443|
|lin_cont_d_hp_TCC1|✅ proved - complete|shostak|0.060|
|lin_cont_d_hp_TCC2|✅ proved - complete|shostak|0.140|
|lin_cont_d_hp_TCC3|✅ proved - complete|shostak|0.061|
|lin_cont_d_hp|✅ proved - incomplete|shostak|0.920|
|lin_unique_solution_TCC1|✅ proved - incomplete|shostak|0.060|
|lin_unique_solution_TCC2|✅ proved - incomplete|shostak|0.362|
|lin_unique_solution_TCC3|✅ proved - incomplete|shostak|0.100|
|lin_unique_solution|✅ proved - incomplete|shostak|0.111|
|lin_unique_solution_hp_TCC1|✅ proved - incomplete|shostak|0.270|
|lin_unique_solution_hp|✅ proved - incomplete|shostak|2.019|
|lin_1D_unique_ci_TCC1|✅ proved - incomplete|shostak|0.054|
|lin_1D_unique_ci_TCC2|✅ proved - incomplete|shostak|0.350|
|lin_1D_unique_ci_TCC3|✅ proved - incomplete|shostak|0.287|
|lin_1D_unique_ci|✅ proved - incomplete|shostak|2.094|
|lin_1D_unique_hp_TCC1|✅ proved - incomplete|shostak|0.050|
|lin_1D_unique_hp_TCC2|✅ proved - incomplete|shostak|0.070|
|lin_1D_unique_hp|✅ proved - incomplete|shostak|1.918|
|lin_1D_unique_hp_ci_TCC1|✅ proved - incomplete|shostak|0.050|
|lin_1D_unique_hp_ci_TCC2|✅ proved - incomplete|shostak|0.211|
|lin_1D_unique_hp_ci_TCC3|✅ proved - incomplete|shostak|0.180|
|lin_1D_unique_hp_ci_TCC4|✅ proved - incomplete|shostak|0.339|
|lin_1D_unique_hp_ci_TCC5|✅ proved - incomplete|shostak|0.070|
|lin_1D_unique_hp_ci_TCC6|✅ proved - incomplete|shostak|0.326|
|lin_1D_unique_hp_ci_TCC7|✅ proved - incomplete|shostak|0.263|
|lin_1D_unique_hp_ci_TCC8|✅ proved - incomplete|shostak|0.203|
|lin_1D_unique_hp_ci_TCC9|✅ proved - incomplete|shostak|0.787|
|lin_1D_unique_hp_ci|✅ proved - incomplete|shostak|2.165|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib/pvsio_utils/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230712-static-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230710-tcc-gen.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230707-defattach.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230706-extrategies.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`|
