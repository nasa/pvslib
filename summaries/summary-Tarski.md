# Summary for `Tarski`
Run started at 22:51:20 9/19/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **513**   | **513**    | **513**    | **0**  | **6:41.943 s**   |
|top|0|0|0|0|0.000|
|sturmtarski|36|36|36|0|46.613|
|compute_sturm_tarski|22|22|22|0|19.042|
|poly_families|67|67|67|0|1:30.078|
|tarski_query|15|15|15|0|27.926|
|tarski_query_matrix|16|16|16|0|18.492|
|poly_systems|12|12|12|0|11.807|
|system_solvers|16|16|16|0|4.306|
|preprocessing_univariate|57|57|57|0|22.709|
|poly_system_strategy|41|41|41|0|29.104|
|dnf_polynomials|131|131|131|0|41.181|
|dnf_strategy|29|29|29|0|10.899|
|hutch|71|71|71|0|1:19.786|
|strategies|0|0|0|0|0.000|
## Detailed Summary 
## `top`
No formula declaration found.
## `sturmtarski`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|constructed_sturm_sequence?_TCC1|✅ proved - complete|shostak|0.143|
|constructed_sturm_sequence?_TCC2|✅ proved - complete|shostak|0.010|
|constructed_sturm_sequence?_TCC3|✅ proved - complete|shostak|0.040|
|constructed_sturm_sequence?_TCC4|✅ proved - incomplete|shostak|0.140|
|constructed_sturm_sequence?_TCC5|✅ proved - incomplete|shostak|0.162|
|constructed_sturm_sequence?_TCC6|✅ proved - incomplete|shostak|0.130|
|constructed_sturm_seq_repeated_root|✅ proved - incomplete|shostak|1.299|
|default_root_degree?_TCC1|✅ proved - incomplete|shostak|0.247|
|default_root_degree?_TCC2|✅ proved - incomplete|shostak|0.070|
|constructed_sturm_seq_root_degrees_TCC1|✅ proved - incomplete|shostak|0.561|
|constructed_sturm_seq_root_degrees|✅ proved - incomplete|shostak|0.564|
|default_root_deg_TCC1|✅ proved - incomplete|shostak|0.230|
|default_root_deg_def|✅ proved - incomplete|shostak|0.129|
|constructed_sturm_seq_root_degree_lower_bound|✅ proved - incomplete|shostak|2.672|
|sturm_tarski_basic_1|✅ proved - incomplete|shostak|3.994|
|sturm_tarski_basic_2|✅ proved - incomplete|shostak|1.976|
|sturm_tarski_basic_3|✅ proved - incomplete|shostak|8.228|
|sturm_tarski_basic_TCC1|✅ proved - incomplete|shostak|0.110|
|sturm_tarski_basic|✅ proved - incomplete|shostak|12.357|
|constructed_sturm_roots_between_enum_TCC1|✅ proved - incomplete|shostak|0.070|
|constructed_sturm_roots_between_enum_TCC2|✅ proved - incomplete|shostak|0.070|
|constructed_sturm_roots_between_enum|✅ proved - incomplete|shostak|1.807|
|Sol_TCC1|✅ proved - incomplete|shostak|0.129|
|Sol_union_top|✅ proved - incomplete|shostak|0.107|
|NSol_TCC1|✅ proved - incomplete|shostak|0.050|
|NSol_union_top|✅ proved - incomplete|shostak|0.475|
|sturm_tarski_TCC1|✅ proved - incomplete|shostak|0.126|
|sturm_tarski_TCC2|✅ proved - incomplete|shostak|0.631|
|sturm_tarski|✅ proved - incomplete|shostak|5.996|
|Sol_TCC2|✅ proved - incomplete|shostak|0.040|
|NSol_TCC2|✅ proved - incomplete|shostak|0.194|
|sturm_tarski_unbounded_TCC1|✅ proved - incomplete|shostak|0.080|
|sturm_tarski_unbounded_TCC2|✅ proved - incomplete|shostak|0.272|
|sturm_tarski_unbounded|✅ proved - incomplete|shostak|3.045|
|NSol_sq_gt|✅ proved - incomplete|shostak|0.323|
|NSol_sq_lt|✅ proved - incomplete|shostak|0.136|

## `compute_sturm_tarski`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|der_prod_TCC1|✅ proved - complete|shostak|0.010|
|der_prod_TCC2|✅ proved - incomplete|shostak|0.260|
|finite_bij_real_remove_one|✅ proved - complete|shostak|0.273|
|finite_bij_real_remove_two|✅ proved - complete|shostak|0.639|
|computed_sturm_spec_TCC1|✅ proved - incomplete|shostak|0.170|
|computed_sturm_spec_TCC2|✅ proved - incomplete|shostak|0.657|
|computed_sturm_spec_TCC3|✅ proved - incomplete|shostak|0.780|
|computed_sturm_spec_TCC4|✅ proved - incomplete|shostak|0.179|
|computed_sturm_spec_TCC5|✅ proved - incomplete|shostak|0.779|
|computed_sturm_spec|✅ proved - incomplete|shostak|6.431|
|Eq_computed_remainder?_TCC1|✅ proved - complete|shostak|0.010|
|Eq_computed_remainder?_TCC2|✅ proved - incomplete|shostak|0.183|
|compute_TQ_param_TCC1|✅ proved - incomplete|shostak|0.210|
|compute_TQ_param_TCC2|✅ proved - incomplete|shostak|0.302|
|compute_TQ_param_TCC3|✅ proved - incomplete|shostak|0.292|
|compute_TQ_param_TCC4|✅ proved - incomplete|shostak|0.338|
|compute_TQ_param_TCC5|✅ proved - incomplete|shostak|0.340|
|TQ_TCC1|✅ proved - complete|shostak|0.040|
|TQ_TCC2|✅ proved - incomplete|shostak|0.192|
|TQ_TCC3|✅ proved - incomplete|shostak|0.962|
|TQ_def|✅ proved - incomplete|shostak|5.845|
|TQ_eq_g|✅ proved - incomplete|shostak|0.150|

## `poly_families`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|polynomial_prod_int|✅ proved - incomplete|shostak|0.090|
|sigma_j|✅ proved - incomplete|shostak|0.263|
|prod_polynomials_TCC1|✅ proved - incomplete|shostak|0.010|
|prod_polynomials_TCC2|✅ proved - incomplete|shostak|0.020|
|prod_polynomials_TCC3|✅ proved - complete|shostak|0.020|
|prod_polynomials_TCC4|✅ proved - incomplete|shostak|0.050|
|prod_polynomials_TCC5|✅ proved - incomplete|shostak|0.030|
|prod_polynomials_TCC6|✅ proved - incomplete|shostak|0.140|
|prod_polynomials_TCC7|✅ proved - incomplete|shostak|3.692|
|prod_polynomials_list_TCC1|✅ proved - incomplete|shostak|0.091|
|prod_polynomials_list_TCC2|✅ proved - incomplete|shostak|0.233|
|prod_polynomials_list_TCC3|✅ proved - incomplete|shostak|0.744|
|prod_polynomials_list_TCC4|✅ proved - incomplete|shostak|0.130|
|prod_polynomials_list_TCC5|✅ proved - incomplete|shostak|0.725|
|prod_polynomials_list_TCC6|✅ proved - incomplete|shostak|0.760|
|prod_polynomials_list_TCC7|✅ proved - incomplete|shostak|0.582|
|prod_polynomials_list_TCC8|✅ proved - incomplete|shostak|2.071|
|TQ_fam_TCC1|✅ proved - incomplete|shostak|0.229|
|TQ_fam_TCC2|✅ proved - incomplete|shostak|0.609|
|TQ_fam_def_TCC1|✅ proved - incomplete|shostak|1.210|
|TQ_fam_def|✅ proved - incomplete|shostak|0.553|
|Sol_TCC1|✅ proved - incomplete|shostak|0.246|
|Sol_all_TCC1|✅ proved - incomplete|shostak|0.254|
|sign_prod_TCC1|✅ proved - complete|shostak|0.030|
|sign_prod_TCC2|✅ proved - incomplete|shostak|2.991|
|sign_prod_eq|✅ proved - incomplete|shostak|0.296|
|sign_ext_pow_TCC1|✅ proved - complete|shostak|0.010|
|sign_ext_pow_TCC2|✅ proved - incomplete|shostak|0.010|
|sign_ext_pow|✅ proved - incomplete|shostak|0.256|
|sign_ext_prod_polynomials_TCC1|✅ proved - incomplete|shostak|0.070|
|sign_ext_prod_polynomials|✅ proved - incomplete|shostak|1.245|
|unsig_TCC1|✅ proved - complete|shostak|0.160|
|sig_unsig|✅ proved - complete|shostak|0.173|
|sig_seq_unsig_seq|✅ proved - complete|shostak|0.170|
|base_3_seq_TCC1|✅ proved - complete|shostak|0.030|
|base_3_seq_TCC2|✅ proved - incomplete|shostak|0.527|
|base_6_seq_TCC1|✅ proved - incomplete|shostak|0.039|
|sig_seq_base_3_onto|✅ proved - incomplete|shostak|1.229|
|sig_seq_base_3_onto_2_TCC1|✅ proved - incomplete|shostak|0.020|
|sig_seq_base_3_onto_2|✅ proved - incomplete|shostak|0.325|
|sig_seq_base_6_onto_TCC1|✅ proved - incomplete|shostak|0.100|
|sig_seq_base_6_onto|✅ proved - incomplete|shostak|1.493|
|sig_seq_base_6_onto_2_TCC1|✅ proved - incomplete|shostak|0.000|
|sig_seq_base_6_onto_2|✅ proved - incomplete|shostak|0.479|
|base_3_seq_unique|✅ proved - incomplete|shostak|1.350|
|base_n_3_seq_unique|✅ proved - incomplete|shostak|0.120|
|union_upto_TCC1|✅ proved - complete|shostak|0.040|
|union_upto_TCC2|✅ proved - complete|shostak|0.030|
|union_upto_TCC3|✅ proved - complete|shostak|0.010|
|union_upto_TCC4|✅ proved - complete|shostak|0.085|
|union_upto_finite|✅ proved - complete|shostak|0.130|
|real_set_disj_union_cards_TCC1|✅ proved - complete|shostak|0.060|
|real_set_disj_union_cards|✅ proved - incomplete|shostak|0.402|
|mult_tarski_query_simple_TCC1|✅ proved - incomplete|shostak|0.030|
|mult_tarski_query_simple|✅ proved - incomplete|shostak|6.908|
|split_index_fun_TCC1|✅ proved - complete|shostak|0.050|
|split_index_fun_TCC2|✅ proved - complete|shostak|0.176|
|split_base6_TCC1|✅ proved - complete|shostak|0.010|
|splits_to_base3|✅ proved - incomplete|shostak|0.077|
|sign_prod_coeff6_TCC1|✅ proved - incomplete|shostak|0.170|
|NSol_seq6_TCC1|✅ proved - incomplete|shostak|0.175|
|mult_tarski_query_simple_6_0_to_3|✅ proved - incomplete|shostak|7.116|
|sign_coeff6_zero_entry_eq|✅ proved - incomplete|shostak|0.040|
|sign_coeff6_zero_TCC1|✅ proved - incomplete|shostak|1.869|
|sigma_disjoinction_6|✅ proved - incomplete|shostak|15.121|
|mult_tarski_query_simple_6_above_2_TCC1|✅ proved - incomplete|shostak|0.040|
|mult_tarski_query_simple_6_above_2|✅ proved - incomplete|shostak|33.664|

## `tarski_query`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|NSol_squared_gt|✅ proved - incomplete|shostak|0.172|
|NSol_squared_lt|✅ proved - incomplete|shostak|0.130|
|NSol_poly1_lt|✅ proved - incomplete|shostak|0.065|
|A3_TCC1|✅ proved - incomplete|shostak|0.060|
|A3_inv_TCC1|✅ proved - incomplete|shostak|0.030|
|A3_inv_TCC2|✅ proved - incomplete|shostak|0.646|
|TQ_vect3_TCC1|✅ proved - complete|shostak|0.010|
|TQ_vect3_TCC2|✅ proved - incomplete|shostak|0.090|
|TQ_vect3_TCC3|✅ proved - incomplete|shostak|0.100|
|TQ_vect3_TCC4|✅ proved - incomplete|shostak|1.285|
|NSol_vect3_TCC1|✅ proved - incomplete|shostak|1.000|
|tarski_query_system_basic_3|✅ proved - incomplete|shostak|6.274|
|A6_TCC1|✅ proved - incomplete|shostak|0.080|
|NSol_vect6_TCC1|✅ proved - incomplete|shostak|0.000|
|tarski_query_system_basic_6|✅ proved - incomplete|shostak|17.984|

## `tarski_query_matrix`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|TQ_vect3k_TCC1|✅ proved - incomplete|shostak|0.140|
|TQ_vect3k_TCC2|✅ proved - incomplete|shostak|0.154|
|TQ_vect6k_TCC1|✅ proved - incomplete|shostak|0.210|
|TQ_vect6k_TCC2|✅ proved - incomplete|shostak|0.173|
|NSol_vect3k_TCC1|✅ proved - incomplete|shostak|0.070|
|NSol_vect3k_TCC2|✅ proved - incomplete|shostak|0.150|
|NSol_vect6k_TCC1|✅ proved - incomplete|shostak|0.080|
|NSol_vect6k_TCC2|✅ proved - incomplete|shostak|0.162|
|A66_inv_TCC1|✅ proved - incomplete|shostak|0.050|
|A66_TCC1|✅ proved - incomplete|shostak|0.050|
|A66_TCC2|✅ proved - incomplete|shostak|0.110|
|multi_sturm_tarski_6by6|✅ proved - incomplete|shostak|6.871|
|multi_sturm_tarski_NSol|✅ proved - incomplete|shostak|2.155|
|A63_TCC1|✅ proved - incomplete|shostak|0.078|
|A63_def|✅ proved - incomplete|shostak|0.020|
|multi_sturm_tarski_NSol63|✅ proved - incomplete|shostak|8.019|

## `poly_systems`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|system_roots_enum|✅ proved - incomplete|shostak|1.417|
|strict_poly_system_solvable_TCC1|✅ proved - incomplete|shostak|0.034|
|strict_poly_system_solvable|✅ proved - incomplete|shostak|0.000|
|A63_tensor_power_mat_row_TCC1|✅ proved - incomplete|shostak|0.050|
|A63_tensor_power_mat_row_TCC2|✅ proved - incomplete|shostak|0.132|
|A63_tensor_power_mat_row_TCC3|✅ proved - incomplete|shostak|0.030|
|A63_tensor_power_mat_row_TCC4|✅ proved - incomplete|shostak|0.020|
|A63_tensor_power_mat_row_TCC5|✅ proved - incomplete|shostak|0.050|
|A63_tensor_power_mat_row_TCC6|✅ proved - incomplete|shostak|0.745|
|A63_tensor_power_mat_row_def_TCC1|✅ proved - incomplete|shostak|0.181|
|A63_tensor_power_mat_row_def|✅ proved - incomplete|shostak|6.873|
|sturm_tarski_solver_slow_basic_TCC1|✅ proved - incomplete|shostak|2.275|

## `system_solvers`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|rows_fun_TCC1|✅ proved - incomplete|shostak|0.047|
|entry_fun_TCC1|✅ proved - incomplete|shostak|0.080|
|entry_fun_TCC2|✅ proved - incomplete|shostak|0.090|
|entry_is|✅ proved - incomplete|shostak|0.762|
|TQlist_fun_TCC1|✅ proved - incomplete|shostak|0.030|
|TQlist_fun_TCC2|✅ proved - incomplete|shostak|0.150|
|TQlist_lem_TCC1|✅ proved - incomplete|shostak|0.040|
|TQlist_lem|✅ proved - incomplete|shostak|0.330|
|sturm_tarski_faster_TCC1|✅ proved - incomplete|shostak|0.120|
|sturm_tarski_faster_TCC2|✅ proved - incomplete|shostak|0.111|
|sturm_tarski_faster_TCC3|✅ proved - incomplete|shostak|0.170|
|sturm_tarski_faster_TCC4|✅ proved - incomplete|shostak|1.486|
|Test1_TCC1|✅ proved - incomplete|shostak|0.432|
|Test1_TCC2|✅ proved - incomplete|shostak|0.318|
|Test2recurse_TCC1|✅ proved - incomplete|shostak|0.080|
|Test2recurse_TCC2|✅ proved - incomplete|shostak|0.060|

## `preprocessing_univariate`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|polynomialDomMonomCoeffOne_TCC1|✅ proved - complete|shostak|0.010|
|polynomialDomMonomCoeffOne_TCC2|✅ proved - complete|shostak|0.010|
|polynomialDomMonomCoeffOne|✅ proved - incomplete|shostak|0.576|
|polynomialDominationCoeff1|✅ proved - incomplete|shostak|0.635|
|polynomialDomLC|✅ proved - incomplete|shostak|0.230|
|polynomialDomLC2|✅ proved - incomplete|shostak|0.280|
|polynomialDomLC3|✅ proved - incomplete|shostak|0.180|
|polynomialDomLC2Neg|✅ proved - incomplete|shostak|0.644|
|polyLCPos|✅ proved - incomplete|shostak|0.311|
|testcase_TCC1|✅ proved - complete|shostak|0.010|
|testcase_TCC2|✅ proved - complete|shostak|0.010|
|testcase|✅ proved - incomplete|shostak|0.762|
|polyLCPosUniv|✅ proved - incomplete|shostak|0.020|
|polyLCNeg|✅ proved - incomplete|shostak|0.101|
|evenPowerEquivalence_TCC1|✅ proved - complete|shostak|0.010|
|evenPowerEquivalence_TCC2|✅ proved - complete|shostak|0.020|
|evenPowerEquivalence|✅ proved - complete|shostak|0.180|
|oddPowerEquivalence_TCC1|✅ proved - complete|shostak|0.070|
|oddPowerEquivalence_TCC2|✅ proved - complete|shostak|0.060|
|oddPowerEquivalence|✅ proved - complete|shostak|0.354|
|polyEvalAtExtReal_TCC1|✅ proved - complete|shostak|0.010|
|polyEvalAtExtReal|✅ proved - incomplete|shostak|0.020|
|polynomialDomMonomCoeffOneOdd|✅ proved - incomplete|shostak|0.253|
|polynomialDomMonomCoeffOneOddNeg|✅ proved - incomplete|shostak|0.260|
|polynomialDomMonomCoeffOneOddNegCoeff|✅ proved - incomplete|shostak|0.392|
|sequenceRelHelper|✅ proved - incomplete|shostak|0.891|
|sequenceRelation|✅ proved - incomplete|shostak|1.601|
|polynomialDomMonomNegEvenDeg_TCC1|✅ proved - incomplete|shostak|0.090|
|polynomialDomMonomNegEvenDeg|✅ proved - incomplete|shostak|0.319|
|polynomialDomMonomNegEvenDeg1_TCC1|✅ proved - incomplete|shostak|0.100|
|polynomialDomMonomNegEvenDeg1|✅ proved - incomplete|shostak|0.164|
|polynomialOddDegLessThanZero|✅ proved - incomplete|shostak|1.348|
|polynomialOddDegGreaterThanZero|✅ proved - incomplete|shostak|1.995|
|polynomialOddDegGreaterThanZero1|✅ proved - incomplete|shostak|1.553|
|polyOddDegPos|✅ proved - incomplete|shostak|0.310|
|polyOddDegNeg|✅ proved - incomplete|shostak|0.152|
|polyOddDegZero|✅ proved - incomplete|shostak|0.171|
|figuringOutModsBidir|✅ proved - incomplete|shostak|0.190|
|polyPlugInZero|✅ proved - incomplete|shostak|0.363|
|preprocessingLemma1_TCC1|✅ proved - incomplete|shostak|0.020|
|preprocessingLemma1|✅ proved - incomplete|shostak|0.050|
|preprocessingLemma2|✅ proved - incomplete|shostak|0.805|
|preprocessingLemma3|✅ proved - incomplete|shostak|0.300|
|preprocessingLemma4|✅ proved - incomplete|shostak|0.362|
|preprocessingLemmaOddGeneralize|✅ proved - incomplete|shostak|2.217|
|preprocessingLemma5|✅ proved - incomplete|shostak|0.030|
|preprocessingTheorem|✅ proved - incomplete|shostak|0.084|
|polyLCPosConj|✅ proved - incomplete|shostak|0.670|
|polyLCNegConj|✅ proved - incomplete|shostak|0.509|
|preprocessingConjLemmaOddGeneralize|✅ proved - incomplete|shostak|0.301|
|preprocessingConjLC|✅ proved - incomplete|shostak|2.346|
|preprocessingConjLemma5|✅ proved - incomplete|shostak|0.030|
|preprocessingConjTheorem|✅ proved - incomplete|shostak|0.140|
|sum_squares_rec_TCC1|✅ proved - complete|shostak|0.000|
|sum_squares_rec_TCC2|✅ proved - incomplete|shostak|0.110|
|sum_squares_rec_TCC3|✅ proved - complete|shostak|0.060|
|sum_squares_TCC1|✅ proved - incomplete|shostak|0.020|

## `poly_system_strategy`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|first_eq_TCC1|✅ proved - complete|shostak|0.020|
|first_eq_TCC2|✅ proved - incomplete|shostak|0.030|
|first_eq_TCC3|✅ proved - incomplete|shostak|0.133|
|first_eq_TCC4|✅ proved - incomplete|shostak|0.100|
|first_eq_TCC5|✅ proved - incomplete|shostak|0.080|
|first_eq_TCC6|✅ proved - incomplete|shostak|0.023|
|first_eq_TCC7|✅ proved - complete|shostak|0.010|
|greatify_poly_TCC1|✅ proved - complete|shostak|0.070|
|greatify_rel_TCC1|✅ proved - complete|shostak|0.020|
|greatify_def_TCC1|✅ proved - complete|shostak|0.090|
|greatify_def|✅ proved - incomplete|shostak|0.417|
|compute_solvable_single_TCC1|✅ proved - incomplete|shostak|0.030|
|compute_solvable_single_TCC2|✅ proved - incomplete|shostak|0.330|
|compute_solvable_single_TCC3|✅ proved - incomplete|shostak|0.381|
|compute_solvable_single_TCC4|✅ proved - incomplete|shostak|0.110|
|compute_solvable_single_TCC5|✅ proved - incomplete|shostak|0.123|
|compute_solvable_single_def|✅ proved - incomplete|shostak|5.098|
|poly_deriv_integer|✅ proved - complete|shostak|0.070|
|compute_solvable_TCC1|✅ proved - incomplete|shostak|0.128|
|compute_solvable_TCC2|✅ proved - incomplete|shostak|0.193|
|compute_solvable_TCC3|✅ proved - incomplete|shostak|0.221|
|compute_solvable_TCC4|✅ proved - incomplete|shostak|0.284|
|compute_solvable_TCC5|✅ proved - incomplete|shostak|0.132|
|compute_solvable_TCC6|✅ proved - incomplete|shostak|0.120|
|compute_solvable_TCC7|✅ proved - incomplete|shostak|1.282|
|compute_solvable_TCC8|✅ proved - incomplete|shostak|0.231|
|compute_solvable_new_TCC1|✅ proved - incomplete|shostak|0.292|
|compute_solvable_new_TCC2|✅ proved - incomplete|shostak|1.151|
|compute_solvable_new_TCC3|✅ proved - incomplete|shostak|0.171|
|preprocessing_better1|✅ proved - incomplete|shostak|1.907|
|compute_solvable_improved|✅ proved - incomplete|shostak|1.879|
|compute_solvable_def|✅ proved - incomplete|shostak|10.160|
|compute_solvable_new_def|✅ proved - incomplete|shostak|0.040|
|poly_system_list_TCC1|✅ proved - incomplete|shostak|0.080|
|poly_system_list_TCC2|✅ proved - incomplete|shostak|0.150|
|poly_system_list_TCC3|✅ proved - incomplete|shostak|0.927|
|tarski_TCC1|✅ proved - incomplete|shostak|0.112|
|tarski_TCC2|✅ proved - incomplete|shostak|0.500|
|tarski_TCC3|✅ proved - incomplete|shostak|0.779|
|tarski_TCC4|✅ proved - incomplete|shostak|0.260|
|tarski_def|✅ proved - incomplete|shostak|0.970|

## `dnf_polynomials`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|eval_TCC1|✅ proved - complete|shostak|0.040|
|eval_TCC2|✅ proved - complete|shostak|0.050|
|eval_TCC3|✅ proved - complete|shostak|0.040|
|eval_TCC4|✅ proved - complete|shostak|0.039|
|eval_TCC5|✅ proved - complete|shostak|0.030|
|eval_TCC6|✅ proved - complete|shostak|0.040|
|eval_TCC7|✅ proved - complete|shostak|0.050|
|eval_TCC8|✅ proved - complete|shostak|0.039|
|eval_TCC9|✅ proved - complete|shostak|0.050|
|eval_TCC10|✅ proved - complete|shostak|0.040|
|eval_TCC11|✅ proved - complete|shostak|0.050|
|eval_TCC12|✅ proved - complete|shostak|0.048|
|eval_TCC13|✅ proved - complete|shostak|0.050|
|eval_TCC14|✅ proved - complete|shostak|0.060|
|eval_atm_list_TCC1|✅ proved - complete|shostak|0.020|
|eval_atm_list_TCC2|✅ proved - incomplete|shostak|0.168|
|eval_TCC15|✅ proved - complete|shostak|0.020|
|eval_TCC16|✅ proved - incomplete|shostak|0.110|
|degr_rec_TCC1|✅ proved - complete|shostak|0.010|
|degr_rec_TCC2|✅ proved - complete|shostak|0.010|
|degr_rec_TCC3|✅ proved - incomplete|shostak|0.040|
|degr_rec_TCC4|✅ proved - complete|shostak|0.010|
|degr_rec_TCC5|✅ proved - incomplete|shostak|0.037|
|degr_rec_lemma|✅ proved - incomplete|shostak|0.110|
|degr_rec_change_function|✅ proved - incomplete|shostak|0.100|
|construct_record_TCC1|✅ proved - incomplete|shostak|0.120|
|depth_TCC1|✅ proved - complete|shostak|0.050|
|depth_TCC2|✅ proved - complete|shostak|0.050|
|depth_TCC3|✅ proved - complete|shostak|0.042|
|depth_TCC4|✅ proved - complete|shostak|0.040|
|depth_TCC5|✅ proved - complete|shostak|0.050|
|depth_TCC6|✅ proved - complete|shostak|0.050|
|abs_nnf_rel_preserves_truth|✅ proved - incomplete|shostak|0.398|
|abs_nnf_rel_pnot_preserves_truth|✅ proved - incomplete|shostak|0.120|
|nnf_TCC1|✅ proved - incomplete|shostak|0.102|
|nnf_TCC2|✅ proved - incomplete|shostak|0.100|
|nnf_TCC3|✅ proved - incomplete|shostak|0.100|
|nnf_TCC4|✅ proved - incomplete|shostak|0.100|
|nnf_TCC5|✅ proved - incomplete|shostak|0.130|
|nnf_TCC6|✅ proved - incomplete|shostak|0.130|
|nnf_TCC7|✅ proved - incomplete|shostak|0.130|
|nnf_TCC8|✅ proved - incomplete|shostak|0.130|
|nnf_TCC9|✅ proved - incomplete|shostak|0.100|
|nnf_TCC10|✅ proved - incomplete|shostak|0.130|
|nnf_TCC11|✅ proved - incomplete|shostak|0.123|
|nnf_TCC12|✅ proved - incomplete|shostak|0.140|
|nnf_TCC13|✅ proved - incomplete|shostak|0.120|
|nnf_TCC14|✅ proved - incomplete|shostak|0.228|
|nnf_TCC15|✅ proved - incomplete|shostak|0.240|
|nnf_TCC16|✅ proved - incomplete|shostak|0.240|
|nnf_TCC17|✅ proved - incomplete|shostak|0.230|
|nnf_TCC18|✅ proved - incomplete|shostak|0.242|
|nnf_TCC19|✅ proved - incomplete|shostak|0.240|
|nnf_TCC20|✅ proved - incomplete|shostak|0.247|
|nnf_TCC21|✅ proved - incomplete|shostak|0.240|
|nnf_TCC22|✅ proved - incomplete|shostak|0.110|
|nnf_TCC23|✅ proved - incomplete|shostak|0.097|
|nnf_TCC24|✅ proved - incomplete|shostak|0.090|
|nnf_TCC25|✅ proved - incomplete|shostak|0.100|
|nnf_TCC26|✅ proved - incomplete|shostak|0.205|
|nnf_TCC27|✅ proved - incomplete|shostak|0.200|
|nnf_TCC28|✅ proved - incomplete|shostak|0.210|
|nnf_TCC29|✅ proved - incomplete|shostak|0.219|
|nnf_TCC30|✅ proved - incomplete|shostak|0.210|
|nnf_TCC31|✅ proved - incomplete|shostak|0.190|
|nnf_TCC32|✅ proved - incomplete|shostak|0.190|
|nnf_TCC33|✅ proved - incomplete|shostak|0.200|
|nnf_not_has_special_form|✅ proved - incomplete|shostak|4.457|
|nnf_has_special_form|✅ proved - incomplete|shostak|0.213|
|pull_out_conjunctions_TCC1|✅ proved - complete|shostak|0.020|
|pull_out_conjunctions_TCC2|✅ proved - complete|shostak|0.030|
|pull_out_conjunctions_TCC3|✅ proved - complete|shostak|0.030|
|length_pull_out_conjunctions|✅ proved - incomplete|shostak|0.357|
|conjunct_element_TCC1|✅ proved - complete|shostak|0.041|
|conjunct_element_TCC2|✅ proved - complete|shostak|0.030|
|conjunct_element_TCC3|✅ proved - incomplete|shostak|0.090|
|conjunct_lists_TCC1|✅ proved - complete|shostak|0.030|
|conjunct_lists_TCC2|✅ proved - incomplete|shostak|0.080|
|length_conjunct_lists|✅ proved - incomplete|shostak|0.249|
|form_disjunction_TCC1|✅ proved - incomplete|shostak|0.060|
|form_disjunction_TCC2|✅ proved - incomplete|shostak|0.070|
|form_disjunction_TCC3|✅ proved - incomplete|shostak|0.193|
|form_disjunction_TCC4|✅ proved - incomplete|shostak|0.200|
|form_disjunction_TCC5|✅ proved - complete|shostak|0.040|
|distribute_ands_TCC1|✅ proved - complete|shostak|0.020|
|distribute_ands_TCC2|✅ proved - complete|shostak|0.010|
|distribute_ands_TCC3|✅ proved - complete|shostak|0.040|
|distribute_ands_TCC4|✅ proved - complete|shostak|0.051|
|distribute_ands_TCC5|✅ proved - complete|shostak|0.060|
|distribute_ands_TCC6|✅ proved - incomplete|shostak|0.620|
|distribute_ands_TCC7|✅ proved - complete|shostak|0.030|
|distribute_ands_TCC8|✅ proved - complete|shostak|0.066|
|conjunct_element_prop|✅ proved - incomplete|shostak|0.140|
|conjunct_lists_prop|✅ proved - incomplete|shostak|0.150|
|conjunct_elements_truth_prop|✅ proved - incomplete|shostak|0.544|
|conjunct_truth_prop|✅ proved - incomplete|shostak|0.494|
|form_disjunction_prop|✅ proved - incomplete|shostak|1.754|
|distrib_ands_special_form|✅ proved - incomplete|shostak|0.402|
|special_form_conjunct|✅ proved - incomplete|shostak|0.030|
|form_disjunction_eval|✅ proved - incomplete|shostak|0.721|
|pull_out_conjunctions_eval|✅ proved - incomplete|shostak|1.429|
|form_disjunction_truth_TCC1|✅ proved - incomplete|shostak|0.020|
|form_disjunction_truth|✅ proved - incomplete|shostak|0.049|
|dnf_TCC1|✅ proved - incomplete|shostak|0.000|
|nnf_pnot_preserves_truth|✅ proved - incomplete|shostak|0.716|
|nnf_preserves_truth|✅ proved - incomplete|shostak|2.999|
|distribute_pand_preserves_truth_new_TCC1|✅ proved - complete|shostak|0.010|
|distribute_pand_preserves_truth_new|✅ proved - incomplete|shostak|0.251|
|distribute_ands_preserves_truth|✅ proved - incomplete|shostak|0.790|
|dnf_const_preserves_truth|✅ proved - incomplete|shostak|0.339|
|dnf_const_preserves_truth_1_TCC1|✅ proved - complete|shostak|0.030|
|dnf_const_preserves_truth_1|✅ proved - incomplete|shostak|0.311|
|eval_rel_preserves_truth|✅ proved - incomplete|shostak|0.153|
|dnf_prel_preserves_truth_len1_TCC1|✅ proved - complete|shostak|0.020|
|dnf_prel_preserves_truth_len1|✅ proved - incomplete|shostak|6.980|
|dnf_prel_preserves_truth_len0|✅ proved - incomplete|shostak|1.277|
|dnf_prel_preserves_truth|✅ proved - incomplete|shostak|1.055|
|dnf_prel_preserves_truth2_TCC1|✅ proved - complete|shostak|0.030|
|dnf_prel_preserves_truth2|✅ proved - incomplete|shostak|0.071|
|dnf_special_form|✅ proved - incomplete|shostak|0.080|
|construct_dnf_length|✅ proved - incomplete|shostak|0.499|
|construct_dnf_car_length_TCC1|✅ proved - incomplete|shostak|0.060|
|construct_dnf_car_length|✅ proved - incomplete|shostak|0.744|
|has_no_ors_prop_TCC1|✅ proved - incomplete|shostak|0.070|
|has_no_ors_prop|✅ proved - incomplete|shostak|1.101|
|eval_atm_list_truth|✅ proved - incomplete|shostak|0.413|
|eval_atm_list_prop|✅ proved - incomplete|shostak|0.428|
|has_no_ors_dnf_prop|✅ proved - incomplete|shostak|0.240|
|construction_lemma_1|✅ proved - incomplete|shostak|0.385|
|construction_lemma_2|✅ proved - incomplete|shostak|0.330|
|dnf_preserves_truth|✅ proved - incomplete|shostak|1.335|

## `dnf_strategy`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|remove_constants_rec_TCC1|✅ proved - complete|shostak|0.020|
|remove_constants_rec_TCC2|✅ proved - incomplete|shostak|0.150|
|remove_constants_rec_TCC3|✅ proved - incomplete|shostak|0.060|
|when_not_none|✅ proved - incomplete|shostak|0.124|
|relation_remove_constants_rec|✅ proved - incomplete|shostak|0.307|
|remove_constants_TCC1|✅ proved - incomplete|shostak|1.383|
|relation_remove_constants_single|✅ proved - incomplete|shostak|0.060|
|relation_remove_constants_null_TCC1|✅ proved - incomplete|shostak|0.039|
|relation_remove_constants_null_TCC2|✅ proved - incomplete|shostak|0.060|
|relation_remove_constants_null|✅ proved - incomplete|shostak|0.403|
|relation_remove_constants_TCC1|✅ proved - incomplete|shostak|0.040|
|relation_remove_constants|✅ proved - incomplete|shostak|0.751|
|eval_truth|✅ proved - incomplete|shostak|0.080|
|degr_lemma|✅ proved - incomplete|shostak|0.294|
|eval_remove_constants_none|✅ proved - incomplete|shostak|0.220|
|eval_remove_constants|✅ proved - incomplete|shostak|0.333|
|conj_to_tarski_TCC1|✅ proved - incomplete|shostak|0.040|
|conj_to_tarski_TCC2|✅ proved - incomplete|shostak|0.083|
|conj_to_tarski_TCC3|✅ proved - incomplete|shostak|0.090|
|conj_to_tarski_TCC4|✅ proved - incomplete|shostak|0.082|
|conj_to_tarski_TCC5|✅ proved - incomplete|shostak|0.392|
|satisfiability_relation_TCC1|✅ proved - incomplete|shostak|0.030|
|satisfiability_relation|✅ proved - incomplete|shostak|0.681|
|satisfiability_relation_system_TCC1|✅ proved - incomplete|shostak|0.070|
|satisfiability_relation_system_TCC2|✅ proved - incomplete|shostak|0.160|
|satisfiability_relation_system|✅ proved - incomplete|shostak|4.273|
|conj_to_tarski_sound|✅ proved - incomplete|shostak|0.000|
|dnf_eval_truth|✅ proved - incomplete|shostak|0.532|
|rel_to_tarski_sound|✅ proved - incomplete|shostak|0.142|

## `hutch`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Eq_computed_remainder_seq?_TCC1|✅ proved - incomplete|shostak|0.049|
|Eq_computed_remainder_seq?_TCC2|✅ proved - complete|shostak|0.080|
|Eq_computed_remainder_seq?_TCC3|✅ proved - incomplete|shostak|0.120|
|sturm_chain_list_TCC1|✅ proved - incomplete|shostak|0.300|
|decidable_interval_TCC1|✅ proved - incomplete|shostak|0.579|
|decidable_interval_TCC2|✅ proved - incomplete|shostak|0.542|
|decidable_interval_TCC3|✅ proved - incomplete|shostak|0.420|
|sum_square_zero_havers_TCC1|✅ proved - incomplete|shostak|0.070|
|sum_square_zero_havers_TCC2|✅ proved - incomplete|shostak|0.020|
|sum_square_zero_havers_TCC3|✅ proved - incomplete|shostak|0.385|
|sum_square_zero_havers_def|✅ proved - incomplete|shostak|8.321|
|decidable_interval_sq_TCC1|✅ proved - incomplete|shostak|0.483|
|decidable_interval_sq_TCC2|✅ proved - incomplete|shostak|0.472|
|decidable_interval_sq_TCC3|✅ proved - incomplete|shostak|0.407|
|decidable_interval_sq_TCC4|✅ proved - incomplete|shostak|0.150|
|decidable_interval_sq_TCC5|✅ proved - incomplete|shostak|0.131|
|decidable_interval_sq_TCC6|✅ proved - incomplete|shostak|0.100|
|decidable_interval_sq_TCC7|✅ proved - incomplete|shostak|0.249|
|decidable_interval_sq_TCC8|✅ proved - incomplete|shostak|0.259|
|decidable_interval_sq_TCC9|✅ proved - incomplete|shostak|0.040|
|decidable_interval_def_TCC1|✅ proved - incomplete|shostak|0.469|
|decidable_interval_def_TCC2|✅ proved - incomplete|shostak|0.807|
|decidable_interval_def|✅ proved - incomplete|shostak|7.202|
|decide_interval_def_TCC1|✅ proved - incomplete|shostak|0.275|
|decide_interval_def_TCC2|✅ proved - incomplete|shostak|0.080|
|decide_interval_def|✅ proved - incomplete|shostak|0.000|
|decidable_intervals_exist_TCC1|✅ proved - incomplete|shostak|0.393|
|decidable_intervals_exist|✅ proved - incomplete|shostak|3.870|
|decidable_intervals_sq_exist|✅ proved - incomplete|shostak|5.192|
|hutch_int_meas_TCC1|✅ proved - incomplete|shostak|0.040|
|hutch_int_meas_TCC2|✅ proved - incomplete|shostak|0.373|
|hutch_int_meas_TCC3|✅ proved - incomplete|shostak|0.281|
|hutch_int_meas_TCC4|✅ proved - incomplete|shostak|1.357|
|signs_upd_TCC1|✅ proved - incomplete|shostak|0.401|
|signs_upd_TCC2|✅ proved - incomplete|shostak|0.382|
|signs_upd_TCC3|✅ proved - incomplete|shostak|0.481|
|signs_upd_sound|✅ proved - incomplete|shostak|2.250|
|hutch_int_basic_TCC1|✅ proved - incomplete|shostak|0.056|
|hutch_int_basic_TCC2|✅ proved - incomplete|shostak|0.287|
|hutch_int_basic_TCC3|✅ proved - incomplete|shostak|0.094|
|hutch_int_basic_TCC4|✅ proved - incomplete|shostak|0.117|
|hutch_int_basic_TCC5|✅ proved - incomplete|shostak|0.000|
|hutch_int_basic_TCC6|✅ proved - incomplete|shostak|0.204|
|hutch_int_basic_TCC7|✅ proved - incomplete|shostak|0.167|
|hutch_int_basic_TCC8|✅ proved - incomplete|shostak|3.650|
|hutch_int_basic_TCC9|✅ proved - incomplete|shostak|0.536|
|Knuth_total_TCC1|✅ proved - incomplete|shostak|0.030|
|Knuth_total_TCC2|✅ proved - incomplete|shostak|0.040|
|Knuth_total_TCC3|✅ proved - incomplete|shostak|0.051|
|Knuth_total_TCC4|✅ proved - incomplete|shostak|0.040|
|Knuth_total_TCC5|✅ proved - complete|shostak|0.010|
|hutch_int_TCC1|✅ proved - incomplete|shostak|0.204|
|hutch_int_TCC2|✅ proved - incomplete|shostak|0.572|
|hutch_int_TCC3|✅ proved - incomplete|shostak|2.913|
|hutch_int_TCC4|✅ proved - incomplete|shostak|1.076|
|hutch_int_TCC5|✅ proved - incomplete|shostak|14.007|
|hutch_int_TCC6|✅ proved - incomplete|shostak|0.792|
|hutch_int_TCC7|✅ proved - incomplete|shostak|2.878|
|hutch_int_TCC8|✅ proved - incomplete|shostak|1.339|
|hutch_int_TCC9|✅ proved - incomplete|shostak|0.481|
|hutch_int_def|✅ proved - incomplete|shostak|0.000|
|poly_system_list_TCC1|✅ proved - incomplete|shostak|0.070|
|poly_system_list_TCC2|✅ proved - incomplete|shostak|0.140|
|poly_system_list_TCC3|✅ proved - incomplete|shostak|0.945|
|hutch_TCC1|✅ proved - incomplete|shostak|0.129|
|hutch_TCC2|✅ proved - incomplete|shostak|0.509|
|hutch_TCC3|✅ proved - incomplete|shostak|0.790|
|hutch_TCC4|✅ proved - incomplete|shostak|0.280|
|hutch_def|✅ proved - incomplete|shostak|3.567|
|test_TCC1|✅ proved - complete|shostak|0.010|
|test|✅ proved - incomplete|shostak|6.772|

## `strategies`
No formula declaration found.## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib/pvsio_utils/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230712-static-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230710-tcc-gen.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230707-defattach.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230706-extrategies.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`|
