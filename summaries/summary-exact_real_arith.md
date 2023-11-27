# Summary for `exact_real_arith`
Run started at 19:52:12 11/24/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **719**   | **719**    | **719**    | **0**  | **2:18.946 s**   |
|top|0|0|0|0|0.000|
|prelude_aux|36|36|36|0|3.107|
|prelude_A4|85|85|85|0|17.440|
|appendix|15|15|15|0|3.309|
|prelude_sqrt|35|35|35|0|3.398|
|cauchy|19|19|19|0|0.521|
|int|4|4|4|0|0.114|
|add|2|2|2|0|0.529|
|neg|5|5|5|0|0.337|
|sub|1|1|1|0|0.030|
|mul|22|22|22|0|8.482|
|inv|42|42|42|0|12.083|
|unique|12|12|12|0|1.648|
|div|1|1|1|0|0.078|
|rat|4|4|4|0|0.075|
|shift|5|5|5|0|0.965|
|min|2|2|2|0|0.866|
|max|2|2|2|0|0.606|
|sqrtx|11|11|11|0|1.743|
|bisection_nat_sqrt|15|15|15|0|1.688|
|power|59|59|59|0|17.156|
|sum|17|17|17|0|2.101|
|series|20|20|20|0|5.027|
|powerseries|9|9|9|0|0.286|
|atanx|29|29|29|0|7.237|
|asinx|6|6|6|0|1.178|
|acosx|1|1|1|0|0.076|
|sincosx|24|24|24|0|18.833|
|remx|4|4|4|0|0.393|
|trigx|15|15|15|0|0.419|
|log|36|36|36|0|5.338|
|exp|15|15|15|0|5.111|
|hyperbolicx|27|27|27|0|1.564|
|computable_rat|7|7|7|0|0.287|
|floor|19|19|19|0|1.853|
|modulo|3|3|3|0|0.482|
|abs|2|2|2|0|0.449|
|cauchy_expr_eval|106|106|106|0|13.880|
|cauchy_numerical|2|2|2|0|0.257|
|strategies|0|0|0|0|0.000|
## Detailed Summary 
## `top`
No formula declaration found.
## `prelude_aux`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|lt_times_lt_nn1|✅ proved - complete|shostak|0.150|
|lt_times_lt_np1|✅ proved - complete|shostak|0.109|
|both_sides_times_nonneg_le1|✅ proved - complete|shostak|0.040|
|both_sides_times_nonpos_le1|✅ proved - complete|shostak|0.040|
|abs_nonneg|✅ proved - complete|shostak|0.009|
|abs_nonpos|✅ proved - complete|shostak|0.010|
|odd_even|✅ proved - complete|shostak|0.110|
|odd_or_even|✅ proved - complete|shostak|0.010|
|expt_product_aux_TCC1|✅ proved - complete|shostak|0.000|
|expt_product_aux_TCC2|✅ proved - complete|shostak|0.010|
|expt_product_aux|✅ proved - complete|shostak|0.253|
|expt_product_TCC1|✅ proved - complete|shostak|0.000|
|expt_product_TCC2|✅ proved - complete|shostak|0.010|
|expt_product|✅ proved - complete|shostak|0.010|
|expt_division_aux_TCC1|✅ proved - complete|shostak|0.010|
|expt_division_aux|✅ proved - complete|shostak|0.010|
|expt_division_TCC1|✅ proved - complete|shostak|0.000|
|expt_division|✅ proved - complete|shostak|0.310|
|expt_minus1|✅ proved - complete|shostak|0.173|
|lt_equiv_not_le|✅ proved - complete|shostak|0.010|
|le_equiv_not_lt|✅ proved - complete|shostak|0.016|
|lt_equiv_le_plus_one|✅ proved - complete|shostak|0.030|
|lt_plus_one_equiv_le|✅ proved - complete|shostak|0.040|
|lt_le_transitivity|✅ proved - complete|shostak|0.010|
|le_lt_transitivity|✅ proved - complete|shostak|0.020|
|exp_of2_exists_aux_TCC1|✅ proved - complete|shostak|0.025|
|exp_of2_exists_aux|✅ proved - complete|shostak|0.807|
|exp_of2_exists_TCC1|✅ proved - complete|shostak|0.000|
|exp_of2_exists|✅ proved - complete|shostak|0.166|
|exp_of_exists2|✅ proved - complete|shostak|0.249|
|floor_sqrt_val|✅ proved - incomplete|shostak|0.124|
|ceiling_sqrt_0|✅ proved - incomplete|shostak|0.010|
|ceiling_sqrt_val|✅ proved - incomplete|shostak|0.116|
|log2_TCC1|✅ proved - incomplete|shostak|0.010|
|log2_2_expt_i|✅ proved - incomplete|shostak|0.180|
|log2_strict_increasing|✅ proved - incomplete|shostak|0.030|

## `prelude_A4`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|expt_neg_even_TCC1|✅ proved - complete|shostak|0.010|
|expt_neg_even_TCC2|✅ proved - complete|shostak|0.010|
|expt_neg_even|✅ proved - complete|shostak|0.121|
|expt_neg_odd_TCC1|✅ proved - complete|shostak|0.030|
|expt_neg_odd_TCC2|✅ proved - complete|shostak|0.030|
|expt_neg_odd|✅ proved - complete|shostak|0.140|
|expt_0pn|✅ proved - complete|shostak|0.010|
|expt_inverse_inv_TCC1|✅ proved - complete|shostak|0.010|
|expt_inverse_inv|✅ proved - complete|shostak|0.042|
|expt_product_n0i_TCC1|✅ proved - complete|shostak|0.000|
|expt_product_n0i_TCC2|✅ proved - complete|shostak|0.010|
|expt_product_n0i|✅ proved - complete|shostak|0.060|
|expt_division_TCC1|✅ proved - complete|shostak|0.010|
|expt_division_TCC2|✅ proved - complete|shostak|0.010|
|expt_division|✅ proved - complete|shostak|0.071|
|A4_0_TCC1|✅ proved - complete|shostak|0.050|
|A4_0|✅ proved - complete|shostak|0.111|
|A4_1_TCC1|✅ proved - complete|shostak|0.050|
|A4_1|✅ proved - complete|shostak|0.062|
|A4_2|✅ proved - complete|shostak|0.000|
|A4_3_n|✅ proved - complete|shostak|0.146|
|A4_3_0_TCC1|✅ proved - complete|shostak|0.050|
|A4_3_0|✅ proved - complete|shostak|0.110|
|A4_3_p_TCC1|✅ proved - complete|shostak|0.045|
|A4_3_p|✅ proved - complete|shostak|0.120|
|A4_4|✅ proved - complete|shostak|0.482|
|A4_5pp_TCC1|✅ proved - complete|shostak|0.060|
|A4_5pp|✅ proved - complete|shostak|0.891|
|A4_5nn_TCC1|✅ proved - complete|shostak|0.073|
|A4_5nn|✅ proved - complete|shostak|1.057|
|A4_5nn_general_TCC1|✅ proved - complete|shostak|0.030|
|A4_5nn_general|✅ proved - complete|shostak|0.208|
|A4_5_TCC1|✅ proved - complete|shostak|0.029|
|A4_5|✅ proved - complete|shostak|0.374|
|A4_6pp_TCC1|✅ proved - complete|shostak|0.020|
|A4_6pp|✅ proved - complete|shostak|0.994|
|A4_6pp_general_TCC1|✅ proved - complete|shostak|0.020|
|A4_6pp_general|✅ proved - complete|shostak|0.157|
|A4_6nn_TCC1|✅ proved - complete|shostak|0.020|
|A4_6nn|✅ proved - complete|shostak|0.821|
|A4_6nn_general_TCC1|✅ proved - complete|shostak|0.010|
|A4_6nn_general|✅ proved - complete|shostak|0.168|
|A4_sqrt_ineq1|✅ proved - incomplete|shostak|0.039|
|A4_sqrt_ineq2|✅ proved - incomplete|shostak|0.156|
|A4_sqrt_ineq3|✅ proved - incomplete|shostak|0.150|
|A4_logsize|✅ proved - complete|shostak|0.091|
|A4_lemma_ineq1|✅ proved - incomplete|shostak|0.246|
|A4_lemma_ineq2|✅ proved - complete|shostak|0.095|
|A4_lemma_large_UB_0_TCC1|✅ proved - incomplete|shostak|0.090|
|A4_lemma_large_UB_0|✅ proved - incomplete|shostak|0.851|
|A4_lemma_large_UB_TCC1|✅ proved - incomplete|shostak|0.110|
|A4_lemma_large_UB|✅ proved - incomplete|shostak|1.213|
|A4_lemma_large_LB_TCC1|✅ proved - incomplete|shostak|0.100|
|A4_lemma_large_LB|✅ proved - incomplete|shostak|0.000|
|A4_lemma_large_ge3|✅ proved - incomplete|shostak|0.128|
|A4_lemma_large_lt3_TCC1|✅ proved - incomplete|shostak|0.100|
|A4_lemma_large_lt3_TCC2|✅ proved - incomplete|shostak|0.137|
|A4_lemma_large_lt3|✅ proved - incomplete|shostak|0.689|
|A4_lemma_small_UB_TCC1|✅ proved - incomplete|shostak|0.077|
|A4_lemma_small_UB|✅ proved - incomplete|shostak|0.997|
|A4_lemma_small_LB_TCC1|✅ proved - incomplete|shostak|0.070|
|A4_lemma_small_LB|✅ proved - incomplete|shostak|0.755|
|A4_lemma_small_TCC1|✅ proved - incomplete|shostak|0.080|
|A4_lemma_small_TCC2|✅ proved - incomplete|shostak|0.129|
|A4_lemma_small|✅ proved - incomplete|shostak|0.331|
|A4_lemma_px_TCC1|✅ proved - complete|shostak|0.100|
|A4_lemma_px_TCC2|✅ proved - complete|shostak|0.122|
|A4_lemma_px|✅ proved - incomplete|shostak|0.174|
|A4_lemma_p|✅ proved - incomplete|shostak|0.193|
|A4_lemma_0_px_TCC1|✅ proved - complete|shostak|0.050|
|A4_lemma_0_px_TCC2|✅ proved - complete|shostak|0.060|
|A4_lemma_0_px|✅ proved - incomplete|shostak|0.269|
|A4_lemma_0_p|✅ proved - incomplete|shostak|0.462|
|A4_lemma_0_TCC1|✅ proved - complete|shostak|0.070|
|A4_lemma_0_TCC2|✅ proved - complete|shostak|0.050|
|A4_lemma_0|✅ proved - incomplete|shostak|0.751|
|A4_lemma_n_even_TCC1|✅ proved - complete|shostak|0.060|
|A4_lemma_n_even_TCC2|✅ proved - complete|shostak|0.060|
|A4_lemma_n_even|✅ proved - incomplete|shostak|0.419|
|A4_lemma_n_odd_TCC1|✅ proved - complete|shostak|0.070|
|A4_lemma_n_odd_TCC2|✅ proved - complete|shostak|0.090|
|A4_lemma_n_odd|✅ proved - incomplete|shostak|0.458|
|A4_lemma_n_TCC1|✅ proved - complete|shostak|0.060|
|A4_lemma_n_TCC2|✅ proved - complete|shostak|0.060|
|A4_lemma_n|✅ proved - incomplete|shostak|0.506|

## `appendix`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|lemma_A1|✅ proved - incomplete|shostak|0.102|
|lemma_A2|✅ proved - complete|shostak|0.419|
|lemma_A3|✅ proved - incomplete|shostak|0.088|
|lemma_A4_TCC1|✅ proved - incomplete|shostak|0.080|
|lemma_A4_TCC2|✅ proved - incomplete|shostak|0.075|
|lemma_A4_TCC3|✅ proved - incomplete|shostak|0.070|
|lemma_A4|✅ proved - incomplete|shostak|0.488|
|epsilon_log2_aux|✅ proved - complete|shostak|0.130|
|epsilon_log2|✅ proved - complete|shostak|0.077|
|floor_sqrt_aux_TCC1|✅ proved - complete|shostak|0.100|
|floor_sqrt_aux_TCC2|✅ proved - complete|shostak|0.150|
|floor_sqrt_def|✅ proved - incomplete|shostak|0.000|
|floor_log2_TCC1|✅ proved - complete|shostak|0.036|
|floor_log2_TCC2|✅ proved - complete|shostak|0.040|
|floor_log2_def|✅ proved - incomplete|shostak|1.454|

## `prelude_sqrt`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|square_le1|✅ proved - complete|shostak|0.120|
|square_le2|✅ proved - complete|shostak|0.079|
|square_le3|✅ proved - complete|shostak|0.037|
|square_eq1|✅ proved - complete|shostak|0.049|
|square_le4|✅ proved - complete|shostak|0.049|
|square_le5|✅ proved - complete|shostak|0.164|
|square_le6|✅ proved - complete|shostak|0.092|
|square_archimedean1|✅ proved - complete|shostak|0.132|
|square_archimedean2|✅ proved - complete|shostak|0.363|
|square_exist_lt1|✅ proved - complete|shostak|0.650|
|square_exist_lt2|✅ proved - complete|shostak|0.080|
|square_exist_lt3|✅ proved - complete|shostak|0.188|
|square_exist_gt3|✅ proved - complete|shostak|0.275|
|sqrt_set_nonempty|✅ proved - complete|shostak|0.020|
|sqrt_set_has_UB_TCC1|✅ proved - complete|shostak|0.010|
|sqrt_set_has_UB|✅ proved - complete|shostak|0.092|
|sqrt_set_LUB|✅ proved - complete|shostak|0.197|
|square_injective|✅ proved - complete|shostak|0.041|
|square_surjective|✅ proved - complete|shostak|0.081|
|square_bijective|✅ proved - complete|shostak|0.010|
|square_is|✅ proved - complete|shostak|0.010|
|sqrt_square1|✅ proved - complete|shostak|0.010|
|sqrt_square2|✅ proved - complete|shostak|0.011|
|square_times|✅ proved - complete|shostak|0.020|
|sqrt_times|✅ proved - complete|shostak|0.040|
|sqrt_zero|✅ proved - complete|shostak|0.049|
|sqrt_one|✅ proved - complete|shostak|0.050|
|both_sides_sqrt1|✅ proved - complete|shostak|0.065|
|both_sides_sqrt2|✅ proved - complete|shostak|0.040|
|both_sides_sqrt_lt1|✅ proved - complete|shostak|0.055|
|both_sides_sqrt_lt2|✅ proved - complete|shostak|0.060|
|both_sides_sqrt_lt3|✅ proved - complete|shostak|0.055|
|both_sides_sqrt_le1|✅ proved - complete|shostak|0.070|
|both_sides_sqrt_le2|✅ proved - complete|shostak|0.064|
|both_sides_sqrt_le3|✅ proved - complete|shostak|0.070|

## `cauchy`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_real_TCC1|✅ proved - complete|shostak|0.015|
|cauchy_nzreal_TCC1|✅ proved - complete|shostak|0.010|
|cauchy_nnreal_TCC1|✅ proved - complete|shostak|0.020|
|cauchy_npreal_TCC1|✅ proved - complete|shostak|0.010|
|cauchy_posreal_TCC1|✅ proved - complete|shostak|0.020|
|cauchy_negreal_TCC1|✅ proved - complete|shostak|0.030|
|cauchy_smallreal_TCC1|✅ proved - complete|shostak|0.010|
|subtype_TCC1|✅ proved - complete|shostak|0.010|
|subtype_TCC2|✅ proved - complete|shostak|0.010|
|subtype_TCC3|✅ proved - complete|shostak|0.004|
|subtype_TCC4|✅ proved - complete|shostak|0.010|
|subtype_TCC5|✅ proved - complete|shostak|0.010|
|subtype_TCC6|✅ proved - complete|shostak|0.010|
|subtype_TCC7|✅ proved - complete|shostak|0.010|
|subtype_TCC8|✅ proved - complete|shostak|0.010|
|cauchy_zero_TCC1|✅ proved - complete|shostak|0.015|
|unique_cauchy_zero|✅ proved - complete|shostak|0.257|
|unique_cauchy_zero2|✅ proved - complete|shostak|0.040|
|unique_cauchy_zero3|✅ proved - complete|shostak|0.020|

## `int`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_int_TCC1|✅ proved - complete|shostak|0.034|
|cauchy_nat_TCC1|✅ proved - complete|shostak|0.030|
|int_lemma|✅ proved - complete|shostak|0.020|
|nat_lemma|✅ proved - complete|shostak|0.030|

## `add`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_add_TCC1|✅ proved - complete|shostak|0.275|
|add_lemma|✅ proved - complete|shostak|0.254|

## `neg`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_neg_TCC1|✅ proved - complete|shostak|0.110|
|neg_lemma|✅ proved - complete|shostak|0.144|
|neg_cauchy_nzreal_is_cauchy_nzreal|✅ proved - complete|shostak|0.020|
|neg_cauchy_posreal_is_cauchy_negreal|✅ proved - complete|shostak|0.030|
|neg_cauchy_negreal_is_cauchy_posreal|✅ proved - complete|shostak|0.033|

## `sub`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sub_lemma|✅ proved - complete|shostak|0.030|

## `mul`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|D1|✅ proved - complete|shostak|0.040|
|D2|✅ proved - complete|shostak|0.044|
|D3|✅ proved - complete|shostak|0.040|
|negreal_times_posreal_is_negreal|✅ proved - complete|shostak|0.060|
|lt_times_lt_nonneg1|✅ proved - complete|shostak|0.094|
|lt_times_lt_nonneg2|✅ proved - complete|shostak|0.114|
|D_pp|✅ proved - complete|shostak|0.402|
|D_pn|✅ proved - complete|shostak|0.418|
|D_nn|✅ proved - complete|shostak|0.892|
|D_p0|✅ proved - complete|shostak|0.123|
|D_n0|✅ proved - complete|shostak|0.394|
|D|✅ proved - complete|shostak|0.505|
|mul_p1|✅ proved - incomplete|shostak|0.243|
|mul_p2|✅ proved - incomplete|shostak|0.834|
|mul_p3|✅ proved - incomplete|shostak|0.230|
|mul_p4|✅ proved - incomplete|shostak|0.332|
|mul_p5|✅ proved - incomplete|shostak|1.583|
|mul_p6|✅ proved - incomplete|shostak|0.557|
|cauchy_mul_type_TCC1|✅ proved - incomplete|shostak|0.130|
|cauchy_mul_type|✅ proved - incomplete|shostak|0.557|
|cauchy_mul_TCC1|✅ proved - incomplete|shostak|0.203|
|mul_lemma|✅ proved - incomplete|shostak|0.687|

## `inv`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|expt_x2_TCC1|✅ proved - complete|shostak|0.000|
|expt_x2|✅ proved - complete|shostak|0.010|
|expt_times2_TCC1|✅ proved - complete|shostak|0.010|
|expt_times2_TCC2|✅ proved - complete|shostak|0.000|
|expt_times2|✅ proved - complete|shostak|0.073|
|minimum_inv_exists|✅ proved - complete|shostak|0.450|
|minimum_inv_TCC1|✅ proved - complete|shostak|0.000|
|minimum_inv_prop0|✅ proved - complete|shostak|0.061|
|minimum_inv_prop1|✅ proved - complete|shostak|0.000|
|minimum_inv_prop2|✅ proved - complete|shostak|0.349|
|minimum_inv_aux_TCC1|✅ proved - complete|shostak|0.020|
|minimum_inv_aux_TCC2|✅ proved - complete|shostak|0.080|
|minimum_inv_aux_TCC3|✅ proved - complete|shostak|0.099|
|minimum_inv_impl_TCC1|✅ proved - complete|shostak|0.010|
|minimum_inv_impl_def|✅ proved - complete|shostak|0.250|
|inv_p0|✅ proved - complete|shostak|0.104|
|inv_p1|✅ proved - complete|shostak|0.332|
|inv_p2|✅ proved - complete|shostak|0.180|
|inv_p3|✅ proved - complete|shostak|0.510|
|inv_p4|✅ proved - complete|shostak|0.552|
|inv_p5|✅ proved - complete|shostak|0.486|
|inv_p6|✅ proved - complete|shostak|0.489|
|inv_p7_TCC1|✅ proved - complete|shostak|0.410|
|inv_p7|✅ proved - complete|shostak|0.770|
|inv_p8|✅ proved - complete|shostak|0.259|
|inv_p9|✅ proved - complete|shostak|0.692|
|inv_n5_TCC1|✅ proved - complete|shostak|0.210|
|inv_n5|✅ proved - complete|shostak|0.652|
|inv_n6_TCC1|✅ proved - complete|shostak|0.132|
|inv_n6|✅ proved - complete|shostak|0.651|
|inv_n7_TCC1|✅ proved - complete|shostak|0.220|
|inv_n7_TCC2|✅ proved - complete|shostak|0.140|
|inv_n7|✅ proved - complete|shostak|0.355|
|inv_n8|✅ proved - complete|shostak|0.348|
|inv_n9|✅ proved - complete|shostak|1.015|
|inv_p|✅ proved - complete|shostak|0.817|
|minimum_inv_prop3_TCC1|✅ proved - incomplete|shostak|0.178|
|minimum_inv_prop3|✅ proved - incomplete|shostak|0.297|
|cauchy_nz_inv_TCC1|✅ proved - incomplete|shostak|0.579|
|cauchy_nz_inv_TCC2|✅ proved - incomplete|shostak|0.125|
|inv_nz_lemma|✅ proved - incomplete|shostak|0.140|
|inv_lemma|✅ proved - incomplete|shostak|0.028|

## `unique`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|unique_cauchy|✅ proved - complete|shostak|0.128|
|cauchy_dich1|✅ proved - complete|shostak|0.026|
|cauchy_dich2|✅ proved - complete|shostak|0.010|
|cauchy_dich3|✅ proved - complete|shostak|0.020|
|cauchy_dich4|✅ proved - complete|shostak|0.013|
|cauchy_dich5|✅ proved - complete|shostak|0.020|
|cauchy_trich|✅ proved - complete|shostak|0.034|
|cauchy_pos_characteristic|✅ proved - complete|shostak|0.144|
|cauchy_neg_characteristic|✅ proved - complete|shostak|0.135|
|cauchy_pos_monotonic|✅ proved - complete|shostak|0.309|
|cauchy_monotonic|✅ proved - complete|shostak|0.498|
|cauchy_odd_extend|✅ proved - complete|shostak|0.311|

## `div`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|div_lemma|✅ proved - incomplete|shostak|0.078|

## `rat`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|denominators_TCC1|✅ proved - complete|shostak|0.010|
|numerator_TCC1|✅ proved - complete|shostak|0.000|
|cauchy_rat_TCC1|✅ proved - complete|shostak|0.000|
|rat_lemma|✅ proved - incomplete|shostak|0.065|

## `shift`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_div2n_TCC1|✅ proved - complete|shostak|0.020|
|cauchy_div2n_TCC2|✅ proved - complete|shostak|0.299|
|cauchy_mul2n_TCC1|✅ proved - complete|shostak|0.174|
|lemma_div2n|✅ proved - complete|shostak|0.307|
|lemma_mul2n|✅ proved - complete|shostak|0.165|

## `min`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_min_TCC1|✅ proved - complete|shostak|0.409|
|min_lemma|✅ proved - complete|shostak|0.457|

## `max`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_max_TCC1|✅ proved - complete|shostak|0.303|
|max_lemma|✅ proved - complete|shostak|0.303|

## `sqrtx`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|nnsqrt_TCC1|✅ proved - complete|shostak|0.010|
|sqrt_p1_TCC1|✅ proved - incomplete|shostak|0.010|
|sqrt_p1_TCC2|✅ proved - incomplete|shostak|0.010|
|sqrt_p1|✅ proved - incomplete|shostak|0.290|
|sqrt_p2_TCC1|✅ proved - incomplete|shostak|0.040|
|sqrt_p2|✅ proved - incomplete|shostak|0.110|
|sqrt_p3|✅ proved - complete|shostak|0.083|
|cauchy_nnsqrt_TCC1|✅ proved - complete|shostak|0.085|
|cauchy_nnsqrt_TCC2|✅ proved - incomplete|shostak|0.536|
|sqrt_nn_lemma|✅ proved - incomplete|shostak|0.549|
|sqrt_lemma|✅ proved - incomplete|shostak|0.020|

## `bisection_nat_sqrt`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|fs_lt_def|✅ proved - incomplete|shostak|0.100|
|fs_eq_def|✅ proved - incomplete|shostak|0.110|
|fs_gt_def|✅ proved - incomplete|shostak|0.099|
|fs_trichotomy|✅ proved - incomplete|shostak|0.100|
|fs_le_ge|✅ proved - incomplete|shostak|0.068|
|bisection_sqrt_aux_TCC1|✅ proved - incomplete|shostak|0.030|
|bisection_sqrt_aux_TCC2|✅ proved - incomplete|shostak|0.090|
|bisection_sqrt_aux_TCC3|✅ proved - incomplete|shostak|0.117|
|bisection_sqrt_aux_TCC4|✅ proved - incomplete|shostak|0.094|
|bisection_sqrt_aux_TCC5|✅ proved - incomplete|shostak|0.110|
|bisection_sqrt_aux_TCC6|✅ proved - incomplete|shostak|0.095|
|bisection_sqrt_aux_prop|✅ proved - incomplete|shostak|0.473|
|bisection_sqrt_TCC1|✅ proved - incomplete|shostak|0.010|
|bisection_sqrt_TCC2|✅ proved - incomplete|shostak|0.061|
|bisection_sqrt_def|✅ proved - incomplete|shostak|0.131|

## `power`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|abs_ge0|✅ proved - complete|shostak|0.010|
|abs_neg|✅ proved - complete|shostak|0.019|
|abs_interval|✅ proved - complete|shostak|0.050|
|abs_interval1|✅ proved - complete|shostak|0.030|
|abs_interval2|✅ proved - complete|shostak|0.020|
|triangle_open|✅ proved - complete|shostak|0.091|
|abs_error|✅ proved - complete|shostak|0.152|
|lemma_A2_generalized|✅ proved - complete|shostak|0.100|
|cauchy_power_lt1_n_odd_TCC1|✅ proved - incomplete|shostak|0.089|
|cauchy_power_lt1_n_odd_TCC2|✅ proved - incomplete|shostak|0.120|
|cauchy_power_lt1_n_odd|✅ proved - incomplete|shostak|0.921|
|cauchy_power_lt1_n_even_TCC1|✅ proved - incomplete|shostak|0.071|
|cauchy_power_lt1_n_even_TCC2|✅ proved - incomplete|shostak|0.090|
|cauchy_power_lt1_n_even|✅ proved - incomplete|shostak|0.528|
|cauchy_power_lt1_snz_odd_TCC1|✅ proved - incomplete|shostak|0.090|
|cauchy_power_lt1_snz_odd_TCC2|✅ proved - incomplete|shostak|0.120|
|cauchy_power_lt1_snz_odd|✅ proved - incomplete|shostak|0.796|
|cauchy_power_lt1_snz_even_TCC1|✅ proved - incomplete|shostak|0.070|
|cauchy_power_lt1_snz_even_TCC2|✅ proved - incomplete|shostak|0.100|
|cauchy_power_lt1_snz_even|✅ proved - incomplete|shostak|0.531|
|cauchy_power_lt1_sn_odd_TCC1|✅ proved - incomplete|shostak|0.090|
|cauchy_power_lt1_sn_odd_TCC2|✅ proved - incomplete|shostak|0.112|
|cauchy_power_lt1_sn_odd|✅ proved - incomplete|shostak|1.445|
|cauchy_power_lt1_sn_even_TCC1|✅ proved - incomplete|shostak|0.069|
|cauchy_power_lt1_sn_even_TCC2|✅ proved - incomplete|shostak|0.100|
|cauchy_power_lt1_sn_even|✅ proved - incomplete|shostak|1.421|
|cauchy_power_lt1_z_TCC1|✅ proved - incomplete|shostak|0.070|
|cauchy_power_lt1_z_TCC2|✅ proved - incomplete|shostak|0.098|
|cauchy_power_lt1_z|✅ proved - incomplete|shostak|0.826|
|cauchy_power_lt1_sp_odd_TCC1|✅ proved - incomplete|shostak|0.090|
|cauchy_power_lt1_sp_odd|✅ proved - incomplete|shostak|0.959|
|cauchy_power_lt1_sp_even_TCC1|✅ proved - incomplete|shostak|0.070|
|cauchy_power_lt1_sp_even|✅ proved - incomplete|shostak|1.525|
|cauchy_power_lt1_pz_TCC1|✅ proved - incomplete|shostak|0.062|
|cauchy_power_lt1_pz|✅ proved - incomplete|shostak|0.537|
|cauchy_power_lt1_p_TCC1|✅ proved - incomplete|shostak|0.078|
|cauchy_power_lt1_p|✅ proved - incomplete|shostak|0.606|
|cauchy_power_lt1_main_generalized_TCC1|✅ proved - incomplete|shostak|0.069|
|cauchy_power_lt1_main_generalized_TCC2|✅ proved - incomplete|shostak|0.100|
|cauchy_power_lt1_main_generalized|✅ proved - incomplete|shostak|0.416|
|cauchy_power_lt1_main_TCC1|✅ proved - incomplete|shostak|0.080|
|cauchy_power_lt1_main_TCC2|✅ proved - incomplete|shostak|0.100|
|cauchy_power_lt1_main|✅ proved - incomplete|shostak|0.140|
|cauchy_power_lt1_isreal_TCC1|✅ proved - incomplete|shostak|0.161|
|cauchy_power_lt1_isreal_TCC2|✅ proved - incomplete|shostak|0.030|
|cauchy_power_lt1_isreal_TCC3|✅ proved - incomplete|shostak|0.071|
|cauchy_power_lt1_isreal|✅ proved - incomplete|shostak|0.330|
|cauchy_power_lt1_TCC1|✅ proved - incomplete|shostak|0.010|
|power_lemma_lt1_TCC1|✅ proved - complete|shostak|0.020|
|power_lemma_lt1|✅ proved - incomplete|shostak|0.386|
|cauchy_power_div1|✅ proved - incomplete|shostak|0.191|
|cauchy_power_main_TCC1|✅ proved - incomplete|shostak|0.119|
|cauchy_power_main_TCC2|✅ proved - incomplete|shostak|0.170|
|cauchy_power_main|✅ proved - incomplete|shostak|0.818|
|cauchy_power_isreal_TCC1|✅ proved - incomplete|shostak|0.314|
|cauchy_power_isreal|✅ proved - incomplete|shostak|0.698|
|cauchy_power_TCC1|✅ proved - incomplete|shostak|0.006|
|power_lemma_TCC1|✅ proved - complete|shostak|0.020|
|power_lemma|✅ proved - incomplete|shostak|0.751|

## `sum`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_sigma_TCC1|✅ proved - complete|shostak|0.020|
|sum_lemma2_TCC1|✅ proved - complete|shostak|0.010|
|sum_lemma2_TCC2|✅ proved - complete|shostak|0.010|
|sum_lemma2|✅ proved - incomplete|shostak|0.000|
|cauchy_sum_aux_TCC1|✅ proved - complete|shostak|0.010|
|cauchy_sum_aux_TCC2|✅ proved - complete|shostak|0.010|
|sum_lemma3_TCC1|✅ proved - complete|shostak|0.000|
|sum_lemma3_TCC2|✅ proved - complete|shostak|0.010|
|sum_lemma3|✅ proved - incomplete|shostak|0.088|
|sum_lemma4_TCC1|✅ proved - incomplete|shostak|0.147|
|sum_lemma4|✅ proved - incomplete|shostak|0.533|
|sum_lemma5|✅ proved - incomplete|shostak|0.779|
|cauchys_real_TCC1|✅ proved - complete|shostak|0.020|
|cauchys_real_TCC2|✅ proved - complete|shostak|0.010|
|cauchy_sum_TCC1|✅ proved - incomplete|shostak|0.238|
|sum_lemma_TCC1|✅ proved - complete|shostak|0.015|
|sum_lemma|✅ proved - incomplete|shostak|0.201|

## `series`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sum_TCC1|✅ proved - complete|shostak|0.020|
|sum_TCC2|✅ proved - complete|shostak|0.010|
|sum_lemma1|✅ proved - complete|shostak|0.104|
|geometric_series_TCC1|✅ proved - complete|shostak|0.010|
|geometric_series_aux1_TCC1|✅ proved - complete|shostak|0.010|
|geometric_series_aux1_TCC2|✅ proved - complete|shostak|0.010|
|geometric_series_aux1|✅ proved - complete|shostak|0.358|
|geometric_series_aux_odd_TCC1|✅ proved - complete|shostak|0.100|
|geometric_series_aux_odd|✅ proved - complete|shostak|0.652|
|geometric_series_aux_even_TCC1|✅ proved - complete|shostak|0.051|
|geometric_series_aux_even_TCC2|✅ proved - complete|shostak|0.010|
|geometric_series_aux_even|✅ proved - complete|shostak|0.902|
|geometric_series_approx_set_contains1|✅ proved - complete|shostak|0.001|
|geometric_series_approx_set_nonempty|✅ proved - complete|shostak|0.010|
|geometric_series_approx_set_pos_upper_bound_TCC1|✅ proved - complete|shostak|0.020|
|geometric_series_approx_set_pos_upper_bound_TCC2|✅ proved - complete|shostak|0.010|
|geometric_series_approx_set_pos_upper_bound|✅ proved - complete|shostak|0.323|
|geometric_series_approx_set_pos_least_upper_bound|✅ proved - incomplete|shostak|2.314|
|geometric_series_pos_limit_TCC1|✅ proved - complete|shostak|0.045|
|geometric_series_pos_limit|✅ proved - incomplete|shostak|0.067|

## `powerseries`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|powerseries_TCC1|✅ proved - complete|shostak|0.010|
|powerseries_TCC2|✅ proved - complete|shostak|0.000|
|powerseries_TCC3|✅ proved - complete|shostak|0.010|
|cauchy_powerseries_TCC1|✅ proved - complete|shostak|0.020|
|cauchy_powerseries_TCC2|✅ proved - incomplete|shostak|0.077|
|max_prec_TCC1|✅ proved - complete|shostak|0.020|
|max_prec_TCC2|✅ proved - complete|shostak|0.010|
|powerseries_lemma_TCC1|✅ proved - complete|shostak|0.008|
|powerseries_lemma|✅ proved - incomplete|shostak|0.131|

## `atanx`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_ssmallreal_TCC1|✅ proved - complete|shostak|0.040|
|subtype_TCC1|✅ proved - complete|shostak|0.020|
|cauchy_vsmallreal_TCC1|✅ proved - complete|shostak|0.024|
|subtype_TCC2|✅ proved - complete|shostak|0.010|
|cauchy_atan_drx_series_TCC1|✅ proved - complete|shostak|0.120|
|cauchy_atan_drx_series_TCC2|✅ proved - complete|shostak|0.140|
|atan_series_lemma|✅ proved - incomplete|shostak|0.218|
|cauchy_atan_drxx_TCC1|✅ proved - incomplete|shostak|0.010|
|cauchy_atan_drxx_prop_TCC1|✅ proved - complete|shostak|0.010|
|cauchy_atan_drxx_prop_TCC2|✅ proved - incomplete|shostak|0.020|
|cauchy_atan_drxx_prop|✅ proved - incomplete|shostak|2.563|
|cauchy_atan_dr_TCC1|✅ proved - incomplete|shostak|0.168|
|cauchy_atan_dr_TCC2|✅ proved - incomplete|shostak|0.186|
|atan_dr_lemma|✅ proved - incomplete|shostak|0.000|
|cauchy_pi_TCC1|✅ proved - complete|shostak|0.050|
|cauchy_pi_TCC2|✅ proved - incomplete|shostak|0.069|
|cauchy_pi_TCC3|✅ proved - complete|shostak|0.070|
|cauchy_pi_TCC4|✅ proved - incomplete|shostak|0.070|
|pi_lemma|✅ proved - incomplete|shostak|0.278|
|cauchy_atan_TCC1|✅ proved - incomplete|shostak|0.164|
|cauchy_atan_TCC2|✅ proved - incomplete|shostak|0.327|
|cauchy_atan_TCC3|✅ proved - incomplete|shostak|0.204|
|cauchy_atan_TCC4|✅ proved - incomplete|shostak|0.307|
|cauchy_atan_TCC5|✅ proved - incomplete|shostak|0.204|
|cauchy_atan_TCC6|✅ proved - incomplete|shostak|0.205|
|cauchy_atan_TCC7|✅ proved - incomplete|shostak|0.308|
|cauchy_atan_TCC8|✅ proved - incomplete|shostak|0.185|
|cauchy_atan_TCC9|✅ proved - incomplete|shostak|0.235|
|atan_lemma|✅ proved - incomplete|shostak|1.032|

## `asinx`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_real_abs_le1_TCC1|✅ proved - complete|shostak|0.020|
|subtype_TCC1|✅ proved - complete|shostak|0.010|
|cauchy_asin_TCC1|✅ proved - incomplete|shostak|0.098|
|cauchy_asin_TCC2|✅ proved - incomplete|shostak|0.194|
|cauchy_asin_TCC3|✅ proved - incomplete|shostak|0.101|
|asin_lemma|✅ proved - incomplete|shostak|0.755|

## `acosx`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|acos_lemma|✅ proved - incomplete|shostak|0.076|

## `sincosx`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|real_3pi16_TCC1|✅ proved - incomplete|shostak|0.124|
|cauchy_real_3pi16_TCC1|✅ proved - incomplete|shostak|0.150|
|cauchy_nnsreal_TCC1|✅ proved - complete|shostak|0.010|
|subtype_TCC1|✅ proved - complete|shostak|0.010|
|subtype_TCC2|✅ proved - complete|shostak|0.016|
|subtype_TCC3|✅ proved - incomplete|shostak|0.090|
|cauchy_sin_series_TCC1|✅ proved - incomplete|shostak|0.080|
|cauchy_cos_series_TCC1|✅ proved - incomplete|shostak|0.045|
|sin_series_lemma|✅ proved - incomplete|shostak|0.204|
|cos_series_lemma|✅ proved - incomplete|shostak|0.153|
|cauchy_sin_drx_TCC1|✅ proved - incomplete|shostak|0.010|
|cauchy_sin_drx_TCC2|✅ proved - incomplete|shostak|3.434|
|cauchy_cos_drx_TCC1|✅ proved - incomplete|shostak|0.017|
|cauchy_cos_drx_TCC2|✅ proved - incomplete|shostak|2.623|
|sin_drx_lemma_TCC1|✅ proved - incomplete|shostak|0.030|
|sin_drx_lemma|✅ proved - incomplete|shostak|2.479|
|cauchy_sin_dr_TCC1|✅ proved - incomplete|shostak|0.275|
|sin_dr_lemma|✅ proved - incomplete|shostak|0.000|
|cos_dr_lemma|✅ proved - incomplete|shostak|2.115|
|cauchy_sin_TCC1|✅ proved - incomplete|shostak|0.060|
|cauchy_sin_TCC2|✅ proved - incomplete|shostak|0.090|
|cauchy_sin_TCC3|✅ proved - incomplete|shostak|0.618|
|sin_lemma|✅ proved - incomplete|shostak|2.916|
|cos_lemma|✅ proved - incomplete|shostak|3.284|

## `remx`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|modx_TCC1|✅ proved - complete|shostak|0.107|
|modx_def|✅ proved - complete|shostak|0.090|
|remx_TCC1|✅ proved - complete|shostak|0.060|
|remx_def|✅ proved - complete|shostak|0.136|

## `trigx`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sin_nz_TCC1|✅ proved - incomplete|shostak|0.010|
|cos_nz_TCC1|✅ proved - incomplete|shostak|0.010|
|cauchy_sin_nz_TCC1|✅ proved - incomplete|shostak|0.065|
|cauchy_cos_nz_TCC1|✅ proved - incomplete|shostak|0.060|
|subtype_TCC1|✅ proved - incomplete|shostak|0.020|
|subtype_TCC2|✅ proved - incomplete|shostak|0.011|
|cauchy_sec_TCC1|✅ proved - incomplete|shostak|0.020|
|cauchy_cosec_TCC1|✅ proved - incomplete|shostak|0.020|
|sec_TCC1|✅ proved - incomplete|shostak|0.010|
|cosec_TCC1|✅ proved - incomplete|shostak|0.010|
|sec_lemma|✅ proved - incomplete|shostak|0.040|
|cosec_lemma|✅ proved - incomplete|shostak|0.050|
|tan_lemma_TCC1|✅ proved - incomplete|shostak|0.010|
|tan_lemma|✅ proved - incomplete|shostak|0.040|
|cot_lemma|✅ proved - incomplete|shostak|0.043|

## `log`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_ln_small_TCC1|✅ proved - complete|shostak|0.020|
|subtype_TCC1|✅ proved - complete|shostak|0.024|
|cauchy_ln_med_TCC1|✅ proved - complete|shostak|0.010|
|subtype_TCC2|✅ proved - complete|shostak|0.020|
|cauchy_gt_quarter_TCC1|✅ proved - complete|shostak|0.010|
|subtype_TCC3|✅ proved - complete|shostak|0.010|
|cauchy_ln_series_TCC1|✅ proved - complete|shostak|0.010|
|cauchy_ln_series_TCC2|✅ proved - complete|shostak|0.020|
|ln_series_lemma_TCC1|✅ proved - complete|shostak|0.010|
|ln_series_lemma|✅ proved - incomplete|shostak|0.327|
|ln_estimate_lemma_TCC1|✅ proved - incomplete|shostak|0.050|
|ln_estimate_lemma|✅ proved - incomplete|shostak|0.301|
|cauchy_ln_drx_TCC1|✅ proved - incomplete|shostak|0.030|
|ln_drx_lemma_TCC1|✅ proved - complete|shostak|0.020|
|ln_drx_lemma|✅ proved - incomplete|shostak|0.934|
|cauchy_ln_drx_TCC2|✅ proved - incomplete|shostak|0.060|
|cauchy_ln_half_TCC1|✅ proved - complete|shostak|0.080|
|cauchy_ln_half_TCC2|✅ proved - incomplete|shostak|0.081|
|cauchy_ln_half_lemma|✅ proved - incomplete|shostak|0.070|
|cauchy_ln2_lemma|✅ proved - incomplete|shostak|0.058|
|cauchy_ln_sqrt2_TCC1|✅ proved - incomplete|shostak|0.000|
|cauchy_ln_sqrt2_lemma|✅ proved - incomplete|shostak|0.090|
|cauchy_ln_dr_TCC1|✅ proved - complete|shostak|0.165|
|cauchy_ln_dr_TCC2|✅ proved - incomplete|shostak|0.105|
|ln_dr_lemma_TCC1|✅ proved - complete|shostak|0.020|
|ln_dr_lemma|✅ proved - incomplete|shostak|0.304|
|cauchy_lnx_TCC1|✅ proved - complete|shostak|0.101|
|cauchy_lnx_TCC2|✅ proved - complete|shostak|0.020|
|cauchy_lnx_TCC3|✅ proved - incomplete|shostak|0.193|
|cauchy_lnx_TCC4|✅ proved - incomplete|shostak|0.775|
|ln_lemma_x_TCC1|✅ proved - complete|shostak|0.010|
|ln_lemma_x|✅ proved - incomplete|shostak|0.811|
|cauchy_lnx_TCC5|✅ proved - incomplete|shostak|0.020|
|cauchy_ln_TCC1|✅ proved - incomplete|shostak|0.220|
|cauchy_ln_TCC2|✅ proved - complete|shostak|0.111|
|ln_lemma|✅ proved - incomplete|shostak|0.248|

## `exp`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_exp_series_TCC1|✅ proved - incomplete|shostak|0.020|
|cauchy_exp_series_TCC2|✅ proved - incomplete|shostak|0.050|
|exp_series_lemma|✅ proved - incomplete|shostak|0.061|
|exp_estimate_lemma_TCC1|✅ proved - incomplete|shostak|0.010|
|exp_estimate_lemma|✅ proved - incomplete|shostak|0.158|
|cauchy_exp_dr_TCC1|✅ proved - incomplete|shostak|0.010|
|exp_dr_lemma|✅ proved - incomplete|shostak|2.123|
|cauchy_exp_dr_TCC2|✅ proved - incomplete|shostak|0.020|
|cauchy_exp_TCC1|✅ proved - incomplete|shostak|0.541|
|cauchy_exp_TCC2|✅ proved - incomplete|shostak|0.020|
|cauchy_exp_TCC3|✅ proved - incomplete|shostak|0.597|
|cauchy_exp_TCC4|✅ proved - incomplete|shostak|0.020|
|cauchy_exp_TCC5|✅ proved - incomplete|shostak|0.571|
|exp_lemma|✅ proved - incomplete|shostak|0.894|
|cauchy_exp_is_posreal|✅ proved - incomplete|shostak|0.016|

## `hyperbolicx`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sinh_lemma|✅ proved - incomplete|shostak|0.076|
|cosh_lemma|✅ proved - incomplete|shostak|0.113|
|cauchy_sinh_type|✅ proved - incomplete|shostak|0.020|
|cauchy_cosh_type|✅ proved - incomplete|shostak|0.011|
|cauchy_coth_TCC1|✅ proved - incomplete|shostak|0.030|
|tanh_lemma|✅ proved - incomplete|shostak|0.034|
|sech_lemma|✅ proved - incomplete|shostak|0.050|
|coth_lemma|✅ proved - incomplete|shostak|0.124|
|csch_lemma|✅ proved - incomplete|shostak|0.050|
|cauchy_tanh_type|✅ proved - incomplete|shostak|0.014|
|cauchy_coth_type|✅ proved - incomplete|shostak|0.040|
|cauchy_csch_type|✅ proved - incomplete|shostak|0.064|
|cauchy_sech_type|✅ proved - incomplete|shostak|0.020|
|cauchy_ge1_TCC1|✅ proved - complete|shostak|0.010|
|subtype_TCC1|✅ proved - complete|shostak|0.010|
|cauchy_asinh_TCC1|✅ proved - incomplete|shostak|0.055|
|cauchy_asinh_TCC2|✅ proved - incomplete|shostak|0.129|
|cauchy_acosh_TCC1|✅ proved - incomplete|shostak|0.044|
|cauchy_acosh_TCC2|✅ proved - incomplete|shostak|0.104|
|cauchy_atanh_TCC1|✅ proved - complete|shostak|0.045|
|cauchy_atanh_TCC2|✅ proved - incomplete|shostak|0.115|
|asinh_lemma|✅ proved - incomplete|shostak|0.128|
|acosh_lemma|✅ proved - incomplete|shostak|0.104|
|atanh_lemma|✅ proved - incomplete|shostak|0.129|
|cauchy_asinh_type|✅ proved - incomplete|shostak|0.020|
|cauchy_acosh_type|✅ proved - incomplete|shostak|0.015|
|cauchy_atanh_type|✅ proved - incomplete|shostak|0.010|

## `computable_rat`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_rat_TCC1|✅ proved - complete|shostak|0.030|
|cauchy_rat_TCC2|✅ proved - incomplete|shostak|0.020|
|cauchy_rat_TCC3|✅ proved - complete|shostak|0.013|
|cauchy_rat_TCC4|✅ proved - incomplete|shostak|0.020|
|negative_numerator_TCC1|✅ proved - complete|shostak|0.010|
|negative_numerator|✅ proved - incomplete|shostak|0.060|
|rat_lemma|✅ proved - incomplete|shostak|0.134|

## `floor`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_noninteger_TCC1|✅ proved - complete|shostak|0.050|
|cauchy_noninteger_TCC2|✅ proved - complete|shostak|0.182|
|subtype_TCC1|✅ proved - complete|shostak|0.161|
|nonint_is_not_int|✅ proved - complete|shostak|0.100|
|precisions_TCC1|✅ proved - complete|shostak|0.060|
|divides_floor|✅ proved - complete|shostak|0.090|
|cauchy_floor_aux_TCC1|✅ proved - complete|shostak|0.010|
|cauchy_floor_aux_TCC2|✅ proved - complete|shostak|0.161|
|cauchy_floor_aux_TCC3|✅ proved - complete|shostak|0.030|
|cauchy_floor_aux_TCC4|✅ proved - complete|shostak|0.100|
|integer_lt_plus_1|✅ proved - complete|shostak|0.037|
|real_bound_int_above|✅ proved - complete|shostak|0.050|
|real_bound_int_below|✅ proved - complete|shostak|0.020|
|expt_inv_lt_1|✅ proved - complete|shostak|0.090|
|floor_aux_lem|✅ proved - complete|shostak|0.000|
|floor_aux_lem2_TCC1|✅ proved - complete|shostak|0.010|
|floor_aux_lem2|✅ proved - complete|shostak|0.662|
|cauchy_floor_TCC1|✅ proved - complete|shostak|0.020|
|floor_lemma|✅ proved - complete|shostak|0.020|

## `modulo`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_mod_TCC1|✅ proved - incomplete|shostak|0.413|
|mod_lemma_TCC1|✅ proved - complete|shostak|0.010|
|mod_lemma|✅ proved - incomplete|shostak|0.059|

## `abs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_abs_TCC1|✅ proved - complete|shostak|0.206|
|abs_lemma|✅ proved - complete|shostak|0.243|

## `cauchy_expr_eval`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Eval_real_TCC1|✅ proved - complete|shostak|0.053|
|Eval_real_TCC2|✅ proved - complete|shostak|0.060|
|Eval_real_TCC3|✅ proved - complete|shostak|0.062|
|Eval_real_TCC4|✅ proved - complete|shostak|0.060|
|Eval_real_TCC5|✅ proved - complete|shostak|0.060|
|Eval_real_TCC6|✅ proved - complete|shostak|0.050|
|Eval_real_TCC7|✅ proved - complete|shostak|0.060|
|Eval_real_TCC8|✅ proved - complete|shostak|0.048|
|Eval_real_TCC9|✅ proved - complete|shostak|0.060|
|Eval_real_TCC10|✅ proved - complete|shostak|0.065|
|Eval_real_TCC11|✅ proved - complete|shostak|0.070|
|Eval_real_TCC12|✅ proved - complete|shostak|0.050|
|Eval_real_TCC13|✅ proved - complete|shostak|0.070|
|Eval_real_TCC14|✅ proved - complete|shostak|0.070|
|Eval_real_TCC15|✅ proved - complete|shostak|0.063|
|Eval_real_TCC16|✅ proved - complete|shostak|0.050|
|Eval_real_TCC17|✅ proved - complete|shostak|0.051|
|Eval_real_TCC18|✅ proved - complete|shostak|0.030|
|Eval_real_TCC19|✅ proved - complete|shostak|0.050|
|Eval_real_TCC20|✅ proved - complete|shostak|0.050|
|Eval_real_TCC21|✅ proved - complete|shostak|0.053|
|Eval_real_TCC22|✅ proved - complete|shostak|0.060|
|Eval_real_TCC23|✅ proved - complete|shostak|0.072|
|Eval_real_TCC24|✅ proved - complete|shostak|0.060|
|Eval_real_TCC25|✅ proved - complete|shostak|0.060|
|Eval_real_TCC26|✅ proved - complete|shostak|0.072|
|Eval_real_TCC27|✅ proved - complete|shostak|0.060|
|Eval_real_TCC28|✅ proved - complete|shostak|0.073|
|Eval_real_TCC29|✅ proved - complete|shostak|0.050|
|Eval_real_TCC30|✅ proved - complete|shostak|0.050|
|Eval_real_TCC31|✅ proved - complete|shostak|0.050|
|Eval_real_TCC32|✅ proved - complete|shostak|0.050|
|Eval_real_TCC33|✅ proved - complete|shostak|0.060|
|Eval_real_TCC34|✅ proved - complete|shostak|0.063|
|Eval_real_TCC35|✅ proved - complete|shostak|0.070|
|Eval_real_TCC36|✅ proved - complete|shostak|0.072|
|Eval_real_TCC37|✅ proved - complete|shostak|0.050|
|Eval_real_TCC38|✅ proved - complete|shostak|0.050|
|Eval_real_TCC39|✅ proved - complete|shostak|0.054|
|Eval_real_TCC40|✅ proved - complete|shostak|0.040|
|Eval_real_TCC41|✅ proved - complete|shostak|0.050|
|Eval_real_TCC42|✅ proved - complete|shostak|0.051|
|Eval_real_TCC43|✅ proved - complete|shostak|0.050|
|Eval_real_TCC44|✅ proved - complete|shostak|0.050|
|Eval_real_TCC45|✅ proved - complete|shostak|0.061|
|Eval_real_TCC46|✅ proved - complete|shostak|0.040|
|Eval_real_TCC47|✅ proved - complete|shostak|0.050|
|Eval_real_TCC48|✅ proved - complete|shostak|0.124|
|Eval_real_TCC49|✅ proved - complete|shostak|0.040|
|Eval_real_TCC50|✅ proved - complete|shostak|0.053|
|Eval_real_TCC51|✅ proved - complete|shostak|0.060|
|Eval_real_TCC52|✅ proved - complete|shostak|0.070|
|Eval_real_TCC53|✅ proved - complete|shostak|0.063|
|Eval_real_TCC54|✅ proved - complete|shostak|0.071|
|Eval_real_TCC55|✅ proved - complete|shostak|0.040|
|Eval_real_TCC56|✅ proved - complete|shostak|0.040|
|Eval_real_TCC57|✅ proved - complete|shostak|0.043|
|Eval_real_TCC58|✅ proved - complete|shostak|0.120|
|Eval_real_TCC59|✅ proved - complete|shostak|0.040|
|Eval_real_TCC60|✅ proved - complete|shostak|0.062|
|Eval_TCC1|✅ proved - complete|shostak|0.070|
|Eval_TCC2|✅ proved - complete|shostak|0.071|
|Eval_TCC3|✅ proved - complete|shostak|0.064|
|Eval_TCC4|✅ proved - complete|shostak|0.060|
|Eval_TCC5|✅ proved - complete|shostak|0.072|
|Eval_TCC6|✅ proved - complete|shostak|0.080|
|Eval_TCC7|✅ proved - complete|shostak|0.062|
|Eval_TCC8|✅ proved - complete|shostak|0.080|
|Eval_TCC9|✅ proved - complete|shostak|0.069|
|Eval_TCC10|✅ proved - complete|shostak|0.070|
|Eval_TCC11|✅ proved - complete|shostak|0.065|
|Eval_TCC12|✅ proved - complete|shostak|0.060|
|Eval_TCC13|✅ proved - complete|shostak|0.050|
|Eval_TCC14|✅ proved - complete|shostak|0.070|
|Eval_TCC15|✅ proved - complete|shostak|0.064|
|Eval_TCC16|✅ proved - complete|shostak|0.070|
|Eval_TCC17|✅ proved - complete|shostak|0.082|
|Eval_TCC18|✅ proved - complete|shostak|0.062|
|Eval_TCC19|✅ proved - complete|shostak|0.070|
|Eval_TCC20|✅ proved - complete|shostak|0.053|
|Eval_TCC21|✅ proved - complete|shostak|0.060|
|Eval_TCC22|✅ proved - complete|shostak|0.071|
|Eval_TCC23|✅ proved - complete|shostak|0.070|
|Eval_TCC24|✅ proved - complete|shostak|0.073|
|Eval_TCC25|✅ proved - complete|shostak|0.092|
|Eval_TCC26|✅ proved - complete|shostak|0.060|
|Eval_TCC27|✅ proved - complete|shostak|0.172|
|Eval_TCC28|✅ proved - complete|shostak|0.060|
|Eval_TCC29|✅ proved - complete|shostak|0.293|
|Eval_TCC30|✅ proved - complete|shostak|0.050|
|Eval_TCC31|✅ proved - complete|shostak|0.295|
|Eval_TCC32|✅ proved - complete|shostak|0.062|
|Eval_TCC33|✅ proved - complete|shostak|0.898|
|Eval_TCC34|✅ proved - complete|shostak|0.060|
|Eval_TCC35|✅ proved - complete|shostak|0.081|
|Eval_TCC36|✅ proved - complete|shostak|0.076|
|Eval_TCC37|✅ proved - complete|shostak|0.078|
|Eval_TCC38|✅ proved - complete|shostak|0.094|
|Eval_TCC39|✅ proved - incomplete|shostak|0.266|
|Eval_TCC40|✅ proved - complete|shostak|0.060|
|Eval_TCC41|✅ proved - complete|shostak|0.908|
|Eval_TCC42|✅ proved - complete|shostak|0.060|
|eval_lemma_aux|✅ proved - incomplete|shostak|0.000|
|eval_domain_inside_eval_real|✅ proved - incomplete|shostak|5.037|
|eval_lemma_TCC1|✅ proved - incomplete|shostak|0.025|
|eval_lemma|✅ proved - incomplete|shostak|0.056|

## `cauchy_numerical`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|numerical_soundness_TCC1|✅ proved - incomplete|shostak|0.040|
|numerical_soundness|✅ proved - incomplete|shostak|0.217|

## `strategies`
No formula declaration found.## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Mac OS X (Intel)] (Nov 14, 2020 23:13)|
| Patch Version| n/a|
| Library Path| `/Applications/pvs-7.1.0/pvslib/`<br/>`/Applications/pvs-7.1.0/lib/`<br/>`/Applications/pvs-7.1.0/pvslib/float/`<br/>`/Applications/pvs-7.1.0/pvslib/pvsio_utils/`|
| Loaded Patches | `/Applications/pvs-7.1.0/pvslib/.pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230712-static-update.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230710-tcc-gen.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230707-defattach.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230706-extrategies.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210323-wish.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210225-cl2pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210715a.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210715.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210707.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210706.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210511.lisp`|
