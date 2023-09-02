# Summary for `Bernstein`
Run started at 15:28:25 9/1/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **307**   | **307**    | **307**    | **0**  | **2:34.201 s**   |
|top|0|0|0|0|0.000|
|util|18|18|18|0|2.948|
|minmax|5|5|5|0|1.836|
|multi_bernstein|41|41|41|0|27.657|
|multi_polynomial|23|23|23|0|15.617|
|poly2bernstein|3|3|3|0|0.700|
|vardirselector|8|8|8|0|0.357|
|bernstein_minmax|26|26|26|0|27.102|
|a2l__bernstein_minmax|26|26|26|0|15.117|
|a2l__vardirselector|7|7|7|0|0.328|
|a2l__multi_bernstein|15|15|15|0|10.062|
|multibernstein_into_polylist|5|5|5|0|1.922|
|a2l__util|6|6|6|0|0.217|
|vardirselector_into_a2lvardirselector|1|1|1|0|0.066|
|MPoly|0|0|0|0|0.000|
|multi_polylist|83|83|83|0|20.279|
|poly_minmax|4|4|4|0|10.526|
|strat_util|12|12|12|0|9.065|
|strategies|0|0|0|0|0.000|
|boxes_def|7|7|7|0|0.209|
|boxes|11|11|11|0|3.923|
|tests|6|6|6|0|6.270|
|grizzly|0|0|0|0|0.000|
## Detailed Summary 
## `top`
No formula declaration found.
## `util`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|relreal_scal|✅ proved - incomplete|shostak|0.331|
|edge_point?_TCC1|✅ proved - complete|shostak|0.020|
|boxbetween_eq_bnd|✅ proved - complete|shostak|0.040|
|normalize_lambda_TCC1|✅ proved - incomplete|shostak|0.099|
|normalize_lambda_TCC2|✅ proved - incomplete|shostak|0.070|
|normalize_lambda_TCC3|✅ proved - incomplete|shostak|0.070|
|normalize_lambda_unitbox|✅ proved - incomplete|shostak|0.331|
|denormalize_listreal_rec_TCC1|✅ proved - complete|shostak|0.010|
|denormalize_listreal_rec_TCC2|✅ proved - complete|shostak|0.040|
|denormalize_listreal_rec_TCC3|✅ proved - incomplete|shostak|0.174|
|denormalize_listreal_rec_TCC4|✅ proved - incomplete|shostak|0.050|
|denormalize_listreal_rec_TCC5|✅ proved - complete|shostak|0.030|
|denormalize_listreal_rec_TCC6|✅ proved - incomplete|shostak|0.055|
|denormalize_listreal_rec_TCC7|✅ proved - complete|shostak|0.030|
|denormalize_listreal_rec_TCC8|✅ proved - incomplete|shostak|1.330|
|denormalize_listreal_TCC1|✅ proved - complete|shostak|0.010|
|translist_polylist_id|✅ proved - incomplete|shostak|0.218|
|corner_to_point_TCC1|✅ proved - incomplete|shostak|0.040|

## `minmax`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|between_combine_lr|✅ proved - incomplete|shostak|0.393|
|false_globalexit_inv|✅ proved - incomplete|shostak|0.103|
|rel_globalexit_inv|✅ proved - incomplete|shostak|0.646|
|eps_localexit_inv|✅ proved - incomplete|shostak|0.495|
|rel_localexit_inv|✅ proved - incomplete|shostak|0.199|

## `multi_bernstein`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_sigma_bijection_TCC1|✅ proved - complete|shostak|0.090|
|bsproduct_eval_TCC1|✅ proved - incomplete|shostak|0.035|
|multibs_eval_rec_TCC1|✅ proved - incomplete|shostak|0.040|
|multibs_eval_rec_TCC2|✅ proved - incomplete|shostak|0.030|
|multibs_eval_rec_TCC3|✅ proved - complete|shostak|0.010|
|multibs_eval_1_term|✅ proved - incomplete|shostak|2.627|
|multibs_eval_equiv|✅ proved - incomplete|shostak|3.363|
|multibs_eval_below_mono|✅ proved - incomplete|shostak|0.452|
|multibs_eval_id|✅ proved - incomplete|shostak|0.617|
|multibscoeff_id|✅ proved - incomplete|shostak|0.254|
|Bern_coeffs_rel_implic|✅ proved - incomplete|shostak|0.100|
|Bern_coeffs_rel_def|✅ proved - incomplete|shostak|0.764|
|multibs_cornerpoint_coeff|✅ proved - incomplete|shostak|1.376|
|forall_X_id|✅ proved - incomplete|shostak|0.098|
|forall_X_between_id|✅ proved - incomplete|shostak|0.100|
|Bern_coeffs_endpoints_rel_rec_TCC1|✅ proved - incomplete|shostak|0.031|
|Bern_coeffs_endpoints_rel_rec_TCC2|✅ proved - incomplete|shostak|0.030|
|Bern_coeffs_endpoints_rel_rec_TCC3|✅ proved - complete|shostak|0.010|
|Bern_coeffs_endpoints_rel_TCC1|✅ proved - incomplete|shostak|0.020|
|Bern_coeffs_endpoints_rel_def|✅ proved - incomplete|shostak|1.999|
|Bern_coeffs_counterexample|✅ proved - incomplete|shostak|1.928|
|Bern_le|✅ proved - incomplete|shostak|2.006|
|Bern_lt|✅ proved - incomplete|shostak|0.464|
|Bern_ge|✅ proved - incomplete|shostak|1.881|
|Bern_gt|✅ proved - incomplete|shostak|0.463|
|Bern_rel|✅ proved - incomplete|shostak|0.071|
|forall_X_between_minmax|✅ proved - incomplete|shostak|0.078|
|Bern_split_left_mono_TCC1|✅ proved - incomplete|shostak|0.040|
|Bern_split_right_mono_TCC1|✅ proved - incomplete|shostak|0.050|
|Bern_split_right_mono_TCC2|✅ proved - incomplete|shostak|0.050|
|Bern_split_right_mono_TCC3|✅ proved - incomplete|shostak|0.059|
|Bern_split_bspoly|✅ proved - incomplete|shostak|3.875|
|Bern_eval_left|✅ proved - incomplete|shostak|0.931|
|Bern_eval_left_def|✅ proved - incomplete|shostak|0.121|
|Bern_eval_right|✅ proved - incomplete|shostak|0.000|
|Bern_eval_right_def|✅ proved - incomplete|shostak|0.094|
|Bernstein_sweep_TCC1|✅ proved - incomplete|shostak|0.060|
|Bernstein_sweep_TCC2|✅ proved - complete|shostak|0.010|
|Bern_sweep_right_TCC1|✅ proved - incomplete|shostak|0.040|
|Bern_sweep_eval_left|✅ proved - incomplete|shostak|1.658|
|Bern_sweep_eval_right|✅ proved - incomplete|shostak|1.732|

## `multi_polynomial`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_sigma_bijection_TCC1|✅ proved - complete|shostak|0.020|
|multipoly_translate_denormalize_TCC1|✅ proved - incomplete|shostak|0.050|
|multipoly_translate_denormalize|✅ proved - incomplete|shostak|1.302|
|multipoly_translate_normalize_TCC1|✅ proved - incomplete|shostak|0.097|
|multipoly_translate_normalize_TCC2|✅ proved - incomplete|shostak|0.110|
|multipoly_translate_normalize|✅ proved - incomplete|shostak|1.573|
|multipoly_translate_bounded_def_TCC1|✅ proved - incomplete|shostak|0.070|
|multipoly_translate_bounded_def|✅ proved - incomplete|shostak|0.575|
|multipoly_translate_def|✅ proved - incomplete|shostak|2.522|
|multipoly_zero_above_def|✅ proved - incomplete|shostak|0.295|
|multipoly_add_coeff_TCC1|✅ proved - incomplete|shostak|0.030|
|multipoly_add_def|✅ proved - incomplete|shostak|1.514|
|multipoly_scalar_def|✅ proved - incomplete|shostak|0.140|
|multipoly_sub_def|✅ proved - incomplete|shostak|0.136|
|polyproduct_product_TCC1|✅ proved - incomplete|shostak|0.095|
|polyproduct_product_def|✅ proved - incomplete|shostak|4.522|
|multipoly_product_coeff_TCC1|✅ proved - incomplete|shostak|0.084|
|multipoly_product_coeff_TCC2|✅ proved - complete|shostak|0.020|
|multipoly_product_coeff_TCC3|✅ proved - incomplete|shostak|0.140|
|multipoly_product_def_TCC1|✅ proved - complete|shostak|0.010|
|multipoly_product_def|✅ proved - incomplete|shostak|2.047|
|multipoly_sq_def_TCC1|✅ proved - incomplete|shostak|0.084|
|multipoly_sq_def|✅ proved - incomplete|shostak|0.181|

## `poly2bernstein`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|bs_convert_mono_TCC1|✅ proved - incomplete|shostak|0.040|
|bs_convert_mono_TCC2|✅ proved - incomplete|shostak|0.030|
|bs_convert_poly_def|✅ proved - incomplete|shostak|0.630|

## `vardirselector`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|var_coeff_range_rec_TCC1|✅ proved - incomplete|shostak|0.074|
|var_coeff_range_rec_TCC2|✅ proved - incomplete|shostak|0.140|
|var_coeff_range_rec_TCC3|✅ proved - incomplete|shostak|0.030|
|var_maxcoeff_rec_TCC1|✅ proved - incomplete|shostak|0.053|
|var_maxcoeff_rec_TCC2|✅ proved - incomplete|shostak|0.020|
|var_maxcoeff_rec_TCC3|✅ proved - incomplete|shostak|0.020|
|var_maxcoeff_rec_TCC4|✅ proved - complete|shostak|0.010|
|MaxVarMinDir_TCC1|✅ proved - complete|shostak|0.010|

## `bernstein_minmax`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|unit_box_lb_id|✅ proved - incomplete|shostak|0.126|
|unit_box_ub_id|✅ proved - incomplete|shostak|0.120|
|sound_id|✅ proved - incomplete|shostak|0.095|
|sound_lb_le_ub|✅ proved - incomplete|shostak|0.034|
|combine_sound|✅ proved - incomplete|shostak|1.110|
|Bern_coeffs_minmax_rec_TCC1|✅ proved - incomplete|shostak|0.504|
|Bern_coeffs_minmax_rec_TCC2|✅ proved - incomplete|shostak|0.030|
|Bern_coeffs_minmax_rec_TCC3|✅ proved - incomplete|shostak|0.107|
|Bern_coeffs_minmax_rec_TCC4|✅ proved - incomplete|shostak|0.040|
|Bern_coeffs_minmax_rec_TCC5|✅ proved - incomplete|shostak|0.040|
|Bern_coeffs_minmax_rec_TCC6|✅ proved - incomplete|shostak|4.570|
|Bern_coeffs_minmax_rec_TCC7|✅ proved - incomplete|shostak|0.032|
|Bern_coeffs_minmax_TCC1|✅ proved - complete|shostak|0.030|
|Bern_coeffs_minmax_TCC2|✅ proved - incomplete|shostak|0.060|
|Bern_coeffs_minmax_length|✅ proved - incomplete|shostak|0.022|
|Bern_coeffs_minmax_maxdepth|✅ proved - incomplete|shostak|0.040|
|Bern_coeffs_minmax_var|✅ proved - incomplete|shostak|0.220|
|list2array_sound_pi|✅ proved - incomplete|shostak|0.000|
|Bernstein_minmax_rec_TCC1|✅ proved - complete|shostak|0.010|
|Bernstein_minmax_rec_TCC2|✅ proved - incomplete|shostak|0.269|
|Bernstein_minmax_rec_TCC3|✅ proved - incomplete|shostak|0.070|
|Bernstein_minmax_rec_TCC4|✅ proved - incomplete|shostak|0.125|
|Bernstein_minmax_rec_TCC5|✅ proved - incomplete|shostak|0.144|
|Bernstein_minmax_rec_TCC6|✅ proved - incomplete|shostak|10.718|
|Bernstein_minmax_rec_TCC7|✅ proved - incomplete|shostak|8.576|
|Bernstein_minmax_TCC1|✅ proved - complete|shostak|0.010|

## `a2l__bernstein_minmax`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|a2l__Bern_coeffs_minmax_rec_TCC1|✅ proved - incomplete|shostak|0.093|
|a2l__Bern_coeffs_minmax_rec_TCC2|✅ proved - incomplete|shostak|0.040|
|a2l__Bern_coeffs_minmax_rec_TCC3|✅ proved - incomplete|shostak|0.068|
|a2l__Bern_coeffs_minmax_rec_TCC4|✅ proved - incomplete|shostak|0.129|
|a2l__Bern_coeffs_minmax_rec_TCC5|✅ proved - incomplete|shostak|0.050|
|a2l__Bern_coeffs_minmax_rec_TCC6|✅ proved - incomplete|shostak|0.367|
|a2l__Bern_coeffs_minmax_rec_TCC7|✅ proved - incomplete|shostak|1.116|
|a2l__Bern_coeffs_minmax_rec_TCC8|✅ proved - incomplete|shostak|0.110|
|a2l__Bern_coeffs_minmax_TCC1|✅ proved - incomplete|shostak|0.026|
|a2l__Bern_coeffs_minmax_TCC2|✅ proved - incomplete|shostak|0.030|
|a2l__Bern_coeffs_minmax_TCC3|✅ proved - incomplete|shostak|0.096|
|polylist_represents_translist_polylist|✅ proved - incomplete|shostak|0.723|
|a2l__Bern_split_left_mpoly__homomorphic|✅ proved - incomplete|shostak|0.041|
|a2l__Bern_split_right_mpoly__homomorphic|✅ proved - incomplete|shostak|0.035|
|a2l__Bernstein_minmax_rec_TCC1|✅ proved - incomplete|shostak|0.040|
|a2l__Bernstein_minmax_rec_TCC2|✅ proved - incomplete|shostak|0.030|
|a2l__Bernstein_minmax_rec_TCC3|✅ proved - incomplete|shostak|0.193|
|a2l__Bernstein_minmax_rec_TCC4|✅ proved - incomplete|shostak|0.080|
|a2l__Bernstein_minmax_rec_TCC5|✅ proved - incomplete|shostak|0.458|
|a2l__Bernstein_minmax_rec_TCC6|✅ proved - incomplete|shostak|1.623|
|a2l__Bernstein_minmax_rec_TCC7|✅ proved - incomplete|shostak|4.312|
|a2l__Bernstein_minmax_rec_TCC8|✅ proved - incomplete|shostak|2.314|
|a2l__Bernstein_minmax_rec_TCC9|✅ proved - incomplete|shostak|0.469|
|a2l__Bernstein_minmax_rec_TCC10|✅ proved - incomplete|shostak|2.586|
|a2l__Bernstein_minmax_TCC1|✅ proved - incomplete|shostak|0.030|
|a2l__Bernstein_minmax_TCC2|✅ proved - incomplete|shostak|0.058|

## `a2l__vardirselector`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|a2l__var_coeff_range_rec_TCC1|✅ proved - incomplete|shostak|0.170|
|a2l__var_coeff_range_rec_TCC2|✅ proved - incomplete|shostak|0.040|
|a2l__var_maxcoeff_rec_TCC1|✅ proved - incomplete|shostak|0.058|
|a2l__var_maxcoeff_rec_TCC2|✅ proved - incomplete|shostak|0.020|
|a2l__var_maxcoeff_rec_TCC3|✅ proved - incomplete|shostak|0.010|
|a2l__var_maxcoeff_rec_TCC4|✅ proved - complete|shostak|0.020|
|a2l__MaxVarMinDir_TCC1|✅ proved - complete|shostak|0.010|

## `a2l__multi_bernstein`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|a2l__bsproduct_eval_TCC1|✅ proved - incomplete|shostak|0.030|
|a2l__bsproduct_eval__homomorphism|✅ proved - incomplete|shostak|1.077|
|a2l__multibs_eval__homomorphism|✅ proved - incomplete|shostak|0.339|
|a2l__multibscoeff_homomorphism|✅ proved - incomplete|shostak|0.717|
|a2l__multibscoeff_id|✅ proved - incomplete|shostak|0.076|
|a2l__eval_X_between__homomorphism|✅ proved - incomplete|shostak|0.035|
|a2l__forall_X_between__homorphism|✅ proved - incomplete|shostak|0.056|
|a2l__Bern_split_left_mono_TCC1|✅ proved - incomplete|shostak|0.040|
|a2l__Bern_split_left_mono__homomorphism|✅ proved - incomplete|shostak|2.187|
|a2l__Bern_split_right_mono_TCC1|✅ proved - incomplete|shostak|0.050|
|a2l__Bern_split_right_mono_TCC2|✅ proved - incomplete|shostak|0.058|
|a2l__Bern_split_right_mono_TCC3|✅ proved - incomplete|shostak|0.060|
|a2l__Bern_split_right_mono__homomorphism|✅ proved - incomplete|shostak|2.670|
|a2l__Bern_split_left_mpoly__homomorphism|✅ proved - incomplete|shostak|1.187|
|a2l__Bern_split_right_mpoly__homomorphism|✅ proved - incomplete|shostak|1.480|

## `multibernstein_into_polylist`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|represents_TCC1|✅ proved - complete|shostak|0.059|
|represents_TCC2|✅ proved - incomplete|shostak|0.240|
|polyproduct__represents_TCC1|✅ proved - complete|shostak|0.057|
|polylist__represents_multibernstein|✅ proved - incomplete|shostak|1.263|
|representation__is_canonical|✅ proved - incomplete|shostak|0.303|

## `a2l__util`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|maximum_degree_TCC1|✅ proved - incomplete|shostak|0.040|
|maximum_degree_TCC2|✅ proved - incomplete|shostak|0.030|
|maximum_degree_TCC3|✅ proved - complete|shostak|0.010|
|maximum_degree_TCC4|✅ proved - incomplete|shostak|0.057|
|maximum_degree_TCC5|✅ proved - incomplete|shostak|0.070|
|maximum_degree_TCC6|✅ proved - complete|shostak|0.010|

## `vardirselector_into_a2lvardirselector`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|represented_by_TCC1|✅ proved - incomplete|shostak|0.066|

## `MPoly`
No formula declaration found.
## `multi_polylist`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|maxnum_TCC1|✅ proved - complete|shostak|0.010|
|maxnum_TCC2|✅ proved - incomplete|shostak|0.020|
|max_TCC1|✅ proved - incomplete|shostak|0.205|
|max_TCC2|✅ proved - incomplete|shostak|0.125|
|max_TCC3|✅ proved - incomplete|shostak|0.070|
|max_TCC4|✅ proved - incomplete|shostak|0.070|
|max_TCC5|✅ proved - incomplete|shostak|0.084|
|max_TCC6|✅ proved - incomplete|shostak|0.170|
|max_TCC7|✅ proved - complete|shostak|0.030|
|max_TCC8|✅ proved - complete|shostak|0.024|
|max_TCC9|✅ proved - incomplete|shostak|0.120|
|max_TCC10|✅ proved - incomplete|shostak|1.404|
|max_id|✅ proved - incomplete|shostak|0.127|
|max_cdr_TCC1|✅ proved - incomplete|shostak|0.080|
|max_cdr|✅ proved - incomplete|shostak|0.442|
|max_sym|✅ proved - incomplete|shostak|0.368|
|max_assoc|✅ proved - incomplete|shostak|0.768|
|varmono_TCC1|✅ proved - incomplete|shostak|0.030|
|varmono_TCC2|✅ proved - complete|shostak|0.010|
|monolist_eval_rec_TCC1|✅ proved - incomplete|shostak|0.080|
|monolist_eval_rec_TCC2|✅ proved - incomplete|shostak|0.145|
|monolist_eval_rec_TCC3|✅ proved - complete|shostak|0.020|
|monolist_eval_rec_TCC4|✅ proved - incomplete|shostak|0.030|
|monolist_eval_rec_TCC5|✅ proved - complete|shostak|0.030|
|monolist_eval_rec_TCC6|✅ proved - incomplete|shostak|2.021|
|monolist_eval_prod_TCC1|✅ proved - incomplete|shostak|0.030|
|monolist_eval_prod|✅ proved - incomplete|shostak|0.194|
|monosum_TCC1|✅ proved - incomplete|shostak|0.270|
|monosum_TCC2|✅ proved - incomplete|shostak|0.287|
|monosum_TCC3|✅ proved - incomplete|shostak|1.889|
|meval_TCC1|✅ proved - complete|shostak|0.030|
|meval_TCC2|✅ proved - incomplete|shostak|0.072|
|meval_TCC3|✅ proved - complete|shostak|0.020|
|meval_sigma|✅ proved - incomplete|shostak|1.225|
|degree_TCC1|✅ proved - incomplete|shostak|0.040|
|degree_TCC2|✅ proved - incomplete|shostak|0.214|
|degree_TCC3|✅ proved - incomplete|shostak|0.050|
|degree_TCC4|✅ proved - incomplete|shostak|1.519|
|degree_zero|✅ proved - incomplete|shostak|0.764|
|multipoly_to_mpoly_TCC1|✅ proved - incomplete|shostak|0.020|
|mp_simp_rec_TCC1|✅ proved - incomplete|shostak|0.100|
|mp_simp_rec_TCC2|✅ proved - incomplete|shostak|0.217|
|mp_simp_rec_TCC3|✅ proved - complete|shostak|0.030|
|mp_simp_rec_TCC4|✅ proved - incomplete|shostak|0.135|
|mp_simp_rec_TCC5|✅ proved - incomplete|shostak|0.289|
|mp_simp_rec_TCC6|✅ proved - complete|shostak|0.030|
|mp_simp_rec_TCC7|✅ proved - incomplete|shostak|0.137|
|mp_simp_rec_TCC8|✅ proved - incomplete|shostak|0.314|
|mp_simp_rec_TCC9|✅ proved - complete|shostak|0.030|
|mp_simp_rec_TCC10|✅ proved - incomplete|shostak|0.393|
|mp_simp_rec_TCC11|✅ proved - incomplete|shostak|0.414|
|mp_simp_rec_TCC12|✅ proved - incomplete|shostak|0.343|
|mp_simp_rec_TCC13|✅ proved - incomplete|shostak|0.246|
|mp_simp_TCC1|✅ proved - incomplete|shostak|0.153|
|mpsum_TCC1|✅ proved - incomplete|shostak|0.194|
|mpprod_rec_TCC1|✅ proved - incomplete|shostak|0.060|
|mpprod_rec_TCC2|✅ proved - incomplete|shostak|0.172|
|mpprod_rec_TCC3|✅ proved - complete|shostak|0.020|
|mpprod_rec_TCC4|✅ proved - incomplete|shostak|0.260|
|mpprod_rec_TCC5|✅ proved - incomplete|shostak|0.105|
|mpprod_rec_TCC6|✅ proved - incomplete|shostak|0.110|
|mpprod_rec_TCC7|✅ proved - incomplete|shostak|0.346|
|mpprod_rec_TCC8|✅ proved - incomplete|shostak|0.140|
|mpprod_rec_TCC9|✅ proved - incomplete|shostak|0.110|
|mpprod_rec_TCC10|✅ proved - incomplete|shostak|0.713|
|mpprod_TCC1|✅ proved - incomplete|shostak|0.030|
|mpscal_TCC1|✅ proved - incomplete|shostak|0.050|
|multipolylist_eval_TCC1|✅ proved - incomplete|shostak|0.140|
|multipolylist_eval|✅ proved - incomplete|shostak|0.000|
|multipolylist_const|✅ proved - incomplete|shostak|0.100|
|multipolylist_monom_TCC1|✅ proved - complete|shostak|0.020|
|multipolylist_monom|✅ proved - incomplete|shostak|0.822|
|multipolylist_var|✅ proved - incomplete|shostak|0.060|
|multipolylist_varn|✅ proved - incomplete|shostak|0.079|
|multipolylist_sum|✅ proved - incomplete|shostak|0.060|
|multipolylist_prod|✅ proved - incomplete|shostak|0.020|
|multipolylist_scal|✅ proved - incomplete|shostak|0.109|
|multipolylist_pow_TCC1|✅ proved - incomplete|shostak|0.010|
|multipolylist_pow|✅ proved - incomplete|shostak|0.363|
|multipolylist_neg|✅ proved - incomplete|shostak|0.063|
|multipolylist_minus|✅ proved - incomplete|shostak|0.070|
|multipolylist_div|✅ proved - incomplete|shostak|0.085|
|multipolylist_sq|✅ proved - incomplete|shostak|0.030|

## `poly_minmax`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sound_poly_lb_le_ub|✅ proved - incomplete|shostak|0.154|
|multipolynomial_minmax_TCC1|✅ proved - incomplete|shostak|10.208|
|a2l__multipolynomial_minmax_TCC1|✅ proved - incomplete|shostak|0.040|
|a2l__multipolynomial_minmax__equivalence|✅ proved - incomplete|shostak|0.124|

## `strat_util`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|multipoly_minmax_sound|✅ proved - incomplete|shostak|0.218|
|multipoly_strategy_TCC1|✅ proved - incomplete|shostak|2.798|
|multipoly_strategy_TCC2|✅ proved - incomplete|shostak|2.761|
|multipoly_strategy_true|✅ proved - incomplete|shostak|0.388|
|multipoly_strategy_false|✅ proved - incomplete|shostak|0.202|
|multipoly_strategy_counterexample|✅ proved - incomplete|shostak|0.305|
|a2l__multipoly_strategy_TCC1|✅ proved - incomplete|shostak|1.133|
|a2l__multipoly_strategy_TCC2|✅ proved - incomplete|shostak|1.127|
|a2l__multipoly_strategy__equivalence|✅ proved - incomplete|shostak|0.033|
|a2l__multipoly_strategy_true|✅ proved - incomplete|shostak|0.040|
|a2l__multipoly_strategy_false|✅ proved - incomplete|shostak|0.030|
|a2l__multipoly_strategy_counterexample|✅ proved - incomplete|shostak|0.030|

## `strategies`
No formula declaration found.
## `boxes_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|setnth_box_TCC1|✅ proved - incomplete|shostak|0.054|
|setnth_box_TCC2|✅ proved - incomplete|shostak|0.040|
|volume_TCC1|✅ proved - complete|shostak|0.010|
|volume_TCC2|✅ proved - complete|shostak|0.010|
|volume_TCC3|✅ proved - incomplete|shostak|0.030|
|volume_TCC4|✅ proved - incomplete|shostak|0.030|
|volume_TCC5|✅ proved - incomplete|shostak|0.035|

## `boxes`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|unpack_TCC1|✅ proved - incomplete|shostak|0.040|
|neg_mp_TCC1|✅ proved - incomplete|shostak|0.114|
|Boxes_strategy_rec_TCC1|✅ proved - complete|shostak|0.010|
|Boxes_strategy_rec_TCC2|✅ proved - incomplete|shostak|0.100|
|Boxes_strategy_rec_TCC3|✅ proved - incomplete|shostak|0.456|
|Boxes_strategy_rec_TCC4|✅ proved - incomplete|shostak|0.384|
|Boxes_strategy_TCC1|✅ proved - complete|shostak|0.020|
|boxes_strategy_and_TCC1|✅ proved - incomplete|shostak|0.461|
|boxes_strategy_and_TCC2|✅ proved - incomplete|shostak|0.454|
|boxes_strategy_and_TCC3|✅ proved - incomplete|shostak|0.702|
|boxes_strategy_and_TCC4|✅ proved - incomplete|shostak|1.182|

## `tests`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|multipoly_eval_test_1|✅ proved - incomplete|shostak|0.100|
|multipoly_eval_test2|✅ proved - incomplete|shostak|0.105|
|multipoly_eval_test3_TCC1|✅ proved - complete|shostak|0.020|
|multipoly_eval_test3_TCC2|✅ proved - complete|shostak|0.010|
|multipoly_eval_test3|✅ proved - incomplete|shostak|5.888|
|bspoly_convert_poly_test|✅ proved - incomplete|shostak|0.147|

## `grizzly`
No formula declaration found.## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib/pvsio_utils/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230712-static-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230710-tcc-gen.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230707-defattach.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230706-extrategies.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`|
