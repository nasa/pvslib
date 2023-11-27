# Summary for `Tarski`
Run started at 18:53:45 11/24/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **513**   | **513**    | **513**    | **0**  | **4:45.239 s**   |
|top|0|0|0|0|0.000|
|sturmtarski|36|36|36|0|32.008|
|compute_sturm_tarski|22|22|22|0|18.173|
|poly_families|67|67|67|0|58.759|
|tarski_query|15|15|15|0|21.205|
|tarski_query_matrix|16|16|16|0|11.797|
|poly_systems|12|12|12|0|10.229|
|system_solvers|16|16|16|0|2.930|
|preprocessing_univariate|57|57|57|0|15.539|
|poly_system_strategy|41|41|41|0|20.761|
|dnf_polynomials|131|131|131|0|33.511|
|dnf_strategy|29|29|29|0|8.731|
|hutch|71|71|71|0|51.596|
|strategies|0|0|0|0|0.000|
## Detailed Summary 
## `top`
No formula declaration found.
## `sturmtarski`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|constructed_sturm_sequence?_TCC1|✅ proved - complete|shostak|0.104|
|constructed_sturm_sequence?_TCC2|✅ proved - complete|shostak|0.010|
|constructed_sturm_sequence?_TCC3|✅ proved - complete|shostak|0.040|
|constructed_sturm_sequence?_TCC4|✅ proved - incomplete|shostak|0.094|
|constructed_sturm_sequence?_TCC5|✅ proved - incomplete|shostak|0.110|
|constructed_sturm_sequence?_TCC6|✅ proved - incomplete|shostak|0.101|
|constructed_sturm_seq_repeated_root|✅ proved - incomplete|shostak|0.915|
|default_root_degree?_TCC1|✅ proved - incomplete|shostak|0.172|
|default_root_degree?_TCC2|✅ proved - incomplete|shostak|0.050|
|constructed_sturm_seq_root_degrees_TCC1|✅ proved - incomplete|shostak|0.401|
|constructed_sturm_seq_root_degrees|✅ proved - incomplete|shostak|0.489|
|default_root_deg_TCC1|✅ proved - incomplete|shostak|0.150|
|default_root_deg_def|✅ proved - incomplete|shostak|0.090|
|constructed_sturm_seq_root_degree_lower_bound|✅ proved - incomplete|shostak|1.902|
|sturm_tarski_basic_1|✅ proved - incomplete|shostak|2.891|
|sturm_tarski_basic_2|✅ proved - incomplete|shostak|1.376|
|sturm_tarski_basic_3|✅ proved - incomplete|shostak|6.031|
|sturm_tarski_basic_TCC1|✅ proved - incomplete|shostak|0.070|
|sturm_tarski_basic|✅ proved - incomplete|shostak|9.664|
|constructed_sturm_roots_between_enum_TCC1|✅ proved - incomplete|shostak|0.060|
|constructed_sturm_roots_between_enum_TCC2|✅ proved - incomplete|shostak|0.050|
|constructed_sturm_roots_between_enum|✅ proved - incomplete|shostak|1.271|
|Sol_TCC1|✅ proved - incomplete|shostak|0.089|
|Sol_union_top|✅ proved - incomplete|shostak|0.075|
|NSol_TCC1|✅ proved - incomplete|shostak|0.030|
|NSol_union_top|✅ proved - incomplete|shostak|0.344|
|sturm_tarski_TCC1|✅ proved - incomplete|shostak|0.080|
|sturm_tarski_TCC2|✅ proved - incomplete|shostak|0.425|
|sturm_tarski|✅ proved - incomplete|shostak|4.179|
|Sol_TCC2|✅ proved - incomplete|shostak|0.040|
|NSol_TCC2|✅ proved - incomplete|shostak|0.150|
|sturm_tarski_unbounded_TCC1|✅ proved - incomplete|shostak|0.050|
|sturm_tarski_unbounded_TCC2|✅ proved - incomplete|shostak|0.176|
|sturm_tarski_unbounded|✅ proved - incomplete|shostak|0.000|
|NSol_sq_gt|✅ proved - incomplete|shostak|0.229|
|NSol_sq_lt|✅ proved - incomplete|shostak|0.100|

## `compute_sturm_tarski`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|der_prod_TCC1|✅ proved - complete|shostak|0.010|
|der_prod_TCC2|✅ proved - incomplete|shostak|0.171|
|finite_bij_real_remove_one|✅ proved - complete|shostak|0.197|
|finite_bij_real_remove_two|✅ proved - complete|shostak|0.437|
|computed_sturm_spec_TCC1|✅ proved - incomplete|shostak|0.130|
|computed_sturm_spec_TCC2|✅ proved - incomplete|shostak|0.439|
|computed_sturm_spec_TCC3|✅ proved - incomplete|shostak|0.518|
|computed_sturm_spec_TCC4|✅ proved - incomplete|shostak|0.110|
|computed_sturm_spec_TCC5|✅ proved - incomplete|shostak|0.509|
|computed_sturm_spec|✅ proved - incomplete|shostak|9.464|
|Eq_computed_remainder?_TCC1|✅ proved - complete|shostak|0.039|
|Eq_computed_remainder?_TCC2|✅ proved - incomplete|shostak|0.135|
|compute_TQ_param_TCC1|✅ proved - incomplete|shostak|0.157|
|compute_TQ_param_TCC2|✅ proved - incomplete|shostak|0.204|
|compute_TQ_param_TCC3|✅ proved - incomplete|shostak|0.193|
|compute_TQ_param_TCC4|✅ proved - incomplete|shostak|0.224|
|compute_TQ_param_TCC5|✅ proved - incomplete|shostak|0.224|
|TQ_TCC1|✅ proved - complete|shostak|0.030|
|TQ_TCC2|✅ proved - incomplete|shostak|0.133|
|TQ_TCC3|✅ proved - incomplete|shostak|0.637|
|TQ_def|✅ proved - incomplete|shostak|4.094|
|TQ_eq_g|✅ proved - incomplete|shostak|0.118|

## `poly_families`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|polynomial_prod_int|✅ proved - incomplete|shostak|0.060|
|sigma_j|✅ proved - incomplete|shostak|0.182|
|prod_polynomials_TCC1|✅ proved - incomplete|shostak|0.000|
|prod_polynomials_TCC2|✅ proved - incomplete|shostak|0.020|
|prod_polynomials_TCC3|✅ proved - complete|shostak|0.010|
|prod_polynomials_TCC4|✅ proved - incomplete|shostak|0.035|
|prod_polynomials_TCC5|✅ proved - incomplete|shostak|0.020|
|prod_polynomials_TCC6|✅ proved - incomplete|shostak|0.103|
|prod_polynomials_TCC7|✅ proved - incomplete|shostak|2.513|
|prod_polynomials_list_TCC1|✅ proved - incomplete|shostak|0.070|
|prod_polynomials_list_TCC2|✅ proved - incomplete|shostak|0.145|
|prod_polynomials_list_TCC3|✅ proved - incomplete|shostak|0.514|
|prod_polynomials_list_TCC4|✅ proved - incomplete|shostak|0.080|
|prod_polynomials_list_TCC5|✅ proved - incomplete|shostak|0.503|
|prod_polynomials_list_TCC6|✅ proved - incomplete|shostak|0.523|
|prod_polynomials_list_TCC7|✅ proved - incomplete|shostak|0.424|
|prod_polynomials_list_TCC8|✅ proved - incomplete|shostak|1.455|
|TQ_fam_TCC1|✅ proved - incomplete|shostak|0.160|
|TQ_fam_TCC2|✅ proved - incomplete|shostak|0.416|
|TQ_fam_def_TCC1|✅ proved - incomplete|shostak|0.000|
|TQ_fam_def|✅ proved - incomplete|shostak|0.378|
|Sol_TCC1|✅ proved - incomplete|shostak|0.169|
|Sol_all_TCC1|✅ proved - incomplete|shostak|0.188|
|sign_prod_TCC1|✅ proved - complete|shostak|0.021|
|sign_prod_TCC2|✅ proved - incomplete|shostak|2.085|
|sign_prod_eq|✅ proved - incomplete|shostak|0.211|
|sign_ext_pow_TCC1|✅ proved - complete|shostak|0.010|
|sign_ext_pow_TCC2|✅ proved - incomplete|shostak|0.010|
|sign_ext_pow|✅ proved - incomplete|shostak|0.180|
|sign_ext_prod_polynomials_TCC1|✅ proved - incomplete|shostak|0.050|
|sign_ext_prod_polynomials|✅ proved - incomplete|shostak|0.877|
|unsig_TCC1|✅ proved - complete|shostak|0.120|
|sig_unsig|✅ proved - complete|shostak|0.126|
|sig_seq_unsig_seq|✅ proved - complete|shostak|0.140|
|base_3_seq_TCC1|✅ proved - complete|shostak|0.020|
|base_3_seq_TCC2|✅ proved - incomplete|shostak|0.367|
|base_6_seq_TCC1|✅ proved - incomplete|shostak|0.030|
|sig_seq_base_3_onto|✅ proved - incomplete|shostak|0.864|
|sig_seq_base_3_onto_2_TCC1|✅ proved - incomplete|shostak|0.010|
|sig_seq_base_3_onto_2|✅ proved - incomplete|shostak|0.233|
|sig_seq_base_6_onto_TCC1|✅ proved - incomplete|shostak|0.065|
|sig_seq_base_6_onto|✅ proved - incomplete|shostak|1.024|
|sig_seq_base_6_onto_2_TCC1|✅ proved - incomplete|shostak|0.064|
|sig_seq_base_6_onto_2|✅ proved - incomplete|shostak|0.276|
|base_3_seq_unique|✅ proved - incomplete|shostak|0.904|
|base_n_3_seq_unique|✅ proved - incomplete|shostak|0.076|
|union_upto_TCC1|✅ proved - complete|shostak|0.030|
|union_upto_TCC2|✅ proved - complete|shostak|0.020|
|union_upto_TCC3|✅ proved - complete|shostak|0.000|
|union_upto_TCC4|✅ proved - complete|shostak|0.060|
|union_upto_finite|✅ proved - complete|shostak|0.082|
|real_set_disj_union_cards_TCC1|✅ proved - complete|shostak|0.050|
|real_set_disj_union_cards|✅ proved - incomplete|shostak|0.285|
|mult_tarski_query_simple_TCC1|✅ proved - incomplete|shostak|0.020|
|mult_tarski_query_simple|✅ proved - incomplete|shostak|4.993|
|split_index_fun_TCC1|✅ proved - complete|shostak|0.034|
|split_index_fun_TCC2|✅ proved - complete|shostak|0.126|
|split_base6_TCC1|✅ proved - complete|shostak|0.010|
|splits_to_base3|✅ proved - incomplete|shostak|0.050|
|sign_prod_coeff6_TCC1|✅ proved - incomplete|shostak|0.113|
|NSol_seq6_TCC1|✅ proved - incomplete|shostak|0.120|
|mult_tarski_query_simple_6_0_to_3|✅ proved - incomplete|shostak|0.257|
|sign_coeff6_zero_entry_eq|✅ proved - incomplete|shostak|0.026|
|sign_coeff6_zero_TCC1|✅ proved - incomplete|shostak|1.337|
|sigma_disjoinction_6|✅ proved - incomplete|shostak|10.984|
|mult_tarski_query_simple_6_above_2_TCC1|✅ proved - incomplete|shostak|0.024|
|mult_tarski_query_simple_6_above_2|✅ proved - incomplete|shostak|24.407|

## `tarski_query`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|NSol_squared_gt|✅ proved - incomplete|shostak|0.155|
|NSol_squared_lt|✅ proved - incomplete|shostak|0.100|
|NSol_poly1_lt|✅ proved - incomplete|shostak|0.035|
|A3_TCC1|✅ proved - incomplete|shostak|0.040|
|A3_inv_TCC1|✅ proved - incomplete|shostak|0.020|
|A3_inv_TCC2|✅ proved - incomplete|shostak|0.488|
|TQ_vect3_TCC1|✅ proved - complete|shostak|0.010|
|TQ_vect3_TCC2|✅ proved - incomplete|shostak|0.060|
|TQ_vect3_TCC3|✅ proved - incomplete|shostak|0.068|
|TQ_vect3_TCC4|✅ proved - incomplete|shostak|0.894|
|NSol_vect3_TCC1|✅ proved - incomplete|shostak|0.695|
|tarski_query_system_basic_3|✅ proved - incomplete|shostak|4.410|
|A6_TCC1|✅ proved - incomplete|shostak|0.050|
|NSol_vect6_TCC1|✅ proved - incomplete|shostak|1.436|
|tarski_query_system_basic_6|✅ proved - incomplete|shostak|12.744|

## `tarski_query_matrix`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|TQ_vect3k_TCC1|✅ proved - incomplete|shostak|0.103|
|TQ_vect3k_TCC2|✅ proved - incomplete|shostak|0.120|
|TQ_vect6k_TCC1|✅ proved - incomplete|shostak|0.164|
|TQ_vect6k_TCC2|✅ proved - incomplete|shostak|0.145|
|NSol_vect3k_TCC1|✅ proved - incomplete|shostak|0.060|
|NSol_vect3k_TCC2|✅ proved - incomplete|shostak|0.126|
|NSol_vect6k_TCC1|✅ proved - incomplete|shostak|0.060|
|NSol_vect6k_TCC2|✅ proved - incomplete|shostak|0.117|
|A66_inv_TCC1|✅ proved - incomplete|shostak|0.040|
|A66_TCC1|✅ proved - incomplete|shostak|0.040|
|A66_TCC2|✅ proved - incomplete|shostak|0.070|
|multi_sturm_tarski_6by6|✅ proved - incomplete|shostak|4.853|
|multi_sturm_tarski_NSol|✅ proved - incomplete|shostak|0.000|
|A63_TCC1|✅ proved - incomplete|shostak|0.049|
|A63_def|✅ proved - incomplete|shostak|0.010|
|multi_sturm_tarski_NSol63|✅ proved - incomplete|shostak|5.840|

## `poly_systems`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|system_roots_enum|✅ proved - incomplete|shostak|0.980|
|strict_poly_system_solvable_TCC1|✅ proved - incomplete|shostak|0.020|
|strict_poly_system_solvable|✅ proved - incomplete|shostak|3.510|
|A63_tensor_power_mat_row_TCC1|✅ proved - incomplete|shostak|0.030|
|A63_tensor_power_mat_row_TCC2|✅ proved - incomplete|shostak|0.092|
|A63_tensor_power_mat_row_TCC3|✅ proved - incomplete|shostak|0.030|
|A63_tensor_power_mat_row_TCC4|✅ proved - incomplete|shostak|0.010|
|A63_tensor_power_mat_row_TCC5|✅ proved - incomplete|shostak|0.040|
|A63_tensor_power_mat_row_TCC6|✅ proved - incomplete|shostak|0.523|
|A63_tensor_power_mat_row_def_TCC1|✅ proved - incomplete|shostak|0.120|
|A63_tensor_power_mat_row_def|✅ proved - incomplete|shostak|4.874|
|sturm_tarski_solver_slow_basic_TCC1|✅ proved - incomplete|shostak|0.000|

## `system_solvers`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|rows_fun_TCC1|✅ proved - incomplete|shostak|0.028|
|entry_fun_TCC1|✅ proved - incomplete|shostak|0.050|
|entry_fun_TCC2|✅ proved - incomplete|shostak|0.070|
|entry_is|✅ proved - incomplete|shostak|0.518|
|TQlist_fun_TCC1|✅ proved - incomplete|shostak|0.010|
|TQlist_fun_TCC2|✅ proved - incomplete|shostak|0.110|
|TQlist_lem_TCC1|✅ proved - incomplete|shostak|0.019|
|TQlist_lem|✅ proved - incomplete|shostak|0.222|
|sturm_tarski_faster_TCC1|✅ proved - incomplete|shostak|0.082|
|sturm_tarski_faster_TCC2|✅ proved - incomplete|shostak|0.070|
|sturm_tarski_faster_TCC3|✅ proved - incomplete|shostak|0.110|
|sturm_tarski_faster_TCC4|✅ proved - incomplete|shostak|1.035|
|Test1_TCC1|✅ proved - incomplete|shostak|0.288|
|Test1_TCC2|✅ proved - incomplete|shostak|0.218|
|Test2recurse_TCC1|✅ proved - incomplete|shostak|0.060|
|Test2recurse_TCC2|✅ proved - incomplete|shostak|0.040|

## `preprocessing_univariate`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|polynomialDomMonomCoeffOne_TCC1|✅ proved - complete|shostak|0.010|
|polynomialDomMonomCoeffOne_TCC2|✅ proved - complete|shostak|0.010|
|polynomialDomMonomCoeffOne|✅ proved - incomplete|shostak|0.399|
|polynomialDominationCoeff1|✅ proved - incomplete|shostak|0.415|
|polynomialDomLC|✅ proved - incomplete|shostak|0.153|
|polynomialDomLC2|✅ proved - incomplete|shostak|0.192|
|polynomialDomLC3|✅ proved - incomplete|shostak|0.134|
|polynomialDomLC2Neg|✅ proved - incomplete|shostak|0.444|
|polyLCPos|✅ proved - incomplete|shostak|0.202|
|testcase_TCC1|✅ proved - complete|shostak|0.010|
|testcase_TCC2|✅ proved - complete|shostak|0.010|
|testcase|✅ proved - incomplete|shostak|0.518|
|polyLCPosUniv|✅ proved - incomplete|shostak|0.020|
|polyLCNeg|✅ proved - incomplete|shostak|0.060|
|evenPowerEquivalence_TCC1|✅ proved - complete|shostak|0.010|
|evenPowerEquivalence_TCC2|✅ proved - complete|shostak|0.010|
|evenPowerEquivalence|✅ proved - complete|shostak|0.124|
|oddPowerEquivalence_TCC1|✅ proved - complete|shostak|0.040|
|oddPowerEquivalence_TCC2|✅ proved - complete|shostak|0.040|
|oddPowerEquivalence|✅ proved - complete|shostak|0.234|
|polyEvalAtExtReal_TCC1|✅ proved - complete|shostak|0.010|
|polyEvalAtExtReal|✅ proved - incomplete|shostak|0.010|
|polynomialDomMonomCoeffOneOdd|✅ proved - incomplete|shostak|0.173|
|polynomialDomMonomCoeffOneOddNeg|✅ proved - incomplete|shostak|0.170|
|polynomialDomMonomCoeffOneOddNegCoeff|✅ proved - incomplete|shostak|0.263|
|sequenceRelHelper|✅ proved - incomplete|shostak|0.595|
|sequenceRelation|✅ proved - incomplete|shostak|1.124|
|polynomialDomMonomNegEvenDeg_TCC1|✅ proved - incomplete|shostak|0.070|
|polynomialDomMonomNegEvenDeg|✅ proved - incomplete|shostak|0.222|
|polynomialDomMonomNegEvenDeg1_TCC1|✅ proved - incomplete|shostak|0.060|
|polynomialDomMonomNegEvenDeg1|✅ proved - incomplete|shostak|0.110|
|polynomialOddDegLessThanZero|✅ proved - incomplete|shostak|0.981|
|polynomialOddDegGreaterThanZero|✅ proved - incomplete|shostak|1.352|
|polynomialOddDegGreaterThanZero1|✅ proved - incomplete|shostak|0.999|
|polyOddDegPos|✅ proved - incomplete|shostak|0.189|
|polyOddDegNeg|✅ proved - incomplete|shostak|0.100|
|polyOddDegZero|✅ proved - incomplete|shostak|0.110|
|figuringOutModsBidir|✅ proved - incomplete|shostak|0.124|
|polyPlugInZero|✅ proved - incomplete|shostak|0.230|
|preprocessingLemma1_TCC1|✅ proved - incomplete|shostak|0.020|
|preprocessingLemma1|✅ proved - incomplete|shostak|0.040|
|preprocessingLemma2|✅ proved - incomplete|shostak|0.526|
|preprocessingLemma3|✅ proved - incomplete|shostak|0.222|
|preprocessingLemma4|✅ proved - incomplete|shostak|0.253|
|preprocessingLemmaOddGeneralize|✅ proved - incomplete|shostak|1.576|
|preprocessingLemma5|✅ proved - incomplete|shostak|0.010|
|preprocessingTheorem|✅ proved - incomplete|shostak|0.055|
|polyLCPosConj|✅ proved - incomplete|shostak|0.463|
|polyLCNegConj|✅ proved - incomplete|shostak|0.338|
|preprocessingConjLemmaOddGeneralize|✅ proved - incomplete|shostak|0.204|
|preprocessingConjLC|✅ proved - incomplete|shostak|1.632|
|preprocessingConjLemma5|✅ proved - incomplete|shostak|0.030|
|preprocessingConjTheorem|✅ proved - incomplete|shostak|0.093|
|sum_squares_rec_TCC1|✅ proved - complete|shostak|0.030|
|sum_squares_rec_TCC2|✅ proved - incomplete|shostak|0.060|
|sum_squares_rec_TCC3|✅ proved - complete|shostak|0.050|
|sum_squares_TCC1|✅ proved - incomplete|shostak|0.010|

## `poly_system_strategy`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|first_eq_TCC1|✅ proved - complete|shostak|0.020|
|first_eq_TCC2|✅ proved - incomplete|shostak|0.021|
|first_eq_TCC3|✅ proved - incomplete|shostak|0.070|
|first_eq_TCC4|✅ proved - incomplete|shostak|0.060|
|first_eq_TCC5|✅ proved - incomplete|shostak|0.056|
|first_eq_TCC6|✅ proved - incomplete|shostak|0.020|
|first_eq_TCC7|✅ proved - complete|shostak|0.010|
|greatify_poly_TCC1|✅ proved - complete|shostak|0.040|
|greatify_rel_TCC1|✅ proved - complete|shostak|0.010|
|greatify_def_TCC1|✅ proved - complete|shostak|0.066|
|greatify_def|✅ proved - incomplete|shostak|0.293|
|compute_solvable_single_TCC1|✅ proved - incomplete|shostak|0.020|
|compute_solvable_single_TCC2|✅ proved - incomplete|shostak|0.222|
|compute_solvable_single_TCC3|✅ proved - incomplete|shostak|0.260|
|compute_solvable_single_TCC4|✅ proved - incomplete|shostak|0.080|
|compute_solvable_single_TCC5|✅ proved - incomplete|shostak|0.083|
|compute_solvable_single_def|✅ proved - incomplete|shostak|3.580|
|poly_deriv_integer|✅ proved - complete|shostak|0.050|
|compute_solvable_TCC1|✅ proved - incomplete|shostak|0.090|
|compute_solvable_TCC2|✅ proved - incomplete|shostak|0.143|
|compute_solvable_TCC3|✅ proved - incomplete|shostak|0.154|
|compute_solvable_TCC4|✅ proved - incomplete|shostak|0.193|
|compute_solvable_TCC5|✅ proved - incomplete|shostak|0.000|
|compute_solvable_TCC6|✅ proved - incomplete|shostak|0.085|
|compute_solvable_TCC7|✅ proved - incomplete|shostak|0.894|
|compute_solvable_TCC8|✅ proved - incomplete|shostak|0.162|
|compute_solvable_new_TCC1|✅ proved - incomplete|shostak|0.204|
|compute_solvable_new_TCC2|✅ proved - incomplete|shostak|0.794|
|compute_solvable_new_TCC3|✅ proved - incomplete|shostak|0.122|
|preprocessing_better1|✅ proved - incomplete|shostak|1.252|
|compute_solvable_improved|✅ proved - incomplete|shostak|1.290|
|compute_solvable_def|✅ proved - incomplete|shostak|7.655|
|compute_solvable_new_def|✅ proved - incomplete|shostak|0.040|
|poly_system_list_TCC1|✅ proved - incomplete|shostak|0.050|
|poly_system_list_TCC2|✅ proved - incomplete|shostak|0.130|
|poly_system_list_TCC3|✅ proved - incomplete|shostak|0.652|
|tarski_TCC1|✅ proved - incomplete|shostak|0.083|
|tarski_TCC2|✅ proved - incomplete|shostak|0.356|
|tarski_TCC3|✅ proved - incomplete|shostak|0.541|
|tarski_TCC4|✅ proved - incomplete|shostak|0.182|
|tarski_def|✅ proved - incomplete|shostak|0.728|

## `dnf_polynomials`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|eval_TCC1|✅ proved - complete|shostak|0.030|
|eval_TCC2|✅ proved - complete|shostak|0.028|
|eval_TCC3|✅ proved - complete|shostak|0.030|
|eval_TCC4|✅ proved - complete|shostak|0.030|
|eval_TCC5|✅ proved - complete|shostak|0.020|
|eval_TCC6|✅ proved - complete|shostak|0.030|
|eval_TCC7|✅ proved - complete|shostak|0.037|
|eval_TCC8|✅ proved - complete|shostak|0.030|
|eval_TCC9|✅ proved - complete|shostak|0.030|
|eval_TCC10|✅ proved - complete|shostak|0.030|
|eval_TCC11|✅ proved - complete|shostak|0.038|
|eval_TCC12|✅ proved - complete|shostak|0.030|
|eval_TCC13|✅ proved - complete|shostak|0.040|
|eval_TCC14|✅ proved - complete|shostak|0.041|
|eval_atm_list_TCC1|✅ proved - complete|shostak|0.020|
|eval_atm_list_TCC2|✅ proved - incomplete|shostak|0.110|
|eval_TCC15|✅ proved - complete|shostak|0.010|
|eval_TCC16|✅ proved - incomplete|shostak|0.074|
|degr_rec_TCC1|✅ proved - complete|shostak|0.010|
|degr_rec_TCC2|✅ proved - complete|shostak|0.010|
|degr_rec_TCC3|✅ proved - incomplete|shostak|0.020|
|degr_rec_TCC4|✅ proved - complete|shostak|0.010|
|degr_rec_TCC5|✅ proved - incomplete|shostak|0.030|
|degr_rec_lemma|✅ proved - incomplete|shostak|0.088|
|degr_rec_change_function|✅ proved - incomplete|shostak|0.070|
|construct_record_TCC1|✅ proved - incomplete|shostak|0.079|
|depth_TCC1|✅ proved - complete|shostak|0.020|
|depth_TCC2|✅ proved - complete|shostak|0.030|
|depth_TCC3|✅ proved - complete|shostak|0.030|
|depth_TCC4|✅ proved - complete|shostak|0.030|
|depth_TCC5|✅ proved - complete|shostak|0.040|
|depth_TCC6|✅ proved - complete|shostak|0.030|
|abs_nnf_rel_preserves_truth|✅ proved - incomplete|shostak|0.274|
|abs_nnf_rel_pnot_preserves_truth|✅ proved - incomplete|shostak|0.082|
|nnf_TCC1|✅ proved - incomplete|shostak|0.073|
|nnf_TCC2|✅ proved - incomplete|shostak|0.070|
|nnf_TCC3|✅ proved - incomplete|shostak|0.070|
|nnf_TCC4|✅ proved - incomplete|shostak|0.070|
|nnf_TCC5|✅ proved - incomplete|shostak|0.092|
|nnf_TCC6|✅ proved - incomplete|shostak|0.100|
|nnf_TCC7|✅ proved - incomplete|shostak|0.090|
|nnf_TCC8|✅ proved - incomplete|shostak|0.084|
|nnf_TCC9|✅ proved - incomplete|shostak|0.060|
|nnf_TCC10|✅ proved - incomplete|shostak|0.090|
|nnf_TCC11|✅ proved - incomplete|shostak|0.104|
|nnf_TCC12|✅ proved - incomplete|shostak|0.090|
|nnf_TCC13|✅ proved - incomplete|shostak|0.080|
|nnf_TCC14|✅ proved - incomplete|shostak|0.162|
|nnf_TCC15|✅ proved - incomplete|shostak|0.160|
|nnf_TCC16|✅ proved - incomplete|shostak|0.164|
|nnf_TCC17|✅ proved - incomplete|shostak|0.160|
|nnf_TCC18|✅ proved - incomplete|shostak|0.170|
|nnf_TCC19|✅ proved - incomplete|shostak|0.170|
|nnf_TCC20|✅ proved - incomplete|shostak|0.173|
|nnf_TCC21|✅ proved - incomplete|shostak|0.170|
|nnf_TCC22|✅ proved - incomplete|shostak|0.080|
|nnf_TCC23|✅ proved - incomplete|shostak|0.073|
|nnf_TCC24|✅ proved - incomplete|shostak|0.070|
|nnf_TCC25|✅ proved - incomplete|shostak|0.080|
|nnf_TCC26|✅ proved - incomplete|shostak|0.155|
|nnf_TCC27|✅ proved - incomplete|shostak|0.140|
|nnf_TCC28|✅ proved - incomplete|shostak|0.140|
|nnf_TCC29|✅ proved - incomplete|shostak|0.154|
|nnf_TCC30|✅ proved - incomplete|shostak|0.150|
|nnf_TCC31|✅ proved - incomplete|shostak|0.125|
|nnf_TCC32|✅ proved - incomplete|shostak|0.130|
|nnf_TCC33|✅ proved - incomplete|shostak|0.130|
|nnf_not_has_special_form|✅ proved - incomplete|shostak|3.258|
|nnf_has_special_form|✅ proved - incomplete|shostak|0.150|
|pull_out_conjunctions_TCC1|✅ proved - complete|shostak|0.020|
|pull_out_conjunctions_TCC2|✅ proved - complete|shostak|0.010|
|pull_out_conjunctions_TCC3|✅ proved - complete|shostak|0.030|
|length_pull_out_conjunctions|✅ proved - incomplete|shostak|0.264|
|conjunct_element_TCC1|✅ proved - complete|shostak|0.030|
|conjunct_element_TCC2|✅ proved - complete|shostak|0.017|
|conjunct_element_TCC3|✅ proved - incomplete|shostak|0.070|
|conjunct_lists_TCC1|✅ proved - complete|shostak|0.010|
|conjunct_lists_TCC2|✅ proved - incomplete|shostak|0.070|
|length_conjunct_lists|✅ proved - incomplete|shostak|0.171|
|form_disjunction_TCC1|✅ proved - incomplete|shostak|0.050|
|form_disjunction_TCC2|✅ proved - incomplete|shostak|0.040|
|form_disjunction_TCC3|✅ proved - incomplete|shostak|0.141|
|form_disjunction_TCC4|✅ proved - incomplete|shostak|0.150|
|form_disjunction_TCC5|✅ proved - complete|shostak|0.030|
|distribute_ands_TCC1|✅ proved - complete|shostak|0.010|
|distribute_ands_TCC2|✅ proved - complete|shostak|0.010|
|distribute_ands_TCC3|✅ proved - complete|shostak|0.030|
|distribute_ands_TCC4|✅ proved - complete|shostak|0.033|
|distribute_ands_TCC5|✅ proved - complete|shostak|0.060|
|distribute_ands_TCC6|✅ proved - incomplete|shostak|0.441|
|distribute_ands_TCC7|✅ proved - complete|shostak|0.020|
|distribute_ands_TCC8|✅ proved - complete|shostak|0.045|
|conjunct_element_prop|✅ proved - incomplete|shostak|0.090|
|conjunct_lists_prop|✅ proved - incomplete|shostak|0.102|
|conjunct_elements_truth_prop|✅ proved - incomplete|shostak|0.393|
|conjunct_truth_prop|✅ proved - incomplete|shostak|0.366|
|form_disjunction_prop|✅ proved - incomplete|shostak|1.275|
|distrib_ands_special_form|✅ proved - incomplete|shostak|0.291|
|special_form_conjunct|✅ proved - incomplete|shostak|0.027|
|form_disjunction_eval|✅ proved - incomplete|shostak|0.531|
|pull_out_conjunctions_eval|✅ proved - incomplete|shostak|1.027|
|form_disjunction_truth_TCC1|✅ proved - incomplete|shostak|0.010|
|form_disjunction_truth|✅ proved - incomplete|shostak|0.033|
|dnf_TCC1|✅ proved - incomplete|shostak|0.010|
|nnf_pnot_preserves_truth|✅ proved - incomplete|shostak|5.255|
|nnf_preserves_truth|✅ proved - incomplete|shostak|2.102|
|distribute_pand_preserves_truth_new_TCC1|✅ proved - complete|shostak|0.010|
|distribute_pand_preserves_truth_new|✅ proved - incomplete|shostak|0.126|
|distribute_ands_preserves_truth|✅ proved - incomplete|shostak|0.455|
|dnf_const_preserves_truth|✅ proved - incomplete|shostak|0.000|
|dnf_const_preserves_truth_1_TCC1|✅ proved - complete|shostak|0.020|
|dnf_const_preserves_truth_1|✅ proved - incomplete|shostak|0.214|
|eval_rel_preserves_truth|✅ proved - incomplete|shostak|0.113|
|dnf_prel_preserves_truth_len1_TCC1|✅ proved - complete|shostak|0.020|
|dnf_prel_preserves_truth_len1|✅ proved - incomplete|shostak|4.898|
|dnf_prel_preserves_truth_len0|✅ proved - incomplete|shostak|0.892|
|dnf_prel_preserves_truth|✅ proved - incomplete|shostak|0.751|
|dnf_prel_preserves_truth2_TCC1|✅ proved - complete|shostak|0.020|
|dnf_prel_preserves_truth2|✅ proved - incomplete|shostak|0.052|
|dnf_special_form|✅ proved - incomplete|shostak|0.060|
|construct_dnf_length|✅ proved - incomplete|shostak|0.362|
|construct_dnf_car_length_TCC1|✅ proved - incomplete|shostak|0.040|
|construct_dnf_car_length|✅ proved - incomplete|shostak|0.525|
|has_no_ors_prop_TCC1|✅ proved - incomplete|shostak|0.050|
|has_no_ors_prop|✅ proved - incomplete|shostak|0.798|
|eval_atm_list_truth|✅ proved - incomplete|shostak|0.292|
|eval_atm_list_prop|✅ proved - incomplete|shostak|0.302|
|has_no_ors_dnf_prop|✅ proved - incomplete|shostak|0.174|
|construction_lemma_1|✅ proved - incomplete|shostak|0.263|
|construction_lemma_2|✅ proved - incomplete|shostak|0.233|
|dnf_preserves_truth|✅ proved - incomplete|shostak|0.829|

## `dnf_strategy`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|remove_constants_rec_TCC1|✅ proved - complete|shostak|0.020|
|remove_constants_rec_TCC2|✅ proved - incomplete|shostak|0.115|
|remove_constants_rec_TCC3|✅ proved - incomplete|shostak|0.040|
|when_not_none|✅ proved - incomplete|shostak|0.085|
|relation_remove_constants_rec|✅ proved - incomplete|shostak|0.218|
|remove_constants_TCC1|✅ proved - incomplete|shostak|1.001|
|relation_remove_constants_single|✅ proved - incomplete|shostak|0.030|
|relation_remove_constants_null_TCC1|✅ proved - incomplete|shostak|0.029|
|relation_remove_constants_null_TCC2|✅ proved - incomplete|shostak|0.040|
|relation_remove_constants_null|✅ proved - incomplete|shostak|0.289|
|relation_remove_constants_TCC1|✅ proved - incomplete|shostak|0.040|
|relation_remove_constants|✅ proved - incomplete|shostak|0.542|
|eval_truth|✅ proved - incomplete|shostak|0.045|
|degr_lemma|✅ proved - incomplete|shostak|0.193|
|eval_remove_constants_none|✅ proved - incomplete|shostak|0.151|
|eval_remove_constants|✅ proved - incomplete|shostak|0.232|
|conj_to_tarski_TCC1|✅ proved - incomplete|shostak|0.030|
|conj_to_tarski_TCC2|✅ proved - incomplete|shostak|0.060|
|conj_to_tarski_TCC3|✅ proved - incomplete|shostak|0.065|
|conj_to_tarski_TCC4|✅ proved - incomplete|shostak|0.060|
|conj_to_tarski_TCC5|✅ proved - incomplete|shostak|0.273|
|satisfiability_relation_TCC1|✅ proved - incomplete|shostak|0.034|
|satisfiability_relation|✅ proved - incomplete|shostak|0.472|
|satisfiability_relation_system_TCC1|✅ proved - incomplete|shostak|0.043|
|satisfiability_relation_system_TCC2|✅ proved - incomplete|shostak|0.110|
|satisfiability_relation_system|✅ proved - incomplete|shostak|3.057|
|conj_to_tarski_sound|✅ proved - incomplete|shostak|1.069|
|dnf_eval_truth|✅ proved - incomplete|shostak|0.290|
|rel_to_tarski_sound|✅ proved - incomplete|shostak|0.098|

## `hutch`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Eq_computed_remainder_seq?_TCC1|✅ proved - incomplete|shostak|0.030|
|Eq_computed_remainder_seq?_TCC2|✅ proved - complete|shostak|0.049|
|Eq_computed_remainder_seq?_TCC3|✅ proved - incomplete|shostak|0.080|
|sturm_chain_list_TCC1|✅ proved - incomplete|shostak|0.170|
|decidable_interval_TCC1|✅ proved - incomplete|shostak|0.383|
|decidable_interval_TCC2|✅ proved - incomplete|shostak|0.355|
|decidable_interval_TCC3|✅ proved - incomplete|shostak|0.291|
|sum_square_zero_havers_TCC1|✅ proved - incomplete|shostak|0.041|
|sum_square_zero_havers_TCC2|✅ proved - incomplete|shostak|0.020|
|sum_square_zero_havers_TCC3|✅ proved - incomplete|shostak|0.284|
|sum_square_zero_havers_def|✅ proved - incomplete|shostak|0.946|
|decidable_interval_sq_TCC1|✅ proved - incomplete|shostak|0.325|
|decidable_interval_sq_TCC2|✅ proved - incomplete|shostak|0.334|
|decidable_interval_sq_TCC3|✅ proved - incomplete|shostak|0.285|
|decidable_interval_sq_TCC4|✅ proved - incomplete|shostak|0.100|
|decidable_interval_sq_TCC5|✅ proved - incomplete|shostak|0.088|
|decidable_interval_sq_TCC6|✅ proved - incomplete|shostak|0.063|
|decidable_interval_sq_TCC7|✅ proved - incomplete|shostak|0.162|
|decidable_interval_sq_TCC8|✅ proved - incomplete|shostak|0.183|
|decidable_interval_sq_TCC9|✅ proved - incomplete|shostak|0.031|
|decidable_interval_def_TCC1|✅ proved - incomplete|shostak|0.326|
|decidable_interval_def_TCC2|✅ proved - incomplete|shostak|0.563|
|decidable_interval_def|✅ proved - incomplete|shostak|5.057|
|decide_interval_def_TCC1|✅ proved - incomplete|shostak|0.187|
|decide_interval_def_TCC2|✅ proved - incomplete|shostak|0.055|
|decide_interval_def|✅ proved - incomplete|shostak|3.740|
|decidable_intervals_exist_TCC1|✅ proved - incomplete|shostak|0.279|
|decidable_intervals_exist|✅ proved - incomplete|shostak|0.000|
|decidable_intervals_sq_exist|✅ proved - incomplete|shostak|3.654|
|hutch_int_meas_TCC1|✅ proved - incomplete|shostak|0.032|
|hutch_int_meas_TCC2|✅ proved - incomplete|shostak|0.254|
|hutch_int_meas_TCC3|✅ proved - incomplete|shostak|0.187|
|hutch_int_meas_TCC4|✅ proved - incomplete|shostak|0.967|
|signs_upd_TCC1|✅ proved - incomplete|shostak|0.276|
|signs_upd_TCC2|✅ proved - incomplete|shostak|0.256|
|signs_upd_TCC3|✅ proved - incomplete|shostak|0.334|
|signs_upd_sound|✅ proved - incomplete|shostak|1.600|
|hutch_int_basic_TCC1|✅ proved - incomplete|shostak|0.034|
|hutch_int_basic_TCC2|✅ proved - incomplete|shostak|0.209|
|hutch_int_basic_TCC3|✅ proved - incomplete|shostak|0.066|
|hutch_int_basic_TCC4|✅ proved - incomplete|shostak|0.077|
|hutch_int_basic_TCC5|✅ proved - incomplete|shostak|2.301|
|hutch_int_basic_TCC6|✅ proved - incomplete|shostak|0.138|
|hutch_int_basic_TCC7|✅ proved - incomplete|shostak|0.111|
|hutch_int_basic_TCC8|✅ proved - incomplete|shostak|0.000|
|hutch_int_basic_TCC9|✅ proved - incomplete|shostak|0.388|
|Knuth_total_TCC1|✅ proved - incomplete|shostak|0.020|
|Knuth_total_TCC2|✅ proved - incomplete|shostak|0.020|
|Knuth_total_TCC3|✅ proved - incomplete|shostak|0.040|
|Knuth_total_TCC4|✅ proved - incomplete|shostak|0.030|
|Knuth_total_TCC5|✅ proved - complete|shostak|0.010|
|hutch_int_TCC1|✅ proved - incomplete|shostak|0.130|
|hutch_int_TCC2|✅ proved - incomplete|shostak|0.394|
|hutch_int_TCC3|✅ proved - incomplete|shostak|2.000|
|hutch_int_TCC4|✅ proved - incomplete|shostak|0.831|
|hutch_int_TCC5|✅ proved - incomplete|shostak|9.405|
|hutch_int_TCC6|✅ proved - incomplete|shostak|0.540|
|hutch_int_TCC7|✅ proved - incomplete|shostak|2.061|
|hutch_int_TCC8|✅ proved - incomplete|shostak|0.965|
|hutch_int_TCC9|✅ proved - incomplete|shostak|0.333|
|hutch_int_def|✅ proved - incomplete|shostak|0.000|
|poly_system_list_TCC1|✅ proved - incomplete|shostak|0.050|
|poly_system_list_TCC2|✅ proved - incomplete|shostak|0.105|
|poly_system_list_TCC3|✅ proved - incomplete|shostak|0.679|
|hutch_TCC1|✅ proved - incomplete|shostak|0.087|
|hutch_TCC2|✅ proved - incomplete|shostak|0.399|
|hutch_TCC3|✅ proved - incomplete|shostak|0.534|
|hutch_TCC4|✅ proved - incomplete|shostak|0.193|
|hutch_def|✅ proved - incomplete|shostak|2.519|
|test_TCC1|✅ proved - complete|shostak|0.010|
|test|✅ proved - incomplete|shostak|4.930|

## `strategies`
No formula declaration found.## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Mac OS X (Intel)] (Nov 14, 2020 23:13)|
| Patch Version| n/a|
| Library Path| `/Applications/pvs-7.1.0/pvslib/`<br/>`/Applications/pvs-7.1.0/lib/`<br/>`/Applications/pvs-7.1.0/pvslib/float/`<br/>`/Applications/pvs-7.1.0/pvslib/pvsio_utils/`|
| Loaded Patches | `/Applications/pvs-7.1.0/pvslib/.pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230712-static-update.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230710-tcc-gen.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230707-defattach.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230706-extrategies.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210323-wish.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210225-cl2pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210715a.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210715.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210707.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210706.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210511.lisp`|
