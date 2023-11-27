# Summary for `Bernstein`
Run started at 18:45:12 11/24/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **307**   | **307**    | **307**    | **0**  | **1:41.095 s**   |
|top|0|0|0|0|0.000|
|util|18|18|18|0|1.919|
|minmax|5|5|5|0|1.276|
|multi_bernstein|41|41|41|0|21.288|
|multi_polynomial|23|23|23|0|9.375|
|poly2bernstein|3|3|3|0|0.453|
|vardirselector|8|8|8|0|0.212|
|bernstein_minmax|26|26|26|0|15.759|
|a2l__bernstein_minmax|26|26|26|0|11.770|
|a2l__vardirselector|7|7|7|0|0.194|
|a2l__multi_bernstein|15|15|15|0|6.222|
|multibernstein_into_polylist|5|5|5|0|1.160|
|a2l__util|6|6|6|0|0.131|
|vardirselector_into_a2lvardirselector|1|1|1|0|0.030|
|MPoly|0|0|0|0|0.000|
|multi_polylist|83|83|83|0|14.920|
|poly_minmax|4|4|4|0|4.295|
|strat_util|12|12|12|0|5.620|
|strategies|0|0|0|0|0.000|
|boxes_def|7|7|7|0|0.125|
|boxes|11|11|11|0|2.430|
|tests|6|6|6|0|3.916|
|grizzly|0|0|0|0|0.000|
## Detailed Summary 
## `top`
No formula declaration found.
## `util`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|relreal_scal|✅ proved - incomplete|shostak|0.159|
|edge_point?_TCC1|✅ proved - complete|shostak|0.010|
|boxbetween_eq_bnd|✅ proved - complete|shostak|0.020|
|normalize_lambda_TCC1|✅ proved - incomplete|shostak|0.000|
|normalize_lambda_TCC2|✅ proved - incomplete|shostak|0.050|
|normalize_lambda_TCC3|✅ proved - incomplete|shostak|0.054|
|normalize_lambda_unitbox|✅ proved - incomplete|shostak|0.223|
|denormalize_listreal_rec_TCC1|✅ proved - complete|shostak|0.010|
|denormalize_listreal_rec_TCC2|✅ proved - complete|shostak|0.030|
|denormalize_listreal_rec_TCC3|✅ proved - incomplete|shostak|0.135|
|denormalize_listreal_rec_TCC4|✅ proved - incomplete|shostak|0.040|
|denormalize_listreal_rec_TCC5|✅ proved - complete|shostak|0.020|
|denormalize_listreal_rec_TCC6|✅ proved - incomplete|shostak|0.034|
|denormalize_listreal_rec_TCC7|✅ proved - complete|shostak|0.030|
|denormalize_listreal_rec_TCC8|✅ proved - incomplete|shostak|0.920|
|denormalize_listreal_TCC1|✅ proved - complete|shostak|0.010|
|translist_polylist_id|✅ proved - incomplete|shostak|0.144|
|corner_to_point_TCC1|✅ proved - incomplete|shostak|0.030|

## `minmax`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|between_combine_lr|✅ proved - incomplete|shostak|0.282|
|false_globalexit_inv|✅ proved - incomplete|shostak|0.060|
|rel_globalexit_inv|✅ proved - incomplete|shostak|0.437|
|eps_localexit_inv|✅ proved - incomplete|shostak|0.352|
|rel_localexit_inv|✅ proved - incomplete|shostak|0.145|

## `multi_bernstein`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_sigma_bijection_TCC1|✅ proved - complete|shostak|0.065|
|bsproduct_eval_TCC1|✅ proved - incomplete|shostak|0.020|
|multibs_eval_rec_TCC1|✅ proved - incomplete|shostak|0.030|
|multibs_eval_rec_TCC2|✅ proved - incomplete|shostak|0.020|
|multibs_eval_rec_TCC3|✅ proved - complete|shostak|0.010|
|multibs_eval_1_term|✅ proved - incomplete|shostak|1.837|
|multibs_eval_equiv|✅ proved - incomplete|shostak|2.442|
|multibs_eval_below_mono|✅ proved - incomplete|shostak|0.290|
|multibs_eval_id|✅ proved - incomplete|shostak|0.424|
|multibscoeff_id|✅ proved - incomplete|shostak|0.182|
|Bern_coeffs_rel_implic|✅ proved - incomplete|shostak|0.075|
|Bern_coeffs_rel_def|✅ proved - incomplete|shostak|0.531|
|multibs_cornerpoint_coeff|✅ proved - incomplete|shostak|1.052|
|forall_X_id|✅ proved - incomplete|shostak|0.091|
|forall_X_between_id|✅ proved - incomplete|shostak|0.097|
|Bern_coeffs_endpoints_rel_rec_TCC1|✅ proved - incomplete|shostak|0.020|
|Bern_coeffs_endpoints_rel_rec_TCC2|✅ proved - incomplete|shostak|0.036|
|Bern_coeffs_endpoints_rel_rec_TCC3|✅ proved - complete|shostak|0.010|
|Bern_coeffs_endpoints_rel_TCC1|✅ proved - incomplete|shostak|0.010|
|Bern_coeffs_endpoints_rel_def|✅ proved - incomplete|shostak|1.674|
|Bern_coeffs_counterexample|✅ proved - incomplete|shostak|1.559|
|Bern_le|✅ proved - incomplete|shostak|1.662|
|Bern_lt|✅ proved - incomplete|shostak|0.379|
|Bern_ge|✅ proved - incomplete|shostak|1.526|
|Bern_gt|✅ proved - incomplete|shostak|0.356|
|Bern_rel|✅ proved - incomplete|shostak|0.052|
|forall_X_between_minmax|✅ proved - incomplete|shostak|0.082|
|Bern_split_left_mono_TCC1|✅ proved - incomplete|shostak|0.030|
|Bern_split_right_mono_TCC1|✅ proved - incomplete|shostak|0.036|
|Bern_split_right_mono_TCC2|✅ proved - incomplete|shostak|0.030|
|Bern_split_right_mono_TCC3|✅ proved - incomplete|shostak|0.050|
|Bern_split_bspoly|✅ proved - incomplete|shostak|2.714|
|Bern_eval_left|✅ proved - incomplete|shostak|0.632|
|Bern_eval_left_def|✅ proved - incomplete|shostak|0.086|
|Bern_eval_right|✅ proved - incomplete|shostak|0.702|
|Bern_eval_right_def|✅ proved - incomplete|shostak|0.064|
|Bernstein_sweep_TCC1|✅ proved - incomplete|shostak|0.040|
|Bernstein_sweep_TCC2|✅ proved - complete|shostak|0.010|
|Bern_sweep_right_TCC1|✅ proved - incomplete|shostak|0.020|
|Bern_sweep_eval_left|✅ proved - incomplete|shostak|1.168|
|Bern_sweep_eval_right|✅ proved - incomplete|shostak|1.174|

## `multi_polynomial`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_sigma_bijection_TCC1|✅ proved - complete|shostak|0.010|
|multipoly_translate_denormalize_TCC1|✅ proved - incomplete|shostak|0.040|
|multipoly_translate_denormalize|✅ proved - incomplete|shostak|0.894|
|multipoly_translate_normalize_TCC1|✅ proved - incomplete|shostak|0.063|
|multipoly_translate_normalize_TCC2|✅ proved - incomplete|shostak|0.070|
|multipoly_translate_normalize|✅ proved - incomplete|shostak|0.000|
|multipoly_translate_bounded_def_TCC1|✅ proved - incomplete|shostak|0.042|
|multipoly_translate_bounded_def|✅ proved - incomplete|shostak|0.350|
|multipoly_translate_def|✅ proved - incomplete|shostak|1.688|
|multipoly_zero_above_def|✅ proved - incomplete|shostak|0.209|
|multipoly_add_coeff_TCC1|✅ proved - incomplete|shostak|0.030|
|multipoly_add_def|✅ proved - incomplete|shostak|1.033|
|multipoly_scalar_def|✅ proved - incomplete|shostak|0.091|
|multipoly_sub_def|✅ proved - incomplete|shostak|0.091|
|polyproduct_product_TCC1|✅ proved - incomplete|shostak|0.070|
|polyproduct_product_def|✅ proved - incomplete|shostak|3.018|
|multipoly_product_coeff_TCC1|✅ proved - incomplete|shostak|0.060|
|multipoly_product_coeff_TCC2|✅ proved - complete|shostak|0.010|
|multipoly_product_coeff_TCC3|✅ proved - incomplete|shostak|0.090|
|multipoly_product_def_TCC1|✅ proved - complete|shostak|0.000|
|multipoly_product_def|✅ proved - incomplete|shostak|1.345|
|multipoly_sq_def_TCC1|✅ proved - incomplete|shostak|0.060|
|multipoly_sq_def|✅ proved - incomplete|shostak|0.111|

## `poly2bernstein`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|bs_convert_mono_TCC1|✅ proved - incomplete|shostak|0.030|
|bs_convert_mono_TCC2|✅ proved - incomplete|shostak|0.017|
|bs_convert_poly_def|✅ proved - incomplete|shostak|0.406|

## `vardirselector`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|var_coeff_range_rec_TCC1|✅ proved - incomplete|shostak|0.040|
|var_coeff_range_rec_TCC2|✅ proved - incomplete|shostak|0.092|
|var_coeff_range_rec_TCC3|✅ proved - incomplete|shostak|0.010|
|var_maxcoeff_rec_TCC1|✅ proved - incomplete|shostak|0.030|
|var_maxcoeff_rec_TCC2|✅ proved - incomplete|shostak|0.010|
|var_maxcoeff_rec_TCC3|✅ proved - incomplete|shostak|0.010|
|var_maxcoeff_rec_TCC4|✅ proved - complete|shostak|0.010|
|MaxVarMinDir_TCC1|✅ proved - complete|shostak|0.010|

## `bernstein_minmax`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|unit_box_lb_id|✅ proved - incomplete|shostak|0.070|
|unit_box_ub_id|✅ proved - incomplete|shostak|0.084|
|sound_id|✅ proved - incomplete|shostak|0.054|
|sound_lb_le_ub|✅ proved - incomplete|shostak|0.025|
|combine_sound|✅ proved - incomplete|shostak|0.706|
|Bern_coeffs_minmax_rec_TCC1|✅ proved - incomplete|shostak|0.442|
|Bern_coeffs_minmax_rec_TCC2|✅ proved - incomplete|shostak|0.020|
|Bern_coeffs_minmax_rec_TCC3|✅ proved - incomplete|shostak|0.080|
|Bern_coeffs_minmax_rec_TCC4|✅ proved - incomplete|shostak|0.020|
|Bern_coeffs_minmax_rec_TCC5|✅ proved - incomplete|shostak|0.020|
|Bern_coeffs_minmax_rec_TCC6|✅ proved - incomplete|shostak|3.022|
|Bern_coeffs_minmax_rec_TCC7|✅ proved - incomplete|shostak|0.013|
|Bern_coeffs_minmax_TCC1|✅ proved - complete|shostak|0.020|
|Bern_coeffs_minmax_TCC2|✅ proved - incomplete|shostak|0.040|
|Bern_coeffs_minmax_length|✅ proved - incomplete|shostak|0.010|
|Bern_coeffs_minmax_maxdepth|✅ proved - incomplete|shostak|0.020|
|Bern_coeffs_minmax_var|✅ proved - incomplete|shostak|0.137|
|list2array_sound_pi|✅ proved - incomplete|shostak|0.311|
|Bernstein_minmax_rec_TCC1|✅ proved - complete|shostak|0.010|
|Bernstein_minmax_rec_TCC2|✅ proved - incomplete|shostak|0.161|
|Bernstein_minmax_rec_TCC3|✅ proved - incomplete|shostak|0.050|
|Bernstein_minmax_rec_TCC4|✅ proved - incomplete|shostak|0.075|
|Bernstein_minmax_rec_TCC5|✅ proved - incomplete|shostak|0.086|
|Bernstein_minmax_rec_TCC6|✅ proved - incomplete|shostak|6.997|
|Bernstein_minmax_rec_TCC7|✅ proved - incomplete|shostak|3.276|
|Bernstein_minmax_TCC1|✅ proved - complete|shostak|0.010|

## `a2l__bernstein_minmax`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|a2l__Bern_coeffs_minmax_rec_TCC1|✅ proved - incomplete|shostak|0.057|
|a2l__Bern_coeffs_minmax_rec_TCC2|✅ proved - incomplete|shostak|0.030|
|a2l__Bern_coeffs_minmax_rec_TCC3|✅ proved - incomplete|shostak|0.039|
|a2l__Bern_coeffs_minmax_rec_TCC4|✅ proved - incomplete|shostak|0.081|
|a2l__Bern_coeffs_minmax_rec_TCC5|✅ proved - incomplete|shostak|0.030|
|a2l__Bern_coeffs_minmax_rec_TCC6|✅ proved - incomplete|shostak|0.222|
|a2l__Bern_coeffs_minmax_rec_TCC7|✅ proved - incomplete|shostak|0.691|
|a2l__Bern_coeffs_minmax_rec_TCC8|✅ proved - incomplete|shostak|0.067|
|a2l__Bern_coeffs_minmax_TCC1|✅ proved - incomplete|shostak|0.010|
|a2l__Bern_coeffs_minmax_TCC2|✅ proved - incomplete|shostak|0.020|
|a2l__Bern_coeffs_minmax_TCC3|✅ proved - incomplete|shostak|0.064|
|polylist_represents_translist_polylist|✅ proved - incomplete|shostak|0.423|
|a2l__Bern_split_left_mpoly__homomorphic|✅ proved - incomplete|shostak|0.021|
|a2l__Bern_split_right_mpoly__homomorphic|✅ proved - incomplete|shostak|0.010|
|a2l__Bernstein_minmax_rec_TCC1|✅ proved - incomplete|shostak|0.020|
|a2l__Bernstein_minmax_rec_TCC2|✅ proved - incomplete|shostak|0.016|
|a2l__Bernstein_minmax_rec_TCC3|✅ proved - incomplete|shostak|0.120|
|a2l__Bernstein_minmax_rec_TCC4|✅ proved - incomplete|shostak|0.035|
|a2l__Bernstein_minmax_rec_TCC5|✅ proved - incomplete|shostak|0.275|
|a2l__Bernstein_minmax_rec_TCC6|✅ proved - incomplete|shostak|1.010|
|a2l__Bernstein_minmax_rec_TCC7|✅ proved - incomplete|shostak|2.615|
|a2l__Bernstein_minmax_rec_TCC8|✅ proved - incomplete|shostak|1.452|
|a2l__Bernstein_minmax_rec_TCC9|✅ proved - incomplete|shostak|0.294|
|a2l__Bernstein_minmax_rec_TCC10|✅ proved - incomplete|shostak|4.118|
|a2l__Bernstein_minmax_TCC1|✅ proved - incomplete|shostak|0.020|
|a2l__Bernstein_minmax_TCC2|✅ proved - incomplete|shostak|0.030|

## `a2l__vardirselector`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|a2l__var_coeff_range_rec_TCC1|✅ proved - incomplete|shostak|0.100|
|a2l__var_coeff_range_rec_TCC2|✅ proved - incomplete|shostak|0.020|
|a2l__var_maxcoeff_rec_TCC1|✅ proved - incomplete|shostak|0.030|
|a2l__var_maxcoeff_rec_TCC2|✅ proved - incomplete|shostak|0.020|
|a2l__var_maxcoeff_rec_TCC3|✅ proved - incomplete|shostak|0.010|
|a2l__var_maxcoeff_rec_TCC4|✅ proved - complete|shostak|0.014|
|a2l__MaxVarMinDir_TCC1|✅ proved - complete|shostak|0.000|

## `a2l__multi_bernstein`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|a2l__bsproduct_eval_TCC1|✅ proved - incomplete|shostak|0.020|
|a2l__bsproduct_eval__homomorphism|✅ proved - incomplete|shostak|0.694|
|a2l__multibs_eval__homomorphism|✅ proved - incomplete|shostak|0.000|
|a2l__multibscoeff_homomorphism|✅ proved - incomplete|shostak|0.464|
|a2l__multibscoeff_id|✅ proved - incomplete|shostak|0.052|
|a2l__eval_X_between__homomorphism|✅ proved - incomplete|shostak|0.013|
|a2l__forall_X_between__homorphism|✅ proved - incomplete|shostak|0.025|
|a2l__Bern_split_left_mono_TCC1|✅ proved - incomplete|shostak|0.030|
|a2l__Bern_split_left_mono__homomorphism|✅ proved - incomplete|shostak|1.403|
|a2l__Bern_split_right_mono_TCC1|✅ proved - incomplete|shostak|0.030|
|a2l__Bern_split_right_mono_TCC2|✅ proved - incomplete|shostak|0.040|
|a2l__Bern_split_right_mono_TCC3|✅ proved - incomplete|shostak|0.031|
|a2l__Bern_split_right_mono__homomorphism|✅ proved - incomplete|shostak|1.722|
|a2l__Bern_split_left_mpoly__homomorphism|✅ proved - incomplete|shostak|0.752|
|a2l__Bern_split_right_mpoly__homomorphism|✅ proved - incomplete|shostak|0.946|

## `multibernstein_into_polylist`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|represents_TCC1|✅ proved - complete|shostak|0.030|
|represents_TCC2|✅ proved - incomplete|shostak|0.140|
|polyproduct__represents_TCC1|✅ proved - complete|shostak|0.040|
|polylist__represents_multibernstein|✅ proved - incomplete|shostak|0.762|
|representation__is_canonical|✅ proved - incomplete|shostak|0.188|

## `a2l__util`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|maximum_degree_TCC1|✅ proved - incomplete|shostak|0.020|
|maximum_degree_TCC2|✅ proved - incomplete|shostak|0.020|
|maximum_degree_TCC3|✅ proved - complete|shostak|0.010|
|maximum_degree_TCC4|✅ proved - incomplete|shostak|0.031|
|maximum_degree_TCC5|✅ proved - incomplete|shostak|0.040|
|maximum_degree_TCC6|✅ proved - complete|shostak|0.010|

## `vardirselector_into_a2lvardirselector`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|represented_by_TCC1|✅ proved - incomplete|shostak|0.030|

## `MPoly`
No formula declaration found.
## `multi_polylist`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|maxnum_TCC1|✅ proved - complete|shostak|0.010|
|maxnum_TCC2|✅ proved - incomplete|shostak|0.010|
|max_TCC1|✅ proved - incomplete|shostak|0.130|
|max_TCC2|✅ proved - incomplete|shostak|0.074|
|max_TCC3|✅ proved - incomplete|shostak|0.040|
|max_TCC4|✅ proved - incomplete|shostak|0.040|
|max_TCC5|✅ proved - incomplete|shostak|0.050|
|max_TCC6|✅ proved - incomplete|shostak|0.104|
|max_TCC7|✅ proved - complete|shostak|0.020|
|max_TCC8|✅ proved - complete|shostak|0.010|
|max_TCC9|✅ proved - incomplete|shostak|0.080|
|max_TCC10|✅ proved - incomplete|shostak|0.899|
|max_id|✅ proved - incomplete|shostak|0.080|
|max_cdr_TCC1|✅ proved - incomplete|shostak|0.040|
|max_cdr|✅ proved - incomplete|shostak|0.309|
|max_sym|✅ proved - incomplete|shostak|0.214|
|max_assoc|✅ proved - incomplete|shostak|0.478|
|varmono_TCC1|✅ proved - incomplete|shostak|0.020|
|varmono_TCC2|✅ proved - complete|shostak|0.000|
|monolist_eval_rec_TCC1|✅ proved - incomplete|shostak|0.056|
|monolist_eval_rec_TCC2|✅ proved - incomplete|shostak|0.090|
|monolist_eval_rec_TCC3|✅ proved - complete|shostak|0.010|
|monolist_eval_rec_TCC4|✅ proved - incomplete|shostak|0.020|
|monolist_eval_rec_TCC5|✅ proved - complete|shostak|0.020|
|monolist_eval_rec_TCC6|✅ proved - incomplete|shostak|1.239|
|monolist_eval_prod_TCC1|✅ proved - incomplete|shostak|0.020|
|monolist_eval_prod|✅ proved - incomplete|shostak|0.120|
|monosum_TCC1|✅ proved - incomplete|shostak|0.170|
|monosum_TCC2|✅ proved - incomplete|shostak|0.170|
|monosum_TCC3|✅ proved - incomplete|shostak|1.208|
|meval_TCC1|✅ proved - complete|shostak|0.021|
|meval_TCC2|✅ proved - incomplete|shostak|0.050|
|meval_TCC3|✅ proved - complete|shostak|0.010|
|meval_sigma|✅ proved - incomplete|shostak|0.821|
|degree_TCC1|✅ proved - incomplete|shostak|0.020|
|degree_TCC2|✅ proved - incomplete|shostak|0.133|
|degree_TCC3|✅ proved - incomplete|shostak|0.030|
|degree_TCC4|✅ proved - incomplete|shostak|0.954|
|degree_zero|✅ proved - incomplete|shostak|0.485|
|multipoly_to_mpoly_TCC1|✅ proved - incomplete|shostak|0.010|
|mp_simp_rec_TCC1|✅ proved - incomplete|shostak|0.064|
|mp_simp_rec_TCC2|✅ proved - incomplete|shostak|0.140|
|mp_simp_rec_TCC3|✅ proved - complete|shostak|0.019|
|mp_simp_rec_TCC4|✅ proved - incomplete|shostak|0.080|
|mp_simp_rec_TCC5|✅ proved - incomplete|shostak|0.190|
|mp_simp_rec_TCC6|✅ proved - complete|shostak|0.020|
|mp_simp_rec_TCC7|✅ proved - incomplete|shostak|0.080|
|mp_simp_rec_TCC8|✅ proved - incomplete|shostak|0.206|
|mp_simp_rec_TCC9|✅ proved - complete|shostak|0.020|
|mp_simp_rec_TCC10|✅ proved - incomplete|shostak|0.245|
|mp_simp_rec_TCC11|✅ proved - incomplete|shostak|0.265|
|mp_simp_rec_TCC12|✅ proved - incomplete|shostak|0.215|
|mp_simp_rec_TCC13|✅ proved - incomplete|shostak|0.155|
|mp_simp_TCC1|✅ proved - incomplete|shostak|0.100|
|mpsum_TCC1|✅ proved - incomplete|shostak|0.125|
|mpprod_rec_TCC1|✅ proved - incomplete|shostak|0.040|
|mpprod_rec_TCC2|✅ proved - incomplete|shostak|0.106|
|mpprod_rec_TCC3|✅ proved - complete|shostak|0.020|
|mpprod_rec_TCC4|✅ proved - incomplete|shostak|0.165|
|mpprod_rec_TCC5|✅ proved - incomplete|shostak|0.060|
|mpprod_rec_TCC6|✅ proved - incomplete|shostak|0.070|
|mpprod_rec_TCC7|✅ proved - incomplete|shostak|0.235|
|mpprod_rec_TCC8|✅ proved - incomplete|shostak|0.084|
|mpprod_rec_TCC9|✅ proved - incomplete|shostak|0.070|
|mpprod_rec_TCC10|✅ proved - incomplete|shostak|0.449|
|mpprod_TCC1|✅ proved - incomplete|shostak|0.030|
|mpscal_TCC1|✅ proved - incomplete|shostak|0.040|
|multipolylist_eval_TCC1|✅ proved - incomplete|shostak|0.090|
|multipolylist_eval|✅ proved - incomplete|shostak|2.150|
|multipolylist_const|✅ proved - incomplete|shostak|0.050|
|multipolylist_monom_TCC1|✅ proved - complete|shostak|0.010|
|multipolylist_monom|✅ proved - incomplete|shostak|0.474|
|multipolylist_var|✅ proved - incomplete|shostak|0.040|
|multipolylist_varn|✅ proved - incomplete|shostak|0.050|
|multipolylist_sum|✅ proved - incomplete|shostak|0.039|
|multipolylist_prod|✅ proved - incomplete|shostak|0.010|
|multipolylist_scal|✅ proved - incomplete|shostak|0.060|
|multipolylist_pow_TCC1|✅ proved - incomplete|shostak|0.010|
|multipolylist_pow|✅ proved - incomplete|shostak|0.220|
|multipolylist_neg|✅ proved - incomplete|shostak|0.044|
|multipolylist_minus|✅ proved - incomplete|shostak|0.040|
|multipolylist_div|✅ proved - incomplete|shostak|0.050|
|multipolylist_sq|✅ proved - incomplete|shostak|0.025|

## `poly_minmax`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sound_poly_lb_le_ub|✅ proved - incomplete|shostak|0.095|
|multipolynomial_minmax_TCC1|✅ proved - incomplete|shostak|4.090|
|a2l__multipolynomial_minmax_TCC1|✅ proved - incomplete|shostak|0.030|
|a2l__multipolynomial_minmax__equivalence|✅ proved - incomplete|shostak|0.080|

## `strat_util`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|multipoly_minmax_sound|✅ proved - incomplete|shostak|0.140|
|multipoly_strategy_TCC1|✅ proved - incomplete|shostak|1.731|
|multipoly_strategy_TCC2|✅ proved - incomplete|shostak|1.729|
|multipoly_strategy_true|✅ proved - incomplete|shostak|0.243|
|multipoly_strategy_false|✅ proved - incomplete|shostak|0.133|
|multipoly_strategy_counterexample|✅ proved - incomplete|shostak|0.184|
|a2l__multipoly_strategy_TCC1|✅ proved - incomplete|shostak|0.683|
|a2l__multipoly_strategy_TCC2|✅ proved - incomplete|shostak|0.686|
|a2l__multipoly_strategy__equivalence|✅ proved - incomplete|shostak|0.025|
|a2l__multipoly_strategy_true|✅ proved - incomplete|shostak|0.030|
|a2l__multipoly_strategy_false|✅ proved - incomplete|shostak|0.020|
|a2l__multipoly_strategy_counterexample|✅ proved - incomplete|shostak|0.016|

## `strategies`
No formula declaration found.
## `boxes_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|setnth_box_TCC1|✅ proved - incomplete|shostak|0.030|
|setnth_box_TCC2|✅ proved - incomplete|shostak|0.020|
|volume_TCC1|✅ proved - complete|shostak|0.010|
|volume_TCC2|✅ proved - complete|shostak|0.010|
|volume_TCC3|✅ proved - incomplete|shostak|0.020|
|volume_TCC4|✅ proved - incomplete|shostak|0.015|
|volume_TCC5|✅ proved - incomplete|shostak|0.020|

## `boxes`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|unpack_TCC1|✅ proved - incomplete|shostak|0.030|
|neg_mp_TCC1|✅ proved - incomplete|shostak|0.075|
|Boxes_strategy_rec_TCC1|✅ proved - complete|shostak|0.010|
|Boxes_strategy_rec_TCC2|✅ proved - incomplete|shostak|0.060|
|Boxes_strategy_rec_TCC3|✅ proved - incomplete|shostak|0.278|
|Boxes_strategy_rec_TCC4|✅ proved - incomplete|shostak|0.234|
|Boxes_strategy_TCC1|✅ proved - complete|shostak|0.000|
|boxes_strategy_and_TCC1|✅ proved - incomplete|shostak|0.291|
|boxes_strategy_and_TCC2|✅ proved - incomplete|shostak|0.283|
|boxes_strategy_and_TCC3|✅ proved - incomplete|shostak|0.425|
|boxes_strategy_and_TCC4|✅ proved - incomplete|shostak|0.744|

## `tests`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|multipoly_eval_test_1|✅ proved - incomplete|shostak|0.070|
|multipoly_eval_test2|✅ proved - incomplete|shostak|0.073|
|multipoly_eval_test3_TCC1|✅ proved - complete|shostak|0.010|
|multipoly_eval_test3_TCC2|✅ proved - complete|shostak|0.000|
|multipoly_eval_test3|✅ proved - incomplete|shostak|3.665|
|bspoly_convert_poly_test|✅ proved - incomplete|shostak|0.098|

## `grizzly`
No formula declaration found.## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Mac OS X (Intel)] (Nov 14, 2020 23:13)|
| Patch Version| n/a|
| Library Path| `/Applications/pvs-7.1.0/pvslib/`<br/>`/Applications/pvs-7.1.0/lib/`<br/>`/Applications/pvs-7.1.0/pvslib/float/`<br/>`/Applications/pvs-7.1.0/pvslib/pvsio_utils/`|
| Loaded Patches | `/Applications/pvs-7.1.0/pvslib/.pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230712-static-update.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230710-tcc-gen.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230707-defattach.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230706-extrategies.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210323-wish.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210225-cl2pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210715a.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210715.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210707.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210706.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210511.lisp`|
