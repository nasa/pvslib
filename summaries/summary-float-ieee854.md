# Summary for `float/ieee854`
Run started at 19:41:39 11/24/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **255**   | **255**    | **255**    | **0**  | **49.136 s**   |
|top__ieee854|0|0|0|0|0.000|
|IEEE_854|11|11|11|0|0.711|
|IEEE_854_defs|8|8|8|0|0.504|
|IEEE_854_values|82|82|82|0|7.220|
|sum_hack|10|10|10|0|0.592|
|sum_lemmas|4|4|4|0|0.335|
|enumerated_type_defs|0|0|0|0|0.000|
|IEEE_854_remainder|2|2|2|0|0.040|
|real_to_fp|27|27|27|0|3.657|
|over_under|18|18|18|0|2.579|
|fp_round_aux|28|28|28|0|1.955|
|round|5|5|5|0|0.645|
|IEEE_854_fp_int|0|0|0|0|0.000|
|arithmetic_ops|1|1|1|0|0.298|
|comparison1|13|13|13|0|0.426|
|infinity_arithmetic|7|7|7|0|0.109|
|NaN_ops|5|5|5|0|0.309|
|IEEE_link|34|34|34|0|29.756|
## Detailed Summary 
## `top__ieee854`
No formula declaration found.
## `IEEE_854`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Significand_size_TCC1|✅ proved - complete|shostak|0.030|
|Exponent_balance_TCC1|✅ proved - complete|shostak|0.007|
|Exponent_balance_TCC2|✅ proved - complete|shostak|0.050|
|Exponent_balance|✅ proved - complete|shostak|0.213|
|E_max_gt_E_min|✅ proved - complete|shostak|0.100|
|HUG_example|✅ proved - complete|shostak|0.030|
|ex754_2|✅ proved - complete|shostak|0.026|
|ex754_3|✅ proved - complete|shostak|0.120|
|E_min_neg|✅ proved - complete|shostak|0.070|
|E_max_pos|✅ proved - complete|shostak|0.065|
|IMP_IEEE_854_defs_TCC1|✅ proved - complete|shostak|0.000|

## `IEEE_854_defs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|fp_add_TCC1|✅ proved - complete|shostak|0.060|
|fp_add_TCC2|✅ proved - complete|shostak|0.010|
|fp_add_x_correct|✅ proved - complete|shostak|0.086|
|fsub_alt_def|✅ proved - complete|shostak|0.188|
|fp_div_TCC1|✅ proved - complete|shostak|0.020|
|fp_div_TCC2|✅ proved - complete|shostak|0.020|
|fp_sqrt_TCC1|✅ proved - complete|shostak|0.020|
|fp_sqrt_TCC2|✅ proved - complete|shostak|0.100|

## `IEEE_854_values`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|value_digit_TCC1|✅ proved - complete|shostak|0.020|
|value_TCC1|✅ proved - complete|shostak|0.009|
|shift_left_TCC1|✅ proved - complete|shostak|0.040|
|shift_left_TCC2|✅ proved - complete|shostak|0.030|
|normalize_TCC1|✅ proved - complete|shostak|0.010|
|normalize_TCC2|✅ proved - complete|shostak|0.010|
|normalize_TCC3|✅ proved - complete|shostak|0.020|
|normalize_TCC4|✅ proved - complete|shostak|0.010|
|normalize_idempotent|✅ proved - complete|shostak|0.166|
|subnormal?_TCC1|✅ proved - complete|shostak|0.104|
|normal?_TCC1|✅ proved - complete|shostak|0.010|
|max_significand_TCC1|✅ proved - complete|shostak|0.020|
|min_significand_TCC1|✅ proved - complete|shostak|0.020|
|min_significand_TCC2|✅ proved - complete|shostak|0.010|
|d_zero_TCC1|✅ proved - complete|shostak|0.010|
|Sum_value0|✅ proved - complete|shostak|0.150|
|zero_finite_d_zero|✅ proved - complete|shostak|0.015|
|max_fp_pos_TCC1|✅ proved - complete|shostak|0.010|
|min_fp_pos_TCC1|✅ proved - complete|shostak|0.000|
|pos_zero_TCC1|✅ proved - complete|shostak|0.010|
|neg_zero_TCC1|✅ proved - complete|shostak|0.010|
|max_pos_TCC1|✅ proved - complete|shostak|0.010|
|max_pos_TCC2|✅ proved - complete|shostak|0.150|
|min_pos_TCC1|✅ proved - complete|shostak|0.000|
|min_pos_TCC2|✅ proved - complete|shostak|0.125|
|max_neg_TCC1|✅ proved - complete|shostak|0.010|
|max_neg_TCC2|✅ proved - complete|shostak|0.157|
|min_neg_TCC1|✅ proved - complete|shostak|0.010|
|min_neg_TCC2|✅ proved - complete|shostak|0.149|
|max_fp_correct_TCC1|✅ proved - complete|shostak|0.000|
|max_fp_correct_TCC2|✅ proved - complete|shostak|0.010|
|max_fp_correct|✅ proved - complete|shostak|0.362|
|min_fp_correct_TCC1|✅ proved - complete|shostak|0.010|
|min_fp_correct|✅ proved - complete|shostak|0.215|
|value0|✅ proved - complete|shostak|0.086|
|value_of_zero|✅ proved - complete|shostak|0.010|
|normal_value|✅ proved - complete|shostak|0.587|
|value_positive|✅ proved - complete|shostak|0.124|
|value_negative|✅ proved - complete|shostak|0.130|
|finite_cover|✅ proved - complete|shostak|0.195|
|finite_disjoint1|✅ proved - complete|shostak|0.015|
|finite_disjoint2|✅ proved - complete|shostak|0.010|
|finite_disjoint3|✅ proved - complete|shostak|0.010|
|toggle_sign_TCC1|✅ proved - complete|shostak|0.020|
|toggle_sign_TCC2|✅ proved - complete|shostak|0.020|
|toggle_finite|✅ proved - complete|shostak|0.020|
|toggle_infinite|✅ proved - complete|shostak|0.010|
|toggle_NaN|✅ proved - complete|shostak|0.010|
|value_toggle_TCC1|✅ proved - complete|shostak|0.010|
|value_toggle|✅ proved - complete|shostak|0.127|
|toggle_d_normalize|✅ proved - complete|shostak|0.204|
|toggle_Exp_normalize|✅ proved - complete|shostak|0.214|
|toggle_zero?|✅ proved - complete|shostak|0.010|
|toggle_normal?|✅ proved - complete|shostak|0.010|
|toggle_subnormal?|✅ proved - complete|shostak|0.020|
|value_digit_le_TCC1|✅ proved - complete|shostak|0.017|
|value_digit_le|✅ proved - complete|shostak|0.050|
|Sum_d_lt_b|✅ proved - complete|shostak|0.208|
|Sum_d_lt1_TCC1|✅ proved - complete|shostak|0.010|
|Sum_d_lt1|✅ proved - complete|shostak|0.215|
|Sum_d_ge1|✅ proved - complete|shostak|0.128|
|value_sig_lt_b|✅ proved - complete|shostak|0.040|
|value_sig_lt1|✅ proved - complete|shostak|0.030|
|value_sig_ge1|✅ proved - complete|shostak|0.019|
|abs_value_fin|✅ proved - complete|shostak|0.140|
|min_significand_min|✅ proved - complete|shostak|0.263|
|sign_normal|✅ proved - complete|shostak|0.147|
|value_normal_TCC1|✅ proved - complete|shostak|0.020|
|value_normal|✅ proved - complete|shostak|0.166|
|value_subnormal_TCC1|✅ proved - complete|shostak|0.140|
|value_subnormal|✅ proved - complete|shostak|0.149|
|value_nonzero|✅ proved - complete|shostak|0.148|
|scale_value_TCC1|✅ proved - complete|shostak|0.010|
|scaled_Sum_int|✅ proved - complete|shostak|0.266|
|scale_value_p_TCC1|✅ proved - complete|shostak|0.020|
|scale_value_p_TCC2|✅ proved - complete|shostak|0.188|
|scaled_Sum_i_TCC1|✅ proved - complete|shostak|0.000|
|scaled_Sum_i|✅ proved - complete|shostak|0.069|
|scaled_Sum|✅ proved - complete|shostak|0.040|
|floor_Sum|✅ proved - complete|shostak|0.285|
|mod_Sum_TCC1|✅ proved - complete|shostak|0.040|
|mod_Sum|✅ proved - complete|shostak|0.678|

## `sum_hack`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Sum_TCC1|✅ proved - complete|shostak|0.010|
|Sum_TCC2|✅ proved - complete|shostak|0.010|
|Sum_nonneg|✅ proved - complete|shostak|0.060|
|Sum_zero|✅ proved - complete|shostak|0.092|
|Sum_pos|✅ proved - complete|shostak|0.094|
|Sum_le|✅ proved - complete|shostak|0.064|
|Sum_ge1|✅ proved - complete|shostak|0.070|
|Sum_ge|✅ proved - complete|shostak|0.065|
|Sum_split_TCC1|✅ proved - complete|shostak|0.010|
|Sum_split|✅ proved - complete|shostak|0.117|

## `sum_lemmas`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|mant_digit_fun_TCC1|✅ proved - complete|shostak|0.020|
|Sum_pos_less_1_TCC1|✅ proved - complete|shostak|0.040|
|Sum_pos_less_1|✅ proved - complete|shostak|0.195|
|floor_Sum_mant|✅ proved - complete|shostak|0.080|

## `enumerated_type_defs`
No formula declaration found.
## `IEEE_854_remainder`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|REM_TCC1|✅ proved - complete|shostak|0.010|
|REM_TCC2|✅ proved - complete|shostak|0.030|

## `real_to_fp`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|truncate_zero|✅ proved - complete|shostak|0.068|
|digits_of_finite|✅ proved - complete|shostak|0.223|
|real_to_fp_TCC1|✅ proved - complete|shostak|0.000|
|real_to_fp_TCC2|✅ proved - complete|shostak|0.060|
|real_to_fp_TCC3|✅ proved - complete|shostak|0.030|
|real_to_fp_TCC4|✅ proved - complete|shostak|0.040|
|real_to_fp_TCC5|✅ proved - complete|shostak|0.108|
|real_to_fp_zero|✅ proved - complete|shostak|0.070|
|sign_of_value|✅ proved - complete|shostak|0.020|
|Exp_of_value_normal_TCC1|✅ proved - complete|shostak|0.020|
|Exp_of_value_normal|✅ proved - complete|shostak|0.347|
|real_to_fp_normal|✅ proved - complete|shostak|0.140|
|real_to_fp_subnormal|✅ proved - complete|shostak|0.125|
|real_to_fp_inverts_value|✅ proved - complete|shostak|0.020|
|round_exceptions_x_TCC1|✅ proved - complete|shostak|0.010|
|fp_round_TCC1|✅ proved - complete|shostak|0.060|
|round_value|✅ proved - complete|shostak|0.461|
|round_value2|✅ proved - complete|shostak|0.068|
|round_0|✅ proved - complete|shostak|0.010|
|round_value3|✅ proved - complete|shostak|0.008|
|round_error_TCC1|✅ proved - complete|shostak|0.080|
|round_error_TCC2|✅ proved - complete|shostak|0.080|
|round_error|✅ proved - complete|shostak|0.434|
|round_near|✅ proved - complete|shostak|0.462|
|round_pos|✅ proved - complete|shostak|0.130|
|round_neg|✅ proved - complete|shostak|0.160|
|round_zero|✅ proved - complete|shostak|0.423|

## `over_under`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|over_under?_TCC1|✅ proved - complete|shostak|0.060|
|infinity_TCC1|✅ proved - complete|shostak|0.007|
|trap_over_TCC1|✅ proved - complete|shostak|0.000|
|overflow_TCC1|✅ proved - complete|shostak|0.170|
|exact_underflow_TCC1|✅ proved - complete|shostak|0.000|
|exact_underflow_TCC2|✅ proved - complete|shostak|0.030|
|round_under_TCC1|✅ proved - complete|shostak|0.070|
|round_under_TCC2|✅ proved - complete|shostak|0.076|
|round_under_correct_TCC1|✅ proved - complete|shostak|0.120|
|round_under_correct|✅ proved - complete|shostak|0.140|
|round_under_value_TCC1|✅ proved - complete|shostak|0.034|
|round_under_value|✅ proved - complete|shostak|0.429|
|round_under_error_TCC1|✅ proved - complete|shostak|0.060|
|round_under_error|✅ proved - complete|shostak|0.298|
|round_under_near|✅ proved - complete|shostak|0.345|
|round_under_pos|✅ proved - complete|shostak|0.178|
|round_under_neg|✅ proved - complete|shostak|0.159|
|round_under_zero|✅ proved - complete|shostak|0.403|

## `fp_round_aux`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Exp_of_TCC1|✅ proved - complete|shostak|0.010|
|Exp_of_TCC2|✅ proved - complete|shostak|0.050|
|Exp_of_TCC3|✅ proved - complete|shostak|0.070|
|Exp_of_correct_TCC1|✅ proved - complete|shostak|0.020|
|Exp_of_correct|✅ proved - complete|shostak|0.168|
|significand_TCC1|✅ proved - complete|shostak|0.010|
|significand_TCC2|✅ proved - complete|shostak|0.064|
|real_components_TCC1|✅ proved - complete|shostak|0.010|
|real_components|✅ proved - complete|shostak|0.163|
|abs_real_components|✅ proved - complete|shostak|0.120|
|Exp_of_unique_TCC1|✅ proved - complete|shostak|0.040|
|Exp_of_unique_TCC2|✅ proved - complete|shostak|0.050|
|Exp_of_unique|✅ proved - complete|shostak|0.095|
|posreal_exponent|✅ proved - complete|shostak|0.157|
|real_exponent|✅ proved - complete|shostak|0.097|
|scale_TCC1|✅ proved - complete|shostak|0.020|
|scale_TCC2|✅ proved - complete|shostak|0.050|
|scale_TCC3|✅ proved - complete|shostak|0.060|
|scale_correct_TCC1|✅ proved - complete|shostak|0.010|
|scale_correct_TCC2|✅ proved - complete|shostak|0.030|
|scale_correct_TCC3|✅ proved - complete|shostak|0.050|
|scale_correct|✅ proved - complete|shostak|0.148|
|round_scaled_TCC1|✅ proved - complete|shostak|0.040|
|round_scaled_TCC2|✅ proved - complete|shostak|0.040|
|truncate_TCC1|✅ proved - complete|shostak|0.020|
|truncate_shift|✅ proved - complete|shostak|0.127|
|Exp_of_shift|✅ proved - complete|shostak|0.198|
|scale_shift|✅ proved - complete|shostak|0.038|

## `round`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|round_to_even0|✅ proved - complete|shostak|0.070|
|round_to_even1|✅ proved - complete|shostak|0.130|
|round_to_even2|✅ proved - complete|shostak|0.178|
|round1|✅ proved - complete|shostak|0.157|
|round_int|✅ proved - complete|shostak|0.110|

## `IEEE_854_fp_int`
No formula declaration found.
## `arithmetic_ops`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|apply_TCC1|✅ proved - complete|shostak|0.298|

## `comparison1`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|n_value_TCC1|✅ proved - complete|shostak|0.010|
|n_value_TCC2|✅ proved - complete|shostak|0.010|
|fp_compare_TCC1|✅ proved - complete|shostak|0.010|
|fp_compare_TCC2|✅ proved - complete|shostak|0.010|
|posinf_ge|✅ proved - complete|shostak|0.000|
|NaN_unordered|✅ proved - complete|shostak|0.018|
|eq_def|✅ proved - complete|shostak|0.060|
|ne_def|✅ proved - complete|shostak|0.060|
|gt_def|✅ proved - complete|shostak|0.040|
|ge_def|✅ proved - complete|shostak|0.068|
|lt_def|✅ proved - complete|shostak|0.050|
|le_def|✅ proved - complete|shostak|0.070|
|un_def|✅ proved - complete|shostak|0.020|

## `infinity_arithmetic`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|fp_sub_inf_def_TCC1|✅ proved - complete|shostak|0.019|
|fp_sub_inf_def|✅ proved - complete|shostak|0.050|
|mult_sign_TCC1|✅ proved - complete|shostak|0.010|
|mult_sign_TCC2|✅ proved - complete|shostak|0.000|
|mult_sign_TCC3|✅ proved - complete|shostak|0.010|
|mult_sign_TCC4|✅ proved - complete|shostak|0.010|
|fp_div_inf_TCC1|✅ proved - complete|shostak|0.010|

## `NaN_ops`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|mk_quiet_correct|✅ proved - complete|shostak|0.028|
|fp_quiet_TCC1|✅ proved - complete|shostak|0.020|
|fp_signal_TCC1|✅ proved - complete|shostak|0.010|
|NaN_ops_correct_TCC1|✅ proved - complete|shostak|0.110|
|NaN_ops_correct|✅ proved - complete|shostak|0.141|

## `IEEE_link`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Significand_size_TCC1|✅ proved - complete|shostak|0.010|
|IMP_IEEE_854_TCC1|✅ proved - complete|shostak|0.010|
|IMP_IEEE_854_TCC2|✅ proved - complete|shostak|0.020|
|IMP_IEEE_854_TCC3|✅ proved - complete|shostak|0.010|
|IMP_IEEE_854_TCC4|✅ proved - complete|shostak|0.000|
|IMP_IEEE_854_TCC5|✅ proved - complete|shostak|0.010|
|ieee_TCC1|✅ proved - complete|shostak|0.020|
|b_TCC1|✅ proved - complete|shostak|0.030|
|IEEE_to_float_TCC1|✅ proved - incomplete|shostak|0.010|
|IEEE_to_float_TCC2|✅ proved - complete|shostak|0.633|
|IEEE_to_float_TCC3|✅ proved - incomplete|shostak|0.951|
|float_to_IEEE_TCC1|✅ proved - incomplete|shostak|0.010|
|float_to_IEEE_TCC2|✅ proved - incomplete|shostak|1.045|
|float_to_IEEE_TCC3|✅ proved - incomplete|shostak|0.050|
|float_to_IEEE_TCC4|✅ proved - incomplete|shostak|1.751|
|value_nonzero_bis_TCC1|✅ proved - incomplete|shostak|0.069|
|value_nonzero_bis|✅ proved - incomplete|shostak|0.130|
|Sterbenz_bis|✅ proved - incomplete|shostak|0.361|
|Roundings_eq_pos_TCC1|✅ proved - complete|shostak|0.015|
|Roundings_eq_pos|✅ proved - incomplete|shostak|5.065|
|Roundings_eq_neg|✅ proved - incomplete|shostak|0.000|
|fp_round_opp_aux_TCC1|✅ proved - complete|shostak|0.010|
|fp_round_opp_aux_TCC2|✅ proved - complete|shostak|0.015|
|fp_round_opp_aux|✅ proved - complete|shostak|0.260|
|fp_round_opp|✅ proved - complete|shostak|1.169|
|RND_EClosest2_TCC1|✅ proved - incomplete|shostak|0.355|
|RND_EClosest2|✅ proved - incomplete|shostak|4.416|
|Roundings_eq_1_TCC1|✅ proved - complete|shostak|0.057|
|Roundings_eq_1|✅ proved - incomplete|shostak|0.294|
|Roundings_eq_2|✅ proved - incomplete|shostak|0.207|
|Roundings_eq_3_TCC1|✅ proved - complete|shostak|0.010|
|Roundings_eq_3|✅ proved - incomplete|shostak|10.750|
|Roundings_eq_4|✅ proved - incomplete|shostak|1.355|
|RoundedModeNonDecreasing_bis|✅ proved - incomplete|shostak|0.658|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Mac OS X (Intel)] (Nov 14, 2020 23:13)|
| Patch Version| n/a|
| Library Path| `/Applications/pvs-7.1.0/pvslib/`<br/>`/Applications/pvs-7.1.0/lib/`<br/>`/Applications/pvs-7.1.0/pvslib/float/`<br/>`/Applications/pvs-7.1.0/pvslib/pvsio_utils/`|
| Loaded Patches | `/Applications/pvs-7.1.0/pvslib/.pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230712-static-update.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230710-tcc-gen.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230707-defattach.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230706-extrategies.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210323-wish.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210225-cl2pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210715a.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210715.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210707.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210706.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210511.lisp`|
