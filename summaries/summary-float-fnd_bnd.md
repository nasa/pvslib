# Summary for `float/fnd_bnd`
Run started at 19:27:0 11/24/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **189**   | **189**    | **189**    | **0**  | **54.066 s**   |
|top__high_level|0|0|0|0|0.000|
|extended_float_top|0|0|0|0|0.000|
|extended_float|27|27|27|0|8.276|
|extended_float_rounding__nearest_even|27|27|27|0|6.460|
|extended_float_exactly_representable_reals|18|18|18|0|7.740|
|extended_float_qlt|0|0|0|0|0.000|
|extended_float_operations_support|0|0|0|0|0.000|
|ieee754_predicate_scheme__binary|0|0|0|0|0.000|
|extended_float_qle|0|0|0|0|0.000|
|extended_float_qgt|0|0|0|0|0.000|
|extended_float_qge|0|0|0|0|0.000|
|extended_float_qeq|0|0|0|0|0.000|
|extended_float_qun|0|0|0|0|0.000|
|extended_float_add|4|4|4|0|0.485|
|ieee754_operation_scheme__binary|1|1|1|0|0.090|
|extended_float_sub|3|3|3|0|0.400|
|extended_float_mul|3|3|3|0|0.392|
|extended_float_div|3|3|3|0|0.400|
|extended_float_max|3|3|3|0|0.393|
|extended_float_min|3|3|3|0|0.410|
|extended_float_neg|2|2|2|0|0.202|
|ieee754_operation_scheme__unary|1|1|1|0|0.090|
|extended_float_abs|1|1|1|0|0.110|
|extended_float_sqt|1|1|1|0|0.110|
|extended_float_props|9|9|9|0|14.190|
|extended_float_rounding|9|9|9|0|1.103|
|extended_float_rounding__nearest_even_is_a_rounding_mode|17|17|17|0|1.867|
|extended_float_sin|1|1|1|0|0.120|
|extended_float_cos|1|1|1|0|0.100|
|single|21|21|21|0|2.163|
|double|21|21|21|0|2.170|
|extended_float_accum_err_ulp_add|4|4|4|0|1.176|
|unb_link|5|5|5|0|1.022|
|domain_equivalence|4|4|4|0|4.597|
## Detailed Summary 
## `top__high_level`
No formula declaration found.
## `extended_float_top`
No formula declaration found.
## `extended_float`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|min_exp_TCC1|✅ proved - complete|shostak|0.162|
|max_exp_TCC1|✅ proved - complete|shostak|0.150|
|min_pos_value_TCC1|✅ proved - complete|shostak|0.090|
|max_pos_value_TCC1|✅ proved - complete|shostak|0.090|
|max_pos_value_TCC2|✅ proved - complete|shostak|0.090|
|max_pos_value_TCC3|✅ proved - complete|shostak|0.239|
|emax_TCC1|✅ proved - complete|shostak|0.190|
|min_pos_value__min_pos_unb_canonic_float__eq|✅ proved - incomplete|shostak|0.090|
|is_pos_inf?_TCC1|✅ proved - complete|shostak|0.090|
|is_pos_zero?_TCC1|✅ proved - complete|shostak|0.090|
|inf_exclusive|✅ proved - complete|shostak|0.089|
|zero_inclusive|✅ proved - complete|shostak|0.120|
|zero_exclusive|✅ proved - complete|shostak|0.090|
|prj_ef_TCC1|✅ proved - complete|shostak|0.090|
|projection_on_nzfinite_TCC1|✅ proved - complete|shostak|0.090|
|projection_on_nzfinite|✅ proved - incomplete|shostak|0.206|
|xef_real_TCC1|✅ proved - incomplete|shostak|0.690|
|xef_real_0_j|✅ proved - incomplete|shostak|0.704|
|xef_real_1_j|✅ proved - incomplete|shostak|0.745|
|min_pos_value_xef_real|✅ proved - incomplete|shostak|0.682|
|max_pos_value_xef_real|✅ proved - incomplete|shostak|0.475|
|xef_real_upper_bound|✅ proved - incomplete|shostak|0.484|
|xef_real_lower_bound|✅ proved - incomplete|shostak|1.186|
|xef_real_not_zero_prj_rnd_ucf|✅ proved - incomplete|shostak|0.624|
|as_float_existence|✅ proved - incomplete|shostak|0.480|
|as_float_TCC1|✅ proved - incomplete|shostak|0.090|
|flip_sign_j|✅ proved - incomplete|shostak|0.150|

## `extended_float_rounding__nearest_even`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|dtor_rtod_on_er|✅ proved - incomplete|shostak|0.000|
|bound_on_exp_of_rounded_erreal|✅ proved - incomplete|shostak|0.186|
|rtod_on_ranged_pos_is_in_range|✅ proved - incomplete|shostak|0.882|
|rtod_on_ranged_neg_is_in_range|✅ proved - incomplete|shostak|0.090|
|rtod_on_near_but_not_zero_is_in_range|✅ proved - incomplete|shostak|0.291|
|rnd_ef_well_defined|✅ proved - incomplete|shostak|0.300|
|rnd_ef_TCC1|✅ proved - incomplete|shostak|0.090|
|round_zero|✅ proved - incomplete|shostak|0.104|
|round_inverse_of_projection_on_nzfinite_TCC1|✅ proved - complete|shostak|0.090|
|round_inverse_of_projection_on_nzfinite|✅ proved - incomplete|shostak|0.832|
|proj_round_proj_on_finite|✅ proved - incomplete|shostak|0.488|
|rtoed_er_is_finite|✅ proved - incomplete|shostak|0.160|
|round_er_eq_unb_TCC1|✅ proved - incomplete|shostak|0.191|
|round_er_eq_unb|✅ proved - incomplete|shostak|0.180|
|proj_round_er_eq_unb_TCC1|✅ proved - incomplete|shostak|0.090|
|proj_round_er_eq_unb|✅ proved - incomplete|shostak|0.115|
|proj_round_on_er|✅ proved - incomplete|shostak|0.180|
|round_is_injective_on_er|✅ proved - incomplete|shostak|0.336|
|ieee754_semantics_round_proj_interpretation_obligation_1_TCC1|✅ proved - complete|shostak|0.100|
|ieee754_semantics_round_proj_interpretation_obligation_1|✅ proved - incomplete|shostak|0.140|
|ieee754_semantics_nzfinite?_def_interpretation_obligation_1|✅ proved - incomplete|shostak|0.292|
|ieee754_semantics_pfinite?_def_interpretation_obligation_1|✅ proved - incomplete|shostak|0.355|
|ieee754_semantics_nfinite?_def_interpretation_obligation_1|✅ proved - incomplete|shostak|0.356|
|ieee754_semantics_add_inv_def_interpretation_obligation_1_TCC1|✅ proved - incomplete|shostak|0.196|
|ieee754_semantics_add_inv_def_interpretation_obligation_1|✅ proved - incomplete|shostak|0.150|
|proj_round_is_monotone_on_er_TCC1|✅ proved - incomplete|shostak|0.090|
|proj_round_is_monotone_on_er|✅ proved - incomplete|shostak|0.176|

## `extended_float_exactly_representable_reals`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|er_rat_to_er_int__exponent__le_max_exp|✅ proved - incomplete|shostak|0.265|
|er_rat_to_er_int__exponent__ge_min_exp|✅ proved - incomplete|shostak|0.266|
|sigma_on_nat_TCC1|✅ proved - incomplete|shostak|0.120|
|er_rat_to_er_int__significand_TCC1|✅ proved - incomplete|shostak|0.250|
|er_rat_to_er_int__significand_TCC2|✅ proved - incomplete|shostak|0.366|
|er_rat_to_er_int__significand__abs_lt_radix_pow_prec_TCC1|✅ proved - incomplete|shostak|0.233|
|er_rat_to_er_int__significand__abs_lt_radix_pow_prec|✅ proved - incomplete|shostak|1.395|
|er_rat_to_er_int_value_TCC1|✅ proved - incomplete|shostak|0.360|
|er_rat_to_er_int_value|✅ proved - incomplete|shostak|0.915|
|er_ub_correspondent|✅ proved - incomplete|shostak|1.360|
|er_lb_correspondent|✅ proved - incomplete|shostak|0.232|
|er_min_pos_correspondent|✅ proved - incomplete|shostak|0.819|
|er_max_neg_correspondent|✅ proved - incomplete|shostak|0.239|
|min_pos_value_is_er|✅ proved - incomplete|shostak|0.080|
|er_rat_er_int|✅ proved - incomplete|shostak|0.463|
|er_rat_er_int_j|✅ proved - incomplete|shostak|0.090|
|er_bounded|✅ proved - incomplete|shostak|0.100|
|er_canonic|✅ proved - incomplete|shostak|0.187|

## `extended_float_qlt`
No formula declaration found.
## `extended_float_operations_support`
No formula declaration found.
## `ieee754_predicate_scheme__binary`
No formula declaration found.
## `extended_float_qle`
No formula declaration found.
## `extended_float_qgt`
No formula declaration found.
## `extended_float_qge`
No formula declaration found.
## `extended_float_qeq`
No formula declaration found.
## `extended_float_qun`
No formula declaration found.
## `extended_float_add`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|add_zero_equiv|✅ proved - complete|shostak|0.185|
|IMP_ieee754_operation_scheme__binary_TCC1|✅ proved - complete|shostak|0.100|
|IMP_ieee754_operation_scheme__binary_TCC2|✅ proved - incomplete|shostak|0.200|
|IMP_ieee754_operation_scheme__binary_TCC3|✅ proved - complete|shostak|0.000|

## `ieee754_operation_scheme__binary`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|fun_fp_TCC1|✅ proved - complete|shostak|0.090|

## `extended_float_sub`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_ieee754_operation_scheme__binary_TCC1|✅ proved - complete|shostak|0.100|
|IMP_ieee754_operation_scheme__binary_TCC2|✅ proved - incomplete|shostak|0.200|
|IMP_ieee754_operation_scheme__binary_TCC3|✅ proved - complete|shostak|0.100|

## `extended_float_mul`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_ieee754_operation_scheme__binary_TCC1|✅ proved - complete|shostak|0.090|
|IMP_ieee754_operation_scheme__binary_TCC2|✅ proved - incomplete|shostak|0.202|
|IMP_ieee754_operation_scheme__binary_TCC3|✅ proved - complete|shostak|0.100|

## `extended_float_div`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_ieee754_operation_scheme__binary_TCC1|✅ proved - incomplete|shostak|0.100|
|IMP_ieee754_operation_scheme__binary_TCC2|✅ proved - incomplete|shostak|0.190|
|IMP_ieee754_operation_scheme__binary_TCC3|✅ proved - complete|shostak|0.110|

## `extended_float_max`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_ieee754_operation_scheme__binary_TCC1|✅ proved - complete|shostak|0.093|
|IMP_ieee754_operation_scheme__binary_TCC2|✅ proved - incomplete|shostak|0.190|
|IMP_ieee754_operation_scheme__binary_TCC3|✅ proved - complete|shostak|0.110|

## `extended_float_min`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_ieee754_operation_scheme__binary_TCC1|✅ proved - complete|shostak|0.100|
|IMP_ieee754_operation_scheme__binary_TCC2|✅ proved - incomplete|shostak|0.190|
|IMP_ieee754_operation_scheme__binary_TCC3|✅ proved - complete|shostak|0.120|

## `extended_float_neg`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|neg_non_finite_TCC1|✅ proved - complete|shostak|0.102|
|IMP_ieee754_operation_scheme__unary_TCC1|✅ proved - complete|shostak|0.100|

## `ieee754_operation_scheme__unary`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|fun_fp_TCC1|✅ proved - complete|shostak|0.090|

## `extended_float_abs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_ieee754_operation_scheme__unary_TCC1|✅ proved - complete|shostak|0.110|

## `extended_float_sqt`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_ieee754_operation_scheme__unary_TCC1|✅ proved - complete|shostak|0.110|

## `extended_float_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|projection_range|✅ proved - incomplete|shostak|0.212|
|is_finite_safe_projection|✅ proved - incomplete|shostak|0.130|
|safe_projection_is_le_compliant|✅ proved - incomplete|shostak|3.852|
|safe_projection_is_lt_compliant|✅ proved - incomplete|shostak|7.375|
|ef_qge_dual|✅ proved - incomplete|shostak|0.582|
|ef_qgt_dual|✅ proved - incomplete|shostak|0.605|
|ef_nle_lt_rew|✅ proved - incomplete|shostak|0.615|
|ef_nlt_le_rew|✅ proved - incomplete|shostak|0.610|
|ef_neq_not_eq_rew|✅ proved - incomplete|shostak|0.209|

## `extended_float_rounding`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|radix__TCC1|✅ proved - complete|shostak|0.090|
|precision__TCC1|✅ proved - complete|shostak|0.090|
|dExp__TCC1|✅ proved - complete|shostak|0.150|
|round_er_eq_unb_TCC1|✅ proved - incomplete|shostak|0.200|
|proj_round_er_eq_unb_TCC1|✅ proved - incomplete|shostak|0.093|
|ieee754_semantics_round_proj_interpretation_obligation_1_TCC1|✅ proved - complete|shostak|0.100|
|ieee754_semantics_add_inv_def_interpretation_obligation_1_TCC1|✅ proved - incomplete|shostak|0.180|
|proj_round_is_monotone_on_er_TCC1|✅ proved - incomplete|shostak|0.090|
|round_inverse_of_projection_on_nzfinite_TCC1|✅ proved - complete|shostak|0.110|

## `extended_float_rounding__nearest_even_is_a_rounding_mode`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|neven_th_TCC1|✅ proved - complete|shostak|0.100|
|neven_th_TCC2|✅ proved - complete|shostak|0.100|
|neven_th_TCC3|✅ proved - complete|shostak|0.120|
|IMP_extended_float_rounding_bound_on_exp_of_rounded_erreal_TCC1|✅ proved - incomplete|shostak|0.113|
|IMP_extended_float_rounding_round_er_eq_unb_TCC1|✅ proved - incomplete|shostak|0.110|
|IMP_extended_float_rounding_rtoed_er_is_finite_TCC1|✅ proved - incomplete|shostak|0.100|
|IMP_extended_float_rounding_proj_round_er_eq_unb_TCC1|✅ proved - incomplete|shostak|0.120|
|IMP_extended_float_rounding_proj_round_on_er_TCC1|✅ proved - incomplete|shostak|0.100|
|IMP_extended_float_rounding_round_is_injective_on_er_TCC1|✅ proved - incomplete|shostak|0.117|
|IMP_extended_float_rounding_ieee754_semantics_round_proj_interpretation_obligation_1_TCC1|✅ proved - incomplete|shostak|0.120|
|IMP_extended_float_rounding_ieee754_semantics_nzfinite?_def_interpretation_obligation_1_TCC1|✅ proved - incomplete|shostak|0.110|
|IMP_extended_float_rounding_ieee754_semantics_pfinite?_def_interpretation_obligation_1_TCC1|✅ proved - incomplete|shostak|0.100|
|IMP_extended_float_rounding_ieee754_semantics_nfinite?_def_interpretation_obligation_1_TCC1|✅ proved - incomplete|shostak|0.110|
|IMP_extended_float_rounding_ieee754_semantics_add_inv_def_interpretation_obligation_1_TCC1|✅ proved - incomplete|shostak|0.100|
|IMP_extended_float_rounding_proj_round_is_monotone_on_er_TCC1|✅ proved - incomplete|shostak|0.107|
|IMP_extended_float_rounding_round_inverse_of_projection_on_nzfinite_TCC1|✅ proved - incomplete|shostak|0.110|
|IMP_extended_float_rounding_round_zero_TCC1|✅ proved - incomplete|shostak|0.130|

## `extended_float_sin`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_ieee754_operation_scheme__unary_TCC1|✅ proved - complete|shostak|0.120|

## `extended_float_cos`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_ieee754_operation_scheme__unary_TCC1|✅ proved - complete|shostak|0.100|

## `single`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_extended_float_top_TCC1|✅ proved - complete|shostak|0.080|
|IMP_extended_float_top_TCC2|✅ proved - complete|shostak|0.095|
|IMP_extended_float_top_TCC3|✅ proved - complete|shostak|0.090|
|inf_single_TCC1|✅ proved - complete|shostak|0.100|
|nan_single_TCC1|✅ proved - complete|shostak|0.100|
|zero_single_TCC1|✅ proved - complete|shostak|0.100|
|nzfinite_single_TCC1|✅ proved - incomplete|shostak|0.150|
|prjct_single_TCC1|✅ proved - complete|shostak|0.100|
|proj_round_proj_on_finite|✅ proved - incomplete|shostak|0.126|
|IMP_extended_float_props_TCC1|✅ proved - incomplete|shostak|0.090|
|IMP_extended_float_props_TCC2|✅ proved - incomplete|shostak|0.090|
|IMP_extended_float_props_TCC3|✅ proved - complete|shostak|0.090|
|finite_single_safe_projection|✅ proved - incomplete|shostak|0.110|
|single_safe_projection_is_le_compliant|✅ proved - incomplete|shostak|0.110|
|single_safe_projection_is_lt_compliant|✅ proved - incomplete|shostak|0.100|
|single_qge_dual|✅ proved - incomplete|shostak|0.100|
|single_qgt_dual|✅ proved - incomplete|shostak|0.110|
|single_nle_lt_rew|✅ proved - incomplete|shostak|0.112|
|single_nlt_le_rew|✅ proved - incomplete|shostak|0.100|
|single_neq_not_eq_rew|✅ proved - incomplete|shostak|0.100|
|single_eq_eq_rew|✅ proved - incomplete|shostak|0.110|

## `double`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_extended_float_top_TCC1|✅ proved - complete|shostak|0.080|
|IMP_extended_float_top_TCC2|✅ proved - complete|shostak|0.080|
|IMP_extended_float_top_TCC3|✅ proved - complete|shostak|0.093|
|inf_double_TCC1|✅ proved - complete|shostak|0.110|
|nan_double_TCC1|✅ proved - complete|shostak|0.100|
|zero_double_TCC1|✅ proved - complete|shostak|0.100|
|nzfinite_double_TCC1|✅ proved - incomplete|shostak|0.150|
|prjct_double_TCC1|✅ proved - complete|shostak|0.100|
|proj_round_proj_on_finite|✅ proved - incomplete|shostak|0.130|
|IMP_extended_float_props_TCC1|✅ proved - incomplete|shostak|0.111|
|IMP_extended_float_props_TCC2|✅ proved - incomplete|shostak|0.100|
|IMP_extended_float_props_TCC3|✅ proved - complete|shostak|0.090|
|finite_double_safe_projection|✅ proved - incomplete|shostak|0.120|
|double_safe_projection_is_le_compliant|✅ proved - incomplete|shostak|0.100|
|double_safe_projection_is_lt_compliant|✅ proved - incomplete|shostak|0.100|
|double_qge_dual|✅ proved - incomplete|shostak|0.103|
|double_qgt_dual|✅ proved - incomplete|shostak|0.100|
|double_nle_lt_rew|✅ proved - incomplete|shostak|0.100|
|double_nlt_le_rew|✅ proved - incomplete|shostak|0.100|
|double_neq_not_eq_rew|✅ proved - incomplete|shostak|0.103|
|double_eq_eq_rew|✅ proved - incomplete|shostak|0.100|

## `extended_float_accum_err_ulp_add`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_accum_err_add_TCC1|✅ proved - incomplete|shostak|0.110|
|IMP_accum_err_add_TCC2|✅ proved - incomplete|shostak|0.100|
|IMP_domain_equivalence_TCC1|✅ proved - incomplete|shostak|0.200|
|accumulated_round_off_error_bound__addition|✅ proved - incomplete|shostak|0.766|

## `unb_link`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|to_unb_TCC1|✅ proved - incomplete|shostak|0.230|
|to_unb_projection|✅ proved - incomplete|shostak|0.220|
|roundp_TCC1|✅ proved - incomplete|shostak|0.325|
|roundp_is_even_closest|✅ proved - incomplete|shostak|0.143|
|to_unb_addition_projection|✅ proved - incomplete|shostak|0.104|

## `domain_equivalence`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|axm_ulp_fnd_ulp_pos_TCC1|✅ proved - complete|shostak|0.100|
|axm_ulp_fnd_ulp_pos_TCC2|✅ proved - complete|shostak|0.100|
|axm_ulp_fnd_ulp_pos|✅ proved - incomplete|shostak|1.667|
|axm_ulp_fnd_ulp|✅ proved - incomplete|shostak|2.730|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Mac OS X (Intel)] (Nov 14, 2020 23:13)|
| Patch Version| n/a|
| Library Path| `/Applications/pvs-7.1.0/pvslib/`<br/>`/Applications/pvs-7.1.0/lib/`<br/>`/Applications/pvs-7.1.0/pvslib/float/`<br/>`/Applications/pvs-7.1.0/pvslib/pvsio_utils/`|
| Loaded Patches | `/Applications/pvs-7.1.0/pvslib/.pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230712-static-update.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230710-tcc-gen.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230707-defattach.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230706-extrategies.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210323-wish.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210225-cl2pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210715a.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210715.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210707.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210706.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210511.lisp`|
