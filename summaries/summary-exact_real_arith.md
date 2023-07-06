# Summary for `exact_real_arith`
Run started at 3:3:46 7/4/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **719**   | **719**    | **719**    | **0**  | **3:10.666 s**   |
|top|0|0|0|0|0.000|
|prelude_aux|36|36|36|0|4.776|
|prelude_A4|85|85|85|0|26.895|
|appendix|15|15|15|0|6.497|
|prelude_sqrt|35|35|35|0|4.628|
|cauchy|19|19|19|0|0.684|
|int|4|4|4|0|0.170|
|add|2|2|2|0|0.731|
|neg|5|5|5|0|0.440|
|sub|1|1|1|0|0.030|
|mul|22|22|22|0|11.220|
|inv|42|42|42|0|15.990|
|unique|12|12|12|0|2.345|
|div|1|1|1|0|0.110|
|rat|4|4|4|0|0.256|
|shift|5|5|5|0|1.416|
|min|2|2|2|0|1.202|
|max|2|2|2|0|0.892|
|sqrtx|11|11|11|0|2.510|
|bisection_nat_sqrt|15|15|15|0|2.526|
|power|59|59|59|0|23.500|
|sum|17|17|17|0|3.909|
|series|20|20|20|0|6.525|
|powerseries|9|9|9|0|0.372|
|atanx|29|29|29|0|10.226|
|asinx|6|6|6|0|1.632|
|acosx|1|1|1|0|0.119|
|sincosx|24|24|24|0|21.670|
|remx|4|4|4|0|0.525|
|trigx|15|15|15|0|0.547|
|log|36|36|36|0|6.982|
|exp|15|15|15|0|6.993|
|hyperbolicx|27|27|27|0|1.964|
|computable_rat|7|7|7|0|0.381|
|floor|19|19|19|0|5.111|
|modulo|3|3|3|0|0.597|
|abs|2|2|2|0|0.628|
|cauchy_expr_eval|106|106|106|0|15.302|
|cauchy_numerical|2|2|2|0|0.365|
|strategies|0|0|0|0|0.000|
## Detailed Summary 
## `top`
No formula declaration found.
## `prelude_aux`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|lt_times_lt_nn1|✅ proved - complete|shostak|0.258|
|lt_times_lt_np1|✅ proved - complete|shostak|0.166|
|both_sides_times_nonneg_le1|✅ proved - complete|shostak|0.070|
|both_sides_times_nonpos_le1|✅ proved - complete|shostak|0.057|
|abs_nonneg|✅ proved - complete|shostak|0.010|
|abs_nonpos|✅ proved - complete|shostak|0.010|
|odd_even|✅ proved - complete|shostak|0.160|
|odd_or_even|✅ proved - complete|shostak|0.010|
|expt_product_aux_TCC1|✅ proved - complete|shostak|0.010|
|expt_product_aux_TCC2|✅ proved - complete|shostak|0.010|
|expt_product_aux|✅ proved - complete|shostak|0.375|
|expt_product_TCC1|✅ proved - complete|shostak|0.010|
|expt_product_TCC2|✅ proved - complete|shostak|0.010|
|expt_product|✅ proved - complete|shostak|0.010|
|expt_division_aux_TCC1|✅ proved - complete|shostak|0.010|
|expt_division_aux|✅ proved - complete|shostak|0.020|
|expt_division_TCC1|✅ proved - complete|shostak|0.010|
|expt_division|✅ proved - complete|shostak|0.440|
|expt_minus1|✅ proved - complete|shostak|0.264|
|lt_equiv_not_le|✅ proved - complete|shostak|0.029|
|le_equiv_not_lt|✅ proved - complete|shostak|0.020|
|lt_equiv_le_plus_one|✅ proved - complete|shostak|0.050|
|lt_plus_one_equiv_le|✅ proved - complete|shostak|0.050|
|lt_le_transitivity|✅ proved - complete|shostak|0.020|
|le_lt_transitivity|✅ proved - complete|shostak|0.020|
|exp_of2_exists_aux_TCC1|✅ proved - complete|shostak|0.040|
|exp_of2_exists_aux|✅ proved - complete|shostak|1.227|
|exp_of2_exists_TCC1|✅ proved - complete|shostak|0.010|
|exp_of2_exists|✅ proved - complete|shostak|0.260|
|exp_of_exists2|✅ proved - complete|shostak|0.386|
|floor_sqrt_val|✅ proved - incomplete|shostak|0.180|
|ceiling_sqrt_0|✅ proved - incomplete|shostak|0.010|
|ceiling_sqrt_val|✅ proved - incomplete|shostak|0.189|
|log2_TCC1|✅ proved - incomplete|shostak|0.022|
|log2_2_expt_i|✅ proved - incomplete|shostak|0.300|
|log2_strict_increasing|✅ proved - incomplete|shostak|0.053|

## `prelude_A4`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|expt_neg_even_TCC1|✅ proved - complete|shostak|0.010|
|expt_neg_even_TCC2|✅ proved - complete|shostak|0.010|
|expt_neg_even|✅ proved - complete|shostak|0.160|
|expt_neg_odd_TCC1|✅ proved - complete|shostak|0.040|
|expt_neg_odd_TCC2|✅ proved - complete|shostak|0.040|
|expt_neg_odd|✅ proved - complete|shostak|0.216|
|expt_0pn|✅ proved - complete|shostak|0.030|
|expt_inverse_inv_TCC1|✅ proved - complete|shostak|0.010|
|expt_inverse_inv|✅ proved - complete|shostak|0.060|
|expt_product_n0i_TCC1|✅ proved - complete|shostak|0.010|
|expt_product_n0i_TCC2|✅ proved - complete|shostak|0.010|
|expt_product_n0i|✅ proved - complete|shostak|0.098|
|expt_division_TCC1|✅ proved - complete|shostak|0.010|
|expt_division_TCC2|✅ proved - complete|shostak|0.010|
|expt_division|✅ proved - complete|shostak|0.120|
|A4_0_TCC1|✅ proved - complete|shostak|0.080|
|A4_0|✅ proved - complete|shostak|0.182|
|A4_1_TCC1|✅ proved - complete|shostak|0.080|
|A4_1|✅ proved - complete|shostak|0.110|
|A4_2|✅ proved - complete|shostak|0.462|
|A4_3_n|✅ proved - complete|shostak|0.200|
|A4_3_0_TCC1|✅ proved - complete|shostak|0.074|
|A4_3_0|✅ proved - complete|shostak|0.170|
|A4_3_p_TCC1|✅ proved - complete|shostak|0.060|
|A4_3_p|✅ proved - complete|shostak|0.183|
|A4_4|✅ proved - complete|shostak|0.700|
|A4_5pp_TCC1|✅ proved - complete|shostak|0.090|
|A4_5pp|✅ proved - complete|shostak|1.333|
|A4_5nn_TCC1|✅ proved - complete|shostak|0.110|
|A4_5nn|✅ proved - complete|shostak|1.613|
|A4_5nn_general_TCC1|✅ proved - complete|shostak|0.050|
|A4_5nn_general|✅ proved - complete|shostak|0.334|
|A4_5_TCC1|✅ proved - complete|shostak|0.060|
|A4_5|✅ proved - complete|shostak|0.584|
|A4_6pp_TCC1|✅ proved - complete|shostak|0.030|
|A4_6pp|✅ proved - complete|shostak|1.492|
|A4_6pp_general_TCC1|✅ proved - complete|shostak|0.030|
|A4_6pp_general|✅ proved - complete|shostak|0.235|
|A4_6nn_TCC1|✅ proved - complete|shostak|0.020|
|A4_6nn|✅ proved - complete|shostak|1.281|
|A4_6nn_general_TCC1|✅ proved - complete|shostak|0.030|
|A4_6nn_general|✅ proved - complete|shostak|0.256|
|A4_sqrt_ineq1|✅ proved - incomplete|shostak|0.070|
|A4_sqrt_ineq2|✅ proved - incomplete|shostak|0.229|
|A4_sqrt_ineq3|✅ proved - incomplete|shostak|0.240|
|A4_logsize|✅ proved - complete|shostak|0.135|
|A4_lemma_ineq1|✅ proved - incomplete|shostak|0.000|
|A4_lemma_ineq2|✅ proved - complete|shostak|0.140|
|A4_lemma_large_UB_0_TCC1|✅ proved - incomplete|shostak|0.120|
|A4_lemma_large_UB_0|✅ proved - incomplete|shostak|1.171|
|A4_lemma_large_UB_TCC1|✅ proved - incomplete|shostak|0.159|
|A4_lemma_large_UB|✅ proved - incomplete|shostak|1.752|
|A4_lemma_large_LB_TCC1|✅ proved - incomplete|shostak|0.145|
|A4_lemma_large_LB|✅ proved - incomplete|shostak|1.579|
|A4_lemma_large_ge3|✅ proved - incomplete|shostak|0.173|
|A4_lemma_large_lt3_TCC1|✅ proved - incomplete|shostak|0.140|
|A4_lemma_large_lt3_TCC2|✅ proved - incomplete|shostak|0.202|
|A4_lemma_large_lt3|✅ proved - incomplete|shostak|0.954|
|A4_lemma_small_UB_TCC1|✅ proved - incomplete|shostak|0.120|
|A4_lemma_small_UB|✅ proved - incomplete|shostak|1.456|
|A4_lemma_small_LB_TCC1|✅ proved - incomplete|shostak|0.110|
|A4_lemma_small_LB|✅ proved - incomplete|shostak|1.049|
|A4_lemma_small_TCC1|✅ proved - incomplete|shostak|0.120|
|A4_lemma_small_TCC2|✅ proved - incomplete|shostak|0.190|
|A4_lemma_small|✅ proved - incomplete|shostak|0.472|
|A4_lemma_px_TCC1|✅ proved - complete|shostak|0.140|
|A4_lemma_px_TCC2|✅ proved - complete|shostak|0.150|
|A4_lemma_px|✅ proved - incomplete|shostak|0.000|
|A4_lemma_p|✅ proved - incomplete|shostak|0.280|
|A4_lemma_0_px_TCC1|✅ proved - complete|shostak|0.080|
|A4_lemma_0_px_TCC2|✅ proved - complete|shostak|0.080|
|A4_lemma_0_px|✅ proved - incomplete|shostak|0.382|
|A4_lemma_0_p|✅ proved - incomplete|shostak|0.651|
|A4_lemma_0_TCC1|✅ proved - complete|shostak|0.080|
|A4_lemma_0_TCC2|✅ proved - complete|shostak|0.080|
|A4_lemma_0|✅ proved - incomplete|shostak|1.094|
|A4_lemma_n_even_TCC1|✅ proved - complete|shostak|0.080|
|A4_lemma_n_even_TCC2|✅ proved - complete|shostak|0.083|
|A4_lemma_n_even|✅ proved - incomplete|shostak|0.581|
|A4_lemma_n_odd_TCC1|✅ proved - complete|shostak|0.110|
|A4_lemma_n_odd_TCC2|✅ proved - complete|shostak|0.110|
|A4_lemma_n_odd|✅ proved - incomplete|shostak|0.642|
|A4_lemma_n_TCC1|✅ proved - complete|shostak|0.081|
|A4_lemma_n_TCC2|✅ proved - complete|shostak|0.080|
|A4_lemma_n|✅ proved - incomplete|shostak|0.702|

## `appendix`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|lemma_A1|✅ proved - incomplete|shostak|0.140|
|lemma_A2|✅ proved - complete|shostak|0.559|
|lemma_A3|✅ proved - incomplete|shostak|0.126|
|lemma_A4_TCC1|✅ proved - incomplete|shostak|0.120|
|lemma_A4_TCC2|✅ proved - incomplete|shostak|0.110|
|lemma_A4_TCC3|✅ proved - incomplete|shostak|0.110|
|lemma_A4|✅ proved - incomplete|shostak|0.700|
|epsilon_log2_aux|✅ proved - complete|shostak|0.194|
|epsilon_log2|✅ proved - complete|shostak|0.110|
|floor_sqrt_aux_TCC1|✅ proved - complete|shostak|0.155|
|floor_sqrt_aux_TCC2|✅ proved - complete|shostak|0.220|
|floor_sqrt_def|✅ proved - incomplete|shostak|1.636|
|floor_log2_TCC1|✅ proved - complete|shostak|0.060|
|floor_log2_TCC2|✅ proved - complete|shostak|0.050|
|floor_log2_def|✅ proved - incomplete|shostak|2.207|

## `prelude_sqrt`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|square_le1|✅ proved - complete|shostak|0.180|
|square_le2|✅ proved - complete|shostak|0.093|
|square_le3|✅ proved - complete|shostak|0.070|
|square_eq1|✅ proved - complete|shostak|0.066|
|square_le4|✅ proved - complete|shostak|0.070|
|square_le5|✅ proved - complete|shostak|0.222|
|square_le6|✅ proved - complete|shostak|0.123|
|square_archimedean1|✅ proved - complete|shostak|0.174|
|square_archimedean2|✅ proved - complete|shostak|0.462|
|square_exist_lt1|✅ proved - complete|shostak|0.870|
|square_exist_lt2|✅ proved - complete|shostak|0.110|
|square_exist_lt3|✅ proved - complete|shostak|0.273|
|square_exist_gt3|✅ proved - complete|shostak|0.380|
|sqrt_set_nonempty|✅ proved - complete|shostak|0.020|
|sqrt_set_has_UB_TCC1|✅ proved - complete|shostak|0.030|
|sqrt_set_has_UB|✅ proved - complete|shostak|0.132|
|sqrt_set_LUB|✅ proved - complete|shostak|0.281|
|square_injective|✅ proved - complete|shostak|0.062|
|square_surjective|✅ proved - complete|shostak|0.130|
|square_bijective|✅ proved - complete|shostak|0.010|
|square_is|✅ proved - complete|shostak|0.010|
|sqrt_square1|✅ proved - complete|shostak|0.014|
|sqrt_square2|✅ proved - complete|shostak|0.020|
|square_times|✅ proved - complete|shostak|0.030|
|sqrt_times|✅ proved - complete|shostak|0.050|
|sqrt_zero|✅ proved - complete|shostak|0.051|
|sqrt_one|✅ proved - complete|shostak|0.070|
|both_sides_sqrt1|✅ proved - complete|shostak|0.090|
|both_sides_sqrt2|✅ proved - complete|shostak|0.073|
|both_sides_sqrt_lt1|✅ proved - complete|shostak|0.080|
|both_sides_sqrt_lt2|✅ proved - complete|shostak|0.090|
|both_sides_sqrt_lt3|✅ proved - complete|shostak|0.000|
|both_sides_sqrt_le1|✅ proved - complete|shostak|0.100|
|both_sides_sqrt_le2|✅ proved - complete|shostak|0.090|
|both_sides_sqrt_le3|✅ proved - complete|shostak|0.102|

## `cauchy`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_real_TCC1|✅ proved - complete|shostak|0.020|
|cauchy_nzreal_TCC1|✅ proved - complete|shostak|0.030|
|cauchy_nnreal_TCC1|✅ proved - complete|shostak|0.020|
|cauchy_npreal_TCC1|✅ proved - complete|shostak|0.020|
|cauchy_posreal_TCC1|✅ proved - complete|shostak|0.020|
|cauchy_negreal_TCC1|✅ proved - complete|shostak|0.040|
|cauchy_smallreal_TCC1|✅ proved - complete|shostak|0.020|
|subtype_TCC1|✅ proved - complete|shostak|0.020|
|subtype_TCC2|✅ proved - complete|shostak|0.010|
|subtype_TCC3|✅ proved - complete|shostak|0.010|
|subtype_TCC4|✅ proved - complete|shostak|0.010|
|subtype_TCC5|✅ proved - complete|shostak|0.013|
|subtype_TCC6|✅ proved - complete|shostak|0.010|
|subtype_TCC7|✅ proved - complete|shostak|0.020|
|subtype_TCC8|✅ proved - complete|shostak|0.010|
|cauchy_zero_TCC1|✅ proved - complete|shostak|0.020|
|unique_cauchy_zero|✅ proved - complete|shostak|0.310|
|unique_cauchy_zero2|✅ proved - complete|shostak|0.070|
|unique_cauchy_zero3|✅ proved - complete|shostak|0.011|

## `int`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_int_TCC1|✅ proved - complete|shostak|0.060|
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
|cauchy_neg_TCC1|✅ proved - complete|shostak|0.150|
|neg_lemma|✅ proved - complete|shostak|0.190|
|neg_cauchy_nzreal_is_cauchy_nzreal|✅ proved - complete|shostak|0.020|
|neg_cauchy_posreal_is_cauchy_negreal|✅ proved - complete|shostak|0.040|
|neg_cauchy_negreal_is_cauchy_posreal|✅ proved - complete|shostak|0.040|

## `sub`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sub_lemma|✅ proved - complete|shostak|0.030|

## `mul`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|D1|✅ proved - complete|shostak|0.050|
|D2|✅ proved - complete|shostak|0.052|
|D3|✅ proved - complete|shostak|0.060|
|negreal_times_posreal_is_negreal|✅ proved - complete|shostak|0.080|
|lt_times_lt_nonneg1|✅ proved - complete|shostak|0.131|
|lt_times_lt_nonneg2|✅ proved - complete|shostak|0.140|
|D_pp|✅ proved - complete|shostak|0.520|
|D_pn|✅ proved - complete|shostak|0.496|
|D_nn|✅ proved - complete|shostak|1.100|
|D_p0|✅ proved - complete|shostak|0.170|
|D_n0|✅ proved - complete|shostak|0.532|
|D|✅ proved - complete|shostak|0.683|
|mul_p1|✅ proved - incomplete|shostak|0.340|
|mul_p2|✅ proved - incomplete|shostak|1.120|
|mul_p3|✅ proved - incomplete|shostak|0.330|
|mul_p4|✅ proved - incomplete|shostak|0.482|
|mul_p5|✅ proved - incomplete|shostak|1.984|
|mul_p6|✅ proved - incomplete|shostak|0.765|
|cauchy_mul_type_TCC1|✅ proved - incomplete|shostak|0.181|
|cauchy_mul_type|✅ proved - incomplete|shostak|0.782|
|cauchy_mul_TCC1|✅ proved - incomplete|shostak|0.290|
|mul_lemma|✅ proved - incomplete|shostak|0.932|

## `inv`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|expt_x2_TCC1|✅ proved - complete|shostak|0.010|
|expt_x2|✅ proved - complete|shostak|0.010|
|expt_times2_TCC1|✅ proved - complete|shostak|0.010|
|expt_times2_TCC2|✅ proved - complete|shostak|0.010|
|expt_times2|✅ proved - complete|shostak|0.100|
|minimum_inv_exists|✅ proved - complete|shostak|0.625|
|minimum_inv_TCC1|✅ proved - complete|shostak|0.010|
|minimum_inv_prop0|✅ proved - complete|shostak|0.090|
|minimum_inv_prop1|✅ proved - complete|shostak|0.392|
|minimum_inv_prop2|✅ proved - complete|shostak|0.487|
|minimum_inv_aux_TCC1|✅ proved - complete|shostak|0.030|
|minimum_inv_aux_TCC2|✅ proved - complete|shostak|0.103|
|minimum_inv_aux_TCC3|✅ proved - complete|shostak|0.150|
|minimum_inv_impl_TCC1|✅ proved - complete|shostak|0.010|
|minimum_inv_impl_def|✅ proved - complete|shostak|0.339|
|inv_p0|✅ proved - complete|shostak|0.150|
|inv_p1|✅ proved - complete|shostak|0.453|
|inv_p2|✅ proved - complete|shostak|0.250|
|inv_p3|✅ proved - complete|shostak|0.679|
|inv_p4|✅ proved - complete|shostak|0.728|
|inv_p5|✅ proved - complete|shostak|0.666|
|inv_p6|✅ proved - complete|shostak|0.660|
|inv_p7_TCC1|✅ proved - complete|shostak|0.588|
|inv_p7|✅ proved - complete|shostak|0.990|
|inv_p8|✅ proved - complete|shostak|0.333|
|inv_p9|✅ proved - complete|shostak|0.943|
|inv_n5_TCC1|✅ proved - complete|shostak|0.300|
|inv_n5|✅ proved - complete|shostak|0.870|
|inv_n6_TCC1|✅ proved - complete|shostak|0.160|
|inv_n6|✅ proved - complete|shostak|0.818|
|inv_n7_TCC1|✅ proved - complete|shostak|0.320|
|inv_n7_TCC2|✅ proved - complete|shostak|0.190|
|inv_n7|✅ proved - complete|shostak|0.482|
|inv_n8|✅ proved - complete|shostak|0.494|
|inv_n9|✅ proved - complete|shostak|1.328|
|inv_p|✅ proved - complete|shostak|1.159|
|minimum_inv_prop3_TCC1|✅ proved - incomplete|shostak|0.265|
|minimum_inv_prop3|✅ proved - incomplete|shostak|0.393|
|cauchy_nz_inv_TCC1|✅ proved - incomplete|shostak|0.000|
|cauchy_nz_inv_TCC2|✅ proved - incomplete|shostak|0.182|
|inv_nz_lemma|✅ proved - incomplete|shostak|0.180|
|inv_lemma|✅ proved - incomplete|shostak|0.033|

## `unique`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|unique_cauchy|✅ proved - complete|shostak|0.180|
|cauchy_dich1|✅ proved - complete|shostak|0.032|
|cauchy_dich2|✅ proved - complete|shostak|0.020|
|cauchy_dich3|✅ proved - complete|shostak|0.020|
|cauchy_dich4|✅ proved - complete|shostak|0.030|
|cauchy_dich5|✅ proved - complete|shostak|0.024|
|cauchy_trich|✅ proved - complete|shostak|0.050|
|cauchy_pos_characteristic|✅ proved - complete|shostak|0.206|
|cauchy_neg_characteristic|✅ proved - complete|shostak|0.200|
|cauchy_pos_monotonic|✅ proved - complete|shostak|0.431|
|cauchy_monotonic|✅ proved - complete|shostak|0.710|
|cauchy_odd_extend|✅ proved - complete|shostak|0.442|

## `div`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|div_lemma|✅ proved - incomplete|shostak|0.110|

## `rat`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|denominators_TCC1|✅ proved - complete|shostak|0.024|
|numerator_TCC1|✅ proved - complete|shostak|0.140|
|cauchy_rat_TCC1|✅ proved - complete|shostak|0.020|
|rat_lemma|✅ proved - incomplete|shostak|0.072|

## `shift`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_div2n_TCC1|✅ proved - complete|shostak|0.030|
|cauchy_div2n_TCC2|✅ proved - complete|shostak|0.426|
|cauchy_mul2n_TCC1|✅ proved - complete|shostak|0.260|
|lemma_div2n|✅ proved - complete|shostak|0.450|
|lemma_mul2n|✅ proved - complete|shostak|0.250|

## `min`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_min_TCC1|✅ proved - complete|shostak|0.601|
|min_lemma|✅ proved - complete|shostak|0.601|

## `max`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_max_TCC1|✅ proved - complete|shostak|0.441|
|max_lemma|✅ proved - complete|shostak|0.451|

## `sqrtx`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|nnsqrt_TCC1|✅ proved - complete|shostak|0.010|
|sqrt_p1_TCC1|✅ proved - incomplete|shostak|0.010|
|sqrt_p1_TCC2|✅ proved - incomplete|shostak|0.020|
|sqrt_p1|✅ proved - incomplete|shostak|0.451|
|sqrt_p2_TCC1|✅ proved - incomplete|shostak|0.062|
|sqrt_p2|✅ proved - incomplete|shostak|0.150|
|sqrt_p3|✅ proved - complete|shostak|0.130|
|cauchy_nnsqrt_TCC1|✅ proved - complete|shostak|0.142|
|cauchy_nnsqrt_TCC2|✅ proved - incomplete|shostak|0.730|
|sqrt_nn_lemma|✅ proved - incomplete|shostak|0.791|
|sqrt_lemma|✅ proved - incomplete|shostak|0.014|

## `bisection_nat_sqrt`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|fs_lt_def|✅ proved - incomplete|shostak|0.150|
|fs_eq_def|✅ proved - incomplete|shostak|0.160|
|fs_gt_def|✅ proved - incomplete|shostak|0.150|
|fs_trichotomy|✅ proved - incomplete|shostak|0.163|
|fs_le_ge|✅ proved - incomplete|shostak|0.100|
|bisection_sqrt_aux_TCC1|✅ proved - incomplete|shostak|0.048|
|bisection_sqrt_aux_TCC2|✅ proved - incomplete|shostak|0.140|
|bisection_sqrt_aux_TCC3|✅ proved - incomplete|shostak|0.186|
|bisection_sqrt_aux_TCC4|✅ proved - incomplete|shostak|0.160|
|bisection_sqrt_aux_TCC5|✅ proved - incomplete|shostak|0.167|
|bisection_sqrt_aux_TCC6|✅ proved - incomplete|shostak|0.150|
|bisection_sqrt_aux_prop|✅ proved - incomplete|shostak|0.651|
|bisection_sqrt_TCC1|✅ proved - incomplete|shostak|0.020|
|bisection_sqrt_TCC2|✅ proved - incomplete|shostak|0.090|
|bisection_sqrt_def|✅ proved - incomplete|shostak|0.191|

## `power`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|abs_ge0|✅ proved - complete|shostak|0.010|
|abs_neg|✅ proved - complete|shostak|0.020|
|abs_interval|✅ proved - complete|shostak|0.080|
|abs_interval1|✅ proved - complete|shostak|0.040|
|abs_interval2|✅ proved - complete|shostak|0.031|
|triangle_open|✅ proved - complete|shostak|0.130|
|abs_error|✅ proved - complete|shostak|0.232|
|lemma_A2_generalized|✅ proved - complete|shostak|0.120|
|cauchy_power_lt1_n_odd_TCC1|✅ proved - incomplete|shostak|0.140|
|cauchy_power_lt1_n_odd_TCC2|✅ proved - incomplete|shostak|0.170|
|cauchy_power_lt1_n_odd|✅ proved - incomplete|shostak|1.335|
|cauchy_power_lt1_n_even_TCC1|✅ proved - incomplete|shostak|0.110|
|cauchy_power_lt1_n_even_TCC2|✅ proved - incomplete|shostak|0.140|
|cauchy_power_lt1_n_even|✅ proved - incomplete|shostak|0.750|
|cauchy_power_lt1_snz_odd_TCC1|✅ proved - incomplete|shostak|0.140|
|cauchy_power_lt1_snz_odd_TCC2|✅ proved - incomplete|shostak|0.161|
|cauchy_power_lt1_snz_odd|✅ proved - incomplete|shostak|1.123|
|cauchy_power_lt1_snz_even_TCC1|✅ proved - incomplete|shostak|0.110|
|cauchy_power_lt1_snz_even_TCC2|✅ proved - incomplete|shostak|0.140|
|cauchy_power_lt1_snz_even|✅ proved - incomplete|shostak|0.742|
|cauchy_power_lt1_sn_odd_TCC1|✅ proved - incomplete|shostak|0.130|
|cauchy_power_lt1_sn_odd_TCC2|✅ proved - incomplete|shostak|0.160|
|cauchy_power_lt1_sn_odd|✅ proved - incomplete|shostak|2.072|
|cauchy_power_lt1_sn_even_TCC1|✅ proved - incomplete|shostak|0.110|
|cauchy_power_lt1_sn_even_TCC2|✅ proved - incomplete|shostak|0.140|
|cauchy_power_lt1_sn_even|✅ proved - incomplete|shostak|2.008|
|cauchy_power_lt1_z_TCC1|✅ proved - incomplete|shostak|0.110|
|cauchy_power_lt1_z_TCC2|✅ proved - incomplete|shostak|0.140|
|cauchy_power_lt1_z|✅ proved - incomplete|shostak|0.000|
|cauchy_power_lt1_sp_odd_TCC1|✅ proved - incomplete|shostak|0.141|
|cauchy_power_lt1_sp_odd|✅ proved - incomplete|shostak|1.382|
|cauchy_power_lt1_sp_even_TCC1|✅ proved - incomplete|shostak|0.106|
|cauchy_power_lt1_sp_even|✅ proved - incomplete|shostak|2.148|
|cauchy_power_lt1_pz_TCC1|✅ proved - incomplete|shostak|0.104|
|cauchy_power_lt1_pz|✅ proved - incomplete|shostak|0.794|
|cauchy_power_lt1_p_TCC1|✅ proved - incomplete|shostak|0.110|
|cauchy_power_lt1_p|✅ proved - incomplete|shostak|0.872|
|cauchy_power_lt1_main_generalized_TCC1|✅ proved - incomplete|shostak|0.120|
|cauchy_power_lt1_main_generalized_TCC2|✅ proved - incomplete|shostak|0.150|
|cauchy_power_lt1_main_generalized|✅ proved - incomplete|shostak|0.613|
|cauchy_power_lt1_main_TCC1|✅ proved - incomplete|shostak|0.121|
|cauchy_power_lt1_main_TCC2|✅ proved - incomplete|shostak|0.160|
|cauchy_power_lt1_main|✅ proved - incomplete|shostak|0.210|
|cauchy_power_lt1_isreal_TCC1|✅ proved - incomplete|shostak|0.229|
|cauchy_power_lt1_isreal_TCC2|✅ proved - incomplete|shostak|0.040|
|cauchy_power_lt1_isreal_TCC3|✅ proved - incomplete|shostak|0.120|
|cauchy_power_lt1_isreal|✅ proved - incomplete|shostak|0.503|
|cauchy_power_lt1_TCC1|✅ proved - incomplete|shostak|0.013|
|power_lemma_lt1_TCC1|✅ proved - complete|shostak|0.020|
|power_lemma_lt1|✅ proved - incomplete|shostak|0.562|
|cauchy_power_div1|✅ proved - incomplete|shostak|0.292|
|cauchy_power_main_TCC1|✅ proved - incomplete|shostak|0.170|
|cauchy_power_main_TCC2|✅ proved - incomplete|shostak|0.190|
|cauchy_power_main|✅ proved - incomplete|shostak|1.205|
|cauchy_power_isreal_TCC1|✅ proved - incomplete|shostak|0.458|
|cauchy_power_isreal|✅ proved - incomplete|shostak|1.030|
|cauchy_power_TCC1|✅ proved - incomplete|shostak|0.000|
|power_lemma_TCC1|✅ proved - complete|shostak|0.020|
|power_lemma|✅ proved - incomplete|shostak|1.023|

## `sum`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_sigma_TCC1|✅ proved - complete|shostak|0.030|
|sum_lemma2_TCC1|✅ proved - complete|shostak|0.020|
|sum_lemma2_TCC2|✅ proved - complete|shostak|0.020|
|sum_lemma2|✅ proved - incomplete|shostak|1.034|
|cauchy_sum_aux_TCC1|✅ proved - complete|shostak|0.020|
|cauchy_sum_aux_TCC2|✅ proved - complete|shostak|0.010|
|sum_lemma3_TCC1|✅ proved - complete|shostak|0.010|
|sum_lemma3_TCC2|✅ proved - complete|shostak|0.010|
|sum_lemma3|✅ proved - incomplete|shostak|0.134|
|sum_lemma4_TCC1|✅ proved - incomplete|shostak|0.200|
|sum_lemma4|✅ proved - incomplete|shostak|0.732|
|sum_lemma5|✅ proved - incomplete|shostak|1.098|
|cauchys_real_TCC1|✅ proved - complete|shostak|0.010|
|cauchys_real_TCC2|✅ proved - complete|shostak|0.020|
|cauchy_sum_TCC1|✅ proved - incomplete|shostak|0.292|
|sum_lemma_TCC1|✅ proved - complete|shostak|0.020|
|sum_lemma|✅ proved - incomplete|shostak|0.249|

## `series`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sum_TCC1|✅ proved - complete|shostak|0.020|
|sum_TCC2|✅ proved - complete|shostak|0.010|
|sum_lemma1|✅ proved - complete|shostak|0.142|
|geometric_series_TCC1|✅ proved - complete|shostak|0.010|
|geometric_series_aux1_TCC1|✅ proved - complete|shostak|0.010|
|geometric_series_aux1_TCC2|✅ proved - complete|shostak|0.020|
|geometric_series_aux1|✅ proved - complete|shostak|0.466|
|geometric_series_aux_odd_TCC1|✅ proved - complete|shostak|0.130|
|geometric_series_aux_odd|✅ proved - complete|shostak|0.887|
|geometric_series_aux_even_TCC1|✅ proved - complete|shostak|0.070|
|geometric_series_aux_even_TCC2|✅ proved - complete|shostak|0.010|
|geometric_series_aux_even|✅ proved - complete|shostak|1.164|
|geometric_series_approx_set_contains1|✅ proved - complete|shostak|0.020|
|geometric_series_approx_set_nonempty|✅ proved - complete|shostak|0.020|
|geometric_series_approx_set_pos_upper_bound_TCC1|✅ proved - complete|shostak|0.030|
|geometric_series_approx_set_pos_upper_bound_TCC2|✅ proved - complete|shostak|0.010|
|geometric_series_approx_set_pos_upper_bound|✅ proved - complete|shostak|0.381|
|geometric_series_approx_set_pos_least_upper_bound|✅ proved - incomplete|shostak|3.004|
|geometric_series_pos_limit_TCC1|✅ proved - complete|shostak|0.040|
|geometric_series_pos_limit|✅ proved - incomplete|shostak|0.081|

## `powerseries`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|powerseries_TCC1|✅ proved - complete|shostak|0.010|
|powerseries_TCC2|✅ proved - complete|shostak|0.010|
|powerseries_TCC3|✅ proved - complete|shostak|0.010|
|cauchy_powerseries_TCC1|✅ proved - complete|shostak|0.020|
|cauchy_powerseries_TCC2|✅ proved - incomplete|shostak|0.119|
|max_prec_TCC1|✅ proved - complete|shostak|0.020|
|max_prec_TCC2|✅ proved - complete|shostak|0.010|
|powerseries_lemma_TCC1|✅ proved - complete|shostak|0.010|
|powerseries_lemma|✅ proved - incomplete|shostak|0.163|

## `atanx`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_ssmallreal_TCC1|✅ proved - complete|shostak|0.050|
|subtype_TCC1|✅ proved - complete|shostak|0.030|
|cauchy_vsmallreal_TCC1|✅ proved - complete|shostak|0.030|
|subtype_TCC2|✅ proved - complete|shostak|0.010|
|cauchy_atan_drx_series_TCC1|✅ proved - complete|shostak|0.165|
|cauchy_atan_drx_series_TCC2|✅ proved - complete|shostak|0.160|
|atan_series_lemma|✅ proved - incomplete|shostak|0.000|
|cauchy_atan_drxx_TCC1|✅ proved - incomplete|shostak|0.020|
|cauchy_atan_drxx_prop_TCC1|✅ proved - complete|shostak|0.020|
|cauchy_atan_drxx_prop_TCC2|✅ proved - incomplete|shostak|0.020|
|cauchy_atan_drxx_prop|✅ proved - incomplete|shostak|3.377|
|cauchy_atan_dr_TCC1|✅ proved - incomplete|shostak|0.195|
|cauchy_atan_dr_TCC2|✅ proved - incomplete|shostak|0.258|
|atan_dr_lemma|✅ proved - incomplete|shostak|0.492|
|cauchy_pi_TCC1|✅ proved - complete|shostak|0.070|
|cauchy_pi_TCC2|✅ proved - incomplete|shostak|0.090|
|cauchy_pi_TCC3|✅ proved - complete|shostak|0.092|
|cauchy_pi_TCC4|✅ proved - incomplete|shostak|0.090|
|pi_lemma|✅ proved - incomplete|shostak|0.405|
|cauchy_atan_TCC1|✅ proved - incomplete|shostak|0.240|
|cauchy_atan_TCC2|✅ proved - incomplete|shostak|0.392|
|cauchy_atan_TCC3|✅ proved - incomplete|shostak|0.273|
|cauchy_atan_TCC4|✅ proved - incomplete|shostak|0.397|
|cauchy_atan_TCC5|✅ proved - incomplete|shostak|0.270|
|cauchy_atan_TCC6|✅ proved - incomplete|shostak|0.270|
|cauchy_atan_TCC7|✅ proved - incomplete|shostak|0.402|
|cauchy_atan_TCC8|✅ proved - incomplete|shostak|0.240|
|cauchy_atan_TCC9|✅ proved - incomplete|shostak|0.301|
|atan_lemma|✅ proved - incomplete|shostak|1.867|

## `asinx`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_real_abs_le1_TCC1|✅ proved - complete|shostak|0.020|
|subtype_TCC1|✅ proved - complete|shostak|0.020|
|cauchy_asin_TCC1|✅ proved - incomplete|shostak|0.136|
|cauchy_asin_TCC2|✅ proved - incomplete|shostak|0.277|
|cauchy_asin_TCC3|✅ proved - incomplete|shostak|0.149|
|asin_lemma|✅ proved - incomplete|shostak|1.030|

## `acosx`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|acos_lemma|✅ proved - incomplete|shostak|0.119|

## `sincosx`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|real_3pi16_TCC1|✅ proved - incomplete|shostak|0.180|
|cauchy_real_3pi16_TCC1|✅ proved - incomplete|shostak|0.210|
|cauchy_nnsreal_TCC1|✅ proved - complete|shostak|0.020|
|subtype_TCC1|✅ proved - complete|shostak|0.010|
|subtype_TCC2|✅ proved - complete|shostak|0.026|
|subtype_TCC3|✅ proved - incomplete|shostak|0.110|
|cauchy_sin_series_TCC1|✅ proved - incomplete|shostak|0.110|
|cauchy_cos_series_TCC1|✅ proved - incomplete|shostak|0.060|
|sin_series_lemma|✅ proved - incomplete|shostak|0.257|
|cos_series_lemma|✅ proved - incomplete|shostak|0.210|
|cauchy_sin_drx_TCC1|✅ proved - incomplete|shostak|0.010|
|cauchy_sin_drx_TCC2|✅ proved - incomplete|shostak|0.000|
|cauchy_cos_drx_TCC1|✅ proved - incomplete|shostak|0.010|
|cauchy_cos_drx_TCC2|✅ proved - incomplete|shostak|3.404|
|sin_drx_lemma_TCC1|✅ proved - incomplete|shostak|0.050|
|sin_drx_lemma|✅ proved - incomplete|shostak|3.200|
|cauchy_sin_dr_TCC1|✅ proved - incomplete|shostak|0.345|
|sin_dr_lemma|✅ proved - incomplete|shostak|0.571|
|cos_dr_lemma|✅ proved - incomplete|shostak|2.725|
|cauchy_sin_TCC1|✅ proved - incomplete|shostak|0.070|
|cauchy_sin_TCC2|✅ proved - incomplete|shostak|0.123|
|cauchy_sin_TCC3|✅ proved - incomplete|shostak|0.815|
|sin_lemma|✅ proved - incomplete|shostak|4.940|
|cos_lemma|✅ proved - incomplete|shostak|4.214|

## `remx`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|modx_TCC1|✅ proved - complete|shostak|0.140|
|modx_def|✅ proved - complete|shostak|0.130|
|remx_TCC1|✅ proved - complete|shostak|0.075|
|remx_def|✅ proved - complete|shostak|0.180|

## `trigx`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sin_nz_TCC1|✅ proved - incomplete|shostak|0.020|
|cos_nz_TCC1|✅ proved - incomplete|shostak|0.010|
|cauchy_sin_nz_TCC1|✅ proved - incomplete|shostak|0.094|
|cauchy_cos_nz_TCC1|✅ proved - incomplete|shostak|0.070|
|subtype_TCC1|✅ proved - incomplete|shostak|0.020|
|subtype_TCC2|✅ proved - incomplete|shostak|0.010|
|cauchy_sec_TCC1|✅ proved - incomplete|shostak|0.000|
|cauchy_cosec_TCC1|✅ proved - incomplete|shostak|0.030|
|sec_TCC1|✅ proved - incomplete|shostak|0.020|
|cosec_TCC1|✅ proved - incomplete|shostak|0.010|
|sec_lemma|✅ proved - incomplete|shostak|0.070|
|cosec_lemma|✅ proved - incomplete|shostak|0.060|
|tan_lemma_TCC1|✅ proved - incomplete|shostak|0.013|
|tan_lemma|✅ proved - incomplete|shostak|0.060|
|cot_lemma|✅ proved - incomplete|shostak|0.060|

## `log`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_ln_small_TCC1|✅ proved - complete|shostak|0.032|
|subtype_TCC1|✅ proved - complete|shostak|0.030|
|cauchy_ln_med_TCC1|✅ proved - complete|shostak|0.010|
|subtype_TCC2|✅ proved - complete|shostak|0.020|
|cauchy_gt_quarter_TCC1|✅ proved - complete|shostak|0.020|
|subtype_TCC3|✅ proved - complete|shostak|0.010|
|cauchy_ln_series_TCC1|✅ proved - complete|shostak|0.010|
|cauchy_ln_series_TCC2|✅ proved - complete|shostak|0.020|
|ln_series_lemma_TCC1|✅ proved - complete|shostak|0.020|
|ln_series_lemma|✅ proved - incomplete|shostak|0.413|
|ln_estimate_lemma_TCC1|✅ proved - incomplete|shostak|0.050|
|ln_estimate_lemma|✅ proved - incomplete|shostak|0.360|
|cauchy_ln_drx_TCC1|✅ proved - incomplete|shostak|0.030|
|ln_drx_lemma_TCC1|✅ proved - complete|shostak|0.030|
|ln_drx_lemma|✅ proved - incomplete|shostak|1.224|
|cauchy_ln_drx_TCC2|✅ proved - incomplete|shostak|0.080|
|cauchy_ln_half_TCC1|✅ proved - complete|shostak|0.110|
|cauchy_ln_half_TCC2|✅ proved - incomplete|shostak|0.112|
|cauchy_ln_half_lemma|✅ proved - incomplete|shostak|0.101|
|cauchy_ln2_lemma|✅ proved - incomplete|shostak|0.080|
|cauchy_ln_sqrt2_TCC1|✅ proved - incomplete|shostak|0.060|
|cauchy_ln_sqrt2_lemma|✅ proved - incomplete|shostak|0.119|
|cauchy_ln_dr_TCC1|✅ proved - complete|shostak|0.220|
|cauchy_ln_dr_TCC2|✅ proved - incomplete|shostak|0.150|
|ln_dr_lemma_TCC1|✅ proved - complete|shostak|0.020|
|ln_dr_lemma|✅ proved - incomplete|shostak|0.381|
|cauchy_lnx_TCC1|✅ proved - complete|shostak|0.130|
|cauchy_lnx_TCC2|✅ proved - complete|shostak|0.030|
|cauchy_lnx_TCC3|✅ proved - incomplete|shostak|0.253|
|cauchy_lnx_TCC4|✅ proved - incomplete|shostak|0.994|
|ln_lemma_x_TCC1|✅ proved - complete|shostak|0.010|
|ln_lemma_x|✅ proved - incomplete|shostak|1.067|
|cauchy_lnx_TCC5|✅ proved - incomplete|shostak|0.020|
|cauchy_ln_TCC1|✅ proved - incomplete|shostak|0.272|
|cauchy_ln_TCC2|✅ proved - complete|shostak|0.150|
|ln_lemma|✅ proved - incomplete|shostak|0.344|

## `exp`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_exp_series_TCC1|✅ proved - incomplete|shostak|0.020|
|cauchy_exp_series_TCC2|✅ proved - incomplete|shostak|0.070|
|exp_series_lemma|✅ proved - incomplete|shostak|0.087|
|exp_estimate_lemma_TCC1|✅ proved - incomplete|shostak|0.010|
|exp_estimate_lemma|✅ proved - incomplete|shostak|0.202|
|cauchy_exp_dr_TCC1|✅ proved - incomplete|shostak|0.010|
|exp_dr_lemma|✅ proved - incomplete|shostak|2.974|
|cauchy_exp_dr_TCC2|✅ proved - incomplete|shostak|0.030|
|cauchy_exp_TCC1|✅ proved - incomplete|shostak|0.710|
|cauchy_exp_TCC2|✅ proved - incomplete|shostak|0.020|
|cauchy_exp_TCC3|✅ proved - incomplete|shostak|0.806|
|cauchy_exp_TCC4|✅ proved - incomplete|shostak|0.020|
|cauchy_exp_TCC5|✅ proved - incomplete|shostak|0.761|
|exp_lemma|✅ proved - incomplete|shostak|1.251|
|cauchy_exp_is_posreal|✅ proved - incomplete|shostak|0.022|

## `hyperbolicx`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sinh_lemma|✅ proved - incomplete|shostak|0.110|
|cosh_lemma|✅ proved - incomplete|shostak|0.155|
|cauchy_sinh_type|✅ proved - incomplete|shostak|0.020|
|cauchy_cosh_type|✅ proved - incomplete|shostak|0.020|
|cauchy_coth_TCC1|✅ proved - incomplete|shostak|0.046|
|tanh_lemma|✅ proved - incomplete|shostak|0.040|
|sech_lemma|✅ proved - incomplete|shostak|0.000|
|coth_lemma|✅ proved - incomplete|shostak|0.160|
|csch_lemma|✅ proved - incomplete|shostak|0.062|
|cauchy_tanh_type|✅ proved - incomplete|shostak|0.020|
|cauchy_coth_type|✅ proved - incomplete|shostak|0.040|
|cauchy_csch_type|✅ proved - incomplete|shostak|0.070|
|cauchy_sech_type|✅ proved - incomplete|shostak|0.021|
|cauchy_ge1_TCC1|✅ proved - complete|shostak|0.020|
|subtype_TCC1|✅ proved - complete|shostak|0.020|
|cauchy_asinh_TCC1|✅ proved - incomplete|shostak|0.070|
|cauchy_asinh_TCC2|✅ proved - incomplete|shostak|0.172|
|cauchy_acosh_TCC1|✅ proved - incomplete|shostak|0.061|
|cauchy_acosh_TCC2|✅ proved - incomplete|shostak|0.140|
|cauchy_atanh_TCC1|✅ proved - complete|shostak|0.061|
|cauchy_atanh_TCC2|✅ proved - incomplete|shostak|0.132|
|asinh_lemma|✅ proved - incomplete|shostak|0.171|
|acosh_lemma|✅ proved - incomplete|shostak|0.140|
|atanh_lemma|✅ proved - incomplete|shostak|0.161|
|cauchy_asinh_type|✅ proved - incomplete|shostak|0.022|
|cauchy_acosh_type|✅ proved - incomplete|shostak|0.010|
|cauchy_atanh_type|✅ proved - incomplete|shostak|0.020|

## `computable_rat`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_rat_TCC1|✅ proved - complete|shostak|0.050|
|cauchy_rat_TCC2|✅ proved - incomplete|shostak|0.030|
|cauchy_rat_TCC3|✅ proved - complete|shostak|0.010|
|cauchy_rat_TCC4|✅ proved - incomplete|shostak|0.020|
|negative_numerator_TCC1|✅ proved - complete|shostak|0.020|
|negative_numerator|✅ proved - incomplete|shostak|0.081|
|rat_lemma|✅ proved - incomplete|shostak|0.170|

## `floor`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_noninteger_TCC1|✅ proved - complete|shostak|0.060|
|cauchy_noninteger_TCC2|✅ proved - complete|shostak|0.239|
|subtype_TCC1|✅ proved - complete|shostak|0.220|
|nonint_is_not_int|✅ proved - complete|shostak|0.130|
|precisions_TCC1|✅ proved - complete|shostak|0.080|
|divides_floor|✅ proved - complete|shostak|0.109|
|cauchy_floor_aux_TCC1|✅ proved - complete|shostak|0.020|
|cauchy_floor_aux_TCC2|✅ proved - complete|shostak|0.200|
|cauchy_floor_aux_TCC3|✅ proved - complete|shostak|0.030|
|cauchy_floor_aux_TCC4|✅ proved - complete|shostak|0.130|
|integer_lt_plus_1|✅ proved - complete|shostak|0.040|
|real_bound_int_above|✅ proved - complete|shostak|0.050|
|real_bound_int_below|✅ proved - complete|shostak|0.030|
|expt_inv_lt_1|✅ proved - complete|shostak|0.120|
|floor_aux_lem|✅ proved - complete|shostak|2.758|
|floor_aux_lem2_TCC1|✅ proved - complete|shostak|0.020|
|floor_aux_lem2|✅ proved - complete|shostak|0.815|
|cauchy_floor_TCC1|✅ proved - complete|shostak|0.030|
|floor_lemma|✅ proved - complete|shostak|0.030|

## `modulo`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_mod_TCC1|✅ proved - incomplete|shostak|0.497|
|mod_lemma_TCC1|✅ proved - complete|shostak|0.020|
|mod_lemma|✅ proved - incomplete|shostak|0.080|

## `abs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cauchy_abs_TCC1|✅ proved - complete|shostak|0.286|
|abs_lemma|✅ proved - complete|shostak|0.342|

## `cauchy_expr_eval`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Eval_real_TCC1|✅ proved - complete|shostak|0.065|
|Eval_real_TCC2|✅ proved - complete|shostak|0.080|
|Eval_real_TCC3|✅ proved - complete|shostak|0.100|
|Eval_real_TCC4|✅ proved - complete|shostak|0.088|
|Eval_real_TCC5|✅ proved - complete|shostak|0.100|
|Eval_real_TCC6|✅ proved - complete|shostak|0.060|
|Eval_real_TCC7|✅ proved - complete|shostak|0.070|
|Eval_real_TCC8|✅ proved - complete|shostak|0.080|
|Eval_real_TCC9|✅ proved - complete|shostak|0.088|
|Eval_real_TCC10|✅ proved - complete|shostak|0.090|
|Eval_real_TCC11|✅ proved - complete|shostak|0.090|
|Eval_real_TCC12|✅ proved - complete|shostak|0.080|
|Eval_real_TCC13|✅ proved - complete|shostak|0.087|
|Eval_real_TCC14|✅ proved - complete|shostak|0.090|
|Eval_real_TCC15|✅ proved - complete|shostak|0.090|
|Eval_real_TCC16|✅ proved - complete|shostak|0.070|
|Eval_real_TCC17|✅ proved - complete|shostak|0.079|
|Eval_real_TCC18|✅ proved - complete|shostak|0.030|
|Eval_real_TCC19|✅ proved - complete|shostak|0.060|
|Eval_real_TCC20|✅ proved - complete|shostak|0.070|
|Eval_real_TCC21|✅ proved - complete|shostak|0.080|
|Eval_real_TCC22|✅ proved - complete|shostak|0.089|
|Eval_real_TCC23|✅ proved - complete|shostak|0.100|
|Eval_real_TCC24|✅ proved - complete|shostak|0.090|
|Eval_real_TCC25|✅ proved - complete|shostak|0.080|
|Eval_real_TCC26|✅ proved - complete|shostak|0.091|
|Eval_real_TCC27|✅ proved - complete|shostak|0.090|
|Eval_real_TCC28|✅ proved - complete|shostak|0.090|
|Eval_real_TCC29|✅ proved - complete|shostak|0.070|
|Eval_real_TCC30|✅ proved - complete|shostak|0.070|
|Eval_real_TCC31|✅ proved - complete|shostak|0.065|
|Eval_real_TCC32|✅ proved - complete|shostak|0.070|
|Eval_real_TCC33|✅ proved - complete|shostak|0.070|
|Eval_real_TCC34|✅ proved - complete|shostak|0.090|
|Eval_real_TCC35|✅ proved - complete|shostak|0.085|
|Eval_real_TCC36|✅ proved - complete|shostak|0.100|
|Eval_real_TCC37|✅ proved - complete|shostak|0.070|
|Eval_real_TCC38|✅ proved - complete|shostak|0.070|
|Eval_real_TCC39|✅ proved - complete|shostak|0.070|
|Eval_real_TCC40|✅ proved - complete|shostak|0.062|
|Eval_real_TCC41|✅ proved - complete|shostak|0.080|
|Eval_real_TCC42|✅ proved - complete|shostak|0.070|
|Eval_real_TCC43|✅ proved - complete|shostak|0.070|
|Eval_real_TCC44|✅ proved - complete|shostak|0.070|
|Eval_real_TCC45|✅ proved - complete|shostak|0.084|
|Eval_real_TCC46|✅ proved - complete|shostak|0.060|
|Eval_real_TCC47|✅ proved - complete|shostak|0.070|
|Eval_real_TCC48|✅ proved - complete|shostak|0.160|
|Eval_real_TCC49|✅ proved - complete|shostak|0.070|
|Eval_real_TCC50|✅ proved - complete|shostak|0.077|
|Eval_real_TCC51|✅ proved - complete|shostak|0.070|
|Eval_real_TCC52|✅ proved - complete|shostak|0.090|
|Eval_real_TCC53|✅ proved - complete|shostak|0.090|
|Eval_real_TCC54|✅ proved - complete|shostak|0.101|
|Eval_real_TCC55|✅ proved - complete|shostak|0.070|
|Eval_real_TCC56|✅ proved - complete|shostak|0.070|
|Eval_real_TCC57|✅ proved - complete|shostak|0.070|
|Eval_real_TCC58|✅ proved - complete|shostak|0.156|
|Eval_real_TCC59|✅ proved - complete|shostak|0.070|
|Eval_real_TCC60|✅ proved - complete|shostak|0.070|
|Eval_TCC1|✅ proved - complete|shostak|0.100|
|Eval_TCC2|✅ proved - complete|shostak|0.093|
|Eval_TCC3|✅ proved - complete|shostak|0.100|
|Eval_TCC4|✅ proved - complete|shostak|0.090|
|Eval_TCC5|✅ proved - complete|shostak|0.092|
|Eval_TCC6|✅ proved - complete|shostak|0.090|
|Eval_TCC7|✅ proved - complete|shostak|0.090|
|Eval_TCC8|✅ proved - complete|shostak|0.093|
|Eval_TCC9|✅ proved - complete|shostak|0.100|
|Eval_TCC10|✅ proved - complete|shostak|0.100|
|Eval_TCC11|✅ proved - complete|shostak|0.087|
|Eval_TCC12|✅ proved - complete|shostak|0.080|
|Eval_TCC13|✅ proved - complete|shostak|0.080|
|Eval_TCC14|✅ proved - complete|shostak|0.100|
|Eval_TCC15|✅ proved - complete|shostak|0.098|
|Eval_TCC16|✅ proved - complete|shostak|0.100|
|Eval_TCC17|✅ proved - complete|shostak|0.110|
|Eval_TCC18|✅ proved - complete|shostak|0.092|
|Eval_TCC19|✅ proved - complete|shostak|0.090|
|Eval_TCC20|✅ proved - complete|shostak|0.080|
|Eval_TCC21|✅ proved - complete|shostak|0.080|
|Eval_TCC22|✅ proved - complete|shostak|0.106|
|Eval_TCC23|✅ proved - complete|shostak|0.100|
|Eval_TCC24|✅ proved - complete|shostak|0.100|
|Eval_TCC25|✅ proved - complete|shostak|0.127|
|Eval_TCC26|✅ proved - complete|shostak|0.080|
|Eval_TCC27|✅ proved - complete|shostak|0.231|
|Eval_TCC28|✅ proved - complete|shostak|0.080|
|Eval_TCC29|✅ proved - complete|shostak|0.394|
|Eval_TCC30|✅ proved - complete|shostak|0.080|
|Eval_TCC31|✅ proved - complete|shostak|0.399|
|Eval_TCC32|✅ proved - complete|shostak|0.080|
|Eval_TCC33|✅ proved - complete|shostak|1.194|
|Eval_TCC34|✅ proved - complete|shostak|0.084|
|Eval_TCC35|✅ proved - complete|shostak|0.100|
|Eval_TCC36|✅ proved - complete|shostak|0.090|
|Eval_TCC37|✅ proved - complete|shostak|0.103|
|Eval_TCC38|✅ proved - complete|shostak|0.140|
|Eval_TCC39|✅ proved - incomplete|shostak|0.352|
|Eval_TCC40|✅ proved - complete|shostak|0.080|
|Eval_TCC41|✅ proved - complete|shostak|0.000|
|Eval_TCC42|✅ proved - complete|shostak|0.080|
|eval_lemma_aux|✅ proved - incomplete|shostak|4.411|
|eval_domain_inside_eval_real|✅ proved - incomplete|shostak|0.000|
|eval_lemma_TCC1|✅ proved - incomplete|shostak|0.039|
|eval_lemma|✅ proved - incomplete|shostak|0.070|

## `cauchy_numerical`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|numerical_soundness_TCC1|✅ proved - incomplete|shostak|0.045|
|numerical_soundness|✅ proved - incomplete|shostak|0.320|

## `strategies`
No formula declaration found.## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib//float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-pvsio-fix.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210219-extratregies.lisp`|
