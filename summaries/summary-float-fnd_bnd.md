# Summary for `float/fnd_bnd`
Run started at 2:28:26 7/4/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **189**   | **189**    | **189**    | **0**  | **1:29.697 s**   |
|top__high_level|0|0|0|0|0.000|
|extended_float_top|0|0|0|0|0.000|
|extended_float|27|27|27|0|12.462|
|extended_float_rounding__nearest_even|27|27|27|0|9.040|
|extended_float_exactly_representable_reals|18|18|18|0|11.994|
|extended_float_qlt|0|0|0|0|0.000|
|extended_float_operations_support|0|0|0|0|0.000|
|ieee754_predicate_scheme__binary|0|0|0|0|0.000|
|extended_float_qle|0|0|0|0|0.000|
|extended_float_qgt|0|0|0|0|0.000|
|extended_float_qge|0|0|0|0|0.000|
|extended_float_qeq|0|0|0|0|0.000|
|extended_float_qun|0|0|0|0|0.000|
|extended_float_add|4|4|4|0|0.934|
|ieee754_operation_scheme__binary|1|1|1|0|0.142|
|extended_float_sub|3|3|3|0|0.620|
|extended_float_mul|3|3|3|0|0.613|
|extended_float_div|3|3|3|0|0.623|
|extended_float_max|3|3|3|0|0.620|
|extended_float_min|3|3|3|0|0.613|
|extended_float_neg|2|2|2|0|0.310|
|ieee754_operation_scheme__unary|1|1|1|0|0.142|
|extended_float_abs|1|1|1|0|0.170|
|extended_float_sqt|1|1|1|0|0.180|
|extended_float_props|9|9|9|0|24.147|
|extended_float_rounding|9|9|9|0|1.604|
|extended_float_rounding__nearest_even_is_a_rounding_mode|17|17|17|0|2.637|
|extended_float_sin|1|1|1|0|0.180|
|extended_float_cos|1|1|1|0|0.170|
|single|21|21|21|0|3.301|
|double|21|21|21|0|3.287|
|extended_float_accum_err_ulp_add|4|4|4|0|1.810|
|unb_link|5|5|5|0|9.084|
|domain_equivalence|4|4|4|0|5.014|
## Detailed Summary 
## `top__high_level`
No formula declaration found.
## `extended_float_top`
No formula declaration found.
## `extended_float`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|min_exp_TCC1|✅ proved - complete|shostak|0.270|
|max_exp_TCC1|✅ proved - complete|shostak|0.260|
|min_pos_value_TCC1|✅ proved - complete|shostak|0.140|
|max_pos_value_TCC1|✅ proved - complete|shostak|0.120|
|max_pos_value_TCC2|✅ proved - complete|shostak|0.130|
|max_pos_value_TCC3|✅ proved - complete|shostak|0.359|
|emax_TCC1|✅ proved - complete|shostak|0.280|
|min_pos_value__min_pos_unb_canonic_float__eq|✅ proved - incomplete|shostak|0.130|
|is_pos_inf?_TCC1|✅ proved - complete|shostak|0.127|
|is_pos_zero?_TCC1|✅ proved - complete|shostak|0.150|
|inf_exclusive|✅ proved - complete|shostak|0.150|
|zero_inclusive|✅ proved - complete|shostak|0.180|
|zero_exclusive|✅ proved - complete|shostak|0.130|
|prj_ef_TCC1|✅ proved - complete|shostak|0.160|
|projection_on_nzfinite_TCC1|✅ proved - complete|shostak|0.128|
|projection_on_nzfinite|✅ proved - incomplete|shostak|0.310|
|xef_real_TCC1|✅ proved - incomplete|shostak|1.110|
|xef_real_0_j|✅ proved - incomplete|shostak|1.084|
|xef_real_1_j|✅ proved - incomplete|shostak|1.195|
|min_pos_value_xef_real|✅ proved - incomplete|shostak|1.154|
|max_pos_value_xef_real|✅ proved - incomplete|shostak|0.667|
|xef_real_upper_bound|✅ proved - incomplete|shostak|0.733|
|xef_real_lower_bound|✅ proved - incomplete|shostak|1.902|
|xef_real_not_zero_prj_rnd_ucf|✅ proved - incomplete|shostak|0.839|
|as_float_existence|✅ proved - incomplete|shostak|0.392|
|as_float_TCC1|✅ proved - incomplete|shostak|0.132|
|flip_sign_j|✅ proved - incomplete|shostak|0.230|

## `extended_float_rounding__nearest_even`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|dtor_rtod_on_er|✅ proved - incomplete|shostak|0.581|
|bound_on_exp_of_rounded_erreal|✅ proved - incomplete|shostak|0.260|
|rtod_on_ranged_pos_is_in_range|✅ proved - incomplete|shostak|1.280|
|rtod_on_ranged_neg_is_in_range|✅ proved - incomplete|shostak|0.160|
|rtod_on_near_but_not_zero_is_in_range|✅ proved - incomplete|shostak|0.457|
|rnd_ef_well_defined|✅ proved - incomplete|shostak|0.399|
|rnd_ef_TCC1|✅ proved - incomplete|shostak|0.120|
|round_zero|✅ proved - incomplete|shostak|0.170|
|round_inverse_of_projection_on_nzfinite_TCC1|✅ proved - complete|shostak|0.130|
|round_inverse_of_projection_on_nzfinite|✅ proved - incomplete|shostak|0.000|
|proj_round_proj_on_finite|✅ proved - incomplete|shostak|0.752|
|rtoed_er_is_finite|✅ proved - incomplete|shostak|0.249|
|round_er_eq_unb_TCC1|✅ proved - incomplete|shostak|0.290|
|round_er_eq_unb|✅ proved - incomplete|shostak|0.268|
|proj_round_er_eq_unb_TCC1|✅ proved - incomplete|shostak|0.150|
|proj_round_er_eq_unb|✅ proved - incomplete|shostak|0.170|
|proj_round_on_er|✅ proved - incomplete|shostak|0.290|
|round_is_injective_on_er|✅ proved - incomplete|shostak|0.457|
|ieee754_semantics_round_proj_interpretation_obligation_1_TCC1|✅ proved - complete|shostak|0.130|
|ieee754_semantics_round_proj_interpretation_obligation_1|✅ proved - incomplete|shostak|0.220|
|ieee754_semantics_nzfinite?_def_interpretation_obligation_1|✅ proved - incomplete|shostak|0.431|
|ieee754_semantics_pfinite?_def_interpretation_obligation_1|✅ proved - incomplete|shostak|0.570|
|ieee754_semantics_nfinite?_def_interpretation_obligation_1|✅ proved - incomplete|shostak|0.561|
|ieee754_semantics_add_inv_def_interpretation_obligation_1_TCC1|✅ proved - incomplete|shostak|0.313|
|ieee754_semantics_add_inv_def_interpretation_obligation_1|✅ proved - incomplete|shostak|0.230|
|proj_round_is_monotone_on_er_TCC1|✅ proved - incomplete|shostak|0.132|
|proj_round_is_monotone_on_er|✅ proved - incomplete|shostak|0.270|

## `extended_float_exactly_representable_reals`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|er_rat_to_er_int__exponent__le_max_exp|✅ proved - incomplete|shostak|0.422|
|er_rat_to_er_int__exponent__ge_min_exp|✅ proved - incomplete|shostak|0.422|
|sigma_on_nat_TCC1|✅ proved - incomplete|shostak|0.150|
|er_rat_to_er_int__significand_TCC1|✅ proved - incomplete|shostak|0.359|
|er_rat_to_er_int__significand_TCC2|✅ proved - incomplete|shostak|0.570|
|er_rat_to_er_int__significand__abs_lt_radix_pow_prec_TCC1|✅ proved - incomplete|shostak|0.360|
|er_rat_to_er_int__significand__abs_lt_radix_pow_prec|✅ proved - incomplete|shostak|2.183|
|er_rat_to_er_int_value_TCC1|✅ proved - incomplete|shostak|0.561|
|er_rat_to_er_int_value|✅ proved - incomplete|shostak|1.451|
|er_ub_correspondent|✅ proved - incomplete|shostak|2.107|
|er_lb_correspondent|✅ proved - incomplete|shostak|0.360|
|er_min_pos_correspondent|✅ proved - incomplete|shostak|1.260|
|er_max_neg_correspondent|✅ proved - incomplete|shostak|0.380|
|min_pos_value_is_er|✅ proved - incomplete|shostak|0.140|
|er_rat_er_int|✅ proved - incomplete|shostak|0.680|
|er_rat_er_int_j|✅ proved - incomplete|shostak|0.140|
|er_bounded|✅ proved - incomplete|shostak|0.160|
|er_canonic|✅ proved - incomplete|shostak|0.289|

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
|add_zero_equiv|✅ proved - complete|shostak|0.310|
|IMP_ieee754_operation_scheme__binary_TCC1|✅ proved - complete|shostak|0.154|
|IMP_ieee754_operation_scheme__binary_TCC2|✅ proved - incomplete|shostak|0.300|
|IMP_ieee754_operation_scheme__binary_TCC3|✅ proved - complete|shostak|0.170|

## `ieee754_operation_scheme__binary`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|fun_fp_TCC1|✅ proved - complete|shostak|0.142|

## `extended_float_sub`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_ieee754_operation_scheme__binary_TCC1|✅ proved - complete|shostak|0.160|
|IMP_ieee754_operation_scheme__binary_TCC2|✅ proved - incomplete|shostak|0.290|
|IMP_ieee754_operation_scheme__binary_TCC3|✅ proved - complete|shostak|0.170|

## `extended_float_mul`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_ieee754_operation_scheme__binary_TCC1|✅ proved - complete|shostak|0.153|
|IMP_ieee754_operation_scheme__binary_TCC2|✅ proved - incomplete|shostak|0.300|
|IMP_ieee754_operation_scheme__binary_TCC3|✅ proved - complete|shostak|0.160|

## `extended_float_div`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_ieee754_operation_scheme__binary_TCC1|✅ proved - incomplete|shostak|0.160|
|IMP_ieee754_operation_scheme__binary_TCC2|✅ proved - incomplete|shostak|0.303|
|IMP_ieee754_operation_scheme__binary_TCC3|✅ proved - complete|shostak|0.160|

## `extended_float_max`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_ieee754_operation_scheme__binary_TCC1|✅ proved - complete|shostak|0.150|
|IMP_ieee754_operation_scheme__binary_TCC2|✅ proved - incomplete|shostak|0.310|
|IMP_ieee754_operation_scheme__binary_TCC3|✅ proved - complete|shostak|0.160|

## `extended_float_min`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_ieee754_operation_scheme__binary_TCC1|✅ proved - complete|shostak|0.150|
|IMP_ieee754_operation_scheme__binary_TCC2|✅ proved - incomplete|shostak|0.303|
|IMP_ieee754_operation_scheme__binary_TCC3|✅ proved - complete|shostak|0.160|

## `extended_float_neg`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|neg_non_finite_TCC1|✅ proved - complete|shostak|0.160|
|IMP_ieee754_operation_scheme__unary_TCC1|✅ proved - complete|shostak|0.150|

## `ieee754_operation_scheme__unary`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|fun_fp_TCC1|✅ proved - complete|shostak|0.142|

## `extended_float_abs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_ieee754_operation_scheme__unary_TCC1|✅ proved - complete|shostak|0.170|

## `extended_float_sqt`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_ieee754_operation_scheme__unary_TCC1|✅ proved - complete|shostak|0.180|

## `extended_float_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|projection_range|✅ proved - incomplete|shostak|0.000|
|is_finite_safe_projection|✅ proved - incomplete|shostak|0.210|
|safe_projection_is_le_compliant|✅ proved - incomplete|shostak|6.706|
|safe_projection_is_lt_compliant|✅ proved - incomplete|shostak|13.061|
|ef_qge_dual|✅ proved - incomplete|shostak|0.931|
|ef_qgt_dual|✅ proved - incomplete|shostak|0.951|
|ef_nle_lt_rew|✅ proved - incomplete|shostak|0.981|
|ef_nlt_le_rew|✅ proved - incomplete|shostak|0.977|
|ef_neq_not_eq_rew|✅ proved - incomplete|shostak|0.330|

## `extended_float_rounding`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|radix__TCC1|✅ proved - complete|shostak|0.123|
|precision__TCC1|✅ proved - complete|shostak|0.130|
|dExp__TCC1|✅ proved - complete|shostak|0.180|
|round_er_eq_unb_TCC1|✅ proved - incomplete|shostak|0.320|
|proj_round_er_eq_unb_TCC1|✅ proved - incomplete|shostak|0.151|
|ieee754_semantics_round_proj_interpretation_obligation_1_TCC1|✅ proved - complete|shostak|0.130|
|ieee754_semantics_add_inv_def_interpretation_obligation_1_TCC1|✅ proved - incomplete|shostak|0.290|
|proj_round_is_monotone_on_er_TCC1|✅ proved - incomplete|shostak|0.150|
|round_inverse_of_projection_on_nzfinite_TCC1|✅ proved - complete|shostak|0.130|

## `extended_float_rounding__nearest_even_is_a_rounding_mode`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|neven_th_TCC1|✅ proved - complete|shostak|0.140|
|neven_th_TCC2|✅ proved - complete|shostak|0.140|
|neven_th_TCC3|✅ proved - complete|shostak|0.192|
|IMP_extended_float_rounding_bound_on_exp_of_rounded_erreal_TCC1|✅ proved - incomplete|shostak|0.160|
|IMP_extended_float_rounding_round_er_eq_unb_TCC1|✅ proved - incomplete|shostak|0.150|
|IMP_extended_float_rounding_rtoed_er_is_finite_TCC1|✅ proved - incomplete|shostak|0.150|
|IMP_extended_float_rounding_proj_round_er_eq_unb_TCC1|✅ proved - incomplete|shostak|0.150|
|IMP_extended_float_rounding_proj_round_on_er_TCC1|✅ proved - incomplete|shostak|0.150|
|IMP_extended_float_rounding_round_is_injective_on_er_TCC1|✅ proved - incomplete|shostak|0.152|
|IMP_extended_float_rounding_ieee754_semantics_round_proj_interpretation_obligation_1_TCC1|✅ proved - incomplete|shostak|0.150|
|IMP_extended_float_rounding_ieee754_semantics_nzfinite?_def_interpretation_obligation_1_TCC1|✅ proved - incomplete|shostak|0.160|
|IMP_extended_float_rounding_ieee754_semantics_pfinite?_def_interpretation_obligation_1_TCC1|✅ proved - incomplete|shostak|0.150|
|IMP_extended_float_rounding_ieee754_semantics_nfinite?_def_interpretation_obligation_1_TCC1|✅ proved - incomplete|shostak|0.150|
|IMP_extended_float_rounding_ieee754_semantics_add_inv_def_interpretation_obligation_1_TCC1|✅ proved - incomplete|shostak|0.160|
|IMP_extended_float_rounding_proj_round_is_monotone_on_er_TCC1|✅ proved - incomplete|shostak|0.160|
|IMP_extended_float_rounding_round_inverse_of_projection_on_nzfinite_TCC1|✅ proved - incomplete|shostak|0.160|
|IMP_extended_float_rounding_round_zero_TCC1|✅ proved - incomplete|shostak|0.163|

## `extended_float_sin`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_ieee754_operation_scheme__unary_TCC1|✅ proved - complete|shostak|0.180|

## `extended_float_cos`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_ieee754_operation_scheme__unary_TCC1|✅ proved - complete|shostak|0.170|

## `single`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_extended_float_top_TCC1|✅ proved - complete|shostak|0.140|
|IMP_extended_float_top_TCC2|✅ proved - complete|shostak|0.150|
|IMP_extended_float_top_TCC3|✅ proved - complete|shostak|0.140|
|inf_single_TCC1|✅ proved - complete|shostak|0.160|
|nan_single_TCC1|✅ proved - complete|shostak|0.150|
|zero_single_TCC1|✅ proved - complete|shostak|0.140|
|nzfinite_single_TCC1|✅ proved - incomplete|shostak|0.240|
|prjct_single_TCC1|✅ proved - complete|shostak|0.160|
|proj_round_proj_on_finite|✅ proved - incomplete|shostak|0.200|
|IMP_extended_float_props_TCC1|✅ proved - incomplete|shostak|0.150|
|IMP_extended_float_props_TCC2|✅ proved - incomplete|shostak|0.152|
|IMP_extended_float_props_TCC3|✅ proved - complete|shostak|0.150|
|finite_single_safe_projection|✅ proved - incomplete|shostak|0.170|
|single_safe_projection_is_le_compliant|✅ proved - incomplete|shostak|0.160|
|single_safe_projection_is_lt_compliant|✅ proved - incomplete|shostak|0.148|
|single_qge_dual|✅ proved - incomplete|shostak|0.140|
|single_qgt_dual|✅ proved - incomplete|shostak|0.140|
|single_nle_lt_rew|✅ proved - incomplete|shostak|0.140|
|single_nlt_le_rew|✅ proved - incomplete|shostak|0.141|
|single_neq_not_eq_rew|✅ proved - incomplete|shostak|0.160|
|single_eq_eq_rew|✅ proved - incomplete|shostak|0.170|

## `double`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_extended_float_top_TCC1|✅ proved - complete|shostak|0.140|
|IMP_extended_float_top_TCC2|✅ proved - complete|shostak|0.150|
|IMP_extended_float_top_TCC3|✅ proved - complete|shostak|0.140|
|inf_double_TCC1|✅ proved - complete|shostak|0.158|
|nan_double_TCC1|✅ proved - complete|shostak|0.150|
|zero_double_TCC1|✅ proved - complete|shostak|0.140|
|nzfinite_double_TCC1|✅ proved - incomplete|shostak|0.240|
|prjct_double_TCC1|✅ proved - complete|shostak|0.160|
|proj_round_proj_on_finite|✅ proved - incomplete|shostak|0.210|
|IMP_extended_float_props_TCC1|✅ proved - incomplete|shostak|0.153|
|IMP_extended_float_props_TCC2|✅ proved - incomplete|shostak|0.150|
|IMP_extended_float_props_TCC3|✅ proved - complete|shostak|0.150|
|finite_double_safe_projection|✅ proved - incomplete|shostak|0.180|
|double_safe_projection_is_le_compliant|✅ proved - incomplete|shostak|0.160|
|double_safe_projection_is_lt_compliant|✅ proved - incomplete|shostak|0.142|
|double_qge_dual|✅ proved - incomplete|shostak|0.160|
|double_qgt_dual|✅ proved - incomplete|shostak|0.140|
|double_nle_lt_rew|✅ proved - incomplete|shostak|0.140|
|double_nlt_le_rew|✅ proved - incomplete|shostak|0.144|
|double_neq_not_eq_rew|✅ proved - incomplete|shostak|0.140|
|double_eq_eq_rew|✅ proved - incomplete|shostak|0.140|

## `extended_float_accum_err_ulp_add`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_accum_err_add_TCC1|✅ proved - incomplete|shostak|0.170|
|IMP_accum_err_add_TCC2|✅ proved - incomplete|shostak|0.151|
|IMP_domain_equivalence_TCC1|✅ proved - incomplete|shostak|0.290|
|accumulated_round_off_error_bound__addition|✅ proved - incomplete|shostak|1.199|

## `unb_link`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|to_unb_TCC1|✅ proved - incomplete|shostak|0.369|
|to_unb_projection|✅ proved - incomplete|shostak|0.325|
|roundp_TCC1|✅ proved - incomplete|shostak|0.519|
|roundp_is_even_closest|✅ proved - incomplete|shostak|0.216|
|to_unb_addition_projection|✅ proved - incomplete|shostak|7.655|

## `domain_equivalence`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|axm_ulp_fnd_ulp_pos_TCC1|✅ proved - complete|shostak|0.346|
|axm_ulp_fnd_ulp_pos_TCC2|✅ proved - complete|shostak|0.150|
|axm_ulp_fnd_ulp_pos|✅ proved - incomplete|shostak|0.000|
|axm_ulp_fnd_ulp|✅ proved - incomplete|shostak|4.518|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib//float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-pvsio-fix.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210219-extratregies.lisp`|
