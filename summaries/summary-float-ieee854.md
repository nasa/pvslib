# Summary for `float/ieee854`
Run started at 2:49:24 7/4/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **255**   | **255**    | **255**    | **0**  | **1:13.623 s**   |
|top__ieee854|0|0|0|0|0.000|
|IEEE_854|11|11|11|0|0.990|
|IEEE_854_defs|8|8|8|0|0.666|
|IEEE_854_values|82|82|82|0|10.083|
|sum_hack|10|10|10|0|0.856|
|sum_lemmas|4|4|4|0|0.474|
|enumerated_type_defs|0|0|0|0|0.000|
|IEEE_854_remainder|2|2|2|0|0.060|
|real_to_fp|27|27|27|0|5.057|
|over_under|18|18|18|0|3.492|
|fp_round_aux|28|28|28|0|2.732|
|round|5|5|5|0|0.924|
|IEEE_854_fp_int|0|0|0|0|0.000|
|arithmetic_ops|1|1|1|0|0.424|
|comparison1|13|13|13|0|0.858|
|infinity_arithmetic|7|7|7|0|0.154|
|NaN_ops|5|5|5|0|0.462|
|IEEE_link|34|34|34|0|46.391|
## Detailed Summary 
## `top__ieee854`
No formula declaration found.
## `IEEE_854`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Significand_size_TCC1|✅ proved - complete|shostak|0.032|
|Exponent_balance_TCC1|✅ proved - complete|shostak|0.010|
|Exponent_balance_TCC2|✅ proved - complete|shostak|0.080|
|Exponent_balance|✅ proved - complete|shostak|0.286|
|E_max_gt_E_min|✅ proved - complete|shostak|0.140|
|HUG_example|✅ proved - complete|shostak|0.050|
|ex754_2|✅ proved - complete|shostak|0.030|
|ex754_3|✅ proved - complete|shostak|0.162|
|E_min_neg|✅ proved - complete|shostak|0.090|
|E_max_pos|✅ proved - complete|shostak|0.100|
|IMP_IEEE_854_defs_TCC1|✅ proved - complete|shostak|0.010|

## `IEEE_854_defs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|fp_add_TCC1|✅ proved - complete|shostak|0.070|
|fp_add_TCC2|✅ proved - complete|shostak|0.020|
|fp_add_x_correct|✅ proved - complete|shostak|0.139|
|fsub_alt_def|✅ proved - complete|shostak|0.257|
|fp_div_TCC1|✅ proved - complete|shostak|0.010|
|fp_div_TCC2|✅ proved - complete|shostak|0.030|
|fp_sqrt_TCC1|✅ proved - complete|shostak|0.020|
|fp_sqrt_TCC2|✅ proved - complete|shostak|0.120|

## `IEEE_854_values`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|value_digit_TCC1|✅ proved - complete|shostak|0.020|
|value_TCC1|✅ proved - complete|shostak|0.010|
|shift_left_TCC1|✅ proved - complete|shostak|0.050|
|shift_left_TCC2|✅ proved - complete|shostak|0.040|
|normalize_TCC1|✅ proved - complete|shostak|0.020|
|normalize_TCC2|✅ proved - complete|shostak|0.010|
|normalize_TCC3|✅ proved - complete|shostak|0.030|
|normalize_TCC4|✅ proved - complete|shostak|0.020|
|normalize_idempotent|✅ proved - complete|shostak|0.230|
|subnormal?_TCC1|✅ proved - complete|shostak|0.150|
|normal?_TCC1|✅ proved - complete|shostak|0.020|
|max_significand_TCC1|✅ proved - complete|shostak|0.021|
|min_significand_TCC1|✅ proved - complete|shostak|0.020|
|min_significand_TCC2|✅ proved - complete|shostak|0.030|
|d_zero_TCC1|✅ proved - complete|shostak|0.010|
|Sum_value0|✅ proved - complete|shostak|0.210|
|zero_finite_d_zero|✅ proved - complete|shostak|0.020|
|max_fp_pos_TCC1|✅ proved - complete|shostak|0.000|
|min_fp_pos_TCC1|✅ proved - complete|shostak|0.010|
|pos_zero_TCC1|✅ proved - complete|shostak|0.010|
|neg_zero_TCC1|✅ proved - complete|shostak|0.010|
|max_pos_TCC1|✅ proved - complete|shostak|0.010|
|max_pos_TCC2|✅ proved - complete|shostak|0.232|
|min_pos_TCC1|✅ proved - complete|shostak|0.010|
|min_pos_TCC2|✅ proved - complete|shostak|0.180|
|max_neg_TCC1|✅ proved - complete|shostak|0.010|
|max_neg_TCC2|✅ proved - complete|shostak|0.212|
|min_neg_TCC1|✅ proved - complete|shostak|0.010|
|min_neg_TCC2|✅ proved - complete|shostak|0.221|
|max_fp_correct_TCC1|✅ proved - complete|shostak|0.010|
|max_fp_correct_TCC2|✅ proved - complete|shostak|0.010|
|max_fp_correct|✅ proved - complete|shostak|0.493|
|min_fp_correct_TCC1|✅ proved - complete|shostak|0.010|
|min_fp_correct|✅ proved - complete|shostak|0.293|
|value0|✅ proved - complete|shostak|0.123|
|value_of_zero|✅ proved - complete|shostak|0.020|
|normal_value|✅ proved - complete|shostak|0.822|
|value_positive|✅ proved - complete|shostak|0.164|
|value_negative|✅ proved - complete|shostak|0.192|
|finite_cover|✅ proved - complete|shostak|0.274|
|finite_disjoint1|✅ proved - complete|shostak|0.020|
|finite_disjoint2|✅ proved - complete|shostak|0.010|
|finite_disjoint3|✅ proved - complete|shostak|0.020|
|toggle_sign_TCC1|✅ proved - complete|shostak|0.030|
|toggle_sign_TCC2|✅ proved - complete|shostak|0.020|
|toggle_finite|✅ proved - complete|shostak|0.020|
|toggle_infinite|✅ proved - complete|shostak|0.010|
|toggle_NaN|✅ proved - complete|shostak|0.020|
|value_toggle_TCC1|✅ proved - complete|shostak|0.016|
|value_toggle|✅ proved - complete|shostak|0.180|
|toggle_d_normalize|✅ proved - complete|shostak|0.277|
|toggle_Exp_normalize|✅ proved - complete|shostak|0.295|
|toggle_zero?|✅ proved - complete|shostak|0.020|
|toggle_normal?|✅ proved - complete|shostak|0.010|
|toggle_subnormal?|✅ proved - complete|shostak|0.020|
|value_digit_le_TCC1|✅ proved - complete|shostak|0.020|
|value_digit_le|✅ proved - complete|shostak|0.073|
|Sum_d_lt_b|✅ proved - complete|shostak|0.304|
|Sum_d_lt1_TCC1|✅ proved - complete|shostak|0.010|
|Sum_d_lt1|✅ proved - complete|shostak|0.294|
|Sum_d_ge1|✅ proved - complete|shostak|0.196|
|value_sig_lt_b|✅ proved - complete|shostak|0.050|
|value_sig_lt1|✅ proved - complete|shostak|0.050|
|value_sig_ge1|✅ proved - complete|shostak|0.027|
|abs_value_fin|✅ proved - complete|shostak|0.190|
|min_significand_min|✅ proved - complete|shostak|0.388|
|sign_normal|✅ proved - complete|shostak|0.205|
|value_normal_TCC1|✅ proved - complete|shostak|0.030|
|value_normal|✅ proved - complete|shostak|0.228|
|value_subnormal_TCC1|✅ proved - complete|shostak|0.210|
|value_subnormal|✅ proved - complete|shostak|0.204|
|value_nonzero|✅ proved - complete|shostak|0.215|
|scale_value_TCC1|✅ proved - complete|shostak|0.010|
|scaled_Sum_int|✅ proved - complete|shostak|0.383|
|scale_value_p_TCC1|✅ proved - complete|shostak|0.020|
|scale_value_p_TCC2|✅ proved - complete|shostak|0.266|
|scaled_Sum_i_TCC1|✅ proved - complete|shostak|0.010|
|scaled_Sum_i|✅ proved - complete|shostak|0.085|
|scaled_Sum|✅ proved - complete|shostak|0.060|
|floor_Sum|✅ proved - complete|shostak|0.398|
|mod_Sum_TCC1|✅ proved - complete|shostak|0.040|
|mod_Sum|✅ proved - complete|shostak|0.912|

## `sum_hack`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Sum_TCC1|✅ proved - complete|shostak|0.020|
|Sum_TCC2|✅ proved - complete|shostak|0.010|
|Sum_nonneg|✅ proved - complete|shostak|0.089|
|Sum_zero|✅ proved - complete|shostak|0.130|
|Sum_pos|✅ proved - complete|shostak|0.134|
|Sum_le|✅ proved - complete|shostak|0.095|
|Sum_ge1|✅ proved - complete|shostak|0.100|
|Sum_ge|✅ proved - complete|shostak|0.098|
|Sum_split_TCC1|✅ proved - complete|shostak|0.010|
|Sum_split|✅ proved - complete|shostak|0.170|

## `sum_lemmas`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|mant_digit_fun_TCC1|✅ proved - complete|shostak|0.030|
|Sum_pos_less_1_TCC1|✅ proved - complete|shostak|0.060|
|Sum_pos_less_1|✅ proved - complete|shostak|0.271|
|floor_Sum_mant|✅ proved - complete|shostak|0.113|

## `enumerated_type_defs`
No formula declaration found.
## `IEEE_854_remainder`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|REM_TCC1|✅ proved - complete|shostak|0.020|
|REM_TCC2|✅ proved - complete|shostak|0.040|

## `real_to_fp`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|truncate_zero|✅ proved - complete|shostak|0.089|
|digits_of_finite|✅ proved - complete|shostak|0.310|
|real_to_fp_TCC1|✅ proved - complete|shostak|0.010|
|real_to_fp_TCC2|✅ proved - complete|shostak|0.087|
|real_to_fp_TCC3|✅ proved - complete|shostak|0.050|
|real_to_fp_TCC4|✅ proved - complete|shostak|0.050|
|real_to_fp_TCC5|✅ proved - complete|shostak|0.160|
|real_to_fp_zero|✅ proved - complete|shostak|0.090|
|sign_of_value|✅ proved - complete|shostak|0.038|
|Exp_of_value_normal_TCC1|✅ proved - complete|shostak|0.020|
|Exp_of_value_normal|✅ proved - complete|shostak|0.484|
|real_to_fp_normal|✅ proved - complete|shostak|0.189|
|real_to_fp_subnormal|✅ proved - complete|shostak|0.183|
|real_to_fp_inverts_value|✅ proved - complete|shostak|0.020|
|round_exceptions_x_TCC1|✅ proved - complete|shostak|0.020|
|fp_round_TCC1|✅ proved - complete|shostak|0.080|
|round_value|✅ proved - complete|shostak|0.668|
|round_value2|✅ proved - complete|shostak|0.103|
|round_0|✅ proved - complete|shostak|0.010|
|round_value3|✅ proved - complete|shostak|0.010|
|round_error_TCC1|✅ proved - complete|shostak|0.110|
|round_error_TCC2|✅ proved - complete|shostak|0.095|
|round_error|✅ proved - complete|shostak|0.593|
|round_near|✅ proved - complete|shostak|0.598|
|round_pos|✅ proved - complete|shostak|0.170|
|round_neg|✅ proved - complete|shostak|0.204|
|round_zero|✅ proved - complete|shostak|0.616|

## `over_under`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|over_under?_TCC1|✅ proved - complete|shostak|0.070|
|infinity_TCC1|✅ proved - complete|shostak|0.000|
|trap_over_TCC1|✅ proved - complete|shostak|0.010|
|overflow_TCC1|✅ proved - complete|shostak|0.000|
|exact_underflow_TCC1|✅ proved - complete|shostak|0.010|
|exact_underflow_TCC2|✅ proved - complete|shostak|0.030|
|round_under_TCC1|✅ proved - complete|shostak|0.120|
|round_under_TCC2|✅ proved - complete|shostak|0.110|
|round_under_correct_TCC1|✅ proved - complete|shostak|0.184|
|round_under_correct|✅ proved - complete|shostak|0.190|
|round_under_value_TCC1|✅ proved - complete|shostak|0.044|
|round_under_value|✅ proved - complete|shostak|0.605|
|round_under_error_TCC1|✅ proved - complete|shostak|0.093|
|round_under_error|✅ proved - complete|shostak|0.433|
|round_under_near|✅ proved - complete|shostak|0.514|
|round_under_pos|✅ proved - complete|shostak|0.264|
|round_under_neg|✅ proved - complete|shostak|0.235|
|round_under_zero|✅ proved - complete|shostak|0.580|

## `fp_round_aux`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Exp_of_TCC1|✅ proved - complete|shostak|0.010|
|Exp_of_TCC2|✅ proved - complete|shostak|0.085|
|Exp_of_TCC3|✅ proved - complete|shostak|0.100|
|Exp_of_correct_TCC1|✅ proved - complete|shostak|0.020|
|Exp_of_correct|✅ proved - complete|shostak|0.245|
|significand_TCC1|✅ proved - complete|shostak|0.020|
|significand_TCC2|✅ proved - complete|shostak|0.090|
|real_components_TCC1|✅ proved - complete|shostak|0.030|
|real_components|✅ proved - complete|shostak|0.210|
|abs_real_components|✅ proved - complete|shostak|0.175|
|Exp_of_unique_TCC1|✅ proved - complete|shostak|0.060|
|Exp_of_unique_TCC2|✅ proved - complete|shostak|0.070|
|Exp_of_unique|✅ proved - complete|shostak|0.128|
|posreal_exponent|✅ proved - complete|shostak|0.220|
|real_exponent|✅ proved - complete|shostak|0.114|
|scale_TCC1|✅ proved - complete|shostak|0.020|
|scale_TCC2|✅ proved - complete|shostak|0.090|
|scale_TCC3|✅ proved - complete|shostak|0.080|
|scale_correct_TCC1|✅ proved - complete|shostak|0.000|
|scale_correct_TCC2|✅ proved - complete|shostak|0.060|
|scale_correct_TCC3|✅ proved - complete|shostak|0.060|
|scale_correct|✅ proved - complete|shostak|0.208|
|round_scaled_TCC1|✅ proved - complete|shostak|0.060|
|round_scaled_TCC2|✅ proved - complete|shostak|0.060|
|truncate_TCC1|✅ proved - complete|shostak|0.020|
|truncate_shift|✅ proved - complete|shostak|0.162|
|Exp_of_shift|✅ proved - complete|shostak|0.270|
|scale_shift|✅ proved - complete|shostak|0.065|

## `round`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|round_to_even0|✅ proved - complete|shostak|0.090|
|round_to_even1|✅ proved - complete|shostak|0.190|
|round_to_even2|✅ proved - complete|shostak|0.261|
|round1|✅ proved - complete|shostak|0.233|
|round_int|✅ proved - complete|shostak|0.150|

## `IEEE_854_fp_int`
No formula declaration found.
## `arithmetic_ops`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|apply_TCC1|✅ proved - complete|shostak|0.424|

## `comparison1`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|n_value_TCC1|✅ proved - complete|shostak|0.020|
|n_value_TCC2|✅ proved - complete|shostak|0.010|
|fp_compare_TCC1|✅ proved - complete|shostak|0.020|
|fp_compare_TCC2|✅ proved - complete|shostak|0.020|
|posinf_ge|✅ proved - complete|shostak|0.267|
|NaN_unordered|✅ proved - complete|shostak|0.020|
|eq_def|✅ proved - complete|shostak|0.080|
|ne_def|✅ proved - complete|shostak|0.086|
|gt_def|✅ proved - complete|shostak|0.050|
|ge_def|✅ proved - complete|shostak|0.100|
|lt_def|✅ proved - complete|shostak|0.060|
|le_def|✅ proved - complete|shostak|0.105|
|un_def|✅ proved - complete|shostak|0.020|

## `infinity_arithmetic`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|fp_sub_inf_def_TCC1|✅ proved - complete|shostak|0.020|
|fp_sub_inf_def|✅ proved - complete|shostak|0.080|
|mult_sign_TCC1|✅ proved - complete|shostak|0.010|
|mult_sign_TCC2|✅ proved - complete|shostak|0.004|
|mult_sign_TCC3|✅ proved - complete|shostak|0.010|
|mult_sign_TCC4|✅ proved - complete|shostak|0.010|
|fp_div_inf_TCC1|✅ proved - complete|shostak|0.020|

## `NaN_ops`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|mk_quiet_correct|✅ proved - complete|shostak|0.040|
|fp_quiet_TCC1|✅ proved - complete|shostak|0.030|
|fp_signal_TCC1|✅ proved - complete|shostak|0.020|
|NaN_ops_correct_TCC1|✅ proved - complete|shostak|0.152|
|NaN_ops_correct|✅ proved - complete|shostak|0.220|

## `IEEE_link`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Significand_size_TCC1|✅ proved - complete|shostak|0.010|
|IMP_IEEE_854_TCC1|✅ proved - complete|shostak|0.010|
|IMP_IEEE_854_TCC2|✅ proved - complete|shostak|0.020|
|IMP_IEEE_854_TCC3|✅ proved - complete|shostak|0.010|
|IMP_IEEE_854_TCC4|✅ proved - complete|shostak|0.010|
|IMP_IEEE_854_TCC5|✅ proved - complete|shostak|0.000|
|ieee_TCC1|✅ proved - complete|shostak|0.030|
|b_TCC1|✅ proved - complete|shostak|0.040|
|IEEE_to_float_TCC1|✅ proved - incomplete|shostak|0.017|
|IEEE_to_float_TCC2|✅ proved - complete|shostak|0.876|
|IEEE_to_float_TCC3|✅ proved - incomplete|shostak|1.355|
|float_to_IEEE_TCC1|✅ proved - incomplete|shostak|0.020|
|float_to_IEEE_TCC2|✅ proved - incomplete|shostak|1.476|
|float_to_IEEE_TCC3|✅ proved - incomplete|shostak|0.060|
|float_to_IEEE_TCC4|✅ proved - incomplete|shostak|0.855|
|value_nonzero_bis_TCC1|✅ proved - incomplete|shostak|0.100|
|value_nonzero_bis|✅ proved - incomplete|shostak|0.185|
|Sterbenz_bis|✅ proved - incomplete|shostak|0.502|
|Roundings_eq_pos_TCC1|✅ proved - complete|shostak|0.020|
|Roundings_eq_pos|✅ proved - incomplete|shostak|7.073|
|Roundings_eq_neg|✅ proved - incomplete|shostak|4.280|
|fp_round_opp_aux_TCC1|✅ proved - complete|shostak|0.020|
|fp_round_opp_aux_TCC2|✅ proved - complete|shostak|0.020|
|fp_round_opp_aux|✅ proved - complete|shostak|0.337|
|fp_round_opp|✅ proved - complete|shostak|1.626|
|RND_EClosest2_TCC1|✅ proved - incomplete|shostak|0.520|
|RND_EClosest2|✅ proved - incomplete|shostak|10.077|
|Roundings_eq_1_TCC1|✅ proved - complete|shostak|0.010|
|Roundings_eq_1|✅ proved - incomplete|shostak|0.376|
|Roundings_eq_2|✅ proved - incomplete|shostak|0.283|
|Roundings_eq_3_TCC1|✅ proved - complete|shostak|0.010|
|Roundings_eq_3|✅ proved - incomplete|shostak|13.322|
|Roundings_eq_4|✅ proved - incomplete|shostak|1.922|
|RoundedModeNonDecreasing_bis|✅ proved - incomplete|shostak|0.919|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib//float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-pvsio-fix.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210219-extratregies.lisp`|
