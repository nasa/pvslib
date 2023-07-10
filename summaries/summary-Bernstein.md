# Summary for `Bernstein`
Run started at 0:31:15 7/8/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **307**   | **307**    | **307**    | **0**  | **2:22.847 s**   |
|top|0|0|0|0|0.000|
|util|18|18|18|0|2.927|
|minmax|5|5|5|0|1.883|
|multi_bernstein|41|41|41|0|26.985|
|multi_polynomial|23|23|23|0|14.164|
|poly2bernstein|3|3|3|0|0.642|
|vardirselector|8|8|8|0|0.328|
|bernstein_minmax|26|26|26|0|21.928|
|a2l__bernstein_minmax|26|26|26|0|13.744|
|a2l__vardirselector|7|7|7|0|0.286|
|a2l__multi_bernstein|15|15|15|0|9.370|
|multibernstein_into_polylist|5|5|5|0|1.748|
|a2l__util|6|6|6|0|0.193|
|vardirselector_into_a2lvardirselector|1|1|1|0|0.051|
|MPoly|0|0|0|0|0.000|
|multi_polylist|83|83|83|0|21.217|
|poly_minmax|4|4|4|0|9.605|
|strat_util|12|12|12|0|8.297|
|strategies|0|0|0|0|0.000|
|boxes_def|7|7|7|0|0.176|
|boxes|11|11|11|0|3.563|
|tests|6|6|6|0|5.740|
|grizzly|0|0|0|0|0.000|
## Detailed Summary 
## `top`
No formula declaration found.
## `util`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|relreal_scal|✅ proved - incomplete|shostak|0.271|
|edge_point?_TCC1|✅ proved - complete|shostak|0.010|
|boxbetween_eq_bnd|✅ proved - complete|shostak|0.037|
|normalize_lambda_TCC1|✅ proved - incomplete|shostak|0.091|
|normalize_lambda_TCC2|✅ proved - incomplete|shostak|0.080|
|normalize_lambda_TCC3|✅ proved - incomplete|shostak|0.070|
|normalize_lambda_unitbox|✅ proved - incomplete|shostak|0.334|
|denormalize_listreal_rec_TCC1|✅ proved - complete|shostak|0.010|
|denormalize_listreal_rec_TCC2|✅ proved - complete|shostak|0.050|
|denormalize_listreal_rec_TCC3|✅ proved - incomplete|shostak|0.164|
|denormalize_listreal_rec_TCC4|✅ proved - incomplete|shostak|0.050|
|denormalize_listreal_rec_TCC5|✅ proved - complete|shostak|0.030|
|denormalize_listreal_rec_TCC6|✅ proved - incomplete|shostak|0.060|
|denormalize_listreal_rec_TCC7|✅ proved - complete|shostak|0.034|
|denormalize_listreal_rec_TCC8|✅ proved - incomplete|shostak|1.367|
|denormalize_listreal_TCC1|✅ proved - complete|shostak|0.010|
|translist_polylist_id|✅ proved - incomplete|shostak|0.215|
|corner_to_point_TCC1|✅ proved - incomplete|shostak|0.044|

## `minmax`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|between_combine_lr|✅ proved - incomplete|shostak|0.413|
|false_globalexit_inv|✅ proved - incomplete|shostak|0.100|
|rel_globalexit_inv|✅ proved - incomplete|shostak|0.667|
|eps_localexit_inv|✅ proved - incomplete|shostak|0.507|
|rel_localexit_inv|✅ proved - incomplete|shostak|0.196|

## `multi_bernstein`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_sigma_bijection_TCC1|✅ proved - complete|shostak|0.100|
|bsproduct_eval_TCC1|✅ proved - incomplete|shostak|0.030|
|multibs_eval_rec_TCC1|✅ proved - incomplete|shostak|0.044|
|multibs_eval_rec_TCC2|✅ proved - incomplete|shostak|0.020|
|multibs_eval_rec_TCC3|✅ proved - complete|shostak|0.020|
|multibs_eval_1_term|✅ proved - incomplete|shostak|2.567|
|multibs_eval_equiv|✅ proved - incomplete|shostak|3.332|
|multibs_eval_below_mono|✅ proved - incomplete|shostak|0.419|
|multibs_eval_id|✅ proved - incomplete|shostak|0.598|
|multibscoeff_id|✅ proved - incomplete|shostak|0.257|
|Bern_coeffs_rel_implic|✅ proved - incomplete|shostak|0.103|
|Bern_coeffs_rel_def|✅ proved - incomplete|shostak|0.747|
|multibs_cornerpoint_coeff|✅ proved - incomplete|shostak|1.386|
|forall_X_id|✅ proved - incomplete|shostak|0.096|
|forall_X_between_id|✅ proved - incomplete|shostak|0.099|
|Bern_coeffs_endpoints_rel_rec_TCC1|✅ proved - incomplete|shostak|0.020|
|Bern_coeffs_endpoints_rel_rec_TCC2|✅ proved - incomplete|shostak|0.033|
|Bern_coeffs_endpoints_rel_rec_TCC3|✅ proved - complete|shostak|0.010|
|Bern_coeffs_endpoints_rel_TCC1|✅ proved - incomplete|shostak|0.010|
|Bern_coeffs_endpoints_rel_def|✅ proved - incomplete|shostak|1.985|
|Bern_coeffs_counterexample|✅ proved - incomplete|shostak|1.910|
|Bern_le|✅ proved - incomplete|shostak|2.009|
|Bern_lt|✅ proved - incomplete|shostak|0.453|
|Bern_ge|✅ proved - incomplete|shostak|1.889|
|Bern_gt|✅ proved - incomplete|shostak|0.454|
|Bern_rel|✅ proved - incomplete|shostak|0.054|
|forall_X_between_minmax|✅ proved - incomplete|shostak|0.074|
|Bern_split_left_mono_TCC1|✅ proved - incomplete|shostak|0.030|
|Bern_split_right_mono_TCC1|✅ proved - incomplete|shostak|0.046|
|Bern_split_right_mono_TCC2|✅ proved - incomplete|shostak|0.050|
|Bern_split_right_mono_TCC3|✅ proved - incomplete|shostak|0.050|
|Bern_split_bspoly|✅ proved - incomplete|shostak|3.786|
|Bern_eval_left|✅ proved - incomplete|shostak|0.925|
|Bern_eval_left_def|✅ proved - incomplete|shostak|0.131|
|Bern_eval_right|✅ proved - incomplete|shostak|0.000|
|Bern_eval_right_def|✅ proved - incomplete|shostak|0.081|
|Bernstein_sweep_TCC1|✅ proved - incomplete|shostak|0.050|
|Bernstein_sweep_TCC2|✅ proved - complete|shostak|0.010|
|Bern_sweep_right_TCC1|✅ proved - incomplete|shostak|0.040|
|Bern_sweep_eval_left|✅ proved - incomplete|shostak|1.500|
|Bern_sweep_eval_right|✅ proved - incomplete|shostak|1.567|

## `multi_polynomial`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_sigma_bijection_TCC1|✅ proved - complete|shostak|0.020|
|multipoly_translate_denormalize_TCC1|✅ proved - incomplete|shostak|0.040|
|multipoly_translate_denormalize|✅ proved - incomplete|shostak|1.180|
|multipoly_translate_normalize_TCC1|✅ proved - incomplete|shostak|0.097|
|multipoly_translate_normalize_TCC2|✅ proved - incomplete|shostak|0.096|
|multipoly_translate_normalize|✅ proved - incomplete|shostak|1.423|
|multipoly_translate_bounded_def_TCC1|✅ proved - incomplete|shostak|0.060|
|multipoly_translate_bounded_def|✅ proved - incomplete|shostak|0.488|
|multipoly_translate_def|✅ proved - incomplete|shostak|2.244|
|multipoly_zero_above_def|✅ proved - incomplete|shostak|0.277|
|multipoly_add_coeff_TCC1|✅ proved - incomplete|shostak|0.030|
|multipoly_add_def|✅ proved - incomplete|shostak|1.390|
|multipoly_scalar_def|✅ proved - incomplete|shostak|0.124|
|multipoly_sub_def|✅ proved - incomplete|shostak|0.125|
|polyproduct_product_TCC1|✅ proved - incomplete|shostak|0.080|
|polyproduct_product_def|✅ proved - incomplete|shostak|4.151|
|multipoly_product_coeff_TCC1|✅ proved - incomplete|shostak|0.080|
|multipoly_product_coeff_TCC2|✅ proved - complete|shostak|0.010|
|multipoly_product_coeff_TCC3|✅ proved - incomplete|shostak|0.124|
|multipoly_product_def_TCC1|✅ proved - complete|shostak|0.010|
|multipoly_product_def|✅ proved - incomplete|shostak|1.886|
|multipoly_sq_def_TCC1|✅ proved - incomplete|shostak|0.080|
|multipoly_sq_def|✅ proved - incomplete|shostak|0.149|

## `poly2bernstein`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|bs_convert_mono_TCC1|✅ proved - incomplete|shostak|0.034|
|bs_convert_mono_TCC2|✅ proved - incomplete|shostak|0.030|
|bs_convert_poly_def|✅ proved - incomplete|shostak|0.578|

## `vardirselector`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|var_coeff_range_rec_TCC1|✅ proved - incomplete|shostak|0.070|
|var_coeff_range_rec_TCC2|✅ proved - incomplete|shostak|0.127|
|var_coeff_range_rec_TCC3|✅ proved - incomplete|shostak|0.020|
|var_maxcoeff_rec_TCC1|✅ proved - incomplete|shostak|0.051|
|var_maxcoeff_rec_TCC2|✅ proved - incomplete|shostak|0.020|
|var_maxcoeff_rec_TCC3|✅ proved - incomplete|shostak|0.020|
|var_maxcoeff_rec_TCC4|✅ proved - complete|shostak|0.010|
|MaxVarMinDir_TCC1|✅ proved - complete|shostak|0.010|

## `bernstein_minmax`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|unit_box_lb_id|✅ proved - incomplete|shostak|0.108|
|unit_box_ub_id|✅ proved - incomplete|shostak|0.107|
|sound_id|✅ proved - incomplete|shostak|0.095|
|sound_lb_le_ub|✅ proved - incomplete|shostak|0.030|
|combine_sound|✅ proved - incomplete|shostak|1.002|
|Bern_coeffs_minmax_rec_TCC1|✅ proved - incomplete|shostak|0.484|
|Bern_coeffs_minmax_rec_TCC2|✅ proved - incomplete|shostak|0.030|
|Bern_coeffs_minmax_rec_TCC3|✅ proved - incomplete|shostak|0.095|
|Bern_coeffs_minmax_rec_TCC4|✅ proved - incomplete|shostak|0.030|
|Bern_coeffs_minmax_rec_TCC5|✅ proved - incomplete|shostak|0.030|
|Bern_coeffs_minmax_rec_TCC6|✅ proved - incomplete|shostak|0.892|
|Bern_coeffs_minmax_rec_TCC7|✅ proved - incomplete|shostak|0.030|
|Bern_coeffs_minmax_TCC1|✅ proved - complete|shostak|0.020|
|Bern_coeffs_minmax_TCC2|✅ proved - incomplete|shostak|0.050|
|Bern_coeffs_minmax_length|✅ proved - incomplete|shostak|0.025|
|Bern_coeffs_minmax_maxdepth|✅ proved - incomplete|shostak|0.030|
|Bern_coeffs_minmax_var|✅ proved - incomplete|shostak|0.198|
|list2array_sound_pi|✅ proved - incomplete|shostak|0.438|
|Bernstein_minmax_rec_TCC1|✅ proved - complete|shostak|0.020|
|Bernstein_minmax_rec_TCC2|✅ proved - incomplete|shostak|0.210|
|Bernstein_minmax_rec_TCC3|✅ proved - incomplete|shostak|0.060|
|Bernstein_minmax_rec_TCC4|✅ proved - incomplete|shostak|0.105|
|Bernstein_minmax_rec_TCC5|✅ proved - incomplete|shostak|0.115|
|Bernstein_minmax_rec_TCC6|✅ proved - incomplete|shostak|9.894|
|Bernstein_minmax_rec_TCC7|✅ proved - incomplete|shostak|7.820|
|Bernstein_minmax_TCC1|✅ proved - complete|shostak|0.010|

## `a2l__bernstein_minmax`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|a2l__Bern_coeffs_minmax_rec_TCC1|✅ proved - incomplete|shostak|0.085|
|a2l__Bern_coeffs_minmax_rec_TCC2|✅ proved - incomplete|shostak|0.030|
|a2l__Bern_coeffs_minmax_rec_TCC3|✅ proved - incomplete|shostak|0.068|
|a2l__Bern_coeffs_minmax_rec_TCC4|✅ proved - incomplete|shostak|0.108|
|a2l__Bern_coeffs_minmax_rec_TCC5|✅ proved - incomplete|shostak|0.050|
|a2l__Bern_coeffs_minmax_rec_TCC6|✅ proved - incomplete|shostak|0.340|
|a2l__Bern_coeffs_minmax_rec_TCC7|✅ proved - incomplete|shostak|0.967|
|a2l__Bern_coeffs_minmax_rec_TCC8|✅ proved - incomplete|shostak|0.100|
|a2l__Bern_coeffs_minmax_TCC1|✅ proved - incomplete|shostak|0.020|
|a2l__Bern_coeffs_minmax_TCC2|✅ proved - incomplete|shostak|0.030|
|a2l__Bern_coeffs_minmax_TCC3|✅ proved - incomplete|shostak|0.087|
|polylist_represents_translist_polylist|✅ proved - incomplete|shostak|0.637|
|a2l__Bern_split_left_mpoly__homomorphic|✅ proved - incomplete|shostak|0.032|
|a2l__Bern_split_right_mpoly__homomorphic|✅ proved - incomplete|shostak|0.035|
|a2l__Bernstein_minmax_rec_TCC1|✅ proved - incomplete|shostak|0.030|
|a2l__Bernstein_minmax_rec_TCC2|✅ proved - incomplete|shostak|0.030|
|a2l__Bernstein_minmax_rec_TCC3|✅ proved - incomplete|shostak|0.165|
|a2l__Bernstein_minmax_rec_TCC4|✅ proved - incomplete|shostak|0.060|
|a2l__Bernstein_minmax_rec_TCC5|✅ proved - incomplete|shostak|0.399|
|a2l__Bernstein_minmax_rec_TCC6|✅ proved - incomplete|shostak|1.541|
|a2l__Bernstein_minmax_rec_TCC7|✅ proved - incomplete|shostak|3.885|
|a2l__Bernstein_minmax_rec_TCC8|✅ proved - incomplete|shostak|2.029|
|a2l__Bernstein_minmax_rec_TCC9|✅ proved - incomplete|shostak|0.413|
|a2l__Bernstein_minmax_rec_TCC10|✅ proved - incomplete|shostak|2.535|
|a2l__Bernstein_minmax_TCC1|✅ proved - incomplete|shostak|0.020|
|a2l__Bernstein_minmax_TCC2|✅ proved - incomplete|shostak|0.048|

## `a2l__vardirselector`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|a2l__var_coeff_range_rec_TCC1|✅ proved - incomplete|shostak|0.146|
|a2l__var_coeff_range_rec_TCC2|✅ proved - incomplete|shostak|0.030|
|a2l__var_maxcoeff_rec_TCC1|✅ proved - incomplete|shostak|0.050|
|a2l__var_maxcoeff_rec_TCC2|✅ proved - incomplete|shostak|0.020|
|a2l__var_maxcoeff_rec_TCC3|✅ proved - incomplete|shostak|0.020|
|a2l__var_maxcoeff_rec_TCC4|✅ proved - complete|shostak|0.010|
|a2l__MaxVarMinDir_TCC1|✅ proved - complete|shostak|0.010|

## `a2l__multi_bernstein`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|a2l__bsproduct_eval_TCC1|✅ proved - incomplete|shostak|0.029|
|a2l__bsproduct_eval__homomorphism|✅ proved - incomplete|shostak|0.950|
|a2l__multibs_eval__homomorphism|✅ proved - incomplete|shostak|0.312|
|a2l__multibscoeff_homomorphism|✅ proved - incomplete|shostak|0.672|
|a2l__multibscoeff_id|✅ proved - incomplete|shostak|0.079|
|a2l__eval_X_between__homomorphism|✅ proved - incomplete|shostak|0.030|
|a2l__forall_X_between__homorphism|✅ proved - incomplete|shostak|0.049|
|a2l__Bern_split_left_mono_TCC1|✅ proved - incomplete|shostak|0.038|
|a2l__Bern_split_left_mono__homomorphism|✅ proved - incomplete|shostak|2.012|
|a2l__Bern_split_right_mono_TCC1|✅ proved - incomplete|shostak|0.060|
|a2l__Bern_split_right_mono_TCC2|✅ proved - incomplete|shostak|0.050|
|a2l__Bern_split_right_mono_TCC3|✅ proved - incomplete|shostak|0.049|
|a2l__Bern_split_right_mono__homomorphism|✅ proved - incomplete|shostak|2.504|
|a2l__Bern_split_left_mpoly__homomorphism|✅ proved - incomplete|shostak|1.131|
|a2l__Bern_split_right_mpoly__homomorphism|✅ proved - incomplete|shostak|1.405|

## `multibernstein_into_polylist`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|represents_TCC1|✅ proved - complete|shostak|0.060|
|represents_TCC2|✅ proved - incomplete|shostak|0.217|
|polyproduct__represents_TCC1|✅ proved - complete|shostak|0.060|
|polylist__represents_multibernstein|✅ proved - incomplete|shostak|1.118|
|representation__is_canonical|✅ proved - incomplete|shostak|0.293|

## `a2l__util`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|maximum_degree_TCC1|✅ proved - incomplete|shostak|0.040|
|maximum_degree_TCC2|✅ proved - incomplete|shostak|0.020|
|maximum_degree_TCC3|✅ proved - complete|shostak|0.010|
|maximum_degree_TCC4|✅ proved - incomplete|shostak|0.053|
|maximum_degree_TCC5|✅ proved - incomplete|shostak|0.060|
|maximum_degree_TCC6|✅ proved - complete|shostak|0.010|

## `vardirselector_into_a2lvardirselector`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|represented_by_TCC1|✅ proved - incomplete|shostak|0.051|

## `MPoly`
No formula declaration found.
## `multi_polylist`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|maxnum_TCC1|✅ proved - complete|shostak|0.020|
|maxnum_TCC2|✅ proved - incomplete|shostak|0.010|
|max_TCC1|✅ proved - incomplete|shostak|0.184|
|max_TCC2|✅ proved - incomplete|shostak|0.110|
|max_TCC3|✅ proved - incomplete|shostak|0.064|
|max_TCC4|✅ proved - incomplete|shostak|0.070|
|max_TCC5|✅ proved - incomplete|shostak|0.070|
|max_TCC6|✅ proved - incomplete|shostak|0.154|
|max_TCC7|✅ proved - complete|shostak|0.020|
|max_TCC8|✅ proved - complete|shostak|0.030|
|max_TCC9|✅ proved - incomplete|shostak|0.110|
|max_TCC10|✅ proved - incomplete|shostak|1.227|
|max_id|✅ proved - incomplete|shostak|0.110|
|max_cdr_TCC1|✅ proved - incomplete|shostak|0.075|
|max_cdr|✅ proved - incomplete|shostak|0.424|
|max_sym|✅ proved - incomplete|shostak|0.329|
|max_assoc|✅ proved - incomplete|shostak|0.676|
|varmono_TCC1|✅ proved - incomplete|shostak|0.020|
|varmono_TCC2|✅ proved - complete|shostak|0.010|
|monolist_eval_rec_TCC1|✅ proved - incomplete|shostak|0.076|
|monolist_eval_rec_TCC2|✅ proved - incomplete|shostak|0.120|
|monolist_eval_rec_TCC3|✅ proved - complete|shostak|0.020|
|monolist_eval_rec_TCC4|✅ proved - incomplete|shostak|0.026|
|monolist_eval_rec_TCC5|✅ proved - complete|shostak|0.020|
|monolist_eval_rec_TCC6|✅ proved - incomplete|shostak|1.813|
|monolist_eval_prod_TCC1|✅ proved - incomplete|shostak|0.030|
|monolist_eval_prod|✅ proved - incomplete|shostak|0.180|
|monosum_TCC1|✅ proved - incomplete|shostak|0.247|
|monosum_TCC2|✅ proved - incomplete|shostak|0.247|
|monosum_TCC3|✅ proved - incomplete|shostak|1.695|
|meval_TCC1|✅ proved - complete|shostak|0.030|
|meval_TCC2|✅ proved - incomplete|shostak|0.060|
|meval_TCC3|✅ proved - complete|shostak|0.020|
|meval_sigma|✅ proved - incomplete|shostak|1.086|
|degree_TCC1|✅ proved - incomplete|shostak|0.030|
|degree_TCC2|✅ proved - incomplete|shostak|0.193|
|degree_TCC3|✅ proved - incomplete|shostak|0.050|
|degree_TCC4|✅ proved - incomplete|shostak|1.354|
|degree_zero|✅ proved - incomplete|shostak|0.686|
|multipoly_to_mpoly_TCC1|✅ proved - incomplete|shostak|0.020|
|mp_simp_rec_TCC1|✅ proved - incomplete|shostak|0.090|
|mp_simp_rec_TCC2|✅ proved - incomplete|shostak|0.195|
|mp_simp_rec_TCC3|✅ proved - complete|shostak|0.030|
|mp_simp_rec_TCC4|✅ proved - incomplete|shostak|0.124|
|mp_simp_rec_TCC5|✅ proved - incomplete|shostak|0.254|
|mp_simp_rec_TCC6|✅ proved - complete|shostak|0.030|
|mp_simp_rec_TCC7|✅ proved - incomplete|shostak|0.110|
|mp_simp_rec_TCC8|✅ proved - incomplete|shostak|0.286|
|mp_simp_rec_TCC9|✅ proved - complete|shostak|0.024|
|mp_simp_rec_TCC10|✅ proved - incomplete|shostak|0.344|
|mp_simp_rec_TCC11|✅ proved - incomplete|shostak|0.384|
|mp_simp_rec_TCC12|✅ proved - incomplete|shostak|0.304|
|mp_simp_rec_TCC13|✅ proved - incomplete|shostak|0.225|
|mp_simp_TCC1|✅ proved - incomplete|shostak|0.140|
|mpsum_TCC1|✅ proved - incomplete|shostak|0.184|
|mpprod_rec_TCC1|✅ proved - incomplete|shostak|0.054|
|mpprod_rec_TCC2|✅ proved - incomplete|shostak|0.160|
|mpprod_rec_TCC3|✅ proved - complete|shostak|0.020|
|mpprod_rec_TCC4|✅ proved - incomplete|shostak|0.245|
|mpprod_rec_TCC5|✅ proved - incomplete|shostak|0.100|
|mpprod_rec_TCC6|✅ proved - incomplete|shostak|0.094|
|mpprod_rec_TCC7|✅ proved - incomplete|shostak|0.334|
|mpprod_rec_TCC8|✅ proved - incomplete|shostak|0.120|
|mpprod_rec_TCC9|✅ proved - incomplete|shostak|0.104|
|mpprod_rec_TCC10|✅ proved - incomplete|shostak|0.687|
|mpprod_TCC1|✅ proved - incomplete|shostak|0.030|
|mpscal_TCC1|✅ proved - incomplete|shostak|0.040|
|multipolylist_eval_TCC1|✅ proved - incomplete|shostak|0.125|
|multipolylist_eval|✅ proved - incomplete|shostak|3.064|
|multipolylist_const|✅ proved - incomplete|shostak|0.066|
|multipolylist_monom_TCC1|✅ proved - complete|shostak|0.010|
|multipolylist_monom|✅ proved - incomplete|shostak|0.724|
|multipolylist_var|✅ proved - incomplete|shostak|0.065|
|multipolylist_varn|✅ proved - incomplete|shostak|0.070|
|multipolylist_sum|✅ proved - incomplete|shostak|0.000|
|multipolylist_prod|✅ proved - incomplete|shostak|0.020|
|multipolylist_scal|✅ proved - incomplete|shostak|0.090|
|multipolylist_pow_TCC1|✅ proved - incomplete|shostak|0.010|
|multipolylist_pow|✅ proved - incomplete|shostak|0.320|
|multipolylist_neg|✅ proved - incomplete|shostak|0.070|
|multipolylist_minus|✅ proved - incomplete|shostak|0.050|
|multipolylist_div|✅ proved - incomplete|shostak|0.075|
|multipolylist_sq|✅ proved - incomplete|shostak|0.030|

## `poly_minmax`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sound_poly_lb_le_ub|✅ proved - incomplete|shostak|0.135|
|multipolynomial_minmax_TCC1|✅ proved - incomplete|shostak|9.313|
|a2l__multipolynomial_minmax_TCC1|✅ proved - incomplete|shostak|0.040|
|a2l__multipolynomial_minmax__equivalence|✅ proved - incomplete|shostak|0.117|

## `strat_util`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|multipoly_minmax_sound|✅ proved - incomplete|shostak|0.195|
|multipoly_strategy_TCC1|✅ proved - incomplete|shostak|2.547|
|multipoly_strategy_TCC2|✅ proved - incomplete|shostak|2.543|
|multipoly_strategy_true|✅ proved - incomplete|shostak|0.346|
|multipoly_strategy_false|✅ proved - incomplete|shostak|0.172|
|multipoly_strategy_counterexample|✅ proved - incomplete|shostak|0.264|
|a2l__multipoly_strategy_TCC1|✅ proved - incomplete|shostak|1.064|
|a2l__multipoly_strategy_TCC2|✅ proved - incomplete|shostak|1.046|
|a2l__multipoly_strategy__equivalence|✅ proved - incomplete|shostak|0.030|
|a2l__multipoly_strategy_true|✅ proved - incomplete|shostak|0.038|
|a2l__multipoly_strategy_false|✅ proved - incomplete|shostak|0.030|
|a2l__multipoly_strategy_counterexample|✅ proved - incomplete|shostak|0.022|

## `strategies`
No formula declaration found.
## `boxes_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|setnth_box_TCC1|✅ proved - incomplete|shostak|0.040|
|setnth_box_TCC2|✅ proved - incomplete|shostak|0.040|
|volume_TCC1|✅ proved - complete|shostak|0.010|
|volume_TCC2|✅ proved - complete|shostak|0.000|
|volume_TCC3|✅ proved - incomplete|shostak|0.030|
|volume_TCC4|✅ proved - incomplete|shostak|0.026|
|volume_TCC5|✅ proved - incomplete|shostak|0.030|

## `boxes`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|unpack_TCC1|✅ proved - incomplete|shostak|0.030|
|neg_mp_TCC1|✅ proved - incomplete|shostak|0.104|
|Boxes_strategy_rec_TCC1|✅ proved - complete|shostak|0.010|
|Boxes_strategy_rec_TCC2|✅ proved - incomplete|shostak|0.090|
|Boxes_strategy_rec_TCC3|✅ proved - incomplete|shostak|0.398|
|Boxes_strategy_rec_TCC4|✅ proved - incomplete|shostak|0.343|
|Boxes_strategy_TCC1|✅ proved - complete|shostak|0.010|
|boxes_strategy_and_TCC1|✅ proved - incomplete|shostak|0.433|
|boxes_strategy_and_TCC2|✅ proved - incomplete|shostak|0.411|
|boxes_strategy_and_TCC3|✅ proved - incomplete|shostak|0.644|
|boxes_strategy_and_TCC4|✅ proved - incomplete|shostak|1.090|

## `tests`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|multipoly_eval_test_1|✅ proved - incomplete|shostak|0.100|
|multipoly_eval_test2|✅ proved - incomplete|shostak|0.095|
|multipoly_eval_test3_TCC1|✅ proved - complete|shostak|0.010|
|multipoly_eval_test3_TCC2|✅ proved - complete|shostak|0.010|
|multipoly_eval_test3|✅ proved - incomplete|shostak|5.390|
|bspoly_convert_poly_test|✅ proved - incomplete|shostak|0.135|

## `grizzly`
No formula declaration found.## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib//float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-pvsio-fix.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210219-extratregies.lisp`|
