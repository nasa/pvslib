# Summary for `exact_real_arith`
Run started at 17:12:23 9/1/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **719**   | **719**    | **719**    | **0**  | **3:25.541 s**   |
|top|0|0|0|0|0.000|
|prelude_aux|36|36|36|0|4.631|
|prelude_A4|85|85|85|0|27.713|
|appendix|15|15|15|0|5.293|
|prelude_sqrt|35|35|35|0|5.146|
|cauchy|19|19|19|0|0.750|
|int|4|4|4|0|0.184|
|add|2|2|2|0|0.845|
|neg|5|5|5|0|0.485|
|sub|1|1|1|0|0.040|
|mul|22|22|22|0|12.743|
|inv|42|42|42|0|18.918|
|unique|12|12|12|0|2.551|
|div|1|1|1|0|0.112|
|rat|4|4|4|0|0.120|
|shift|5|5|5|0|1.552|
|min|2|2|2|0|1.412|
|max|2|2|2|0|1.014|
|sqrtx|11|11|11|0|2.735|
|bisection_nat_sqrt|15|15|15|0|2.716|
|power|59|59|59|0|26.572|
|sum|17|17|17|0|4.203|
|series|20|20|20|0|3.891|
|powerseries|9|9|9|0|0.405|
|atanx|29|29|29|0|10.485|
|asinx|6|6|6|0|1.691|
|acosx|1|1|1|0|0.119|
|sincosx|24|24|24|0|24.381|
|remx|4|4|4|0|0.392|
|trigx|15|15|15|0|0.660|
|log|36|36|36|0|7.899|
|exp|15|15|15|0|7.721|
|hyperbolicx|27|27|27|0|2.236|
|computable_rat|7|7|7|0|0.424|
|floor|19|19|19|0|5.922|
|modulo|3|3|3|0|0.700|
|abs|2|2|2|0|0.702|
|cauchy_expr_eval|106|106|106|0|17.755|
|cauchy_numerical|2|2|2|0|0.423|
|strategies|0|0|0|0|0.000|
## Detailed Summary 
## `top`
No formula declaration found.
## `prelude_aux`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|lt_times_lt_nn1|✅ proved - complete|shostak|0.220|
|lt_times_lt_np1|✅ proved - complete|shostak|0.168|
|both_sides_times_nonneg_le1|✅ proved - complete|shostak|0.057|
|both_sides_times_nonpos_le1|✅ proved - complete|shostak|0.060|
|abs_nonneg|✅ proved - complete|shostak|0.010|
|abs_nonpos|✅ proved - complete|shostak|0.010|
|odd_even|✅ proved - complete|shostak|0.154|
|odd_or_even|✅ proved - complete|shostak|0.010|
|expt_product_aux_TCC1|✅ proved - complete|shostak|0.010|
|expt_product_aux_TCC2|✅ proved - complete|shostak|0.010|
|expt_product_aux|✅ proved - complete|shostak|0.364|
|expt_product_TCC1|✅ proved - complete|shostak|0.010|
|expt_product_TCC2|✅ proved - complete|shostak|0.010|
|expt_product|✅ proved - complete|shostak|0.010|
|expt_division_aux_TCC1|✅ proved - complete|shostak|0.010|
|expt_division_aux|✅ proved - complete|shostak|0.010|
|expt_division_TCC1|✅ proved - complete|shostak|0.010|
|expt_division|✅ proved - complete|shostak|0.435|
|expt_minus1|✅ proved - complete|shostak|0.254|
|lt_equiv_not_le|✅ proved - complete|shostak|0.020|
|le_equiv_not_lt|✅ proved - complete|shostak|0.020|
|lt_equiv_le_plus_one|✅ proved - complete|shostak|0.050|
|lt_plus_one_equiv_le|✅ proved - complete|shostak|0.050|
|lt_le_transitivity|✅ proved - complete|shostak|0.020|
|le_lt_transitivity|✅ proved - complete|shostak|0.020|
|exp_of2_exists_aux_TCC1|✅ proved - complete|shostak|0.040|
|exp_of2_exists_aux|✅ proved - complete|shostak|1.214|
|exp_of2_exists_TCC1|✅ proved - complete|shostak|0.010|
|exp_of2_exists|✅ proved - complete|shostak|0.254|
|exp_of_exists2|✅ proved - complete|shostak|0.383|
|floor_sqrt_val|✅ proved - incomplete|shostak|0.184|
|ceiling_sqrt_0|✅ proved - incomplete|shostak|0.020|
|ceiling_sqrt_val|✅ proved - incomplete|shostak|0.180|
|log2_TCC1|✅ proved - incomplete|shostak|0.020|
|log2_2_expt_i|✅ proved - incomplete|shostak|0.265|
|log2_strict_increasing|✅ proved - incomplete|shostak|0.059|

## `prelude_A4`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|expt_neg_even_TCC1|✅ proved - complete|shostak|0.010|
|expt_neg_even_TCC2|✅ proved - complete|shostak|0.010|
|expt_neg_even|✅ proved - complete|shostak|0.168|
|expt_neg_odd_TCC1|✅ proved - complete|shostak|0.040|
|expt_neg_odd_TCC2|✅ proved - complete|shostak|0.030|
|expt_neg_odd|✅ proved - complete|shostak|0.199|
|expt_0pn|✅ proved - complete|shostak|0.030|
|expt_inverse_inv_TCC1|✅ proved - complete|shostak|0.010|
|expt_inverse_inv|✅ proved - complete|shostak|0.050|
|expt_product_n0i_TCC1|✅ proved - complete|shostak|0.020|
|expt_product_n0i_TCC2|✅ proved - complete|shostak|0.010|
|expt_product_n0i|✅ proved - complete|shostak|0.095|
|expt_division_TCC1|✅ proved - complete|shostak|0.010|
|expt_division_TCC2|✅ proved - complete|shostak|0.010|
|expt_division|✅ proved - complete|shostak|0.110|
|A4_0_TCC1|✅ proved - complete|shostak|0.075|
|A4_0|✅ proved - complete|shostak|0.160|
|A4_1_TCC1|✅ proved - complete|shostak|0.077|
|A4_1|✅ proved - complete|shostak|0.120|
|A4_2|✅ proved - complete|shostak|0.000|
|A4_3_n|✅ proved - complete|shostak|0.205|
|A4_3_0_TCC1|✅ proved - complete|shostak|0.090|
|A4_3_0|✅ proved - complete|shostak|0.180|
|A4_3_p_TCC1|✅ proved - complete|shostak|0.075|
|A4_3_p|✅ proved - complete|shostak|0.190|
|A4_4|✅ proved - complete|shostak|0.693|
|A4_5pp_TCC1|✅ proved - complete|shostak|0.100|
|A4_5pp|✅ proved - complete|shostak|1.369|
|A4_5nn_TCC1|✅ proved - complete|shostak|0.110|
|A4_5nn|✅ proved - complete|shostak|1.682|
|A4_5nn_general_TCC1|✅ proved - complete|shostak|0.090|
|A4_5nn_general|✅ proved - complete|shostak|0.442|
|A4_5_TCC1|✅ proved - complete|shostak|0.080|
|A4_5|✅ proved - complete|shostak|0.641|
|A4_6pp_TCC1|✅ proved - complete|shostak|0.030|
|A4_6pp|✅ proved - complete|shostak|1.569|
|A4_6pp_general_TCC1|✅ proved - complete|shostak|0.030|
|A4_6pp_general|✅ proved - complete|shostak|0.259|
|A4_6nn_TCC1|✅ proved - complete|shostak|0.020|
|A4_6nn|✅ proved - complete|shostak|1.369|
|A4_6nn_general_TCC1|✅ proved - complete|shostak|0.030|
|A4_6nn_general|✅ proved - complete|shostak|0.285|
|A4_sqrt_ineq1|✅ proved - incomplete|shostak|0.081|
|A4_sqrt_ineq2|✅ proved - incomplete|shostak|0.225|
|A4_sqrt_ineq3|✅ proved - incomplete|shostak|0.240|
|A4_logsize|✅ proved - complete|shostak|0.143|
|A4_lemma_ineq1|✅ proved - incomplete|shostak|0.400|
|A4_lemma_ineq2|✅ proved - complete|shostak|0.143|
|A4_lemma_large_UB_0_TCC1|✅ proved - incomplete|shostak|0.150|
|A4_lemma_large_UB_0|✅ proved - incomplete|shostak|1.305|
|A4_lemma_large_UB_TCC1|✅ proved - incomplete|shostak|0.180|
|A4_lemma_large_UB|✅ proved - incomplete|shostak|1.923|
|A4_lemma_large_LB_TCC1|✅ proved - incomplete|shostak|0.160|
|A4_lemma_large_LB|✅ proved - incomplete|shostak|0.000|
|A4_lemma_large_ge3|✅ proved - incomplete|shostak|0.223|
|A4_lemma_large_lt3_TCC1|✅ proved - incomplete|shostak|0.171|
|A4_lemma_large_lt3_TCC2|✅ proved - incomplete|shostak|0.210|
|A4_lemma_large_lt3|✅ proved - incomplete|shostak|1.101|
|A4_lemma_small_UB_TCC1|✅ proved - incomplete|shostak|0.140|
|A4_lemma_small_UB|✅ proved - incomplete|shostak|1.578|
|A4_lemma_small_LB_TCC1|✅ proved - incomplete|shostak|0.133|
|A4_lemma_small_LB|✅ proved - incomplete|shostak|1.163|
|A4_lemma_small_TCC1|✅ proved - incomplete|shostak|0.130|
|A4_lemma_small_TCC2|✅ proved - incomplete|shostak|0.210|
|A4_lemma_small|✅ proved - incomplete|shostak|0.533|
|A4_lemma_px_TCC1|✅ proved - complete|shostak|0.160|
|A4_lemma_px_TCC2|✅ proved - complete|shostak|0.173|
|A4_lemma_px|✅ proved - incomplete|shostak|0.281|
|A4_lemma_p|✅ proved - incomplete|shostak|0.312|
|A4_lemma_0_px_TCC1|✅ proved - complete|shostak|0.080|
|A4_lemma_0_px_TCC2|✅ proved - complete|shostak|0.090|
|A4_lemma_0_px|✅ proved - incomplete|shostak|0.431|
|A4_lemma_0_p|✅ proved - incomplete|shostak|0.732|
|A4_lemma_0_TCC1|✅ proved - complete|shostak|0.080|
|A4_lemma_0_TCC2|✅ proved - complete|shostak|0.090|
|A4_lemma_0|✅ proved - incomplete|shostak|1.221|
|A4_lemma_n_even_TCC1|✅ proved - complete|shostak|0.080|
|A4_lemma_n_even_TCC2|✅ proved - complete|shostak|0.100|
|A4_lemma_n_even|✅ proved - incomplete|shostak|0.647|
|A4_lemma_n_odd_TCC1|✅ proved - complete|shostak|0.110|
|A4_lemma_n_odd_TCC2|✅ proved - complete|shostak|0.130|
|A4_lemma_n_odd|✅ proved - incomplete|shostak|0.719|
|A4_lemma_n_TCC1|✅ proved - complete|shostak|0.090|
|A4_lemma_n_TCC2|✅ proved - complete|shostak|0.090|
|A4_lemma_n|✅ proved - incomplete|shostak|0.782|

## `appendix`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|lemma_A1|✅ proved - incomplete|shostak|0.158|
|lemma_A2|✅ proved - complete|shostak|0.629|
|lemma_A3|✅ proved - incomplete|shostak|0.166|
|lemma_A4_TCC1|✅ proved - incomplete|shostak|0.120|
|lemma_A4_TCC2|✅ proved - incomplete|shostak|0.120|
|lemma_A4_TCC3|✅ proved - incomplete|shostak|0.120|
|lemma_A4|✅ proved - incomplete|shostak|0.784|
|epsilon_log2_aux|✅ proved - complete|shostak|0.212|
|epsilon_log2|✅ proved - complete|shostak|0.120|
|floor_sqrt_aux_TCC1|✅ proved - complete|shostak|0.170|
|floor_sqrt_aux_TCC2|✅ proved - complete|shostak|0.248|
|floor_sqrt_def|✅ proved - incomplete|shostak|0.000|
|floor_log2_TCC1|✅ proved - complete|shostak|0.070|
|floor_log2_TCC2|✅ proved - complete|shostak|0.080|
|floor_log2_def|✅ proved - incomplete|shostak|2.296|

## `prelude_sqrt`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|square_le1|✅ proved - complete|shostak|0.196|
|square_le2|✅ proved - complete|shostak|0.103|
|square_le3|✅ proved - complete|shostak|0.081|
|square_eq1|✅ proved - complete|shostak|0.064|
|square_le4|✅ proved - complete|shostak|0.080|
|square_le5|✅ proved - complete|shostak|0.240|
|square_le6|✅ proved - complete|shostak|0.130|
|square_archimedean1|✅ proved - complete|shostak|0.190|
|square_archimedean2|✅ proved - complete|shostak|0.493|
|square_exist_lt1|✅ proved - complete|shostak|0.963|
|square_exist_lt2|✅ proved - complete|shostak|0.130|
|square_exist_lt3|✅ proved - complete|shostak|0.304|
|square_exist_gt3|✅ proved - complete|shostak|0.420|
|sqrt_set_nonempty|✅ proved - complete|shostak|0.020|
|sqrt_set_has_UB_TCC1|✅ proved - complete|shostak|0.028|
|sqrt_set_has_UB|✅ proved - complete|shostak|0.140|
|sqrt_set_LUB|✅ proved - complete|shostak|0.303|
|square_injective|✅ proved - complete|shostak|0.070|
|square_surjective|✅ proved - complete|shostak|0.129|
|square_bijective|✅ proved - complete|shostak|0.009|
|square_is|✅ proved - complete|shostak|0.010|
|sqrt_square1|✅ proved - complete|shostak|0.010|
|sqrt_square2|✅ proved - complete|shostak|0.010|
|square_times|✅ proved - complete|shostak|0.040|
|sqrt_times|✅ proved - complete|shostak|0.070|
|sqrt_zero|✅ proved - complete|shostak|0.065|
|sqrt_one|✅ proved - complete|shostak|0.080|
|both_sides_sqrt1|✅ proved - complete|shostak|0.094|
|both_sides_sqrt2|✅ proved - complete|shostak|0.070|
|both_sides_sqrt_lt1|✅ proved - complete|shostak|0.093|
|both_sides_sqrt_lt2|✅ proved - complete|shostak|0.100|
|both_sides_sqrt_lt3|✅ proved - complete|shostak|0.084|
|both_sides_sqrt_le1|✅ proved - complete|shostak|0.120|
|both_sides_sqrt_le2|✅ proved - complete|shostak|0.093|
|both_sides_sqrt_le3|✅ proved - complete|shostak|0.114|

## `cauchy`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_real_TCC1|✅ proved - complete|shostak|0.020|
|cauchy_nzreal_TCC1|✅ proved - complete|shostak|0.030|
|cauchy_nnreal_TCC1|✅ proved - complete|shostak|0.020|
|cauchy_npreal_TCC1|✅ proved - complete|shostak|0.020|
|cauchy_posreal_TCC1|✅ proved - complete|shostak|0.020|
|cauchy_negreal_TCC1|✅ proved - complete|shostak|0.050|
|cauchy_smallreal_TCC1|✅ proved - complete|shostak|0.020|
|subtype_TCC1|✅ proved - complete|shostak|0.012|
|subtype_TCC2|✅ proved - complete|shostak|0.020|
|subtype_TCC3|✅ proved - complete|shostak|0.010|
|subtype_TCC4|✅ proved - complete|shostak|0.020|
|subtype_TCC5|✅ proved - complete|shostak|0.010|
|subtype_TCC6|✅ proved - complete|shostak|0.013|
|subtype_TCC7|✅ proved - complete|shostak|0.010|
|subtype_TCC8|✅ proved - complete|shostak|0.010|
|cauchy_zero_TCC1|✅ proved - complete|shostak|0.020|
|unique_cauchy_zero|✅ proved - complete|shostak|0.353|
|unique_cauchy_zero2|✅ proved - complete|shostak|0.072|
|unique_cauchy_zero3|✅ proved - complete|shostak|0.020|

## `int`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_int_TCC1|✅ proved - complete|shostak|0.070|
|cauchy_nat_TCC1|✅ proved - complete|shostak|0.044|
|int_lemma|✅ proved - complete|shostak|0.030|
|nat_lemma|✅ proved - complete|shostak|0.040|

## `add`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_add_TCC1|✅ proved - complete|shostak|0.433|
|add_lemma|✅ proved - complete|shostak|0.412|

## `neg`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_neg_TCC1|✅ proved - complete|shostak|0.170|
|neg_lemma|✅ proved - complete|shostak|0.203|
|neg_cauchy_nzreal_is_cauchy_nzreal|✅ proved - complete|shostak|0.030|
|neg_cauchy_posreal_is_cauchy_negreal|✅ proved - complete|shostak|0.040|
|neg_cauchy_negreal_is_cauchy_posreal|✅ proved - complete|shostak|0.042|

## `sub`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sub_lemma|✅ proved - complete|shostak|0.040|

## `mul`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|D1|✅ proved - complete|shostak|0.053|
|D2|✅ proved - complete|shostak|0.060|
|D3|✅ proved - complete|shostak|0.050|
|negreal_times_posreal_is_negreal|✅ proved - complete|shostak|0.100|
|lt_times_lt_nonneg1|✅ proved - complete|shostak|0.136|
|lt_times_lt_nonneg2|✅ proved - complete|shostak|0.172|
|D_pp|✅ proved - complete|shostak|0.576|
|D_pn|✅ proved - complete|shostak|0.564|
|D_nn|✅ proved - complete|shostak|1.271|
|D_p0|✅ proved - complete|shostak|0.203|
|D_n0|✅ proved - complete|shostak|0.613|
|D|✅ proved - complete|shostak|0.769|
|mul_p1|✅ proved - incomplete|shostak|0.403|
|mul_p2|✅ proved - incomplete|shostak|1.269|
|mul_p3|✅ proved - incomplete|shostak|0.377|
|mul_p4|✅ proved - incomplete|shostak|0.535|
|mul_p5|✅ proved - incomplete|shostak|2.282|
|mul_p6|✅ proved - incomplete|shostak|0.869|
|cauchy_mul_type_TCC1|✅ proved - incomplete|shostak|0.198|
|cauchy_mul_type|✅ proved - incomplete|shostak|0.874|
|cauchy_mul_TCC1|✅ proved - incomplete|shostak|0.328|
|mul_lemma|✅ proved - incomplete|shostak|1.041|

## `inv`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|expt_x2_TCC1|✅ proved - complete|shostak|0.010|
|expt_x2|✅ proved - complete|shostak|0.010|
|expt_times2_TCC1|✅ proved - complete|shostak|0.011|
|expt_times2_TCC2|✅ proved - complete|shostak|0.010|
|expt_times2|✅ proved - complete|shostak|0.120|
|minimum_inv_exists|✅ proved - complete|shostak|0.697|
|minimum_inv_TCC1|✅ proved - complete|shostak|0.000|
|minimum_inv_prop0|✅ proved - complete|shostak|0.112|
|minimum_inv_prop1|✅ proved - complete|shostak|0.000|
|minimum_inv_prop2|✅ proved - complete|shostak|0.651|
|minimum_inv_aux_TCC1|✅ proved - complete|shostak|0.040|
|minimum_inv_aux_TCC2|✅ proved - complete|shostak|0.103|
|minimum_inv_aux_TCC3|✅ proved - complete|shostak|0.166|
|minimum_inv_impl_TCC1|✅ proved - complete|shostak|0.010|
|minimum_inv_impl_def|✅ proved - complete|shostak|0.425|
|inv_p0|✅ proved - complete|shostak|0.184|
|inv_p1|✅ proved - complete|shostak|0.567|
|inv_p2|✅ proved - complete|shostak|0.304|
|inv_p3|✅ proved - complete|shostak|0.766|
|inv_p4|✅ proved - complete|shostak|0.830|
|inv_p5|✅ proved - complete|shostak|0.761|
|inv_p6|✅ proved - complete|shostak|0.762|
|inv_p7_TCC1|✅ proved - complete|shostak|0.676|
|inv_p7|✅ proved - complete|shostak|1.147|
|inv_p8|✅ proved - complete|shostak|0.384|
|inv_p9|✅ proved - complete|shostak|1.066|
|inv_n5_TCC1|✅ proved - complete|shostak|0.348|
|inv_n5|✅ proved - complete|shostak|1.011|
|inv_n6_TCC1|✅ proved - complete|shostak|0.190|
|inv_n6|✅ proved - complete|shostak|0.936|
|inv_n7_TCC1|✅ proved - complete|shostak|0.359|
|inv_n7_TCC2|✅ proved - complete|shostak|0.230|
|inv_n7|✅ proved - complete|shostak|0.588|
|inv_n8|✅ proved - complete|shostak|0.554|
|inv_n9|✅ proved - complete|shostak|1.548|
|inv_p|✅ proved - complete|shostak|1.281|
|minimum_inv_prop3_TCC1|✅ proved - incomplete|shostak|0.288|
|minimum_inv_prop3|✅ proved - incomplete|shostak|0.456|
|cauchy_nz_inv_TCC1|✅ proved - incomplete|shostak|0.895|
|cauchy_nz_inv_TCC2|✅ proved - incomplete|shostak|0.194|
|inv_nz_lemma|✅ proved - incomplete|shostak|0.188|
|inv_lemma|✅ proved - incomplete|shostak|0.040|

## `unique`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|unique_cauchy|✅ proved - complete|shostak|0.205|
|cauchy_dich1|✅ proved - complete|shostak|0.039|
|cauchy_dich2|✅ proved - complete|shostak|0.020|
|cauchy_dich3|✅ proved - complete|shostak|0.030|
|cauchy_dich4|✅ proved - complete|shostak|0.020|
|cauchy_dich5|✅ proved - complete|shostak|0.034|
|cauchy_trich|✅ proved - complete|shostak|0.060|
|cauchy_pos_characteristic|✅ proved - complete|shostak|0.220|
|cauchy_neg_characteristic|✅ proved - complete|shostak|0.214|
|cauchy_pos_monotonic|✅ proved - complete|shostak|0.481|
|cauchy_monotonic|✅ proved - complete|shostak|0.753|
|cauchy_odd_extend|✅ proved - complete|shostak|0.475|

## `div`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|div_lemma|✅ proved - incomplete|shostak|0.112|

## `rat`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|denominators_TCC1|✅ proved - complete|shostak|0.020|
|numerator_TCC1|✅ proved - complete|shostak|0.000|
|cauchy_rat_TCC1|✅ proved - complete|shostak|0.010|
|rat_lemma|✅ proved - incomplete|shostak|0.090|

## `shift`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_div2n_TCC1|✅ proved - complete|shostak|0.026|
|cauchy_div2n_TCC2|✅ proved - complete|shostak|0.466|
|cauchy_mul2n_TCC1|✅ proved - complete|shostak|0.282|
|lemma_div2n|✅ proved - complete|shostak|0.504|
|lemma_mul2n|✅ proved - complete|shostak|0.274|

## `min`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_min_TCC1|✅ proved - complete|shostak|0.687|
|min_lemma|✅ proved - complete|shostak|0.725|

## `max`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_max_TCC1|✅ proved - complete|shostak|0.507|
|max_lemma|✅ proved - complete|shostak|0.507|

## `sqrtx`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|nnsqrt_TCC1|✅ proved - complete|shostak|0.010|
|sqrt_p1_TCC1|✅ proved - incomplete|shostak|0.020|
|sqrt_p1_TCC2|✅ proved - incomplete|shostak|0.010|
|sqrt_p1|✅ proved - incomplete|shostak|0.483|
|sqrt_p2_TCC1|✅ proved - incomplete|shostak|0.070|
|sqrt_p2|✅ proved - incomplete|shostak|0.170|
|sqrt_p3|✅ proved - complete|shostak|0.130|
|cauchy_nnsqrt_TCC1|✅ proved - complete|shostak|0.154|
|cauchy_nnsqrt_TCC2|✅ proved - incomplete|shostak|0.815|
|sqrt_nn_lemma|✅ proved - incomplete|shostak|0.857|
|sqrt_lemma|✅ proved - incomplete|shostak|0.016|

## `bisection_nat_sqrt`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|fs_lt_def|✅ proved - incomplete|shostak|0.170|
|fs_eq_def|✅ proved - incomplete|shostak|0.165|
|fs_gt_def|✅ proved - incomplete|shostak|0.170|
|fs_trichotomy|✅ proved - incomplete|shostak|0.174|
|fs_le_ge|✅ proved - incomplete|shostak|0.105|
|bisection_sqrt_aux_TCC1|✅ proved - incomplete|shostak|0.050|
|bisection_sqrt_aux_TCC2|✅ proved - incomplete|shostak|0.150|
|bisection_sqrt_aux_TCC3|✅ proved - incomplete|shostak|0.202|
|bisection_sqrt_aux_TCC4|✅ proved - incomplete|shostak|0.170|
|bisection_sqrt_aux_TCC5|✅ proved - incomplete|shostak|0.174|
|bisection_sqrt_aux_TCC6|✅ proved - incomplete|shostak|0.164|
|bisection_sqrt_aux_prop|✅ proved - incomplete|shostak|0.697|
|bisection_sqrt_TCC1|✅ proved - incomplete|shostak|0.027|
|bisection_sqrt_TCC2|✅ proved - incomplete|shostak|0.100|
|bisection_sqrt_def|✅ proved - incomplete|shostak|0.198|

## `power`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|abs_ge0|✅ proved - complete|shostak|0.010|
|abs_neg|✅ proved - complete|shostak|0.020|
|abs_interval|✅ proved - complete|shostak|0.075|
|abs_interval1|✅ proved - complete|shostak|0.040|
|abs_interval2|✅ proved - complete|shostak|0.040|
|triangle_open|✅ proved - complete|shostak|0.136|
|abs_error|✅ proved - complete|shostak|0.245|
|lemma_A2_generalized|✅ proved - complete|shostak|0.130|
|cauchy_power_lt1_n_odd_TCC1|✅ proved - incomplete|shostak|0.150|
|cauchy_power_lt1_n_odd_TCC2|✅ proved - incomplete|shostak|0.196|
|cauchy_power_lt1_n_odd|✅ proved - incomplete|shostak|1.472|
|cauchy_power_lt1_n_even_TCC1|✅ proved - incomplete|shostak|0.120|
|cauchy_power_lt1_n_even_TCC2|✅ proved - incomplete|shostak|0.150|
|cauchy_power_lt1_n_even|✅ proved - incomplete|shostak|0.812|
|cauchy_power_lt1_snz_odd_TCC1|✅ proved - incomplete|shostak|0.150|
|cauchy_power_lt1_snz_odd_TCC2|✅ proved - incomplete|shostak|0.190|
|cauchy_power_lt1_snz_odd|✅ proved - incomplete|shostak|1.276|
|cauchy_power_lt1_snz_even_TCC1|✅ proved - incomplete|shostak|0.120|
|cauchy_power_lt1_snz_even_TCC2|✅ proved - incomplete|shostak|0.160|
|cauchy_power_lt1_snz_even|✅ proved - incomplete|shostak|0.824|
|cauchy_power_lt1_sn_odd_TCC1|✅ proved - incomplete|shostak|0.150|
|cauchy_power_lt1_sn_odd_TCC2|✅ proved - incomplete|shostak|0.190|
|cauchy_power_lt1_sn_odd|✅ proved - incomplete|shostak|2.275|
|cauchy_power_lt1_sn_even_TCC1|✅ proved - incomplete|shostak|0.120|
|cauchy_power_lt1_sn_even_TCC2|✅ proved - incomplete|shostak|0.162|
|cauchy_power_lt1_sn_even|✅ proved - incomplete|shostak|2.237|
|cauchy_power_lt1_z_TCC1|✅ proved - incomplete|shostak|0.112|
|cauchy_power_lt1_z_TCC2|✅ proved - incomplete|shostak|0.160|
|cauchy_power_lt1_z|✅ proved - incomplete|shostak|1.326|
|cauchy_power_lt1_sp_odd_TCC1|✅ proved - incomplete|shostak|0.150|
|cauchy_power_lt1_sp_odd|✅ proved - incomplete|shostak|1.536|
|cauchy_power_lt1_sp_even_TCC1|✅ proved - incomplete|shostak|0.120|
|cauchy_power_lt1_sp_even|✅ proved - incomplete|shostak|2.398|
|cauchy_power_lt1_pz_TCC1|✅ proved - incomplete|shostak|0.110|
|cauchy_power_lt1_pz|✅ proved - incomplete|shostak|0.868|
|cauchy_power_lt1_p_TCC1|✅ proved - incomplete|shostak|0.110|
|cauchy_power_lt1_p|✅ proved - incomplete|shostak|0.964|
|cauchy_power_lt1_main_generalized_TCC1|✅ proved - incomplete|shostak|0.125|
|cauchy_power_lt1_main_generalized_TCC2|✅ proved - incomplete|shostak|0.160|
|cauchy_power_lt1_main_generalized|✅ proved - incomplete|shostak|0.000|
|cauchy_power_lt1_main_TCC1|✅ proved - incomplete|shostak|0.120|
|cauchy_power_lt1_main_TCC2|✅ proved - incomplete|shostak|0.170|
|cauchy_power_lt1_main|✅ proved - incomplete|shostak|0.227|
|cauchy_power_lt1_isreal_TCC1|✅ proved - incomplete|shostak|0.248|
|cauchy_power_lt1_isreal_TCC2|✅ proved - incomplete|shostak|0.040|
|cauchy_power_lt1_isreal_TCC3|✅ proved - incomplete|shostak|0.122|
|cauchy_power_lt1_isreal|✅ proved - incomplete|shostak|0.546|
|cauchy_power_lt1_TCC1|✅ proved - incomplete|shostak|0.020|
|power_lemma_lt1_TCC1|✅ proved - complete|shostak|0.020|
|power_lemma_lt1|✅ proved - incomplete|shostak|0.626|
|cauchy_power_div1|✅ proved - incomplete|shostak|0.316|
|cauchy_power_main_TCC1|✅ proved - incomplete|shostak|0.191|
|cauchy_power_main_TCC2|✅ proved - incomplete|shostak|0.231|
|cauchy_power_main|✅ proved - incomplete|shostak|1.347|
|cauchy_power_isreal_TCC1|✅ proved - incomplete|shostak|0.505|
|cauchy_power_isreal|✅ proved - incomplete|shostak|1.083|
|cauchy_power_TCC1|✅ proved - incomplete|shostak|0.010|
|power_lemma_TCC1|✅ proved - complete|shostak|0.020|
|power_lemma|✅ proved - incomplete|shostak|1.141|

## `sum`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_sigma_TCC1|✅ proved - complete|shostak|0.020|
|sum_lemma2_TCC1|✅ proved - complete|shostak|0.020|
|sum_lemma2_TCC2|✅ proved - complete|shostak|0.020|
|sum_lemma2|✅ proved - incomplete|shostak|1.101|
|cauchy_sum_aux_TCC1|✅ proved - complete|shostak|0.030|
|cauchy_sum_aux_TCC2|✅ proved - complete|shostak|0.010|
|sum_lemma3_TCC1|✅ proved - complete|shostak|0.010|
|sum_lemma3_TCC2|✅ proved - complete|shostak|0.010|
|sum_lemma3|✅ proved - incomplete|shostak|0.149|
|sum_lemma4_TCC1|✅ proved - incomplete|shostak|0.220|
|sum_lemma4|✅ proved - incomplete|shostak|0.797|
|sum_lemma5|✅ proved - incomplete|shostak|1.177|
|cauchys_real_TCC1|✅ proved - complete|shostak|0.024|
|cauchys_real_TCC2|✅ proved - complete|shostak|0.020|
|cauchy_sum_TCC1|✅ proved - incomplete|shostak|0.306|
|sum_lemma_TCC1|✅ proved - complete|shostak|0.020|
|sum_lemma|✅ proved - incomplete|shostak|0.269|

## `series`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sum_TCC1|✅ proved - complete|shostak|0.020|
|sum_TCC2|✅ proved - complete|shostak|0.010|
|sum_lemma1|✅ proved - complete|shostak|0.151|
|geometric_series_TCC1|✅ proved - complete|shostak|0.020|
|geometric_series_aux1_TCC1|✅ proved - complete|shostak|0.010|
|geometric_series_aux1_TCC2|✅ proved - complete|shostak|0.020|
|geometric_series_aux1|✅ proved - complete|shostak|0.511|
|geometric_series_aux_odd_TCC1|✅ proved - complete|shostak|0.149|
|geometric_series_aux_odd|✅ proved - complete|shostak|0.974|
|geometric_series_aux_even_TCC1|✅ proved - complete|shostak|0.075|
|geometric_series_aux_even_TCC2|✅ proved - complete|shostak|0.010|
|geometric_series_aux_even|✅ proved - complete|shostak|1.285|
|geometric_series_approx_set_contains1|✅ proved - complete|shostak|0.010|
|geometric_series_approx_set_nonempty|✅ proved - complete|shostak|0.030|
|geometric_series_approx_set_pos_upper_bound_TCC1|✅ proved - complete|shostak|0.020|
|geometric_series_approx_set_pos_upper_bound_TCC2|✅ proved - complete|shostak|0.010|
|geometric_series_approx_set_pos_upper_bound|✅ proved - complete|shostak|0.433|
|geometric_series_approx_set_pos_least_upper_bound|✅ proved - incomplete|shostak|0.000|
|geometric_series_pos_limit_TCC1|✅ proved - complete|shostak|0.060|
|geometric_series_pos_limit|✅ proved - incomplete|shostak|0.093|

## `powerseries`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|powerseries_TCC1|✅ proved - complete|shostak|0.010|
|powerseries_TCC2|✅ proved - complete|shostak|0.010|
|powerseries_TCC3|✅ proved - complete|shostak|0.010|
|cauchy_powerseries_TCC1|✅ proved - complete|shostak|0.020|
|cauchy_powerseries_TCC2|✅ proved - incomplete|shostak|0.129|
|max_prec_TCC1|✅ proved - complete|shostak|0.020|
|max_prec_TCC2|✅ proved - complete|shostak|0.010|
|powerseries_lemma_TCC1|✅ proved - complete|shostak|0.020|
|powerseries_lemma|✅ proved - incomplete|shostak|0.176|

## `atanx`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_ssmallreal_TCC1|✅ proved - complete|shostak|0.050|
|subtype_TCC1|✅ proved - complete|shostak|0.030|
|cauchy_vsmallreal_TCC1|✅ proved - complete|shostak|0.030|
|subtype_TCC2|✅ proved - complete|shostak|0.020|
|cauchy_atan_drx_series_TCC1|✅ proved - complete|shostak|0.168|
|cauchy_atan_drx_series_TCC2|✅ proved - complete|shostak|0.170|
|atan_series_lemma|✅ proved - incomplete|shostak|0.314|
|cauchy_atan_drxx_TCC1|✅ proved - incomplete|shostak|0.010|
|cauchy_atan_drxx_prop_TCC1|✅ proved - complete|shostak|0.010|
|cauchy_atan_drxx_prop_TCC2|✅ proved - incomplete|shostak|0.030|
|cauchy_atan_drxx_prop|✅ proved - incomplete|shostak|3.441|
|cauchy_atan_dr_TCC1|✅ proved - incomplete|shostak|0.224|
|cauchy_atan_dr_TCC2|✅ proved - incomplete|shostak|0.288|
|atan_dr_lemma|✅ proved - incomplete|shostak|0.465|
|cauchy_pi_TCC1|✅ proved - complete|shostak|0.080|
|cauchy_pi_TCC2|✅ proved - incomplete|shostak|0.107|
|cauchy_pi_TCC3|✅ proved - complete|shostak|0.090|
|cauchy_pi_TCC4|✅ proved - incomplete|shostak|0.098|
|pi_lemma|✅ proved - incomplete|shostak|0.376|
|cauchy_atan_TCC1|✅ proved - incomplete|shostak|0.243|
|cauchy_atan_TCC2|✅ proved - incomplete|shostak|0.417|
|cauchy_atan_TCC3|✅ proved - incomplete|shostak|0.302|
|cauchy_atan_TCC4|✅ proved - incomplete|shostak|0.440|
|cauchy_atan_TCC5|✅ proved - incomplete|shostak|0.293|
|cauchy_atan_TCC6|✅ proved - incomplete|shostak|0.292|
|cauchy_atan_TCC7|✅ proved - incomplete|shostak|0.427|
|cauchy_atan_TCC8|✅ proved - incomplete|shostak|0.243|
|cauchy_atan_TCC9|✅ proved - incomplete|shostak|0.324|
|atan_lemma|✅ proved - incomplete|shostak|1.503|

## `asinx`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_real_abs_le1_TCC1|✅ proved - complete|shostak|0.030|
|subtype_TCC1|✅ proved - complete|shostak|0.010|
|cauchy_asin_TCC1|✅ proved - incomplete|shostak|0.155|
|cauchy_asin_TCC2|✅ proved - incomplete|shostak|0.286|
|cauchy_asin_TCC3|✅ proved - incomplete|shostak|0.128|
|asin_lemma|✅ proved - incomplete|shostak|1.082|

## `acosx`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|acos_lemma|✅ proved - incomplete|shostak|0.119|

## `sincosx`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|real_3pi16_TCC1|✅ proved - incomplete|shostak|0.200|
|cauchy_real_3pi16_TCC1|✅ proved - incomplete|shostak|0.227|
|cauchy_nnsreal_TCC1|✅ proved - complete|shostak|0.020|
|subtype_TCC1|✅ proved - complete|shostak|0.010|
|subtype_TCC2|✅ proved - complete|shostak|0.020|
|subtype_TCC3|✅ proved - incomplete|shostak|0.129|
|cauchy_sin_series_TCC1|✅ proved - incomplete|shostak|0.130|
|cauchy_cos_series_TCC1|✅ proved - incomplete|shostak|0.070|
|sin_series_lemma|✅ proved - incomplete|shostak|0.279|
|cos_series_lemma|✅ proved - incomplete|shostak|0.221|
|cauchy_sin_drx_TCC1|✅ proved - incomplete|shostak|0.010|
|cauchy_sin_drx_TCC2|✅ proved - incomplete|shostak|4.956|
|cauchy_cos_drx_TCC1|✅ proved - incomplete|shostak|0.010|
|cauchy_cos_drx_TCC2|✅ proved - incomplete|shostak|0.000|
|sin_drx_lemma_TCC1|✅ proved - incomplete|shostak|0.050|
|sin_drx_lemma|✅ proved - incomplete|shostak|3.642|
|cauchy_sin_dr_TCC1|✅ proved - incomplete|shostak|0.384|
|sin_dr_lemma|✅ proved - incomplete|shostak|0.602|
|cos_dr_lemma|✅ proved - incomplete|shostak|3.116|
|cauchy_sin_TCC1|✅ proved - incomplete|shostak|0.083|
|cauchy_sin_TCC2|✅ proved - incomplete|shostak|0.141|
|cauchy_sin_TCC3|✅ proved - incomplete|shostak|0.942|
|sin_lemma|✅ proved - incomplete|shostak|4.382|
|cos_lemma|✅ proved - incomplete|shostak|4.757|

## `remx`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|modx_TCC1|✅ proved - complete|shostak|0.155|
|modx_def|✅ proved - complete|shostak|0.147|
|remx_TCC1|✅ proved - complete|shostak|0.090|
|remx_def|✅ proved - complete|shostak|0.000|

## `trigx`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sin_nz_TCC1|✅ proved - incomplete|shostak|0.020|
|cos_nz_TCC1|✅ proved - incomplete|shostak|0.010|
|cauchy_sin_nz_TCC1|✅ proved - incomplete|shostak|0.110|
|cauchy_cos_nz_TCC1|✅ proved - incomplete|shostak|0.112|
|subtype_TCC1|✅ proved - incomplete|shostak|0.020|
|subtype_TCC2|✅ proved - incomplete|shostak|0.020|
|cauchy_sec_TCC1|✅ proved - incomplete|shostak|0.030|
|cauchy_cosec_TCC1|✅ proved - incomplete|shostak|0.024|
|sec_TCC1|✅ proved - incomplete|shostak|0.010|
|cosec_TCC1|✅ proved - incomplete|shostak|0.010|
|sec_lemma|✅ proved - incomplete|shostak|0.073|
|cosec_lemma|✅ proved - incomplete|shostak|0.080|
|tan_lemma_TCC1|✅ proved - incomplete|shostak|0.020|
|tan_lemma|✅ proved - incomplete|shostak|0.058|
|cot_lemma|✅ proved - incomplete|shostak|0.063|

## `log`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_ln_small_TCC1|✅ proved - complete|shostak|0.030|
|subtype_TCC1|✅ proved - complete|shostak|0.030|
|cauchy_ln_med_TCC1|✅ proved - complete|shostak|0.010|
|subtype_TCC2|✅ proved - complete|shostak|0.023|
|cauchy_gt_quarter_TCC1|✅ proved - complete|shostak|0.020|
|subtype_TCC3|✅ proved - complete|shostak|0.010|
|cauchy_ln_series_TCC1|✅ proved - complete|shostak|0.020|
|cauchy_ln_series_TCC2|✅ proved - complete|shostak|0.020|
|ln_series_lemma_TCC1|✅ proved - complete|shostak|0.020|
|ln_series_lemma|✅ proved - incomplete|shostak|0.461|
|ln_estimate_lemma_TCC1|✅ proved - incomplete|shostak|0.056|
|ln_estimate_lemma|✅ proved - incomplete|shostak|0.427|
|cauchy_ln_drx_TCC1|✅ proved - incomplete|shostak|0.040|
|ln_drx_lemma_TCC1|✅ proved - complete|shostak|0.040|
|ln_drx_lemma|✅ proved - incomplete|shostak|1.397|
|cauchy_ln_drx_TCC2|✅ proved - incomplete|shostak|0.070|
|cauchy_ln_half_TCC1|✅ proved - complete|shostak|0.117|
|cauchy_ln_half_TCC2|✅ proved - incomplete|shostak|0.127|
|cauchy_ln_half_lemma|✅ proved - incomplete|shostak|0.105|
|cauchy_ln2_lemma|✅ proved - incomplete|shostak|0.093|
|cauchy_ln_sqrt2_TCC1|✅ proved - incomplete|shostak|0.060|
|cauchy_ln_sqrt2_lemma|✅ proved - incomplete|shostak|0.124|
|cauchy_ln_dr_TCC1|✅ proved - complete|shostak|0.243|
|cauchy_ln_dr_TCC2|✅ proved - incomplete|shostak|0.164|
|ln_dr_lemma_TCC1|✅ proved - complete|shostak|0.020|
|ln_dr_lemma|✅ proved - incomplete|shostak|0.440|
|cauchy_lnx_TCC1|✅ proved - complete|shostak|0.159|
|cauchy_lnx_TCC2|✅ proved - complete|shostak|0.030|
|cauchy_lnx_TCC3|✅ proved - incomplete|shostak|0.278|
|cauchy_lnx_TCC4|✅ proved - incomplete|shostak|1.153|
|ln_lemma_x_TCC1|✅ proved - complete|shostak|0.010|
|ln_lemma_x|✅ proved - incomplete|shostak|1.212|
|cauchy_lnx_TCC5|✅ proved - incomplete|shostak|0.030|
|cauchy_ln_TCC1|✅ proved - incomplete|shostak|0.305|
|cauchy_ln_TCC2|✅ proved - complete|shostak|0.163|
|ln_lemma|✅ proved - incomplete|shostak|0.392|

## `exp`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_exp_series_TCC1|✅ proved - incomplete|shostak|0.020|
|cauchy_exp_series_TCC2|✅ proved - incomplete|shostak|0.070|
|exp_series_lemma|✅ proved - incomplete|shostak|0.084|
|exp_estimate_lemma_TCC1|✅ proved - incomplete|shostak|0.020|
|exp_estimate_lemma|✅ proved - incomplete|shostak|0.236|
|cauchy_exp_dr_TCC1|✅ proved - incomplete|shostak|0.010|
|exp_dr_lemma|✅ proved - incomplete|shostak|3.210|
|cauchy_exp_dr_TCC2|✅ proved - incomplete|shostak|0.030|
|cauchy_exp_TCC1|✅ proved - incomplete|shostak|0.797|
|cauchy_exp_TCC2|✅ proved - incomplete|shostak|0.030|
|cauchy_exp_TCC3|✅ proved - incomplete|shostak|0.928|
|cauchy_exp_TCC4|✅ proved - incomplete|shostak|0.030|
|cauchy_exp_TCC5|✅ proved - incomplete|shostak|0.873|
|exp_lemma|✅ proved - incomplete|shostak|1.353|
|cauchy_exp_is_posreal|✅ proved - incomplete|shostak|0.030|

## `hyperbolicx`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sinh_lemma|✅ proved - incomplete|shostak|0.000|
|cosh_lemma|✅ proved - incomplete|shostak|0.174|
|cauchy_sinh_type|✅ proved - incomplete|shostak|0.020|
|cauchy_cosh_type|✅ proved - incomplete|shostak|0.030|
|cauchy_coth_TCC1|✅ proved - incomplete|shostak|0.040|
|tanh_lemma|✅ proved - incomplete|shostak|0.044|
|sech_lemma|✅ proved - incomplete|shostak|0.064|
|coth_lemma|✅ proved - incomplete|shostak|0.173|
|csch_lemma|✅ proved - incomplete|shostak|0.073|
|cauchy_tanh_type|✅ proved - incomplete|shostak|0.020|
|cauchy_coth_type|✅ proved - incomplete|shostak|0.040|
|cauchy_csch_type|✅ proved - incomplete|shostak|0.084|
|cauchy_sech_type|✅ proved - incomplete|shostak|0.020|
|cauchy_ge1_TCC1|✅ proved - complete|shostak|0.014|
|subtype_TCC1|✅ proved - complete|shostak|0.020|
|cauchy_asinh_TCC1|✅ proved - incomplete|shostak|0.073|
|cauchy_asinh_TCC2|✅ proved - incomplete|shostak|0.206|
|cauchy_acosh_TCC1|✅ proved - incomplete|shostak|0.080|
|cauchy_acosh_TCC2|✅ proved - incomplete|shostak|0.186|
|cauchy_atanh_TCC1|✅ proved - complete|shostak|0.073|
|cauchy_atanh_TCC2|✅ proved - incomplete|shostak|0.174|
|asinh_lemma|✅ proved - incomplete|shostak|0.224|
|acosh_lemma|✅ proved - incomplete|shostak|0.157|
|atanh_lemma|✅ proved - incomplete|shostak|0.183|
|cauchy_asinh_type|✅ proved - incomplete|shostak|0.020|
|cauchy_acosh_type|✅ proved - incomplete|shostak|0.020|
|cauchy_atanh_type|✅ proved - incomplete|shostak|0.024|

## `computable_rat`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_rat_TCC1|✅ proved - complete|shostak|0.050|
|cauchy_rat_TCC2|✅ proved - incomplete|shostak|0.030|
|cauchy_rat_TCC3|✅ proved - complete|shostak|0.020|
|cauchy_rat_TCC4|✅ proved - incomplete|shostak|0.020|
|negative_numerator_TCC1|✅ proved - complete|shostak|0.020|
|negative_numerator|✅ proved - incomplete|shostak|0.092|
|rat_lemma|✅ proved - incomplete|shostak|0.192|

## `floor`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_noninteger_TCC1|✅ proved - complete|shostak|0.080|
|cauchy_noninteger_TCC2|✅ proved - complete|shostak|0.281|
|subtype_TCC1|✅ proved - complete|shostak|0.250|
|nonint_is_not_int|✅ proved - complete|shostak|0.160|
|precisions_TCC1|✅ proved - complete|shostak|0.090|
|divides_floor|✅ proved - complete|shostak|0.136|
|cauchy_floor_aux_TCC1|✅ proved - complete|shostak|0.010|
|cauchy_floor_aux_TCC2|✅ proved - complete|shostak|0.252|
|cauchy_floor_aux_TCC3|✅ proved - complete|shostak|0.040|
|cauchy_floor_aux_TCC4|✅ proved - complete|shostak|0.140|
|integer_lt_plus_1|✅ proved - complete|shostak|0.047|
|real_bound_int_above|✅ proved - complete|shostak|0.060|
|real_bound_int_below|✅ proved - complete|shostak|0.030|
|expt_inv_lt_1|✅ proved - complete|shostak|0.129|
|floor_aux_lem|✅ proved - complete|shostak|3.171|
|floor_aux_lem2_TCC1|✅ proved - complete|shostak|0.020|
|floor_aux_lem2|✅ proved - complete|shostak|0.956|
|cauchy_floor_TCC1|✅ proved - complete|shostak|0.030|
|floor_lemma|✅ proved - complete|shostak|0.040|

## `modulo`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_mod_TCC1|✅ proved - incomplete|shostak|0.597|
|mod_lemma_TCC1|✅ proved - complete|shostak|0.010|
|mod_lemma|✅ proved - incomplete|shostak|0.093|

## `abs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_abs_TCC1|✅ proved - complete|shostak|0.329|
|abs_lemma|✅ proved - complete|shostak|0.373|

## `cauchy_expr_eval`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Eval_real_TCC1|✅ proved - complete|shostak|0.070|
|Eval_real_TCC2|✅ proved - complete|shostak|0.090|
|Eval_real_TCC3|✅ proved - complete|shostak|0.100|
|Eval_real_TCC4|✅ proved - complete|shostak|0.100|
|Eval_real_TCC5|✅ proved - complete|shostak|0.090|
|Eval_real_TCC6|✅ proved - complete|shostak|0.066|
|Eval_real_TCC7|✅ proved - complete|shostak|0.070|
|Eval_real_TCC8|✅ proved - complete|shostak|0.080|
|Eval_real_TCC9|✅ proved - complete|shostak|0.098|
|Eval_real_TCC10|✅ proved - complete|shostak|0.090|
|Eval_real_TCC11|✅ proved - complete|shostak|0.106|
|Eval_real_TCC12|✅ proved - complete|shostak|0.080|
|Eval_real_TCC13|✅ proved - complete|shostak|0.100|
|Eval_real_TCC14|✅ proved - complete|shostak|0.100|
|Eval_real_TCC15|✅ proved - complete|shostak|0.090|
|Eval_real_TCC16|✅ proved - complete|shostak|0.080|
|Eval_real_TCC17|✅ proved - complete|shostak|0.076|
|Eval_real_TCC18|✅ proved - complete|shostak|0.040|
|Eval_real_TCC19|✅ proved - complete|shostak|0.070|
|Eval_real_TCC20|✅ proved - complete|shostak|0.080|
|Eval_real_TCC21|✅ proved - complete|shostak|0.083|
|Eval_real_TCC22|✅ proved - complete|shostak|0.090|
|Eval_real_TCC23|✅ proved - complete|shostak|0.096|
|Eval_real_TCC24|✅ proved - complete|shostak|0.100|
|Eval_real_TCC25|✅ proved - complete|shostak|0.073|
|Eval_real_TCC26|✅ proved - complete|shostak|0.100|
|Eval_real_TCC27|✅ proved - complete|shostak|0.099|
|Eval_real_TCC28|✅ proved - complete|shostak|0.100|
|Eval_real_TCC29|✅ proved - complete|shostak|0.069|
|Eval_real_TCC30|✅ proved - complete|shostak|0.080|
|Eval_real_TCC31|✅ proved - complete|shostak|0.070|
|Eval_real_TCC32|✅ proved - complete|shostak|0.076|
|Eval_real_TCC33|✅ proved - complete|shostak|0.080|
|Eval_real_TCC34|✅ proved - complete|shostak|0.100|
|Eval_real_TCC35|✅ proved - complete|shostak|0.099|
|Eval_real_TCC36|✅ proved - complete|shostak|0.101|
|Eval_real_TCC37|✅ proved - complete|shostak|0.070|
|Eval_real_TCC38|✅ proved - complete|shostak|0.070|
|Eval_real_TCC39|✅ proved - complete|shostak|0.080|
|Eval_real_TCC40|✅ proved - complete|shostak|0.070|
|Eval_real_TCC41|✅ proved - complete|shostak|0.070|
|Eval_real_TCC42|✅ proved - complete|shostak|0.088|
|Eval_real_TCC43|✅ proved - complete|shostak|0.070|
|Eval_real_TCC44|✅ proved - complete|shostak|0.070|
|Eval_real_TCC45|✅ proved - complete|shostak|0.077|
|Eval_real_TCC46|✅ proved - complete|shostak|0.070|
|Eval_real_TCC47|✅ proved - complete|shostak|0.073|
|Eval_real_TCC48|✅ proved - complete|shostak|0.180|
|Eval_real_TCC49|✅ proved - complete|shostak|0.070|
|Eval_real_TCC50|✅ proved - complete|shostak|0.079|
|Eval_real_TCC51|✅ proved - complete|shostak|0.080|
|Eval_real_TCC52|✅ proved - complete|shostak|0.099|
|Eval_real_TCC53|✅ proved - complete|shostak|0.100|
|Eval_real_TCC54|✅ proved - complete|shostak|0.109|
|Eval_real_TCC55|✅ proved - complete|shostak|0.070|
|Eval_real_TCC56|✅ proved - complete|shostak|0.069|
|Eval_real_TCC57|✅ proved - complete|shostak|0.080|
|Eval_real_TCC58|✅ proved - complete|shostak|0.179|
|Eval_real_TCC59|✅ proved - complete|shostak|0.060|
|Eval_real_TCC60|✅ proved - complete|shostak|0.070|
|Eval_TCC1|✅ proved - complete|shostak|0.106|
|Eval_TCC2|✅ proved - complete|shostak|0.102|
|Eval_TCC3|✅ proved - complete|shostak|0.110|
|Eval_TCC4|✅ proved - complete|shostak|0.083|
|Eval_TCC5|✅ proved - complete|shostak|0.100|
|Eval_TCC6|✅ proved - complete|shostak|0.109|
|Eval_TCC7|✅ proved - complete|shostak|0.116|
|Eval_TCC8|✅ proved - complete|shostak|0.100|
|Eval_TCC9|✅ proved - complete|shostak|0.096|
|Eval_TCC10|✅ proved - complete|shostak|0.110|
|Eval_TCC11|✅ proved - complete|shostak|0.090|
|Eval_TCC12|✅ proved - complete|shostak|0.090|
|Eval_TCC13|✅ proved - complete|shostak|0.090|
|Eval_TCC14|✅ proved - complete|shostak|0.103|
|Eval_TCC15|✅ proved - complete|shostak|0.110|
|Eval_TCC16|✅ proved - complete|shostak|0.106|
|Eval_TCC17|✅ proved - complete|shostak|0.110|
|Eval_TCC18|✅ proved - complete|shostak|0.103|
|Eval_TCC19|✅ proved - complete|shostak|0.110|
|Eval_TCC20|✅ proved - complete|shostak|0.080|
|Eval_TCC21|✅ proved - complete|shostak|0.083|
|Eval_TCC22|✅ proved - complete|shostak|0.100|
|Eval_TCC23|✅ proved - complete|shostak|0.112|
|Eval_TCC24|✅ proved - complete|shostak|0.110|
|Eval_TCC25|✅ proved - complete|shostak|0.137|
|Eval_TCC26|✅ proved - complete|shostak|0.082|
|Eval_TCC27|✅ proved - complete|shostak|0.256|
|Eval_TCC28|✅ proved - complete|shostak|0.090|
|Eval_TCC29|✅ proved - complete|shostak|0.438|
|Eval_TCC30|✅ proved - complete|shostak|0.084|
|Eval_TCC31|✅ proved - complete|shostak|0.442|
|Eval_TCC32|✅ proved - complete|shostak|0.080|
|Eval_TCC33|✅ proved - complete|shostak|0.000|
|Eval_TCC34|✅ proved - complete|shostak|0.088|
|Eval_TCC35|✅ proved - complete|shostak|0.114|
|Eval_TCC36|✅ proved - complete|shostak|0.110|
|Eval_TCC37|✅ proved - complete|shostak|0.124|
|Eval_TCC38|✅ proved - complete|shostak|0.154|
|Eval_TCC39|✅ proved - incomplete|shostak|0.393|
|Eval_TCC40|✅ proved - complete|shostak|0.083|
|Eval_TCC41|✅ proved - complete|shostak|1.384|
|Eval_TCC42|✅ proved - complete|shostak|0.080|
|eval_lemma_aux|✅ proved - incomplete|shostak|5.274|
|eval_domain_inside_eval_real|✅ proved - incomplete|shostak|0.651|
|eval_lemma_TCC1|✅ proved - incomplete|shostak|0.037|
|eval_lemma|✅ proved - incomplete|shostak|0.080|

## `cauchy_numerical`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|numerical_soundness_TCC1|✅ proved - incomplete|shostak|0.061|
|numerical_soundness|✅ proved - incomplete|shostak|0.362|

## `strategies`
No formula declaration found.## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib/pvsio_utils/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230712-static-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230710-tcc-gen.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230707-defattach.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230706-extrategies.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`|
