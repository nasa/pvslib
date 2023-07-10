# Summary for `exact_real_arith`
Run started at 2:6:43 7/8/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **719**   | **719**    | **719**    | **0**  | **3:22.065 s**   |
|top|0|0|0|0|0.000|
|prelude_aux|36|36|36|0|4.862|
|prelude_A4|85|85|85|0|25.370|
|appendix|15|15|15|0|6.461|
|prelude_sqrt|35|35|35|0|4.569|
|cauchy|19|19|19|0|0.673|
|int|4|4|4|0|0.171|
|add|2|2|2|0|0.731|
|neg|5|5|5|0|0.420|
|sub|1|1|1|0|0.030|
|mul|22|22|22|0|11.222|
|inv|42|42|42|0|16.453|
|unique|12|12|12|0|2.416|
|div|1|1|1|0|0.119|
|rat|4|4|4|0|0.252|
|shift|5|5|5|0|1.418|
|min|2|2|2|0|1.240|
|max|2|2|2|0|0.893|
|sqrtx|11|11|11|0|2.547|
|bisection_nat_sqrt|15|15|15|0|2.685|
|power|59|59|59|0|24.991|
|sum|17|17|17|0|4.148|
|series|20|20|20|0|6.997|
|powerseries|9|9|9|0|0.366|
|atanx|29|29|29|0|11.140|
|asinx|6|6|6|0|1.705|
|acosx|1|1|1|0|0.120|
|sincosx|24|24|24|0|24.959|
|remx|4|4|4|0|0.582|
|trigx|15|15|15|0|0.586|
|log|36|36|36|0|7.085|
|exp|15|15|15|0|7.587|
|hyperbolicx|27|27|27|0|2.126|
|computable_rat|7|7|7|0|0.400|
|floor|19|19|19|0|5.539|
|modulo|3|3|3|0|0.647|
|abs|2|2|2|0|0.634|
|cauchy_expr_eval|106|106|106|0|19.537|
|cauchy_numerical|2|2|2|0|0.384|
|strategies|0|0|0|0|0.000|
## Detailed Summary 
## `top`
No formula declaration found.
## `prelude_aux`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|lt_times_lt_nn1|✅ proved - complete|shostak|0.246|
|lt_times_lt_np1|✅ proved - complete|shostak|0.176|
|both_sides_times_nonneg_le1|✅ proved - complete|shostak|0.070|
|both_sides_times_nonpos_le1|✅ proved - complete|shostak|0.060|
|abs_nonneg|✅ proved - complete|shostak|0.010|
|abs_nonpos|✅ proved - complete|shostak|0.020|
|odd_even|✅ proved - complete|shostak|0.155|
|odd_or_even|✅ proved - complete|shostak|0.020|
|expt_product_aux_TCC1|✅ proved - complete|shostak|0.010|
|expt_product_aux_TCC2|✅ proved - complete|shostak|0.010|
|expt_product_aux|✅ proved - complete|shostak|0.390|
|expt_product_TCC1|✅ proved - complete|shostak|0.010|
|expt_product_TCC2|✅ proved - complete|shostak|0.010|
|expt_product|✅ proved - complete|shostak|0.005|
|expt_division_aux_TCC1|✅ proved - complete|shostak|0.010|
|expt_division_aux|✅ proved - complete|shostak|0.010|
|expt_division_TCC1|✅ proved - complete|shostak|0.010|
|expt_division|✅ proved - complete|shostak|0.461|
|expt_minus1|✅ proved - complete|shostak|0.263|
|lt_equiv_not_le|✅ proved - complete|shostak|0.030|
|le_equiv_not_lt|✅ proved - complete|shostak|0.020|
|lt_equiv_le_plus_one|✅ proved - complete|shostak|0.050|
|lt_plus_one_equiv_le|✅ proved - complete|shostak|0.050|
|lt_le_transitivity|✅ proved - complete|shostak|0.020|
|le_lt_transitivity|✅ proved - complete|shostak|0.020|
|exp_of2_exists_aux_TCC1|✅ proved - complete|shostak|0.040|
|exp_of2_exists_aux|✅ proved - complete|shostak|1.241|
|exp_of2_exists_TCC1|✅ proved - complete|shostak|0.010|
|exp_of2_exists|✅ proved - complete|shostak|0.265|
|exp_of_exists2|✅ proved - complete|shostak|0.384|
|floor_sqrt_val|✅ proved - incomplete|shostak|0.192|
|ceiling_sqrt_0|✅ proved - incomplete|shostak|0.020|
|ceiling_sqrt_val|✅ proved - incomplete|shostak|0.192|
|log2_TCC1|✅ proved - incomplete|shostak|0.020|
|log2_2_expt_i|✅ proved - incomplete|shostak|0.302|
|log2_strict_increasing|✅ proved - incomplete|shostak|0.060|

## `prelude_A4`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|expt_neg_even_TCC1|✅ proved - complete|shostak|0.010|
|expt_neg_even_TCC2|✅ proved - complete|shostak|0.010|
|expt_neg_even|✅ proved - complete|shostak|0.183|
|expt_neg_odd_TCC1|✅ proved - complete|shostak|0.040|
|expt_neg_odd_TCC2|✅ proved - complete|shostak|0.040|
|expt_neg_odd|✅ proved - complete|shostak|0.211|
|expt_0pn|✅ proved - complete|shostak|0.030|
|expt_inverse_inv_TCC1|✅ proved - complete|shostak|0.010|
|expt_inverse_inv|✅ proved - complete|shostak|0.060|
|expt_product_n0i_TCC1|✅ proved - complete|shostak|0.010|
|expt_product_n0i_TCC2|✅ proved - complete|shostak|0.010|
|expt_product_n0i|✅ proved - complete|shostak|0.100|
|expt_division_TCC1|✅ proved - complete|shostak|0.010|
|expt_division_TCC2|✅ proved - complete|shostak|0.010|
|expt_division|✅ proved - complete|shostak|0.120|
|A4_0_TCC1|✅ proved - complete|shostak|0.082|
|A4_0|✅ proved - complete|shostak|0.160|
|A4_1_TCC1|✅ proved - complete|shostak|0.080|
|A4_1|✅ proved - complete|shostak|0.110|
|A4_2|✅ proved - complete|shostak|0.460|
|A4_3_n|✅ proved - complete|shostak|0.200|
|A4_3_0_TCC1|✅ proved - complete|shostak|0.080|
|A4_3_0|✅ proved - complete|shostak|0.190|
|A4_3_p_TCC1|✅ proved - complete|shostak|0.064|
|A4_3_p|✅ proved - complete|shostak|0.180|
|A4_4|✅ proved - complete|shostak|0.697|
|A4_5pp_TCC1|✅ proved - complete|shostak|0.090|
|A4_5pp|✅ proved - complete|shostak|1.338|
|A4_5nn_TCC1|✅ proved - complete|shostak|0.110|
|A4_5nn|✅ proved - complete|shostak|1.628|
|A4_5nn_general_TCC1|✅ proved - complete|shostak|0.050|
|A4_5nn_general|✅ proved - complete|shostak|0.336|
|A4_5_TCC1|✅ proved - complete|shostak|0.060|
|A4_5|✅ proved - complete|shostak|0.000|
|A4_6pp_TCC1|✅ proved - complete|shostak|0.030|
|A4_6pp|✅ proved - complete|shostak|1.341|
|A4_6pp_general_TCC1|✅ proved - complete|shostak|0.030|
|A4_6pp_general|✅ proved - complete|shostak|0.222|
|A4_6nn_TCC1|✅ proved - complete|shostak|0.020|
|A4_6nn|✅ proved - complete|shostak|1.167|
|A4_6nn_general_TCC1|✅ proved - complete|shostak|0.030|
|A4_6nn_general|✅ proved - complete|shostak|0.232|
|A4_sqrt_ineq1|✅ proved - incomplete|shostak|0.070|
|A4_sqrt_ineq2|✅ proved - incomplete|shostak|0.210|
|A4_sqrt_ineq3|✅ proved - incomplete|shostak|0.220|
|A4_logsize|✅ proved - complete|shostak|0.120|
|A4_lemma_ineq1|✅ proved - incomplete|shostak|0.347|
|A4_lemma_ineq2|✅ proved - complete|shostak|0.130|
|A4_lemma_large_UB_0_TCC1|✅ proved - incomplete|shostak|0.130|
|A4_lemma_large_UB_0|✅ proved - incomplete|shostak|1.164|
|A4_lemma_large_UB_TCC1|✅ proved - incomplete|shostak|0.150|
|A4_lemma_large_UB|✅ proved - incomplete|shostak|1.725|
|A4_lemma_large_LB_TCC1|✅ proved - incomplete|shostak|0.140|
|A4_lemma_large_LB|✅ proved - incomplete|shostak|1.566|
|A4_lemma_large_ge3|✅ proved - incomplete|shostak|0.184|
|A4_lemma_large_lt3_TCC1|✅ proved - incomplete|shostak|0.140|
|A4_lemma_large_lt3_TCC2|✅ proved - incomplete|shostak|0.182|
|A4_lemma_large_lt3|✅ proved - incomplete|shostak|0.937|
|A4_lemma_small_UB_TCC1|✅ proved - incomplete|shostak|0.111|
|A4_lemma_small_UB|✅ proved - incomplete|shostak|1.426|
|A4_lemma_small_LB_TCC1|✅ proved - incomplete|shostak|0.100|
|A4_lemma_small_LB|✅ proved - incomplete|shostak|0.000|
|A4_lemma_small_TCC1|✅ proved - incomplete|shostak|0.110|
|A4_lemma_small_TCC2|✅ proved - incomplete|shostak|0.195|
|A4_lemma_small|✅ proved - incomplete|shostak|0.458|
|A4_lemma_px_TCC1|✅ proved - complete|shostak|0.130|
|A4_lemma_px_TCC2|✅ proved - complete|shostak|0.160|
|A4_lemma_px|✅ proved - incomplete|shostak|0.247|
|A4_lemma_p|✅ proved - incomplete|shostak|0.278|
|A4_lemma_0_px_TCC1|✅ proved - complete|shostak|0.080|
|A4_lemma_0_px_TCC2|✅ proved - complete|shostak|0.080|
|A4_lemma_0_px|✅ proved - incomplete|shostak|0.381|
|A4_lemma_0_p|✅ proved - incomplete|shostak|0.662|
|A4_lemma_0_TCC1|✅ proved - complete|shostak|0.080|
|A4_lemma_0_TCC2|✅ proved - complete|shostak|0.080|
|A4_lemma_0|✅ proved - incomplete|shostak|1.091|
|A4_lemma_n_even_TCC1|✅ proved - complete|shostak|0.080|
|A4_lemma_n_even_TCC2|✅ proved - complete|shostak|0.080|
|A4_lemma_n_even|✅ proved - incomplete|shostak|0.572|
|A4_lemma_n_odd_TCC1|✅ proved - complete|shostak|0.100|
|A4_lemma_n_odd_TCC2|✅ proved - complete|shostak|0.100|
|A4_lemma_n_odd|✅ proved - incomplete|shostak|0.642|
|A4_lemma_n_TCC1|✅ proved - complete|shostak|0.080|
|A4_lemma_n_TCC2|✅ proved - complete|shostak|0.090|
|A4_lemma_n|✅ proved - incomplete|shostak|0.701|

## `appendix`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|lemma_A1|✅ proved - incomplete|shostak|0.140|
|lemma_A2|✅ proved - complete|shostak|0.544|
|lemma_A3|✅ proved - incomplete|shostak|0.130|
|lemma_A4_TCC1|✅ proved - incomplete|shostak|0.110|
|lemma_A4_TCC2|✅ proved - incomplete|shostak|0.114|
|lemma_A4_TCC3|✅ proved - incomplete|shostak|0.110|
|lemma_A4|✅ proved - incomplete|shostak|0.698|
|epsilon_log2_aux|✅ proved - complete|shostak|0.190|
|epsilon_log2|✅ proved - complete|shostak|0.100|
|floor_sqrt_aux_TCC1|✅ proved - complete|shostak|0.150|
|floor_sqrt_aux_TCC2|✅ proved - complete|shostak|0.213|
|floor_sqrt_def|✅ proved - incomplete|shostak|1.619|
|floor_log2_TCC1|✅ proved - complete|shostak|0.050|
|floor_log2_TCC2|✅ proved - complete|shostak|0.050|
|floor_log2_def|✅ proved - incomplete|shostak|2.243|

## `prelude_sqrt`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|square_le1|✅ proved - complete|shostak|0.180|
|square_le2|✅ proved - complete|shostak|0.098|
|square_le3|✅ proved - complete|shostak|0.060|
|square_eq1|✅ proved - complete|shostak|0.061|
|square_le4|✅ proved - complete|shostak|0.070|
|square_le5|✅ proved - complete|shostak|0.223|
|square_le6|✅ proved - complete|shostak|0.117|
|square_archimedean1|✅ proved - complete|shostak|0.170|
|square_archimedean2|✅ proved - complete|shostak|0.445|
|square_exist_lt1|✅ proved - complete|shostak|0.857|
|square_exist_lt2|✅ proved - complete|shostak|0.110|
|square_exist_lt3|✅ proved - complete|shostak|0.264|
|square_exist_gt3|✅ proved - complete|shostak|0.376|
|sqrt_set_nonempty|✅ proved - complete|shostak|0.030|
|sqrt_set_has_UB_TCC1|✅ proved - complete|shostak|0.020|
|sqrt_set_has_UB|✅ proved - complete|shostak|0.142|
|sqrt_set_LUB|✅ proved - complete|shostak|0.291|
|square_injective|✅ proved - complete|shostak|0.061|
|square_surjective|✅ proved - complete|shostak|0.130|
|square_bijective|✅ proved - complete|shostak|0.010|
|square_is|✅ proved - complete|shostak|0.010|
|sqrt_square1|✅ proved - complete|shostak|0.010|
|sqrt_square2|✅ proved - complete|shostak|0.012|
|square_times|✅ proved - complete|shostak|0.040|
|sqrt_times|✅ proved - complete|shostak|0.060|
|sqrt_zero|✅ proved - complete|shostak|0.060|
|sqrt_one|✅ proved - complete|shostak|0.070|
|both_sides_sqrt1|✅ proved - complete|shostak|0.090|
|both_sides_sqrt2|✅ proved - complete|shostak|0.070|
|both_sides_sqrt_lt1|✅ proved - complete|shostak|0.080|
|both_sides_sqrt_lt2|✅ proved - complete|shostak|0.082|
|both_sides_sqrt_lt3|✅ proved - complete|shostak|0.070|
|both_sides_sqrt_le1|✅ proved - complete|shostak|0.100|
|both_sides_sqrt_le2|✅ proved - complete|shostak|0.000|
|both_sides_sqrt_le3|✅ proved - complete|shostak|0.100|

## `cauchy`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_real_TCC1|✅ proved - complete|shostak|0.010|
|cauchy_nzreal_TCC1|✅ proved - complete|shostak|0.030|
|cauchy_nnreal_TCC1|✅ proved - complete|shostak|0.020|
|cauchy_npreal_TCC1|✅ proved - complete|shostak|0.010|
|cauchy_posreal_TCC1|✅ proved - complete|shostak|0.020|
|cauchy_negreal_TCC1|✅ proved - complete|shostak|0.040|
|cauchy_smallreal_TCC1|✅ proved - complete|shostak|0.020|
|subtype_TCC1|✅ proved - complete|shostak|0.020|
|subtype_TCC2|✅ proved - complete|shostak|0.010|
|subtype_TCC3|✅ proved - complete|shostak|0.012|
|subtype_TCC4|✅ proved - complete|shostak|0.020|
|subtype_TCC5|✅ proved - complete|shostak|0.010|
|subtype_TCC6|✅ proved - complete|shostak|0.010|
|subtype_TCC7|✅ proved - complete|shostak|0.020|
|subtype_TCC8|✅ proved - complete|shostak|0.010|
|cauchy_zero_TCC1|✅ proved - complete|shostak|0.020|
|unique_cauchy_zero|✅ proved - complete|shostak|0.301|
|unique_cauchy_zero2|✅ proved - complete|shostak|0.070|
|unique_cauchy_zero3|✅ proved - complete|shostak|0.020|

## `int`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_int_TCC1|✅ proved - complete|shostak|0.061|
|cauchy_nat_TCC1|✅ proved - complete|shostak|0.040|
|int_lemma|✅ proved - complete|shostak|0.030|
|nat_lemma|✅ proved - complete|shostak|0.040|

## `add`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_add_TCC1|✅ proved - complete|shostak|0.380|
|add_lemma|✅ proved - complete|shostak|0.351|

## `neg`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_neg_TCC1|✅ proved - complete|shostak|0.140|
|neg_lemma|✅ proved - complete|shostak|0.180|
|neg_cauchy_nzreal_is_cauchy_nzreal|✅ proved - complete|shostak|0.030|
|neg_cauchy_posreal_is_cauchy_negreal|✅ proved - complete|shostak|0.030|
|neg_cauchy_negreal_is_cauchy_posreal|✅ proved - complete|shostak|0.040|

## `sub`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sub_lemma|✅ proved - complete|shostak|0.030|

## `mul`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|D1|✅ proved - complete|shostak|0.040|
|D2|✅ proved - complete|shostak|0.050|
|D3|✅ proved - complete|shostak|0.050|
|negreal_times_posreal_is_negreal|✅ proved - complete|shostak|0.080|
|lt_times_lt_nonneg1|✅ proved - complete|shostak|0.121|
|lt_times_lt_nonneg2|✅ proved - complete|shostak|0.140|
|D_pp|✅ proved - complete|shostak|0.500|
|D_pn|✅ proved - complete|shostak|0.498|
|D_nn|✅ proved - complete|shostak|1.136|
|D_p0|✅ proved - complete|shostak|0.170|
|D_n0|✅ proved - complete|shostak|0.531|
|D|✅ proved - complete|shostak|0.681|
|mul_p1|✅ proved - incomplete|shostak|0.340|
|mul_p2|✅ proved - incomplete|shostak|1.108|
|mul_p3|✅ proved - incomplete|shostak|0.315|
|mul_p4|✅ proved - incomplete|shostak|0.477|
|mul_p5|✅ proved - incomplete|shostak|2.050|
|mul_p6|✅ proved - incomplete|shostak|0.753|
|cauchy_mul_type_TCC1|✅ proved - incomplete|shostak|0.180|
|cauchy_mul_type|✅ proved - incomplete|shostak|0.793|
|cauchy_mul_TCC1|✅ proved - incomplete|shostak|0.290|
|mul_lemma|✅ proved - incomplete|shostak|0.919|

## `inv`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|expt_x2_TCC1|✅ proved - complete|shostak|0.010|
|expt_x2|✅ proved - complete|shostak|0.010|
|expt_times2_TCC1|✅ proved - complete|shostak|0.010|
|expt_times2_TCC2|✅ proved - complete|shostak|0.010|
|expt_times2|✅ proved - complete|shostak|0.101|
|minimum_inv_exists|✅ proved - complete|shostak|0.626|
|minimum_inv_TCC1|✅ proved - complete|shostak|0.010|
|minimum_inv_prop0|✅ proved - complete|shostak|0.088|
|minimum_inv_prop1|✅ proved - complete|shostak|0.391|
|minimum_inv_prop2|✅ proved - complete|shostak|0.482|
|minimum_inv_aux_TCC1|✅ proved - complete|shostak|0.030|
|minimum_inv_aux_TCC2|✅ proved - complete|shostak|0.104|
|minimum_inv_aux_TCC3|✅ proved - complete|shostak|0.150|
|minimum_inv_impl_TCC1|✅ proved - complete|shostak|0.010|
|minimum_inv_impl_def|✅ proved - complete|shostak|0.348|
|inv_p0|✅ proved - complete|shostak|0.150|
|inv_p1|✅ proved - complete|shostak|0.470|
|inv_p2|✅ proved - complete|shostak|0.250|
|inv_p3|✅ proved - complete|shostak|0.700|
|inv_p4|✅ proved - complete|shostak|0.759|
|inv_p5|✅ proved - complete|shostak|0.702|
|inv_p6|✅ proved - complete|shostak|0.666|
|inv_p7_TCC1|✅ proved - complete|shostak|0.581|
|inv_p7|✅ proved - complete|shostak|1.030|
|inv_p8|✅ proved - complete|shostak|0.341|
|inv_p9|✅ proved - complete|shostak|0.981|
|inv_n5_TCC1|✅ proved - complete|shostak|0.310|
|inv_n5|✅ proved - complete|shostak|0.925|
|inv_n6_TCC1|✅ proved - complete|shostak|0.170|
|inv_n6|✅ proved - complete|shostak|0.844|
|inv_n7_TCC1|✅ proved - complete|shostak|0.330|
|inv_n7_TCC2|✅ proved - complete|shostak|0.220|
|inv_n7|✅ proved - complete|shostak|0.529|
|inv_n8|✅ proved - complete|shostak|0.491|
|inv_n9|✅ proved - complete|shostak|1.385|
|inv_p|✅ proved - complete|shostak|1.140|
|minimum_inv_prop3_TCC1|✅ proved - incomplete|shostak|0.261|
|minimum_inv_prop3|✅ proved - incomplete|shostak|0.397|
|cauchy_nz_inv_TCC1|✅ proved - incomplete|shostak|0.000|
|cauchy_nz_inv_TCC2|✅ proved - incomplete|shostak|0.191|
|inv_nz_lemma|✅ proved - incomplete|shostak|0.200|
|inv_lemma|✅ proved - incomplete|shostak|0.050|

## `unique`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|unique_cauchy|✅ proved - complete|shostak|0.194|
|cauchy_dich1|✅ proved - complete|shostak|0.040|
|cauchy_dich2|✅ proved - complete|shostak|0.020|
|cauchy_dich3|✅ proved - complete|shostak|0.020|
|cauchy_dich4|✅ proved - complete|shostak|0.020|
|cauchy_dich5|✅ proved - complete|shostak|0.020|
|cauchy_trich|✅ proved - complete|shostak|0.052|
|cauchy_pos_characteristic|✅ proved - complete|shostak|0.220|
|cauchy_neg_characteristic|✅ proved - complete|shostak|0.203|
|cauchy_pos_monotonic|✅ proved - complete|shostak|0.457|
|cauchy_monotonic|✅ proved - complete|shostak|0.719|
|cauchy_odd_extend|✅ proved - complete|shostak|0.451|

## `div`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|div_lemma|✅ proved - incomplete|shostak|0.119|

## `rat`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|denominators_TCC1|✅ proved - complete|shostak|0.020|
|numerator_TCC1|✅ proved - complete|shostak|0.140|
|cauchy_rat_TCC1|✅ proved - complete|shostak|0.010|
|rat_lemma|✅ proved - incomplete|shostak|0.082|

## `shift`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_div2n_TCC1|✅ proved - complete|shostak|0.030|
|cauchy_div2n_TCC2|✅ proved - complete|shostak|0.432|
|cauchy_mul2n_TCC1|✅ proved - complete|shostak|0.266|
|lemma_div2n|✅ proved - complete|shostak|0.440|
|lemma_mul2n|✅ proved - complete|shostak|0.250|

## `min`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_min_TCC1|✅ proved - complete|shostak|0.610|
|min_lemma|✅ proved - complete|shostak|0.630|

## `max`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_max_TCC1|✅ proved - complete|shostak|0.442|
|max_lemma|✅ proved - complete|shostak|0.451|

## `sqrtx`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|nnsqrt_TCC1|✅ proved - complete|shostak|0.010|
|sqrt_p1_TCC1|✅ proved - incomplete|shostak|0.010|
|sqrt_p1_TCC2|✅ proved - incomplete|shostak|0.010|
|sqrt_p1|✅ proved - incomplete|shostak|0.471|
|sqrt_p2_TCC1|✅ proved - incomplete|shostak|0.051|
|sqrt_p2|✅ proved - incomplete|shostak|0.160|
|sqrt_p3|✅ proved - complete|shostak|0.130|
|cauchy_nnsqrt_TCC1|✅ proved - complete|shostak|0.140|
|cauchy_nnsqrt_TCC2|✅ proved - incomplete|shostak|0.745|
|sqrt_nn_lemma|✅ proved - incomplete|shostak|0.800|
|sqrt_lemma|✅ proved - incomplete|shostak|0.020|

## `bisection_nat_sqrt`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|fs_lt_def|✅ proved - incomplete|shostak|0.160|
|fs_eq_def|✅ proved - incomplete|shostak|0.160|
|fs_gt_def|✅ proved - incomplete|shostak|0.164|
|fs_trichotomy|✅ proved - incomplete|shostak|0.150|
|fs_le_ge|✅ proved - incomplete|shostak|0.103|
|bisection_sqrt_aux_TCC1|✅ proved - incomplete|shostak|0.050|
|bisection_sqrt_aux_TCC2|✅ proved - incomplete|shostak|0.140|
|bisection_sqrt_aux_TCC3|✅ proved - incomplete|shostak|0.190|
|bisection_sqrt_aux_TCC4|✅ proved - incomplete|shostak|0.163|
|bisection_sqrt_aux_TCC5|✅ proved - incomplete|shostak|0.180|
|bisection_sqrt_aux_TCC6|✅ proved - incomplete|shostak|0.203|
|bisection_sqrt_aux_prop|✅ proved - incomplete|shostak|0.721|
|bisection_sqrt_TCC1|✅ proved - incomplete|shostak|0.020|
|bisection_sqrt_TCC2|✅ proved - incomplete|shostak|0.091|
|bisection_sqrt_def|✅ proved - incomplete|shostak|0.190|

## `power`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|abs_ge0|✅ proved - complete|shostak|0.010|
|abs_neg|✅ proved - complete|shostak|0.030|
|abs_interval|✅ proved - complete|shostak|0.081|
|abs_interval1|✅ proved - complete|shostak|0.030|
|abs_interval2|✅ proved - complete|shostak|0.030|
|triangle_open|✅ proved - complete|shostak|0.150|
|abs_error|✅ proved - complete|shostak|0.251|
|lemma_A2_generalized|✅ proved - complete|shostak|0.140|
|cauchy_power_lt1_n_odd_TCC1|✅ proved - incomplete|shostak|0.150|
|cauchy_power_lt1_n_odd_TCC2|✅ proved - incomplete|shostak|0.180|
|cauchy_power_lt1_n_odd|✅ proved - incomplete|shostak|1.416|
|cauchy_power_lt1_n_even_TCC1|✅ proved - incomplete|shostak|0.108|
|cauchy_power_lt1_n_even_TCC2|✅ proved - incomplete|shostak|0.160|
|cauchy_power_lt1_n_even|✅ proved - incomplete|shostak|0.779|
|cauchy_power_lt1_snz_odd_TCC1|✅ proved - incomplete|shostak|0.150|
|cauchy_power_lt1_snz_odd_TCC2|✅ proved - incomplete|shostak|0.190|
|cauchy_power_lt1_snz_odd|✅ proved - incomplete|shostak|1.240|
|cauchy_power_lt1_snz_even_TCC1|✅ proved - incomplete|shostak|0.120|
|cauchy_power_lt1_snz_even_TCC2|✅ proved - incomplete|shostak|0.160|
|cauchy_power_lt1_snz_even|✅ proved - incomplete|shostak|0.809|
|cauchy_power_lt1_sn_odd_TCC1|✅ proved - incomplete|shostak|0.160|
|cauchy_power_lt1_sn_odd_TCC2|✅ proved - incomplete|shostak|0.190|
|cauchy_power_lt1_sn_odd|✅ proved - incomplete|shostak|2.204|
|cauchy_power_lt1_sn_even_TCC1|✅ proved - incomplete|shostak|0.110|
|cauchy_power_lt1_sn_even_TCC2|✅ proved - incomplete|shostak|0.160|
|cauchy_power_lt1_sn_even|✅ proved - incomplete|shostak|2.149|
|cauchy_power_lt1_z_TCC1|✅ proved - incomplete|shostak|0.110|
|cauchy_power_lt1_z_TCC2|✅ proved - incomplete|shostak|0.148|
|cauchy_power_lt1_z|✅ proved - incomplete|shostak|0.000|
|cauchy_power_lt1_sp_odd_TCC1|✅ proved - incomplete|shostak|0.140|
|cauchy_power_lt1_sp_odd|✅ proved - incomplete|shostak|1.452|
|cauchy_power_lt1_sp_even_TCC1|✅ proved - incomplete|shostak|0.120|
|cauchy_power_lt1_sp_even|✅ proved - incomplete|shostak|2.225|
|cauchy_power_lt1_pz_TCC1|✅ proved - incomplete|shostak|0.120|
|cauchy_power_lt1_pz|✅ proved - incomplete|shostak|0.839|
|cauchy_power_lt1_p_TCC1|✅ proved - incomplete|shostak|0.110|
|cauchy_power_lt1_p|✅ proved - incomplete|shostak|0.913|
|cauchy_power_lt1_main_generalized_TCC1|✅ proved - incomplete|shostak|0.110|
|cauchy_power_lt1_main_generalized_TCC2|✅ proved - incomplete|shostak|0.160|
|cauchy_power_lt1_main_generalized|✅ proved - incomplete|shostak|0.651|
|cauchy_power_lt1_main_TCC1|✅ proved - incomplete|shostak|0.120|
|cauchy_power_lt1_main_TCC2|✅ proved - incomplete|shostak|0.170|
|cauchy_power_lt1_main|✅ proved - incomplete|shostak|0.230|
|cauchy_power_lt1_isreal_TCC1|✅ proved - incomplete|shostak|0.240|
|cauchy_power_lt1_isreal_TCC2|✅ proved - incomplete|shostak|0.050|
|cauchy_power_lt1_isreal_TCC3|✅ proved - incomplete|shostak|0.120|
|cauchy_power_lt1_isreal|✅ proved - incomplete|shostak|0.520|
|cauchy_power_lt1_TCC1|✅ proved - incomplete|shostak|0.020|
|power_lemma_lt1_TCC1|✅ proved - complete|shostak|0.020|
|power_lemma_lt1|✅ proved - incomplete|shostak|0.601|
|cauchy_power_div1|✅ proved - incomplete|shostak|0.301|
|cauchy_power_main_TCC1|✅ proved - incomplete|shostak|0.180|
|cauchy_power_main_TCC2|✅ proved - incomplete|shostak|0.209|
|cauchy_power_main|✅ proved - incomplete|shostak|1.254|
|cauchy_power_isreal_TCC1|✅ proved - incomplete|shostak|0.481|
|cauchy_power_isreal|✅ proved - incomplete|shostak|1.076|
|cauchy_power_TCC1|✅ proved - incomplete|shostak|0.010|
|power_lemma_TCC1|✅ proved - complete|shostak|0.020|
|power_lemma|✅ proved - incomplete|shostak|1.114|

## `sum`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_sigma_TCC1|✅ proved - complete|shostak|0.020|
|sum_lemma2_TCC1|✅ proved - complete|shostak|0.020|
|sum_lemma2_TCC2|✅ proved - complete|shostak|0.020|
|sum_lemma2|✅ proved - incomplete|shostak|1.088|
|cauchy_sum_aux_TCC1|✅ proved - complete|shostak|0.020|
|cauchy_sum_aux_TCC2|✅ proved - complete|shostak|0.010|
|sum_lemma3_TCC1|✅ proved - complete|shostak|0.010|
|sum_lemma3_TCC2|✅ proved - complete|shostak|0.010|
|sum_lemma3|✅ proved - incomplete|shostak|0.145|
|sum_lemma4_TCC1|✅ proved - incomplete|shostak|0.220|
|sum_lemma4|✅ proved - incomplete|shostak|0.773|
|sum_lemma5|✅ proved - incomplete|shostak|1.154|
|cauchys_real_TCC1|✅ proved - complete|shostak|0.020|
|cauchys_real_TCC2|✅ proved - complete|shostak|0.020|
|cauchy_sum_TCC1|✅ proved - incomplete|shostak|0.324|
|sum_lemma_TCC1|✅ proved - complete|shostak|0.010|
|sum_lemma|✅ proved - incomplete|shostak|0.284|

## `series`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sum_TCC1|✅ proved - complete|shostak|0.020|
|sum_TCC2|✅ proved - complete|shostak|0.020|
|sum_lemma1|✅ proved - complete|shostak|0.161|
|geometric_series_TCC1|✅ proved - complete|shostak|0.010|
|geometric_series_aux1_TCC1|✅ proved - complete|shostak|0.010|
|geometric_series_aux1_TCC2|✅ proved - complete|shostak|0.030|
|geometric_series_aux1|✅ proved - complete|shostak|0.501|
|geometric_series_aux_odd_TCC1|✅ proved - complete|shostak|0.150|
|geometric_series_aux_odd|✅ proved - complete|shostak|0.985|
|geometric_series_aux_even_TCC1|✅ proved - complete|shostak|0.070|
|geometric_series_aux_even_TCC2|✅ proved - complete|shostak|0.010|
|geometric_series_aux_even|✅ proved - complete|shostak|1.282|
|geometric_series_approx_set_contains1|✅ proved - complete|shostak|0.010|
|geometric_series_approx_set_nonempty|✅ proved - complete|shostak|0.020|
|geometric_series_approx_set_pos_upper_bound_TCC1|✅ proved - complete|shostak|0.030|
|geometric_series_approx_set_pos_upper_bound_TCC2|✅ proved - complete|shostak|0.010|
|geometric_series_approx_set_pos_upper_bound|✅ proved - complete|shostak|0.410|
|geometric_series_approx_set_pos_least_upper_bound|✅ proved - incomplete|shostak|3.118|
|geometric_series_pos_limit_TCC1|✅ proved - complete|shostak|0.060|
|geometric_series_pos_limit|✅ proved - incomplete|shostak|0.090|

## `powerseries`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|powerseries_TCC1|✅ proved - complete|shostak|0.010|
|powerseries_TCC2|✅ proved - complete|shostak|0.010|
|powerseries_TCC3|✅ proved - complete|shostak|0.010|
|cauchy_powerseries_TCC1|✅ proved - complete|shostak|0.010|
|cauchy_powerseries_TCC2|✅ proved - incomplete|shostak|0.108|
|max_prec_TCC1|✅ proved - complete|shostak|0.030|
|max_prec_TCC2|✅ proved - complete|shostak|0.010|
|powerseries_lemma_TCC1|✅ proved - complete|shostak|0.010|
|powerseries_lemma|✅ proved - incomplete|shostak|0.168|

## `atanx`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_ssmallreal_TCC1|✅ proved - complete|shostak|0.050|
|subtype_TCC1|✅ proved - complete|shostak|0.030|
|cauchy_vsmallreal_TCC1|✅ proved - complete|shostak|0.020|
|subtype_TCC2|✅ proved - complete|shostak|0.010|
|cauchy_atan_drx_series_TCC1|✅ proved - complete|shostak|0.170|
|cauchy_atan_drx_series_TCC2|✅ proved - complete|shostak|0.173|
|atan_series_lemma|✅ proved - incomplete|shostak|0.310|
|cauchy_atan_drxx_TCC1|✅ proved - incomplete|shostak|0.000|
|cauchy_atan_drxx_prop_TCC1|✅ proved - complete|shostak|0.010|
|cauchy_atan_drxx_prop_TCC2|✅ proved - incomplete|shostak|0.030|
|cauchy_atan_drxx_prop|✅ proved - incomplete|shostak|3.549|
|cauchy_atan_dr_TCC1|✅ proved - incomplete|shostak|0.218|
|cauchy_atan_dr_TCC2|✅ proved - incomplete|shostak|0.277|
|atan_dr_lemma|✅ proved - incomplete|shostak|0.523|
|cauchy_pi_TCC1|✅ proved - complete|shostak|0.080|
|cauchy_pi_TCC2|✅ proved - incomplete|shostak|0.086|
|cauchy_pi_TCC3|✅ proved - complete|shostak|0.100|
|cauchy_pi_TCC4|✅ proved - incomplete|shostak|0.100|
|pi_lemma|✅ proved - incomplete|shostak|0.423|
|cauchy_atan_TCC1|✅ proved - incomplete|shostak|0.250|
|cauchy_atan_TCC2|✅ proved - incomplete|shostak|0.410|
|cauchy_atan_TCC3|✅ proved - incomplete|shostak|0.295|
|cauchy_atan_TCC4|✅ proved - incomplete|shostak|0.431|
|cauchy_atan_TCC5|✅ proved - incomplete|shostak|0.290|
|cauchy_atan_TCC6|✅ proved - incomplete|shostak|0.280|
|cauchy_atan_TCC7|✅ proved - incomplete|shostak|0.431|
|cauchy_atan_TCC8|✅ proved - incomplete|shostak|0.240|
|cauchy_atan_TCC9|✅ proved - incomplete|shostak|0.341|
|atan_lemma|✅ proved - incomplete|shostak|2.013|

## `asinx`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_real_abs_le1_TCC1|✅ proved - complete|shostak|0.030|
|subtype_TCC1|✅ proved - complete|shostak|0.020|
|cauchy_asin_TCC1|✅ proved - incomplete|shostak|0.141|
|cauchy_asin_TCC2|✅ proved - incomplete|shostak|0.283|
|cauchy_asin_TCC3|✅ proved - incomplete|shostak|0.160|
|asin_lemma|✅ proved - incomplete|shostak|1.071|

## `acosx`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|acos_lemma|✅ proved - incomplete|shostak|0.120|

## `sincosx`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|real_3pi16_TCC1|✅ proved - incomplete|shostak|0.192|
|cauchy_real_3pi16_TCC1|✅ proved - incomplete|shostak|0.230|
|cauchy_nnsreal_TCC1|✅ proved - complete|shostak|0.030|
|subtype_TCC1|✅ proved - complete|shostak|0.010|
|subtype_TCC2|✅ proved - complete|shostak|0.020|
|subtype_TCC3|✅ proved - incomplete|shostak|0.120|
|cauchy_sin_series_TCC1|✅ proved - incomplete|shostak|0.130|
|cauchy_cos_series_TCC1|✅ proved - incomplete|shostak|0.072|
|sin_series_lemma|✅ proved - incomplete|shostak|0.300|
|cos_series_lemma|✅ proved - incomplete|shostak|0.230|
|cauchy_sin_drx_TCC1|✅ proved - incomplete|shostak|0.010|
|cauchy_sin_drx_TCC2|✅ proved - incomplete|shostak|4.861|
|cauchy_cos_drx_TCC1|✅ proved - incomplete|shostak|0.010|
|cauchy_cos_drx_TCC2|✅ proved - incomplete|shostak|0.000|
|sin_drx_lemma_TCC1|✅ proved - incomplete|shostak|0.050|
|sin_drx_lemma|✅ proved - incomplete|shostak|3.529|
|cauchy_sin_dr_TCC1|✅ proved - incomplete|shostak|0.375|
|sin_dr_lemma|✅ proved - incomplete|shostak|0.631|
|cos_dr_lemma|✅ proved - incomplete|shostak|2.988|
|cauchy_sin_TCC1|✅ proved - incomplete|shostak|0.080|
|cauchy_sin_TCC2|✅ proved - incomplete|shostak|0.140|
|cauchy_sin_TCC3|✅ proved - incomplete|shostak|0.905|
|sin_lemma|✅ proved - incomplete|shostak|5.436|
|cos_lemma|✅ proved - incomplete|shostak|4.610|

## `remx`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|modx_TCC1|✅ proved - complete|shostak|0.150|
|modx_def|✅ proved - complete|shostak|0.150|
|remx_TCC1|✅ proved - complete|shostak|0.082|
|remx_def|✅ proved - complete|shostak|0.200|

## `trigx`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sin_nz_TCC1|✅ proved - incomplete|shostak|0.020|
|cos_nz_TCC1|✅ proved - incomplete|shostak|0.020|
|cauchy_sin_nz_TCC1|✅ proved - incomplete|shostak|0.091|
|cauchy_cos_nz_TCC1|✅ proved - incomplete|shostak|0.080|
|subtype_TCC1|✅ proved - incomplete|shostak|0.020|
|subtype_TCC2|✅ proved - incomplete|shostak|0.010|
|cauchy_sec_TCC1|✅ proved - incomplete|shostak|0.030|
|cauchy_cosec_TCC1|✅ proved - incomplete|shostak|0.030|
|sec_TCC1|✅ proved - incomplete|shostak|0.020|
|cosec_TCC1|✅ proved - incomplete|shostak|0.020|
|sec_lemma|✅ proved - incomplete|shostak|0.070|
|cosec_lemma|✅ proved - incomplete|shostak|0.070|
|tan_lemma_TCC1|✅ proved - incomplete|shostak|0.010|
|tan_lemma|✅ proved - incomplete|shostak|0.045|
|cot_lemma|✅ proved - incomplete|shostak|0.050|

## `log`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_ln_small_TCC1|✅ proved - complete|shostak|0.030|
|subtype_TCC1|✅ proved - complete|shostak|0.030|
|cauchy_ln_med_TCC1|✅ proved - complete|shostak|0.010|
|subtype_TCC2|✅ proved - complete|shostak|0.010|
|cauchy_gt_quarter_TCC1|✅ proved - complete|shostak|0.020|
|subtype_TCC3|✅ proved - complete|shostak|0.017|
|cauchy_ln_series_TCC1|✅ proved - complete|shostak|0.020|
|cauchy_ln_series_TCC2|✅ proved - complete|shostak|0.020|
|ln_series_lemma_TCC1|✅ proved - complete|shostak|0.020|
|ln_series_lemma|✅ proved - incomplete|shostak|0.000|
|ln_estimate_lemma_TCC1|✅ proved - incomplete|shostak|0.050|
|ln_estimate_lemma|✅ proved - incomplete|shostak|0.410|
|cauchy_ln_drx_TCC1|✅ proved - incomplete|shostak|0.030|
|ln_drx_lemma_TCC1|✅ proved - complete|shostak|0.040|
|ln_drx_lemma|✅ proved - incomplete|shostak|1.309|
|cauchy_ln_drx_TCC2|✅ proved - incomplete|shostak|0.069|
|cauchy_ln_half_TCC1|✅ proved - complete|shostak|0.110|
|cauchy_ln_half_TCC2|✅ proved - incomplete|shostak|0.122|
|cauchy_ln_half_lemma|✅ proved - incomplete|shostak|0.110|
|cauchy_ln2_lemma|✅ proved - incomplete|shostak|0.090|
|cauchy_ln_sqrt2_TCC1|✅ proved - incomplete|shostak|0.057|
|cauchy_ln_sqrt2_lemma|✅ proved - incomplete|shostak|0.130|
|cauchy_ln_dr_TCC1|✅ proved - complete|shostak|0.247|
|cauchy_ln_dr_TCC2|✅ proved - incomplete|shostak|0.160|
|ln_dr_lemma_TCC1|✅ proved - complete|shostak|0.030|
|ln_dr_lemma|✅ proved - incomplete|shostak|0.412|
|cauchy_lnx_TCC1|✅ proved - complete|shostak|0.150|
|cauchy_lnx_TCC2|✅ proved - complete|shostak|0.030|
|cauchy_lnx_TCC3|✅ proved - incomplete|shostak|0.273|
|cauchy_lnx_TCC4|✅ proved - incomplete|shostak|1.075|
|ln_lemma_x_TCC1|✅ proved - complete|shostak|0.010|
|ln_lemma_x|✅ proved - incomplete|shostak|1.143|
|cauchy_lnx_TCC5|✅ proved - incomplete|shostak|0.020|
|cauchy_ln_TCC1|✅ proved - incomplete|shostak|0.290|
|cauchy_ln_TCC2|✅ proved - complete|shostak|0.157|
|ln_lemma|✅ proved - incomplete|shostak|0.384|

## `exp`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_exp_series_TCC1|✅ proved - incomplete|shostak|0.030|
|cauchy_exp_series_TCC2|✅ proved - incomplete|shostak|0.070|
|exp_series_lemma|✅ proved - incomplete|shostak|0.098|
|exp_estimate_lemma_TCC1|✅ proved - incomplete|shostak|0.020|
|exp_estimate_lemma|✅ proved - incomplete|shostak|0.222|
|cauchy_exp_dr_TCC1|✅ proved - incomplete|shostak|0.010|
|exp_dr_lemma|✅ proved - incomplete|shostak|3.190|
|cauchy_exp_dr_TCC2|✅ proved - incomplete|shostak|0.017|
|cauchy_exp_TCC1|✅ proved - incomplete|shostak|0.742|
|cauchy_exp_TCC2|✅ proved - incomplete|shostak|0.038|
|cauchy_exp_TCC3|✅ proved - incomplete|shostak|0.867|
|cauchy_exp_TCC4|✅ proved - incomplete|shostak|0.030|
|cauchy_exp_TCC5|✅ proved - incomplete|shostak|0.821|
|exp_lemma|✅ proved - incomplete|shostak|1.412|
|cauchy_exp_is_posreal|✅ proved - incomplete|shostak|0.020|

## `hyperbolicx`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sinh_lemma|✅ proved - incomplete|shostak|0.118|
|cosh_lemma|✅ proved - incomplete|shostak|0.171|
|cauchy_sinh_type|✅ proved - incomplete|shostak|0.020|
|cauchy_cosh_type|✅ proved - incomplete|shostak|0.030|
|cauchy_coth_TCC1|✅ proved - incomplete|shostak|0.050|
|tanh_lemma|✅ proved - incomplete|shostak|0.050|
|sech_lemma|✅ proved - incomplete|shostak|0.072|
|coth_lemma|✅ proved - incomplete|shostak|0.180|
|csch_lemma|✅ proved - incomplete|shostak|0.000|
|cauchy_tanh_type|✅ proved - incomplete|shostak|0.020|
|cauchy_coth_type|✅ proved - incomplete|shostak|0.040|
|cauchy_csch_type|✅ proved - incomplete|shostak|0.080|
|cauchy_sech_type|✅ proved - incomplete|shostak|0.020|
|cauchy_ge1_TCC1|✅ proved - complete|shostak|0.020|
|subtype_TCC1|✅ proved - complete|shostak|0.020|
|cauchy_asinh_TCC1|✅ proved - incomplete|shostak|0.070|
|cauchy_asinh_TCC2|✅ proved - incomplete|shostak|0.171|
|cauchy_acosh_TCC1|✅ proved - incomplete|shostak|0.070|
|cauchy_acosh_TCC2|✅ proved - incomplete|shostak|0.150|
|cauchy_atanh_TCC1|✅ proved - complete|shostak|0.060|
|cauchy_atanh_TCC2|✅ proved - incomplete|shostak|0.141|
|asinh_lemma|✅ proved - incomplete|shostak|0.181|
|acosh_lemma|✅ proved - incomplete|shostak|0.151|
|atanh_lemma|✅ proved - incomplete|shostak|0.180|
|cauchy_asinh_type|✅ proved - incomplete|shostak|0.021|
|cauchy_acosh_type|✅ proved - incomplete|shostak|0.020|
|cauchy_atanh_type|✅ proved - incomplete|shostak|0.020|

## `computable_rat`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_rat_TCC1|✅ proved - complete|shostak|0.050|
|cauchy_rat_TCC2|✅ proved - incomplete|shostak|0.030|
|cauchy_rat_TCC3|✅ proved - complete|shostak|0.010|
|cauchy_rat_TCC4|✅ proved - incomplete|shostak|0.020|
|negative_numerator_TCC1|✅ proved - complete|shostak|0.020|
|negative_numerator|✅ proved - incomplete|shostak|0.080|
|rat_lemma|✅ proved - incomplete|shostak|0.190|

## `floor`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_noninteger_TCC1|✅ proved - complete|shostak|0.070|
|cauchy_noninteger_TCC2|✅ proved - complete|shostak|0.260|
|subtype_TCC1|✅ proved - complete|shostak|0.238|
|nonint_is_not_int|✅ proved - complete|shostak|0.140|
|precisions_TCC1|✅ proved - complete|shostak|0.090|
|divides_floor|✅ proved - complete|shostak|0.120|
|cauchy_floor_aux_TCC1|✅ proved - complete|shostak|0.010|
|cauchy_floor_aux_TCC2|✅ proved - complete|shostak|0.219|
|cauchy_floor_aux_TCC3|✅ proved - complete|shostak|0.040|
|cauchy_floor_aux_TCC4|✅ proved - complete|shostak|0.130|
|integer_lt_plus_1|✅ proved - complete|shostak|0.050|
|real_bound_int_above|✅ proved - complete|shostak|0.060|
|real_bound_int_below|✅ proved - complete|shostak|0.030|
|expt_inv_lt_1|✅ proved - complete|shostak|0.121|
|floor_aux_lem|✅ proved - complete|shostak|2.984|
|floor_aux_lem2_TCC1|✅ proved - complete|shostak|0.020|
|floor_aux_lem2|✅ proved - complete|shostak|0.887|
|cauchy_floor_TCC1|✅ proved - complete|shostak|0.030|
|floor_lemma|✅ proved - complete|shostak|0.040|

## `modulo`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_mod_TCC1|✅ proved - incomplete|shostak|0.546|
|mod_lemma_TCC1|✅ proved - complete|shostak|0.010|
|mod_lemma|✅ proved - incomplete|shostak|0.091|

## `abs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_abs_TCC1|✅ proved - complete|shostak|0.300|
|abs_lemma|✅ proved - complete|shostak|0.334|

## `cauchy_expr_eval`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Eval_real_TCC1|✅ proved - complete|shostak|0.070|
|Eval_real_TCC2|✅ proved - complete|shostak|0.080|
|Eval_real_TCC3|✅ proved - complete|shostak|0.090|
|Eval_real_TCC4|✅ proved - complete|shostak|0.100|
|Eval_real_TCC5|✅ proved - complete|shostak|0.094|
|Eval_real_TCC6|✅ proved - complete|shostak|0.060|
|Eval_real_TCC7|✅ proved - complete|shostak|0.070|
|Eval_real_TCC8|✅ proved - complete|shostak|0.080|
|Eval_real_TCC9|✅ proved - complete|shostak|0.090|
|Eval_real_TCC10|✅ proved - complete|shostak|0.097|
|Eval_real_TCC11|✅ proved - complete|shostak|0.090|
|Eval_real_TCC12|✅ proved - complete|shostak|0.070|
|Eval_real_TCC13|✅ proved - complete|shostak|0.100|
|Eval_real_TCC14|✅ proved - complete|shostak|0.096|
|Eval_real_TCC15|✅ proved - complete|shostak|0.090|
|Eval_real_TCC16|✅ proved - complete|shostak|0.060|
|Eval_real_TCC17|✅ proved - complete|shostak|0.080|
|Eval_real_TCC18|✅ proved - complete|shostak|0.040|
|Eval_real_TCC19|✅ proved - complete|shostak|0.060|
|Eval_real_TCC20|✅ proved - complete|shostak|0.070|
|Eval_real_TCC21|✅ proved - complete|shostak|0.080|
|Eval_real_TCC22|✅ proved - complete|shostak|0.090|
|Eval_real_TCC23|✅ proved - complete|shostak|0.090|
|Eval_real_TCC24|✅ proved - complete|shostak|0.090|
|Eval_real_TCC25|✅ proved - complete|shostak|0.081|
|Eval_real_TCC26|✅ proved - complete|shostak|0.100|
|Eval_real_TCC27|✅ proved - complete|shostak|0.090|
|Eval_real_TCC28|✅ proved - complete|shostak|0.100|
|Eval_real_TCC29|✅ proved - complete|shostak|0.060|
|Eval_real_TCC30|✅ proved - complete|shostak|0.080|
|Eval_real_TCC31|✅ proved - complete|shostak|0.060|
|Eval_real_TCC32|✅ proved - complete|shostak|0.080|
|Eval_real_TCC33|✅ proved - complete|shostak|0.080|
|Eval_real_TCC34|✅ proved - complete|shostak|0.100|
|Eval_real_TCC35|✅ proved - complete|shostak|0.090|
|Eval_real_TCC36|✅ proved - complete|shostak|0.104|
|Eval_real_TCC37|✅ proved - complete|shostak|0.070|
|Eval_real_TCC38|✅ proved - complete|shostak|0.060|
|Eval_real_TCC39|✅ proved - complete|shostak|0.080|
|Eval_real_TCC40|✅ proved - complete|shostak|0.060|
|Eval_real_TCC41|✅ proved - complete|shostak|0.081|
|Eval_real_TCC42|✅ proved - complete|shostak|0.080|
|Eval_real_TCC43|✅ proved - complete|shostak|0.070|
|Eval_real_TCC44|✅ proved - complete|shostak|0.070|
|Eval_real_TCC45|✅ proved - complete|shostak|0.080|
|Eval_real_TCC46|✅ proved - complete|shostak|0.070|
|Eval_real_TCC47|✅ proved - complete|shostak|0.068|
|Eval_real_TCC48|✅ proved - complete|shostak|0.170|
|Eval_real_TCC49|✅ proved - complete|shostak|0.060|
|Eval_real_TCC50|✅ proved - complete|shostak|0.080|
|Eval_real_TCC51|✅ proved - complete|shostak|0.080|
|Eval_real_TCC52|✅ proved - complete|shostak|0.096|
|Eval_real_TCC53|✅ proved - complete|shostak|0.090|
|Eval_real_TCC54|✅ proved - complete|shostak|0.100|
|Eval_real_TCC55|✅ proved - complete|shostak|0.080|
|Eval_real_TCC56|✅ proved - complete|shostak|0.060|
|Eval_real_TCC57|✅ proved - complete|shostak|0.081|
|Eval_real_TCC58|✅ proved - complete|shostak|0.160|
|Eval_real_TCC59|✅ proved - complete|shostak|0.070|
|Eval_real_TCC60|✅ proved - complete|shostak|0.070|
|Eval_TCC1|✅ proved - complete|shostak|0.112|
|Eval_TCC2|✅ proved - complete|shostak|0.100|
|Eval_TCC3|✅ proved - complete|shostak|0.100|
|Eval_TCC4|✅ proved - complete|shostak|0.080|
|Eval_TCC5|✅ proved - complete|shostak|0.102|
|Eval_TCC6|✅ proved - complete|shostak|0.100|
|Eval_TCC7|✅ proved - complete|shostak|0.100|
|Eval_TCC8|✅ proved - complete|shostak|0.100|
|Eval_TCC9|✅ proved - complete|shostak|0.101|
|Eval_TCC10|✅ proved - complete|shostak|0.100|
|Eval_TCC11|✅ proved - complete|shostak|0.090|
|Eval_TCC12|✅ proved - complete|shostak|0.080|
|Eval_TCC13|✅ proved - complete|shostak|0.086|
|Eval_TCC14|✅ proved - complete|shostak|0.100|
|Eval_TCC15|✅ proved - complete|shostak|0.110|
|Eval_TCC16|✅ proved - complete|shostak|0.098|
|Eval_TCC17|✅ proved - complete|shostak|0.110|
|Eval_TCC18|✅ proved - complete|shostak|0.100|
|Eval_TCC19|✅ proved - complete|shostak|0.100|
|Eval_TCC20|✅ proved - complete|shostak|0.081|
|Eval_TCC21|✅ proved - complete|shostak|0.080|
|Eval_TCC22|✅ proved - complete|shostak|0.110|
|Eval_TCC23|✅ proved - complete|shostak|0.100|
|Eval_TCC24|✅ proved - complete|shostak|0.104|
|Eval_TCC25|✅ proved - complete|shostak|0.130|
|Eval_TCC26|✅ proved - complete|shostak|0.080|
|Eval_TCC27|✅ proved - complete|shostak|0.237|
|Eval_TCC28|✅ proved - complete|shostak|0.080|
|Eval_TCC29|✅ proved - complete|shostak|0.420|
|Eval_TCC30|✅ proved - complete|shostak|0.080|
|Eval_TCC31|✅ proved - complete|shostak|0.430|
|Eval_TCC32|✅ proved - complete|shostak|0.080|
|Eval_TCC33|✅ proved - complete|shostak|1.262|
|Eval_TCC34|✅ proved - complete|shostak|0.090|
|Eval_TCC35|✅ proved - complete|shostak|0.105|
|Eval_TCC36|✅ proved - complete|shostak|0.100|
|Eval_TCC37|✅ proved - complete|shostak|0.110|
|Eval_TCC38|✅ proved - complete|shostak|0.143|
|Eval_TCC39|✅ proved - incomplete|shostak|0.381|
|Eval_TCC40|✅ proved - complete|shostak|0.080|
|Eval_TCC41|✅ proved - complete|shostak|1.244|
|Eval_TCC42|✅ proved - complete|shostak|0.080|
|eval_lemma_aux|✅ proved - incomplete|shostak|0.000|
|eval_domain_inside_eval_real|✅ proved - incomplete|shostak|7.013|
|eval_lemma_TCC1|✅ proved - incomplete|shostak|0.030|
|eval_lemma|✅ proved - incomplete|shostak|0.070|

## `cauchy_numerical`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|numerical_soundness_TCC1|✅ proved - incomplete|shostak|0.054|
|numerical_soundness|✅ proved - incomplete|shostak|0.330|

## `strategies`
No formula declaration found.## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib//float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-pvsio-fix.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210219-extratregies.lisp`|
