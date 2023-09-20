# Summary for `Bernstein`
Run started at 22:38:21 9/19/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **307**   | **307**    | **307**    | **0**  | **2:33.175 s**   |
|top|0|0|0|0|0.000|
|util|18|18|18|0|2.806|
|minmax|5|5|5|0|1.801|
|multi_bernstein|41|41|41|0|26.861|
|multi_polynomial|23|23|23|0|15.725|
|poly2bernstein|3|3|3|0|0.702|
|vardirselector|8|8|8|0|0.361|
|bernstein_minmax|26|26|26|0|27.134|
|a2l__bernstein_minmax|26|26|26|0|14.999|
|a2l__vardirselector|7|7|7|0|0.341|
|a2l__multi_bernstein|15|15|15|0|9.956|
|multibernstein_into_polylist|5|5|5|0|1.887|
|a2l__util|6|6|6|0|0.209|
|vardirselector_into_a2lvardirselector|1|1|1|0|0.068|
|MPoly|0|0|0|0|0.000|
|multi_polylist|83|83|83|0|20.240|
|poly_minmax|4|4|4|0|10.512|
|strat_util|12|12|12|0|9.097|
|strategies|0|0|0|0|0.000|
|boxes_def|7|7|7|0|0.200|
|boxes|11|11|11|0|3.885|
|tests|6|6|6|0|6.391|
|grizzly|0|0|0|0|0.000|
## Detailed Summary 
## `top`
No formula declaration found.
## `util`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|relreal_scal|✅ proved - incomplete|shostak|0.267|
|edge_point?_TCC1|✅ proved - complete|shostak|0.010|
|boxbetween_eq_bnd|✅ proved - complete|shostak|0.030|
|normalize_lambda_TCC1|✅ proved - incomplete|shostak|0.091|
|normalize_lambda_TCC2|✅ proved - incomplete|shostak|0.070|
|normalize_lambda_TCC3|✅ proved - incomplete|shostak|0.072|
|normalize_lambda_unitbox|✅ proved - incomplete|shostak|0.330|
|denormalize_listreal_rec_TCC1|✅ proved - complete|shostak|0.010|
|denormalize_listreal_rec_TCC2|✅ proved - complete|shostak|0.050|
|denormalize_listreal_rec_TCC3|✅ proved - incomplete|shostak|0.164|
|denormalize_listreal_rec_TCC4|✅ proved - incomplete|shostak|0.050|
|denormalize_listreal_rec_TCC5|✅ proved - complete|shostak|0.020|
|denormalize_listreal_rec_TCC6|✅ proved - incomplete|shostak|0.065|
|denormalize_listreal_rec_TCC7|✅ proved - complete|shostak|0.030|
|denormalize_listreal_rec_TCC8|✅ proved - incomplete|shostak|1.269|
|denormalize_listreal_TCC1|✅ proved - complete|shostak|0.010|
|translist_polylist_id|✅ proved - incomplete|shostak|0.218|
|corner_to_point_TCC1|✅ proved - incomplete|shostak|0.050|

## `minmax`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|between_combine_lr|✅ proved - incomplete|shostak|0.382|
|false_globalexit_inv|✅ proved - incomplete|shostak|0.100|
|rel_globalexit_inv|✅ proved - incomplete|shostak|0.628|
|eps_localexit_inv|✅ proved - incomplete|shostak|0.504|
|rel_localexit_inv|✅ proved - incomplete|shostak|0.187|

## `multi_bernstein`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_sigma_bijection_TCC1|✅ proved - complete|shostak|0.090|
|bsproduct_eval_TCC1|✅ proved - incomplete|shostak|0.030|
|multibs_eval_rec_TCC1|✅ proved - incomplete|shostak|0.034|
|multibs_eval_rec_TCC2|✅ proved - incomplete|shostak|0.030|
|multibs_eval_rec_TCC3|✅ proved - complete|shostak|0.010|
|multibs_eval_1_term|✅ proved - incomplete|shostak|2.540|
|multibs_eval_equiv|✅ proved - incomplete|shostak|3.240|
|multibs_eval_below_mono|✅ proved - incomplete|shostak|0.422|
|multibs_eval_id|✅ proved - incomplete|shostak|0.595|
|multibscoeff_id|✅ proved - incomplete|shostak|0.253|
|Bern_coeffs_rel_implic|✅ proved - incomplete|shostak|0.100|
|Bern_coeffs_rel_def|✅ proved - incomplete|shostak|0.739|
|multibs_cornerpoint_coeff|✅ proved - incomplete|shostak|1.336|
|forall_X_id|✅ proved - incomplete|shostak|0.103|
|forall_X_between_id|✅ proved - incomplete|shostak|0.099|
|Bern_coeffs_endpoints_rel_rec_TCC1|✅ proved - incomplete|shostak|0.027|
|Bern_coeffs_endpoints_rel_rec_TCC2|✅ proved - incomplete|shostak|0.040|
|Bern_coeffs_endpoints_rel_rec_TCC3|✅ proved - complete|shostak|0.010|
|Bern_coeffs_endpoints_rel_TCC1|✅ proved - incomplete|shostak|0.010|
|Bern_coeffs_endpoints_rel_def|✅ proved - incomplete|shostak|1.942|
|Bern_coeffs_counterexample|✅ proved - incomplete|shostak|1.882|
|Bern_le|✅ proved - incomplete|shostak|1.954|
|Bern_lt|✅ proved - incomplete|shostak|0.470|
|Bern_ge|✅ proved - incomplete|shostak|1.839|
|Bern_gt|✅ proved - incomplete|shostak|0.465|
|Bern_rel|✅ proved - incomplete|shostak|0.071|
|forall_X_between_minmax|✅ proved - incomplete|shostak|0.083|
|Bern_split_left_mono_TCC1|✅ proved - incomplete|shostak|0.038|
|Bern_split_right_mono_TCC1|✅ proved - incomplete|shostak|0.050|
|Bern_split_right_mono_TCC2|✅ proved - incomplete|shostak|0.050|
|Bern_split_right_mono_TCC3|✅ proved - incomplete|shostak|0.044|
|Bern_split_bspoly|✅ proved - incomplete|shostak|3.652|
|Bern_eval_left|✅ proved - incomplete|shostak|0.896|
|Bern_eval_left_def|✅ proved - incomplete|shostak|0.120|
|Bern_eval_right|✅ proved - incomplete|shostak|0.000|
|Bern_eval_right_def|✅ proved - incomplete|shostak|0.090|
|Bernstein_sweep_TCC1|✅ proved - incomplete|shostak|0.053|
|Bernstein_sweep_TCC2|✅ proved - complete|shostak|0.020|
|Bern_sweep_right_TCC1|✅ proved - incomplete|shostak|0.040|
|Bern_sweep_eval_left|✅ proved - incomplete|shostak|1.675|
|Bern_sweep_eval_right|✅ proved - incomplete|shostak|1.719|

## `multi_polynomial`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_sigma_bijection_TCC1|✅ proved - complete|shostak|0.028|
|multipoly_translate_denormalize_TCC1|✅ proved - incomplete|shostak|0.050|
|multipoly_translate_denormalize|✅ proved - incomplete|shostak|1.308|
|multipoly_translate_normalize_TCC1|✅ proved - incomplete|shostak|0.095|
|multipoly_translate_normalize_TCC2|✅ proved - incomplete|shostak|0.110|
|multipoly_translate_normalize|✅ proved - incomplete|shostak|1.575|
|multipoly_translate_bounded_def_TCC1|✅ proved - incomplete|shostak|0.061|
|multipoly_translate_bounded_def|✅ proved - incomplete|shostak|0.565|
|multipoly_translate_def|✅ proved - incomplete|shostak|2.554|
|multipoly_zero_above_def|✅ proved - incomplete|shostak|0.304|
|multipoly_add_coeff_TCC1|✅ proved - incomplete|shostak|0.040|
|multipoly_add_def|✅ proved - incomplete|shostak|1.520|
|multipoly_scalar_def|✅ proved - incomplete|shostak|0.146|
|multipoly_sub_def|✅ proved - incomplete|shostak|0.137|
|polyproduct_product_TCC1|✅ proved - incomplete|shostak|0.094|
|polyproduct_product_def|✅ proved - incomplete|shostak|4.534|
|multipoly_product_coeff_TCC1|✅ proved - incomplete|shostak|0.094|
|multipoly_product_coeff_TCC2|✅ proved - complete|shostak|0.010|
|multipoly_product_coeff_TCC3|✅ proved - incomplete|shostak|0.150|
|multipoly_product_def_TCC1|✅ proved - complete|shostak|0.010|
|multipoly_product_def|✅ proved - incomplete|shostak|2.055|
|multipoly_sq_def_TCC1|✅ proved - incomplete|shostak|0.100|
|multipoly_sq_def|✅ proved - incomplete|shostak|0.185|

## `poly2bernstein`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|bs_convert_mono_TCC1|✅ proved - incomplete|shostak|0.040|
|bs_convert_mono_TCC2|✅ proved - incomplete|shostak|0.030|
|bs_convert_poly_def|✅ proved - incomplete|shostak|0.632|

## `vardirselector`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|var_coeff_range_rec_TCC1|✅ proved - incomplete|shostak|0.070|
|var_coeff_range_rec_TCC2|✅ proved - incomplete|shostak|0.148|
|var_coeff_range_rec_TCC3|✅ proved - incomplete|shostak|0.020|
|var_maxcoeff_rec_TCC1|✅ proved - incomplete|shostak|0.053|
|var_maxcoeff_rec_TCC2|✅ proved - incomplete|shostak|0.030|
|var_maxcoeff_rec_TCC3|✅ proved - incomplete|shostak|0.020|
|var_maxcoeff_rec_TCC4|✅ proved - complete|shostak|0.010|
|MaxVarMinDir_TCC1|✅ proved - complete|shostak|0.010|

## `bernstein_minmax`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|unit_box_lb_id|✅ proved - incomplete|shostak|0.117|
|unit_box_ub_id|✅ proved - incomplete|shostak|0.128|
|sound_id|✅ proved - incomplete|shostak|0.095|
|sound_lb_le_ub|✅ proved - incomplete|shostak|0.030|
|combine_sound|✅ proved - incomplete|shostak|1.131|
|Bern_coeffs_minmax_rec_TCC1|✅ proved - incomplete|shostak|0.486|
|Bern_coeffs_minmax_rec_TCC2|✅ proved - incomplete|shostak|0.020|
|Bern_coeffs_minmax_rec_TCC3|✅ proved - incomplete|shostak|0.116|
|Bern_coeffs_minmax_rec_TCC4|✅ proved - incomplete|shostak|0.040|
|Bern_coeffs_minmax_rec_TCC5|✅ proved - incomplete|shostak|0.030|
|Bern_coeffs_minmax_rec_TCC6|✅ proved - incomplete|shostak|4.624|
|Bern_coeffs_minmax_rec_TCC7|✅ proved - incomplete|shostak|0.030|
|Bern_coeffs_minmax_TCC1|✅ proved - complete|shostak|0.023|
|Bern_coeffs_minmax_TCC2|✅ proved - incomplete|shostak|0.060|
|Bern_coeffs_minmax_length|✅ proved - incomplete|shostak|0.026|
|Bern_coeffs_minmax_maxdepth|✅ proved - incomplete|shostak|0.030|
|Bern_coeffs_minmax_var|✅ proved - incomplete|shostak|0.211|
|list2array_sound_pi|✅ proved - incomplete|shostak|0.000|
|Bernstein_minmax_rec_TCC1|✅ proved - complete|shostak|0.020|
|Bernstein_minmax_rec_TCC2|✅ proved - incomplete|shostak|0.263|
|Bernstein_minmax_rec_TCC3|✅ proved - incomplete|shostak|0.075|
|Bernstein_minmax_rec_TCC4|✅ proved - incomplete|shostak|0.124|
|Bernstein_minmax_rec_TCC5|✅ proved - incomplete|shostak|0.135|
|Bernstein_minmax_rec_TCC6|✅ proved - incomplete|shostak|10.777|
|Bernstein_minmax_rec_TCC7|✅ proved - incomplete|shostak|8.523|
|Bernstein_minmax_TCC1|✅ proved - complete|shostak|0.020|

## `a2l__bernstein_minmax`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|a2l__Bern_coeffs_minmax_rec_TCC1|✅ proved - incomplete|shostak|0.093|
|a2l__Bern_coeffs_minmax_rec_TCC2|✅ proved - incomplete|shostak|0.040|
|a2l__Bern_coeffs_minmax_rec_TCC3|✅ proved - incomplete|shostak|0.067|
|a2l__Bern_coeffs_minmax_rec_TCC4|✅ proved - incomplete|shostak|0.128|
|a2l__Bern_coeffs_minmax_rec_TCC5|✅ proved - incomplete|shostak|0.060|
|a2l__Bern_coeffs_minmax_rec_TCC6|✅ proved - incomplete|shostak|0.348|
|a2l__Bern_coeffs_minmax_rec_TCC7|✅ proved - incomplete|shostak|1.095|
|a2l__Bern_coeffs_minmax_rec_TCC8|✅ proved - incomplete|shostak|0.100|
|a2l__Bern_coeffs_minmax_TCC1|✅ proved - incomplete|shostak|0.030|
|a2l__Bern_coeffs_minmax_TCC2|✅ proved - incomplete|shostak|0.026|
|a2l__Bern_coeffs_minmax_TCC3|✅ proved - incomplete|shostak|0.095|
|polylist_represents_translist_polylist|✅ proved - incomplete|shostak|0.692|
|a2l__Bern_split_left_mpoly__homomorphic|✅ proved - incomplete|shostak|0.034|
|a2l__Bern_split_right_mpoly__homomorphic|✅ proved - incomplete|shostak|0.035|
|a2l__Bernstein_minmax_rec_TCC1|✅ proved - incomplete|shostak|0.030|
|a2l__Bernstein_minmax_rec_TCC2|✅ proved - incomplete|shostak|0.030|
|a2l__Bernstein_minmax_rec_TCC3|✅ proved - incomplete|shostak|0.174|
|a2l__Bernstein_minmax_rec_TCC4|✅ proved - incomplete|shostak|0.070|
|a2l__Bernstein_minmax_rec_TCC5|✅ proved - incomplete|shostak|0.439|
|a2l__Bernstein_minmax_rec_TCC6|✅ proved - incomplete|shostak|1.639|
|a2l__Bernstein_minmax_rec_TCC7|✅ proved - incomplete|shostak|4.272|
|a2l__Bernstein_minmax_rec_TCC8|✅ proved - incomplete|shostak|2.362|
|a2l__Bernstein_minmax_rec_TCC9|✅ proved - incomplete|shostak|0.463|
|a2l__Bernstein_minmax_rec_TCC10|✅ proved - incomplete|shostak|2.592|
|a2l__Bernstein_minmax_TCC1|✅ proved - incomplete|shostak|0.030|
|a2l__Bernstein_minmax_TCC2|✅ proved - incomplete|shostak|0.055|

## `a2l__vardirselector`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|a2l__var_coeff_range_rec_TCC1|✅ proved - incomplete|shostak|0.173|
|a2l__var_coeff_range_rec_TCC2|✅ proved - incomplete|shostak|0.040|
|a2l__var_maxcoeff_rec_TCC1|✅ proved - incomplete|shostak|0.058|
|a2l__var_maxcoeff_rec_TCC2|✅ proved - incomplete|shostak|0.030|
|a2l__var_maxcoeff_rec_TCC3|✅ proved - incomplete|shostak|0.020|
|a2l__var_maxcoeff_rec_TCC4|✅ proved - complete|shostak|0.010|
|a2l__MaxVarMinDir_TCC1|✅ proved - complete|shostak|0.010|

## `a2l__multi_bernstein`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|a2l__bsproduct_eval_TCC1|✅ proved - incomplete|shostak|0.040|
|a2l__bsproduct_eval__homomorphism|✅ proved - incomplete|shostak|1.056|
|a2l__multibs_eval__homomorphism|✅ proved - incomplete|shostak|0.325|
|a2l__multibscoeff_homomorphism|✅ proved - incomplete|shostak|0.717|
|a2l__multibscoeff_id|✅ proved - incomplete|shostak|0.078|
|a2l__eval_X_between__homomorphism|✅ proved - incomplete|shostak|0.035|
|a2l__forall_X_between__homorphism|✅ proved - incomplete|shostak|0.048|
|a2l__Bern_split_left_mono_TCC1|✅ proved - incomplete|shostak|0.030|
|a2l__Bern_split_left_mono__homomorphism|✅ proved - incomplete|shostak|2.125|
|a2l__Bern_split_right_mono_TCC1|✅ proved - incomplete|shostak|0.058|
|a2l__Bern_split_right_mono_TCC2|✅ proved - incomplete|shostak|0.050|
|a2l__Bern_split_right_mono_TCC3|✅ proved - incomplete|shostak|0.060|
|a2l__Bern_split_right_mono__homomorphism|✅ proved - incomplete|shostak|2.644|
|a2l__Bern_split_left_mpoly__homomorphism|✅ proved - incomplete|shostak|1.209|
|a2l__Bern_split_right_mpoly__homomorphism|✅ proved - incomplete|shostak|1.481|

## `multibernstein_into_polylist`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|represents_TCC1|✅ proved - complete|shostak|0.058|
|represents_TCC2|✅ proved - incomplete|shostak|0.206|
|polyproduct__represents_TCC1|✅ proved - complete|shostak|0.060|
|polylist__represents_multibernstein|✅ proved - incomplete|shostak|1.254|
|representation__is_canonical|✅ proved - incomplete|shostak|0.309|

## `a2l__util`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|maximum_degree_TCC1|✅ proved - incomplete|shostak|0.040|
|maximum_degree_TCC2|✅ proved - incomplete|shostak|0.030|
|maximum_degree_TCC3|✅ proved - complete|shostak|0.010|
|maximum_degree_TCC4|✅ proved - incomplete|shostak|0.059|
|maximum_degree_TCC5|✅ proved - incomplete|shostak|0.060|
|maximum_degree_TCC6|✅ proved - complete|shostak|0.010|

## `vardirselector_into_a2lvardirselector`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|represented_by_TCC1|✅ proved - incomplete|shostak|0.068|

## `MPoly`
No formula declaration found.
## `multi_polylist`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|maxnum_TCC1|✅ proved - complete|shostak|0.020|
|maxnum_TCC2|✅ proved - incomplete|shostak|0.020|
|max_TCC1|✅ proved - incomplete|shostak|0.209|
|max_TCC2|✅ proved - incomplete|shostak|0.134|
|max_TCC3|✅ proved - incomplete|shostak|0.060|
|max_TCC4|✅ proved - incomplete|shostak|0.060|
|max_TCC5|✅ proved - incomplete|shostak|0.084|
|max_TCC6|✅ proved - incomplete|shostak|0.180|
|max_TCC7|✅ proved - complete|shostak|0.024|
|max_TCC8|✅ proved - complete|shostak|0.030|
|max_TCC9|✅ proved - incomplete|shostak|0.120|
|max_TCC10|✅ proved - incomplete|shostak|1.415|
|max_id|✅ proved - incomplete|shostak|0.127|
|max_cdr_TCC1|✅ proved - incomplete|shostak|0.080|
|max_cdr|✅ proved - incomplete|shostak|0.444|
|max_sym|✅ proved - incomplete|shostak|0.358|
|max_assoc|✅ proved - incomplete|shostak|0.767|
|varmono_TCC1|✅ proved - incomplete|shostak|0.020|
|varmono_TCC2|✅ proved - complete|shostak|0.010|
|monolist_eval_rec_TCC1|✅ proved - incomplete|shostak|0.080|
|monolist_eval_rec_TCC2|✅ proved - incomplete|shostak|0.145|
|monolist_eval_rec_TCC3|✅ proved - complete|shostak|0.020|
|monolist_eval_rec_TCC4|✅ proved - incomplete|shostak|0.030|
|monolist_eval_rec_TCC5|✅ proved - complete|shostak|0.030|
|monolist_eval_rec_TCC6|✅ proved - incomplete|shostak|1.963|
|monolist_eval_prod_TCC1|✅ proved - incomplete|shostak|0.038|
|monolist_eval_prod|✅ proved - incomplete|shostak|0.200|
|monosum_TCC1|✅ proved - incomplete|shostak|0.278|
|monosum_TCC2|✅ proved - incomplete|shostak|0.276|
|monosum_TCC3|✅ proved - incomplete|shostak|1.891|
|meval_TCC1|✅ proved - complete|shostak|0.030|
|meval_TCC2|✅ proved - incomplete|shostak|0.082|
|meval_TCC3|✅ proved - complete|shostak|0.020|
|meval_sigma|✅ proved - incomplete|shostak|1.235|
|degree_TCC1|✅ proved - incomplete|shostak|0.030|
|degree_TCC2|✅ proved - incomplete|shostak|0.214|
|degree_TCC3|✅ proved - incomplete|shostak|0.050|
|degree_TCC4|✅ proved - incomplete|shostak|1.515|
|degree_zero|✅ proved - incomplete|shostak|0.770|
|multipoly_to_mpoly_TCC1|✅ proved - incomplete|shostak|0.020|
|mp_simp_rec_TCC1|✅ proved - incomplete|shostak|0.100|
|mp_simp_rec_TCC2|✅ proved - incomplete|shostak|0.209|
|mp_simp_rec_TCC3|✅ proved - complete|shostak|0.030|
|mp_simp_rec_TCC4|✅ proved - incomplete|shostak|0.128|
|mp_simp_rec_TCC5|✅ proved - incomplete|shostak|0.291|
|mp_simp_rec_TCC6|✅ proved - complete|shostak|0.030|
|mp_simp_rec_TCC7|✅ proved - incomplete|shostak|0.140|
|mp_simp_rec_TCC8|✅ proved - incomplete|shostak|0.314|
|mp_simp_rec_TCC9|✅ proved - complete|shostak|0.030|
|mp_simp_rec_TCC10|✅ proved - incomplete|shostak|0.383|
|mp_simp_rec_TCC11|✅ proved - incomplete|shostak|0.414|
|mp_simp_rec_TCC12|✅ proved - incomplete|shostak|0.353|
|mp_simp_rec_TCC13|✅ proved - incomplete|shostak|0.235|
|mp_simp_TCC1|✅ proved - incomplete|shostak|0.160|
|mpsum_TCC1|✅ proved - incomplete|shostak|0.207|
|mpprod_rec_TCC1|✅ proved - incomplete|shostak|0.060|
|mpprod_rec_TCC2|✅ proved - incomplete|shostak|0.180|
|mpprod_rec_TCC3|✅ proved - complete|shostak|0.024|
|mpprod_rec_TCC4|✅ proved - incomplete|shostak|0.270|
|mpprod_rec_TCC5|✅ proved - incomplete|shostak|0.104|
|mpprod_rec_TCC6|✅ proved - incomplete|shostak|0.110|
|mpprod_rec_TCC7|✅ proved - incomplete|shostak|0.346|
|mpprod_rec_TCC8|✅ proved - incomplete|shostak|0.130|
|mpprod_rec_TCC9|✅ proved - incomplete|shostak|0.120|
|mpprod_rec_TCC10|✅ proved - incomplete|shostak|0.717|
|mpprod_TCC1|✅ proved - incomplete|shostak|0.034|
|mpscal_TCC1|✅ proved - incomplete|shostak|0.050|
|multipolylist_eval_TCC1|✅ proved - incomplete|shostak|0.140|
|multipolylist_eval|✅ proved - incomplete|shostak|0.000|
|multipolylist_const|✅ proved - incomplete|shostak|0.100|
|multipolylist_monom_TCC1|✅ proved - complete|shostak|0.020|
|multipolylist_monom|✅ proved - incomplete|shostak|0.826|
|multipolylist_var|✅ proved - incomplete|shostak|0.050|
|multipolylist_varn|✅ proved - incomplete|shostak|0.070|
|multipolylist_sum|✅ proved - incomplete|shostak|0.050|
|multipolylist_prod|✅ proved - incomplete|shostak|0.020|
|multipolylist_scal|✅ proved - incomplete|shostak|0.102|
|multipolylist_pow_TCC1|✅ proved - incomplete|shostak|0.020|
|multipolylist_pow|✅ proved - incomplete|shostak|0.344|
|multipolylist_neg|✅ proved - incomplete|shostak|0.065|
|multipolylist_minus|✅ proved - incomplete|shostak|0.070|
|multipolylist_div|✅ proved - incomplete|shostak|0.080|
|multipolylist_sq|✅ proved - incomplete|shostak|0.035|

## `poly_minmax`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sound_poly_lb_le_ub|✅ proved - incomplete|shostak|0.154|
|multipolynomial_minmax_TCC1|✅ proved - incomplete|shostak|10.185|
|a2l__multipolynomial_minmax_TCC1|✅ proved - incomplete|shostak|0.046|
|a2l__multipolynomial_minmax__equivalence|✅ proved - incomplete|shostak|0.127|

## `strat_util`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|multipoly_minmax_sound|✅ proved - incomplete|shostak|0.222|
|multipoly_strategy_TCC1|✅ proved - incomplete|shostak|2.812|
|multipoly_strategy_TCC2|✅ proved - incomplete|shostak|2.778|
|multipoly_strategy_true|✅ proved - incomplete|shostak|0.392|
|multipoly_strategy_false|✅ proved - incomplete|shostak|0.211|
|multipoly_strategy_counterexample|✅ proved - incomplete|shostak|0.295|
|a2l__multipoly_strategy_TCC1|✅ proved - incomplete|shostak|1.123|
|a2l__multipoly_strategy_TCC2|✅ proved - incomplete|shostak|1.121|
|a2l__multipoly_strategy__equivalence|✅ proved - incomplete|shostak|0.043|
|a2l__multipoly_strategy_true|✅ proved - incomplete|shostak|0.050|
|a2l__multipoly_strategy_false|✅ proved - incomplete|shostak|0.030|
|a2l__multipoly_strategy_counterexample|✅ proved - incomplete|shostak|0.020|

## `strategies`
No formula declaration found.
## `boxes_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|setnth_box_TCC1|✅ proved - incomplete|shostak|0.040|
|setnth_box_TCC2|✅ proved - incomplete|shostak|0.045|
|volume_TCC1|✅ proved - complete|shostak|0.010|
|volume_TCC2|✅ proved - complete|shostak|0.010|
|volume_TCC3|✅ proved - incomplete|shostak|0.030|
|volume_TCC4|✅ proved - incomplete|shostak|0.030|
|volume_TCC5|✅ proved - incomplete|shostak|0.035|

## `boxes`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|unpack_TCC1|✅ proved - incomplete|shostak|0.040|
|neg_mp_TCC1|✅ proved - incomplete|shostak|0.104|
|Boxes_strategy_rec_TCC1|✅ proved - complete|shostak|0.010|
|Boxes_strategy_rec_TCC2|✅ proved - incomplete|shostak|0.090|
|Boxes_strategy_rec_TCC3|✅ proved - incomplete|shostak|0.446|
|Boxes_strategy_rec_TCC4|✅ proved - incomplete|shostak|0.383|
|Boxes_strategy_TCC1|✅ proved - complete|shostak|0.010|
|boxes_strategy_and_TCC1|✅ proved - incomplete|shostak|0.474|
|boxes_strategy_and_TCC2|✅ proved - incomplete|shostak|0.443|
|boxes_strategy_and_TCC3|✅ proved - incomplete|shostak|0.704|
|boxes_strategy_and_TCC4|✅ proved - incomplete|shostak|1.181|

## `tests`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|multipoly_eval_test_1|✅ proved - incomplete|shostak|0.103|
|multipoly_eval_test2|✅ proved - incomplete|shostak|0.112|
|multipoly_eval_test3_TCC1|✅ proved - complete|shostak|0.010|
|multipoly_eval_test3_TCC2|✅ proved - complete|shostak|0.010|
|multipoly_eval_test3|✅ proved - incomplete|shostak|6.014|
|bspoly_convert_poly_test|✅ proved - incomplete|shostak|0.142|

## `grizzly`
No formula declaration found.## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib/pvsio_utils/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230712-static-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230710-tcc-gen.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230707-defattach.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230706-extrategies.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`|
