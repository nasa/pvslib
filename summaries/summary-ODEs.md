# Summary for `ODEs`
Run started at 23:0:30 9/1/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **545**   | **545**    | **545**    | **0**  | **9:53.557 s**   |
|top|0|0|0|0|0.000|
|r2v_def|23|23|23|0|4.127|
|exp_analysis|21|21|21|0|8.510|
|interval_def|15|15|15|0|3.441|
|r2v_analysis|75|75|75|0|18.490|
|r2v_continuous_extension|30|30|30|0|8.325|
|r2v_diff_extension|36|36|36|0|53.240|
|r2v_sequence_convergence|27|27|27|0|12.392|
|metric_rho|13|13|13|0|40.934|
|continuous_function_complete_rho|5|5|5|0|38.245|
|ODE_def|14|14|14|0|1.777|
|ODE_Lipschitz_def|17|17|17|0|5.336|
|ODE_continuous_def|23|23|23|0|23.180|
|norm_ineq|30|30|30|0|16.737|
|ODE_psi_def|11|11|11|0|5.884|
|ODE_psi_contraction|64|64|64|0|4:40.790|
|ODE_solution_existence_uniqueness|87|87|87|0|44.723|
|restrict_ode|20|20|20|0|2.910|
|linear_ode_1D|34|34|34|0|24.516|
## Detailed Summary 
## `top`
No formula declaration found.
## `r2v_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|r2v_n_r2v|✅ proved - incomplete|shostak|0.090|
|length_TCC1|✅ proved - incomplete|shostak|0.040|
|length_x|✅ proved - incomplete|shostak|0.050|
|nth_TCC1|✅ proved - incomplete|shostak|0.060|
|null_cons|✅ proved - incomplete|shostak|0.119|
|length_null|✅ proved - incomplete|shostak|0.100|
|length_cons|✅ proved - incomplete|shostak|0.110|
|car_TCC1|✅ proved - incomplete|shostak|0.059|
|cdr_TCC1|✅ proved - incomplete|shostak|0.140|
|cons_TCC1|✅ proved - incomplete|shostak|0.070|
|length_cdr|✅ proved - incomplete|shostak|0.110|
|nth_car_TCC1|✅ proved - incomplete|shostak|0.040|
|nth_car|✅ proved - incomplete|shostak|0.040|
|nth_cdr_TCC1|✅ proved - incomplete|shostak|0.070|
|nth_cdr|✅ proved - incomplete|shostak|0.040|
|nth_equal_TCC1|✅ proved - incomplete|shostak|0.070|
|nth_equal|✅ proved - incomplete|shostak|0.652|
|plusr2v_TCC1|✅ proved - incomplete|shostak|0.117|
|nth_add_TCC1|✅ proved - incomplete|shostak|0.050|
|nth_add|✅ proved - incomplete|shostak|0.220|
|subr2v_TCC1|✅ proved - incomplete|shostak|0.139|
|nth_sub_TCC1|✅ proved - incomplete|shostak|0.537|
|nth_sub|✅ proved - incomplete|shostak|1.204|

## `exp_analysis`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|deriv_domain_exp_a|✅ proved - complete|shostak|0.438|
|IMP_chain_rule_TCC1|✅ proved - complete|shostak|0.421|
|IMP_chain_rule_TCC2|✅ proved - complete|shostak|0.030|
|IMP_chain_rule_TCC3|✅ proved - complete|shostak|0.124|
|IMP_chain_rule_TCC4|✅ proved - complete|shostak|0.050|
|IMP_fundamental_theorem_TCC1|✅ proved - complete|shostak|0.040|
|IMP_fundamental_theorem_TCC2|✅ proved - complete|shostak|0.030|
|derivable_exp_lin|✅ proved - incomplete|shostak|0.484|
|deriv_exp_lin_TCC1|✅ proved - incomplete|shostak|0.040|
|deriv_exp_lin|✅ proved - incomplete|shostak|1.996|
|derivable_exp_lin_r|✅ proved - incomplete|shostak|0.326|
|deriv_exp_lin_r_TCC1|✅ proved - incomplete|shostak|0.368|
|deriv_exp_lin_r|✅ proved - incomplete|shostak|0.529|
|cont_exp_lin|✅ proved - incomplete|shostak|0.556|
|deriv_Int_lin_TCC1|✅ proved - incomplete|shostak|0.170|
|deriv_Int_lin|✅ proved - incomplete|shostak|0.381|
|derivable_exp_ln_TCC1|✅ proved - complete|shostak|0.050|
|derivable_exp_ln|✅ proved - incomplete|shostak|0.291|
|deriv_exp_ln_TCC1|✅ proved - incomplete|shostak|0.050|
|deriv_exp_ln_TCC2|✅ proved - complete|shostak|0.060|
|deriv_exp_ln|✅ proved - incomplete|shostak|2.076|

## `interval_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|closed_interval_TCC1|✅ proved - complete|shostak|0.042|
|ci_ci|✅ proved - complete|shostak|0.040|
|ci_nonempty|✅ proved - complete|shostak|0.050|
|ci_connected|✅ proved - complete|shostak|0.060|
|ci_not_one_element|✅ proved - complete|shostak|0.057|
|ci_deriv_domain|✅ proved - complete|shostak|0.472|
|ci_closed_D_TCC1|✅ proved - incomplete|shostak|0.050|
|ci_closed_D|✅ proved - incomplete|shostak|1.677|
|ci_bounded_D|✅ proved - incomplete|shostak|0.515|
|ci_nonempty_D|✅ proved - incomplete|shostak|0.060|
|d_three|✅ proved - incomplete|shostak|0.040|
|hp_noe|✅ proved - complete|shostak|0.100|
|hp_dd|✅ proved - complete|shostak|0.188|
|hp_con|✅ proved - complete|shostak|0.050|
|hp_ne|✅ proved - complete|shostak|0.040|

## `r2v_analysis`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|deriv_domain|✅ proved - complete|shostak|0.436|
|IMP_fundamental_theorem_TCC1|✅ proved - complete|shostak|0.030|
|IMP_fundamental_theorem_TCC2|✅ proved - complete|shostak|0.030|
|IMP_fundamental_theorem_TCC3|✅ proved - complete|shostak|0.030|
|IMP_r2v_def_TCC1|✅ proved - complete|shostak|0.040|
|derivable?_TCC1|✅ proved - incomplete|shostak|0.589|
|deriv_TCC1|✅ proved - incomplete|shostak|0.050|
|deriv_TCC2|✅ proved - incomplete|shostak|0.040|
|deriv_TCC3|✅ proved - incomplete|shostak|0.070|
|deriv_TCC4|✅ proved - incomplete|shostak|0.040|
|deriv_TCC5|✅ proved - incomplete|shostak|0.133|
|deriv_TCC6|✅ proved - incomplete|shostak|0.080|
|deriv_TCC7|✅ proved - incomplete|shostak|0.200|
|deriv_nth_TCC1|✅ proved - incomplete|shostak|0.040|
|deriv_nth_TCC2|✅ proved - incomplete|shostak|0.040|
|deriv_nth|✅ proved - incomplete|shostak|0.000|
|integrable?_TCC1|✅ proved - incomplete|shostak|0.050|
|integral_TCC1|✅ proved - incomplete|shostak|0.051|
|integral_TCC2|✅ proved - incomplete|shostak|0.060|
|integral_TCC3|✅ proved - incomplete|shostak|0.050|
|integral_TCC4|✅ proved - incomplete|shostak|0.070|
|integral_TCC5|✅ proved - incomplete|shostak|0.150|
|integral_TCC6|✅ proved - incomplete|shostak|0.103|
|integral_TCC7|✅ proved - incomplete|shostak|0.140|
|int_nth_TCC1|✅ proved - incomplete|shostak|0.411|
|int_nth_TCC2|✅ proved - incomplete|shostak|0.490|
|int_nth|✅ proved - incomplete|shostak|0.561|
|Integral_TCC1|✅ proved - incomplete|shostak|0.060|
|Integral_TCC2|✅ proved - incomplete|shostak|0.040|
|Integral_TCC3|✅ proved - incomplete|shostak|0.068|
|Integral_TCC4|✅ proved - incomplete|shostak|0.150|
|Integral_TCC5|✅ proved - incomplete|shostak|0.100|
|Integral_TCC6|✅ proved - incomplete|shostak|0.120|
|Int_nth_TCC1|✅ proved - incomplete|shostak|0.412|
|Int_nth_TCC2|✅ proved - incomplete|shostak|0.788|
|Int_nth|✅ proved - incomplete|shostak|0.500|
|Int_zero_TCC1|✅ proved - incomplete|shostak|0.060|
|Int_zero|✅ proved - incomplete|shostak|0.110|
|Int_int_TCC1|✅ proved - incomplete|shostak|0.540|
|Int_int|✅ proved - incomplete|shostak|0.138|
|Integrable_sum|✅ proved - incomplete|shostak|0.264|
|Int_sum_TCC1|✅ proved - incomplete|shostak|0.040|
|Int_sum|✅ proved - incomplete|shostak|2.443|
|Integrable_diff|✅ proved - incomplete|shostak|0.211|
|Int_diff_TCC1|✅ proved - incomplete|shostak|0.040|
|Int_diff|✅ proved - incomplete|shostak|0.950|
|Integrable_const_TCC1|✅ proved - incomplete|shostak|0.060|
|Integrable_const|✅ proved - incomplete|shostak|0.453|
|Integral_const_TCC1|✅ proved - incomplete|shostak|0.062|
|Integral_const|✅ proved - incomplete|shostak|1.218|
|cont_entry_v_TCC1|✅ proved - incomplete|shostak|0.231|
|cont_entry_v_TCC2|✅ proved - incomplete|shostak|0.357|
|cont_entry_v_TCC3|✅ proved - incomplete|shostak|0.050|
|cont_entry_v_TCC4|✅ proved - incomplete|shostak|0.070|
|cont_entry_v_TCC5|✅ proved - incomplete|shostak|0.050|
|cont_entry_v|✅ proved - incomplete|shostak|0.000|
|cont_v_entry_TCC1|✅ proved - incomplete|shostak|0.060|
|cont_v_entry_TCC2|✅ proved - incomplete|shostak|0.071|
|cont_v_entry_TCC3|✅ proved - incomplete|shostak|0.040|
|cont_v_entry_TCC4|✅ proved - incomplete|shostak|0.060|
|cont_v_entry_TCC5|✅ proved - incomplete|shostak|0.040|
|cont_v_entry|✅ proved - incomplete|shostak|1.153|
|cont_triv_TCC1|✅ proved - incomplete|shostak|0.055|
|cont_triv_TCC2|✅ proved - incomplete|shostak|0.040|
|cont_triv|✅ proved - incomplete|shostak|0.060|
|cont_nn_comp_TCC1|✅ proved - incomplete|shostak|0.170|
|cont_nn_comp|✅ proved - incomplete|shostak|0.604|
|cont_sub_TCC1|✅ proved - incomplete|shostak|0.384|
|cont_sub|✅ proved - incomplete|shostak|1.220|
|cont_int|✅ proved - incomplete|shostak|0.108|
|cont_Int|✅ proved - incomplete|shostak|0.080|
|Int_cont_TCC1|✅ proved - incomplete|shostak|0.046|
|Int_cont_TCC2|✅ proved - incomplete|shostak|0.070|
|Int_cont|✅ proved - incomplete|shostak|0.590|
|der_cont|✅ proved - incomplete|shostak|0.070|

## `r2v_continuous_extension`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_r2v_analysis_TCC1|✅ proved - complete|shostak|0.040|
|IMP_r2v_analysis_TCC2|✅ proved - complete|shostak|0.043|
|IMP_r2v_analysis_TCC3|✅ proved - complete|shostak|0.050|
|d_b_TCC1|✅ proved - incomplete|shostak|0.060|
|d_b_TCC2|✅ proved - incomplete|shostak|0.100|
|d_b_TCC3|✅ proved - incomplete|shostak|0.130|
|ext_c_TCC1|✅ proved - incomplete|shostak|0.060|
|ext_c_TCC2|✅ proved - incomplete|shostak|0.061|
|ext_c_TCC3|✅ proved - incomplete|shostak|0.130|
|ext_c_TCC4|✅ proved - incomplete|shostak|0.070|
|ext_c_TCC5|✅ proved - incomplete|shostak|0.060|
|ext_c_TCC6|✅ proved - incomplete|shostak|0.090|
|ext_cont_TCC1|✅ proved - incomplete|shostak|0.100|
|ext_cont_TCC2|✅ proved - incomplete|shostak|0.070|
|ext_cont_TCC3|✅ proved - incomplete|shostak|0.070|
|ext_cont_TCC4|✅ proved - incomplete|shostak|0.090|
|ext_cont|✅ proved - incomplete|shostak|3.159|
|ext_c_TCC7|✅ proved - incomplete|shostak|0.056|
|ext_c_TCC8|✅ proved - incomplete|shostak|0.050|
|ext_c_TCC9|✅ proved - incomplete|shostak|0.060|
|ext_c_TCC10|✅ proved - incomplete|shostak|0.110|
|ext_c_TCC11|✅ proved - incomplete|shostak|0.050|
|ext_c_TCC12|✅ proved - incomplete|shostak|0.050|
|ext_c_TCC13|✅ proved - incomplete|shostak|0.070|
|ext_const|✅ proved - incomplete|shostak|0.200|
|ext_cont_r|✅ proved - incomplete|shostak|2.604|
|ext_cont_D_TCC1|✅ proved - incomplete|shostak|0.110|
|ext_cont_D|✅ proved - incomplete|shostak|0.000|
|ext_plus|✅ proved - incomplete|shostak|0.412|
|ext_ineq|✅ proved - incomplete|shostak|0.170|

## `r2v_diff_extension`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_r2v_continuous_extension_TCC1|✅ proved - complete|shostak|0.030|
|ext_derivable_lb_TCC1|✅ proved - complete|shostak|0.050|
|ext_derivable_lb_TCC2|✅ proved - complete|shostak|0.060|
|ext_derivable_lb_TCC3|✅ proved - incomplete|shostak|0.169|
|ext_derivable_lb_TCC4|✅ proved - incomplete|shostak|0.150|
|ext_derivable_lb_TCC5|✅ proved - incomplete|shostak|0.110|
|ext_derivable_lb_TCC6|✅ proved - incomplete|shostak|0.150|
|ext_derivable_lb_TCC7|✅ proved - incomplete|shostak|0.060|
|ext_derivable_lb_TCC8|✅ proved - incomplete|shostak|0.239|
|ext_derivable_lb_TCC9|✅ proved - incomplete|shostak|0.130|
|ext_derivable_lb|✅ proved - incomplete|shostak|5.006|
|ext_deriv_lb_TCC1|✅ proved - incomplete|shostak|0.170|
|ext_deriv_lb_TCC2|✅ proved - incomplete|shostak|0.309|
|ext_deriv_lb|✅ proved - incomplete|shostak|8.126|
|ext_derivable_ub_TCC1|✅ proved - incomplete|shostak|0.210|
|ext_derivable_ub|✅ proved - incomplete|shostak|4.628|
|ext_deriv_ub_TCC1|✅ proved - incomplete|shostak|0.171|
|ext_deriv_ub_TCC2|✅ proved - incomplete|shostak|0.300|
|ext_deriv_ub|✅ proved - incomplete|shostak|9.143|
|ext_derivable_int_TCC1|✅ proved - incomplete|shostak|0.105|
|ext_derivable_int|✅ proved - incomplete|shostak|0.000|
|ext_deriv_int_TCC1|✅ proved - incomplete|shostak|0.170|
|ext_deriv_int_TCC2|✅ proved - incomplete|shostak|0.142|
|ext_deriv_int|✅ proved - incomplete|shostak|10.556|
|ext_derivable_ext_TCC1|✅ proved - incomplete|shostak|0.110|
|ext_derivable_ext|✅ proved - incomplete|shostak|3.626|
|ext_deriv_extl_TCC1|✅ proved - incomplete|shostak|0.169|
|ext_deriv_extl|✅ proved - incomplete|shostak|6.260|
|ext_deriv_extu_TCC1|✅ proved - incomplete|shostak|0.110|
|ext_deriv_extu_TCC2|✅ proved - incomplete|shostak|0.187|
|ext_deriv_extu|✅ proved - incomplete|shostak|1.041|
|ext_d_TCC1|✅ proved - incomplete|shostak|0.156|
|ext_d_TCC2|✅ proved - incomplete|shostak|0.060|
|ext_d_TCC3|✅ proved - incomplete|shostak|0.050|
|ext_d_TCC4|✅ proved - incomplete|shostak|0.322|
|ext_d_TCC5|✅ proved - incomplete|shostak|0.965|

## `r2v_sequence_convergence`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_r2v_analysis_TCC1|✅ proved - complete|shostak|0.040|
|IMP_r2v_analysis_TCC2|✅ proved - complete|shostak|0.030|
|IMP_r2v_analysis_TCC3|✅ proved - complete|shostak|0.030|
|conv_pw?_TCC1|✅ proved - incomplete|shostak|0.089|
|conv_pw?_TCC2|✅ proved - incomplete|shostak|0.070|
|conv_pw?_TCC3|✅ proved - incomplete|shostak|0.080|
|conv_pw?_TCC4|✅ proved - incomplete|shostak|0.060|
|cauchy_pw?_TCC1|✅ proved - incomplete|shostak|0.080|
|cauchy_conv_pw|✅ proved - incomplete|shostak|0.339|
|conv_u?_TCC1|✅ proved - incomplete|shostak|0.082|
|conv_u?_TCC2|✅ proved - incomplete|shostak|0.160|
|conv_u?_TCC3|✅ proved - incomplete|shostak|0.070|
|cauchy_u?_TCC1|✅ proved - incomplete|shostak|0.214|
|conv_pw_equiv|✅ proved - incomplete|shostak|1.872|
|cauchy_pw_equiv|✅ proved - incomplete|shostak|0.531|
|conv_u_equiv_TCC1|✅ proved - incomplete|shostak|0.090|
|conv_u_equiv|✅ proved - incomplete|shostak|1.270|
|cauchy_u_equiv|✅ proved - incomplete|shostak|1.761|
|cauchy_u_pw|✅ proved - incomplete|shostak|0.110|
|cauchy_u_conv_pw|✅ proved - incomplete|shostak|0.050|
|K_epsn|✅ proved - complete|shostak|0.080|
|norm_conv_bound_TCC1|✅ proved - incomplete|shostak|0.059|
|norm_conv_bound_TCC2|✅ proved - incomplete|shostak|0.140|
|norm_conv_bound_TCC3|✅ proved - incomplete|shostak|0.169|
|norm_conv_bound|✅ proved - incomplete|shostak|2.437|
|cauchy_u_conv_u|✅ proved - incomplete|shostak|0.296|
|conv_u_cont|✅ proved - incomplete|shostak|2.183|

## `metric_rho`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_r2v_continuous_extension_TCC1|✅ proved - complete|shostak|0.030|
|pre_rho_TCC1|✅ proved - incomplete|shostak|0.100|
|pre_rho_TCC2|✅ proved - incomplete|shostak|0.120|
|pre_rho_cont|✅ proved - incomplete|shostak|9.573|
|pre_rho_cont_D_TCC1|✅ proved - incomplete|shostak|0.182|
|pre_rho_cont_D|✅ proved - incomplete|shostak|2.283|
|rho_TCC1|✅ proved - incomplete|shostak|2.172|
|rho_TCC2|✅ proved - incomplete|shostak|0.070|
|rho_TCC3|✅ proved - incomplete|shostak|0.893|
|rho_zero|✅ proved - incomplete|shostak|0.225|
|rho_symmetric|✅ proved - incomplete|shostak|5.091|
|rho_triangle|✅ proved - incomplete|shostak|20.125|
|rho_metric|✅ proved - incomplete|shostak|0.070|

## `continuous_function_complete_rho`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_metric_rho_TCC1|✅ proved - complete|shostak|0.030|
|IMP_r2v_sequence_convergence_TCC1|✅ proved - complete|shostak|0.050|
|IMP_r2v_sequence_convergence_TCC2|✅ proved - complete|shostak|0.040|
|IMP_r2v_sequence_convergence_TCC3|✅ proved - complete|shostak|0.040|
|Cfs_complete|✅ proved - incomplete|shostak|38.085|

## `ODE_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_r2v_analysis_TCC1|✅ proved - complete|shostak|0.030|
|IMP_r2v_analysis_TCC2|✅ proved - complete|shostak|0.030|
|IMP_r2v_analysis_TCC3|✅ proved - complete|shostak|0.030|
|IMP_derivatives_def_TCC1|✅ proved - complete|shostak|0.040|
|od_fx_TCC1|✅ proved - incomplete|shostak|0.062|
|nth_od_fx_TCC1|✅ proved - incomplete|shostak|0.060|
|nth_od_fx_TCC2|✅ proved - incomplete|shostak|0.060|
|nth_od_fx|✅ proved - incomplete|shostak|0.297|
|od_sol?_TCC1|✅ proved - incomplete|shostak|0.040|
|od_sol_nth_TCC1|✅ proved - incomplete|shostak|0.296|
|od_sol_nth_TCC2|✅ proved - incomplete|shostak|0.388|
|od_sol_nth|✅ proved - incomplete|shostak|0.223|
|od_sol?_TCC2|✅ proved - incomplete|shostak|0.110|
|od_sol?_TCC3|✅ proved - incomplete|shostak|0.111|

## `ODE_Lipschitz_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_ODE_def_TCC1|✅ proved - complete|shostak|0.030|
|IMP_ODE_def_TCC2|✅ proved - complete|shostak|0.030|
|IMP_ODE_def_TCC3|✅ proved - complete|shostak|0.030|
|Lip_d?_TCC1|✅ proved - incomplete|shostak|0.110|
|Lip_d?_TCC2|✅ proved - incomplete|shostak|0.100|
|Lip_norm_od_f|✅ proved - incomplete|shostak|0.613|
|Lip_entry?_TCC1|✅ proved - incomplete|shostak|0.090|
|Lip_entry?_TCC2|✅ proved - incomplete|shostak|0.090|
|Lip_entry?_TCC3|✅ proved - incomplete|shostak|0.110|
|Lip_entry_c_TCC1|✅ proved - incomplete|shostak|0.110|
|Lip_entry_c_TCC2|✅ proved - incomplete|shostak|0.110|
|Lip_entry_c_TCC3|✅ proved - incomplete|shostak|0.103|
|Lip_entry_c_TCC4|✅ proved - incomplete|shostak|1.826|
|Lip_entry_equiv|✅ proved - incomplete|shostak|1.448|
|Lip_c_TCC1|✅ proved - incomplete|shostak|0.116|
|Lip_c_TCC2|✅ proved - incomplete|shostak|0.100|
|Lip_c_TCC3|✅ proved - incomplete|shostak|0.320|

## `ODE_continuous_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_ODE_Lipschitz_def_TCC1|✅ proved - complete|shostak|0.030|
|IMP_ODE_Lipschitz_def_TCC2|✅ proved - complete|shostak|0.040|
|IMP_ODE_Lipschitz_def_TCC3|✅ proved - complete|shostak|0.033|
|cont_d?_TCC1|✅ proved - incomplete|shostak|0.060|
|cont_d?_TCC2|✅ proved - incomplete|shostak|0.070|
|cont_d?_TCC3|✅ proved - complete|shostak|0.040|
|cont_Lip_2ndv_TCC1|✅ proved - incomplete|shostak|0.100|
|cont_Lip_2ndv|✅ proved - incomplete|shostak|0.628|
|cont_Lip_bothv_TCC1|✅ proved - incomplete|shostak|0.240|
|cont_Lip_bothv_TCC2|✅ proved - incomplete|shostak|0.251|
|cont_Lip_bothv_TCC3|✅ proved - incomplete|shostak|0.150|
|cont_Lip_bothv_TCC4|✅ proved - incomplete|shostak|0.060|
|cont_Lip_bothv|✅ proved - incomplete|shostak|14.421|
|cont_Lip_bothR_TCC1|✅ proved - incomplete|shostak|0.290|
|cont_Lip_bothR_TCC2|✅ proved - incomplete|shostak|0.295|
|cont_Lip_bothR_TCC3|✅ proved - incomplete|shostak|0.160|
|cont_Lip_bothR|✅ proved - incomplete|shostak|1.450|
|cont_Lip_norm_TCC1|✅ proved - incomplete|shostak|0.170|
|cont_Lip_norm|✅ proved - incomplete|shostak|1.553|
|cont_od_fx|✅ proved - incomplete|shostak|1.433|
|Int_od_fx|✅ proved - incomplete|shostak|0.060|
|cont_Lip_real_TCC1|✅ proved - incomplete|shostak|0.341|
|cont_Lip_real|✅ proved - incomplete|shostak|1.305|

## `norm_ineq`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_ODE_continuous_def_TCC1|✅ proved - complete|shostak|0.040|
|IMP_ODE_continuous_def_TCC2|✅ proved - complete|shostak|0.030|
|IMP_ODE_continuous_def_TCC3|✅ proved - complete|shostak|0.030|
|int_od_fx|✅ proved - incomplete|shostak|0.080|
|int_norm_od_fx_TCC1|✅ proved - incomplete|shostak|0.082|
|int_norm_od_fx_TCC2|✅ proved - incomplete|shostak|0.350|
|int_norm_od_fx|✅ proved - incomplete|shostak|0.127|
|norminf_int_TCC1|✅ proved - incomplete|shostak|0.030|
|norminf_int_TCC2|✅ proved - incomplete|shostak|0.090|
|norminf_int_TCC3|✅ proved - incomplete|shostak|0.030|
|norminf_int|✅ proved - incomplete|shostak|6.193|
|norminf_Int_TCC1|✅ proved - incomplete|shostak|0.000|
|norminf_Int_TCC2|✅ proved - incomplete|shostak|0.442|
|norminf_Int_TCC3|✅ proved - incomplete|shostak|0.350|
|norminf_Int_TCC4|✅ proved - incomplete|shostak|0.072|
|norminf_Int|✅ proved - incomplete|shostak|0.140|
|int_norm_cont_TCC1|✅ proved - incomplete|shostak|0.050|
|int_norm_cont_TCC2|✅ proved - incomplete|shostak|0.153|
|int_norm_cont|✅ proved - incomplete|shostak|0.110|
|normi_TCC1|✅ proved - incomplete|shostak|0.042|
|normi_TCC2|✅ proved - incomplete|shostak|0.060|
|normi_TCC3|✅ proved - incomplete|shostak|0.080|
|normi_TCC4|✅ proved - incomplete|shostak|0.150|
|normi_TCC5|✅ proved - incomplete|shostak|0.053|
|normi|✅ proved - incomplete|shostak|7.387|
|normI_TCC1|✅ proved - incomplete|shostak|0.050|
|normI_TCC2|✅ proved - incomplete|shostak|0.070|
|normI_TCC3|✅ proved - incomplete|shostak|0.157|
|normI_TCC4|✅ proved - incomplete|shostak|0.070|
|normI|✅ proved - incomplete|shostak|0.219|

## `ODE_psi_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_ODE_def_TCC1|✅ proved - complete|shostak|0.040|
|IMP_ODE_def_TCC2|✅ proved - complete|shostak|0.030|
|IMP_ODE_def_TCC3|✅ proved - complete|shostak|0.030|
|psi_TCC1|✅ proved - incomplete|shostak|0.067|
|psi_TCC2|✅ proved - incomplete|shostak|0.230|
|psi_TCC3|✅ proved - incomplete|shostak|0.140|
|psi_init|✅ proved - incomplete|shostak|0.120|
|psi_derivable|✅ proved - incomplete|shostak|2.314|
|psi_cont|✅ proved - incomplete|shostak|0.104|
|psi_deriv_TCC1|✅ proved - incomplete|shostak|0.040|
|psi_deriv|✅ proved - incomplete|shostak|2.769|

## `ODE_psi_contraction`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_exp_analysis_TCC1|✅ proved - complete|shostak|0.037|
|IMP_exp_analysis_TCC2|✅ proved - complete|shostak|0.040|
|IMP_exp_analysis_TCC3|✅ proved - complete|shostak|0.040|
|IMP_metric_rho_TCC1|✅ proved - complete|shostak|0.040|
|od_fx_diff_Int_TCC1|✅ proved - incomplete|shostak|0.496|
|od_fx_diff_Int_TCC2|✅ proved - incomplete|shostak|0.050|
|od_fx_diff_Int|✅ proved - incomplete|shostak|0.248|
|od_fx_contD_diff_TCC1|✅ proved - incomplete|shostak|0.498|
|od_fx_contD_diff_TCC2|✅ proved - incomplete|shostak|0.073|
|od_fx_contD_diff_TCC3|✅ proved - incomplete|shostak|0.310|
|od_fx_contD_diff|✅ proved - incomplete|shostak|11.966|
|rho_psi_int_TCC1|✅ proved - incomplete|shostak|0.070|
|rho_psi_int_TCC2|✅ proved - incomplete|shostak|0.060|
|rho_psi_int_TCC3|✅ proved - incomplete|shostak|0.080|
|rho_psi_int_TCC4|✅ proved - incomplete|shostak|0.092|
|rho_psi_int_TCC5|✅ proved - incomplete|shostak|0.090|
|rho_psi_int_TCC6|✅ proved - incomplete|shostak|0.090|
|rho_psi_int_TCC7|✅ proved - incomplete|shostak|18.514|
|rho_psi_int_TCC8|✅ proved - incomplete|shostak|0.060|
|rho_psi_int|✅ proved - incomplete|shostak|20.120|
|od_fx_diff_norm_int_TCC1|✅ proved - incomplete|shostak|0.180|
|od_fx_diff_norm_int|✅ proved - incomplete|shostak|0.718|
|od_fx_contD_Int_diff_TCC1|✅ proved - incomplete|shostak|0.487|
|od_fx_contD_Int_diff_TCC2|✅ proved - incomplete|shostak|0.070|
|od_fx_contD_Int_diff|✅ proved - incomplete|shostak|1:14.971|
|rho_psi_int_ineq_TCC1|✅ proved - incomplete|shostak|0.070|
|rho_psi_int_ineq_TCC2|✅ proved - incomplete|shostak|0.060|
|rho_psi_int_ineq_TCC3|✅ proved - incomplete|shostak|0.070|
|rho_psi_int_ineq_TCC4|✅ proved - incomplete|shostak|0.084|
|rho_psi_int_ineq_TCC5|✅ proved - incomplete|shostak|0.080|
|rho_psi_int_ineq_TCC6|✅ proved - incomplete|shostak|0.090|
|rho_psi_int_ineq_TCC7|✅ proved - incomplete|shostak|0.132|
|rho_psi_int_ineq_TCC8|✅ proved - incomplete|shostak|0.060|
|rho_psi_int_ineq|✅ proved - incomplete|shostak|3.672|
|norm_diff_Int_TCC1|✅ proved - incomplete|shostak|0.200|
|norm_diff_Int_TCC2|✅ proved - incomplete|shostak|0.164|
|norm_diff_Int_TCC3|✅ proved - incomplete|shostak|0.120|
|norm_diff_Int|✅ proved - incomplete|shostak|0.405|
|norm_diff_contD_TCC1|✅ proved - incomplete|shostak|0.160|
|norm_diff_contD_TCC2|✅ proved - incomplete|shostak|0.060|
|norm_diff_contD|✅ proved - incomplete|shostak|38.331|
|rho_psi_lip_ineq_TCC1|✅ proved - incomplete|shostak|0.124|
|rho_psi_lip_ineq|✅ proved - incomplete|shostak|5.930|
|rho_psi_exp_contD_triv_TCC1|✅ proved - incomplete|shostak|4.398|
|rho_psi_exp_contD_triv|✅ proved - incomplete|shostak|5.670|
|rho_psi_int_exp_TCC1|✅ proved - incomplete|shostak|0.000|
|rho_psi_int_exp|✅ proved - incomplete|shostak|1.805|
|exp_rho_Integrable|✅ proved - incomplete|shostak|0.670|
|exp_rho_contD_rho_TCC1|✅ proved - incomplete|shostak|0.129|
|exp_rho_contD_rho|✅ proved - incomplete|shostak|35.942|
|exp_rho_contD_TCC1|✅ proved - incomplete|shostak|0.050|
|exp_rho_contD_TCC2|✅ proved - incomplete|shostak|0.070|
|exp_rho_contD_TCC3|✅ proved - incomplete|shostak|0.060|
|exp_rho_contD_TCC4|✅ proved - incomplete|shostak|0.412|
|exp_rho_contD|✅ proved - incomplete|shostak|27.109|
|rho_psi_int_rho_TCC1|✅ proved - incomplete|shostak|0.180|
|rho_psi_int_rho|✅ proved - incomplete|shostak|6.823|
|rho_psi_rho_pull_TCC1|✅ proved - incomplete|shostak|0.170|
|rho_psi_rho_pull|✅ proved - incomplete|shostak|11.407|
|rho_psi_rho_exp_int|✅ proved - incomplete|shostak|4.214|
|psi_contraction|✅ proved - incomplete|shostak|0.110|
|psi_fixed_imp_sol_TCC1|✅ proved - incomplete|shostak|0.080|
|psi_fixed_imp_sol_TCC2|✅ proved - incomplete|shostak|0.114|
|psi_fixed_imp_sol|✅ proved - incomplete|shostak|2.165|

## `ODE_solution_existence_uniqueness`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Psi_TCC1|✅ proved - complete|shostak|0.087|
|Psi_TCC2|✅ proved - complete|shostak|0.050|
|Psi_TCC3|✅ proved - complete|shostak|0.050|
|Psi_TCC4|✅ proved - complete|shostak|0.040|
|Psi_TCC5|✅ proved - incomplete|shostak|0.704|
|Psi_TCC6|✅ proved - incomplete|shostak|0.617|
|Psi_TCC7|✅ proved - incomplete|shostak|0.110|
|Psi_TCC8|✅ proved - incomplete|shostak|0.143|
|Psi_contract_TCC1|✅ proved - incomplete|shostak|0.430|
|Psi_contract_TCC2|✅ proved - incomplete|shostak|0.222|
|Psi_contract_TCC3|✅ proved - incomplete|shostak|0.609|
|Psi_contract|✅ proved - incomplete|shostak|1.295|
|Psi_fixed_point_TCC1|✅ proved - incomplete|shostak|0.436|
|Psi_fixed_point|✅ proved - incomplete|shostak|1.395|
|init_unique_solution_TCC1|✅ proved - incomplete|shostak|0.713|
|init_unique_solution_TCC2|✅ proved - incomplete|shostak|0.096|
|init_unique_solution_TCC3|✅ proved - incomplete|shostak|0.100|
|init_unique_solution_TCC4|✅ proved - incomplete|shostak|0.530|
|init_unique_solution|✅ proved - incomplete|shostak|1.205|
|unique_solution|✅ proved - incomplete|shostak|0.169|
|ode_sol_TCC1|✅ proved - incomplete|shostak|0.280|
|ode_sol_TCC2|✅ proved - incomplete|shostak|0.091|
|ode_sol_TCC3|✅ proved - incomplete|shostak|1.002|
|ode_sol_extend_TCC1|✅ proved - complete|shostak|0.050|
|ode_sol_extend_TCC2|✅ proved - complete|shostak|0.040|
|ode_sol_extend_TCC3|✅ proved - complete|shostak|0.070|
|ode_sol_extend_TCC4|✅ proved - complete|shostak|0.090|
|ode_sol_extend_TCC5|✅ proved - complete|shostak|0.060|
|ode_sol_extend_TCC6|✅ proved - incomplete|shostak|0.591|
|ode_sol_extend_TCC7|✅ proved - incomplete|shostak|0.073|
|ode_sol_extend_TCC8|✅ proved - incomplete|shostak|0.070|
|ode_sol_extend_TCC9|✅ proved - incomplete|shostak|0.070|
|ode_sol_extend_TCC10|✅ proved - incomplete|shostak|0.083|
|ode_sol_extend_TCC11|✅ proved - incomplete|shostak|0.698|
|ode_sol_extend_TCC12|✅ proved - incomplete|shostak|0.093|
|ode_sol_extend_TCC13|✅ proved - incomplete|shostak|0.160|
|ode_sol_extend|✅ proved - incomplete|shostak|1.886|
|Lip_hp?_TCC1|✅ proved - incomplete|shostak|0.070|
|Lip_hp?_TCC2|✅ proved - incomplete|shostak|0.070|
|Lip_hp?_TCC3|✅ proved - incomplete|shostak|0.130|
|Lip_hp?_TCC4|✅ proved - incomplete|shostak|0.070|
|Lip_hp?_TCC5|✅ proved - incomplete|shostak|0.080|
|Lip_hp?_TCC6|✅ proved - incomplete|shostak|0.100|
|Lip_hp?_TCC7|✅ proved - incomplete|shostak|0.070|
|ode_sol_restrict_hp_TCC1|✅ proved - incomplete|shostak|0.396|
|ode_sol_restrict_hp_TCC2|✅ proved - incomplete|shostak|0.067|
|ode_sol_restrict_hp_TCC3|✅ proved - incomplete|shostak|0.090|
|ode_sol_restrict_hp_TCC4|✅ proved - incomplete|shostak|0.306|
|ode_sol_restrict_hp_TCC5|✅ proved - incomplete|shostak|0.069|
|ode_sol_restrict_hp|✅ proved - incomplete|shostak|3.377|
|unique_solution_restrict_TCC1|✅ proved - incomplete|shostak|0.060|
|unique_solution_restrict_TCC2|✅ proved - incomplete|shostak|0.060|
|unique_solution_restrict_TCC3|✅ proved - incomplete|shostak|0.060|
|unique_solution_restrict_TCC4|✅ proved - incomplete|shostak|0.070|
|unique_solution_restrict_TCC5|✅ proved - incomplete|shostak|0.251|
|unique_solution_restrict_TCC6|✅ proved - incomplete|shostak|0.071|
|unique_solution_restrict_TCC7|✅ proved - incomplete|shostak|0.080|
|unique_solution_restrict_TCC8|✅ proved - incomplete|shostak|0.895|
|unique_solution_restrict_TCC9|✅ proved - incomplete|shostak|0.082|
|unique_solution_restrict|✅ proved - incomplete|shostak|1.997|
|ci_lambda_eq_TCC1|✅ proved - incomplete|shostak|0.247|
|ci_lambda_eq_TCC2|✅ proved - incomplete|shostak|0.280|
|ci_lambda_eq_TCC3|✅ proved - incomplete|shostak|0.249|
|ci_lambda_eq_TCC4|✅ proved - incomplete|shostak|0.280|
|ci_lambda_eq_TCC5|✅ proved - incomplete|shostak|0.262|
|ci_lambda_eq|✅ proved - incomplete|shostak|0.334|
|ode_sol_derivable_TCC1|✅ proved - incomplete|shostak|0.120|
|ode_sol_derivable_TCC2|✅ proved - incomplete|shostak|0.638|
|ode_sol_derivable_TCC3|✅ proved - incomplete|shostak|0.596|
|ode_sol_derivable_TCC4|✅ proved - incomplete|shostak|0.110|
|ode_sol_derivable_TCC5|✅ proved - incomplete|shostak|0.591|
|ode_sol_derivable_TCC6|✅ proved - incomplete|shostak|0.150|
|ode_sol_derivable_TCC7|✅ proved - incomplete|shostak|0.699|
|ode_sol_derivable_TCC8|✅ proved - incomplete|shostak|0.161|
|ode_sol_derivable_TCC9|✅ proved - incomplete|shostak|0.210|
|ode_sol_derivable_TCC10|✅ proved - incomplete|shostak|0.200|
|ode_sol_derivable|✅ proved - incomplete|shostak|2.434|
|ode_sol_deriv_TCC1|✅ proved - incomplete|shostak|0.260|
|ode_sol_deriv_TCC2|✅ proved - incomplete|shostak|0.412|
|ode_sol_deriv|✅ proved - incomplete|shostak|10.947|
|ode_sol_init_TCC1|✅ proved - incomplete|shostak|0.387|
|ode_sol_init|✅ proved - incomplete|shostak|1.071|
|sol_uniq_hp_TCC1|✅ proved - incomplete|shostak|0.110|
|sol_uniq_hp_TCC2|✅ proved - incomplete|shostak|0.514|
|sol_uniq_hp|✅ proved - incomplete|shostak|0.000|
|ode_sol_TCC4|✅ proved - incomplete|shostak|0.198|
|ode_sol_TCC5|✅ proved - incomplete|shostak|0.334|

## `restrict_ode`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|restrict_TCC1|✅ proved - incomplete|shostak|0.050|
|restrict_cont_TCC1|✅ proved - complete|shostak|0.030|
|restrict_cont_TCC2|✅ proved - complete|shostak|0.040|
|restrict_cont_TCC3|✅ proved - complete|shostak|0.040|
|restrict_cont_TCC4|✅ proved - incomplete|shostak|0.040|
|restrict_cont_TCC5|✅ proved - incomplete|shostak|0.041|
|restrict_cont_TCC6|✅ proved - incomplete|shostak|0.040|
|restrict_cont|✅ proved - incomplete|shostak|0.237|
|restrict_Lip_TCC1|✅ proved - incomplete|shostak|0.040|
|restrict_Lip_TCC2|✅ proved - incomplete|shostak|0.040|
|restrict_Lip_TCC3|✅ proved - incomplete|shostak|0.040|
|restrict_Lip|✅ proved - incomplete|shostak|0.156|
|restrict_derivable_TCC1|✅ proved - incomplete|shostak|0.040|
|restrict_derivable_TCC2|✅ proved - incomplete|shostak|0.040|
|restrict_derivable_TCC3|✅ proved - incomplete|shostak|0.040|
|restrict_derivable_TCC4|✅ proved - incomplete|shostak|0.040|
|restrict_derivable|✅ proved - incomplete|shostak|0.190|
|restrict_deriv_TCC1|✅ proved - incomplete|shostak|0.070|
|restrict_deriv_TCC2|✅ proved - incomplete|shostak|0.030|
|restrict_deriv|✅ proved - incomplete|shostak|1.666|

## `linear_ode_1D`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|od_ln_TCC1|✅ proved - incomplete|shostak|0.190|
|od_ln_TCC2|✅ proved - incomplete|shostak|0.193|
|lin_lip_TCC1|✅ proved - complete|shostak|0.414|
|lin_lip_TCC2|✅ proved - complete|shostak|0.050|
|lin_lip_TCC3|✅ proved - complete|shostak|0.050|
|lin_lip|✅ proved - incomplete|shostak|1.698|
|lin_cont_d|✅ proved - incomplete|shostak|3.331|
|lin_cont_d_hp_TCC1|✅ proved - complete|shostak|0.050|
|lin_cont_d_hp_TCC2|✅ proved - complete|shostak|0.135|
|lin_cont_d_hp_TCC3|✅ proved - complete|shostak|0.050|
|lin_cont_d_hp|✅ proved - incomplete|shostak|0.899|
|lin_unique_solution_TCC1|✅ proved - incomplete|shostak|0.050|
|lin_unique_solution_TCC2|✅ proved - incomplete|shostak|0.342|
|lin_unique_solution_TCC3|✅ proved - incomplete|shostak|0.090|
|lin_unique_solution|✅ proved - incomplete|shostak|0.100|
|lin_unique_solution_hp_TCC1|✅ proved - incomplete|shostak|0.260|
|lin_unique_solution_hp|✅ proved - incomplete|shostak|1.927|
|lin_1D_unique_ci_TCC1|✅ proved - incomplete|shostak|0.060|
|lin_1D_unique_ci_TCC2|✅ proved - incomplete|shostak|0.342|
|lin_1D_unique_ci_TCC3|✅ proved - incomplete|shostak|0.276|
|lin_1D_unique_ci|✅ proved - incomplete|shostak|2.101|
|lin_1D_unique_hp_TCC1|✅ proved - incomplete|shostak|0.049|
|lin_1D_unique_hp_TCC2|✅ proved - incomplete|shostak|0.070|
|lin_1D_unique_hp|✅ proved - incomplete|shostak|0.000|
|lin_1D_unique_hp_ci_TCC1|✅ proved - incomplete|shostak|0.050|
|lin_1D_unique_hp_ci_TCC2|✅ proved - incomplete|shostak|0.205|
|lin_1D_unique_hp_ci_TCC3|✅ proved - incomplete|shostak|0.179|
|lin_1D_unique_hp_ci_TCC4|✅ proved - incomplete|shostak|0.338|
|lin_1D_unique_hp_ci_TCC5|✅ proved - incomplete|shostak|0.070|
|lin_1D_unique_hp_ci_TCC6|✅ proved - incomplete|shostak|0.335|
|lin_1D_unique_hp_ci_TCC7|✅ proved - incomplete|shostak|0.259|
|lin_1D_unique_hp_ci_TCC8|✅ proved - incomplete|shostak|0.200|
|lin_1D_unique_hp_ci_TCC9|✅ proved - incomplete|shostak|0.779|
|lin_1D_unique_hp_ci|✅ proved - incomplete|shostak|9.374|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib/pvsio_utils/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230712-static-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230710-tcc-gen.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230707-defattach.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230706-extrategies.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`|
