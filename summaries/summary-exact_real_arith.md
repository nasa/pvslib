# Summary for `exact_real_arith`
Run started at 0:19:37 9/20/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **719**   | **719**    | **719**    | **0**  | **3:23.579 s**   |
|top|0|0|0|0|0.000|
|prelude_aux|36|36|36|0|4.639|
|prelude_A4|85|85|85|0|26.681|
|appendix|15|15|15|0|6.922|
|prelude_sqrt|35|35|35|0|4.666|
|cauchy|19|19|19|0|0.792|
|int|4|4|4|0|0.193|
|add|2|2|2|0|0.857|
|neg|5|5|5|0|0.485|
|sub|1|1|1|0|0.040|
|mul|22|22|22|0|12.683|
|inv|42|42|42|0|17.774|
|unique|12|12|12|0|2.542|
|div|1|1|1|0|0.120|
|rat|4|4|4|0|0.272|
|shift|5|5|5|0|1.516|
|min|2|2|2|0|1.357|
|max|2|2|2|0|0.992|
|sqrtx|11|11|11|0|2.640|
|bisection_nat_sqrt|15|15|15|0|2.737|
|power|59|59|59|0|26.819|
|sum|17|17|17|0|2.994|
|series|20|20|20|0|6.893|
|powerseries|9|9|9|0|0.393|
|atanx|29|29|29|0|8.798|
|asinx|6|6|6|0|1.705|
|acosx|1|1|1|0|0.122|
|sincosx|24|24|24|0|24.454|
|remx|4|4|4|0|0.581|
|trigx|15|15|15|0|0.583|
|log|36|36|36|0|7.522|
|exp|15|15|15|0|4.383|
|hyperbolicx|27|27|27|0|2.225|
|computable_rat|7|7|7|0|0.406|
|floor|19|19|19|0|5.715|
|modulo|3|3|3|0|0.768|
|abs|2|2|2|0|0.691|
|cauchy_expr_eval|106|106|106|0|20.209|
|cauchy_numerical|2|2|2|0|0.410|
|strategies|0|0|0|0|0.000|
## Detailed Summary 
## `top`
No formula declaration found.
## `prelude_aux`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|lt_times_lt_nn1|✅ proved - complete|shostak|0.219|
|lt_times_lt_np1|✅ proved - complete|shostak|0.158|
|both_sides_times_nonneg_le1|✅ proved - complete|shostak|0.058|
|both_sides_times_nonpos_le1|✅ proved - complete|shostak|0.060|
|abs_nonneg|✅ proved - complete|shostak|0.010|
|abs_nonpos|✅ proved - complete|shostak|0.019|
|odd_even|✅ proved - complete|shostak|0.150|
|odd_or_even|✅ proved - complete|shostak|0.020|
|expt_product_aux_TCC1|✅ proved - complete|shostak|0.010|
|expt_product_aux_TCC2|✅ proved - complete|shostak|0.008|
|expt_product_aux|✅ proved - complete|shostak|0.359|
|expt_product_TCC1|✅ proved - complete|shostak|0.010|
|expt_product_TCC2|✅ proved - complete|shostak|0.010|
|expt_product|✅ proved - complete|shostak|0.010|
|expt_division_aux_TCC1|✅ proved - complete|shostak|0.010|
|expt_division_aux|✅ proved - complete|shostak|0.020|
|expt_division_TCC1|✅ proved - complete|shostak|0.010|
|expt_division|✅ proved - complete|shostak|0.425|
|expt_minus1|✅ proved - complete|shostak|0.264|
|lt_equiv_not_le|✅ proved - complete|shostak|0.020|
|le_equiv_not_lt|✅ proved - complete|shostak|0.020|
|lt_equiv_le_plus_one|✅ proved - complete|shostak|0.050|
|lt_plus_one_equiv_le|✅ proved - complete|shostak|0.050|
|lt_le_transitivity|✅ proved - complete|shostak|0.020|
|le_lt_transitivity|✅ proved - complete|shostak|0.010|
|exp_of2_exists_aux_TCC1|✅ proved - complete|shostak|0.040|
|exp_of2_exists_aux|✅ proved - complete|shostak|1.202|
|exp_of2_exists_TCC1|✅ proved - complete|shostak|0.010|
|exp_of2_exists|✅ proved - complete|shostak|0.258|
|exp_of_exists2|✅ proved - complete|shostak|0.397|
|floor_sqrt_val|✅ proved - incomplete|shostak|0.192|
|ceiling_sqrt_0|✅ proved - incomplete|shostak|0.010|
|ceiling_sqrt_val|✅ proved - incomplete|shostak|0.189|
|log2_TCC1|✅ proved - incomplete|shostak|0.015|
|log2_2_expt_i|✅ proved - incomplete|shostak|0.268|
|log2_strict_increasing|✅ proved - incomplete|shostak|0.058|

## `prelude_A4`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|expt_neg_even_TCC1|✅ proved - complete|shostak|0.010|
|expt_neg_even_TCC2|✅ proved - complete|shostak|0.010|
|expt_neg_even|✅ proved - complete|shostak|0.167|
|expt_neg_odd_TCC1|✅ proved - complete|shostak|0.040|
|expt_neg_odd_TCC2|✅ proved - complete|shostak|0.040|
|expt_neg_odd|✅ proved - complete|shostak|0.197|
|expt_0pn|✅ proved - complete|shostak|0.030|
|expt_inverse_inv_TCC1|✅ proved - complete|shostak|0.010|
|expt_inverse_inv|✅ proved - complete|shostak|0.050|
|expt_product_n0i_TCC1|✅ proved - complete|shostak|0.010|
|expt_product_n0i_TCC2|✅ proved - complete|shostak|0.010|
|expt_product_n0i|✅ proved - complete|shostak|0.087|
|expt_division_TCC1|✅ proved - complete|shostak|0.010|
|expt_division_TCC2|✅ proved - complete|shostak|0.010|
|expt_division|✅ proved - complete|shostak|0.120|
|A4_0_TCC1|✅ proved - complete|shostak|0.076|
|A4_0|✅ proved - complete|shostak|0.170|
|A4_1_TCC1|✅ proved - complete|shostak|0.077|
|A4_1|✅ proved - complete|shostak|0.110|
|A4_2|✅ proved - complete|shostak|0.440|
|A4_3_n|✅ proved - complete|shostak|0.185|
|A4_3_0_TCC1|✅ proved - complete|shostak|0.080|
|A4_3_0|✅ proved - complete|shostak|0.175|
|A4_3_p_TCC1|✅ proved - complete|shostak|0.060|
|A4_3_p|✅ proved - complete|shostak|0.180|
|A4_4|✅ proved - complete|shostak|0.703|
|A4_5pp_TCC1|✅ proved - complete|shostak|0.084|
|A4_5pp|✅ proved - complete|shostak|1.323|
|A4_5nn_TCC1|✅ proved - complete|shostak|0.094|
|A4_5nn|✅ proved - complete|shostak|1.609|
|A4_5nn_general_TCC1|✅ proved - complete|shostak|0.050|
|A4_5nn_general|✅ proved - complete|shostak|0.325|
|A4_5_TCC1|✅ proved - complete|shostak|0.060|
|A4_5|✅ proved - complete|shostak|0.560|
|A4_6pp_TCC1|✅ proved - complete|shostak|0.030|
|A4_6pp|✅ proved - complete|shostak|1.461|
|A4_6pp_general_TCC1|✅ proved - complete|shostak|0.020|
|A4_6pp_general|✅ proved - complete|shostak|0.235|
|A4_6nn_TCC1|✅ proved - complete|shostak|0.020|
|A4_6nn|✅ proved - complete|shostak|0.000|
|A4_6nn_general_TCC1|✅ proved - complete|shostak|0.030|
|A4_6nn_general|✅ proved - complete|shostak|0.274|
|A4_sqrt_ineq1|✅ proved - incomplete|shostak|0.073|
|A4_sqrt_ineq2|✅ proved - incomplete|shostak|0.240|
|A4_sqrt_ineq3|✅ proved - incomplete|shostak|0.247|
|A4_logsize|✅ proved - complete|shostak|0.139|
|A4_lemma_ineq1|✅ proved - incomplete|shostak|0.397|
|A4_lemma_ineq2|✅ proved - complete|shostak|0.154|
|A4_lemma_large_UB_0_TCC1|✅ proved - incomplete|shostak|0.143|
|A4_lemma_large_UB_0|✅ proved - incomplete|shostak|1.293|
|A4_lemma_large_UB_TCC1|✅ proved - incomplete|shostak|0.174|
|A4_lemma_large_UB|✅ proved - incomplete|shostak|1.924|
|A4_lemma_large_LB_TCC1|✅ proved - incomplete|shostak|0.170|
|A4_lemma_large_LB|✅ proved - incomplete|shostak|1.749|
|A4_lemma_large_ge3|✅ proved - incomplete|shostak|0.214|
|A4_lemma_large_lt3_TCC1|✅ proved - incomplete|shostak|0.170|
|A4_lemma_large_lt3_TCC2|✅ proved - incomplete|shostak|0.219|
|A4_lemma_large_lt3|✅ proved - incomplete|shostak|1.086|
|A4_lemma_small_UB_TCC1|✅ proved - incomplete|shostak|0.130|
|A4_lemma_small_UB|✅ proved - incomplete|shostak|1.599|
|A4_lemma_small_LB_TCC1|✅ proved - incomplete|shostak|0.120|
|A4_lemma_small_LB|✅ proved - incomplete|shostak|0.000|
|A4_lemma_small_TCC1|✅ proved - incomplete|shostak|0.130|
|A4_lemma_small_TCC2|✅ proved - incomplete|shostak|0.215|
|A4_lemma_small|✅ proved - incomplete|shostak|0.526|
|A4_lemma_px_TCC1|✅ proved - complete|shostak|0.163|
|A4_lemma_px_TCC2|✅ proved - complete|shostak|0.180|
|A4_lemma_px|✅ proved - incomplete|shostak|0.279|
|A4_lemma_p|✅ proved - incomplete|shostak|0.302|
|A4_lemma_0_px_TCC1|✅ proved - complete|shostak|0.090|
|A4_lemma_0_px_TCC2|✅ proved - complete|shostak|0.090|
|A4_lemma_0_px|✅ proved - incomplete|shostak|0.421|
|A4_lemma_0_p|✅ proved - incomplete|shostak|0.740|
|A4_lemma_0_TCC1|✅ proved - complete|shostak|0.090|
|A4_lemma_0_TCC2|✅ proved - complete|shostak|0.084|
|A4_lemma_0|✅ proved - incomplete|shostak|1.209|
|A4_lemma_n_even_TCC1|✅ proved - complete|shostak|0.080|
|A4_lemma_n_even_TCC2|✅ proved - complete|shostak|0.096|
|A4_lemma_n_even|✅ proved - incomplete|shostak|0.643|
|A4_lemma_n_odd_TCC1|✅ proved - complete|shostak|0.120|
|A4_lemma_n_odd_TCC2|✅ proved - complete|shostak|0.120|
|A4_lemma_n_odd|✅ proved - incomplete|shostak|0.710|
|A4_lemma_n_TCC1|✅ proved - complete|shostak|0.080|
|A4_lemma_n_TCC2|✅ proved - complete|shostak|0.090|
|A4_lemma_n|✅ proved - incomplete|shostak|0.750|

## `appendix`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|lemma_A1|✅ proved - incomplete|shostak|0.150|
|lemma_A2|✅ proved - complete|shostak|0.614|
|lemma_A3|✅ proved - incomplete|shostak|0.139|
|lemma_A4_TCC1|✅ proved - incomplete|shostak|0.110|
|lemma_A4_TCC2|✅ proved - incomplete|shostak|0.112|
|lemma_A4_TCC3|✅ proved - incomplete|shostak|0.120|
|lemma_A4|✅ proved - incomplete|shostak|0.769|
|epsilon_log2_aux|✅ proved - complete|shostak|0.213|
|epsilon_log2|✅ proved - complete|shostak|0.110|
|floor_sqrt_aux_TCC1|✅ proved - complete|shostak|0.170|
|floor_sqrt_aux_TCC2|✅ proved - complete|shostak|0.248|
|floor_sqrt_def|✅ proved - incomplete|shostak|1.824|
|floor_log2_TCC1|✅ proved - complete|shostak|0.060|
|floor_log2_TCC2|✅ proved - complete|shostak|0.068|
|floor_log2_def|✅ proved - incomplete|shostak|2.215|

## `prelude_sqrt`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|square_le1|✅ proved - complete|shostak|0.190|
|square_le2|✅ proved - complete|shostak|0.104|
|square_le3|✅ proved - complete|shostak|0.072|
|square_eq1|✅ proved - complete|shostak|0.070|
|square_le4|✅ proved - complete|shostak|0.075|
|square_le5|✅ proved - complete|shostak|0.232|
|square_le6|✅ proved - complete|shostak|0.134|
|square_archimedean1|✅ proved - complete|shostak|0.184|
|square_archimedean2|✅ proved - complete|shostak|0.479|
|square_exist_lt1|✅ proved - complete|shostak|0.960|
|square_exist_lt2|✅ proved - complete|shostak|0.130|
|square_exist_lt3|✅ proved - complete|shostak|0.305|
|square_exist_gt3|✅ proved - complete|shostak|0.000|
|sqrt_set_nonempty|✅ proved - complete|shostak|0.023|
|sqrt_set_has_UB_TCC1|✅ proved - complete|shostak|0.030|
|sqrt_set_has_UB|✅ proved - complete|shostak|0.141|
|sqrt_set_LUB|✅ proved - complete|shostak|0.304|
|square_injective|✅ proved - complete|shostak|0.050|
|square_surjective|✅ proved - complete|shostak|0.138|
|square_bijective|✅ proved - complete|shostak|0.010|
|square_is|✅ proved - complete|shostak|0.010|
|sqrt_square1|✅ proved - complete|shostak|0.010|
|sqrt_square2|✅ proved - complete|shostak|0.009|
|square_times|✅ proved - complete|shostak|0.040|
|sqrt_times|✅ proved - complete|shostak|0.066|
|sqrt_zero|✅ proved - complete|shostak|0.060|
|sqrt_one|✅ proved - complete|shostak|0.080|
|both_sides_sqrt1|✅ proved - complete|shostak|0.095|
|both_sides_sqrt2|✅ proved - complete|shostak|0.074|
|both_sides_sqrt_lt1|✅ proved - complete|shostak|0.090|
|both_sides_sqrt_lt2|✅ proved - complete|shostak|0.094|
|both_sides_sqrt_lt3|✅ proved - complete|shostak|0.080|
|both_sides_sqrt_le1|✅ proved - complete|shostak|0.113|
|both_sides_sqrt_le2|✅ proved - complete|shostak|0.100|
|both_sides_sqrt_le3|✅ proved - complete|shostak|0.114|

## `cauchy`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_real_TCC1|✅ proved - complete|shostak|0.020|
|cauchy_nzreal_TCC1|✅ proved - complete|shostak|0.030|
|cauchy_nnreal_TCC1|✅ proved - complete|shostak|0.030|
|cauchy_npreal_TCC1|✅ proved - complete|shostak|0.020|
|cauchy_posreal_TCC1|✅ proved - complete|shostak|0.020|
|cauchy_negreal_TCC1|✅ proved - complete|shostak|0.052|
|cauchy_smallreal_TCC1|✅ proved - complete|shostak|0.020|
|subtype_TCC1|✅ proved - complete|shostak|0.010|
|subtype_TCC2|✅ proved - complete|shostak|0.010|
|subtype_TCC3|✅ proved - complete|shostak|0.020|
|subtype_TCC4|✅ proved - complete|shostak|0.020|
|subtype_TCC5|✅ proved - complete|shostak|0.014|
|subtype_TCC6|✅ proved - complete|shostak|0.020|
|subtype_TCC7|✅ proved - complete|shostak|0.020|
|subtype_TCC8|✅ proved - complete|shostak|0.010|
|cauchy_zero_TCC1|✅ proved - complete|shostak|0.020|
|unique_cauchy_zero|✅ proved - complete|shostak|0.365|
|unique_cauchy_zero2|✅ proved - complete|shostak|0.071|
|unique_cauchy_zero3|✅ proved - complete|shostak|0.020|

## `int`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_int_TCC1|✅ proved - complete|shostak|0.073|
|cauchy_nat_TCC1|✅ proved - complete|shostak|0.040|
|int_lemma|✅ proved - complete|shostak|0.030|
|nat_lemma|✅ proved - complete|shostak|0.050|

## `add`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_add_TCC1|✅ proved - complete|shostak|0.454|
|add_lemma|✅ proved - complete|shostak|0.403|

## `neg`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_neg_TCC1|✅ proved - complete|shostak|0.170|
|neg_lemma|✅ proved - complete|shostak|0.202|
|neg_cauchy_nzreal_is_cauchy_nzreal|✅ proved - complete|shostak|0.030|
|neg_cauchy_posreal_is_cauchy_negreal|✅ proved - complete|shostak|0.040|
|neg_cauchy_negreal_is_cauchy_posreal|✅ proved - complete|shostak|0.043|

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
|lt_times_lt_nonneg2|✅ proved - complete|shostak|0.173|
|D_pp|✅ proved - complete|shostak|0.587|
|D_pn|✅ proved - complete|shostak|0.554|
|D_nn|✅ proved - complete|shostak|1.260|
|D_p0|✅ proved - complete|shostak|0.194|
|D_n0|✅ proved - complete|shostak|0.613|
|D|✅ proved - complete|shostak|0.761|
|mul_p1|✅ proved - incomplete|shostak|0.403|
|mul_p2|✅ proved - incomplete|shostak|1.276|
|mul_p3|✅ proved - incomplete|shostak|0.367|
|mul_p4|✅ proved - incomplete|shostak|0.545|
|mul_p5|✅ proved - incomplete|shostak|2.261|
|mul_p6|✅ proved - incomplete|shostak|0.851|
|cauchy_mul_type_TCC1|✅ proved - incomplete|shostak|0.201|
|cauchy_mul_type|✅ proved - incomplete|shostak|0.879|
|cauchy_mul_TCC1|✅ proved - incomplete|shostak|0.330|
|mul_lemma|✅ proved - incomplete|shostak|1.029|

## `inv`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|expt_x2_TCC1|✅ proved - complete|shostak|0.010|
|expt_x2|✅ proved - complete|shostak|0.010|
|expt_times2_TCC1|✅ proved - complete|shostak|0.010|
|expt_times2_TCC2|✅ proved - complete|shostak|0.010|
|expt_times2|✅ proved - complete|shostak|0.117|
|minimum_inv_exists|✅ proved - complete|shostak|0.702|
|minimum_inv_TCC1|✅ proved - complete|shostak|0.010|
|minimum_inv_prop0|✅ proved - complete|shostak|0.101|
|minimum_inv_prop1|✅ proved - complete|shostak|0.435|
|minimum_inv_prop2|✅ proved - complete|shostak|0.547|
|minimum_inv_aux_TCC1|✅ proved - complete|shostak|0.040|
|minimum_inv_aux_TCC2|✅ proved - complete|shostak|0.123|
|minimum_inv_aux_TCC3|✅ proved - complete|shostak|0.165|
|minimum_inv_impl_TCC1|✅ proved - complete|shostak|0.010|
|minimum_inv_impl_def|✅ proved - complete|shostak|0.387|
|inv_p0|✅ proved - complete|shostak|0.163|
|inv_p1|✅ proved - complete|shostak|0.518|
|inv_p2|✅ proved - complete|shostak|0.284|
|inv_p3|✅ proved - complete|shostak|0.698|
|inv_p4|✅ proved - complete|shostak|0.780|
|inv_p5|✅ proved - complete|shostak|0.761|
|inv_p6|✅ proved - complete|shostak|0.760|
|inv_p7_TCC1|✅ proved - complete|shostak|0.677|
|inv_p7|✅ proved - complete|shostak|0.000|
|inv_p8|✅ proved - complete|shostak|0.380|
|inv_p9|✅ proved - complete|shostak|1.053|
|inv_n5_TCC1|✅ proved - complete|shostak|0.345|
|inv_n5|✅ proved - complete|shostak|0.993|
|inv_n6_TCC1|✅ proved - complete|shostak|0.200|
|inv_n6|✅ proved - complete|shostak|0.924|
|inv_n7_TCC1|✅ proved - complete|shostak|0.352|
|inv_n7_TCC2|✅ proved - complete|shostak|0.220|
|inv_n7|✅ proved - complete|shostak|0.571|
|inv_n8|✅ proved - complete|shostak|0.546|
|inv_n9|✅ proved - complete|shostak|1.527|
|inv_p|✅ proved - complete|shostak|1.285|
|minimum_inv_prop3_TCC1|✅ proved - incomplete|shostak|0.295|
|minimum_inv_prop3|✅ proved - incomplete|shostak|0.458|
|cauchy_nz_inv_TCC1|✅ proved - incomplete|shostak|0.882|
|cauchy_nz_inv_TCC2|✅ proved - incomplete|shostak|0.185|
|inv_nz_lemma|✅ proved - incomplete|shostak|0.190|
|inv_lemma|✅ proved - incomplete|shostak|0.050|

## `unique`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|unique_cauchy|✅ proved - complete|shostak|0.204|
|cauchy_dich1|✅ proved - complete|shostak|0.041|
|cauchy_dich2|✅ proved - complete|shostak|0.020|
|cauchy_dich3|✅ proved - complete|shostak|0.020|
|cauchy_dich4|✅ proved - complete|shostak|0.030|
|cauchy_dich5|✅ proved - complete|shostak|0.030|
|cauchy_trich|✅ proved - complete|shostak|0.052|
|cauchy_pos_characteristic|✅ proved - complete|shostak|0.233|
|cauchy_neg_characteristic|✅ proved - complete|shostak|0.213|
|cauchy_pos_monotonic|✅ proved - complete|shostak|0.468|
|cauchy_monotonic|✅ proved - complete|shostak|0.758|
|cauchy_odd_extend|✅ proved - complete|shostak|0.473|

## `div`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|div_lemma|✅ proved - incomplete|shostak|0.120|

## `rat`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|denominators_TCC1|✅ proved - complete|shostak|0.020|
|numerator_TCC1|✅ proved - complete|shostak|0.150|
|cauchy_rat_TCC1|✅ proved - complete|shostak|0.010|
|rat_lemma|✅ proved - incomplete|shostak|0.092|

## `shift`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_div2n_TCC1|✅ proved - complete|shostak|0.030|
|cauchy_div2n_TCC2|✅ proved - complete|shostak|0.459|
|cauchy_mul2n_TCC1|✅ proved - complete|shostak|0.289|
|lemma_div2n|✅ proved - complete|shostak|0.464|
|lemma_mul2n|✅ proved - complete|shostak|0.274|

## `min`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_min_TCC1|✅ proved - complete|shostak|0.666|
|min_lemma|✅ proved - complete|shostak|0.691|

## `max`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_max_TCC1|✅ proved - complete|shostak|0.479|
|max_lemma|✅ proved - complete|shostak|0.513|

## `sqrtx`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|nnsqrt_TCC1|✅ proved - complete|shostak|0.010|
|sqrt_p1_TCC1|✅ proved - incomplete|shostak|0.010|
|sqrt_p1_TCC2|✅ proved - incomplete|shostak|0.020|
|sqrt_p1|✅ proved - incomplete|shostak|0.474|
|sqrt_p2_TCC1|✅ proved - incomplete|shostak|0.060|
|sqrt_p2|✅ proved - incomplete|shostak|0.167|
|sqrt_p3|✅ proved - complete|shostak|0.132|
|cauchy_nnsqrt_TCC1|✅ proved - complete|shostak|0.150|
|cauchy_nnsqrt_TCC2|✅ proved - incomplete|shostak|0.767|
|sqrt_nn_lemma|✅ proved - incomplete|shostak|0.830|
|sqrt_lemma|✅ proved - incomplete|shostak|0.020|

## `bisection_nat_sqrt`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|fs_lt_def|✅ proved - incomplete|shostak|0.170|
|fs_eq_def|✅ proved - incomplete|shostak|0.174|
|fs_gt_def|✅ proved - incomplete|shostak|0.160|
|fs_trichotomy|✅ proved - incomplete|shostak|0.173|
|fs_le_ge|✅ proved - incomplete|shostak|0.106|
|bisection_sqrt_aux_TCC1|✅ proved - incomplete|shostak|0.000|
|bisection_sqrt_aux_TCC2|✅ proved - incomplete|shostak|0.180|
|bisection_sqrt_aux_TCC3|✅ proved - incomplete|shostak|0.243|
|bisection_sqrt_aux_TCC4|✅ proved - incomplete|shostak|0.175|
|bisection_sqrt_aux_TCC5|✅ proved - incomplete|shostak|0.180|
|bisection_sqrt_aux_TCC6|✅ proved - incomplete|shostak|0.154|
|bisection_sqrt_aux_prop|✅ proved - incomplete|shostak|0.703|
|bisection_sqrt_TCC1|✅ proved - incomplete|shostak|0.018|
|bisection_sqrt_TCC2|✅ proved - incomplete|shostak|0.100|
|bisection_sqrt_def|✅ proved - incomplete|shostak|0.201|

## `power`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|abs_ge0|✅ proved - complete|shostak|0.020|
|abs_neg|✅ proved - complete|shostak|0.020|
|abs_interval|✅ proved - complete|shostak|0.080|
|abs_interval1|✅ proved - complete|shostak|0.038|
|abs_interval2|✅ proved - complete|shostak|0.030|
|triangle_open|✅ proved - complete|shostak|0.148|
|abs_error|✅ proved - complete|shostak|0.246|
|lemma_A2_generalized|✅ proved - complete|shostak|0.140|
|cauchy_power_lt1_n_odd_TCC1|✅ proved - incomplete|shostak|0.150|
|cauchy_power_lt1_n_odd_TCC2|✅ proved - incomplete|shostak|0.187|
|cauchy_power_lt1_n_odd|✅ proved - incomplete|shostak|1.458|
|cauchy_power_lt1_n_even_TCC1|✅ proved - incomplete|shostak|0.110|
|cauchy_power_lt1_n_even_TCC2|✅ proved - incomplete|shostak|0.160|
|cauchy_power_lt1_n_even|✅ proved - incomplete|shostak|0.807|
|cauchy_power_lt1_snz_odd_TCC1|✅ proved - incomplete|shostak|0.140|
|cauchy_power_lt1_snz_odd_TCC2|✅ proved - incomplete|shostak|0.181|
|cauchy_power_lt1_snz_odd|✅ proved - incomplete|shostak|1.257|
|cauchy_power_lt1_snz_even_TCC1|✅ proved - incomplete|shostak|0.120|
|cauchy_power_lt1_snz_even_TCC2|✅ proved - incomplete|shostak|0.150|
|cauchy_power_lt1_snz_even|✅ proved - incomplete|shostak|0.823|
|cauchy_power_lt1_sn_odd_TCC1|✅ proved - incomplete|shostak|0.140|
|cauchy_power_lt1_sn_odd_TCC2|✅ proved - incomplete|shostak|0.191|
|cauchy_power_lt1_sn_odd|✅ proved - incomplete|shostak|2.246|
|cauchy_power_lt1_sn_even_TCC1|✅ proved - incomplete|shostak|0.110|
|cauchy_power_lt1_sn_even_TCC2|✅ proved - incomplete|shostak|0.155|
|cauchy_power_lt1_sn_even|✅ proved - incomplete|shostak|2.216|
|cauchy_power_lt1_z_TCC1|✅ proved - incomplete|shostak|0.112|
|cauchy_power_lt1_z_TCC2|✅ proved - incomplete|shostak|0.160|
|cauchy_power_lt1_z|✅ proved - incomplete|shostak|1.309|
|cauchy_power_lt1_sp_odd_TCC1|✅ proved - incomplete|shostak|0.148|
|cauchy_power_lt1_sp_odd|✅ proved - incomplete|shostak|1.508|
|cauchy_power_lt1_sp_even_TCC1|✅ proved - incomplete|shostak|0.120|
|cauchy_power_lt1_sp_even|✅ proved - incomplete|shostak|2.372|
|cauchy_power_lt1_pz_TCC1|✅ proved - incomplete|shostak|0.109|
|cauchy_power_lt1_pz|✅ proved - incomplete|shostak|0.870|
|cauchy_power_lt1_p_TCC1|✅ proved - incomplete|shostak|0.110|
|cauchy_power_lt1_p|✅ proved - incomplete|shostak|0.944|
|cauchy_power_lt1_main_generalized_TCC1|✅ proved - incomplete|shostak|0.120|
|cauchy_power_lt1_main_generalized_TCC2|✅ proved - incomplete|shostak|0.163|
|cauchy_power_lt1_main_generalized|✅ proved - incomplete|shostak|0.667|
|cauchy_power_lt1_main_TCC1|✅ proved - incomplete|shostak|0.120|
|cauchy_power_lt1_main_TCC2|✅ proved - incomplete|shostak|0.176|
|cauchy_power_lt1_main|✅ proved - incomplete|shostak|0.230|
|cauchy_power_lt1_isreal_TCC1|✅ proved - incomplete|shostak|0.237|
|cauchy_power_lt1_isreal_TCC2|✅ proved - incomplete|shostak|0.040|
|cauchy_power_lt1_isreal_TCC3|✅ proved - incomplete|shostak|0.126|
|cauchy_power_lt1_isreal|✅ proved - incomplete|shostak|0.542|
|cauchy_power_lt1_TCC1|✅ proved - incomplete|shostak|0.020|
|power_lemma_lt1_TCC1|✅ proved - complete|shostak|0.020|
|power_lemma_lt1|✅ proved - incomplete|shostak|0.594|
|cauchy_power_div1|✅ proved - incomplete|shostak|0.302|
|cauchy_power_main_TCC1|✅ proved - incomplete|shostak|0.184|
|cauchy_power_main_TCC2|✅ proved - incomplete|shostak|0.210|
|cauchy_power_main|✅ proved - incomplete|shostak|1.249|
|cauchy_power_isreal_TCC1|✅ proved - incomplete|shostak|0.495|
|cauchy_power_isreal|✅ proved - incomplete|shostak|1.075|
|cauchy_power_TCC1|✅ proved - incomplete|shostak|0.010|
|power_lemma_TCC1|✅ proved - complete|shostak|0.020|
|power_lemma|✅ proved - incomplete|shostak|1.134|

## `sum`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_sigma_TCC1|✅ proved - complete|shostak|0.020|
|sum_lemma2_TCC1|✅ proved - complete|shostak|0.020|
|sum_lemma2_TCC2|✅ proved - complete|shostak|0.020|
|sum_lemma2|✅ proved - incomplete|shostak|1.105|
|cauchy_sum_aux_TCC1|✅ proved - complete|shostak|0.020|
|cauchy_sum_aux_TCC2|✅ proved - complete|shostak|0.010|
|sum_lemma3_TCC1|✅ proved - complete|shostak|0.010|
|sum_lemma3_TCC2|✅ proved - complete|shostak|0.010|
|sum_lemma3|✅ proved - incomplete|shostak|0.142|
|sum_lemma4_TCC1|✅ proved - incomplete|shostak|0.219|
|sum_lemma4|✅ proved - incomplete|shostak|0.796|
|sum_lemma5|✅ proved - incomplete|shostak|0.000|
|cauchys_real_TCC1|✅ proved - complete|shostak|0.010|
|cauchys_real_TCC2|✅ proved - complete|shostak|0.017|
|cauchy_sum_TCC1|✅ proved - incomplete|shostak|0.309|
|sum_lemma_TCC1|✅ proved - complete|shostak|0.020|
|sum_lemma|✅ proved - incomplete|shostak|0.266|

## `series`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sum_TCC1|✅ proved - complete|shostak|0.030|
|sum_TCC2|✅ proved - complete|shostak|0.010|
|sum_lemma1|✅ proved - complete|shostak|0.153|
|geometric_series_TCC1|✅ proved - complete|shostak|0.010|
|geometric_series_aux1_TCC1|✅ proved - complete|shostak|0.010|
|geometric_series_aux1_TCC2|✅ proved - complete|shostak|0.030|
|geometric_series_aux1|✅ proved - complete|shostak|0.476|
|geometric_series_aux_odd_TCC1|✅ proved - complete|shostak|0.140|
|geometric_series_aux_odd|✅ proved - complete|shostak|0.973|
|geometric_series_aux_even_TCC1|✅ proved - complete|shostak|0.070|
|geometric_series_aux_even_TCC2|✅ proved - complete|shostak|0.010|
|geometric_series_aux_even|✅ proved - complete|shostak|1.266|
|geometric_series_approx_set_contains1|✅ proved - complete|shostak|0.010|
|geometric_series_approx_set_nonempty|✅ proved - complete|shostak|0.027|
|geometric_series_approx_set_pos_upper_bound_TCC1|✅ proved - complete|shostak|0.030|
|geometric_series_approx_set_pos_upper_bound_TCC2|✅ proved - complete|shostak|0.010|
|geometric_series_approx_set_pos_upper_bound|✅ proved - complete|shostak|0.425|
|geometric_series_approx_set_pos_least_upper_bound|✅ proved - incomplete|shostak|3.060|
|geometric_series_pos_limit_TCC1|✅ proved - complete|shostak|0.060|
|geometric_series_pos_limit|✅ proved - incomplete|shostak|0.093|

## `powerseries`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|powerseries_TCC1|✅ proved - complete|shostak|0.010|
|powerseries_TCC2|✅ proved - complete|shostak|0.010|
|powerseries_TCC3|✅ proved - complete|shostak|0.010|
|cauchy_powerseries_TCC1|✅ proved - complete|shostak|0.010|
|cauchy_powerseries_TCC2|✅ proved - incomplete|shostak|0.128|
|max_prec_TCC1|✅ proved - complete|shostak|0.030|
|max_prec_TCC2|✅ proved - complete|shostak|0.010|
|powerseries_lemma_TCC1|✅ proved - complete|shostak|0.010|
|powerseries_lemma|✅ proved - incomplete|shostak|0.175|

## `atanx`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_ssmallreal_TCC1|✅ proved - complete|shostak|0.040|
|subtype_TCC1|✅ proved - complete|shostak|0.030|
|cauchy_vsmallreal_TCC1|✅ proved - complete|shostak|0.020|
|subtype_TCC2|✅ proved - complete|shostak|0.010|
|cauchy_atan_drx_series_TCC1|✅ proved - complete|shostak|0.169|
|cauchy_atan_drx_series_TCC2|✅ proved - complete|shostak|0.170|
|atan_series_lemma|✅ proved - incomplete|shostak|0.313|
|cauchy_atan_drxx_TCC1|✅ proved - incomplete|shostak|0.020|
|cauchy_atan_drxx_prop_TCC1|✅ proved - complete|shostak|0.010|
|cauchy_atan_drxx_prop_TCC2|✅ proved - incomplete|shostak|0.020|
|cauchy_atan_drxx_prop|✅ proved - incomplete|shostak|3.390|
|cauchy_atan_dr_TCC1|✅ proved - incomplete|shostak|0.213|
|cauchy_atan_dr_TCC2|✅ proved - incomplete|shostak|0.277|
|atan_dr_lemma|✅ proved - incomplete|shostak|0.465|
|cauchy_pi_TCC1|✅ proved - complete|shostak|0.080|
|cauchy_pi_TCC2|✅ proved - incomplete|shostak|0.086|
|cauchy_pi_TCC3|✅ proved - complete|shostak|0.090|
|cauchy_pi_TCC4|✅ proved - incomplete|shostak|0.100|
|pi_lemma|✅ proved - incomplete|shostak|0.385|
|cauchy_atan_TCC1|✅ proved - incomplete|shostak|0.249|
|cauchy_atan_TCC2|✅ proved - incomplete|shostak|0.406|
|cauchy_atan_TCC3|✅ proved - incomplete|shostak|0.296|
|cauchy_atan_TCC4|✅ proved - incomplete|shostak|0.419|
|cauchy_atan_TCC5|✅ proved - incomplete|shostak|0.290|
|cauchy_atan_TCC6|✅ proved - incomplete|shostak|0.287|
|cauchy_atan_TCC7|✅ proved - incomplete|shostak|0.407|
|cauchy_atan_TCC8|✅ proved - incomplete|shostak|0.242|
|cauchy_atan_TCC9|✅ proved - incomplete|shostak|0.314|
|atan_lemma|✅ proved - incomplete|shostak|0.000|

## `asinx`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_real_abs_le1_TCC1|✅ proved - complete|shostak|0.030|
|subtype_TCC1|✅ proved - complete|shostak|0.010|
|cauchy_asin_TCC1|✅ proved - incomplete|shostak|0.137|
|cauchy_asin_TCC2|✅ proved - incomplete|shostak|0.278|
|cauchy_asin_TCC3|✅ proved - incomplete|shostak|0.149|
|asin_lemma|✅ proved - incomplete|shostak|1.101|

## `acosx`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|acos_lemma|✅ proved - incomplete|shostak|0.122|

## `sincosx`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|real_3pi16_TCC1|✅ proved - incomplete|shostak|0.190|
|cauchy_real_3pi16_TCC1|✅ proved - incomplete|shostak|0.220|
|cauchy_nnsreal_TCC1|✅ proved - complete|shostak|0.028|
|subtype_TCC1|✅ proved - complete|shostak|0.010|
|subtype_TCC2|✅ proved - complete|shostak|0.020|
|subtype_TCC3|✅ proved - incomplete|shostak|0.130|
|cauchy_sin_series_TCC1|✅ proved - incomplete|shostak|0.121|
|cauchy_cos_series_TCC1|✅ proved - incomplete|shostak|0.080|
|sin_series_lemma|✅ proved - incomplete|shostak|0.279|
|cos_series_lemma|✅ proved - incomplete|shostak|0.211|
|cauchy_sin_drx_TCC1|✅ proved - incomplete|shostak|0.010|
|cauchy_sin_drx_TCC2|✅ proved - incomplete|shostak|4.971|
|cauchy_cos_drx_TCC1|✅ proved - incomplete|shostak|0.010|
|cauchy_cos_drx_TCC2|✅ proved - incomplete|shostak|3.755|
|sin_drx_lemma_TCC1|✅ proved - incomplete|shostak|0.050|
|sin_drx_lemma|✅ proved - incomplete|shostak|3.496|
|cauchy_sin_dr_TCC1|✅ proved - incomplete|shostak|0.374|
|sin_dr_lemma|✅ proved - incomplete|shostak|0.572|
|cos_dr_lemma|✅ proved - incomplete|shostak|0.000|
|cauchy_sin_TCC1|✅ proved - incomplete|shostak|0.086|
|cauchy_sin_TCC2|✅ proved - incomplete|shostak|0.130|
|cauchy_sin_TCC3|✅ proved - incomplete|shostak|0.864|
|sin_lemma|✅ proved - incomplete|shostak|4.107|
|cos_lemma|✅ proved - incomplete|shostak|4.740|

## `remx`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|modx_TCC1|✅ proved - complete|shostak|0.156|
|modx_def|✅ proved - complete|shostak|0.140|
|remx_TCC1|✅ proved - complete|shostak|0.091|
|remx_def|✅ proved - complete|shostak|0.194|

## `trigx`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sin_nz_TCC1|✅ proved - incomplete|shostak|0.010|
|cos_nz_TCC1|✅ proved - incomplete|shostak|0.010|
|cauchy_sin_nz_TCC1|✅ proved - incomplete|shostak|0.091|
|cauchy_cos_nz_TCC1|✅ proved - incomplete|shostak|0.080|
|subtype_TCC1|✅ proved - incomplete|shostak|0.020|
|subtype_TCC2|✅ proved - incomplete|shostak|0.020|
|cauchy_sec_TCC1|✅ proved - incomplete|shostak|0.030|
|cauchy_cosec_TCC1|✅ proved - incomplete|shostak|0.030|
|sec_TCC1|✅ proved - incomplete|shostak|0.020|
|cosec_TCC1|✅ proved - incomplete|shostak|0.010|
|sec_lemma|✅ proved - incomplete|shostak|0.074|
|cosec_lemma|✅ proved - incomplete|shostak|0.068|
|tan_lemma_TCC1|✅ proved - incomplete|shostak|0.010|
|tan_lemma|✅ proved - incomplete|shostak|0.050|
|cot_lemma|✅ proved - incomplete|shostak|0.060|

## `log`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_ln_small_TCC1|✅ proved - complete|shostak|0.030|
|subtype_TCC1|✅ proved - complete|shostak|0.030|
|cauchy_ln_med_TCC1|✅ proved - complete|shostak|0.020|
|subtype_TCC2|✅ proved - complete|shostak|0.010|
|cauchy_gt_quarter_TCC1|✅ proved - complete|shostak|0.020|
|subtype_TCC3|✅ proved - complete|shostak|0.020|
|cauchy_ln_series_TCC1|✅ proved - complete|shostak|0.020|
|cauchy_ln_series_TCC2|✅ proved - complete|shostak|0.012|
|ln_series_lemma_TCC1|✅ proved - complete|shostak|0.020|
|ln_series_lemma|✅ proved - incomplete|shostak|0.450|
|ln_estimate_lemma_TCC1|✅ proved - incomplete|shostak|0.050|
|ln_estimate_lemma|✅ proved - incomplete|shostak|0.418|
|cauchy_ln_drx_TCC1|✅ proved - incomplete|shostak|0.030|
|ln_drx_lemma_TCC1|✅ proved - complete|shostak|0.030|
|ln_drx_lemma|✅ proved - incomplete|shostak|1.374|
|cauchy_ln_drx_TCC2|✅ proved - incomplete|shostak|0.075|
|cauchy_ln_half_TCC1|✅ proved - complete|shostak|0.115|
|cauchy_ln_half_TCC2|✅ proved - incomplete|shostak|0.126|
|cauchy_ln_half_lemma|✅ proved - incomplete|shostak|0.103|
|cauchy_ln2_lemma|✅ proved - incomplete|shostak|0.090|
|cauchy_ln_sqrt2_TCC1|✅ proved - incomplete|shostak|0.065|
|cauchy_ln_sqrt2_lemma|✅ proved - incomplete|shostak|0.124|
|cauchy_ln_dr_TCC1|✅ proved - complete|shostak|0.223|
|cauchy_ln_dr_TCC2|✅ proved - incomplete|shostak|0.144|
|ln_dr_lemma_TCC1|✅ proved - complete|shostak|0.020|
|ln_dr_lemma|✅ proved - incomplete|shostak|0.388|
|cauchy_lnx_TCC1|✅ proved - complete|shostak|0.140|
|cauchy_lnx_TCC2|✅ proved - complete|shostak|0.040|
|cauchy_lnx_TCC3|✅ proved - incomplete|shostak|0.258|
|cauchy_lnx_TCC4|✅ proved - incomplete|shostak|1.085|
|ln_lemma_x_TCC1|✅ proved - complete|shostak|0.010|
|ln_lemma_x|✅ proved - incomplete|shostak|1.153|
|cauchy_lnx_TCC5|✅ proved - incomplete|shostak|0.018|
|cauchy_ln_TCC1|✅ proved - incomplete|shostak|0.286|
|cauchy_ln_TCC2|✅ proved - complete|shostak|0.153|
|ln_lemma|✅ proved - incomplete|shostak|0.372|

## `exp`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_exp_series_TCC1|✅ proved - incomplete|shostak|0.020|
|cauchy_exp_series_TCC2|✅ proved - incomplete|shostak|0.080|
|exp_series_lemma|✅ proved - incomplete|shostak|0.090|
|exp_estimate_lemma_TCC1|✅ proved - incomplete|shostak|0.022|
|exp_estimate_lemma|✅ proved - incomplete|shostak|0.226|
|cauchy_exp_dr_TCC1|✅ proved - incomplete|shostak|0.020|
|exp_dr_lemma|✅ proved - incomplete|shostak|0.000|
|cauchy_exp_dr_TCC2|✅ proved - incomplete|shostak|0.031|
|cauchy_exp_TCC1|✅ proved - incomplete|shostak|0.764|
|cauchy_exp_TCC2|✅ proved - incomplete|shostak|0.030|
|cauchy_exp_TCC3|✅ proved - incomplete|shostak|0.893|
|cauchy_exp_TCC4|✅ proved - incomplete|shostak|0.020|
|cauchy_exp_TCC5|✅ proved - incomplete|shostak|0.848|
|exp_lemma|✅ proved - incomplete|shostak|1.319|
|cauchy_exp_is_posreal|✅ proved - incomplete|shostak|0.020|

## `hyperbolicx`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sinh_lemma|✅ proved - incomplete|shostak|0.116|
|cosh_lemma|✅ proved - incomplete|shostak|0.171|
|cauchy_sinh_type|✅ proved - incomplete|shostak|0.020|
|cauchy_cosh_type|✅ proved - incomplete|shostak|0.030|
|cauchy_coth_TCC1|✅ proved - incomplete|shostak|0.048|
|tanh_lemma|✅ proved - incomplete|shostak|0.044|
|sech_lemma|✅ proved - incomplete|shostak|0.070|
|coth_lemma|✅ proved - incomplete|shostak|0.168|
|csch_lemma|✅ proved - incomplete|shostak|0.070|
|cauchy_tanh_type|✅ proved - incomplete|shostak|0.023|
|cauchy_coth_type|✅ proved - incomplete|shostak|0.050|
|cauchy_csch_type|✅ proved - incomplete|shostak|0.074|
|cauchy_sech_type|✅ proved - incomplete|shostak|0.020|
|cauchy_ge1_TCC1|✅ proved - complete|shostak|0.020|
|subtype_TCC1|✅ proved - complete|shostak|0.023|
|cauchy_asinh_TCC1|✅ proved - incomplete|shostak|0.070|
|cauchy_asinh_TCC2|✅ proved - incomplete|shostak|0.188|
|cauchy_acosh_TCC1|✅ proved - incomplete|shostak|0.063|
|cauchy_acosh_TCC2|✅ proved - incomplete|shostak|0.158|
|cauchy_atanh_TCC1|✅ proved - complete|shostak|0.060|
|cauchy_atanh_TCC2|✅ proved - incomplete|shostak|0.157|
|asinh_lemma|✅ proved - incomplete|shostak|0.177|
|acosh_lemma|✅ proved - incomplete|shostak|0.154|
|atanh_lemma|✅ proved - incomplete|shostak|0.177|
|cauchy_asinh_type|✅ proved - incomplete|shostak|0.020|
|cauchy_acosh_type|✅ proved - incomplete|shostak|0.024|
|cauchy_atanh_type|✅ proved - incomplete|shostak|0.030|

## `computable_rat`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_rat_TCC1|✅ proved - complete|shostak|0.050|
|cauchy_rat_TCC2|✅ proved - incomplete|shostak|0.033|
|cauchy_rat_TCC3|✅ proved - complete|shostak|0.010|
|cauchy_rat_TCC4|✅ proved - incomplete|shostak|0.020|
|negative_numerator_TCC1|✅ proved - complete|shostak|0.020|
|negative_numerator|✅ proved - incomplete|shostak|0.090|
|rat_lemma|✅ proved - incomplete|shostak|0.183|

## `floor`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_noninteger_TCC1|✅ proved - complete|shostak|0.060|
|cauchy_noninteger_TCC2|✅ proved - complete|shostak|0.262|
|subtype_TCC1|✅ proved - complete|shostak|0.241|
|nonint_is_not_int|✅ proved - complete|shostak|0.144|
|precisions_TCC1|✅ proved - complete|shostak|0.090|
|divides_floor|✅ proved - complete|shostak|0.130|
|cauchy_floor_aux_TCC1|✅ proved - complete|shostak|0.010|
|cauchy_floor_aux_TCC2|✅ proved - complete|shostak|0.228|
|cauchy_floor_aux_TCC3|✅ proved - complete|shostak|0.040|
|cauchy_floor_aux_TCC4|✅ proved - complete|shostak|0.134|
|integer_lt_plus_1|✅ proved - complete|shostak|0.050|
|real_bound_int_above|✅ proved - complete|shostak|0.060|
|real_bound_int_below|✅ proved - complete|shostak|0.030|
|expt_inv_lt_1|✅ proved - complete|shostak|0.133|
|floor_aux_lem|✅ proved - complete|shostak|3.066|
|floor_aux_lem2_TCC1|✅ proved - complete|shostak|0.020|
|floor_aux_lem2|✅ proved - complete|shostak|0.937|
|cauchy_floor_TCC1|✅ proved - complete|shostak|0.030|
|floor_lemma|✅ proved - complete|shostak|0.050|

## `modulo`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_mod_TCC1|✅ proved - incomplete|shostak|0.659|
|mod_lemma_TCC1|✅ proved - complete|shostak|0.019|
|mod_lemma|✅ proved - incomplete|shostak|0.090|

## `abs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_abs_TCC1|✅ proved - complete|shostak|0.315|
|abs_lemma|✅ proved - complete|shostak|0.376|

## `cauchy_expr_eval`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Eval_real_TCC1|✅ proved - complete|shostak|0.070|
|Eval_real_TCC2|✅ proved - complete|shostak|0.080|
|Eval_real_TCC3|✅ proved - complete|shostak|0.100|
|Eval_real_TCC4|✅ proved - complete|shostak|0.101|
|Eval_real_TCC5|✅ proved - complete|shostak|0.100|
|Eval_real_TCC6|✅ proved - complete|shostak|0.070|
|Eval_real_TCC7|✅ proved - complete|shostak|0.070|
|Eval_real_TCC8|✅ proved - complete|shostak|0.080|
|Eval_real_TCC9|✅ proved - complete|shostak|0.090|
|Eval_real_TCC10|✅ proved - complete|shostak|0.090|
|Eval_real_TCC11|✅ proved - complete|shostak|0.100|
|Eval_real_TCC12|✅ proved - complete|shostak|0.080|
|Eval_real_TCC13|✅ proved - complete|shostak|0.104|
|Eval_real_TCC14|✅ proved - complete|shostak|0.090|
|Eval_real_TCC15|✅ proved - complete|shostak|0.093|
|Eval_real_TCC16|✅ proved - complete|shostak|0.070|
|Eval_real_TCC17|✅ proved - complete|shostak|0.085|
|Eval_real_TCC18|✅ proved - complete|shostak|0.040|
|Eval_real_TCC19|✅ proved - complete|shostak|0.070|
|Eval_real_TCC20|✅ proved - complete|shostak|0.070|
|Eval_real_TCC21|✅ proved - complete|shostak|0.082|
|Eval_real_TCC22|✅ proved - complete|shostak|0.100|
|Eval_real_TCC23|✅ proved - complete|shostak|0.097|
|Eval_real_TCC24|✅ proved - complete|shostak|0.100|
|Eval_real_TCC25|✅ proved - complete|shostak|0.083|
|Eval_real_TCC26|✅ proved - complete|shostak|0.100|
|Eval_real_TCC27|✅ proved - complete|shostak|0.100|
|Eval_real_TCC28|✅ proved - complete|shostak|0.090|
|Eval_real_TCC29|✅ proved - complete|shostak|0.070|
|Eval_real_TCC30|✅ proved - complete|shostak|0.080|
|Eval_real_TCC31|✅ proved - complete|shostak|0.060|
|Eval_real_TCC32|✅ proved - complete|shostak|0.080|
|Eval_real_TCC33|✅ proved - complete|shostak|0.090|
|Eval_real_TCC34|✅ proved - complete|shostak|0.100|
|Eval_real_TCC35|✅ proved - complete|shostak|0.088|
|Eval_real_TCC36|✅ proved - complete|shostak|0.100|
|Eval_real_TCC37|✅ proved - complete|shostak|0.072|
|Eval_real_TCC38|✅ proved - complete|shostak|0.070|
|Eval_real_TCC39|✅ proved - complete|shostak|0.069|
|Eval_real_TCC40|✅ proved - complete|shostak|0.060|
|Eval_real_TCC41|✅ proved - complete|shostak|0.080|
|Eval_real_TCC42|✅ proved - complete|shostak|0.080|
|Eval_real_TCC43|✅ proved - complete|shostak|0.070|
|Eval_real_TCC44|✅ proved - complete|shostak|0.080|
|Eval_real_TCC45|✅ proved - complete|shostak|0.076|
|Eval_real_TCC46|✅ proved - complete|shostak|0.070|
|Eval_real_TCC47|✅ proved - complete|shostak|0.080|
|Eval_real_TCC48|✅ proved - complete|shostak|0.172|
|Eval_real_TCC49|✅ proved - complete|shostak|0.060|
|Eval_real_TCC50|✅ proved - complete|shostak|0.080|
|Eval_real_TCC51|✅ proved - complete|shostak|0.080|
|Eval_real_TCC52|✅ proved - complete|shostak|0.099|
|Eval_real_TCC53|✅ proved - complete|shostak|0.100|
|Eval_real_TCC54|✅ proved - complete|shostak|0.108|
|Eval_real_TCC55|✅ proved - complete|shostak|0.070|
|Eval_real_TCC56|✅ proved - complete|shostak|0.070|
|Eval_real_TCC57|✅ proved - complete|shostak|0.080|
|Eval_real_TCC58|✅ proved - complete|shostak|0.170|
|Eval_real_TCC59|✅ proved - complete|shostak|0.059|
|Eval_real_TCC60|✅ proved - complete|shostak|0.080|
|Eval_TCC1|✅ proved - complete|shostak|0.117|
|Eval_TCC2|✅ proved - complete|shostak|0.100|
|Eval_TCC3|✅ proved - complete|shostak|0.102|
|Eval_TCC4|✅ proved - complete|shostak|0.080|
|Eval_TCC5|✅ proved - complete|shostak|0.110|
|Eval_TCC6|✅ proved - complete|shostak|0.102|
|Eval_TCC7|✅ proved - complete|shostak|0.110|
|Eval_TCC8|✅ proved - complete|shostak|0.100|
|Eval_TCC9|✅ proved - complete|shostak|0.110|
|Eval_TCC10|✅ proved - complete|shostak|0.103|
|Eval_TCC11|✅ proved - complete|shostak|0.090|
|Eval_TCC12|✅ proved - complete|shostak|0.090|
|Eval_TCC13|✅ proved - complete|shostak|0.087|
|Eval_TCC14|✅ proved - complete|shostak|0.110|
|Eval_TCC15|✅ proved - complete|shostak|0.106|
|Eval_TCC16|✅ proved - complete|shostak|0.100|
|Eval_TCC17|✅ proved - complete|shostak|0.113|
|Eval_TCC18|✅ proved - complete|shostak|0.100|
|Eval_TCC19|✅ proved - complete|shostak|0.110|
|Eval_TCC20|✅ proved - complete|shostak|0.079|
|Eval_TCC21|✅ proved - complete|shostak|0.090|
|Eval_TCC22|✅ proved - complete|shostak|0.107|
|Eval_TCC23|✅ proved - complete|shostak|0.110|
|Eval_TCC24|✅ proved - complete|shostak|0.109|
|Eval_TCC25|✅ proved - complete|shostak|0.141|
|Eval_TCC26|✅ proved - complete|shostak|0.090|
|Eval_TCC27|✅ proved - complete|shostak|0.259|
|Eval_TCC28|✅ proved - complete|shostak|0.083|
|Eval_TCC29|✅ proved - complete|shostak|0.422|
|Eval_TCC30|✅ proved - complete|shostak|0.092|
|Eval_TCC31|✅ proved - complete|shostak|0.423|
|Eval_TCC32|✅ proved - complete|shostak|0.090|
|Eval_TCC33|✅ proved - complete|shostak|1.283|
|Eval_TCC34|✅ proved - complete|shostak|0.079|
|Eval_TCC35|✅ proved - complete|shostak|0.104|
|Eval_TCC36|✅ proved - complete|shostak|0.110|
|Eval_TCC37|✅ proved - complete|shostak|0.111|
|Eval_TCC38|✅ proved - complete|shostak|0.151|
|Eval_TCC39|✅ proved - incomplete|shostak|0.392|
|Eval_TCC40|✅ proved - complete|shostak|0.082|
|Eval_TCC41|✅ proved - complete|shostak|1.302|
|Eval_TCC42|✅ proved - complete|shostak|0.089|
|eval_lemma_aux|✅ proved - incomplete|shostak|0.000|
|eval_domain_inside_eval_real|✅ proved - incomplete|shostak|7.256|
|eval_lemma_TCC1|✅ proved - incomplete|shostak|0.037|
|eval_lemma|✅ proved - incomplete|shostak|0.070|

## `cauchy_numerical`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|numerical_soundness_TCC1|✅ proved - incomplete|shostak|0.060|
|numerical_soundness|✅ proved - incomplete|shostak|0.350|

## `strategies`
No formula declaration found.## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib/pvsio_utils/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230712-static-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230710-tcc-gen.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230707-defattach.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230706-extrategies.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`|
