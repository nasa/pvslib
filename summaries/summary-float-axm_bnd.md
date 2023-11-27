# Summary for `float/axm_bnd`
Run started at 19:25:6 11/24/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **137**   | **137**    | **137**    | **0**  | **31.701 s**   |
|top|0|0|0|0|0.000|
|ieee754_double|0|0|0|0|0.000|
|ieee754_double_base|22|22|22|0|19.793|
|ieee754_format_parameters|7|7|7|0|0.288|
|ieee754_semantics|11|11|11|0|0.654|
|ieee754_data|0|0|0|0|0.000|
|ieee754_domain|37|37|37|0|3.389|
|ieee754_qlt|1|1|1|0|0.092|
|ieee754_qle|1|1|1|0|0.079|
|ieee754_qgt|1|1|1|0|0.086|
|ieee754_qge|1|1|1|0|0.077|
|ieee754_qeq|1|1|1|0|0.078|
|ieee754_qun|0|0|0|0|0.000|
|ieee754_add|3|3|3|0|0.553|
|ieee754_sub|4|4|4|0|0.919|
|ieee754_mul|3|3|3|0|1.171|
|ieee754_max|0|0|0|0|0.000|
|ieee754_min|0|0|0|0|0.000|
|ieee754_div|6|6|6|0|0.820|
|ieee754_abs|1|1|1|0|0.020|
|ieee754_sqt|2|2|2|0|0.037|
|ieee754_neg|2|2|2|0|0.050|
|ieee754_single|0|0|0|0|0.000|
|ieee754_single_base|22|22|22|0|2.471|
|aerr_ulp__double|2|2|2|0|0.029|
|aerr_ulp_abs|0|0|0|0|0.000|
|ieee754_nearest_even_rounding|1|1|1|0|0.020|
|aerr_ulp_add|0|0|0|0|0.000|
|aerr_ulp_div|5|5|5|0|1.005|
|aerr_ulp_mul|0|0|0|0|0.000|
|aerr_ulp_sqt|2|2|2|0|0.040|
|aerr_ulp_sub|0|0|0|0|0.000|
|aerr_ulp__single|2|2|2|0|0.030|
|ieee754_operations|0|0|0|0|0.000|
## Detailed Summary 
## `top`
No formula declaration found.
## `ieee754_double`
No formula declaration found.
## `ieee754_double_base`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|er_ub_value|✅ proved - incomplete|shostak|10.003|
|er_lb_value|✅ proved - incomplete|shostak|9.374|
|add_double_finite_def|✅ proved - incomplete|shostak|0.020|
|sub_double_finite_def|✅ proved - incomplete|shostak|0.030|
|mul_double_finite_def|✅ proved - incomplete|shostak|0.029|
|div_double_finite_def_TCC1|✅ proved - incomplete|shostak|0.030|
|div_double_finite_def|✅ proved - incomplete|shostak|0.059|
|qeq_double_finite_def|✅ proved - incomplete|shostak|0.010|
|qge_double_finite_def|✅ proved - incomplete|shostak|0.018|
|qgt_double_finite_def|✅ proved - incomplete|shostak|0.010|
|qle_double_finite_def|✅ proved - incomplete|shostak|0.020|
|qlt_double_finite_def|✅ proved - incomplete|shostak|0.022|
|neg_double_finite_def|✅ proved - incomplete|shostak|0.010|
|finite?_double_add|✅ proved - complete|shostak|0.010|
|finite?_double_sub|✅ proved - incomplete|shostak|0.005|
|finite?_double_mul|✅ proved - incomplete|shostak|0.010|
|finite?_double_div|✅ proved - incomplete|shostak|0.020|
|finite?_double_neg|✅ proved - complete|shostak|0.010|
|double__finite?_projs_finite?_add|✅ proved - incomplete|shostak|0.017|
|double__finite?_projs_finite?_sub|✅ proved - incomplete|shostak|0.010|
|double__finite?_projs_finite?_mul|✅ proved - incomplete|shostak|0.020|
|double__finite?_projs_finite?_div|✅ proved - incomplete|shostak|0.056|

## `ieee754_format_parameters`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|ieee754_radix_TCC1|✅ proved - complete|shostak|0.010|
|ieee754_subtype_above_1|✅ proved - complete|shostak|0.010|
|ieee754_precision_TCC1|✅ proved - complete|shostak|0.019|
|ieee754_precision_subtype_above_1|✅ proved - complete|shostak|0.020|
|ieee754_maxExp_TCC1|✅ proved - complete|shostak|0.050|
|ieee754_maxExp_subtype_above_1|✅ proved - complete|shostak|0.030|
|ieee754_minExp_TCC1|✅ proved - complete|shostak|0.149|

## `ieee754_semantics`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|emin_TCC1|✅ proved - complete|shostak|0.475|
|proj_def_pZero_TCC1|✅ proved - complete|shostak|0.011|
|proj_def_nZero_TCC1|✅ proved - complete|shostak|0.010|
|expr_judgement_TCC1|✅ proved - incomplete|shostak|0.020|
|add_inv_TCC1|✅ proved - complete|shostak|0.020|
|proj_round_TCC1|✅ proved - incomplete|shostak|0.010|
|round_monotone_TCC1|✅ proved - incomplete|shostak|0.020|
|is_finite_safe_projection_er_real|✅ proved - incomplete|shostak|0.040|
|safe_projection_er_real_proj_TCC1|✅ proved - incomplete|shostak|0.000|
|safe_projection_er_real_proj|✅ proved - incomplete|shostak|0.038|
|is_finite_safe_projection|✅ proved - incomplete|shostak|0.010|

## `ieee754_data`
No formula declaration found.
## `ieee754_domain`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|emin_TCC1|✅ proved - complete|shostak|0.010|
|lesseqp_TCC1|✅ proved - complete|shostak|0.010|
|significand_lt_first_discrepancy|✅ proved - complete|shostak|0.105|
|smax_TCC1|✅ proved - complete|shostak|0.010|
|smin_TCC1|✅ proved - complete|shostak|0.020|
|smin_TCC2|✅ proved - complete|shostak|0.020|
|szero_TCC1|✅ proved - complete|shostak|0.010|
|smax_is_max|✅ proved - complete|shostak|0.010|
|smin_is_min|✅ proved - complete|shostak|0.038|
|IMP_sigma_TCC1|✅ proved - complete|shostak|0.020|
|value_TCC1|✅ proved - complete|shostak|0.020|
|value_TCC2|✅ proved - complete|shostak|0.010|
|value_TCC3|✅ proved - complete|shostak|0.019|
|value_TCC4|✅ proved - complete|shostak|0.030|
|significand_zero_value_zero|✅ proved - incomplete|shostak|0.197|
|significand_le_value_le_TCC1|✅ proved - complete|shostak|0.030|
|significand_le_value_le|✅ proved - incomplete|shostak|0.000|
|value_monotonicity|✅ proved - incomplete|shostak|1.185|
|exactly_representable_symm_0|✅ proved - incomplete|shostak|0.309|
|er_real_value|✅ proved - incomplete|shostak|0.010|
|zero_is_er|✅ proved - incomplete|shostak|0.165|
|er_real_TCC1|✅ proved - incomplete|shostak|0.000|
|er_lb_TCC1|✅ proved - complete|shostak|0.020|
|er_lb_TCC2|✅ proved - incomplete|shostak|0.010|
|er_lower_bound|✅ proved - incomplete|shostak|0.030|
|er_ub_TCC1|✅ proved - incomplete|shostak|0.020|
|er_upper_bound|✅ proved - incomplete|shostak|0.021|
|er_min_pos_TCC1|✅ proved - complete|shostak|0.020|
|er_min_pos_TCC2|✅ proved - incomplete|shostak|0.010|
|er_min_pos_prop|✅ proved - incomplete|shostak|0.343|
|er_max_neg_TCC1|✅ proved - incomplete|shostak|0.010|
|er_max_neg_prop|✅ proved - incomplete|shostak|0.245|
|r_real_TCC1|✅ proved - incomplete|shostak|0.010|
|ulp_TCC1|✅ proved - complete|shostak|0.020|
|ulp_TCC2|✅ proved - complete|shostak|0.020|
|ulp_TCC3|✅ proved - incomplete|shostak|0.182|
|ulp_TCC4|✅ proved - incomplete|shostak|0.200|

## `ieee754_qlt`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|qlt_finite_def|✅ proved - incomplete|shostak|0.092|

## `ieee754_qle`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|qle_finite_def|✅ proved - incomplete|shostak|0.079|

## `ieee754_qgt`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|qgt_finite_def|✅ proved - incomplete|shostak|0.086|

## `ieee754_qge`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|qge_finite_def|✅ proved - incomplete|shostak|0.077|

## `ieee754_qeq`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|qeq_finite_def|✅ proved - incomplete|shostak|0.078|

## `ieee754_qun`
No formula declaration found.
## `ieee754_add`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|add_finite_def|✅ proved - incomplete|shostak|0.155|
|add_finites_is_finite|✅ proved - complete|shostak|0.210|
|finite?_projs_finite?_add|✅ proved - incomplete|shostak|0.188|

## `ieee754_sub`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sub_correct__nZero_finite_TCC1|✅ proved - incomplete|shostak|0.019|
|sub_finite_def|✅ proved - incomplete|shostak|0.343|
|sub_finites_is_finite|✅ proved - incomplete|shostak|0.261|
|finite?_projs_finite?_sub|✅ proved - incomplete|shostak|0.296|

## `ieee754_mul`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|mul_finite_def|✅ proved - incomplete|shostak|0.369|
|mul_finites_is_finite|✅ proved - incomplete|shostak|0.398|
|finite?_projs_finite?_mul|✅ proved - incomplete|shostak|0.404|

## `ieee754_max`
No formula declaration found.
## `ieee754_min`
No formula declaration found.
## `ieee754_div`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|div_correct__finite_TCC1|✅ proved - incomplete|shostak|0.020|
|div_finite_def_TCC1|✅ proved - incomplete|shostak|0.020|
|div_finite_def_TCC2|✅ proved - incomplete|shostak|0.007|
|div_finite_def|✅ proved - incomplete|shostak|0.164|
|div_finites_is_finite|✅ proved - incomplete|shostak|0.484|
|finite?_projs_finite?_div|✅ proved - incomplete|shostak|0.125|

## `ieee754_abs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|abs_correct__finite_TCC1|✅ proved - incomplete|shostak|0.020|

## `ieee754_sqt`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sqt_correct__finite_TCC1|✅ proved - incomplete|shostak|0.020|
|sqt_correct__finite_TCC2|✅ proved - incomplete|shostak|0.017|

## `ieee754_neg`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|neg_finite_def|✅ proved - incomplete|shostak|0.020|
|neg_finites_is_finite|✅ proved - complete|shostak|0.030|

## `ieee754_single`
No formula declaration found.
## `ieee754_single_base`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|er_ub_value|✅ proved - incomplete|shostak|1.020|
|er_lb_value|✅ proved - incomplete|shostak|1.021|
|add_single_finite_def|✅ proved - incomplete|shostak|0.010|
|sub_single_finite_def|✅ proved - incomplete|shostak|0.030|
|mul_single_finite_def|✅ proved - incomplete|shostak|0.030|
|div_single_finite_def_TCC1|✅ proved - incomplete|shostak|0.021|
|div_single_finite_def|✅ proved - incomplete|shostak|0.050|
|qeq_single_finite_def|✅ proved - incomplete|shostak|0.020|
|qge_single_finite_def|✅ proved - incomplete|shostak|0.022|
|qgt_single_finite_def|✅ proved - incomplete|shostak|0.020|
|qle_single_finite_def|✅ proved - incomplete|shostak|0.020|
|qlt_single_finite_def|✅ proved - incomplete|shostak|0.020|
|neg_single_finite_def|✅ proved - incomplete|shostak|0.008|
|finite?_single_add|✅ proved - complete|shostak|0.010|
|finite?_single_sub|✅ proved - incomplete|shostak|0.010|
|finite?_single_mul|✅ proved - incomplete|shostak|0.010|
|finite?_single_div|✅ proved - incomplete|shostak|0.019|
|finite?_single_neg|✅ proved - complete|shostak|0.020|
|single__finite?_projs_finite?_add|✅ proved - incomplete|shostak|0.010|
|single__finite?_projs_finite?_sub|✅ proved - incomplete|shostak|0.020|
|single__finite?_projs_finite?_mul|✅ proved - incomplete|shostak|0.020|
|single__finite?_projs_finite?_div|✅ proved - incomplete|shostak|0.060|

## `aerr_ulp__double`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|aerr_div_def_TCC1|✅ proved - complete|shostak|0.020|
|aerr_sqt_def_TCC1|✅ proved - complete|shostak|0.009|

## `aerr_ulp_abs`
No formula declaration found.
## `ieee754_nearest_even_rounding`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|nearest_even_rounding_TCC1|✅ proved - incomplete|shostak|0.020|

## `aerr_ulp_add`
No formula declaration found.
## `aerr_ulp_div`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|aerr_ulp_div_TCC1|✅ proved - complete|shostak|0.218|
|aerr_ulp_div_TCC2|✅ proved - complete|shostak|0.040|
|aerr_ulp_div_TCC3|✅ proved - incomplete|shostak|0.628|
|aerr_ulp_div_correct_TCC1|✅ proved - incomplete|shostak|0.070|
|aerr_ulp_div_correct_TCC2|✅ proved - incomplete|shostak|0.049|

## `aerr_ulp_mul`
No formula declaration found.
## `aerr_ulp_sqt`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|aerr_ulp_sqt_TCC1|✅ proved - complete|shostak|0.010|
|aerr_ulp_sqt_correct_TCC1|✅ proved - incomplete|shostak|0.030|

## `aerr_ulp_sub`
No formula declaration found.
## `aerr_ulp__single`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|aerr_div_def_TCC1|✅ proved - complete|shostak|0.020|
|aerr_sqt_def_TCC1|✅ proved - complete|shostak|0.010|

## `ieee754_operations`
No formula declaration found.## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Mac OS X (Intel)] (Nov 14, 2020 23:13)|
| Patch Version| n/a|
| Library Path| `/Applications/pvs-7.1.0/pvslib/`<br/>`/Applications/pvs-7.1.0/lib/`<br/>`/Applications/pvs-7.1.0/pvslib/float/`<br/>`/Applications/pvs-7.1.0/pvslib/pvsio_utils/`|
| Loaded Patches | `/Applications/pvs-7.1.0/pvslib/.pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230712-static-update.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230710-tcc-gen.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230707-defattach.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230706-extrategies.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210323-wish.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210225-cl2pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210715a.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210715.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210707.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210706.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210511.lisp`|
