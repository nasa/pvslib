# Summary for `Tarski`
Run started at 15:41:32 9/1/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **513**   | **513**    | **513**    | **0**  | **6:41.020 s**   |
|top|0|0|0|0|0.000|
|sturmtarski|36|36|36|0|47.089|
|compute_sturm_tarski|22|22|22|0|18.981|
|poly_families|67|67|67|0|1:30.237|
|tarski_query|15|15|15|0|22.846|
|tarski_query_matrix|16|16|16|0|18.715|
|poly_systems|12|12|12|0|11.869|
|system_solvers|16|16|16|0|4.299|
|preprocessing_univariate|57|57|57|0|22.645|
|poly_system_strategy|41|41|41|0|23.934|
|dnf_polynomials|131|131|131|0|44.935|
|dnf_strategy|29|29|29|0|12.178|
|hutch|71|71|71|0|1:23.292|
|strategies|0|0|0|0|0.000|
## Detailed Summary 
## `top`
No formula declaration found.
## `sturmtarski`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|constructed_sturm_sequence?_TCC1|✅ proved - complete|shostak|0.154|
|constructed_sturm_sequence?_TCC2|✅ proved - complete|shostak|0.020|
|constructed_sturm_sequence?_TCC3|✅ proved - complete|shostak|0.040|
|constructed_sturm_sequence?_TCC4|✅ proved - incomplete|shostak|0.139|
|constructed_sturm_sequence?_TCC5|✅ proved - incomplete|shostak|0.162|
|constructed_sturm_sequence?_TCC6|✅ proved - incomplete|shostak|0.130|
|constructed_sturm_seq_repeated_root|✅ proved - incomplete|shostak|1.288|
|default_root_degree?_TCC1|✅ proved - incomplete|shostak|0.249|
|default_root_degree?_TCC2|✅ proved - incomplete|shostak|0.060|
|constructed_sturm_seq_root_degrees_TCC1|✅ proved - incomplete|shostak|0.571|
|constructed_sturm_seq_root_degrees|✅ proved - incomplete|shostak|0.381|
|default_root_deg_TCC1|✅ proved - incomplete|shostak|0.230|
|default_root_deg_def|✅ proved - incomplete|shostak|0.129|
|constructed_sturm_seq_root_degree_lower_bound|✅ proved - incomplete|shostak|2.699|
|sturm_tarski_basic_1|✅ proved - incomplete|shostak|4.005|
|sturm_tarski_basic_2|✅ proved - incomplete|shostak|1.997|
|sturm_tarski_basic_3|✅ proved - incomplete|shostak|8.357|
|sturm_tarski_basic_TCC1|✅ proved - incomplete|shostak|0.104|
|sturm_tarski_basic|✅ proved - incomplete|shostak|12.457|
|constructed_sturm_roots_between_enum_TCC1|✅ proved - incomplete|shostak|0.080|
|constructed_sturm_roots_between_enum_TCC2|✅ proved - incomplete|shostak|0.080|
|constructed_sturm_roots_between_enum|✅ proved - incomplete|shostak|1.815|
|Sol_TCC1|✅ proved - incomplete|shostak|0.128|
|Sol_union_top|✅ proved - incomplete|shostak|0.106|
|NSol_TCC1|✅ proved - incomplete|shostak|0.050|
|NSol_union_top|✅ proved - incomplete|shostak|0.497|
|sturm_tarski_TCC1|✅ proved - incomplete|shostak|0.115|
|sturm_tarski_TCC2|✅ proved - incomplete|shostak|0.642|
|sturm_tarski|✅ proved - incomplete|shostak|6.194|
|Sol_TCC2|✅ proved - incomplete|shostak|0.050|
|NSol_TCC2|✅ proved - incomplete|shostak|0.208|
|sturm_tarski_unbounded_TCC1|✅ proved - incomplete|shostak|0.080|
|sturm_tarski_unbounded_TCC2|✅ proved - incomplete|shostak|0.284|
|sturm_tarski_unbounded|✅ proved - incomplete|shostak|3.121|
|NSol_sq_gt|✅ proved - incomplete|shostak|0.331|
|NSol_sq_lt|✅ proved - incomplete|shostak|0.136|

## `compute_sturm_tarski`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|der_prod_TCC1|✅ proved - complete|shostak|0.010|
|der_prod_TCC2|✅ proved - incomplete|shostak|0.273|
|finite_bij_real_remove_one|✅ proved - complete|shostak|0.277|
|finite_bij_real_remove_two|✅ proved - complete|shostak|0.651|
|computed_sturm_spec_TCC1|✅ proved - incomplete|shostak|0.170|
|computed_sturm_spec_TCC2|✅ proved - incomplete|shostak|0.661|
|computed_sturm_spec_TCC3|✅ proved - incomplete|shostak|0.796|
|computed_sturm_spec_TCC4|✅ proved - incomplete|shostak|0.179|
|computed_sturm_spec_TCC5|✅ proved - incomplete|shostak|0.777|
|computed_sturm_spec|✅ proved - incomplete|shostak|6.217|
|Eq_computed_remainder?_TCC1|✅ proved - complete|shostak|0.010|
|Eq_computed_remainder?_TCC2|✅ proved - incomplete|shostak|0.185|
|compute_TQ_param_TCC1|✅ proved - incomplete|shostak|0.220|
|compute_TQ_param_TCC2|✅ proved - incomplete|shostak|0.313|
|compute_TQ_param_TCC3|✅ proved - incomplete|shostak|0.291|
|compute_TQ_param_TCC4|✅ proved - incomplete|shostak|0.348|
|compute_TQ_param_TCC5|✅ proved - incomplete|shostak|0.349|
|TQ_TCC1|✅ proved - complete|shostak|0.040|
|TQ_TCC2|✅ proved - incomplete|shostak|0.192|
|TQ_TCC3|✅ proved - incomplete|shostak|0.971|
|TQ_def|✅ proved - incomplete|shostak|5.895|
|TQ_eq_g|✅ proved - incomplete|shostak|0.156|

## `poly_families`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|polynomial_prod_int|✅ proved - incomplete|shostak|0.090|
|sigma_j|✅ proved - incomplete|shostak|0.254|
|prod_polynomials_TCC1|✅ proved - incomplete|shostak|0.010|
|prod_polynomials_TCC2|✅ proved - incomplete|shostak|0.030|
|prod_polynomials_TCC3|✅ proved - complete|shostak|0.010|
|prod_polynomials_TCC4|✅ proved - incomplete|shostak|0.061|
|prod_polynomials_TCC5|✅ proved - incomplete|shostak|0.030|
|prod_polynomials_TCC6|✅ proved - incomplete|shostak|0.140|
|prod_polynomials_TCC7|✅ proved - incomplete|shostak|3.733|
|prod_polynomials_list_TCC1|✅ proved - incomplete|shostak|0.092|
|prod_polynomials_list_TCC2|✅ proved - incomplete|shostak|0.232|
|prod_polynomials_list_TCC3|✅ proved - incomplete|shostak|0.753|
|prod_polynomials_list_TCC4|✅ proved - incomplete|shostak|0.130|
|prod_polynomials_list_TCC5|✅ proved - incomplete|shostak|0.734|
|prod_polynomials_list_TCC6|✅ proved - incomplete|shostak|0.768|
|prod_polynomials_list_TCC7|✅ proved - incomplete|shostak|0.601|
|prod_polynomials_list_TCC8|✅ proved - incomplete|shostak|2.111|
|TQ_fam_TCC1|✅ proved - incomplete|shostak|0.229|
|TQ_fam_TCC2|✅ proved - incomplete|shostak|0.627|
|TQ_fam_def_TCC1|✅ proved - incomplete|shostak|1.231|
|TQ_fam_def|✅ proved - incomplete|shostak|0.552|
|Sol_TCC1|✅ proved - incomplete|shostak|0.257|
|Sol_all_TCC1|✅ proved - incomplete|shostak|0.264|
|sign_prod_TCC1|✅ proved - complete|shostak|0.030|
|sign_prod_TCC2|✅ proved - incomplete|shostak|3.038|
|sign_prod_eq|✅ proved - incomplete|shostak|0.286|
|sign_ext_pow_TCC1|✅ proved - complete|shostak|0.010|
|sign_ext_pow_TCC2|✅ proved - incomplete|shostak|0.010|
|sign_ext_pow|✅ proved - incomplete|shostak|0.245|
|sign_ext_prod_polynomials_TCC1|✅ proved - incomplete|shostak|0.070|
|sign_ext_prod_polynomials|✅ proved - incomplete|shostak|1.295|
|unsig_TCC1|✅ proved - complete|shostak|0.170|
|sig_unsig|✅ proved - complete|shostak|0.184|
|sig_seq_unsig_seq|✅ proved - complete|shostak|0.200|
|base_3_seq_TCC1|✅ proved - complete|shostak|0.040|
|base_3_seq_TCC2|✅ proved - incomplete|shostak|0.565|
|base_6_seq_TCC1|✅ proved - incomplete|shostak|0.046|
|sig_seq_base_3_onto|✅ proved - incomplete|shostak|1.269|
|sig_seq_base_3_onto_2_TCC1|✅ proved - incomplete|shostak|0.030|
|sig_seq_base_3_onto_2|✅ proved - incomplete|shostak|0.334|
|sig_seq_base_6_onto_TCC1|✅ proved - incomplete|shostak|0.110|
|sig_seq_base_6_onto|✅ proved - incomplete|shostak|1.489|
|sig_seq_base_6_onto_2_TCC1|✅ proved - incomplete|shostak|0.100|
|sig_seq_base_6_onto_2|✅ proved - incomplete|shostak|0.404|
|base_3_seq_unique|✅ proved - incomplete|shostak|0.000|
|base_n_3_seq_unique|✅ proved - incomplete|shostak|0.149|
|union_upto_TCC1|✅ proved - complete|shostak|0.040|
|union_upto_TCC2|✅ proved - complete|shostak|0.030|
|union_upto_TCC3|✅ proved - complete|shostak|0.010|
|union_upto_TCC4|✅ proved - complete|shostak|0.100|
|union_upto_finite|✅ proved - complete|shostak|0.130|
|real_set_disj_union_cards_TCC1|✅ proved - complete|shostak|0.060|
|real_set_disj_union_cards|✅ proved - incomplete|shostak|0.423|
|mult_tarski_query_simple_TCC1|✅ proved - incomplete|shostak|0.040|
|mult_tarski_query_simple|✅ proved - incomplete|shostak|7.027|
|split_index_fun_TCC1|✅ proved - complete|shostak|0.040|
|split_index_fun_TCC2|✅ proved - complete|shostak|0.187|
|split_base6_TCC1|✅ proved - complete|shostak|0.010|
|splits_to_base3|✅ proved - incomplete|shostak|0.079|
|sign_prod_coeff6_TCC1|✅ proved - incomplete|shostak|0.170|
|NSol_seq6_TCC1|✅ proved - incomplete|shostak|0.166|
|mult_tarski_query_simple_6_0_to_3|✅ proved - incomplete|shostak|7.196|
|sign_coeff6_zero_entry_eq|✅ proved - incomplete|shostak|0.040|
|sign_coeff6_zero_TCC1|✅ proved - incomplete|shostak|1.897|
|sigma_disjoinction_6|✅ proved - incomplete|shostak|15.252|
|mult_tarski_query_simple_6_above_2_TCC1|✅ proved - incomplete|shostak|0.040|
|mult_tarski_query_simple_6_above_2|✅ proved - incomplete|shostak|34.287|

## `tarski_query`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|NSol_squared_gt|✅ proved - incomplete|shostak|0.178|
|NSol_squared_lt|✅ proved - incomplete|shostak|0.140|
|NSol_poly1_lt|✅ proved - incomplete|shostak|0.056|
|A3_TCC1|✅ proved - incomplete|shostak|0.070|
|A3_inv_TCC1|✅ proved - incomplete|shostak|0.040|
|A3_inv_TCC2|✅ proved - incomplete|shostak|0.663|
|TQ_vect3_TCC1|✅ proved - complete|shostak|0.010|
|TQ_vect3_TCC2|✅ proved - incomplete|shostak|0.090|
|TQ_vect3_TCC3|✅ proved - incomplete|shostak|0.099|
|TQ_vect3_TCC4|✅ proved - incomplete|shostak|1.309|
|NSol_vect3_TCC1|✅ proved - incomplete|shostak|1.013|
|tarski_query_system_basic_3|✅ proved - incomplete|shostak|6.383|
|A6_TCC1|✅ proved - incomplete|shostak|0.080|
|NSol_vect6_TCC1|✅ proved - incomplete|shostak|2.028|
|tarski_query_system_basic_6|✅ proved - incomplete|shostak|10.687|

## `tarski_query_matrix`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|TQ_vect3k_TCC1|✅ proved - incomplete|shostak|0.147|
|TQ_vect3k_TCC2|✅ proved - incomplete|shostak|0.159|
|TQ_vect6k_TCC1|✅ proved - incomplete|shostak|0.221|
|TQ_vect6k_TCC2|✅ proved - incomplete|shostak|0.180|
|NSol_vect3k_TCC1|✅ proved - incomplete|shostak|0.067|
|NSol_vect3k_TCC2|✅ proved - incomplete|shostak|0.150|
|NSol_vect6k_TCC1|✅ proved - incomplete|shostak|0.070|
|NSol_vect6k_TCC2|✅ proved - incomplete|shostak|0.172|
|A66_inv_TCC1|✅ proved - incomplete|shostak|0.050|
|A66_TCC1|✅ proved - incomplete|shostak|0.050|
|A66_TCC2|✅ proved - incomplete|shostak|0.110|
|multi_sturm_tarski_6by6|✅ proved - incomplete|shostak|6.962|
|multi_sturm_tarski_NSol|✅ proved - incomplete|shostak|2.205|
|A63_TCC1|✅ proved - incomplete|shostak|0.080|
|A63_def|✅ proved - incomplete|shostak|0.020|
|multi_sturm_tarski_NSol63|✅ proved - incomplete|shostak|8.072|

## `poly_systems`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|system_roots_enum|✅ proved - incomplete|shostak|1.411|
|strict_poly_system_solvable_TCC1|✅ proved - incomplete|shostak|0.040|
|strict_poly_system_solvable|✅ proved - incomplete|shostak|0.000|
|A63_tensor_power_mat_row_TCC1|✅ proved - incomplete|shostak|0.050|
|A63_tensor_power_mat_row_TCC2|✅ proved - incomplete|shostak|0.133|
|A63_tensor_power_mat_row_TCC3|✅ proved - incomplete|shostak|0.040|
|A63_tensor_power_mat_row_TCC4|✅ proved - incomplete|shostak|0.020|
|A63_tensor_power_mat_row_TCC5|✅ proved - incomplete|shostak|0.050|
|A63_tensor_power_mat_row_TCC6|✅ proved - incomplete|shostak|0.765|
|A63_tensor_power_mat_row_def_TCC1|✅ proved - incomplete|shostak|0.183|
|A63_tensor_power_mat_row_def|✅ proved - incomplete|shostak|6.895|
|sturm_tarski_solver_slow_basic_TCC1|✅ proved - incomplete|shostak|2.282|

## `system_solvers`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|rows_fun_TCC1|✅ proved - incomplete|shostak|0.050|
|entry_fun_TCC1|✅ proved - incomplete|shostak|0.080|
|entry_fun_TCC2|✅ proved - incomplete|shostak|0.086|
|entry_is|✅ proved - incomplete|shostak|0.766|
|TQlist_fun_TCC1|✅ proved - incomplete|shostak|0.030|
|TQlist_fun_TCC2|✅ proved - incomplete|shostak|0.158|
|TQlist_lem_TCC1|✅ proved - incomplete|shostak|0.040|
|TQlist_lem|✅ proved - incomplete|shostak|0.340|
|sturm_tarski_faster_TCC1|✅ proved - incomplete|shostak|0.109|
|sturm_tarski_faster_TCC2|✅ proved - incomplete|shostak|0.110|
|sturm_tarski_faster_TCC3|✅ proved - incomplete|shostak|0.170|
|sturm_tarski_faster_TCC4|✅ proved - incomplete|shostak|1.467|
|Test1_TCC1|✅ proved - incomplete|shostak|0.428|
|Test1_TCC2|✅ proved - incomplete|shostak|0.325|
|Test2recurse_TCC1|✅ proved - incomplete|shostak|0.080|
|Test2recurse_TCC2|✅ proved - incomplete|shostak|0.060|

## `preprocessing_univariate`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|polynomialDomMonomCoeffOne_TCC1|✅ proved - complete|shostak|0.010|
|polynomialDomMonomCoeffOne_TCC2|✅ proved - complete|shostak|0.010|
|polynomialDomMonomCoeffOne|✅ proved - incomplete|shostak|0.574|
|polynomialDominationCoeff1|✅ proved - incomplete|shostak|0.628|
|polynomialDomLC|✅ proved - incomplete|shostak|0.219|
|polynomialDomLC2|✅ proved - incomplete|shostak|0.289|
|polynomialDomLC3|✅ proved - incomplete|shostak|0.193|
|polynomialDomLC2Neg|✅ proved - incomplete|shostak|0.662|
|polyLCPos|✅ proved - incomplete|shostak|0.310|
|testcase_TCC1|✅ proved - complete|shostak|0.010|
|testcase_TCC2|✅ proved - complete|shostak|0.010|
|testcase|✅ proved - incomplete|shostak|0.753|
|polyLCPosUniv|✅ proved - incomplete|shostak|0.020|
|polyLCNeg|✅ proved - incomplete|shostak|0.092|
|evenPowerEquivalence_TCC1|✅ proved - complete|shostak|0.010|
|evenPowerEquivalence_TCC2|✅ proved - complete|shostak|0.010|
|evenPowerEquivalence|✅ proved - complete|shostak|0.180|
|oddPowerEquivalence_TCC1|✅ proved - complete|shostak|0.060|
|oddPowerEquivalence_TCC2|✅ proved - complete|shostak|0.070|
|oddPowerEquivalence|✅ proved - complete|shostak|0.344|
|polyEvalAtExtReal_TCC1|✅ proved - complete|shostak|0.020|
|polyEvalAtExtReal|✅ proved - incomplete|shostak|0.020|
|polynomialDomMonomCoeffOneOdd|✅ proved - incomplete|shostak|0.252|
|polynomialDomMonomCoeffOneOddNeg|✅ proved - incomplete|shostak|0.260|
|polynomialDomMonomCoeffOneOddNegCoeff|✅ proved - incomplete|shostak|0.392|
|sequenceRelHelper|✅ proved - incomplete|shostak|0.902|
|sequenceRelation|✅ proved - incomplete|shostak|1.639|
|polynomialDomMonomNegEvenDeg_TCC1|✅ proved - incomplete|shostak|0.090|
|polynomialDomMonomNegEvenDeg|✅ proved - incomplete|shostak|0.346|
|polynomialDomMonomNegEvenDeg1_TCC1|✅ proved - incomplete|shostak|0.100|
|polynomialDomMonomNegEvenDeg1|✅ proved - incomplete|shostak|0.181|
|polynomialOddDegLessThanZero|✅ proved - incomplete|shostak|1.356|
|polynomialOddDegGreaterThanZero|✅ proved - incomplete|shostak|1.957|
|polynomialOddDegGreaterThanZero1|✅ proved - incomplete|shostak|1.437|
|polyOddDegPos|✅ proved - incomplete|shostak|0.300|
|polyOddDegNeg|✅ proved - incomplete|shostak|0.142|
|polyOddDegZero|✅ proved - incomplete|shostak|0.172|
|figuringOutModsBidir|✅ proved - incomplete|shostak|0.180|
|polyPlugInZero|✅ proved - incomplete|shostak|0.353|
|preprocessingLemma1_TCC1|✅ proved - incomplete|shostak|0.030|
|preprocessingLemma1|✅ proved - incomplete|shostak|0.040|
|preprocessingLemma2|✅ proved - incomplete|shostak|0.805|
|preprocessingLemma3|✅ proved - incomplete|shostak|0.300|
|preprocessingLemma4|✅ proved - incomplete|shostak|0.352|
|preprocessingLemmaOddGeneralize|✅ proved - incomplete|shostak|2.206|
|preprocessingLemma5|✅ proved - incomplete|shostak|0.030|
|preprocessingTheorem|✅ proved - incomplete|shostak|0.085|
|polyLCPosConj|✅ proved - incomplete|shostak|0.679|
|polyLCNegConj|✅ proved - incomplete|shostak|0.517|
|preprocessingConjLemmaOddGeneralize|✅ proved - incomplete|shostak|0.301|
|preprocessingConjLC|✅ proved - incomplete|shostak|2.371|
|preprocessingConjLemma5|✅ proved - incomplete|shostak|0.029|
|preprocessingConjTheorem|✅ proved - incomplete|shostak|0.140|
|sum_squares_rec_TCC1|✅ proved - complete|shostak|0.047|
|sum_squares_rec_TCC2|✅ proved - incomplete|shostak|0.100|
|sum_squares_rec_TCC3|✅ proved - complete|shostak|0.050|
|sum_squares_TCC1|✅ proved - incomplete|shostak|0.010|

## `poly_system_strategy`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|first_eq_TCC1|✅ proved - complete|shostak|0.020|
|first_eq_TCC2|✅ proved - incomplete|shostak|0.030|
|first_eq_TCC3|✅ proved - incomplete|shostak|0.103|
|first_eq_TCC4|✅ proved - incomplete|shostak|0.100|
|first_eq_TCC5|✅ proved - incomplete|shostak|0.080|
|first_eq_TCC6|✅ proved - incomplete|shostak|0.030|
|first_eq_TCC7|✅ proved - complete|shostak|0.020|
|greatify_poly_TCC1|✅ proved - complete|shostak|0.070|
|greatify_rel_TCC1|✅ proved - complete|shostak|0.020|
|greatify_def_TCC1|✅ proved - complete|shostak|0.100|
|greatify_def|✅ proved - incomplete|shostak|0.429|
|compute_solvable_single_TCC1|✅ proved - incomplete|shostak|0.030|
|compute_solvable_single_TCC2|✅ proved - incomplete|shostak|0.348|
|compute_solvable_single_TCC3|✅ proved - incomplete|shostak|0.400|
|compute_solvable_single_TCC4|✅ proved - incomplete|shostak|0.120|
|compute_solvable_single_TCC5|✅ proved - incomplete|shostak|0.130|
|compute_solvable_single_def|✅ proved - incomplete|shostak|0.000|
|poly_deriv_integer|✅ proved - complete|shostak|0.070|
|compute_solvable_TCC1|✅ proved - incomplete|shostak|0.139|
|compute_solvable_TCC2|✅ proved - incomplete|shostak|0.193|
|compute_solvable_TCC3|✅ proved - incomplete|shostak|0.221|
|compute_solvable_TCC4|✅ proved - incomplete|shostak|0.295|
|compute_solvable_TCC5|✅ proved - incomplete|shostak|0.133|
|compute_solvable_TCC6|✅ proved - incomplete|shostak|0.110|
|compute_solvable_TCC7|✅ proved - incomplete|shostak|1.302|
|compute_solvable_TCC8|✅ proved - incomplete|shostak|0.230|
|compute_solvable_new_TCC1|✅ proved - incomplete|shostak|0.292|
|compute_solvable_new_TCC2|✅ proved - incomplete|shostak|1.132|
|compute_solvable_new_TCC3|✅ proved - incomplete|shostak|0.171|
|preprocessing_better1|✅ proved - incomplete|shostak|1.928|
|compute_solvable_improved|✅ proved - incomplete|shostak|1.852|
|compute_solvable_def|✅ proved - incomplete|shostak|9.854|
|compute_solvable_new_def|✅ proved - incomplete|shostak|0.040|
|poly_system_list_TCC1|✅ proved - incomplete|shostak|0.071|
|poly_system_list_TCC2|✅ proved - incomplete|shostak|0.150|
|poly_system_list_TCC3|✅ proved - incomplete|shostak|0.976|
|tarski_TCC1|✅ proved - incomplete|shostak|0.122|
|tarski_TCC2|✅ proved - incomplete|shostak|0.509|
|tarski_TCC3|✅ proved - incomplete|shostak|0.846|
|tarski_TCC4|✅ proved - incomplete|shostak|0.279|
|tarski_def|✅ proved - incomplete|shostak|0.989|

## `dnf_polynomials`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|eval_TCC1|✅ proved - complete|shostak|0.050|
|eval_TCC2|✅ proved - complete|shostak|0.040|
|eval_TCC3|✅ proved - complete|shostak|0.040|
|eval_TCC4|✅ proved - complete|shostak|0.051|
|eval_TCC5|✅ proved - complete|shostak|0.030|
|eval_TCC6|✅ proved - complete|shostak|0.040|
|eval_TCC7|✅ proved - complete|shostak|0.050|
|eval_TCC8|✅ proved - complete|shostak|0.039|
|eval_TCC9|✅ proved - complete|shostak|0.050|
|eval_TCC10|✅ proved - complete|shostak|0.040|
|eval_TCC11|✅ proved - complete|shostak|0.040|
|eval_TCC12|✅ proved - complete|shostak|0.060|
|eval_TCC13|✅ proved - complete|shostak|0.050|
|eval_TCC14|✅ proved - complete|shostak|0.060|
|eval_atm_list_TCC1|✅ proved - complete|shostak|0.020|
|eval_atm_list_TCC2|✅ proved - incomplete|shostak|0.169|
|eval_TCC15|✅ proved - complete|shostak|0.020|
|eval_TCC16|✅ proved - incomplete|shostak|0.100|
|degr_rec_TCC1|✅ proved - complete|shostak|0.010|
|degr_rec_TCC2|✅ proved - complete|shostak|0.020|
|degr_rec_TCC3|✅ proved - incomplete|shostak|0.030|
|degr_rec_TCC4|✅ proved - complete|shostak|0.010|
|degr_rec_TCC5|✅ proved - incomplete|shostak|0.048|
|degr_rec_lemma|✅ proved - incomplete|shostak|0.100|
|degr_rec_change_function|✅ proved - incomplete|shostak|0.090|
|construct_record_TCC1|✅ proved - incomplete|shostak|0.120|
|depth_TCC1|✅ proved - complete|shostak|0.050|
|depth_TCC2|✅ proved - complete|shostak|0.040|
|depth_TCC3|✅ proved - complete|shostak|0.050|
|depth_TCC4|✅ proved - complete|shostak|0.040|
|depth_TCC5|✅ proved - complete|shostak|0.050|
|depth_TCC6|✅ proved - complete|shostak|0.050|
|abs_nnf_rel_preserves_truth|✅ proved - incomplete|shostak|0.398|
|abs_nnf_rel_pnot_preserves_truth|✅ proved - incomplete|shostak|0.110|
|nnf_TCC1|✅ proved - incomplete|shostak|0.102|
|nnf_TCC2|✅ proved - incomplete|shostak|0.100|
|nnf_TCC3|✅ proved - incomplete|shostak|0.100|
|nnf_TCC4|✅ proved - incomplete|shostak|0.100|
|nnf_TCC5|✅ proved - incomplete|shostak|0.131|
|nnf_TCC6|✅ proved - incomplete|shostak|0.140|
|nnf_TCC7|✅ proved - incomplete|shostak|0.120|
|nnf_TCC8|✅ proved - incomplete|shostak|0.140|
|nnf_TCC9|✅ proved - incomplete|shostak|0.090|
|nnf_TCC10|✅ proved - incomplete|shostak|0.130|
|nnf_TCC11|✅ proved - incomplete|shostak|0.133|
|nnf_TCC12|✅ proved - incomplete|shostak|0.130|
|nnf_TCC13|✅ proved - incomplete|shostak|0.130|
|nnf_TCC14|✅ proved - incomplete|shostak|0.228|
|nnf_TCC15|✅ proved - incomplete|shostak|0.240|
|nnf_TCC16|✅ proved - incomplete|shostak|0.231|
|nnf_TCC17|✅ proved - incomplete|shostak|0.230|
|nnf_TCC18|✅ proved - incomplete|shostak|0.252|
|nnf_TCC19|✅ proved - incomplete|shostak|0.240|
|nnf_TCC20|✅ proved - incomplete|shostak|0.249|
|nnf_TCC21|✅ proved - incomplete|shostak|0.250|
|nnf_TCC22|✅ proved - incomplete|shostak|0.110|
|nnf_TCC23|✅ proved - incomplete|shostak|0.097|
|nnf_TCC24|✅ proved - incomplete|shostak|0.100|
|nnf_TCC25|✅ proved - incomplete|shostak|0.100|
|nnf_TCC26|✅ proved - incomplete|shostak|0.215|
|nnf_TCC27|✅ proved - incomplete|shostak|0.210|
|nnf_TCC28|✅ proved - incomplete|shostak|0.210|
|nnf_TCC29|✅ proved - incomplete|shostak|0.219|
|nnf_TCC30|✅ proved - incomplete|shostak|0.210|
|nnf_TCC31|✅ proved - incomplete|shostak|0.190|
|nnf_TCC32|✅ proved - incomplete|shostak|0.190|
|nnf_TCC33|✅ proved - incomplete|shostak|0.200|
|nnf_not_has_special_form|✅ proved - incomplete|shostak|4.525|
|nnf_has_special_form|✅ proved - incomplete|shostak|0.198|
|pull_out_conjunctions_TCC1|✅ proved - complete|shostak|0.020|
|pull_out_conjunctions_TCC2|✅ proved - complete|shostak|0.020|
|pull_out_conjunctions_TCC3|✅ proved - complete|shostak|0.020|
|length_pull_out_conjunctions|✅ proved - incomplete|shostak|0.348|
|conjunct_element_TCC1|✅ proved - complete|shostak|0.041|
|conjunct_element_TCC2|✅ proved - complete|shostak|0.030|
|conjunct_element_TCC3|✅ proved - incomplete|shostak|0.090|
|conjunct_lists_TCC1|✅ proved - complete|shostak|0.020|
|conjunct_lists_TCC2|✅ proved - incomplete|shostak|0.090|
|length_conjunct_lists|✅ proved - incomplete|shostak|0.240|
|form_disjunction_TCC1|✅ proved - incomplete|shostak|0.060|
|form_disjunction_TCC2|✅ proved - incomplete|shostak|0.060|
|form_disjunction_TCC3|✅ proved - incomplete|shostak|0.203|
|form_disjunction_TCC4|✅ proved - incomplete|shostak|0.200|
|form_disjunction_TCC5|✅ proved - complete|shostak|0.040|
|distribute_ands_TCC1|✅ proved - complete|shostak|0.020|
|distribute_ands_TCC2|✅ proved - complete|shostak|0.020|
|distribute_ands_TCC3|✅ proved - complete|shostak|0.030|
|distribute_ands_TCC4|✅ proved - complete|shostak|0.052|
|distribute_ands_TCC5|✅ proved - complete|shostak|0.060|
|distribute_ands_TCC6|✅ proved - incomplete|shostak|0.621|
|distribute_ands_TCC7|✅ proved - complete|shostak|0.020|
|distribute_ands_TCC8|✅ proved - complete|shostak|0.069|
|conjunct_element_prop|✅ proved - incomplete|shostak|0.120|
|conjunct_lists_prop|✅ proved - incomplete|shostak|0.150|
|conjunct_elements_truth_prop|✅ proved - incomplete|shostak|0.554|
|conjunct_truth_prop|✅ proved - incomplete|shostak|0.485|
|form_disjunction_prop|✅ proved - incomplete|shostak|1.767|
|distrib_ands_special_form|✅ proved - incomplete|shostak|0.412|
|special_form_conjunct|✅ proved - incomplete|shostak|0.030|
|form_disjunction_eval|✅ proved - incomplete|shostak|0.733|
|pull_out_conjunctions_eval|✅ proved - incomplete|shostak|1.471|
|form_disjunction_truth_TCC1|✅ proved - incomplete|shostak|0.020|
|form_disjunction_truth|✅ proved - incomplete|shostak|0.048|
|dnf_TCC1|✅ proved - incomplete|shostak|0.010|
|nnf_pnot_preserves_truth|✅ proved - incomplete|shostak|7.646|
|nnf_preserves_truth|✅ proved - incomplete|shostak|0.000|
|distribute_pand_preserves_truth_new_TCC1|✅ proved - complete|shostak|0.010|
|distribute_pand_preserves_truth_new|✅ proved - incomplete|shostak|0.183|
|distribute_ands_preserves_truth|✅ proved - incomplete|shostak|0.648|
|dnf_const_preserves_truth|✅ proved - incomplete|shostak|0.331|
|dnf_const_preserves_truth_1_TCC1|✅ proved - complete|shostak|0.030|
|dnf_const_preserves_truth_1|✅ proved - incomplete|shostak|0.323|
|eval_rel_preserves_truth|✅ proved - incomplete|shostak|0.152|
|dnf_prel_preserves_truth_len1_TCC1|✅ proved - complete|shostak|0.020|
|dnf_prel_preserves_truth_len1|✅ proved - incomplete|shostak|7.107|
|dnf_prel_preserves_truth_len0|✅ proved - incomplete|shostak|1.285|
|dnf_prel_preserves_truth|✅ proved - incomplete|shostak|1.067|
|dnf_prel_preserves_truth2_TCC1|✅ proved - complete|shostak|0.030|
|dnf_prel_preserves_truth2|✅ proved - incomplete|shostak|0.060|
|dnf_special_form|✅ proved - incomplete|shostak|0.080|
|construct_dnf_length|✅ proved - incomplete|shostak|0.500|
|construct_dnf_car_length_TCC1|✅ proved - incomplete|shostak|0.060|
|construct_dnf_car_length|✅ proved - incomplete|shostak|0.744|
|has_no_ors_prop_TCC1|✅ proved - incomplete|shostak|0.070|
|has_no_ors_prop|✅ proved - incomplete|shostak|1.111|
|eval_atm_list_truth|✅ proved - incomplete|shostak|0.423|
|eval_atm_list_prop|✅ proved - incomplete|shostak|0.409|
|has_no_ors_dnf_prop|✅ proved - incomplete|shostak|0.240|
|construction_lemma_1|✅ proved - incomplete|shostak|0.375|
|construction_lemma_2|✅ proved - incomplete|shostak|0.331|
|dnf_preserves_truth|✅ proved - incomplete|shostak|1.121|

## `dnf_strategy`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|remove_constants_rec_TCC1|✅ proved - complete|shostak|0.030|
|remove_constants_rec_TCC2|✅ proved - incomplete|shostak|0.150|
|remove_constants_rec_TCC3|✅ proved - incomplete|shostak|0.060|
|when_not_none|✅ proved - incomplete|shostak|0.126|
|relation_remove_constants_rec|✅ proved - incomplete|shostak|0.300|
|remove_constants_TCC1|✅ proved - incomplete|shostak|1.401|
|relation_remove_constants_single|✅ proved - incomplete|shostak|0.050|
|relation_remove_constants_null_TCC1|✅ proved - incomplete|shostak|0.037|
|relation_remove_constants_null_TCC2|✅ proved - incomplete|shostak|0.060|
|relation_remove_constants_null|✅ proved - incomplete|shostak|0.413|
|relation_remove_constants_TCC1|✅ proved - incomplete|shostak|0.040|
|relation_remove_constants|✅ proved - incomplete|shostak|0.812|
|eval_truth|✅ proved - incomplete|shostak|0.070|
|degr_lemma|✅ proved - incomplete|shostak|0.315|
|eval_remove_constants_none|✅ proved - incomplete|shostak|0.230|
|eval_remove_constants|✅ proved - incomplete|shostak|0.332|
|conj_to_tarski_TCC1|✅ proved - incomplete|shostak|0.030|
|conj_to_tarski_TCC2|✅ proved - incomplete|shostak|0.083|
|conj_to_tarski_TCC3|✅ proved - incomplete|shostak|0.090|
|conj_to_tarski_TCC4|✅ proved - incomplete|shostak|0.092|
|conj_to_tarski_TCC5|✅ proved - incomplete|shostak|0.392|
|satisfiability_relation_TCC1|✅ proved - incomplete|shostak|0.040|
|satisfiability_relation|✅ proved - incomplete|shostak|0.672|
|satisfiability_relation_system_TCC1|✅ proved - incomplete|shostak|0.070|
|satisfiability_relation_system_TCC2|✅ proved - incomplete|shostak|0.160|
|satisfiability_relation_system|✅ proved - incomplete|shostak|4.285|
|conj_to_tarski_sound|✅ proved - incomplete|shostak|1.694|
|dnf_eval_truth|✅ proved - incomplete|shostak|0.000|
|rel_to_tarski_sound|✅ proved - incomplete|shostak|0.144|

## `hutch`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Eq_computed_remainder_seq?_TCC1|✅ proved - incomplete|shostak|0.047|
|Eq_computed_remainder_seq?_TCC2|✅ proved - complete|shostak|0.080|
|Eq_computed_remainder_seq?_TCC3|✅ proved - incomplete|shostak|0.130|
|sturm_chain_list_TCC1|✅ proved - incomplete|shostak|0.307|
|decidable_interval_TCC1|✅ proved - incomplete|shostak|0.575|
|decidable_interval_TCC2|✅ proved - incomplete|shostak|0.546|
|decidable_interval_TCC3|✅ proved - incomplete|shostak|0.429|
|sum_square_zero_havers_TCC1|✅ proved - incomplete|shostak|0.060|
|sum_square_zero_havers_TCC2|✅ proved - incomplete|shostak|0.022|
|sum_square_zero_havers_TCC3|✅ proved - incomplete|shostak|0.383|
|sum_square_zero_havers_def|✅ proved - incomplete|shostak|8.440|
|decidable_interval_sq_TCC1|✅ proved - incomplete|shostak|0.491|
|decidable_interval_sq_TCC2|✅ proved - incomplete|shostak|0.482|
|decidable_interval_sq_TCC3|✅ proved - incomplete|shostak|0.428|
|decidable_interval_sq_TCC4|✅ proved - incomplete|shostak|0.150|
|decidable_interval_sq_TCC5|✅ proved - incomplete|shostak|0.138|
|decidable_interval_sq_TCC6|✅ proved - incomplete|shostak|0.100|
|decidable_interval_sq_TCC7|✅ proved - incomplete|shostak|0.249|
|decidable_interval_sq_TCC8|✅ proved - incomplete|shostak|0.259|
|decidable_interval_sq_TCC9|✅ proved - incomplete|shostak|0.050|
|decidable_interval_def_TCC1|✅ proved - incomplete|shostak|0.471|
|decidable_interval_def_TCC2|✅ proved - incomplete|shostak|0.817|
|decidable_interval_def|✅ proved - incomplete|shostak|7.283|
|decide_interval_def_TCC1|✅ proved - incomplete|shostak|0.276|
|decide_interval_def_TCC2|✅ proved - incomplete|shostak|0.080|
|decide_interval_def|✅ proved - incomplete|shostak|0.000|
|decidable_intervals_exist_TCC1|✅ proved - incomplete|shostak|0.403|
|decidable_intervals_exist|✅ proved - incomplete|shostak|3.996|
|decidable_intervals_sq_exist|✅ proved - incomplete|shostak|5.391|
|hutch_int_meas_TCC1|✅ proved - incomplete|shostak|0.040|
|hutch_int_meas_TCC2|✅ proved - incomplete|shostak|0.401|
|hutch_int_meas_TCC3|✅ proved - incomplete|shostak|0.289|
|hutch_int_meas_TCC4|✅ proved - incomplete|shostak|1.476|
|signs_upd_TCC1|✅ proved - incomplete|shostak|0.446|
|signs_upd_TCC2|✅ proved - incomplete|shostak|0.418|
|signs_upd_TCC3|✅ proved - incomplete|shostak|0.508|
|signs_upd_sound|✅ proved - incomplete|shostak|2.328|
|hutch_int_basic_TCC1|✅ proved - incomplete|shostak|0.048|
|hutch_int_basic_TCC2|✅ proved - incomplete|shostak|0.295|
|hutch_int_basic_TCC3|✅ proved - incomplete|shostak|0.111|
|hutch_int_basic_TCC4|✅ proved - incomplete|shostak|0.127|
|hutch_int_basic_TCC5|✅ proved - incomplete|shostak|0.000|
|hutch_int_basic_TCC6|✅ proved - incomplete|shostak|0.251|
|hutch_int_basic_TCC7|✅ proved - incomplete|shostak|0.175|
|hutch_int_basic_TCC8|✅ proved - incomplete|shostak|3.824|
|hutch_int_basic_TCC9|✅ proved - incomplete|shostak|0.582|
|Knuth_total_TCC1|✅ proved - incomplete|shostak|0.040|
|Knuth_total_TCC2|✅ proved - incomplete|shostak|0.050|
|Knuth_total_TCC3|✅ proved - incomplete|shostak|0.041|
|Knuth_total_TCC4|✅ proved - incomplete|shostak|0.050|
|Knuth_total_TCC5|✅ proved - complete|shostak|0.020|
|hutch_int_TCC1|✅ proved - incomplete|shostak|0.204|
|hutch_int_TCC2|✅ proved - incomplete|shostak|0.601|
|hutch_int_TCC3|✅ proved - incomplete|shostak|3.068|
|hutch_int_TCC4|✅ proved - incomplete|shostak|1.120|
|hutch_int_TCC5|✅ proved - incomplete|shostak|14.814|
|hutch_int_TCC6|✅ proved - incomplete|shostak|0.821|
|hutch_int_TCC7|✅ proved - incomplete|shostak|3.036|
|hutch_int_TCC8|✅ proved - incomplete|shostak|1.409|
|hutch_int_TCC9|✅ proved - incomplete|shostak|0.500|
|hutch_int_def|✅ proved - incomplete|shostak|0.000|
|poly_system_list_TCC1|✅ proved - incomplete|shostak|0.080|
|poly_system_list_TCC2|✅ proved - incomplete|shostak|0.160|
|poly_system_list_TCC3|✅ proved - incomplete|shostak|0.990|
|hutch_TCC1|✅ proved - incomplete|shostak|0.130|
|hutch_TCC2|✅ proved - incomplete|shostak|0.539|
|hutch_TCC3|✅ proved - incomplete|shostak|0.840|
|hutch_TCC4|✅ proved - incomplete|shostak|0.290|
|hutch_def|✅ proved - incomplete|shostak|3.876|
|test_TCC1|✅ proved - complete|shostak|0.020|
|test|✅ proved - incomplete|shostak|7.191|

## `strategies`
No formula declaration found.## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib/pvsio_utils/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230712-static-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230710-tcc-gen.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230707-defattach.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230706-extrategies.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`|
