# Summary for `float/ieee854`
Run started at 0:3:13 9/20/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **255**   | **255**    | **255**    | **0**  | **1:30.266 s**   |
|top__ieee854|0|0|0|0|0.000|
|IEEE_854|11|11|11|0|1.098|
|IEEE_854_defs|8|8|8|0|0.694|
|IEEE_854_values|82|82|82|0|11.368|
|sum_hack|10|10|10|0|0.930|
|sum_lemmas|4|4|4|0|0.549|
|enumerated_type_defs|0|0|0|0|0.000|
|IEEE_854_remainder|2|2|2|0|0.060|
|real_to_fp|27|27|27|0|5.001|
|over_under|18|18|18|0|4.175|
|fp_round_aux|28|28|28|0|3.075|
|round|5|5|5|0|1.032|
|IEEE_854_fp_int|0|0|0|0|0.000|
|arithmetic_ops|1|1|1|0|0.480|
|comparison1|13|13|13|0|0.984|
|infinity_arithmetic|7|7|7|0|0.163|
|NaN_ops|5|5|5|0|0.520|
|IEEE_link|34|34|34|0|1:0.137|
## Detailed Summary 
## `top__ieee854`
No formula declaration found.
## `IEEE_854`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Significand_size_TCC1|✅ proved - complete|shostak|0.040|
|Exponent_balance_TCC1|✅ proved - complete|shostak|0.010|
|Exponent_balance_TCC2|✅ proved - complete|shostak|0.080|
|Exponent_balance|✅ proved - complete|shostak|0.352|
|E_max_gt_E_min|✅ proved - complete|shostak|0.147|
|HUG_example|✅ proved - complete|shostak|0.040|
|ex754_2|✅ proved - complete|shostak|0.040|
|ex754_3|✅ proved - complete|shostak|0.170|
|E_min_neg|✅ proved - complete|shostak|0.099|
|E_max_pos|✅ proved - complete|shostak|0.110|
|IMP_IEEE_854_defs_TCC1|✅ proved - complete|shostak|0.010|

## `IEEE_854_defs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|fp_add_TCC1|✅ proved - complete|shostak|0.090|
|fp_add_TCC2|✅ proved - complete|shostak|0.010|
|fp_add_x_correct|✅ proved - complete|shostak|0.147|
|fsub_alt_def|✅ proved - complete|shostak|0.264|
|fp_div_TCC1|✅ proved - complete|shostak|0.010|
|fp_div_TCC2|✅ proved - complete|shostak|0.030|
|fp_sqrt_TCC1|✅ proved - complete|shostak|0.023|
|fp_sqrt_TCC2|✅ proved - complete|shostak|0.120|

## `IEEE_854_values`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|value_digit_TCC1|✅ proved - complete|shostak|0.030|
|value_TCC1|✅ proved - complete|shostak|0.010|
|shift_left_TCC1|✅ proved - complete|shostak|0.060|
|shift_left_TCC2|✅ proved - complete|shostak|0.050|
|normalize_TCC1|✅ proved - complete|shostak|0.020|
|normalize_TCC2|✅ proved - complete|shostak|0.020|
|normalize_TCC3|✅ proved - complete|shostak|0.030|
|normalize_TCC4|✅ proved - complete|shostak|0.020|
|normalize_idempotent|✅ proved - complete|shostak|0.258|
|subnormal?_TCC1|✅ proved - complete|shostak|0.162|
|normal?_TCC1|✅ proved - complete|shostak|0.020|
|max_significand_TCC1|✅ proved - complete|shostak|0.020|
|min_significand_TCC1|✅ proved - complete|shostak|0.030|
|min_significand_TCC2|✅ proved - complete|shostak|0.030|
|d_zero_TCC1|✅ proved - complete|shostak|0.020|
|Sum_value0|✅ proved - complete|shostak|0.230|
|zero_finite_d_zero|✅ proved - complete|shostak|0.020|
|max_fp_pos_TCC1|✅ proved - complete|shostak|0.010|
|min_fp_pos_TCC1|✅ proved - complete|shostak|0.010|
|pos_zero_TCC1|✅ proved - complete|shostak|0.010|
|neg_zero_TCC1|✅ proved - complete|shostak|0.010|
|max_pos_TCC1|✅ proved - complete|shostak|0.020|
|max_pos_TCC2|✅ proved - complete|shostak|0.250|
|min_pos_TCC1|✅ proved - complete|shostak|0.010|
|min_pos_TCC2|✅ proved - complete|shostak|0.197|
|max_neg_TCC1|✅ proved - complete|shostak|0.010|
|max_neg_TCC2|✅ proved - complete|shostak|0.263|
|min_neg_TCC1|✅ proved - complete|shostak|0.010|
|min_neg_TCC2|✅ proved - complete|shostak|0.240|
|max_fp_correct_TCC1|✅ proved - complete|shostak|0.010|
|max_fp_correct_TCC2|✅ proved - complete|shostak|0.010|
|max_fp_correct|✅ proved - complete|shostak|0.581|
|min_fp_correct_TCC1|✅ proved - complete|shostak|0.010|
|min_fp_correct|✅ proved - complete|shostak|0.350|
|value0|✅ proved - complete|shostak|0.150|
|value_of_zero|✅ proved - complete|shostak|0.012|
|normal_value|✅ proved - complete|shostak|0.957|
|value_positive|✅ proved - complete|shostak|0.190|
|value_negative|✅ proved - complete|shostak|0.222|
|finite_cover|✅ proved - complete|shostak|0.303|
|finite_disjoint1|✅ proved - complete|shostak|0.025|
|finite_disjoint2|✅ proved - complete|shostak|0.020|
|finite_disjoint3|✅ proved - complete|shostak|0.020|
|toggle_sign_TCC1|✅ proved - complete|shostak|0.030|
|toggle_sign_TCC2|✅ proved - complete|shostak|0.030|
|toggle_finite|✅ proved - complete|shostak|0.020|
|toggle_infinite|✅ proved - complete|shostak|0.020|
|toggle_NaN|✅ proved - complete|shostak|0.020|
|value_toggle_TCC1|✅ proved - complete|shostak|0.020|
|value_toggle|✅ proved - complete|shostak|0.194|
|toggle_d_normalize|✅ proved - complete|shostak|0.314|
|toggle_Exp_normalize|✅ proved - complete|shostak|0.311|
|toggle_zero?|✅ proved - complete|shostak|0.025|
|toggle_normal?|✅ proved - complete|shostak|0.020|
|toggle_subnormal?|✅ proved - complete|shostak|0.030|
|value_digit_le_TCC1|✅ proved - complete|shostak|0.020|
|value_digit_le|✅ proved - complete|shostak|0.090|
|Sum_d_lt_b|✅ proved - complete|shostak|0.303|
|Sum_d_lt1_TCC1|✅ proved - complete|shostak|0.010|
|Sum_d_lt1|✅ proved - complete|shostak|0.354|
|Sum_d_ge1|✅ proved - complete|shostak|0.204|
|value_sig_lt_b|✅ proved - complete|shostak|0.070|
|value_sig_lt1|✅ proved - complete|shostak|0.050|
|value_sig_ge1|✅ proved - complete|shostak|0.030|
|abs_value_fin|✅ proved - complete|shostak|0.204|
|min_significand_min|✅ proved - complete|shostak|0.417|
|sign_normal|✅ proved - complete|shostak|0.234|
|value_normal_TCC1|✅ proved - complete|shostak|0.030|
|value_normal|✅ proved - complete|shostak|0.257|
|value_subnormal_TCC1|✅ proved - complete|shostak|0.220|
|value_subnormal|✅ proved - complete|shostak|0.234|
|value_nonzero|✅ proved - complete|shostak|0.223|
|scale_value_TCC1|✅ proved - complete|shostak|0.020|
|scaled_Sum_int|✅ proved - complete|shostak|0.404|
|scale_value_p_TCC1|✅ proved - complete|shostak|0.020|
|scale_value_p_TCC2|✅ proved - complete|shostak|0.284|
|scaled_Sum_i_TCC1|✅ proved - complete|shostak|0.010|
|scaled_Sum_i|✅ proved - complete|shostak|0.094|
|scaled_Sum|✅ proved - complete|shostak|0.070|
|floor_Sum|✅ proved - complete|shostak|0.443|
|mod_Sum_TCC1|✅ proved - complete|shostak|0.060|
|mod_Sum|✅ proved - complete|shostak|1.049|

## `sum_hack`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Sum_TCC1|✅ proved - complete|shostak|0.030|
|Sum_TCC2|✅ proved - complete|shostak|0.010|
|Sum_nonneg|✅ proved - complete|shostak|0.093|
|Sum_zero|✅ proved - complete|shostak|0.140|
|Sum_pos|✅ proved - complete|shostak|0.127|
|Sum_le|✅ proved - complete|shostak|0.103|
|Sum_ge1|✅ proved - complete|shostak|0.100|
|Sum_ge|✅ proved - complete|shostak|0.107|
|Sum_split_TCC1|✅ proved - complete|shostak|0.010|
|Sum_split|✅ proved - complete|shostak|0.210|

## `sum_lemmas`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|mant_digit_fun_TCC1|✅ proved - complete|shostak|0.020|
|Sum_pos_less_1_TCC1|✅ proved - complete|shostak|0.076|
|Sum_pos_less_1|✅ proved - complete|shostak|0.320|
|floor_Sum_mant|✅ proved - complete|shostak|0.133|

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
|truncate_zero|✅ proved - complete|shostak|0.109|
|digits_of_finite|✅ proved - complete|shostak|0.370|
|real_to_fp_TCC1|✅ proved - complete|shostak|0.010|
|real_to_fp_TCC2|✅ proved - complete|shostak|0.100|
|real_to_fp_TCC3|✅ proved - complete|shostak|0.047|
|real_to_fp_TCC4|✅ proved - complete|shostak|0.050|
|real_to_fp_TCC5|✅ proved - complete|shostak|0.180|
|real_to_fp_zero|✅ proved - complete|shostak|0.110|
|sign_of_value|✅ proved - complete|shostak|0.037|
|Exp_of_value_normal_TCC1|✅ proved - complete|shostak|0.030|
|Exp_of_value_normal|✅ proved - complete|shostak|0.573|
|real_to_fp_normal|✅ proved - complete|shostak|0.220|
|real_to_fp_subnormal|✅ proved - complete|shostak|0.206|
|real_to_fp_inverts_value|✅ proved - complete|shostak|0.020|
|round_exceptions_x_TCC1|✅ proved - complete|shostak|0.010|
|fp_round_TCC1|✅ proved - complete|shostak|0.080|
|round_value|✅ proved - complete|shostak|0.000|
|round_value2|✅ proved - complete|shostak|0.104|
|round_0|✅ proved - complete|shostak|0.010|
|round_value3|✅ proved - complete|shostak|0.020|
|round_error_TCC1|✅ proved - complete|shostak|0.125|
|round_error_TCC2|✅ proved - complete|shostak|0.110|
|round_error|✅ proved - complete|shostak|0.687|
|round_near|✅ proved - complete|shostak|0.690|
|round_pos|✅ proved - complete|shostak|0.194|
|round_neg|✅ proved - complete|shostak|0.224|
|round_zero|✅ proved - complete|shostak|0.685|

## `over_under`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|over_under?_TCC1|✅ proved - complete|shostak|0.090|
|infinity_TCC1|✅ proved - complete|shostak|0.010|
|trap_over_TCC1|✅ proved - complete|shostak|0.020|
|overflow_TCC1|✅ proved - complete|shostak|0.273|
|exact_underflow_TCC1|✅ proved - complete|shostak|0.010|
|exact_underflow_TCC2|✅ proved - complete|shostak|0.040|
|round_under_TCC1|✅ proved - complete|shostak|0.120|
|round_under_TCC2|✅ proved - complete|shostak|0.130|
|round_under_correct_TCC1|✅ proved - complete|shostak|0.203|
|round_under_correct|✅ proved - complete|shostak|0.230|
|round_under_value_TCC1|✅ proved - complete|shostak|0.050|
|round_under_value|✅ proved - complete|shostak|0.679|
|round_under_error_TCC1|✅ proved - complete|shostak|0.100|
|round_under_error|✅ proved - complete|shostak|0.480|
|round_under_near|✅ proved - complete|shostak|0.556|
|round_under_pos|✅ proved - complete|shostak|0.280|
|round_under_neg|✅ proved - complete|shostak|0.264|
|round_under_zero|✅ proved - complete|shostak|0.640|

## `fp_round_aux`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Exp_of_TCC1|✅ proved - complete|shostak|0.010|
|Exp_of_TCC2|✅ proved - complete|shostak|0.090|
|Exp_of_TCC3|✅ proved - complete|shostak|0.120|
|Exp_of_correct_TCC1|✅ proved - complete|shostak|0.020|
|Exp_of_correct|✅ proved - complete|shostak|0.254|
|significand_TCC1|✅ proved - complete|shostak|0.020|
|significand_TCC2|✅ proved - complete|shostak|0.094|
|real_components_TCC1|✅ proved - complete|shostak|0.020|
|real_components|✅ proved - complete|shostak|0.240|
|abs_real_components|✅ proved - complete|shostak|0.194|
|Exp_of_unique_TCC1|✅ proved - complete|shostak|0.070|
|Exp_of_unique_TCC2|✅ proved - complete|shostak|0.090|
|Exp_of_unique|✅ proved - complete|shostak|0.154|
|posreal_exponent|✅ proved - complete|shostak|0.252|
|real_exponent|✅ proved - complete|shostak|0.140|
|scale_TCC1|✅ proved - complete|shostak|0.025|
|scale_TCC2|✅ proved - complete|shostak|0.100|
|scale_TCC3|✅ proved - complete|shostak|0.100|
|scale_correct_TCC1|✅ proved - complete|shostak|0.010|
|scale_correct_TCC2|✅ proved - complete|shostak|0.060|
|scale_correct_TCC3|✅ proved - complete|shostak|0.070|
|scale_correct|✅ proved - complete|shostak|0.234|
|round_scaled_TCC1|✅ proved - complete|shostak|0.060|
|round_scaled_TCC2|✅ proved - complete|shostak|0.070|
|truncate_TCC1|✅ proved - complete|shostak|0.020|
|truncate_shift|✅ proved - complete|shostak|0.184|
|Exp_of_shift|✅ proved - complete|shostak|0.314|
|scale_shift|✅ proved - complete|shostak|0.060|

## `round`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|round_to_even0|✅ proved - complete|shostak|0.110|
|round_to_even1|✅ proved - complete|shostak|0.185|
|round_to_even2|✅ proved - complete|shostak|0.302|
|round1|✅ proved - complete|shostak|0.260|
|round_int|✅ proved - complete|shostak|0.175|

## `IEEE_854_fp_int`
No formula declaration found.
## `arithmetic_ops`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|apply_TCC1|✅ proved - complete|shostak|0.480|

## `comparison1`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|n_value_TCC1|✅ proved - complete|shostak|0.020|
|n_value_TCC2|✅ proved - complete|shostak|0.010|
|fp_compare_TCC1|✅ proved - complete|shostak|0.024|
|fp_compare_TCC2|✅ proved - complete|shostak|0.030|
|posinf_ge|✅ proved - complete|shostak|0.307|
|NaN_unordered|✅ proved - complete|shostak|0.020|
|eq_def|✅ proved - complete|shostak|0.090|
|ne_def|✅ proved - complete|shostak|0.100|
|gt_def|✅ proved - complete|shostak|0.060|
|ge_def|✅ proved - complete|shostak|0.120|
|lt_def|✅ proved - complete|shostak|0.063|
|le_def|✅ proved - complete|shostak|0.110|
|un_def|✅ proved - complete|shostak|0.030|

## `infinity_arithmetic`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|fp_sub_inf_def_TCC1|✅ proved - complete|shostak|0.020|
|fp_sub_inf_def|✅ proved - complete|shostak|0.080|
|mult_sign_TCC1|✅ proved - complete|shostak|0.020|
|mult_sign_TCC2|✅ proved - complete|shostak|0.010|
|mult_sign_TCC3|✅ proved - complete|shostak|0.010|
|mult_sign_TCC4|✅ proved - complete|shostak|0.013|
|fp_div_inf_TCC1|✅ proved - complete|shostak|0.010|

## `NaN_ops`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|mk_quiet_correct|✅ proved - complete|shostak|0.050|
|fp_quiet_TCC1|✅ proved - complete|shostak|0.030|
|fp_signal_TCC1|✅ proved - complete|shostak|0.030|
|NaN_ops_correct_TCC1|✅ proved - complete|shostak|0.170|
|NaN_ops_correct|✅ proved - complete|shostak|0.240|

## `IEEE_link`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Significand_size_TCC1|✅ proved - complete|shostak|0.020|
|IMP_IEEE_854_TCC1|✅ proved - complete|shostak|0.020|
|IMP_IEEE_854_TCC2|✅ proved - complete|shostak|0.030|
|IMP_IEEE_854_TCC3|✅ proved - complete|shostak|0.010|
|IMP_IEEE_854_TCC4|✅ proved - complete|shostak|0.010|
|IMP_IEEE_854_TCC5|✅ proved - complete|shostak|0.000|
|ieee_TCC1|✅ proved - complete|shostak|0.040|
|b_TCC1|✅ proved - complete|shostak|0.050|
|IEEE_to_float_TCC1|✅ proved - incomplete|shostak|0.020|
|IEEE_to_float_TCC2|✅ proved - complete|shostak|1.003|
|IEEE_to_float_TCC3|✅ proved - incomplete|shostak|1.516|
|float_to_IEEE_TCC1|✅ proved - incomplete|shostak|0.010|
|float_to_IEEE_TCC2|✅ proved - incomplete|shostak|1.582|
|float_to_IEEE_TCC3|✅ proved - incomplete|shostak|0.070|
|float_to_IEEE_TCC4|✅ proved - incomplete|shostak|2.795|
|value_nonzero_bis_TCC1|✅ proved - incomplete|shostak|0.110|
|value_nonzero_bis|✅ proved - incomplete|shostak|0.225|
|Sterbenz_bis|✅ proved - incomplete|shostak|0.570|
|Roundings_eq_pos_TCC1|✅ proved - complete|shostak|0.030|
|Roundings_eq_pos|✅ proved - incomplete|shostak|8.088|
|Roundings_eq_neg|✅ proved - incomplete|shostak|4.834|
|fp_round_opp_aux_TCC1|✅ proved - complete|shostak|0.020|
|fp_round_opp_aux_TCC2|✅ proved - complete|shostak|0.030|
|fp_round_opp_aux|✅ proved - complete|shostak|0.391|
|fp_round_opp|✅ proved - complete|shostak|1.816|
|RND_EClosest2_TCC1|✅ proved - incomplete|shostak|0.589|
|RND_EClosest2|✅ proved - incomplete|shostak|11.209|
|Roundings_eq_1_TCC1|✅ proved - complete|shostak|0.021|
|Roundings_eq_1|✅ proved - incomplete|shostak|0.445|
|Roundings_eq_2|✅ proved - incomplete|shostak|0.000|
|Roundings_eq_3_TCC1|✅ proved - complete|shostak|0.020|
|Roundings_eq_3|✅ proved - incomplete|shostak|21.415|
|Roundings_eq_4|✅ proved - incomplete|shostak|2.142|
|RoundedModeNonDecreasing_bis|✅ proved - incomplete|shostak|1.006|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib/pvsio_utils/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230712-static-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230710-tcc-gen.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230707-defattach.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230706-extrategies.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`|
