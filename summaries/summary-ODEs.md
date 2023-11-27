# Summary for `ODEs`
Run started at 3:58:1 11/25/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **552**   | **552**    | **552**    | **0**  | **5:44.061 s**   |
|top|0|0|0|0|0.000|
|r2v_def|23|23|23|0|2.793|
|exp_analysis|21|21|21|0|5.623|
|interval_def|15|15|15|0|2.128|
|r2v_analysis|75|75|75|0|13.333|
|r2v_continuous_extension|30|30|30|0|5.321|
|r2v_diff_extension|36|36|36|0|30.058|
|r2v_sequence_convergence|27|27|27|0|7.714|
|metric_rho|13|13|13|0|20.431|
|continuous_function_complete_rho|5|5|5|0|23.338|
|ODE_def|14|14|14|0|1.136|
|ODE_Lipschitz_def|17|17|17|0|3.367|
|ODE_continuous_def|23|23|23|0|9.975|
|norm_ineq|30|30|30|0|13.511|
|ODE_psi_def|11|11|11|0|2.253|
|ODE_psi_contraction|64|64|64|0|2:38.552|
|ODE_solution_existence_uniqueness|87|87|87|0|32.409|
|restrict_ode|20|20|20|0|1.809|
|linear_ode_1D|34|34|34|0|9.891|
|more_ci_props|7|7|7|0|0.419|
## Detailed Summary 
## `top`
No formula declaration found.
## `r2v_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|r2v_n_r2v|✅ proved - incomplete|shostak|0.060|
|length_TCC1|✅ proved - incomplete|shostak|0.020|
|length_x|✅ proved - incomplete|shostak|0.035|
|nth_TCC1|✅ proved - incomplete|shostak|0.040|
|null_cons|✅ proved - incomplete|shostak|0.070|
|length_null|✅ proved - incomplete|shostak|0.073|
|length_cons|✅ proved - incomplete|shostak|0.070|
|car_TCC1|✅ proved - incomplete|shostak|0.040|
|cdr_TCC1|✅ proved - incomplete|shostak|0.093|
|cons_TCC1|✅ proved - incomplete|shostak|0.040|
|length_cdr|✅ proved - incomplete|shostak|0.070|
|nth_car_TCC1|✅ proved - incomplete|shostak|0.030|
|nth_car|✅ proved - incomplete|shostak|0.030|
|nth_cdr_TCC1|✅ proved - incomplete|shostak|0.050|
|nth_cdr|✅ proved - incomplete|shostak|0.034|
|nth_equal_TCC1|✅ proved - incomplete|shostak|0.050|
|nth_equal|✅ proved - incomplete|shostak|0.434|
|plusr2v_TCC1|✅ proved - incomplete|shostak|0.070|
|nth_add_TCC1|✅ proved - incomplete|shostak|0.040|
|nth_add|✅ proved - incomplete|shostak|0.145|
|subr2v_TCC1|✅ proved - incomplete|shostak|0.095|
|nth_sub_TCC1|✅ proved - incomplete|shostak|0.380|
|nth_sub|✅ proved - incomplete|shostak|0.824|

## `exp_analysis`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|deriv_domain_exp_a|✅ proved - complete|shostak|0.282|
|IMP_chain_rule_TCC1|✅ proved - complete|shostak|0.268|
|IMP_chain_rule_TCC2|✅ proved - complete|shostak|0.020|
|IMP_chain_rule_TCC3|✅ proved - complete|shostak|0.110|
|IMP_chain_rule_TCC4|✅ proved - complete|shostak|0.030|
|IMP_fundamental_theorem_TCC1|✅ proved - complete|shostak|0.030|
|IMP_fundamental_theorem_TCC2|✅ proved - complete|shostak|0.020|
|derivable_exp_lin|✅ proved - incomplete|shostak|0.320|
|deriv_exp_lin_TCC1|✅ proved - incomplete|shostak|0.020|
|deriv_exp_lin|✅ proved - incomplete|shostak|1.299|
|derivable_exp_lin_r|✅ proved - incomplete|shostak|0.226|
|deriv_exp_lin_r_TCC1|✅ proved - incomplete|shostak|0.250|
|deriv_exp_lin_r|✅ proved - incomplete|shostak|0.363|
|cont_exp_lin|✅ proved - incomplete|shostak|0.382|
|deriv_Int_lin_TCC1|✅ proved - incomplete|shostak|0.110|
|deriv_Int_lin|✅ proved - incomplete|shostak|0.272|
|derivable_exp_ln_TCC1|✅ proved - complete|shostak|0.040|
|derivable_exp_ln|✅ proved - incomplete|shostak|0.185|
|deriv_exp_ln_TCC1|✅ proved - incomplete|shostak|0.030|
|deriv_exp_ln_TCC2|✅ proved - complete|shostak|0.030|
|deriv_exp_ln|✅ proved - incomplete|shostak|1.336|

## `interval_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|closed_interval_TCC1|✅ proved - complete|shostak|0.030|
|ci_ci|✅ proved - complete|shostak|0.020|
|ci_nonempty|✅ proved - complete|shostak|0.030|
|ci_connected|✅ proved - complete|shostak|0.040|
|ci_not_one_element|✅ proved - complete|shostak|0.040|
|ci_deriv_domain|✅ proved - complete|shostak|0.302|
|ci_closed_D_TCC1|✅ proved - incomplete|shostak|0.040|
|ci_closed_D|✅ proved - incomplete|shostak|0.997|
|ci_bounded_D|✅ proved - incomplete|shostak|0.321|
|ci_nonempty_D|✅ proved - incomplete|shostak|0.040|
|d_three|✅ proved - incomplete|shostak|0.030|
|hp_noe|✅ proved - complete|shostak|0.060|
|hp_dd|✅ proved - complete|shostak|0.118|
|hp_con|✅ proved - complete|shostak|0.030|
|hp_ne|✅ proved - complete|shostak|0.030|

## `r2v_analysis`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|deriv_domain|✅ proved - complete|shostak|0.271|
|IMP_fundamental_theorem_TCC1|✅ proved - complete|shostak|0.030|
|IMP_fundamental_theorem_TCC2|✅ proved - complete|shostak|0.020|
|IMP_fundamental_theorem_TCC3|✅ proved - complete|shostak|0.020|
|IMP_r2v_def_TCC1|✅ proved - complete|shostak|0.020|
|derivable?_TCC1|✅ proved - incomplete|shostak|0.371|
|deriv_TCC1|✅ proved - incomplete|shostak|0.030|
|deriv_TCC2|✅ proved - incomplete|shostak|0.030|
|deriv_TCC3|✅ proved - incomplete|shostak|0.040|
|deriv_TCC4|✅ proved - incomplete|shostak|0.030|
|deriv_TCC5|✅ proved - incomplete|shostak|0.090|
|deriv_TCC6|✅ proved - incomplete|shostak|0.047|
|deriv_TCC7|✅ proved - incomplete|shostak|0.130|
|deriv_nth_TCC1|✅ proved - incomplete|shostak|0.030|
|deriv_nth_TCC2|✅ proved - incomplete|shostak|0.020|
|deriv_nth|✅ proved - incomplete|shostak|0.429|
|integrable?_TCC1|✅ proved - incomplete|shostak|0.020|
|integral_TCC1|✅ proved - incomplete|shostak|0.030|
|integral_TCC2|✅ proved - incomplete|shostak|0.040|
|integral_TCC3|✅ proved - incomplete|shostak|0.020|
|integral_TCC4|✅ proved - incomplete|shostak|0.036|
|integral_TCC5|✅ proved - incomplete|shostak|0.090|
|integral_TCC6|✅ proved - incomplete|shostak|0.080|
|integral_TCC7|✅ proved - incomplete|shostak|0.090|
|int_nth_TCC1|✅ proved - incomplete|shostak|0.248|
|int_nth_TCC2|✅ proved - incomplete|shostak|0.295|
|int_nth|✅ proved - incomplete|shostak|0.352|
|Integral_TCC1|✅ proved - incomplete|shostak|0.030|
|Integral_TCC2|✅ proved - incomplete|shostak|0.030|
|Integral_TCC3|✅ proved - incomplete|shostak|0.050|
|Integral_TCC4|✅ proved - incomplete|shostak|0.086|
|Integral_TCC5|✅ proved - incomplete|shostak|0.060|
|Integral_TCC6|✅ proved - incomplete|shostak|0.080|
|Int_nth_TCC1|✅ proved - incomplete|shostak|0.000|
|Int_nth_TCC2|✅ proved - incomplete|shostak|0.473|
|Int_nth|✅ proved - incomplete|shostak|0.304|
|Int_zero_TCC1|✅ proved - incomplete|shostak|0.040|
|Int_zero|✅ proved - incomplete|shostak|0.070|
|Int_int_TCC1|✅ proved - incomplete|shostak|0.326|
|Int_int|✅ proved - incomplete|shostak|0.085|
|Integrable_sum|✅ proved - incomplete|shostak|0.165|
|Int_sum_TCC1|✅ proved - incomplete|shostak|0.030|
|Int_sum|✅ proved - incomplete|shostak|1.535|
|Integrable_diff|✅ proved - incomplete|shostak|0.130|
|Int_diff_TCC1|✅ proved - incomplete|shostak|0.030|
|Int_diff|✅ proved - incomplete|shostak|0.580|
|Integrable_const_TCC1|✅ proved - incomplete|shostak|0.038|
|Integrable_const|✅ proved - incomplete|shostak|0.301|
|Integral_const_TCC1|✅ proved - incomplete|shostak|0.051|
|Integral_const|✅ proved - incomplete|shostak|0.761|
|cont_entry_v_TCC1|✅ proved - incomplete|shostak|0.093|
|cont_entry_v_TCC2|✅ proved - incomplete|shostak|0.090|
|cont_entry_v_TCC3|✅ proved - incomplete|shostak|0.030|
|cont_entry_v_TCC4|✅ proved - incomplete|shostak|0.040|
|cont_entry_v_TCC5|✅ proved - incomplete|shostak|0.030|
|cont_entry_v|✅ proved - incomplete|shostak|1.607|
|cont_v_entry_TCC1|✅ proved - incomplete|shostak|0.040|
|cont_v_entry_TCC2|✅ proved - incomplete|shostak|0.043|
|cont_v_entry_TCC3|✅ proved - incomplete|shostak|0.030|
|cont_v_entry_TCC4|✅ proved - incomplete|shostak|0.040|
|cont_v_entry_TCC5|✅ proved - incomplete|shostak|0.030|
|cont_v_entry|✅ proved - incomplete|shostak|0.725|
|cont_triv_TCC1|✅ proved - incomplete|shostak|0.169|
|cont_triv_TCC2|✅ proved - incomplete|shostak|0.030|
|cont_triv|✅ proved - incomplete|shostak|0.040|
|cont_nn_comp_TCC1|✅ proved - incomplete|shostak|0.114|
|cont_nn_comp|✅ proved - incomplete|shostak|0.417|
|cont_sub_TCC1|✅ proved - incomplete|shostak|0.232|
|cont_sub|✅ proved - incomplete|shostak|0.745|
|cont_int|✅ proved - incomplete|shostak|0.073|
|cont_Int|✅ proved - incomplete|shostak|0.055|
|Int_cont_TCC1|✅ proved - incomplete|shostak|0.030|
|Int_cont_TCC2|✅ proved - incomplete|shostak|0.050|
|Int_cont|✅ proved - incomplete|shostak|0.376|
|der_cont|✅ proved - incomplete|shostak|0.040|

## `r2v_continuous_extension`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_r2v_analysis_TCC1|✅ proved - complete|shostak|0.020|
|IMP_r2v_analysis_TCC2|✅ proved - complete|shostak|0.030|
|IMP_r2v_analysis_TCC3|✅ proved - complete|shostak|0.030|
|d_b_TCC1|✅ proved - incomplete|shostak|0.030|
|d_b_TCC2|✅ proved - incomplete|shostak|0.077|
|d_b_TCC3|✅ proved - incomplete|shostak|0.090|
|ext_c_TCC1|✅ proved - incomplete|shostak|0.040|
|ext_c_TCC2|✅ proved - incomplete|shostak|0.035|
|ext_c_TCC3|✅ proved - incomplete|shostak|0.070|
|ext_c_TCC4|✅ proved - incomplete|shostak|0.040|
|ext_c_TCC5|✅ proved - incomplete|shostak|0.040|
|ext_c_TCC6|✅ proved - incomplete|shostak|0.060|
|ext_cont_TCC1|✅ proved - incomplete|shostak|0.056|
|ext_cont_TCC2|✅ proved - incomplete|shostak|0.040|
|ext_cont_TCC3|✅ proved - incomplete|shostak|0.040|
|ext_cont_TCC4|✅ proved - incomplete|shostak|0.060|
|ext_cont|✅ proved - incomplete|shostak|1.781|
|ext_c_TCC7|✅ proved - incomplete|shostak|0.040|
|ext_c_TCC8|✅ proved - incomplete|shostak|0.030|
|ext_c_TCC9|✅ proved - incomplete|shostak|0.030|
|ext_c_TCC10|✅ proved - incomplete|shostak|0.060|
|ext_c_TCC11|✅ proved - incomplete|shostak|0.040|
|ext_c_TCC12|✅ proved - incomplete|shostak|0.042|
|ext_c_TCC13|✅ proved - incomplete|shostak|0.050|
|ext_const|✅ proved - incomplete|shostak|0.140|
|ext_cont_r|✅ proved - incomplete|shostak|0.000|
|ext_cont_D_TCC1|✅ proved - incomplete|shostak|0.080|
|ext_cont_D|✅ proved - incomplete|shostak|1.900|
|ext_plus|✅ proved - incomplete|shostak|0.260|
|ext_ineq|✅ proved - incomplete|shostak|0.110|

## `r2v_diff_extension`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_r2v_continuous_extension_TCC1|✅ proved - complete|shostak|0.020|
|ext_derivable_lb_TCC1|✅ proved - complete|shostak|0.040|
|ext_derivable_lb_TCC2|✅ proved - complete|shostak|0.030|
|ext_derivable_lb_TCC3|✅ proved - incomplete|shostak|0.100|
|ext_derivable_lb_TCC4|✅ proved - incomplete|shostak|0.100|
|ext_derivable_lb_TCC5|✅ proved - incomplete|shostak|0.070|
|ext_derivable_lb_TCC6|✅ proved - incomplete|shostak|0.090|
|ext_derivable_lb_TCC7|✅ proved - incomplete|shostak|0.040|
|ext_derivable_lb_TCC8|✅ proved - incomplete|shostak|0.144|
|ext_derivable_lb_TCC9|✅ proved - incomplete|shostak|0.070|
|ext_derivable_lb|✅ proved - incomplete|shostak|3.097|
|ext_deriv_lb_TCC1|✅ proved - incomplete|shostak|0.112|
|ext_deriv_lb_TCC2|✅ proved - incomplete|shostak|0.200|
|ext_deriv_lb|✅ proved - incomplete|shostak|0.555|
|ext_derivable_ub_TCC1|✅ proved - incomplete|shostak|0.139|
|ext_derivable_ub|✅ proved - incomplete|shostak|2.813|
|ext_deriv_ub_TCC1|✅ proved - incomplete|shostak|0.100|
|ext_deriv_ub_TCC2|✅ proved - incomplete|shostak|0.189|
|ext_deriv_ub|✅ proved - incomplete|shostak|5.659|
|ext_derivable_int_TCC1|✅ proved - incomplete|shostak|0.065|
|ext_derivable_int|✅ proved - incomplete|shostak|2.249|
|ext_deriv_int_TCC1|✅ proved - incomplete|shostak|0.119|
|ext_deriv_int_TCC2|✅ proved - incomplete|shostak|0.080|
|ext_deriv_int|✅ proved - incomplete|shostak|1.825|
|ext_derivable_ext_TCC1|✅ proved - incomplete|shostak|0.070|
|ext_derivable_ext|✅ proved - incomplete|shostak|2.249|
|ext_deriv_extl_TCC1|✅ proved - incomplete|shostak|0.100|
|ext_deriv_extl|✅ proved - incomplete|shostak|3.900|
|ext_deriv_extu_TCC1|✅ proved - incomplete|shostak|0.070|
|ext_deriv_extu_TCC2|✅ proved - incomplete|shostak|0.110|
|ext_deriv_extu|✅ proved - incomplete|shostak|4.684|
|ext_d_TCC1|✅ proved - incomplete|shostak|0.100|
|ext_d_TCC2|✅ proved - incomplete|shostak|0.030|
|ext_d_TCC3|✅ proved - incomplete|shostak|0.039|
|ext_d_TCC4|✅ proved - incomplete|shostak|0.200|
|ext_d_TCC5|✅ proved - incomplete|shostak|0.600|

## `r2v_sequence_convergence`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_r2v_analysis_TCC1|✅ proved - complete|shostak|0.020|
|IMP_r2v_analysis_TCC2|✅ proved - complete|shostak|0.030|
|IMP_r2v_analysis_TCC3|✅ proved - complete|shostak|0.020|
|conv_pw?_TCC1|✅ proved - incomplete|shostak|0.050|
|conv_pw?_TCC2|✅ proved - incomplete|shostak|0.045|
|conv_pw?_TCC3|✅ proved - incomplete|shostak|0.060|
|conv_pw?_TCC4|✅ proved - incomplete|shostak|0.040|
|cauchy_pw?_TCC1|✅ proved - incomplete|shostak|0.050|
|cauchy_conv_pw|✅ proved - incomplete|shostak|0.213|
|conv_u?_TCC1|✅ proved - incomplete|shostak|0.050|
|conv_u?_TCC2|✅ proved - incomplete|shostak|0.100|
|conv_u?_TCC3|✅ proved - incomplete|shostak|0.050|
|cauchy_u?_TCC1|✅ proved - incomplete|shostak|0.131|
|conv_pw_equiv|✅ proved - incomplete|shostak|1.198|
|cauchy_pw_equiv|✅ proved - incomplete|shostak|0.341|
|conv_u_equiv_TCC1|✅ proved - incomplete|shostak|0.060|
|conv_u_equiv|✅ proved - incomplete|shostak|0.792|
|cauchy_u_equiv|✅ proved - incomplete|shostak|1.112|
|cauchy_u_pw|✅ proved - incomplete|shostak|0.070|
|cauchy_u_conv_pw|✅ proved - incomplete|shostak|0.030|
|K_epsn|✅ proved - complete|shostak|0.040|
|norm_conv_bound_TCC1|✅ proved - incomplete|shostak|0.030|
|norm_conv_bound_TCC2|✅ proved - incomplete|shostak|0.000|
|norm_conv_bound_TCC3|✅ proved - incomplete|shostak|0.110|
|norm_conv_bound|✅ proved - incomplete|shostak|1.504|
|cauchy_u_conv_u|✅ proved - incomplete|shostak|0.178|
|conv_u_cont|✅ proved - incomplete|shostak|1.390|

## `metric_rho`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_r2v_continuous_extension_TCC1|✅ proved - complete|shostak|0.030|
|pre_rho_TCC1|✅ proved - incomplete|shostak|0.050|
|pre_rho_TCC2|✅ proved - incomplete|shostak|0.070|
|pre_rho_cont|✅ proved - incomplete|shostak|4.060|
|pre_rho_cont_D_TCC1|✅ proved - incomplete|shostak|0.100|
|pre_rho_cont_D|✅ proved - incomplete|shostak|1.326|
|rho_TCC1|✅ proved - incomplete|shostak|1.324|
|rho_TCC2|✅ proved - incomplete|shostak|0.040|
|rho_TCC3|✅ proved - incomplete|shostak|0.539|
|rho_zero|✅ proved - incomplete|shostak|3.855|
|rho_symmetric|✅ proved - incomplete|shostak|2.839|
|rho_triangle|✅ proved - incomplete|shostak|6.163|
|rho_metric|✅ proved - incomplete|shostak|0.035|

## `continuous_function_complete_rho`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_metric_rho_TCC1|✅ proved - complete|shostak|0.020|
|IMP_r2v_sequence_convergence_TCC1|✅ proved - complete|shostak|0.030|
|IMP_r2v_sequence_convergence_TCC2|✅ proved - complete|shostak|0.030|
|IMP_r2v_sequence_convergence_TCC3|✅ proved - complete|shostak|0.020|
|Cfs_complete|✅ proved - incomplete|shostak|23.238|

## `ODE_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_r2v_analysis_TCC1|✅ proved - complete|shostak|0.020|
|IMP_r2v_analysis_TCC2|✅ proved - complete|shostak|0.030|
|IMP_r2v_analysis_TCC3|✅ proved - complete|shostak|0.020|
|IMP_derivatives_def_TCC1|✅ proved - complete|shostak|0.020|
|od_fx_TCC1|✅ proved - incomplete|shostak|0.040|
|nth_od_fx_TCC1|✅ proved - incomplete|shostak|0.040|
|nth_od_fx_TCC2|✅ proved - incomplete|shostak|0.040|
|nth_od_fx|✅ proved - incomplete|shostak|0.190|
|od_sol?_TCC1|✅ proved - incomplete|shostak|0.030|
|od_sol_nth_TCC1|✅ proved - incomplete|shostak|0.183|
|od_sol_nth_TCC2|✅ proved - incomplete|shostak|0.243|
|od_sol_nth|✅ proved - incomplete|shostak|0.140|
|od_sol?_TCC2|✅ proved - incomplete|shostak|0.070|
|od_sol?_TCC3|✅ proved - incomplete|shostak|0.070|

## `ODE_Lipschitz_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_ODE_def_TCC1|✅ proved - complete|shostak|0.020|
|IMP_ODE_def_TCC2|✅ proved - complete|shostak|0.016|
|IMP_ODE_def_TCC3|✅ proved - complete|shostak|0.020|
|Lip_d?_TCC1|✅ proved - incomplete|shostak|0.070|
|Lip_d?_TCC2|✅ proved - incomplete|shostak|0.070|
|Lip_norm_od_f|✅ proved - incomplete|shostak|0.390|
|Lip_entry?_TCC1|✅ proved - incomplete|shostak|0.050|
|Lip_entry?_TCC2|✅ proved - incomplete|shostak|0.056|
|Lip_entry?_TCC3|✅ proved - incomplete|shostak|0.070|
|Lip_entry_c_TCC1|✅ proved - incomplete|shostak|0.070|
|Lip_entry_c_TCC2|✅ proved - incomplete|shostak|0.075|
|Lip_entry_c_TCC3|✅ proved - incomplete|shostak|0.070|
|Lip_entry_c_TCC4|✅ proved - incomplete|shostak|1.132|
|Lip_entry_equiv|✅ proved - incomplete|shostak|0.912|
|Lip_c_TCC1|✅ proved - incomplete|shostak|0.080|
|Lip_c_TCC2|✅ proved - incomplete|shostak|0.072|
|Lip_c_TCC3|✅ proved - incomplete|shostak|0.194|

## `ODE_continuous_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_ODE_Lipschitz_def_TCC1|✅ proved - complete|shostak|0.020|
|IMP_ODE_Lipschitz_def_TCC2|✅ proved - complete|shostak|0.020|
|IMP_ODE_Lipschitz_def_TCC3|✅ proved - complete|shostak|0.020|
|cont_d?_TCC1|✅ proved - incomplete|shostak|0.040|
|cont_d?_TCC2|✅ proved - incomplete|shostak|0.040|
|cont_d?_TCC3|✅ proved - complete|shostak|0.030|
|cont_Lip_2ndv_TCC1|✅ proved - incomplete|shostak|0.060|
|cont_Lip_2ndv|✅ proved - incomplete|shostak|0.389|
|cont_Lip_bothv_TCC1|✅ proved - incomplete|shostak|0.144|
|cont_Lip_bothv_TCC2|✅ proved - incomplete|shostak|0.150|
|cont_Lip_bothv_TCC3|✅ proved - incomplete|shostak|0.090|
|cont_Lip_bothv_TCC4|✅ proved - incomplete|shostak|0.037|
|cont_Lip_bothv|✅ proved - incomplete|shostak|4.685|
|cont_Lip_bothR_TCC1|✅ proved - incomplete|shostak|0.180|
|cont_Lip_bothR_TCC2|✅ proved - incomplete|shostak|0.211|
|cont_Lip_bothR_TCC3|✅ proved - incomplete|shostak|0.100|
|cont_Lip_bothR|✅ proved - incomplete|shostak|0.907|
|cont_Lip_norm_TCC1|✅ proved - incomplete|shostak|0.100|
|cont_Lip_norm|✅ proved - incomplete|shostak|0.903|
|cont_od_fx|✅ proved - incomplete|shostak|0.840|
|Int_od_fx|✅ proved - incomplete|shostak|0.040|
|cont_Lip_real_TCC1|✅ proved - incomplete|shostak|0.205|
|cont_Lip_real|✅ proved - incomplete|shostak|0.764|

## `norm_ineq`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_ODE_continuous_def_TCC1|✅ proved - complete|shostak|0.020|
|IMP_ODE_continuous_def_TCC2|✅ proved - complete|shostak|0.020|
|IMP_ODE_continuous_def_TCC3|✅ proved - complete|shostak|0.020|
|int_od_fx|✅ proved - incomplete|shostak|0.050|
|int_norm_od_fx_TCC1|✅ proved - incomplete|shostak|0.050|
|int_norm_od_fx_TCC2|✅ proved - incomplete|shostak|0.225|
|int_norm_od_fx|✅ proved - incomplete|shostak|0.080|
|norminf_int_TCC1|✅ proved - incomplete|shostak|0.020|
|norminf_int_TCC2|✅ proved - incomplete|shostak|0.069|
|norminf_int_TCC3|✅ proved - incomplete|shostak|0.020|
|norminf_int|✅ proved - incomplete|shostak|7.230|
|norminf_Int_TCC1|✅ proved - incomplete|shostak|0.051|
|norminf_Int_TCC2|✅ proved - incomplete|shostak|0.240|
|norminf_Int_TCC3|✅ proved - incomplete|shostak|0.229|
|norminf_Int_TCC4|✅ proved - incomplete|shostak|0.040|
|norminf_Int|✅ proved - incomplete|shostak|0.087|
|int_norm_cont_TCC1|✅ proved - incomplete|shostak|0.040|
|int_norm_cont_TCC2|✅ proved - incomplete|shostak|0.090|
|int_norm_cont|✅ proved - incomplete|shostak|0.076|
|normi_TCC1|✅ proved - incomplete|shostak|0.030|
|normi_TCC2|✅ proved - incomplete|shostak|0.030|
|normi_TCC3|✅ proved - incomplete|shostak|0.046|
|normi_TCC4|✅ proved - incomplete|shostak|0.100|
|normi_TCC5|✅ proved - incomplete|shostak|0.040|
|normi|✅ proved - incomplete|shostak|4.264|
|normI_TCC1|✅ proved - incomplete|shostak|0.030|
|normI_TCC2|✅ proved - incomplete|shostak|0.053|
|normI_TCC3|✅ proved - incomplete|shostak|0.090|
|normI_TCC4|✅ proved - incomplete|shostak|0.040|
|normI|✅ proved - incomplete|shostak|0.131|

## `ODE_psi_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_ODE_def_TCC1|✅ proved - complete|shostak|0.020|
|IMP_ODE_def_TCC2|✅ proved - complete|shostak|0.020|
|IMP_ODE_def_TCC3|✅ proved - complete|shostak|0.020|
|psi_TCC1|✅ proved - incomplete|shostak|0.040|
|psi_TCC2|✅ proved - incomplete|shostak|0.151|
|psi_TCC3|✅ proved - incomplete|shostak|0.080|
|psi_init|✅ proved - incomplete|shostak|0.080|
|psi_derivable|✅ proved - incomplete|shostak|0.000|
|psi_cont|✅ proved - incomplete|shostak|0.074|
|psi_deriv_TCC1|✅ proved - incomplete|shostak|0.020|
|psi_deriv|✅ proved - incomplete|shostak|1.748|

## `ODE_psi_contraction`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_exp_analysis_TCC1|✅ proved - complete|shostak|0.030|
|IMP_exp_analysis_TCC2|✅ proved - complete|shostak|0.020|
|IMP_exp_analysis_TCC3|✅ proved - complete|shostak|0.030|
|IMP_metric_rho_TCC1|✅ proved - complete|shostak|0.020|
|od_fx_diff_Int_TCC1|✅ proved - incomplete|shostak|0.307|
|od_fx_diff_Int_TCC2|✅ proved - incomplete|shostak|0.030|
|od_fx_diff_Int|✅ proved - incomplete|shostak|0.149|
|od_fx_contD_diff_TCC1|✅ proved - incomplete|shostak|0.306|
|od_fx_contD_diff_TCC2|✅ proved - incomplete|shostak|0.040|
|od_fx_contD_diff_TCC3|✅ proved - incomplete|shostak|0.199|
|od_fx_contD_diff|✅ proved - incomplete|shostak|10.201|
|rho_psi_int_TCC1|✅ proved - incomplete|shostak|0.050|
|rho_psi_int_TCC2|✅ proved - incomplete|shostak|0.030|
|rho_psi_int_TCC3|✅ proved - incomplete|shostak|0.054|
|rho_psi_int_TCC4|✅ proved - incomplete|shostak|0.060|
|rho_psi_int_TCC5|✅ proved - incomplete|shostak|0.060|
|rho_psi_int_TCC6|✅ proved - incomplete|shostak|0.060|
|rho_psi_int_TCC7|✅ proved - incomplete|shostak|5.630|
|rho_psi_int_TCC8|✅ proved - incomplete|shostak|0.040|
|rho_psi_int|✅ proved - incomplete|shostak|10.164|
|od_fx_diff_norm_int_TCC1|✅ proved - incomplete|shostak|0.114|
|od_fx_diff_norm_int|✅ proved - incomplete|shostak|0.449|
|od_fx_contD_Int_diff_TCC1|✅ proved - incomplete|shostak|0.300|
|od_fx_contD_Int_diff_TCC2|✅ proved - incomplete|shostak|0.050|
|od_fx_contD_Int_diff|✅ proved - incomplete|shostak|42.874|
|rho_psi_int_ineq_TCC1|✅ proved - incomplete|shostak|0.040|
|rho_psi_int_ineq_TCC2|✅ proved - incomplete|shostak|0.040|
|rho_psi_int_ineq_TCC3|✅ proved - incomplete|shostak|0.046|
|rho_psi_int_ineq_TCC4|✅ proved - incomplete|shostak|0.060|
|rho_psi_int_ineq_TCC5|✅ proved - incomplete|shostak|0.050|
|rho_psi_int_ineq_TCC6|✅ proved - incomplete|shostak|0.050|
|rho_psi_int_ineq_TCC7|✅ proved - incomplete|shostak|0.087|
|rho_psi_int_ineq_TCC8|✅ proved - incomplete|shostak|0.030|
|rho_psi_int_ineq|✅ proved - incomplete|shostak|0.000|
|norm_diff_Int_TCC1|✅ proved - incomplete|shostak|0.121|
|norm_diff_Int_TCC2|✅ proved - incomplete|shostak|0.090|
|norm_diff_Int_TCC3|✅ proved - incomplete|shostak|0.065|
|norm_diff_Int|✅ proved - incomplete|shostak|0.245|
|norm_diff_contD_TCC1|✅ proved - incomplete|shostak|0.090|
|norm_diff_contD_TCC2|✅ proved - incomplete|shostak|0.030|
|norm_diff_contD|✅ proved - incomplete|shostak|23.439|
|rho_psi_lip_ineq_TCC1|✅ proved - incomplete|shostak|0.080|
|rho_psi_lip_ineq|✅ proved - incomplete|shostak|3.800|
|rho_psi_exp_contD_triv_TCC1|✅ proved - incomplete|shostak|2.518|
|rho_psi_exp_contD_triv|✅ proved - incomplete|shostak|3.164|
|rho_psi_int_exp_TCC1|✅ proved - incomplete|shostak|0.000|
|rho_psi_int_exp|✅ proved - incomplete|shostak|1.144|
|exp_rho_Integrable|✅ proved - incomplete|shostak|0.413|
|exp_rho_contD_rho_TCC1|✅ proved - incomplete|shostak|0.090|
|exp_rho_contD_rho|✅ proved - incomplete|shostak|18.383|
|exp_rho_contD_TCC1|✅ proved - incomplete|shostak|0.030|
|exp_rho_contD_TCC2|✅ proved - incomplete|shostak|0.040|
|exp_rho_contD_TCC3|✅ proved - incomplete|shostak|0.040|
|exp_rho_contD_TCC4|✅ proved - incomplete|shostak|0.252|
|exp_rho_contD|✅ proved - incomplete|shostak|13.765|
|rho_psi_int_rho_TCC1|✅ proved - incomplete|shostak|0.110|
|rho_psi_int_rho|✅ proved - incomplete|shostak|3.555|
|rho_psi_rho_pull_TCC1|✅ proved - incomplete|shostak|0.105|
|rho_psi_rho_pull|✅ proved - incomplete|shostak|7.202|
|rho_psi_rho_exp_int|✅ proved - incomplete|shostak|6.583|
|psi_contraction|✅ proved - incomplete|shostak|0.064|
|psi_fixed_imp_sol_TCC1|✅ proved - incomplete|shostak|0.050|
|psi_fixed_imp_sol_TCC2|✅ proved - incomplete|shostak|0.060|
|psi_fixed_imp_sol|✅ proved - incomplete|shostak|1.354|

## `ODE_solution_existence_uniqueness`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Psi_TCC1|✅ proved - complete|shostak|0.050|
|Psi_TCC2|✅ proved - complete|shostak|0.031|
|Psi_TCC3|✅ proved - complete|shostak|0.040|
|Psi_TCC4|✅ proved - complete|shostak|0.030|
|Psi_TCC5|✅ proved - incomplete|shostak|0.419|
|Psi_TCC6|✅ proved - incomplete|shostak|0.350|
|Psi_TCC7|✅ proved - incomplete|shostak|0.074|
|Psi_TCC8|✅ proved - incomplete|shostak|0.080|
|Psi_contract_TCC1|✅ proved - incomplete|shostak|0.270|
|Psi_contract_TCC2|✅ proved - incomplete|shostak|0.138|
|Psi_contract_TCC3|✅ proved - incomplete|shostak|0.383|
|Psi_contract|✅ proved - incomplete|shostak|0.806|
|Psi_fixed_point_TCC1|✅ proved - incomplete|shostak|0.270|
|Psi_fixed_point|✅ proved - incomplete|shostak|0.917|
|init_unique_solution_TCC1|✅ proved - incomplete|shostak|0.449|
|init_unique_solution_TCC2|✅ proved - incomplete|shostak|0.060|
|init_unique_solution_TCC3|✅ proved - incomplete|shostak|0.060|
|init_unique_solution_TCC4|✅ proved - incomplete|shostak|0.326|
|init_unique_solution|✅ proved - incomplete|shostak|0.000|
|unique_solution|✅ proved - incomplete|shostak|0.110|
|ode_sol_TCC1|✅ proved - incomplete|shostak|0.175|
|ode_sol_TCC2|✅ proved - incomplete|shostak|0.060|
|ode_sol_TCC3|✅ proved - incomplete|shostak|0.620|
|ode_sol_extend_TCC1|✅ proved - complete|shostak|0.030|
|ode_sol_extend_TCC2|✅ proved - complete|shostak|0.030|
|ode_sol_extend_TCC3|✅ proved - complete|shostak|0.040|
|ode_sol_extend_TCC4|✅ proved - complete|shostak|0.065|
|ode_sol_extend_TCC5|✅ proved - complete|shostak|0.040|
|ode_sol_extend_TCC6|✅ proved - incomplete|shostak|0.365|
|ode_sol_extend_TCC7|✅ proved - incomplete|shostak|0.046|
|ode_sol_extend_TCC8|✅ proved - incomplete|shostak|0.050|
|ode_sol_extend_TCC9|✅ proved - incomplete|shostak|0.050|
|ode_sol_extend_TCC10|✅ proved - incomplete|shostak|0.046|
|ode_sol_extend_TCC11|✅ proved - incomplete|shostak|0.454|
|ode_sol_extend_TCC12|✅ proved - incomplete|shostak|0.060|
|ode_sol_extend_TCC13|✅ proved - incomplete|shostak|0.106|
|ode_sol_extend|✅ proved - incomplete|shostak|5.668|
|Lip_hp?_TCC1|✅ proved - incomplete|shostak|0.040|
|Lip_hp?_TCC2|✅ proved - incomplete|shostak|0.040|
|Lip_hp?_TCC3|✅ proved - incomplete|shostak|0.080|
|Lip_hp?_TCC4|✅ proved - incomplete|shostak|0.040|
|Lip_hp?_TCC5|✅ proved - incomplete|shostak|0.051|
|Lip_hp?_TCC6|✅ proved - incomplete|shostak|0.060|
|Lip_hp?_TCC7|✅ proved - incomplete|shostak|0.050|
|ode_sol_restrict_hp_TCC1|✅ proved - incomplete|shostak|0.245|
|ode_sol_restrict_hp_TCC2|✅ proved - incomplete|shostak|0.050|
|ode_sol_restrict_hp_TCC3|✅ proved - incomplete|shostak|0.067|
|ode_sol_restrict_hp_TCC4|✅ proved - incomplete|shostak|0.195|
|ode_sol_restrict_hp_TCC5|✅ proved - incomplete|shostak|0.040|
|ode_sol_restrict_hp|✅ proved - incomplete|shostak|0.000|
|unique_solution_restrict_TCC1|✅ proved - incomplete|shostak|0.047|
|unique_solution_restrict_TCC2|✅ proved - incomplete|shostak|0.040|
|unique_solution_restrict_TCC3|✅ proved - incomplete|shostak|0.040|
|unique_solution_restrict_TCC4|✅ proved - incomplete|shostak|0.048|
|unique_solution_restrict_TCC5|✅ proved - incomplete|shostak|0.150|
|unique_solution_restrict_TCC6|✅ proved - incomplete|shostak|0.047|
|unique_solution_restrict_TCC7|✅ proved - incomplete|shostak|0.060|
|unique_solution_restrict_TCC8|✅ proved - incomplete|shostak|0.549|
|unique_solution_restrict_TCC9|✅ proved - incomplete|shostak|0.060|
|unique_solution_restrict|✅ proved - incomplete|shostak|1.286|
|ci_lambda_eq_TCC1|✅ proved - incomplete|shostak|0.150|
|ci_lambda_eq_TCC2|✅ proved - incomplete|shostak|0.169|
|ci_lambda_eq_TCC3|✅ proved - incomplete|shostak|0.160|
|ci_lambda_eq_TCC4|✅ proved - incomplete|shostak|0.176|
|ci_lambda_eq_TCC5|✅ proved - incomplete|shostak|0.160|
|ci_lambda_eq|✅ proved - incomplete|shostak|0.202|
|ode_sol_derivable_TCC1|✅ proved - incomplete|shostak|0.080|
|ode_sol_derivable_TCC2|✅ proved - incomplete|shostak|0.383|
|ode_sol_derivable_TCC3|✅ proved - incomplete|shostak|0.364|
|ode_sol_derivable_TCC4|✅ proved - incomplete|shostak|0.075|
|ode_sol_derivable_TCC5|✅ proved - incomplete|shostak|0.390|
|ode_sol_derivable_TCC6|✅ proved - incomplete|shostak|0.100|
|ode_sol_derivable_TCC7|✅ proved - incomplete|shostak|0.423|
|ode_sol_derivable_TCC8|✅ proved - incomplete|shostak|0.100|
|ode_sol_derivable_TCC9|✅ proved - incomplete|shostak|0.126|
|ode_sol_derivable_TCC10|✅ proved - incomplete|shostak|0.120|
|ode_sol_derivable|✅ proved - incomplete|shostak|5.983|
|ode_sol_deriv_TCC1|✅ proved - incomplete|shostak|0.159|
|ode_sol_deriv_TCC2|✅ proved - incomplete|shostak|0.246|
|ode_sol_deriv|✅ proved - incomplete|shostak|2.222|
|ode_sol_init_TCC1|✅ proved - incomplete|shostak|0.246|
|ode_sol_init|✅ proved - incomplete|shostak|0.675|
|sol_uniq_hp_TCC1|✅ proved - incomplete|shostak|0.070|
|sol_uniq_hp_TCC2|✅ proved - incomplete|shostak|0.316|
|sol_uniq_hp|✅ proved - incomplete|shostak|2.948|
|ode_sol_TCC4|✅ proved - incomplete|shostak|0.113|
|ode_sol_TCC5|✅ proved - incomplete|shostak|0.200|

## `restrict_ode`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|restrict_TCC1|✅ proved - incomplete|shostak|0.030|
|restrict_cont_TCC1|✅ proved - complete|shostak|0.030|
|restrict_cont_TCC2|✅ proved - complete|shostak|0.017|
|restrict_cont_TCC3|✅ proved - complete|shostak|0.030|
|restrict_cont_TCC4|✅ proved - incomplete|shostak|0.020|
|restrict_cont_TCC5|✅ proved - incomplete|shostak|0.030|
|restrict_cont_TCC6|✅ proved - incomplete|shostak|0.020|
|restrict_cont|✅ proved - incomplete|shostak|0.146|
|restrict_Lip_TCC1|✅ proved - incomplete|shostak|0.020|
|restrict_Lip_TCC2|✅ proved - incomplete|shostak|0.030|
|restrict_Lip_TCC3|✅ proved - incomplete|shostak|0.020|
|restrict_Lip|✅ proved - incomplete|shostak|0.095|
|restrict_derivable_TCC1|✅ proved - incomplete|shostak|0.020|
|restrict_derivable_TCC2|✅ proved - incomplete|shostak|0.020|
|restrict_derivable_TCC3|✅ proved - incomplete|shostak|0.030|
|restrict_derivable_TCC4|✅ proved - incomplete|shostak|0.020|
|restrict_derivable|✅ proved - incomplete|shostak|0.111|
|restrict_deriv_TCC1|✅ proved - incomplete|shostak|0.050|
|restrict_deriv_TCC2|✅ proved - incomplete|shostak|0.020|
|restrict_deriv|✅ proved - incomplete|shostak|1.050|

## `linear_ode_1D`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|od_ln_TCC1|✅ proved - incomplete|shostak|0.120|
|od_ln_TCC2|✅ proved - incomplete|shostak|0.120|
|lin_lip_TCC1|✅ proved - complete|shostak|0.260|
|lin_lip_TCC2|✅ proved - complete|shostak|0.030|
|lin_lip_TCC3|✅ proved - complete|shostak|0.032|
|lin_lip|✅ proved - incomplete|shostak|1.095|
|lin_cont_d|✅ proved - incomplete|shostak|0.000|
|lin_cont_d_hp_TCC1|✅ proved - complete|shostak|0.030|
|lin_cont_d_hp_TCC2|✅ proved - complete|shostak|0.080|
|lin_cont_d_hp_TCC3|✅ proved - complete|shostak|0.030|
|lin_cont_d_hp|✅ proved - incomplete|shostak|0.568|
|lin_unique_solution_TCC1|✅ proved - incomplete|shostak|0.030|
|lin_unique_solution_TCC2|✅ proved - incomplete|shostak|0.220|
|lin_unique_solution_TCC3|✅ proved - incomplete|shostak|0.055|
|lin_unique_solution|✅ proved - incomplete|shostak|0.070|
|lin_unique_solution_hp_TCC1|✅ proved - incomplete|shostak|0.160|
|lin_unique_solution_hp|✅ proved - incomplete|shostak|1.193|
|lin_1D_unique_ci_TCC1|✅ proved - incomplete|shostak|0.032|
|lin_1D_unique_ci_TCC2|✅ proved - incomplete|shostak|0.210|
|lin_1D_unique_ci_TCC3|✅ proved - incomplete|shostak|0.175|
|lin_1D_unique_ci|✅ proved - incomplete|shostak|1.339|
|lin_1D_unique_hp_TCC1|✅ proved - incomplete|shostak|0.042|
|lin_1D_unique_hp_TCC2|✅ proved - incomplete|shostak|0.040|
|lin_1D_unique_hp|✅ proved - incomplete|shostak|1.229|
|lin_1D_unique_hp_ci_TCC1|✅ proved - incomplete|shostak|0.030|
|lin_1D_unique_hp_ci_TCC2|✅ proved - incomplete|shostak|0.132|
|lin_1D_unique_hp_ci_TCC3|✅ proved - incomplete|shostak|0.121|
|lin_1D_unique_hp_ci_TCC4|✅ proved - incomplete|shostak|0.217|
|lin_1D_unique_hp_ci_TCC5|✅ proved - incomplete|shostak|0.040|
|lin_1D_unique_hp_ci_TCC6|✅ proved - incomplete|shostak|0.194|
|lin_1D_unique_hp_ci_TCC7|✅ proved - incomplete|shostak|0.167|
|lin_1D_unique_hp_ci_TCC8|✅ proved - incomplete|shostak|0.130|
|lin_1D_unique_hp_ci_TCC9|✅ proved - incomplete|shostak|0.488|
|lin_1D_unique_hp_ci|✅ proved - incomplete|shostak|1.212|

## `more_ci_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|max_ci_TCC1|✅ proved - complete|shostak|0.020|
|max_ci_TCC2|✅ proved - incomplete|shostak|0.040|
|max_ci_TCC3|✅ proved - incomplete|shostak|0.050|
|max_ci_TCC4|✅ proved - incomplete|shostak|0.050|
|db_max_TCC1|✅ proved - complete|shostak|0.020|
|db_max_TCC2|✅ proved - complete|shostak|0.030|
|db_max|✅ proved - incomplete|shostak|0.209|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Mac OS X (Intel)] (Nov 14, 2020 23:13)|
| Patch Version| n/a|
| Library Path| `/Applications/pvs-7.1.0/pvslib/`<br/>`/Applications/pvs-7.1.0/lib/`<br/>`/Applications/pvs-7.1.0/pvslib/float/`<br/>`/Applications/pvs-7.1.0/pvslib/pvsio_utils/`|
| Loaded Patches | `/Applications/pvs-7.1.0/pvslib/.pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230712-static-update.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230710-tcc-gen.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230707-defattach.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230706-extrategies.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210323-wish.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210225-cl2pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210715a.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210715.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210707.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210706.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210511.lisp`|
