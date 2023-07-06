# Summary for `Tarski`
Run started at 1:41:25 7/4/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **513**   | **513**    | **513**    | **0**  | **5:25.870 s**   |
|top|0|0|0|0|0.000|
|sturmtarski|36|36|36|0|39.321|
|compute_sturm_tarski|22|22|22|0|15.052|
|poly_families|67|67|67|0|1:11.643|
|tarski_query|15|15|15|0|18.734|
|tarski_query_matrix|16|16|16|0|16.873|
|poly_systems|12|12|12|0|14.649|
|system_solvers|16|16|16|0|3.956|
|preprocessing_univariate|57|57|57|0|19.809|
|poly_system_strategy|41|41|41|0|19.460|
|dnf_polynomials|131|131|131|0|36.081|
|dnf_strategy|29|29|29|0|11.549|
|hutch|71|71|71|0|58.743|
|strategies|0|0|0|0|0.000|
## Detailed Summary 
## `top`
No formula declaration found.
## `sturmtarski`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|constructed_sturm_sequence?_TCC1|✅ proved - complete|shostak|0.153|
|constructed_sturm_sequence?_TCC2|✅ proved - complete|shostak|0.020|
|constructed_sturm_sequence?_TCC3|✅ proved - complete|shostak|0.040|
|constructed_sturm_sequence?_TCC4|✅ proved - incomplete|shostak|0.141|
|constructed_sturm_sequence?_TCC5|✅ proved - incomplete|shostak|0.150|
|constructed_sturm_sequence?_TCC6|✅ proved - incomplete|shostak|0.133|
|constructed_sturm_seq_repeated_root|✅ proved - incomplete|shostak|1.315|
|default_root_degree?_TCC1|✅ proved - incomplete|shostak|0.249|
|default_root_degree?_TCC2|✅ proved - incomplete|shostak|0.070|
|constructed_sturm_seq_root_degrees_TCC1|✅ proved - incomplete|shostak|0.539|
|constructed_sturm_seq_root_degrees|✅ proved - incomplete|shostak|0.000|
|default_root_deg_TCC1|✅ proved - incomplete|shostak|0.200|
|default_root_deg_def|✅ proved - incomplete|shostak|0.124|
|constructed_sturm_seq_root_degree_lower_bound|✅ proved - incomplete|shostak|2.421|
|sturm_tarski_basic_1|✅ proved - incomplete|shostak|3.628|
|sturm_tarski_basic_2|✅ proved - incomplete|shostak|1.754|
|sturm_tarski_basic_3|✅ proved - incomplete|shostak|7.480|
|sturm_tarski_basic_TCC1|✅ proved - incomplete|shostak|0.091|
|sturm_tarski_basic|✅ proved - incomplete|shostak|8.642|
|constructed_sturm_roots_between_enum_TCC1|✅ proved - incomplete|shostak|0.070|
|constructed_sturm_roots_between_enum_TCC2|✅ proved - incomplete|shostak|0.080|
|constructed_sturm_roots_between_enum|✅ proved - incomplete|shostak|1.622|
|Sol_TCC1|✅ proved - incomplete|shostak|0.104|
|Sol_union_top|✅ proved - incomplete|shostak|0.106|
|NSol_TCC1|✅ proved - incomplete|shostak|0.039|
|NSol_union_top|✅ proved - incomplete|shostak|0.432|
|sturm_tarski_TCC1|✅ proved - incomplete|shostak|0.120|
|sturm_tarski_TCC2|✅ proved - incomplete|shostak|0.598|
|sturm_tarski|✅ proved - incomplete|shostak|5.317|
|Sol_TCC2|✅ proved - incomplete|shostak|0.040|
|NSol_TCC2|✅ proved - incomplete|shostak|0.188|
|sturm_tarski_unbounded_TCC1|✅ proved - incomplete|shostak|0.077|
|sturm_tarski_unbounded_TCC2|✅ proved - incomplete|shostak|0.250|
|sturm_tarski_unbounded|✅ proved - incomplete|shostak|2.711|
|NSol_sq_gt|✅ proved - incomplete|shostak|0.296|
|NSol_sq_lt|✅ proved - incomplete|shostak|0.121|

## `compute_sturm_tarski`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|der_prod_TCC1|✅ proved - complete|shostak|0.010|
|der_prod_TCC2|✅ proved - incomplete|shostak|0.243|
|finite_bij_real_remove_one|✅ proved - complete|shostak|0.244|
|finite_bij_real_remove_two|✅ proved - complete|shostak|0.577|
|computed_sturm_spec_TCC1|✅ proved - incomplete|shostak|0.153|
|computed_sturm_spec_TCC2|✅ proved - incomplete|shostak|0.623|
|computed_sturm_spec_TCC3|✅ proved - incomplete|shostak|0.744|
|computed_sturm_spec_TCC4|✅ proved - incomplete|shostak|0.170|
|computed_sturm_spec_TCC5|✅ proved - incomplete|shostak|0.729|
|computed_sturm_spec|✅ proved - incomplete|shostak|3.332|
|Eq_computed_remainder?_TCC1|✅ proved - complete|shostak|0.010|
|Eq_computed_remainder?_TCC2|✅ proved - incomplete|shostak|0.156|
|compute_TQ_param_TCC1|✅ proved - incomplete|shostak|0.200|
|compute_TQ_param_TCC2|✅ proved - incomplete|shostak|0.291|
|compute_TQ_param_TCC3|✅ proved - incomplete|shostak|0.272|
|compute_TQ_param_TCC4|✅ proved - incomplete|shostak|0.327|
|compute_TQ_param_TCC5|✅ proved - incomplete|shostak|0.330|
|TQ_TCC1|✅ proved - complete|shostak|0.043|
|TQ_TCC2|✅ proved - incomplete|shostak|0.170|
|TQ_TCC3|✅ proved - incomplete|shostak|0.902|
|TQ_def|✅ proved - incomplete|shostak|5.380|
|TQ_eq_g|✅ proved - incomplete|shostak|0.146|

## `poly_families`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|polynomial_prod_int|✅ proved - incomplete|shostak|0.070|
|sigma_j|✅ proved - incomplete|shostak|0.243|
|prod_polynomials_TCC1|✅ proved - incomplete|shostak|0.010|
|prod_polynomials_TCC2|✅ proved - incomplete|shostak|0.020|
|prod_polynomials_TCC3|✅ proved - complete|shostak|0.010|
|prod_polynomials_TCC4|✅ proved - incomplete|shostak|0.050|
|prod_polynomials_TCC5|✅ proved - incomplete|shostak|0.020|
|prod_polynomials_TCC6|✅ proved - incomplete|shostak|0.123|
|prod_polynomials_TCC7|✅ proved - incomplete|shostak|3.296|
|prod_polynomials_list_TCC1|✅ proved - incomplete|shostak|0.081|
|prod_polynomials_list_TCC2|✅ proved - incomplete|shostak|0.220|
|prod_polynomials_list_TCC3|✅ proved - incomplete|shostak|0.692|
|prod_polynomials_list_TCC4|✅ proved - incomplete|shostak|0.130|
|prod_polynomials_list_TCC5|✅ proved - incomplete|shostak|0.696|
|prod_polynomials_list_TCC6|✅ proved - incomplete|shostak|0.710|
|prod_polynomials_list_TCC7|✅ proved - incomplete|shostak|0.543|
|prod_polynomials_list_TCC8|✅ proved - incomplete|shostak|1.910|
|TQ_fam_TCC1|✅ proved - incomplete|shostak|0.209|
|TQ_fam_TCC2|✅ proved - incomplete|shostak|0.575|
|TQ_fam_def_TCC1|✅ proved - incomplete|shostak|1.079|
|TQ_fam_def|✅ proved - incomplete|shostak|0.517|
|Sol_TCC1|✅ proved - incomplete|shostak|0.219|
|Sol_all_TCC1|✅ proved - incomplete|shostak|0.230|
|sign_prod_TCC1|✅ proved - complete|shostak|0.017|
|sign_prod_TCC2|✅ proved - incomplete|shostak|2.675|
|sign_prod_eq|✅ proved - incomplete|shostak|0.256|
|sign_ext_pow_TCC1|✅ proved - complete|shostak|0.010|
|sign_ext_pow_TCC2|✅ proved - incomplete|shostak|0.010|
|sign_ext_pow|✅ proved - incomplete|shostak|0.235|
|sign_ext_prod_polynomials_TCC1|✅ proved - incomplete|shostak|0.060|
|sign_ext_prod_polynomials|✅ proved - incomplete|shostak|1.136|
|unsig_TCC1|✅ proved - complete|shostak|0.134|
|sig_unsig|✅ proved - complete|shostak|0.150|
|sig_seq_unsig_seq|✅ proved - complete|shostak|0.184|
|base_3_seq_TCC1|✅ proved - complete|shostak|0.030|
|base_3_seq_TCC2|✅ proved - incomplete|shostak|0.454|
|base_6_seq_TCC1|✅ proved - incomplete|shostak|0.040|
|sig_seq_base_3_onto|✅ proved - incomplete|shostak|1.111|
|sig_seq_base_3_onto_2_TCC1|✅ proved - incomplete|shostak|0.030|
|sig_seq_base_3_onto_2|✅ proved - incomplete|shostak|0.288|
|sig_seq_base_6_onto_TCC1|✅ proved - incomplete|shostak|0.090|
|sig_seq_base_6_onto|✅ proved - incomplete|shostak|1.344|
|sig_seq_base_6_onto_2_TCC1|✅ proved - incomplete|shostak|0.081|
|sig_seq_base_6_onto_2|✅ proved - incomplete|shostak|0.357|
|base_3_seq_unique|✅ proved - incomplete|shostak|1.178|
|base_n_3_seq_unique|✅ proved - incomplete|shostak|0.100|
|union_upto_TCC1|✅ proved - complete|shostak|0.030|
|union_upto_TCC2|✅ proved - complete|shostak|0.030|
|union_upto_TCC3|✅ proved - complete|shostak|0.010|
|union_upto_TCC4|✅ proved - complete|shostak|0.080|
|union_upto_finite|✅ proved - complete|shostak|0.120|
|real_set_disj_union_cards_TCC1|✅ proved - complete|shostak|0.056|
|real_set_disj_union_cards|✅ proved - incomplete|shostak|0.379|
|mult_tarski_query_simple_TCC1|✅ proved - incomplete|shostak|0.031|
|mult_tarski_query_simple|✅ proved - incomplete|shostak|0.000|
|split_index_fun_TCC1|✅ proved - complete|shostak|0.040|
|split_index_fun_TCC2|✅ proved - complete|shostak|0.176|
|split_base6_TCC1|✅ proved - complete|shostak|0.010|
|splits_to_base3|✅ proved - incomplete|shostak|0.068|
|sign_prod_coeff6_TCC1|✅ proved - incomplete|shostak|0.140|
|NSol_seq6_TCC1|✅ proved - incomplete|shostak|0.150|
|mult_tarski_query_simple_6_0_to_3|✅ proved - incomplete|shostak|6.453|
|sign_coeff6_zero_entry_eq|✅ proved - incomplete|shostak|0.040|
|sign_coeff6_zero_TCC1|✅ proved - incomplete|shostak|1.646|
|sigma_disjoinction_6|✅ proved - incomplete|shostak|13.396|
|mult_tarski_query_simple_6_above_2_TCC1|✅ proved - incomplete|shostak|0.030|
|mult_tarski_query_simple_6_above_2|✅ proved - incomplete|shostak|27.135|

## `tarski_query`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|NSol_squared_gt|✅ proved - incomplete|shostak|0.147|
|NSol_squared_lt|✅ proved - incomplete|shostak|0.110|
|NSol_poly1_lt|✅ proved - incomplete|shostak|0.060|
|A3_TCC1|✅ proved - incomplete|shostak|0.060|
|A3_inv_TCC1|✅ proved - incomplete|shostak|0.030|
|A3_inv_TCC2|✅ proved - incomplete|shostak|0.669|
|TQ_vect3_TCC1|✅ proved - complete|shostak|0.010|
|TQ_vect3_TCC2|✅ proved - incomplete|shostak|0.080|
|TQ_vect3_TCC3|✅ proved - incomplete|shostak|0.090|
|TQ_vect3_TCC4|✅ proved - incomplete|shostak|1.214|
|NSol_vect3_TCC1|✅ proved - incomplete|shostak|0.928|
|tarski_query_system_basic_3|✅ proved - incomplete|shostak|5.753|
|A6_TCC1|✅ proved - incomplete|shostak|0.060|
|NSol_vect6_TCC1|✅ proved - incomplete|shostak|1.950|
|tarski_query_system_basic_6|✅ proved - incomplete|shostak|7.573|

## `tarski_query_matrix`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|TQ_vect3k_TCC1|✅ proved - incomplete|shostak|0.120|
|TQ_vect3k_TCC2|✅ proved - incomplete|shostak|0.138|
|TQ_vect6k_TCC1|✅ proved - incomplete|shostak|0.187|
|TQ_vect6k_TCC2|✅ proved - incomplete|shostak|0.160|
|NSol_vect3k_TCC1|✅ proved - incomplete|shostak|0.068|
|NSol_vect3k_TCC2|✅ proved - incomplete|shostak|0.130|
|NSol_vect6k_TCC1|✅ proved - incomplete|shostak|0.070|
|NSol_vect6k_TCC2|✅ proved - incomplete|shostak|0.149|
|A66_inv_TCC1|✅ proved - incomplete|shostak|0.050|
|A66_TCC1|✅ proved - incomplete|shostak|0.040|
|A66_TCC2|✅ proved - incomplete|shostak|0.100|
|multi_sturm_tarski_6by6|✅ proved - incomplete|shostak|6.206|
|multi_sturm_tarski_NSol|✅ proved - incomplete|shostak|2.008|
|A63_TCC1|✅ proved - incomplete|shostak|0.070|
|A63_def|✅ proved - incomplete|shostak|0.020|
|multi_sturm_tarski_NSol63|✅ proved - incomplete|shostak|7.357|

## `poly_systems`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|system_roots_enum|✅ proved - incomplete|shostak|1.273|
|strict_poly_system_solvable_TCC1|✅ proved - incomplete|shostak|0.040|
|strict_poly_system_solvable|✅ proved - incomplete|shostak|4.564|
|A63_tensor_power_mat_row_TCC1|✅ proved - incomplete|shostak|0.046|
|A63_tensor_power_mat_row_TCC2|✅ proved - incomplete|shostak|0.130|
|A63_tensor_power_mat_row_TCC3|✅ proved - incomplete|shostak|0.030|
|A63_tensor_power_mat_row_TCC4|✅ proved - incomplete|shostak|0.020|
|A63_tensor_power_mat_row_TCC5|✅ proved - incomplete|shostak|0.046|
|A63_tensor_power_mat_row_TCC6|✅ proved - incomplete|shostak|0.000|
|A63_tensor_power_mat_row_def_TCC1|✅ proved - incomplete|shostak|0.150|
|A63_tensor_power_mat_row_def|✅ proved - incomplete|shostak|6.251|
|sturm_tarski_solver_slow_basic_TCC1|✅ proved - incomplete|shostak|2.099|

## `system_solvers`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|rows_fun_TCC1|✅ proved - incomplete|shostak|0.040|
|entry_fun_TCC1|✅ proved - incomplete|shostak|0.077|
|entry_fun_TCC2|✅ proved - incomplete|shostak|0.080|
|entry_is|✅ proved - incomplete|shostak|0.698|
|TQlist_fun_TCC1|✅ proved - incomplete|shostak|0.030|
|TQlist_fun_TCC2|✅ proved - incomplete|shostak|0.141|
|TQlist_lem_TCC1|✅ proved - incomplete|shostak|0.030|
|TQlist_lem|✅ proved - incomplete|shostak|0.295|
|sturm_tarski_faster_TCC1|✅ proved - incomplete|shostak|0.100|
|sturm_tarski_faster_TCC2|✅ proved - incomplete|shostak|0.100|
|sturm_tarski_faster_TCC3|✅ proved - incomplete|shostak|0.170|
|sturm_tarski_faster_TCC4|✅ proved - incomplete|shostak|1.346|
|Test1_TCC1|✅ proved - incomplete|shostak|0.397|
|Test1_TCC2|✅ proved - incomplete|shostak|0.312|
|Test2recurse_TCC1|✅ proved - incomplete|shostak|0.080|
|Test2recurse_TCC2|✅ proved - incomplete|shostak|0.060|

## `preprocessing_univariate`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|polynomialDomMonomCoeffOne_TCC1|✅ proved - complete|shostak|0.010|
|polynomialDomMonomCoeffOne_TCC2|✅ proved - complete|shostak|0.010|
|polynomialDomMonomCoeffOne|✅ proved - incomplete|shostak|0.500|
|polynomialDominationCoeff1|✅ proved - incomplete|shostak|0.554|
|polynomialDomLC|✅ proved - incomplete|shostak|0.200|
|polynomialDomLC2|✅ proved - incomplete|shostak|0.240|
|polynomialDomLC3|✅ proved - incomplete|shostak|0.151|
|polynomialDomLC2Neg|✅ proved - incomplete|shostak|0.552|
|polyLCPos|✅ proved - incomplete|shostak|0.273|
|testcase_TCC1|✅ proved - complete|shostak|0.020|
|testcase_TCC2|✅ proved - complete|shostak|0.010|
|testcase|✅ proved - incomplete|shostak|0.662|
|polyLCPosUniv|✅ proved - incomplete|shostak|0.020|
|polyLCNeg|✅ proved - incomplete|shostak|0.083|
|evenPowerEquivalence_TCC1|✅ proved - complete|shostak|0.020|
|evenPowerEquivalence_TCC2|✅ proved - complete|shostak|0.010|
|evenPowerEquivalence|✅ proved - complete|shostak|0.150|
|oddPowerEquivalence_TCC1|✅ proved - complete|shostak|0.060|
|oddPowerEquivalence_TCC2|✅ proved - complete|shostak|0.054|
|oddPowerEquivalence|✅ proved - complete|shostak|0.310|
|polyEvalAtExtReal_TCC1|✅ proved - complete|shostak|0.010|
|polyEvalAtExtReal|✅ proved - incomplete|shostak|0.020|
|polynomialDomMonomCoeffOneOdd|✅ proved - incomplete|shostak|0.213|
|polynomialDomMonomCoeffOneOddNeg|✅ proved - incomplete|shostak|0.221|
|polynomialDomMonomCoeffOneOddNegCoeff|✅ proved - incomplete|shostak|0.340|
|sequenceRelHelper|✅ proved - incomplete|shostak|0.792|
|sequenceRelation|✅ proved - incomplete|shostak|1.396|
|polynomialDomMonomNegEvenDeg_TCC1|✅ proved - incomplete|shostak|0.083|
|polynomialDomMonomNegEvenDeg|✅ proved - incomplete|shostak|0.280|
|polynomialDomMonomNegEvenDeg1_TCC1|✅ proved - incomplete|shostak|0.084|
|polynomialDomMonomNegEvenDeg1|✅ proved - incomplete|shostak|0.140|
|polynomialOddDegLessThanZero|✅ proved - incomplete|shostak|1.175|
|polynomialOddDegGreaterThanZero|✅ proved - incomplete|shostak|1.728|
|polynomialOddDegGreaterThanZero1|✅ proved - incomplete|shostak|1.289|
|polyOddDegPos|✅ proved - incomplete|shostak|0.250|
|polyOddDegNeg|✅ proved - incomplete|shostak|0.122|
|polyOddDegZero|✅ proved - incomplete|shostak|0.151|
|figuringOutModsBidir|✅ proved - incomplete|shostak|0.150|
|polyPlugInZero|✅ proved - incomplete|shostak|0.303|
|preprocessingLemma1_TCC1|✅ proved - incomplete|shostak|0.020|
|preprocessingLemma1|✅ proved - incomplete|shostak|0.040|
|preprocessingLemma2|✅ proved - incomplete|shostak|0.714|
|preprocessingLemma3|✅ proved - incomplete|shostak|0.280|
|preprocessingLemma4|✅ proved - incomplete|shostak|0.312|
|preprocessingLemmaOddGeneralize|✅ proved - incomplete|shostak|1.955|
|preprocessingLemma5|✅ proved - incomplete|shostak|0.030|
|preprocessingTheorem|✅ proved - incomplete|shostak|0.070|
|polyLCPosConj|✅ proved - incomplete|shostak|0.589|
|polyLCNegConj|✅ proved - incomplete|shostak|0.451|
|preprocessingConjLemmaOddGeneralize|✅ proved - incomplete|shostak|0.269|
|preprocessingConjLC|✅ proved - incomplete|shostak|2.103|
|preprocessingConjLemma5|✅ proved - incomplete|shostak|0.030|
|preprocessingConjTheorem|✅ proved - incomplete|shostak|0.132|
|sum_squares_rec_TCC1|✅ proved - complete|shostak|0.040|
|sum_squares_rec_TCC2|✅ proved - incomplete|shostak|0.080|
|sum_squares_rec_TCC3|✅ proved - complete|shostak|0.048|
|sum_squares_TCC1|✅ proved - incomplete|shostak|0.010|

## `poly_system_strategy`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|first_eq_TCC1|✅ proved - complete|shostak|0.020|
|first_eq_TCC2|✅ proved - incomplete|shostak|0.020|
|first_eq_TCC3|✅ proved - incomplete|shostak|0.100|
|first_eq_TCC4|✅ proved - incomplete|shostak|0.074|
|first_eq_TCC5|✅ proved - incomplete|shostak|0.070|
|first_eq_TCC6|✅ proved - incomplete|shostak|0.030|
|first_eq_TCC7|✅ proved - complete|shostak|0.010|
|greatify_poly_TCC1|✅ proved - complete|shostak|0.050|
|greatify_rel_TCC1|✅ proved - complete|shostak|0.020|
|greatify_def_TCC1|✅ proved - complete|shostak|0.075|
|greatify_def|✅ proved - incomplete|shostak|0.394|
|compute_solvable_single_TCC1|✅ proved - incomplete|shostak|0.020|
|compute_solvable_single_TCC2|✅ proved - incomplete|shostak|0.300|
|compute_solvable_single_TCC3|✅ proved - incomplete|shostak|0.358|
|compute_solvable_single_TCC4|✅ proved - incomplete|shostak|0.102|
|compute_solvable_single_TCC5|✅ proved - incomplete|shostak|0.110|
|compute_solvable_single_def|✅ proved - incomplete|shostak|0.000|
|poly_deriv_integer|✅ proved - complete|shostak|0.060|
|compute_solvable_TCC1|✅ proved - incomplete|shostak|0.110|
|compute_solvable_TCC2|✅ proved - incomplete|shostak|0.175|
|compute_solvable_TCC3|✅ proved - incomplete|shostak|0.189|
|compute_solvable_TCC4|✅ proved - incomplete|shostak|0.266|
|compute_solvable_TCC5|✅ proved - incomplete|shostak|0.122|
|compute_solvable_TCC6|✅ proved - incomplete|shostak|0.110|
|compute_solvable_TCC7|✅ proved - incomplete|shostak|1.202|
|compute_solvable_TCC8|✅ proved - incomplete|shostak|0.211|
|compute_solvable_new_TCC1|✅ proved - incomplete|shostak|0.271|
|compute_solvable_new_TCC2|✅ proved - incomplete|shostak|1.050|
|compute_solvable_new_TCC3|✅ proved - incomplete|shostak|0.152|
|preprocessing_better1|✅ proved - incomplete|shostak|1.745|
|compute_solvable_improved|✅ proved - incomplete|shostak|1.731|
|compute_solvable_def|✅ proved - incomplete|shostak|6.756|
|compute_solvable_new_def|✅ proved - incomplete|shostak|0.030|
|poly_system_list_TCC1|✅ proved - incomplete|shostak|0.070|
|poly_system_list_TCC2|✅ proved - incomplete|shostak|0.140|
|poly_system_list_TCC3|✅ proved - incomplete|shostak|0.875|
|tarski_TCC1|✅ proved - incomplete|shostak|0.104|
|tarski_TCC2|✅ proved - incomplete|shostak|0.466|
|tarski_TCC3|✅ proved - incomplete|shostak|0.749|
|tarski_TCC4|✅ proved - incomplete|shostak|0.240|
|tarski_def|✅ proved - incomplete|shostak|0.883|

## `dnf_polynomials`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|eval_TCC1|✅ proved - complete|shostak|0.030|
|eval_TCC2|✅ proved - complete|shostak|0.043|
|eval_TCC3|✅ proved - complete|shostak|0.040|
|eval_TCC4|✅ proved - complete|shostak|0.040|
|eval_TCC5|✅ proved - complete|shostak|0.030|
|eval_TCC6|✅ proved - complete|shostak|0.030|
|eval_TCC7|✅ proved - complete|shostak|0.035|
|eval_TCC8|✅ proved - complete|shostak|0.040|
|eval_TCC9|✅ proved - complete|shostak|0.040|
|eval_TCC10|✅ proved - complete|shostak|0.040|
|eval_TCC11|✅ proved - complete|shostak|0.040|
|eval_TCC12|✅ proved - complete|shostak|0.052|
|eval_TCC13|✅ proved - complete|shostak|0.040|
|eval_TCC14|✅ proved - complete|shostak|0.040|
|eval_atm_list_TCC1|✅ proved - complete|shostak|0.020|
|eval_atm_list_TCC2|✅ proved - incomplete|shostak|0.142|
|eval_TCC15|✅ proved - complete|shostak|0.020|
|eval_TCC16|✅ proved - incomplete|shostak|0.100|
|degr_rec_TCC1|✅ proved - complete|shostak|0.010|
|degr_rec_TCC2|✅ proved - complete|shostak|0.010|
|degr_rec_TCC3|✅ proved - incomplete|shostak|0.030|
|degr_rec_TCC4|✅ proved - complete|shostak|0.010|
|degr_rec_TCC5|✅ proved - incomplete|shostak|0.036|
|degr_rec_lemma|✅ proved - incomplete|shostak|0.100|
|degr_rec_change_function|✅ proved - incomplete|shostak|0.082|
|construct_record_TCC1|✅ proved - incomplete|shostak|0.110|
|depth_TCC1|✅ proved - complete|shostak|0.040|
|depth_TCC2|✅ proved - complete|shostak|0.040|
|depth_TCC3|✅ proved - complete|shostak|0.046|
|depth_TCC4|✅ proved - complete|shostak|0.040|
|depth_TCC5|✅ proved - complete|shostak|0.040|
|depth_TCC6|✅ proved - complete|shostak|0.050|
|abs_nnf_rel_preserves_truth|✅ proved - incomplete|shostak|0.356|
|abs_nnf_rel_pnot_preserves_truth|✅ proved - incomplete|shostak|0.110|
|nnf_TCC1|✅ proved - incomplete|shostak|0.090|
|nnf_TCC2|✅ proved - incomplete|shostak|0.085|
|nnf_TCC3|✅ proved - incomplete|shostak|0.090|
|nnf_TCC4|✅ proved - incomplete|shostak|0.080|
|nnf_TCC5|✅ proved - incomplete|shostak|0.113|
|nnf_TCC6|✅ proved - incomplete|shostak|0.110|
|nnf_TCC7|✅ proved - incomplete|shostak|0.110|
|nnf_TCC8|✅ proved - incomplete|shostak|0.100|
|nnf_TCC9|✅ proved - incomplete|shostak|0.091|
|nnf_TCC10|✅ proved - incomplete|shostak|0.110|
|nnf_TCC11|✅ proved - incomplete|shostak|0.110|
|nnf_TCC12|✅ proved - incomplete|shostak|0.114|
|nnf_TCC13|✅ proved - incomplete|shostak|0.110|
|nnf_TCC14|✅ proved - incomplete|shostak|0.190|
|nnf_TCC15|✅ proved - incomplete|shostak|0.199|
|nnf_TCC16|✅ proved - incomplete|shostak|0.210|
|nnf_TCC17|✅ proved - incomplete|shostak|0.189|
|nnf_TCC18|✅ proved - incomplete|shostak|0.210|
|nnf_TCC19|✅ proved - incomplete|shostak|0.207|
|nnf_TCC20|✅ proved - incomplete|shostak|0.220|
|nnf_TCC21|✅ proved - incomplete|shostak|0.207|
|nnf_TCC22|✅ proved - incomplete|shostak|0.100|
|nnf_TCC23|✅ proved - incomplete|shostak|0.090|
|nnf_TCC24|✅ proved - incomplete|shostak|0.080|
|nnf_TCC25|✅ proved - incomplete|shostak|0.101|
|nnf_TCC26|✅ proved - incomplete|shostak|0.180|
|nnf_TCC27|✅ proved - incomplete|shostak|0.180|
|nnf_TCC28|✅ proved - incomplete|shostak|0.175|
|nnf_TCC29|✅ proved - incomplete|shostak|0.180|
|nnf_TCC30|✅ proved - incomplete|shostak|0.180|
|nnf_TCC31|✅ proved - incomplete|shostak|0.171|
|nnf_TCC32|✅ proved - incomplete|shostak|0.160|
|nnf_TCC33|✅ proved - incomplete|shostak|0.170|
|nnf_not_has_special_form|✅ proved - incomplete|shostak|3.869|
|nnf_has_special_form|✅ proved - incomplete|shostak|0.182|
|pull_out_conjunctions_TCC1|✅ proved - complete|shostak|0.020|
|pull_out_conjunctions_TCC2|✅ proved - complete|shostak|0.020|
|pull_out_conjunctions_TCC3|✅ proved - complete|shostak|0.030|
|length_pull_out_conjunctions|✅ proved - incomplete|shostak|0.328|
|conjunct_element_TCC1|✅ proved - complete|shostak|0.040|
|conjunct_element_TCC2|✅ proved - complete|shostak|0.030|
|conjunct_element_TCC3|✅ proved - incomplete|shostak|0.090|
|conjunct_lists_TCC1|✅ proved - complete|shostak|0.020|
|conjunct_lists_TCC2|✅ proved - incomplete|shostak|0.080|
|length_conjunct_lists|✅ proved - incomplete|shostak|0.230|
|form_disjunction_TCC1|✅ proved - incomplete|shostak|0.060|
|form_disjunction_TCC2|✅ proved - incomplete|shostak|0.059|
|form_disjunction_TCC3|✅ proved - incomplete|shostak|0.180|
|form_disjunction_TCC4|✅ proved - incomplete|shostak|0.180|
|form_disjunction_TCC5|✅ proved - complete|shostak|0.040|
|distribute_ands_TCC1|✅ proved - complete|shostak|0.011|
|distribute_ands_TCC2|✅ proved - complete|shostak|0.020|
|distribute_ands_TCC3|✅ proved - complete|shostak|0.030|
|distribute_ands_TCC4|✅ proved - complete|shostak|0.050|
|distribute_ands_TCC5|✅ proved - complete|shostak|0.060|
|distribute_ands_TCC6|✅ proved - incomplete|shostak|0.561|
|distribute_ands_TCC7|✅ proved - complete|shostak|0.022|
|distribute_ands_TCC8|✅ proved - complete|shostak|0.050|
|conjunct_element_prop|✅ proved - incomplete|shostak|0.110|
|conjunct_lists_prop|✅ proved - incomplete|shostak|0.152|
|conjunct_elements_truth_prop|✅ proved - incomplete|shostak|0.507|
|conjunct_truth_prop|✅ proved - incomplete|shostak|0.461|
|form_disjunction_prop|✅ proved - incomplete|shostak|1.597|
|distrib_ands_special_form|✅ proved - incomplete|shostak|0.379|
|special_form_conjunct|✅ proved - incomplete|shostak|0.030|
|form_disjunction_eval|✅ proved - incomplete|shostak|0.669|
|pull_out_conjunctions_eval|✅ proved - incomplete|shostak|1.318|
|form_disjunction_truth_TCC1|✅ proved - incomplete|shostak|0.020|
|form_disjunction_truth|✅ proved - incomplete|shostak|0.040|
|dnf_TCC1|✅ proved - incomplete|shostak|0.010|
|nnf_pnot_preserves_truth|✅ proved - incomplete|shostak|6.519|
|nnf_preserves_truth|✅ proved - incomplete|shostak|2.606|
|distribute_pand_preserves_truth_new_TCC1|✅ proved - complete|shostak|0.020|
|distribute_pand_preserves_truth_new|✅ proved - incomplete|shostak|0.172|
|distribute_ands_preserves_truth|✅ proved - incomplete|shostak|0.585|
|dnf_const_preserves_truth|✅ proved - incomplete|shostak|0.294|
|dnf_const_preserves_truth_1_TCC1|✅ proved - complete|shostak|0.020|
|dnf_const_preserves_truth_1|✅ proved - incomplete|shostak|0.280|
|eval_rel_preserves_truth|✅ proved - incomplete|shostak|0.140|
|dnf_prel_preserves_truth_len1_TCC1|✅ proved - complete|shostak|0.020|
|dnf_prel_preserves_truth_len1|✅ proved - incomplete|shostak|0.000|
|dnf_prel_preserves_truth_len0|✅ proved - incomplete|shostak|1.177|
|dnf_prel_preserves_truth|✅ proved - incomplete|shostak|0.946|
|dnf_prel_preserves_truth2_TCC1|✅ proved - complete|shostak|0.020|
|dnf_prel_preserves_truth2|✅ proved - incomplete|shostak|0.060|
|dnf_special_form|✅ proved - incomplete|shostak|0.070|
|construct_dnf_length|✅ proved - incomplete|shostak|0.471|
|construct_dnf_car_length_TCC1|✅ proved - incomplete|shostak|0.050|
|construct_dnf_car_length|✅ proved - incomplete|shostak|0.692|
|has_no_ors_prop_TCC1|✅ proved - incomplete|shostak|0.070|
|has_no_ors_prop|✅ proved - incomplete|shostak|1.025|
|eval_atm_list_truth|✅ proved - incomplete|shostak|0.380|
|eval_atm_list_prop|✅ proved - incomplete|shostak|0.381|
|has_no_ors_dnf_prop|✅ proved - incomplete|shostak|0.220|
|construction_lemma_1|✅ proved - incomplete|shostak|0.334|
|construction_lemma_2|✅ proved - incomplete|shostak|0.301|
|dnf_preserves_truth|✅ proved - incomplete|shostak|1.029|

## `dnf_strategy`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|remove_constants_rec_TCC1|✅ proved - complete|shostak|0.020|
|remove_constants_rec_TCC2|✅ proved - incomplete|shostak|0.139|
|remove_constants_rec_TCC3|✅ proved - incomplete|shostak|0.050|
|when_not_none|✅ proved - incomplete|shostak|0.120|
|relation_remove_constants_rec|✅ proved - incomplete|shostak|0.271|
|remove_constants_TCC1|✅ proved - incomplete|shostak|1.273|
|relation_remove_constants_single|✅ proved - incomplete|shostak|0.050|
|relation_remove_constants_null_TCC1|✅ proved - incomplete|shostak|0.037|
|relation_remove_constants_null_TCC2|✅ proved - incomplete|shostak|0.050|
|relation_remove_constants_null|✅ proved - incomplete|shostak|0.361|
|relation_remove_constants_TCC1|✅ proved - incomplete|shostak|0.040|
|relation_remove_constants|✅ proved - incomplete|shostak|0.697|
|eval_truth|✅ proved - incomplete|shostak|0.070|
|degr_lemma|✅ proved - incomplete|shostak|0.262|
|eval_remove_constants_none|✅ proved - incomplete|shostak|0.200|
|eval_remove_constants|✅ proved - incomplete|shostak|0.301|
|conj_to_tarski_TCC1|✅ proved - incomplete|shostak|0.040|
|conj_to_tarski_TCC2|✅ proved - incomplete|shostak|0.080|
|conj_to_tarski_TCC3|✅ proved - incomplete|shostak|0.083|
|conj_to_tarski_TCC4|✅ proved - incomplete|shostak|0.080|
|conj_to_tarski_TCC5|✅ proved - incomplete|shostak|0.362|
|satisfiability_relation_TCC1|✅ proved - incomplete|shostak|0.030|
|satisfiability_relation|✅ proved - incomplete|shostak|0.624|
|satisfiability_relation_system_TCC1|✅ proved - incomplete|shostak|0.060|
|satisfiability_relation_system_TCC2|✅ proved - incomplete|shostak|0.152|
|satisfiability_relation_system|✅ proved - incomplete|shostak|3.898|
|conj_to_tarski_sound|✅ proved - incomplete|shostak|1.592|
|dnf_eval_truth|✅ proved - incomplete|shostak|0.487|
|rel_to_tarski_sound|✅ proved - incomplete|shostak|0.120|

## `hutch`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Eq_computed_remainder_seq?_TCC1|✅ proved - incomplete|shostak|0.040|
|Eq_computed_remainder_seq?_TCC2|✅ proved - complete|shostak|0.070|
|Eq_computed_remainder_seq?_TCC3|✅ proved - incomplete|shostak|0.106|
|sturm_chain_list_TCC1|✅ proved - incomplete|shostak|0.286|
|decidable_interval_TCC1|✅ proved - incomplete|shostak|0.544|
|decidable_interval_TCC2|✅ proved - incomplete|shostak|0.511|
|decidable_interval_TCC3|✅ proved - incomplete|shostak|0.370|
|sum_square_zero_havers_TCC1|✅ proved - incomplete|shostak|0.060|
|sum_square_zero_havers_TCC2|✅ proved - incomplete|shostak|0.020|
|sum_square_zero_havers_TCC3|✅ proved - incomplete|shostak|0.334|
|sum_square_zero_havers_def|✅ proved - incomplete|shostak|0.000|
|decidable_interval_sq_TCC1|✅ proved - incomplete|shostak|0.470|
|decidable_interval_sq_TCC2|✅ proved - incomplete|shostak|0.445|
|decidable_interval_sq_TCC3|✅ proved - incomplete|shostak|0.368|
|decidable_interval_sq_TCC4|✅ proved - incomplete|shostak|0.150|
|decidable_interval_sq_TCC5|✅ proved - incomplete|shostak|0.135|
|decidable_interval_sq_TCC6|✅ proved - incomplete|shostak|0.079|
|decidable_interval_sq_TCC7|✅ proved - incomplete|shostak|0.220|
|decidable_interval_sq_TCC8|✅ proved - incomplete|shostak|0.239|
|decidable_interval_sq_TCC9|✅ proved - incomplete|shostak|0.040|
|decidable_interval_def_TCC1|✅ proved - incomplete|shostak|0.430|
|decidable_interval_def_TCC2|✅ proved - incomplete|shostak|0.770|
|decidable_interval_def|✅ proved - incomplete|shostak|6.633|
|decide_interval_def_TCC1|✅ proved - incomplete|shostak|0.257|
|decide_interval_def_TCC2|✅ proved - incomplete|shostak|0.080|
|decide_interval_def|✅ proved - incomplete|shostak|4.851|
|decidable_intervals_exist_TCC1|✅ proved - incomplete|shostak|0.369|
|decidable_intervals_exist|✅ proved - incomplete|shostak|3.568|
|decidable_intervals_sq_exist|✅ proved - incomplete|shostak|0.000|
|hutch_int_meas_TCC1|✅ proved - incomplete|shostak|0.040|
|hutch_int_meas_TCC2|✅ proved - incomplete|shostak|0.349|
|hutch_int_meas_TCC3|✅ proved - incomplete|shostak|0.256|
|hutch_int_meas_TCC4|✅ proved - incomplete|shostak|1.254|
|signs_upd_TCC1|✅ proved - incomplete|shostak|0.386|
|signs_upd_TCC2|✅ proved - incomplete|shostak|0.359|
|signs_upd_TCC3|✅ proved - incomplete|shostak|0.419|
|signs_upd_sound|✅ proved - incomplete|shostak|2.009|
|hutch_int_basic_TCC1|✅ proved - incomplete|shostak|0.050|
|hutch_int_basic_TCC2|✅ proved - incomplete|shostak|0.263|
|hutch_int_basic_TCC3|✅ proved - incomplete|shostak|0.089|
|hutch_int_basic_TCC4|✅ proved - incomplete|shostak|0.106|
|hutch_int_basic_TCC5|✅ proved - incomplete|shostak|2.817|
|hutch_int_basic_TCC6|✅ proved - incomplete|shostak|0.173|
|hutch_int_basic_TCC7|✅ proved - incomplete|shostak|0.143|
|hutch_int_basic_TCC8|✅ proved - incomplete|shostak|3.268|
|hutch_int_basic_TCC9|✅ proved - incomplete|shostak|0.499|
|Knuth_total_TCC1|✅ proved - incomplete|shostak|0.020|
|Knuth_total_TCC2|✅ proved - incomplete|shostak|0.033|
|Knuth_total_TCC3|✅ proved - incomplete|shostak|0.040|
|Knuth_total_TCC4|✅ proved - incomplete|shostak|0.040|
|Knuth_total_TCC5|✅ proved - complete|shostak|0.010|
|hutch_int_TCC1|✅ proved - incomplete|shostak|0.190|
|hutch_int_TCC2|✅ proved - incomplete|shostak|0.509|
|hutch_int_TCC3|✅ proved - incomplete|shostak|2.765|
|hutch_int_TCC4|✅ proved - incomplete|shostak|0.973|
|hutch_int_TCC5|✅ proved - incomplete|shostak|4.462|
|hutch_int_TCC6|✅ proved - incomplete|shostak|0.697|
|hutch_int_TCC7|✅ proved - incomplete|shostak|2.747|
|hutch_int_TCC8|✅ proved - incomplete|shostak|1.209|
|hutch_int_TCC9|✅ proved - incomplete|shostak|0.444|
|hutch_int_def|✅ proved - incomplete|shostak|4.704|
|poly_system_list_TCC1|✅ proved - incomplete|shostak|0.075|
|poly_system_list_TCC2|✅ proved - incomplete|shostak|0.140|
|poly_system_list_TCC3|✅ proved - incomplete|shostak|0.880|
|hutch_TCC1|✅ proved - incomplete|shostak|0.108|
|hutch_TCC2|✅ proved - incomplete|shostak|0.460|
|hutch_TCC3|✅ proved - incomplete|shostak|0.752|
|hutch_TCC4|✅ proved - incomplete|shostak|0.251|
|hutch_def|✅ proved - incomplete|shostak|3.289|
|test_TCC1|✅ proved - complete|shostak|0.020|
|test|✅ proved - incomplete|shostak|0.000|

## `strategies`
No formula declaration found.## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib//float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-pvsio-fix.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210219-extratregies.lisp`|
