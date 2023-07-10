# Summary for `Tarski`
Run started at 0:43:20 7/8/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **513**   | **513**    | **513**    | **0**  | **6:4.162 s**   |
|top|0|0|0|0|0.000|
|sturmtarski|36|36|36|0|43.360|
|compute_sturm_tarski|22|22|22|0|18.255|
|poly_families|67|67|67|0|1:16.922|
|tarski_query|15|15|15|0|22.443|
|tarski_query_matrix|16|16|16|0|17.577|
|poly_systems|12|12|12|0|10.964|
|system_solvers|16|16|16|0|4.053|
|preprocessing_univariate|57|57|57|0|20.391|
|poly_system_strategy|41|41|41|0|21.648|
|dnf_polynomials|131|131|131|0|37.794|
|dnf_strategy|29|29|29|0|10.522|
|hutch|71|71|71|0|1:20.233|
|strategies|0|0|0|0|0.000|
## Detailed Summary 
## `top`
No formula declaration found.
## `sturmtarski`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|constructed_sturm_sequence?_TCC1|✅ proved - complete|shostak|0.163|
|constructed_sturm_sequence?_TCC2|✅ proved - complete|shostak|0.020|
|constructed_sturm_sequence?_TCC3|✅ proved - complete|shostak|0.040|
|constructed_sturm_sequence?_TCC4|✅ proved - incomplete|shostak|0.148|
|constructed_sturm_sequence?_TCC5|✅ proved - incomplete|shostak|0.177|
|constructed_sturm_sequence?_TCC6|✅ proved - incomplete|shostak|0.140|
|constructed_sturm_seq_repeated_root|✅ proved - incomplete|shostak|1.386|
|default_root_degree?_TCC1|✅ proved - incomplete|shostak|0.252|
|default_root_degree?_TCC2|✅ proved - incomplete|shostak|0.070|
|constructed_sturm_seq_root_degrees_TCC1|✅ proved - incomplete|shostak|0.581|
|constructed_sturm_seq_root_degrees|✅ proved - incomplete|shostak|0.181|
|default_root_deg_TCC1|✅ proved - incomplete|shostak|0.190|
|default_root_deg_def|✅ proved - incomplete|shostak|0.120|
|constructed_sturm_seq_root_degree_lower_bound|✅ proved - incomplete|shostak|2.497|
|sturm_tarski_basic_1|✅ proved - incomplete|shostak|3.718|
|sturm_tarski_basic_2|✅ proved - incomplete|shostak|1.800|
|sturm_tarski_basic_3|✅ proved - incomplete|shostak|7.545|
|sturm_tarski_basic_TCC1|✅ proved - incomplete|shostak|0.090|
|sturm_tarski_basic|✅ proved - incomplete|shostak|11.504|
|constructed_sturm_roots_between_enum_TCC1|✅ proved - incomplete|shostak|0.070|
|constructed_sturm_roots_between_enum_TCC2|✅ proved - incomplete|shostak|0.070|
|constructed_sturm_roots_between_enum|✅ proved - incomplete|shostak|1.675|
|Sol_TCC1|✅ proved - incomplete|shostak|0.108|
|Sol_union_top|✅ proved - incomplete|shostak|0.099|
|NSol_TCC1|✅ proved - incomplete|shostak|0.050|
|NSol_union_top|✅ proved - incomplete|shostak|0.458|
|sturm_tarski_TCC1|✅ proved - incomplete|shostak|0.110|
|sturm_tarski_TCC2|✅ proved - incomplete|shostak|0.610|
|sturm_tarski|✅ proved - incomplete|shostak|5.537|
|Sol_TCC2|✅ proved - incomplete|shostak|0.050|
|NSol_TCC2|✅ proved - incomplete|shostak|0.186|
|sturm_tarski_unbounded_TCC1|✅ proved - incomplete|shostak|0.072|
|sturm_tarski_unbounded_TCC2|✅ proved - incomplete|shostak|0.260|
|sturm_tarski_unbounded|✅ proved - incomplete|shostak|2.909|
|NSol_sq_gt|✅ proved - incomplete|shostak|0.329|
|NSol_sq_lt|✅ proved - incomplete|shostak|0.145|

## `compute_sturm_tarski`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|der_prod_TCC1|✅ proved - complete|shostak|0.010|
|der_prod_TCC2|✅ proved - incomplete|shostak|0.255|
|finite_bij_real_remove_one|✅ proved - complete|shostak|0.258|
|finite_bij_real_remove_two|✅ proved - complete|shostak|0.598|
|computed_sturm_spec_TCC1|✅ proved - incomplete|shostak|0.160|
|computed_sturm_spec_TCC2|✅ proved - incomplete|shostak|0.650|
|computed_sturm_spec_TCC3|✅ proved - incomplete|shostak|0.776|
|computed_sturm_spec_TCC4|✅ proved - incomplete|shostak|0.169|
|computed_sturm_spec_TCC5|✅ proved - incomplete|shostak|0.766|
|computed_sturm_spec|✅ proved - incomplete|shostak|5.958|
|Eq_computed_remainder?_TCC1|✅ proved - complete|shostak|0.010|
|Eq_computed_remainder?_TCC2|✅ proved - incomplete|shostak|0.185|
|compute_TQ_param_TCC1|✅ proved - incomplete|shostak|0.210|
|compute_TQ_param_TCC2|✅ proved - incomplete|shostak|0.300|
|compute_TQ_param_TCC3|✅ proved - incomplete|shostak|0.281|
|compute_TQ_param_TCC4|✅ proved - incomplete|shostak|0.347|
|compute_TQ_param_TCC5|✅ proved - incomplete|shostak|0.339|
|TQ_TCC1|✅ proved - complete|shostak|0.030|
|TQ_TCC2|✅ proved - incomplete|shostak|0.182|
|TQ_TCC3|✅ proved - incomplete|shostak|0.932|
|TQ_def|✅ proved - incomplete|shostak|5.674|
|TQ_eq_g|✅ proved - incomplete|shostak|0.165|

## `poly_families`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|polynomial_prod_int|✅ proved - incomplete|shostak|0.090|
|sigma_j|✅ proved - incomplete|shostak|0.274|
|prod_polynomials_TCC1|✅ proved - incomplete|shostak|0.010|
|prod_polynomials_TCC2|✅ proved - incomplete|shostak|0.020|
|prod_polynomials_TCC3|✅ proved - complete|shostak|0.010|
|prod_polynomials_TCC4|✅ proved - incomplete|shostak|0.050|
|prod_polynomials_TCC5|✅ proved - incomplete|shostak|0.030|
|prod_polynomials_TCC6|✅ proved - incomplete|shostak|0.140|
|prod_polynomials_TCC7|✅ proved - incomplete|shostak|3.581|
|prod_polynomials_list_TCC1|✅ proved - incomplete|shostak|0.100|
|prod_polynomials_list_TCC2|✅ proved - incomplete|shostak|0.222|
|prod_polynomials_list_TCC3|✅ proved - incomplete|shostak|0.734|
|prod_polynomials_list_TCC4|✅ proved - incomplete|shostak|0.130|
|prod_polynomials_list_TCC5|✅ proved - incomplete|shostak|0.732|
|prod_polynomials_list_TCC6|✅ proved - incomplete|shostak|0.760|
|prod_polynomials_list_TCC7|✅ proved - incomplete|shostak|0.591|
|prod_polynomials_list_TCC8|✅ proved - incomplete|shostak|2.051|
|TQ_fam_TCC1|✅ proved - incomplete|shostak|0.219|
|TQ_fam_TCC2|✅ proved - incomplete|shostak|0.606|
|TQ_fam_def_TCC1|✅ proved - incomplete|shostak|1.184|
|TQ_fam_def|✅ proved - incomplete|shostak|0.538|
|Sol_TCC1|✅ proved - incomplete|shostak|0.247|
|Sol_all_TCC1|✅ proved - incomplete|shostak|0.245|
|sign_prod_TCC1|✅ proved - complete|shostak|0.030|
|sign_prod_TCC2|✅ proved - incomplete|shostak|2.877|
|sign_prod_eq|✅ proved - incomplete|shostak|0.286|
|sign_ext_pow_TCC1|✅ proved - complete|shostak|0.010|
|sign_ext_pow_TCC2|✅ proved - incomplete|shostak|0.010|
|sign_ext_pow|✅ proved - incomplete|shostak|0.255|
|sign_ext_prod_polynomials_TCC1|✅ proved - incomplete|shostak|0.075|
|sign_ext_prod_polynomials|✅ proved - incomplete|shostak|1.240|
|unsig_TCC1|✅ proved - complete|shostak|0.164|
|sig_unsig|✅ proved - complete|shostak|0.170|
|sig_seq_unsig_seq|✅ proved - complete|shostak|0.200|
|base_3_seq_TCC1|✅ proved - complete|shostak|0.040|
|base_3_seq_TCC2|✅ proved - incomplete|shostak|0.502|
|base_6_seq_TCC1|✅ proved - incomplete|shostak|0.040|
|sig_seq_base_3_onto|✅ proved - incomplete|shostak|1.212|
|sig_seq_base_3_onto_2_TCC1|✅ proved - incomplete|shostak|0.030|
|sig_seq_base_3_onto_2|✅ proved - incomplete|shostak|0.308|
|sig_seq_base_6_onto_TCC1|✅ proved - incomplete|shostak|0.100|
|sig_seq_base_6_onto|✅ proved - incomplete|shostak|1.435|
|sig_seq_base_6_onto_2_TCC1|✅ proved - incomplete|shostak|0.100|
|sig_seq_base_6_onto_2|✅ proved - incomplete|shostak|0.376|
|base_3_seq_unique|✅ proved - incomplete|shostak|1.307|
|base_n_3_seq_unique|✅ proved - incomplete|shostak|0.120|
|union_upto_TCC1|✅ proved - complete|shostak|0.030|
|union_upto_TCC2|✅ proved - complete|shostak|0.030|
|union_upto_TCC3|✅ proved - complete|shostak|0.010|
|union_upto_TCC4|✅ proved - complete|shostak|0.082|
|union_upto_finite|✅ proved - complete|shostak|0.123|
|real_set_disj_union_cards_TCC1|✅ proved - complete|shostak|0.060|
|real_set_disj_union_cards|✅ proved - incomplete|shostak|0.401|
|mult_tarski_query_simple_TCC1|✅ proved - incomplete|shostak|0.041|
|mult_tarski_query_simple|✅ proved - incomplete|shostak|0.000|
|split_index_fun_TCC1|✅ proved - complete|shostak|0.045|
|split_index_fun_TCC2|✅ proved - complete|shostak|0.155|
|split_base6_TCC1|✅ proved - complete|shostak|0.010|
|splits_to_base3|✅ proved - incomplete|shostak|0.060|
|sign_prod_coeff6_TCC1|✅ proved - incomplete|shostak|0.147|
|NSol_seq6_TCC1|✅ proved - incomplete|shostak|0.140|
|mult_tarski_query_simple_6_0_to_3|✅ proved - incomplete|shostak|6.522|
|sign_coeff6_zero_entry_eq|✅ proved - incomplete|shostak|0.030|
|sign_coeff6_zero_TCC1|✅ proved - incomplete|shostak|1.663|
|sigma_disjoinction_6|✅ proved - incomplete|shostak|13.484|
|mult_tarski_query_simple_6_above_2_TCC1|✅ proved - incomplete|shostak|0.040|
|mult_tarski_query_simple_6_above_2|✅ proved - incomplete|shostak|30.398|

## `tarski_query`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|NSol_squared_gt|✅ proved - incomplete|shostak|0.160|
|NSol_squared_lt|✅ proved - incomplete|shostak|0.120|
|NSol_poly1_lt|✅ proved - incomplete|shostak|0.056|
|A3_TCC1|✅ proved - incomplete|shostak|0.060|
|A3_inv_TCC1|✅ proved - incomplete|shostak|0.030|
|A3_inv_TCC2|✅ proved - incomplete|shostak|0.676|
|TQ_vect3_TCC1|✅ proved - complete|shostak|0.010|
|TQ_vect3_TCC2|✅ proved - incomplete|shostak|0.070|
|TQ_vect3_TCC3|✅ proved - incomplete|shostak|0.092|
|TQ_vect3_TCC4|✅ proved - incomplete|shostak|1.268|
|NSol_vect3_TCC1|✅ proved - incomplete|shostak|0.951|
|tarski_query_system_basic_3|✅ proved - incomplete|shostak|5.974|
|A6_TCC1|✅ proved - incomplete|shostak|0.060|
|NSol_vect6_TCC1|✅ proved - incomplete|shostak|2.017|
|tarski_query_system_basic_6|✅ proved - incomplete|shostak|10.899|

## `tarski_query_matrix`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|TQ_vect3k_TCC1|✅ proved - incomplete|shostak|0.130|
|TQ_vect3k_TCC2|✅ proved - incomplete|shostak|0.151|
|TQ_vect6k_TCC1|✅ proved - incomplete|shostak|0.200|
|TQ_vect6k_TCC2|✅ proved - incomplete|shostak|0.170|
|NSol_vect3k_TCC1|✅ proved - incomplete|shostak|0.076|
|NSol_vect3k_TCC2|✅ proved - incomplete|shostak|0.140|
|NSol_vect6k_TCC1|✅ proved - incomplete|shostak|0.069|
|NSol_vect6k_TCC2|✅ proved - incomplete|shostak|0.160|
|A66_inv_TCC1|✅ proved - incomplete|shostak|0.060|
|A66_TCC1|✅ proved - incomplete|shostak|0.041|
|A66_TCC2|✅ proved - incomplete|shostak|0.100|
|multi_sturm_tarski_6by6|✅ proved - incomplete|shostak|6.743|
|multi_sturm_tarski_NSol|✅ proved - incomplete|shostak|2.033|
|A63_TCC1|✅ proved - incomplete|shostak|0.070|
|A63_def|✅ proved - incomplete|shostak|0.020|
|multi_sturm_tarski_NSol63|✅ proved - incomplete|shostak|7.414|

## `poly_systems`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|system_roots_enum|✅ proved - incomplete|shostak|1.305|
|strict_poly_system_solvable_TCC1|✅ proved - incomplete|shostak|0.030|
|strict_poly_system_solvable|✅ proved - incomplete|shostak|0.000|
|A63_tensor_power_mat_row_TCC1|✅ proved - incomplete|shostak|0.040|
|A63_tensor_power_mat_row_TCC2|✅ proved - incomplete|shostak|0.120|
|A63_tensor_power_mat_row_TCC3|✅ proved - incomplete|shostak|0.030|
|A63_tensor_power_mat_row_TCC4|✅ proved - incomplete|shostak|0.027|
|A63_tensor_power_mat_row_TCC5|✅ proved - incomplete|shostak|0.050|
|A63_tensor_power_mat_row_TCC6|✅ proved - incomplete|shostak|0.722|
|A63_tensor_power_mat_row_def_TCC1|✅ proved - incomplete|shostak|0.160|
|A63_tensor_power_mat_row_def|✅ proved - incomplete|shostak|6.343|
|sturm_tarski_solver_slow_basic_TCC1|✅ proved - incomplete|shostak|2.137|

## `system_solvers`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|rows_fun_TCC1|✅ proved - incomplete|shostak|0.039|
|entry_fun_TCC1|✅ proved - incomplete|shostak|0.080|
|entry_fun_TCC2|✅ proved - incomplete|shostak|0.090|
|entry_is|✅ proved - incomplete|shostak|0.699|
|TQlist_fun_TCC1|✅ proved - incomplete|shostak|0.031|
|TQlist_fun_TCC2|✅ proved - incomplete|shostak|0.150|
|TQlist_lem_TCC1|✅ proved - incomplete|shostak|0.035|
|TQlist_lem|✅ proved - incomplete|shostak|0.299|
|sturm_tarski_faster_TCC1|✅ proved - incomplete|shostak|0.100|
|sturm_tarski_faster_TCC2|✅ proved - incomplete|shostak|0.101|
|sturm_tarski_faster_TCC3|✅ proved - incomplete|shostak|0.160|
|sturm_tarski_faster_TCC4|✅ proved - incomplete|shostak|1.375|
|Test1_TCC1|✅ proved - incomplete|shostak|0.414|
|Test1_TCC2|✅ proved - incomplete|shostak|0.330|
|Test2recurse_TCC1|✅ proved - incomplete|shostak|0.090|
|Test2recurse_TCC2|✅ proved - incomplete|shostak|0.060|

## `preprocessing_univariate`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|polynomialDomMonomCoeffOne_TCC1|✅ proved - complete|shostak|0.010|
|polynomialDomMonomCoeffOne_TCC2|✅ proved - complete|shostak|0.010|
|polynomialDomMonomCoeffOne|✅ proved - incomplete|shostak|0.534|
|polynomialDominationCoeff1|✅ proved - incomplete|shostak|0.563|
|polynomialDomLC|✅ proved - incomplete|shostak|0.200|
|polynomialDomLC2|✅ proved - incomplete|shostak|0.249|
|polynomialDomLC3|✅ proved - incomplete|shostak|0.170|
|polynomialDomLC2Neg|✅ proved - incomplete|shostak|0.575|
|polyLCPos|✅ proved - incomplete|shostak|0.270|
|testcase_TCC1|✅ proved - complete|shostak|0.010|
|testcase_TCC2|✅ proved - complete|shostak|0.010|
|testcase|✅ proved - incomplete|shostak|0.701|
|polyLCPosUniv|✅ proved - incomplete|shostak|0.020|
|polyLCNeg|✅ proved - incomplete|shostak|0.080|
|evenPowerEquivalence_TCC1|✅ proved - complete|shostak|0.010|
|evenPowerEquivalence_TCC2|✅ proved - complete|shostak|0.010|
|evenPowerEquivalence|✅ proved - complete|shostak|0.164|
|oddPowerEquivalence_TCC1|✅ proved - complete|shostak|0.060|
|oddPowerEquivalence_TCC2|✅ proved - complete|shostak|0.050|
|oddPowerEquivalence|✅ proved - complete|shostak|0.313|
|polyEvalAtExtReal_TCC1|✅ proved - complete|shostak|0.010|
|polyEvalAtExtReal|✅ proved - incomplete|shostak|0.020|
|polynomialDomMonomCoeffOneOdd|✅ proved - incomplete|shostak|0.223|
|polynomialDomMonomCoeffOneOddNeg|✅ proved - incomplete|shostak|0.230|
|polynomialDomMonomCoeffOneOddNegCoeff|✅ proved - incomplete|shostak|0.342|
|sequenceRelHelper|✅ proved - incomplete|shostak|0.811|
|sequenceRelation|✅ proved - incomplete|shostak|1.442|
|polynomialDomMonomNegEvenDeg_TCC1|✅ proved - incomplete|shostak|0.073|
|polynomialDomMonomNegEvenDeg|✅ proved - incomplete|shostak|0.292|
|polynomialDomMonomNegEvenDeg1_TCC1|✅ proved - incomplete|shostak|0.080|
|polynomialDomMonomNegEvenDeg1|✅ proved - incomplete|shostak|0.150|
|polynomialOddDegLessThanZero|✅ proved - incomplete|shostak|1.199|
|polynomialOddDegGreaterThanZero|✅ proved - incomplete|shostak|1.779|
|polynomialOddDegGreaterThanZero1|✅ proved - incomplete|shostak|1.328|
|polyOddDegPos|✅ proved - incomplete|shostak|0.268|
|polyOddDegNeg|✅ proved - incomplete|shostak|0.134|
|polyOddDegZero|✅ proved - incomplete|shostak|0.151|
|figuringOutModsBidir|✅ proved - incomplete|shostak|0.160|
|polyPlugInZero|✅ proved - incomplete|shostak|0.312|
|preprocessingLemma1_TCC1|✅ proved - incomplete|shostak|0.020|
|preprocessingLemma1|✅ proved - incomplete|shostak|0.040|
|preprocessingLemma2|✅ proved - incomplete|shostak|0.734|
|preprocessingLemma3|✅ proved - incomplete|shostak|0.270|
|preprocessingLemma4|✅ proved - incomplete|shostak|0.321|
|preprocessingLemmaOddGeneralize|✅ proved - incomplete|shostak|2.005|
|preprocessingLemma5|✅ proved - incomplete|shostak|0.030|
|preprocessingTheorem|✅ proved - incomplete|shostak|0.073|
|polyLCPosConj|✅ proved - incomplete|shostak|0.606|
|polyLCNegConj|✅ proved - incomplete|shostak|0.472|
|preprocessingConjLemmaOddGeneralize|✅ proved - incomplete|shostak|0.281|
|preprocessingConjLC|✅ proved - incomplete|shostak|2.161|
|preprocessingConjLemma5|✅ proved - incomplete|shostak|0.030|
|preprocessingConjTheorem|✅ proved - incomplete|shostak|0.140|
|sum_squares_rec_TCC1|✅ proved - complete|shostak|0.055|
|sum_squares_rec_TCC2|✅ proved - incomplete|shostak|0.080|
|sum_squares_rec_TCC3|✅ proved - complete|shostak|0.050|
|sum_squares_TCC1|✅ proved - incomplete|shostak|0.010|

## `poly_system_strategy`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|first_eq_TCC1|✅ proved - complete|shostak|0.020|
|first_eq_TCC2|✅ proved - incomplete|shostak|0.030|
|first_eq_TCC3|✅ proved - incomplete|shostak|0.094|
|first_eq_TCC4|✅ proved - incomplete|shostak|0.080|
|first_eq_TCC5|✅ proved - incomplete|shostak|0.070|
|first_eq_TCC6|✅ proved - incomplete|shostak|0.031|
|first_eq_TCC7|✅ proved - complete|shostak|0.010|
|greatify_poly_TCC1|✅ proved - complete|shostak|0.060|
|greatify_rel_TCC1|✅ proved - complete|shostak|0.020|
|greatify_def_TCC1|✅ proved - complete|shostak|0.080|
|greatify_def|✅ proved - incomplete|shostak|0.391|
|compute_solvable_single_TCC1|✅ proved - incomplete|shostak|0.030|
|compute_solvable_single_TCC2|✅ proved - incomplete|shostak|0.318|
|compute_solvable_single_TCC3|✅ proved - incomplete|shostak|0.380|
|compute_solvable_single_TCC4|✅ proved - incomplete|shostak|0.101|
|compute_solvable_single_TCC5|✅ proved - incomplete|shostak|0.110|
|compute_solvable_single_def|✅ proved - incomplete|shostak|0.000|
|poly_deriv_integer|✅ proved - complete|shostak|0.061|
|compute_solvable_TCC1|✅ proved - incomplete|shostak|0.110|
|compute_solvable_TCC2|✅ proved - incomplete|shostak|0.165|
|compute_solvable_TCC3|✅ proved - incomplete|shostak|0.190|
|compute_solvable_TCC4|✅ proved - incomplete|shostak|0.256|
|compute_solvable_TCC5|✅ proved - incomplete|shostak|0.122|
|compute_solvable_TCC6|✅ proved - incomplete|shostak|0.110|
|compute_solvable_TCC7|✅ proved - incomplete|shostak|1.183|
|compute_solvable_TCC8|✅ proved - incomplete|shostak|0.210|
|compute_solvable_new_TCC1|✅ proved - incomplete|shostak|0.270|
|compute_solvable_new_TCC2|✅ proved - incomplete|shostak|1.034|
|compute_solvable_new_TCC3|✅ proved - incomplete|shostak|0.151|
|preprocessing_better1|✅ proved - incomplete|shostak|1.723|
|compute_solvable_improved|✅ proved - incomplete|shostak|1.739|
|compute_solvable_def|✅ proved - incomplete|shostak|8.849|
|compute_solvable_new_def|✅ proved - incomplete|shostak|0.030|
|poly_system_list_TCC1|✅ proved - incomplete|shostak|0.070|
|poly_system_list_TCC2|✅ proved - incomplete|shostak|0.130|
|poly_system_list_TCC3|✅ proved - incomplete|shostak|0.908|
|tarski_TCC1|✅ proved - incomplete|shostak|0.108|
|tarski_TCC2|✅ proved - incomplete|shostak|0.485|
|tarski_TCC3|✅ proved - incomplete|shostak|0.759|
|tarski_TCC4|✅ proved - incomplete|shostak|0.250|
|tarski_def|✅ proved - incomplete|shostak|0.910|

## `dnf_polynomials`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|eval_TCC1|✅ proved - complete|shostak|0.041|
|eval_TCC2|✅ proved - complete|shostak|0.040|
|eval_TCC3|✅ proved - complete|shostak|0.040|
|eval_TCC4|✅ proved - complete|shostak|0.040|
|eval_TCC5|✅ proved - complete|shostak|0.029|
|eval_TCC6|✅ proved - complete|shostak|0.040|
|eval_TCC7|✅ proved - complete|shostak|0.040|
|eval_TCC8|✅ proved - complete|shostak|0.040|
|eval_TCC9|✅ proved - complete|shostak|0.040|
|eval_TCC10|✅ proved - complete|shostak|0.030|
|eval_TCC11|✅ proved - complete|shostak|0.040|
|eval_TCC12|✅ proved - complete|shostak|0.050|
|eval_TCC13|✅ proved - complete|shostak|0.053|
|eval_TCC14|✅ proved - complete|shostak|0.050|
|eval_atm_list_TCC1|✅ proved - complete|shostak|0.020|
|eval_atm_list_TCC2|✅ proved - incomplete|shostak|0.150|
|eval_TCC15|✅ proved - complete|shostak|0.020|
|eval_TCC16|✅ proved - incomplete|shostak|0.102|
|degr_rec_TCC1|✅ proved - complete|shostak|0.010|
|degr_rec_TCC2|✅ proved - complete|shostak|0.020|
|degr_rec_TCC3|✅ proved - incomplete|shostak|0.030|
|degr_rec_TCC4|✅ proved - complete|shostak|0.010|
|degr_rec_TCC5|✅ proved - incomplete|shostak|0.040|
|degr_rec_lemma|✅ proved - incomplete|shostak|0.095|
|degr_rec_change_function|✅ proved - incomplete|shostak|0.090|
|construct_record_TCC1|✅ proved - incomplete|shostak|0.102|
|depth_TCC1|✅ proved - complete|shostak|0.040|
|depth_TCC2|✅ proved - complete|shostak|0.040|
|depth_TCC3|✅ proved - complete|shostak|0.040|
|depth_TCC4|✅ proved - complete|shostak|0.031|
|depth_TCC5|✅ proved - complete|shostak|0.050|
|depth_TCC6|✅ proved - complete|shostak|0.050|
|abs_nnf_rel_preserves_truth|✅ proved - incomplete|shostak|0.359|
|abs_nnf_rel_pnot_preserves_truth|✅ proved - incomplete|shostak|0.099|
|nnf_TCC1|✅ proved - incomplete|shostak|0.090|
|nnf_TCC2|✅ proved - incomplete|shostak|0.086|
|nnf_TCC3|✅ proved - incomplete|shostak|0.090|
|nnf_TCC4|✅ proved - incomplete|shostak|0.090|
|nnf_TCC5|✅ proved - incomplete|shostak|0.124|
|nnf_TCC6|✅ proved - incomplete|shostak|0.120|
|nnf_TCC7|✅ proved - incomplete|shostak|0.120|
|nnf_TCC8|✅ proved - incomplete|shostak|0.123|
|nnf_TCC9|✅ proved - incomplete|shostak|0.080|
|nnf_TCC10|✅ proved - incomplete|shostak|0.120|
|nnf_TCC11|✅ proved - incomplete|shostak|0.123|
|nnf_TCC12|✅ proved - incomplete|shostak|0.120|
|nnf_TCC13|✅ proved - incomplete|shostak|0.120|
|nnf_TCC14|✅ proved - incomplete|shostak|0.228|
|nnf_TCC15|✅ proved - incomplete|shostak|0.210|
|nnf_TCC16|✅ proved - incomplete|shostak|0.218|
|nnf_TCC17|✅ proved - incomplete|shostak|0.200|
|nnf_TCC18|✅ proved - incomplete|shostak|0.220|
|nnf_TCC19|✅ proved - incomplete|shostak|0.224|
|nnf_TCC20|✅ proved - incomplete|shostak|0.230|
|nnf_TCC21|✅ proved - incomplete|shostak|0.219|
|nnf_TCC22|✅ proved - incomplete|shostak|0.110|
|nnf_TCC23|✅ proved - incomplete|shostak|0.090|
|nnf_TCC24|✅ proved - incomplete|shostak|0.097|
|nnf_TCC25|✅ proved - incomplete|shostak|0.100|
|nnf_TCC26|✅ proved - incomplete|shostak|0.190|
|nnf_TCC27|✅ proved - incomplete|shostak|0.195|
|nnf_TCC28|✅ proved - incomplete|shostak|0.180|
|nnf_TCC29|✅ proved - incomplete|shostak|0.210|
|nnf_TCC30|✅ proved - incomplete|shostak|0.190|
|nnf_TCC31|✅ proved - incomplete|shostak|0.180|
|nnf_TCC32|✅ proved - incomplete|shostak|0.175|
|nnf_TCC33|✅ proved - incomplete|shostak|0.200|
|nnf_not_has_special_form|✅ proved - incomplete|shostak|4.132|
|nnf_has_special_form|✅ proved - incomplete|shostak|0.189|
|pull_out_conjunctions_TCC1|✅ proved - complete|shostak|0.030|
|pull_out_conjunctions_TCC2|✅ proved - complete|shostak|0.020|
|pull_out_conjunctions_TCC3|✅ proved - complete|shostak|0.020|
|length_pull_out_conjunctions|✅ proved - incomplete|shostak|0.347|
|conjunct_element_TCC1|✅ proved - complete|shostak|0.040|
|conjunct_element_TCC2|✅ proved - complete|shostak|0.024|
|conjunct_element_TCC3|✅ proved - incomplete|shostak|0.090|
|conjunct_lists_TCC1|✅ proved - complete|shostak|0.020|
|conjunct_lists_TCC2|✅ proved - incomplete|shostak|0.090|
|length_conjunct_lists|✅ proved - incomplete|shostak|0.240|
|form_disjunction_TCC1|✅ proved - incomplete|shostak|0.060|
|form_disjunction_TCC2|✅ proved - incomplete|shostak|0.060|
|form_disjunction_TCC3|✅ proved - incomplete|shostak|0.180|
|form_disjunction_TCC4|✅ proved - incomplete|shostak|0.188|
|form_disjunction_TCC5|✅ proved - complete|shostak|0.050|
|distribute_ands_TCC1|✅ proved - complete|shostak|0.010|
|distribute_ands_TCC2|✅ proved - complete|shostak|0.020|
|distribute_ands_TCC3|✅ proved - complete|shostak|0.030|
|distribute_ands_TCC4|✅ proved - complete|shostak|0.052|
|distribute_ands_TCC5|✅ proved - complete|shostak|0.060|
|distribute_ands_TCC6|✅ proved - incomplete|shostak|0.586|
|distribute_ands_TCC7|✅ proved - complete|shostak|0.020|
|distribute_ands_TCC8|✅ proved - complete|shostak|0.052|
|conjunct_element_prop|✅ proved - incomplete|shostak|0.120|
|conjunct_lists_prop|✅ proved - incomplete|shostak|0.150|
|conjunct_elements_truth_prop|✅ proved - incomplete|shostak|0.525|
|conjunct_truth_prop|✅ proved - incomplete|shostak|0.455|
|form_disjunction_prop|✅ proved - incomplete|shostak|1.599|
|distrib_ands_special_form|✅ proved - incomplete|shostak|0.383|
|special_form_conjunct|✅ proved - incomplete|shostak|0.030|
|form_disjunction_eval|✅ proved - incomplete|shostak|0.697|
|pull_out_conjunctions_eval|✅ proved - incomplete|shostak|1.365|
|form_disjunction_truth_TCC1|✅ proved - incomplete|shostak|0.020|
|form_disjunction_truth|✅ proved - incomplete|shostak|0.039|
|dnf_TCC1|✅ proved - incomplete|shostak|0.000|
|nnf_pnot_preserves_truth|✅ proved - incomplete|shostak|0.000|
|nnf_preserves_truth|✅ proved - incomplete|shostak|2.724|
|distribute_pand_preserves_truth_new_TCC1|✅ proved - complete|shostak|0.010|
|distribute_pand_preserves_truth_new|✅ proved - incomplete|shostak|0.172|
|distribute_ands_preserves_truth|✅ proved - incomplete|shostak|0.614|
|dnf_const_preserves_truth|✅ proved - incomplete|shostak|0.299|
|dnf_const_preserves_truth_1_TCC1|✅ proved - complete|shostak|0.020|
|dnf_const_preserves_truth_1|✅ proved - incomplete|shostak|0.291|
|eval_rel_preserves_truth|✅ proved - incomplete|shostak|0.142|
|dnf_prel_preserves_truth_len1_TCC1|✅ proved - complete|shostak|0.030|
|dnf_prel_preserves_truth_len1|✅ proved - incomplete|shostak|6.784|
|dnf_prel_preserves_truth_len0|✅ proved - incomplete|shostak|1.223|
|dnf_prel_preserves_truth|✅ proved - incomplete|shostak|0.981|
|dnf_prel_preserves_truth2_TCC1|✅ proved - complete|shostak|0.030|
|dnf_prel_preserves_truth2|✅ proved - incomplete|shostak|0.060|
|dnf_special_form|✅ proved - incomplete|shostak|0.070|
|construct_dnf_length|✅ proved - incomplete|shostak|0.481|
|construct_dnf_car_length_TCC1|✅ proved - incomplete|shostak|0.060|
|construct_dnf_car_length|✅ proved - incomplete|shostak|0.722|
|has_no_ors_prop_TCC1|✅ proved - incomplete|shostak|0.060|
|has_no_ors_prop|✅ proved - incomplete|shostak|1.100|
|eval_atm_list_truth|✅ proved - incomplete|shostak|0.422|
|eval_atm_list_prop|✅ proved - incomplete|shostak|0.409|
|has_no_ors_dnf_prop|✅ proved - incomplete|shostak|0.240|
|construction_lemma_1|✅ proved - incomplete|shostak|0.365|
|construction_lemma_2|✅ proved - incomplete|shostak|0.331|
|dnf_preserves_truth|✅ proved - incomplete|shostak|1.118|

## `dnf_strategy`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|remove_constants_rec_TCC1|✅ proved - complete|shostak|0.020|
|remove_constants_rec_TCC2|✅ proved - incomplete|shostak|0.160|
|remove_constants_rec_TCC3|✅ proved - incomplete|shostak|0.050|
|when_not_none|✅ proved - incomplete|shostak|0.114|
|relation_remove_constants_rec|✅ proved - incomplete|shostak|0.290|
|remove_constants_TCC1|✅ proved - incomplete|shostak|1.351|
|relation_remove_constants_single|✅ proved - incomplete|shostak|0.050|
|relation_remove_constants_null_TCC1|✅ proved - incomplete|shostak|0.042|
|relation_remove_constants_null_TCC2|✅ proved - incomplete|shostak|0.060|
|relation_remove_constants_null|✅ proved - incomplete|shostak|0.393|
|relation_remove_constants_TCC1|✅ proved - incomplete|shostak|0.040|
|relation_remove_constants|✅ proved - incomplete|shostak|0.736|
|eval_truth|✅ proved - incomplete|shostak|0.073|
|degr_lemma|✅ proved - incomplete|shostak|0.290|
|eval_remove_constants_none|✅ proved - incomplete|shostak|0.200|
|eval_remove_constants|✅ proved - incomplete|shostak|0.311|
|conj_to_tarski_TCC1|✅ proved - incomplete|shostak|0.040|
|conj_to_tarski_TCC2|✅ proved - incomplete|shostak|0.083|
|conj_to_tarski_TCC3|✅ proved - incomplete|shostak|0.090|
|conj_to_tarski_TCC4|✅ proved - incomplete|shostak|0.082|
|conj_to_tarski_TCC5|✅ proved - incomplete|shostak|0.382|
|satisfiability_relation_TCC1|✅ proved - incomplete|shostak|0.030|
|satisfiability_relation|✅ proved - incomplete|shostak|0.662|
|satisfiability_relation_system_TCC1|✅ proved - incomplete|shostak|0.060|
|satisfiability_relation_system_TCC2|✅ proved - incomplete|shostak|0.162|
|satisfiability_relation_system|✅ proved - incomplete|shostak|4.086|
|conj_to_tarski_sound|✅ proved - incomplete|shostak|0.000|
|dnf_eval_truth|✅ proved - incomplete|shostak|0.531|
|rel_to_tarski_sound|✅ proved - incomplete|shostak|0.134|

## `hutch`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Eq_computed_remainder_seq?_TCC1|✅ proved - incomplete|shostak|0.040|
|Eq_computed_remainder_seq?_TCC2|✅ proved - complete|shostak|0.080|
|Eq_computed_remainder_seq?_TCC3|✅ proved - incomplete|shostak|0.116|
|sturm_chain_list_TCC1|✅ proved - incomplete|shostak|0.296|
|decidable_interval_TCC1|✅ proved - incomplete|shostak|0.571|
|decidable_interval_TCC2|✅ proved - incomplete|shostak|0.541|
|decidable_interval_TCC3|✅ proved - incomplete|shostak|0.411|
|sum_square_zero_havers_TCC1|✅ proved - incomplete|shostak|0.061|
|sum_square_zero_havers_TCC2|✅ proved - incomplete|shostak|0.020|
|sum_square_zero_havers_TCC3|✅ proved - incomplete|shostak|0.363|
|sum_square_zero_havers_def|✅ proved - incomplete|shostak|8.099|
|decidable_interval_sq_TCC1|✅ proved - incomplete|shostak|0.490|
|decidable_interval_sq_TCC2|✅ proved - incomplete|shostak|0.472|
|decidable_interval_sq_TCC3|✅ proved - incomplete|shostak|0.392|
|decidable_interval_sq_TCC4|✅ proved - incomplete|shostak|0.149|
|decidable_interval_sq_TCC5|✅ proved - incomplete|shostak|0.129|
|decidable_interval_sq_TCC6|✅ proved - incomplete|shostak|0.100|
|decidable_interval_sq_TCC7|✅ proved - incomplete|shostak|0.240|
|decidable_interval_sq_TCC8|✅ proved - incomplete|shostak|0.257|
|decidable_interval_sq_TCC9|✅ proved - incomplete|shostak|0.050|
|decidable_interval_def_TCC1|✅ proved - incomplete|shostak|0.470|
|decidable_interval_def_TCC2|✅ proved - incomplete|shostak|0.809|
|decidable_interval_def|✅ proved - incomplete|shostak|6.987|
|decide_interval_def_TCC1|✅ proved - incomplete|shostak|0.256|
|decide_interval_def_TCC2|✅ proved - incomplete|shostak|0.079|
|decide_interval_def|✅ proved - incomplete|shostak|0.000|
|decidable_intervals_exist_TCC1|✅ proved - incomplete|shostak|0.374|
|decidable_intervals_exist|✅ proved - incomplete|shostak|3.723|
|decidable_intervals_sq_exist|✅ proved - incomplete|shostak|5.023|
|hutch_int_meas_TCC1|✅ proved - incomplete|shostak|0.040|
|hutch_int_meas_TCC2|✅ proved - incomplete|shostak|0.362|
|hutch_int_meas_TCC3|✅ proved - incomplete|shostak|0.267|
|hutch_int_meas_TCC4|✅ proved - incomplete|shostak|1.350|
|signs_upd_TCC1|✅ proved - incomplete|shostak|0.401|
|signs_upd_TCC2|✅ proved - incomplete|shostak|0.374|
|signs_upd_TCC3|✅ proved - incomplete|shostak|0.467|
|signs_upd_sound|✅ proved - incomplete|shostak|2.146|
|hutch_int_basic_TCC1|✅ proved - incomplete|shostak|0.051|
|hutch_int_basic_TCC2|✅ proved - incomplete|shostak|0.273|
|hutch_int_basic_TCC3|✅ proved - incomplete|shostak|0.090|
|hutch_int_basic_TCC4|✅ proved - incomplete|shostak|0.113|
|hutch_int_basic_TCC5|✅ proved - incomplete|shostak|0.000|
|hutch_int_basic_TCC6|✅ proved - incomplete|shostak|0.194|
|hutch_int_basic_TCC7|✅ proved - incomplete|shostak|0.154|
|hutch_int_basic_TCC8|✅ proved - incomplete|shostak|3.559|
|hutch_int_basic_TCC9|✅ proved - incomplete|shostak|0.525|
|Knuth_total_TCC1|✅ proved - incomplete|shostak|0.040|
|Knuth_total_TCC2|✅ proved - incomplete|shostak|0.050|
|Knuth_total_TCC3|✅ proved - incomplete|shostak|0.040|
|Knuth_total_TCC4|✅ proved - incomplete|shostak|0.050|
|Knuth_total_TCC5|✅ proved - complete|shostak|0.010|
|hutch_int_TCC1|✅ proved - incomplete|shostak|0.210|
|hutch_int_TCC2|✅ proved - incomplete|shostak|0.597|
|hutch_int_TCC3|✅ proved - incomplete|shostak|3.075|
|hutch_int_TCC4|✅ proved - incomplete|shostak|1.095|
|hutch_int_TCC5|✅ proved - incomplete|shostak|14.691|
|hutch_int_TCC6|✅ proved - incomplete|shostak|0.796|
|hutch_int_TCC7|✅ proved - incomplete|shostak|3.007|
|hutch_int_TCC8|✅ proved - incomplete|shostak|1.351|
|hutch_int_TCC9|✅ proved - incomplete|shostak|0.501|
|hutch_int_def|✅ proved - incomplete|shostak|0.000|
|poly_system_list_TCC1|✅ proved - incomplete|shostak|0.080|
|poly_system_list_TCC2|✅ proved - incomplete|shostak|0.146|
|poly_system_list_TCC3|✅ proved - incomplete|shostak|0.973|
|hutch_TCC1|✅ proved - incomplete|shostak|0.127|
|hutch_TCC2|✅ proved - incomplete|shostak|0.517|
|hutch_TCC3|✅ proved - incomplete|shostak|0.831|
|hutch_TCC4|✅ proved - incomplete|shostak|0.291|
|hutch_def|✅ proved - incomplete|shostak|3.654|
|test_TCC1|✅ proved - complete|shostak|0.010|
|test|✅ proved - incomplete|shostak|7.127|

## `strategies`
No formula declaration found.## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib//float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-pvsio-fix.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210219-extratregies.lisp`|
