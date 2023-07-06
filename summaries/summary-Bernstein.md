# Summary for `Bernstein`
Run started at 1:29:34 7/4/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **307**   | **307**    | **307**    | **0**  | **2:10.339 s**   |
|top|0|0|0|0|0.000|
|util|18|18|18|0|2.481|
|minmax|5|5|5|0|1.790|
|multi_bernstein|41|41|41|0|25.988|
|multi_polynomial|23|23|23|0|14.030|
|poly2bernstein|3|3|3|0|0.635|
|vardirselector|8|8|8|0|0.304|
|bernstein_minmax|26|26|26|0|19.797|
|a2l__bernstein_minmax|26|26|26|0|12.075|
|a2l__vardirselector|7|7|7|0|0.277|
|a2l__multi_bernstein|15|15|15|0|9.046|
|multibernstein_into_polylist|5|5|5|0|1.689|
|a2l__util|6|6|6|0|0.167|
|vardirselector_into_a2lvardirselector|1|1|1|0|0.060|
|MPoly|0|0|0|0|0.000|
|multi_polylist|83|83|83|0|20.772|
|poly_minmax|4|4|4|0|4.451|
|strat_util|12|12|12|0|8.146|
|strategies|0|0|0|0|0.000|
|boxes_def|7|7|7|0|0.186|
|boxes|11|11|11|0|3.439|
|tests|6|6|6|0|5.006|
|grizzly|0|0|0|0|0.000|
## Detailed Summary 
## `top`
No formula declaration found.
## `util`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|relreal_scal|✅ proved - incomplete|shostak|0.000|
|edge_point?_TCC1|✅ proved - complete|shostak|0.010|
|boxbetween_eq_bnd|✅ proved - complete|shostak|0.023|
|normalize_lambda_TCC1|✅ proved - incomplete|shostak|0.092|
|normalize_lambda_TCC2|✅ proved - incomplete|shostak|0.070|
|normalize_lambda_TCC3|✅ proved - incomplete|shostak|0.070|
|normalize_lambda_unitbox|✅ proved - incomplete|shostak|0.319|
|denormalize_listreal_rec_TCC1|✅ proved - complete|shostak|0.010|
|denormalize_listreal_rec_TCC2|✅ proved - complete|shostak|0.040|
|denormalize_listreal_rec_TCC3|✅ proved - incomplete|shostak|0.154|
|denormalize_listreal_rec_TCC4|✅ proved - incomplete|shostak|0.050|
|denormalize_listreal_rec_TCC5|✅ proved - complete|shostak|0.020|
|denormalize_listreal_rec_TCC6|✅ proved - incomplete|shostak|0.050|
|denormalize_listreal_rec_TCC7|✅ proved - complete|shostak|0.035|
|denormalize_listreal_rec_TCC8|✅ proved - incomplete|shostak|1.269|
|denormalize_listreal_TCC1|✅ proved - complete|shostak|0.010|
|translist_polylist_id|✅ proved - incomplete|shostak|0.215|
|corner_to_point_TCC1|✅ proved - incomplete|shostak|0.044|

## `minmax`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|between_combine_lr|✅ proved - incomplete|shostak|0.363|
|false_globalexit_inv|✅ proved - incomplete|shostak|0.090|
|rel_globalexit_inv|✅ proved - incomplete|shostak|0.646|
|eps_localexit_inv|✅ proved - incomplete|shostak|0.497|
|rel_localexit_inv|✅ proved - incomplete|shostak|0.194|

## `multi_bernstein`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_sigma_bijection_TCC1|✅ proved - complete|shostak|0.100|
|bsproduct_eval_TCC1|✅ proved - incomplete|shostak|0.030|
|multibs_eval_rec_TCC1|✅ proved - incomplete|shostak|0.043|
|multibs_eval_rec_TCC2|✅ proved - incomplete|shostak|0.020|
|multibs_eval_rec_TCC3|✅ proved - complete|shostak|0.020|
|multibs_eval_1_term|✅ proved - incomplete|shostak|2.505|
|multibs_eval_equiv|✅ proved - incomplete|shostak|3.272|
|multibs_eval_below_mono|✅ proved - incomplete|shostak|0.409|
|multibs_eval_id|✅ proved - incomplete|shostak|0.592|
|multibscoeff_id|✅ proved - incomplete|shostak|0.232|
|Bern_coeffs_rel_implic|✅ proved - incomplete|shostak|0.110|
|Bern_coeffs_rel_def|✅ proved - incomplete|shostak|0.725|
|multibs_cornerpoint_coeff|✅ proved - incomplete|shostak|1.355|
|forall_X_id|✅ proved - incomplete|shostak|0.097|
|forall_X_between_id|✅ proved - incomplete|shostak|0.093|
|Bern_coeffs_endpoints_rel_rec_TCC1|✅ proved - incomplete|shostak|0.030|
|Bern_coeffs_endpoints_rel_rec_TCC2|✅ proved - incomplete|shostak|0.036|
|Bern_coeffs_endpoints_rel_rec_TCC3|✅ proved - complete|shostak|0.010|
|Bern_coeffs_endpoints_rel_TCC1|✅ proved - incomplete|shostak|0.020|
|Bern_coeffs_endpoints_rel_def|✅ proved - incomplete|shostak|1.929|
|Bern_coeffs_counterexample|✅ proved - incomplete|shostak|1.887|
|Bern_le|✅ proved - incomplete|shostak|1.959|
|Bern_lt|✅ proved - incomplete|shostak|0.461|
|Bern_ge|✅ proved - incomplete|shostak|1.830|
|Bern_gt|✅ proved - incomplete|shostak|0.457|
|Bern_rel|✅ proved - incomplete|shostak|0.063|
|forall_X_between_minmax|✅ proved - incomplete|shostak|0.082|
|Bern_split_left_mono_TCC1|✅ proved - incomplete|shostak|0.036|
|Bern_split_right_mono_TCC1|✅ proved - incomplete|shostak|0.050|
|Bern_split_right_mono_TCC2|✅ proved - incomplete|shostak|0.050|
|Bern_split_right_mono_TCC3|✅ proved - incomplete|shostak|0.047|
|Bern_split_bspoly|✅ proved - incomplete|shostak|3.746|
|Bern_eval_left|✅ proved - incomplete|shostak|0.894|
|Bern_eval_left_def|✅ proved - incomplete|shostak|0.126|
|Bern_eval_right|✅ proved - incomplete|shostak|0.961|
|Bern_eval_right_def|✅ proved - incomplete|shostak|0.089|
|Bernstein_sweep_TCC1|✅ proved - incomplete|shostak|0.050|
|Bernstein_sweep_TCC2|✅ proved - complete|shostak|0.010|
|Bern_sweep_right_TCC1|✅ proved - incomplete|shostak|0.040|
|Bern_sweep_eval_left|✅ proved - incomplete|shostak|0.000|
|Bern_sweep_eval_right|✅ proved - incomplete|shostak|1.522|

## `multi_polynomial`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_sigma_bijection_TCC1|✅ proved - complete|shostak|0.020|
|multipoly_translate_denormalize_TCC1|✅ proved - incomplete|shostak|0.038|
|multipoly_translate_denormalize|✅ proved - incomplete|shostak|1.188|
|multipoly_translate_normalize_TCC1|✅ proved - incomplete|shostak|0.090|
|multipoly_translate_normalize_TCC2|✅ proved - incomplete|shostak|0.086|
|multipoly_translate_normalize|✅ proved - incomplete|shostak|1.402|
|multipoly_translate_bounded_def_TCC1|✅ proved - incomplete|shostak|0.061|
|multipoly_translate_bounded_def|✅ proved - incomplete|shostak|0.482|
|multipoly_translate_def|✅ proved - incomplete|shostak|2.233|
|multipoly_zero_above_def|✅ proved - incomplete|shostak|0.283|
|multipoly_add_coeff_TCC1|✅ proved - incomplete|shostak|0.030|
|multipoly_add_def|✅ proved - incomplete|shostak|1.370|
|multipoly_scalar_def|✅ proved - incomplete|shostak|0.130|
|multipoly_sub_def|✅ proved - incomplete|shostak|0.126|
|polyproduct_product_TCC1|✅ proved - incomplete|shostak|0.092|
|polyproduct_product_def|✅ proved - incomplete|shostak|4.094|
|multipoly_product_coeff_TCC1|✅ proved - incomplete|shostak|0.070|
|multipoly_product_coeff_TCC2|✅ proved - complete|shostak|0.010|
|multipoly_product_coeff_TCC3|✅ proved - incomplete|shostak|0.130|
|multipoly_product_def_TCC1|✅ proved - complete|shostak|0.010|
|multipoly_product_def|✅ proved - incomplete|shostak|1.855|
|multipoly_sq_def_TCC1|✅ proved - incomplete|shostak|0.080|
|multipoly_sq_def|✅ proved - incomplete|shostak|0.150|

## `poly2bernstein`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|bs_convert_mono_TCC1|✅ proved - incomplete|shostak|0.040|
|bs_convert_mono_TCC2|✅ proved - incomplete|shostak|0.031|
|bs_convert_poly_def|✅ proved - incomplete|shostak|0.564|

## `vardirselector`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|var_coeff_range_rec_TCC1|✅ proved - incomplete|shostak|0.061|
|var_coeff_range_rec_TCC2|✅ proved - incomplete|shostak|0.123|
|var_coeff_range_rec_TCC3|✅ proved - incomplete|shostak|0.030|
|var_maxcoeff_rec_TCC1|✅ proved - incomplete|shostak|0.050|
|var_maxcoeff_rec_TCC2|✅ proved - incomplete|shostak|0.020|
|var_maxcoeff_rec_TCC3|✅ proved - incomplete|shostak|0.010|
|var_maxcoeff_rec_TCC4|✅ proved - complete|shostak|0.000|
|MaxVarMinDir_TCC1|✅ proved - complete|shostak|0.010|

## `bernstein_minmax`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|unit_box_lb_id|✅ proved - incomplete|shostak|0.108|
|unit_box_ub_id|✅ proved - incomplete|shostak|0.106|
|sound_id|✅ proved - incomplete|shostak|0.085|
|sound_lb_le_ub|✅ proved - incomplete|shostak|0.030|
|combine_sound|✅ proved - incomplete|shostak|1.002|
|Bern_coeffs_minmax_rec_TCC1|✅ proved - incomplete|shostak|0.471|
|Bern_coeffs_minmax_rec_TCC2|✅ proved - incomplete|shostak|0.020|
|Bern_coeffs_minmax_rec_TCC3|✅ proved - incomplete|shostak|0.098|
|Bern_coeffs_minmax_rec_TCC4|✅ proved - incomplete|shostak|0.040|
|Bern_coeffs_minmax_rec_TCC5|✅ proved - incomplete|shostak|0.030|
|Bern_coeffs_minmax_rec_TCC6|✅ proved - incomplete|shostak|4.100|
|Bern_coeffs_minmax_rec_TCC7|✅ proved - incomplete|shostak|0.020|
|Bern_coeffs_minmax_TCC1|✅ proved - complete|shostak|0.031|
|Bern_coeffs_minmax_TCC2|✅ proved - incomplete|shostak|0.050|
|Bern_coeffs_minmax_length|✅ proved - incomplete|shostak|0.025|
|Bern_coeffs_minmax_maxdepth|✅ proved - incomplete|shostak|0.030|
|Bern_coeffs_minmax_var|✅ proved - incomplete|shostak|0.208|
|list2array_sound_pi|✅ proved - incomplete|shostak|0.445|
|Bernstein_minmax_rec_TCC1|✅ proved - complete|shostak|0.010|
|Bernstein_minmax_rec_TCC2|✅ proved - incomplete|shostak|0.218|
|Bernstein_minmax_rec_TCC3|✅ proved - incomplete|shostak|0.060|
|Bernstein_minmax_rec_TCC4|✅ proved - incomplete|shostak|0.105|
|Bernstein_minmax_rec_TCC5|✅ proved - incomplete|shostak|0.114|
|Bernstein_minmax_rec_TCC6|✅ proved - incomplete|shostak|4.801|
|Bernstein_minmax_rec_TCC7|✅ proved - incomplete|shostak|7.580|
|Bernstein_minmax_TCC1|✅ proved - complete|shostak|0.010|

## `a2l__bernstein_minmax`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|a2l__Bern_coeffs_minmax_rec_TCC1|✅ proved - incomplete|shostak|0.083|
|a2l__Bern_coeffs_minmax_rec_TCC2|✅ proved - incomplete|shostak|0.030|
|a2l__Bern_coeffs_minmax_rec_TCC3|✅ proved - incomplete|shostak|0.068|
|a2l__Bern_coeffs_minmax_rec_TCC4|✅ proved - incomplete|shostak|0.118|
|a2l__Bern_coeffs_minmax_rec_TCC5|✅ proved - incomplete|shostak|0.046|
|a2l__Bern_coeffs_minmax_rec_TCC6|✅ proved - incomplete|shostak|0.329|
|a2l__Bern_coeffs_minmax_rec_TCC7|✅ proved - incomplete|shostak|0.948|
|a2l__Bern_coeffs_minmax_rec_TCC8|✅ proved - incomplete|shostak|0.090|
|a2l__Bern_coeffs_minmax_TCC1|✅ proved - incomplete|shostak|0.021|
|a2l__Bern_coeffs_minmax_TCC2|✅ proved - incomplete|shostak|0.030|
|a2l__Bern_coeffs_minmax_TCC3|✅ proved - incomplete|shostak|0.083|
|polylist_represents_translist_polylist|✅ proved - incomplete|shostak|0.613|
|a2l__Bern_split_left_mpoly__homomorphic|✅ proved - incomplete|shostak|0.030|
|a2l__Bern_split_right_mpoly__homomorphic|✅ proved - incomplete|shostak|0.026|
|a2l__Bernstein_minmax_rec_TCC1|✅ proved - incomplete|shostak|0.030|
|a2l__Bernstein_minmax_rec_TCC2|✅ proved - incomplete|shostak|0.030|
|a2l__Bernstein_minmax_rec_TCC3|✅ proved - incomplete|shostak|0.155|
|a2l__Bernstein_minmax_rec_TCC4|✅ proved - incomplete|shostak|0.060|
|a2l__Bernstein_minmax_rec_TCC5|✅ proved - incomplete|shostak|0.383|
|a2l__Bernstein_minmax_rec_TCC6|✅ proved - incomplete|shostak|1.450|
|a2l__Bernstein_minmax_rec_TCC7|✅ proved - incomplete|shostak|3.701|
|a2l__Bernstein_minmax_rec_TCC8|✅ proved - incomplete|shostak|1.979|
|a2l__Bernstein_minmax_rec_TCC9|✅ proved - incomplete|shostak|0.405|
|a2l__Bernstein_minmax_rec_TCC10|✅ proved - incomplete|shostak|1.292|
|a2l__Bernstein_minmax_TCC1|✅ proved - incomplete|shostak|0.030|
|a2l__Bernstein_minmax_TCC2|✅ proved - incomplete|shostak|0.045|

## `a2l__vardirselector`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|a2l__var_coeff_range_rec_TCC1|✅ proved - incomplete|shostak|0.137|
|a2l__var_coeff_range_rec_TCC2|✅ proved - incomplete|shostak|0.030|
|a2l__var_maxcoeff_rec_TCC1|✅ proved - incomplete|shostak|0.050|
|a2l__var_maxcoeff_rec_TCC2|✅ proved - incomplete|shostak|0.020|
|a2l__var_maxcoeff_rec_TCC3|✅ proved - incomplete|shostak|0.020|
|a2l__var_maxcoeff_rec_TCC4|✅ proved - complete|shostak|0.010|
|a2l__MaxVarMinDir_TCC1|✅ proved - complete|shostak|0.010|

## `a2l__multi_bernstein`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|a2l__bsproduct_eval_TCC1|✅ proved - incomplete|shostak|0.027|
|a2l__bsproduct_eval__homomorphism|✅ proved - incomplete|shostak|0.957|
|a2l__multibs_eval__homomorphism|✅ proved - incomplete|shostak|0.310|
|a2l__multibscoeff_homomorphism|✅ proved - incomplete|shostak|0.657|
|a2l__multibscoeff_id|✅ proved - incomplete|shostak|0.067|
|a2l__eval_X_between__homomorphism|✅ proved - incomplete|shostak|0.030|
|a2l__forall_X_between__homorphism|✅ proved - incomplete|shostak|0.047|
|a2l__Bern_split_left_mono_TCC1|✅ proved - incomplete|shostak|0.038|
|a2l__Bern_split_left_mono__homomorphism|✅ proved - incomplete|shostak|1.937|
|a2l__Bern_split_right_mono_TCC1|✅ proved - incomplete|shostak|0.050|
|a2l__Bern_split_right_mono_TCC2|✅ proved - incomplete|shostak|0.049|
|a2l__Bern_split_right_mono_TCC3|✅ proved - incomplete|shostak|0.050|
|a2l__Bern_split_right_mono__homomorphism|✅ proved - incomplete|shostak|2.403|
|a2l__Bern_split_left_mpoly__homomorphism|✅ proved - incomplete|shostak|1.075|
|a2l__Bern_split_right_mpoly__homomorphism|✅ proved - incomplete|shostak|1.349|

## `multibernstein_into_polylist`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|represents_TCC1|✅ proved - complete|shostak|0.060|
|represents_TCC2|✅ proved - incomplete|shostak|0.208|
|polyproduct__represents_TCC1|✅ proved - complete|shostak|0.050|
|polylist__represents_multibernstein|✅ proved - incomplete|shostak|1.091|
|representation__is_canonical|✅ proved - incomplete|shostak|0.280|

## `a2l__util`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|maximum_degree_TCC1|✅ proved - incomplete|shostak|0.030|
|maximum_degree_TCC2|✅ proved - incomplete|shostak|0.011|
|maximum_degree_TCC3|✅ proved - complete|shostak|0.010|
|maximum_degree_TCC4|✅ proved - incomplete|shostak|0.050|
|maximum_degree_TCC5|✅ proved - incomplete|shostak|0.056|
|maximum_degree_TCC6|✅ proved - complete|shostak|0.010|

## `vardirselector_into_a2lvardirselector`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|represented_by_TCC1|✅ proved - incomplete|shostak|0.060|

## `MPoly`
No formula declaration found.
## `multi_polylist`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|maxnum_TCC1|✅ proved - complete|shostak|0.010|
|maxnum_TCC2|✅ proved - incomplete|shostak|0.021|
|max_TCC1|✅ proved - incomplete|shostak|0.180|
|max_TCC2|✅ proved - incomplete|shostak|0.108|
|max_TCC3|✅ proved - incomplete|shostak|0.060|
|max_TCC4|✅ proved - incomplete|shostak|0.060|
|max_TCC5|✅ proved - incomplete|shostak|0.066|
|max_TCC6|✅ proved - incomplete|shostak|0.150|
|max_TCC7|✅ proved - complete|shostak|0.030|
|max_TCC8|✅ proved - complete|shostak|0.020|
|max_TCC9|✅ proved - incomplete|shostak|0.105|
|max_TCC10|✅ proved - incomplete|shostak|1.222|
|max_id|✅ proved - incomplete|shostak|0.113|
|max_cdr_TCC1|✅ proved - incomplete|shostak|0.070|
|max_cdr|✅ proved - incomplete|shostak|0.409|
|max_sym|✅ proved - incomplete|shostak|0.335|
|max_assoc|✅ proved - incomplete|shostak|0.680|
|varmono_TCC1|✅ proved - incomplete|shostak|0.030|
|varmono_TCC2|✅ proved - complete|shostak|0.010|
|monolist_eval_rec_TCC1|✅ proved - incomplete|shostak|0.070|
|monolist_eval_rec_TCC2|✅ proved - incomplete|shostak|0.125|
|monolist_eval_rec_TCC3|✅ proved - complete|shostak|0.020|
|monolist_eval_rec_TCC4|✅ proved - incomplete|shostak|0.020|
|monolist_eval_rec_TCC5|✅ proved - complete|shostak|0.030|
|monolist_eval_rec_TCC6|✅ proved - incomplete|shostak|1.751|
|monolist_eval_prod_TCC1|✅ proved - incomplete|shostak|0.030|
|monolist_eval_prod|✅ proved - incomplete|shostak|0.170|
|monosum_TCC1|✅ proved - incomplete|shostak|0.254|
|monosum_TCC2|✅ proved - incomplete|shostak|0.262|
|monosum_TCC3|✅ proved - incomplete|shostak|1.642|
|meval_TCC1|✅ proved - complete|shostak|0.033|
|meval_TCC2|✅ proved - incomplete|shostak|0.060|
|meval_TCC3|✅ proved - complete|shostak|0.020|
|meval_sigma|✅ proved - incomplete|shostak|1.069|
|degree_TCC1|✅ proved - incomplete|shostak|0.030|
|degree_TCC2|✅ proved - incomplete|shostak|0.184|
|degree_TCC3|✅ proved - incomplete|shostak|0.040|
|degree_TCC4|✅ proved - incomplete|shostak|1.355|
|degree_zero|✅ proved - incomplete|shostak|0.662|
|multipoly_to_mpoly_TCC1|✅ proved - incomplete|shostak|0.028|
|mp_simp_rec_TCC1|✅ proved - incomplete|shostak|0.080|
|mp_simp_rec_TCC2|✅ proved - incomplete|shostak|0.191|
|mp_simp_rec_TCC3|✅ proved - complete|shostak|0.030|
|mp_simp_rec_TCC4|✅ proved - incomplete|shostak|0.110|
|mp_simp_rec_TCC5|✅ proved - incomplete|shostak|0.260|
|mp_simp_rec_TCC6|✅ proved - complete|shostak|0.024|
|mp_simp_rec_TCC7|✅ proved - incomplete|shostak|0.110|
|mp_simp_rec_TCC8|✅ proved - incomplete|shostak|0.296|
|mp_simp_rec_TCC9|✅ proved - complete|shostak|0.030|
|mp_simp_rec_TCC10|✅ proved - incomplete|shostak|0.334|
|mp_simp_rec_TCC11|✅ proved - incomplete|shostak|0.378|
|mp_simp_rec_TCC12|✅ proved - incomplete|shostak|0.310|
|mp_simp_rec_TCC13|✅ proved - incomplete|shostak|0.216|
|mp_simp_TCC1|✅ proved - incomplete|shostak|0.134|
|mpsum_TCC1|✅ proved - incomplete|shostak|0.184|
|mpprod_rec_TCC1|✅ proved - incomplete|shostak|0.050|
|mpprod_rec_TCC2|✅ proved - incomplete|shostak|0.155|
|mpprod_rec_TCC3|✅ proved - complete|shostak|0.020|
|mpprod_rec_TCC4|✅ proved - incomplete|shostak|0.224|
|mpprod_rec_TCC5|✅ proved - incomplete|shostak|0.090|
|mpprod_rec_TCC6|✅ proved - incomplete|shostak|0.090|
|mpprod_rec_TCC7|✅ proved - incomplete|shostak|0.319|
|mpprod_rec_TCC8|✅ proved - incomplete|shostak|0.120|
|mpprod_rec_TCC9|✅ proved - incomplete|shostak|0.100|
|mpprod_rec_TCC10|✅ proved - incomplete|shostak|0.622|
|mpprod_TCC1|✅ proved - incomplete|shostak|0.030|
|mpscal_TCC1|✅ proved - incomplete|shostak|0.040|
|multipolylist_eval_TCC1|✅ proved - incomplete|shostak|0.120|
|multipolylist_eval|✅ proved - incomplete|shostak|3.011|
|multipolylist_const|✅ proved - incomplete|shostak|0.060|
|multipolylist_monom_TCC1|✅ proved - complete|shostak|0.010|
|multipolylist_monom|✅ proved - incomplete|shostak|0.694|
|multipolylist_var|✅ proved - incomplete|shostak|0.061|
|multipolylist_varn|✅ proved - incomplete|shostak|0.070|
|multipolylist_sum|✅ proved - incomplete|shostak|0.040|
|multipolylist_prod|✅ proved - incomplete|shostak|0.010|
|multipolylist_scal|✅ proved - incomplete|shostak|0.090|
|multipolylist_pow_TCC1|✅ proved - incomplete|shostak|0.010|
|multipolylist_pow|✅ proved - incomplete|shostak|0.291|
|multipolylist_neg|✅ proved - incomplete|shostak|0.060|
|multipolylist_minus|✅ proved - incomplete|shostak|0.060|
|multipolylist_div|✅ proved - incomplete|shostak|0.074|
|multipolylist_sq|✅ proved - incomplete|shostak|0.030|

## `poly_minmax`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sound_poly_lb_le_ub|✅ proved - incomplete|shostak|0.113|
|multipolynomial_minmax_TCC1|✅ proved - incomplete|shostak|4.180|
|a2l__multipolynomial_minmax_TCC1|✅ proved - incomplete|shostak|0.040|
|a2l__multipolynomial_minmax__equivalence|✅ proved - incomplete|shostak|0.118|

## `strat_util`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|multipoly_minmax_sound|✅ proved - incomplete|shostak|0.186|
|multipoly_strategy_TCC1|✅ proved - incomplete|shostak|2.495|
|multipoly_strategy_TCC2|✅ proved - incomplete|shostak|2.495|
|multipoly_strategy_true|✅ proved - incomplete|shostak|0.341|
|multipoly_strategy_false|✅ proved - incomplete|shostak|0.183|
|multipoly_strategy_counterexample|✅ proved - incomplete|shostak|0.266|
|a2l__multipoly_strategy_TCC1|✅ proved - incomplete|shostak|1.023|
|a2l__multipoly_strategy_TCC2|✅ proved - incomplete|shostak|1.036|
|a2l__multipoly_strategy__equivalence|✅ proved - incomplete|shostak|0.030|
|a2l__multipoly_strategy_true|✅ proved - incomplete|shostak|0.040|
|a2l__multipoly_strategy_false|✅ proved - incomplete|shostak|0.030|
|a2l__multipoly_strategy_counterexample|✅ proved - incomplete|shostak|0.021|

## `strategies`
No formula declaration found.
## `boxes_def`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|setnth_box_TCC1|✅ proved - incomplete|shostak|0.040|
|setnth_box_TCC2|✅ proved - incomplete|shostak|0.040|
|volume_TCC1|✅ proved - complete|shostak|0.010|
|volume_TCC2|✅ proved - complete|shostak|0.016|
|volume_TCC3|✅ proved - incomplete|shostak|0.020|
|volume_TCC4|✅ proved - incomplete|shostak|0.030|
|volume_TCC5|✅ proved - incomplete|shostak|0.030|

## `boxes`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|unpack_TCC1|✅ proved - incomplete|shostak|0.030|
|neg_mp_TCC1|✅ proved - incomplete|shostak|0.105|
|Boxes_strategy_rec_TCC1|✅ proved - complete|shostak|0.010|
|Boxes_strategy_rec_TCC2|✅ proved - incomplete|shostak|0.084|
|Boxes_strategy_rec_TCC3|✅ proved - incomplete|shostak|0.383|
|Boxes_strategy_rec_TCC4|✅ proved - incomplete|shostak|0.334|
|Boxes_strategy_TCC1|✅ proved - complete|shostak|0.020|
|boxes_strategy_and_TCC1|✅ proved - incomplete|shostak|0.412|
|boxes_strategy_and_TCC2|✅ proved - incomplete|shostak|0.389|
|boxes_strategy_and_TCC3|✅ proved - incomplete|shostak|0.615|
|boxes_strategy_and_TCC4|✅ proved - incomplete|shostak|1.057|

## `tests`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|multipoly_eval_test_1|✅ proved - incomplete|shostak|0.090|
|multipoly_eval_test2|✅ proved - incomplete|shostak|0.095|
|multipoly_eval_test3_TCC1|✅ proved - complete|shostak|0.010|
|multipoly_eval_test3_TCC2|✅ proved - complete|shostak|0.010|
|multipoly_eval_test3|✅ proved - incomplete|shostak|4.667|
|bspoly_convert_poly_test|✅ proved - incomplete|shostak|0.134|

## `grizzly`
No formula declaration found.## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib//float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-pvsio-fix.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210219-extratregies.lisp`|
