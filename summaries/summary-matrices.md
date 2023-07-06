# Summary for `matrices`
Run started at 1:17:46 7/4/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **524**   | **524**    | **524**    | **0**  | **6:38.454 s**   |
|top|0|0|0|0|0.000|
|matrices|110|110|110|0|44.395|
|matrix_inv|35|35|35|0|57.383|
|matrix_diag|40|40|40|0|51.849|
|matrix_upper_triang|38|38|38|0|46.032|
|matrix_det|65|65|65|0|37.499|
|matrix_props|80|80|80|0|1:3.289|
|query_coeff|59|59|59|0|14.952|
|tensor_product|78|78|78|0|1:8.496|
|linear_dependence|19|19|19|0|14.559|
## Detailed Summary 
## `top`
No formula declaration found.
## `matrices`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_sigma_swap_TCC1|✅ proved - complete|shostak|0.039|
|length_matrix_eq|✅ proved - complete|shostak|0.060|
|nth_matrix_eq|✅ proved - complete|shostak|0.086|
|length_matrix_equiv|✅ proved - complete|shostak|0.054|
|length_matrix_nth|✅ proved - complete|shostak|0.330|
|matrix_listn_nth|✅ proved - complete|shostak|0.020|
|length_rows|✅ proved - complete|shostak|0.010|
|columns_TCC1|✅ proved - complete|shostak|0.020|
|columns_TCC2|✅ proved - complete|shostak|0.020|
|columns_TCC3|✅ proved - complete|shostak|0.044|
|columns_TCC4|✅ proved - complete|shostak|0.382|
|row_TCC1|✅ proved - complete|shostak|0.020|
|col_TCC1|✅ proved - complete|shostak|0.030|
|col_TCC2|✅ proved - complete|shostak|0.074|
|col_def_TCC1|✅ proved - complete|shostak|0.040|
|col_def_TCC2|✅ proved - complete|shostak|0.030|
|col_def|✅ proved - complete|shostak|0.704|
|col_zero|✅ proved - incomplete|shostak|0.216|
|access_zero|✅ proved - incomplete|shostak|0.050|
|entry_test|✅ proved - complete|shostak|0.020|
|access_row|✅ proved - complete|shostak|0.012|
|access_col|✅ proved - complete|shostak|0.120|
|coltest|✅ proved - complete|shostak|0.020|
|full_matrix_columns_TCC1|✅ proved - complete|shostak|0.043|
|full_matrix_columns|✅ proved - complete|shostak|0.070|
|rows_mn|✅ proved - complete|shostak|0.010|
|columns_mn|✅ proved - complete|shostak|0.060|
|length_row|✅ proved - complete|shostak|0.064|
|length_col|✅ proved - complete|shostak|0.020|
|columns_0_entry|✅ proved - complete|shostak|0.171|
|rows_0_entry|✅ proved - complete|shostak|0.060|
|entry_eq_0|✅ proved - complete|shostak|0.080|
|add_TCC1|✅ proved - complete|shostak|0.033|
|add_TCC2|✅ proved - complete|shostak|0.030|
|add_TCC3|✅ proved - complete|shostak|0.020|
|add_TCC4|✅ proved - complete|shostak|0.020|
|add_TCC5|✅ proved - complete|shostak|0.100|
|add_TCC6|✅ proved - complete|shostak|0.175|
|scal_TCC1|✅ proved - complete|shostak|0.010|
|scal_TCC2|✅ proved - complete|shostak|0.050|
|scal_TCC3|✅ proved - complete|shostak|0.074|
|sub_TCC1|✅ proved - complete|shostak|0.070|
|super_dot_TCC1|✅ proved - complete|shostak|0.030|
|super_dot_TCC2|✅ proved - complete|shostak|0.050|
|super_dot_TCC3|✅ proved - complete|shostak|0.070|
|super_duper_dot_TCC1|✅ proved - complete|shostak|0.020|
|super_duper_dot_TCC2|✅ proved - complete|shostak|0.000|
|access_sum|✅ proved - complete|shostak|1.454|
|access_scal|✅ proved - complete|shostak|0.347|
|vect_scal_1|✅ proved - incomplete|shostak|0.065|
|dot_eq_sigma|✅ proved - incomplete|shostak|1.769|
|dot_zero_right|✅ proved - incomplete|shostak|0.159|
|dot_commutes|✅ proved - complete|shostak|0.080|
|dot_zero_left|✅ proved - incomplete|shostak|0.010|
|length_add_vect|✅ proved - complete|shostak|0.040|
|length_add_vect_same|✅ proved - complete|shostak|0.052|
|length_scal_vect|✅ proved - complete|shostak|0.020|
|form_matrix_TCC1|✅ proved - complete|shostak|0.060|
|form_matrix_TCC2|✅ proved - complete|shostak|0.060|
|form_matrix_TCC3|✅ proved - incomplete|shostak|0.714|
|columns_form_matrix|✅ proved - incomplete|shostak|0.072|
|rows_form_matrix|✅ proved - incomplete|shostak|0.030|
|form_matrix_empty|✅ proved - incomplete|shostak|0.302|
|form_matrix_test1|✅ proved - incomplete|shostak|0.050|
|full_matrix_eq|✅ proved - incomplete|shostak|0.263|
|matrix2array|✅ proved - incomplete|shostak|1.805|
|entry_form_matrix|✅ proved - incomplete|shostak|0.150|
|entry_form_matrix2|✅ proved - incomplete|shostak|0.100|
|form_matrix_eq|✅ proved - incomplete|shostak|0.000|
|matrix_reduce_prop|✅ proved - incomplete|shostak|0.526|
|mult_TCC1|✅ proved - incomplete|shostak|0.262|
|mult_full|✅ proved - incomplete|shostak|0.080|
|mult_null_left|✅ proved - incomplete|shostak|0.114|
|mult_null_right|✅ proved - incomplete|shostak|0.192|
|columns_mult|✅ proved - incomplete|shostak|2.539|
|rows_mult|✅ proved - incomplete|shostak|0.040|
|columns_append|✅ proved - incomplete|shostak|0.659|
|append_mult|✅ proved - incomplete|shostak|2.740|
|matrix_mult_assoc|✅ proved - incomplete|shostak|10.435|
|entry_mult|✅ proved - incomplete|shostak|0.050|
|form_matrix_mult|✅ proved - incomplete|shostak|1.607|
|add_TCC7|✅ proved - incomplete|shostak|4.412|
|columns_add|✅ proved - incomplete|shostak|0.506|
|rows_add|✅ proved - incomplete|shostak|0.040|
|matrix_add_assoc|✅ proved - incomplete|shostak|2.050|
|matrix_add_comm|✅ proved - incomplete|shostak|0.904|
|scal_TCC4|✅ proved - incomplete|shostak|0.158|
|columns_scal|✅ proved - incomplete|shostak|0.299|
|rows_scal|✅ proved - incomplete|shostak|0.050|
|sub_TCC2|✅ proved - incomplete|shostak|0.380|
|rows_sub|✅ proved - incomplete|shostak|0.140|
|columns_sub|✅ proved - incomplete|shostak|0.185|
|matrix_sub_test|✅ proved - incomplete|shostak|0.060|
|Id_TCC1|✅ proved - incomplete|shostak|0.895|
|mult_Id_left|✅ proved - incomplete|shostak|0.447|
|mult_Id_right|✅ proved - incomplete|shostak|0.430|
|rows_Id|✅ proved - incomplete|shostak|0.060|
|columns_Id|✅ proved - incomplete|shostak|0.090|
|entry_Id|✅ proved - incomplete|shostak|0.080|
|transpose_TCC1|✅ proved - incomplete|shostak|0.210|
|rows_transpose|✅ proved - incomplete|shostak|0.039|
|columns_transpose|✅ proved - incomplete|shostak|0.070|
|entry_transpose|✅ proved - incomplete|shostak|0.130|
|transpose_transpose|✅ proved - incomplete|shostak|0.100|
|transpose_mult_TCC1|✅ proved - incomplete|shostak|0.104|
|transpose_mult|✅ proved - incomplete|shostak|1.183|
|form_matrix_square|✅ proved - incomplete|shostak|0.069|
|transpose_Id|✅ proved - incomplete|shostak|0.443|
|vect2matrix_TCC1|✅ proved - incomplete|shostak|0.070|
|vect2matrix_eq|✅ proved - incomplete|shostak|0.214|

## `matrix_inv`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|left_inv_TCC1|✅ proved - incomplete|shostak|0.100|
|left_inv_TCC2|✅ proved - incomplete|shostak|0.140|
|left_inv_TCC3|✅ proved - incomplete|shostak|0.000|
|mult_left_inv_right_TCC1|✅ proved - incomplete|shostak|0.059|
|mult_left_inv_right|✅ proved - incomplete|shostak|7.399|
|invertible?_TCC1|✅ proved - complete|shostak|0.090|
|invertible_rew|✅ proved - incomplete|shostak|6.357|
|inverse_TCC1|✅ proved - incomplete|shostak|0.431|
|inverse_TCC2|✅ proved - incomplete|shostak|1.250|
|mult_inverse_left_TCC1|✅ proved - incomplete|shostak|0.600|
|mult_inverse_left_TCC2|✅ proved - incomplete|shostak|0.744|
|mult_inverse_left|✅ proved - incomplete|shostak|0.548|
|mult_inverse_right|✅ proved - incomplete|shostak|0.560|
|inverse_unique|✅ proved - incomplete|shostak|3.003|
|invertible_det|✅ proved - incomplete|shostak|0.671|
|invertible_mult_TCC1|✅ proved - incomplete|shostak|0.189|
|invertible_mult|✅ proved - incomplete|shostak|0.430|
|inverse_mult_TCC1|✅ proved - incomplete|shostak|0.303|
|inverse_mult|✅ proved - incomplete|shostak|3.880|
|det_inverse_TCC1|✅ proved - incomplete|shostak|0.020|
|det_inverse|✅ proved - incomplete|shostak|0.848|
|inverse_invertible|✅ proved - incomplete|shostak|0.405|
|inverse_inverse_TCC1|✅ proved - incomplete|shostak|0.442|
|inverse_inverse|✅ proved - incomplete|shostak|0.881|
|GH_TCC1|✅ proved - complete|shostak|0.010|
|GH_TCC2|✅ proved - complete|shostak|0.010|
|GH_TCC3|✅ proved - incomplete|shostak|0.020|
|GH_TCC4|✅ proved - incomplete|shostak|0.304|
|det_nonzero_simple_prod|✅ proved - incomplete|shostak|19.909|
|mult_induction_TCC1|✅ proved - complete|shostak|0.060|
|mult_induction_TCC2|✅ proved - incomplete|shostak|0.293|
|mult_induction_TCC3|✅ proved - incomplete|shostak|0.357|
|mult_induction_TCC4|✅ proved - incomplete|shostak|0.696|
|mult_induction|✅ proved - incomplete|shostak|2.173|
|det_transpose|✅ proved - incomplete|shostak|4.201|

## `matrix_diag`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|diagonalize_TCC1|✅ proved - incomplete|shostak|0.196|
|diagonalize_TCC2|✅ proved - incomplete|shostak|0.249|
|diagonalize_TCC3|✅ proved - complete|shostak|0.040|
|diagonalize_TCC4|✅ proved - incomplete|shostak|0.289|
|diagonalize_TCC5|✅ proved - incomplete|shostak|0.299|
|diagonalize_TCC6|✅ proved - incomplete|shostak|0.194|
|diagonalize_TCC7|✅ proved - incomplete|shostak|0.917|
|diagonalize_TCC8|✅ proved - incomplete|shostak|0.233|
|diagonalize_TCC9|✅ proved - incomplete|shostak|0.294|
|diagonalize_TCC10|✅ proved - incomplete|shostak|0.203|
|diagonalize_TCC11|✅ proved - incomplete|shostak|0.274|
|diagonalize_TCC12|✅ proved - incomplete|shostak|0.354|
|diagonalize_TCC13|✅ proved - incomplete|shostak|1.598|
|diagonalize_TCC14|✅ proved - incomplete|shostak|0.343|
|diagonalize_TCC15|✅ proved - incomplete|shostak|0.934|
|diagonalize_TCC16|✅ proved - incomplete|shostak|0.220|
|diagonalize_TCC17|✅ proved - incomplete|shostak|2.487|
|diagonalize_TCC18|✅ proved - incomplete|shostak|0.373|
|diagonalize_TCC19|✅ proved - incomplete|shostak|1.456|
|diagonalize_TCC20|✅ proved - incomplete|shostak|1.092|
|diagonalize_TCC21|✅ proved - incomplete|shostak|1.149|
|diagonalize_TCC22|✅ proved - incomplete|shostak|0.213|
|diagonalize_TCC23|✅ proved - incomplete|shostak|0.281|
|diagonalize_TCC24|✅ proved - incomplete|shostak|3.688|
|diagonalize_TCC25|✅ proved - incomplete|shostak|0.275|
|diag_TCC1|✅ proved - complete|shostak|0.050|
|diag_TCC2|✅ proved - incomplete|shostak|0.086|
|diag_TCC3|✅ proved - incomplete|shostak|0.600|
|diag_TCC4|✅ proved - incomplete|shostak|0.088|
|diag_TCC5|✅ proved - complete|shostak|0.050|
|diag_TCC6|✅ proved - complete|shostak|0.110|
|diag_TCC7|✅ proved - incomplete|shostak|1.455|
|diag_TCC8|✅ proved - incomplete|shostak|3.340|
|diag_TCC9|✅ proved - incomplete|shostak|1.497|
|diag_TCC10|✅ proved - incomplete|shostak|2.312|
|diag_TCC11|✅ proved - incomplete|shostak|7.863|
|diag_TCC12|✅ proved - incomplete|shostak|4.078|
|diag_TCC13|✅ proved - incomplete|shostak|7.654|
|diag_det_zero_row|✅ proved - incomplete|shostak|1.646|
|det_mult|✅ proved - incomplete|shostak|3.369|

## `matrix_upper_triang`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|upper_triangulate_TCC1|✅ proved - incomplete|shostak|0.179|
|upper_triangulate_TCC2|✅ proved - incomplete|shostak|0.210|
|upper_triangulate_TCC3|✅ proved - complete|shostak|0.030|
|upper_triangulate_TCC4|✅ proved - incomplete|shostak|0.263|
|upper_triangulate_TCC5|✅ proved - incomplete|shostak|0.265|
|upper_triangulate_TCC6|✅ proved - incomplete|shostak|0.220|
|upper_triangulate_TCC7|✅ proved - incomplete|shostak|0.184|
|upper_triangulate_TCC8|✅ proved - incomplete|shostak|0.325|
|upper_triangulate_TCC9|✅ proved - incomplete|shostak|0.214|
|upper_triangulate_TCC10|✅ proved - incomplete|shostak|0.194|
|upper_triangulate_TCC11|✅ proved - incomplete|shostak|0.265|
|upper_triangulate_TCC12|✅ proved - incomplete|shostak|0.334|
|upper_triangulate_TCC13|✅ proved - incomplete|shostak|0.585|
|upper_triangulate_TCC14|✅ proved - incomplete|shostak|0.312|
|upper_triangulate_TCC15|✅ proved - incomplete|shostak|3.885|
|upper_triangulate_TCC16|✅ proved - incomplete|shostak|0.208|
|upper_triangulate_TCC17|✅ proved - incomplete|shostak|2.564|
|upper_triangulate_TCC18|✅ proved - incomplete|shostak|0.334|
|upper_triangulate_TCC19|✅ proved - incomplete|shostak|1.045|
|upper_triangulate_TCC20|✅ proved - incomplete|shostak|0.610|
|upper_triangulate_TCC21|✅ proved - incomplete|shostak|0.557|
|upper_triangulate_TCC22|✅ proved - incomplete|shostak|0.195|
|upper_triangulate_TCC23|✅ proved - incomplete|shostak|1.990|
|upper_triangulate_TCC24|✅ proved - incomplete|shostak|10.597|
|upper_triangulate_TCC25|✅ proved - incomplete|shostak|0.000|
|upper_triangulate_TCC26|✅ proved - incomplete|shostak|0.675|
|upper_triangulate_TCC27|✅ proved - incomplete|shostak|0.325|
|upper_triangulate_TCC28|✅ proved - incomplete|shostak|0.831|
|upper_triangulate_TCC29|✅ proved - incomplete|shostak|0.213|
|upper_triangulate_TCC30|✅ proved - incomplete|shostak|2.326|
|upper_triangulate_TCC31|✅ proved - incomplete|shostak|0.594|
|upper_triangulate_TCC32|✅ proved - incomplete|shostak|1.028|
|upper_triangulate_TCC33|✅ proved - incomplete|shostak|0.718|
|upper_triangulate_TCC34|✅ proved - incomplete|shostak|1.199|
|upper_triangulate_TCC35|✅ proved - incomplete|shostak|0.929|
|upper_triangulate_TCC36|✅ proved - incomplete|shostak|1.646|
|upper_triangulate_TCC37|✅ proved - incomplete|shostak|9.819|
|upper_triangulate_TCC38|✅ proved - incomplete|shostak|0.164|

## `matrix_det`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Esr_TCC1|✅ proved - incomplete|shostak|0.112|
|entry_Esr|✅ proved - incomplete|shostak|0.077|
|rows_Esr|✅ proved - incomplete|shostak|0.040|
|columns_Esr|✅ proved - incomplete|shostak|0.080|
|det_Esr|✅ proved - incomplete|shostak|1.640|
|transpose_Esr|✅ proved - incomplete|shostak|0.165|
|mult_Esr_left_TCC1|✅ proved - complete|shostak|0.060|
|mult_Esr_left|✅ proved - incomplete|shostak|1.560|
|mult_Esr_Esr_inv|✅ proved - incomplete|shostak|0.953|
|Ers_TCC1|✅ proved - incomplete|shostak|0.000|
|entry_Ers|✅ proved - incomplete|shostak|0.205|
|rows_Ers|✅ proved - incomplete|shostak|0.140|
|columns_Ers|✅ proved - incomplete|shostak|0.170|
|mult_Ers_left|✅ proved - incomplete|shostak|2.321|
|transpose_Ers|✅ proved - incomplete|shostak|0.730|
|det_Ers|✅ proved - incomplete|shostak|1.561|
|mult_Ers_Ers_inv|✅ proved - incomplete|shostak|1.281|
|Easr_TCC1|✅ proved - incomplete|shostak|0.250|
|entry_Easr|✅ proved - incomplete|shostak|0.165|
|rows_Easr|✅ proved - incomplete|shostak|0.085|
|columns_Easr|✅ proved - incomplete|shostak|0.120|
|mult_Easr_left_TCC1|✅ proved - complete|shostak|0.131|
|mult_Easr_left|✅ proved - incomplete|shostak|1.646|
|transpose_Easr|✅ proved - incomplete|shostak|0.330|
|det_Easr|✅ proved - incomplete|shostak|3.171|
|mult_Easr_Easr_inv|✅ proved - incomplete|shostak|1.097|
|ZERO_TCC1|✅ proved - incomplete|shostak|0.120|
|prod_diag_TCC1|✅ proved - complete|shostak|0.061|
|prod_diag_TCC2|✅ proved - complete|shostak|0.040|
|prod_diag_TCC3|✅ proved - complete|shostak|0.060|
|prod_diag_remove_0_0_TCC1|✅ proved - incomplete|shostak|0.090|
|prod_diag_remove_0_0|✅ proved - incomplete|shostak|0.811|
|diagonal_upper_triangular|✅ proved - complete|shostak|0.020|
|det_upper_triangular|✅ proved - incomplete|shostak|1.138|
|det_upper_triangular_zero|✅ proved - incomplete|shostak|0.359|
|upper_triangular_mult|✅ proved - incomplete|shostak|1.382|
|lower_triangular_mult|✅ proved - incomplete|shostak|1.074|
|upper_triangular_Id|✅ proved - incomplete|shostak|0.082|
|lower_triangular_Id|✅ proved - incomplete|shostak|0.080|
|upper_triangular_Easr|✅ proved - incomplete|shostak|0.083|
|lower_triangular_Easr|✅ proved - incomplete|shostak|0.080|
|prod_mat_TCC1|✅ proved - complete|shostak|0.074|
|prod_mat_TCC2|✅ proved - complete|shostak|0.020|
|prod_mat_TCC3|✅ proved - incomplete|shostak|0.244|
|prod_mat_eq|✅ proved - incomplete|shostak|0.433|
|mult_prod_mat_TCC1|✅ proved - complete|shostak|0.114|
|mult_prod_mat|✅ proved - incomplete|shostak|1.197|
|prod_mat_expand_left_TCC1|✅ proved - complete|shostak|0.072|
|prod_mat_expand_left|✅ proved - incomplete|shostak|1.174|
|transpose_prod_mat_TCC1|✅ proved - complete|shostak|0.072|
|transpose_prod_mat_TCC2|✅ proved - incomplete|shostak|0.090|
|transpose_prod_mat|✅ proved - incomplete|shostak|1.072|
|mult_simple_prod_TCC1|✅ proved - incomplete|shostak|0.150|
|mult_simple_prod|✅ proved - incomplete|shostak|1.089|
|Id_simple_prod|✅ proved - incomplete|shostak|0.241|
|Esr_simple_prod|✅ proved - incomplete|shostak|0.393|
|Ers_simple_prod|✅ proved - incomplete|shostak|0.676|
|Easr_simple_prod|✅ proved - incomplete|shostak|0.384|
|det_simple_prod_1|✅ proved - incomplete|shostak|2.016|
|det_mult_simple_prod_left|✅ proved - incomplete|shostak|2.250|
|Easr_null|✅ proved - incomplete|shostak|0.090|
|transpose_simple_prod_TCC1|✅ proved - incomplete|shostak|0.050|
|transpose_simple_prod|✅ proved - incomplete|shostak|1.746|
|diagonal_simple_prod|✅ proved - incomplete|shostak|0.000|
|is_simple_prod_implic|✅ proved - incomplete|shostak|0.282|

## `matrix_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|matrix_2x2|✅ proved - incomplete|shostak|0.832|
|length_row|✅ proved - complete|shostak|0.100|
|length_nth_row|✅ proved - complete|shostak|0.038|
|columns_cdr_TCC1|✅ proved - complete|shostak|0.060|
|columns_cdr|✅ proved - complete|shostak|0.300|
|columns_cons|✅ proved - complete|shostak|0.140|
|access_col|✅ proved - complete|shostak|0.204|
|remove_TCC1|✅ proved - complete|shostak|0.165|
|remove_TCC2|✅ proved - complete|shostak|0.030|
|remove_TCC3|✅ proved - complete|shostak|0.040|
|remove_TCC4|✅ proved - incomplete|shostak|0.477|
|remove_posfullmatrix|✅ proved - incomplete|shostak|0.283|
|rows_remove|✅ proved - incomplete|shostak|0.215|
|columns_remove|✅ proved - incomplete|shostak|0.728|
|remove_remove_1_0|✅ proved - incomplete|shostak|2.148|
|remove_remove_1_0_0|✅ proved - incomplete|shostak|1.864|
|remove_remove_1_n|✅ proved - incomplete|shostak|2.202|
|entry_remove|✅ proved - incomplete|shostak|0.140|
|remove_Id_0_0_TCC1|✅ proved - complete|shostak|0.027|
|remove_Id_0_0|✅ proved - incomplete|shostak|0.668|
|remove_test|✅ proved - incomplete|shostak|0.030|
|det_TCC1|✅ proved - incomplete|shostak|2.014|
|det_test|✅ proved - incomplete|shostak|0.477|
|det_size_noteq|✅ proved - incomplete|shostak|0.140|
|swap_fun_test|✅ proved - complete|shostak|0.086|
|swap_TCC1|✅ proved - incomplete|shostak|0.365|
|entry_swap|✅ proved - incomplete|shostak|0.060|
|swap_test_TCC1|✅ proved - complete|shostak|0.048|
|swap_test|✅ proved - incomplete|shostak|0.060|
|remove_swap_1|✅ proved - incomplete|shostak|0.750|
|remove_swap_2_TCC1|✅ proved - incomplete|shostak|0.120|
|remove_swap_2_TCC2|✅ proved - complete|shostak|0.074|
|remove_swap_2_TCC3|✅ proved - complete|shostak|0.070|
|remove_swap_2|✅ proved - incomplete|shostak|1.298|
|swap_sym|✅ proved - incomplete|shostak|0.275|
|det_swap_0_1|✅ proved - incomplete|shostak|12.603|
|swap_swap_matrix|✅ proved - incomplete|shostak|0.383|
|swap_similar|✅ proved - incomplete|shostak|0.763|
|det_swap|✅ proved - incomplete|shostak|2.772|
|row_swap|✅ proved - incomplete|shostak|0.416|
|rows_swap|✅ proved - incomplete|shostak|0.050|
|columns_swap|✅ proved - incomplete|shostak|0.100|
|swap_id|✅ proved - incomplete|shostak|0.237|
|swap_eq|✅ proved - incomplete|shostak|0.199|
|det_rows_eq_0|✅ proved - incomplete|shostak|0.130|
|replace_row_TCC1|✅ proved - complete|shostak|0.256|
|replace_row_TCC2|✅ proved - complete|shostak|0.265|
|replace_row_TCC3|✅ proved - complete|shostak|0.095|
|replace_row_TCC4|✅ proved - complete|shostak|2.281|
|replace_row_TCC5|✅ proved - complete|shostak|0.090|
|replace_row_TCC6|✅ proved - complete|shostak|0.331|
|replace_row_TCC7|✅ proved - complete|shostak|0.088|
|replace_row_TCC8|✅ proved - complete|shostak|0.070|
|replace_row_TCC9|✅ proved - complete|shostak|2.474|
|entry_replace_row|✅ proved - complete|shostak|0.080|
|rows_replace_row|✅ proved - complete|shostak|0.080|
|columns_replace_row|✅ proved - complete|shostak|0.141|
|remove_replace_row|✅ proved - incomplete|shostak|0.837|
|swap_replace_row_TCC1|✅ proved - incomplete|shostak|0.124|
|swap_replace_row_TCC2|✅ proved - incomplete|shostak|0.130|
|swap_replace_row_TCC3|✅ proved - incomplete|shostak|0.135|
|swap_replace_row|✅ proved - incomplete|shostak|3.453|
|row_replace_row|✅ proved - complete|shostak|0.200|
|remove_replace_row_eq|✅ proved - incomplete|shostak|0.811|
|det_replace_row_sum_TCC1|✅ proved - complete|shostak|0.040|
|det_replace_row_sum_TCC2|✅ proved - complete|shostak|0.050|
|det_replace_row_sum|✅ proved - incomplete|shostak|6.190|
|det_replace_row_scal_TCC1|✅ proved - complete|shostak|0.070|
|det_replace_row_scal|✅ proved - incomplete|shostak|4.813|
|replace_row_id_TCC1|✅ proved - complete|shostak|0.020|
|replace_row_id|✅ proved - incomplete|shostak|0.255|
|det_replace_row_sum_scal_TCC1|✅ proved - complete|shostak|0.138|
|det_replace_row_sum_scal|✅ proved - incomplete|shostak|0.872|
|replace_row_sum_to_scal_TCC1|✅ proved - complete|shostak|0.100|
|replace_row_sum_to_scal_TCC2|✅ proved - complete|shostak|0.116|
|replace_row_sum_to_scal|✅ proved - incomplete|shostak|0.230|
|det_Id|✅ proved - incomplete|shostak|2.790|
|det_first_column_zero|✅ proved - incomplete|shostak|0.718|
|remove_transpose_TCC1|✅ proved - incomplete|shostak|0.098|
|remove_transpose|✅ proved - incomplete|shostak|0.667|

## `query_coeff`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|bump_one_ind_TCC1|✅ proved - complete|shostak|0.040|
|bump_one_ind_TCC2|✅ proved - complete|shostak|0.060|
|bump_one_ind_TCC3|✅ proved - complete|shostak|0.060|
|bump_one_ind_TCC4|✅ proved - complete|shostak|0.084|
|bump_one_ind_TCC5|✅ proved - complete|shostak|0.080|
|bump_one_ind_TCC6|✅ proved - complete|shostak|0.129|
|switch_one_entry_TCC1|✅ proved - complete|shostak|0.030|
|switch_one_entry_TCC2|✅ proved - complete|shostak|0.090|
|switch_one_entry_TCC3|✅ proved - complete|shostak|0.075|
|switch_one_entry_TCC4|✅ proved - complete|shostak|0.070|
|switch_one_entry_TCC5|✅ proved - complete|shostak|0.010|
|switch_one_entry_TCC6|✅ proved - complete|shostak|0.413|
|switch_is_with_TCC1|✅ proved - complete|shostak|0.030|
|switch_is_with|✅ proved - incomplete|shostak|2.686|
|bump_one_ind_list_TCC1|✅ proved - complete|shostak|0.030|
|bump_one_ind_list_TCC2|✅ proved - complete|shostak|0.230|
|bump_one_ind_list_TCC3|✅ proved - complete|shostak|0.054|
|bump_one_ind_list_TCC4|✅ proved - complete|shostak|0.110|
|bump_one_ind_list_TCC5|✅ proved - complete|shostak|0.110|
|bump_one_ind_list_TCC6|✅ proved - complete|shostak|0.083|
|bump_one_ind_list_TCC7|✅ proved - complete|shostak|0.040|
|bump_one_ind_list_TCC8|✅ proved - complete|shostak|0.130|
|bump_one_ind_list_TCC9|✅ proved - complete|shostak|0.167|
|bump_one_ind_list_TCC10|✅ proved - complete|shostak|0.120|
|bump_one_ind_list_TCC11|✅ proved - complete|shostak|0.064|
|bump_one_below|✅ proved - complete|shostak|0.268|
|bump_one_ind_lem|✅ proved - incomplete|shostak|0.914|
|bump_one_ind_lem2_TCC1|✅ proved - complete|shostak|0.010|
|bump_one_ind_lem2_TCC2|✅ proved - complete|shostak|0.070|
|bump_one_ind_lem2|✅ proved - incomplete|shostak|1.242|
|low2_TCC1|✅ proved - complete|shostak|0.101|
|low2_TCC2|✅ proved - complete|shostak|0.110|
|low2_lem|✅ proved - complete|shostak|0.293|
|bump_one_prep_TCC1|✅ proved - complete|shostak|0.010|
|bump_one_prep|✅ proved - incomplete|shostak|0.916|
|bump_one_prep2_TCC1|✅ proved - incomplete|shostak|0.060|
|bump_one_prep2_TCC2|✅ proved - incomplete|shostak|0.050|
|bump_one_prep2|✅ proved - incomplete|shostak|1.162|
|bump_one_TCC1|✅ proved - incomplete|shostak|0.010|
|switch_to_array|✅ proved - incomplete|shostak|0.959|
|bump_one_list_TCC1|✅ proved - incomplete|shostak|0.010|
|bump_one_list_TCC2|✅ proved - incomplete|shostak|0.744|
|is_nonzero_TCC1|✅ proved - complete|shostak|0.056|
|dot_tail_sum2plus_TCC1|✅ proved - complete|shostak|0.000|
|dot_tail_sum2plus_TCC2|✅ proved - incomplete|shostak|0.160|
|dot_tail_sum2plus_TCC3|✅ proved - incomplete|shostak|0.094|
|dot_tail_sum2plus_TCC4|✅ proved - incomplete|shostak|0.010|
|dot_tail_sum2plus_TCC5|✅ proved - incomplete|shostak|0.190|
|dot_tail_sum2plus_TCC6|✅ proved - incomplete|shostak|0.222|
|dot_tail_sum2plus_TCC7|✅ proved - incomplete|shostak|0.090|
|dot_tail_sum2plus_TCC8|✅ proved - incomplete|shostak|0.159|
|dot_tail_sum_lem|✅ proved - incomplete|shostak|1.079|
|is_nz_TCC1|✅ proved - complete|shostak|0.050|
|dot_tail_sum2_TCC1|✅ proved - incomplete|shostak|0.024|
|dot_tail_sum2_TCC2|✅ proved - incomplete|shostak|0.070|
|dot_tail_sum2_TCC3|✅ proved - incomplete|shostak|0.080|
|dot_tail_sum_lem2_TCC1|✅ proved - incomplete|shostak|0.020|
|dot_tail_sum_lem2_TCC2|✅ proved - incomplete|shostak|0.014|
|dot_tail_sum_lem2|✅ proved - incomplete|shostak|0.710|

## `tensor_product`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|not_null|✅ proved - complete|shostak|0.033|
|mod_int|✅ proved - complete|shostak|0.000|
|tensor_fun_TCC1|✅ proved - complete|shostak|0.120|
|tensor_fun_TCC2|✅ proved - complete|shostak|0.262|
|tensor_fun_TCC3|✅ proved - complete|shostak|0.020|
|tensor_fun_TCC4|✅ proved - complete|shostak|0.346|
|tensor_fun_TCC5|✅ proved - complete|shostak|0.030|
|tensor_fun_TCC6|✅ proved - complete|shostak|0.050|
|tensor_prod_TCC1|✅ proved - incomplete|shostak|0.658|
|entry_tensor_prod|✅ proved - incomplete|shostak|0.183|
|tensor_rows|✅ proved - incomplete|shostak|0.110|
|tensor_cols|✅ proved - incomplete|shostak|0.175|
|tensor_mult_entry_TCC1|✅ proved - complete|shostak|0.140|
|tensor_mult_entry_TCC2|✅ proved - complete|shostak|0.369|
|tensor_mult_entry_TCC3|✅ proved - complete|shostak|0.030|
|tensor_mult_entry_TCC4|✅ proved - complete|shostak|0.324|
|tensor_mult_entry_TCC5|✅ proved - complete|shostak|0.050|
|tensor_mult_entry_TCC6|✅ proved - complete|shostak|0.065|
|tensor_mult_entry|✅ proved - incomplete|shostak|6.621|
|invertible_tensor_TCC1|✅ proved - incomplete|shostak|0.070|
|invertible_tensor_TCC2|✅ proved - incomplete|shostak|0.066|
|invertible_tensor_TCC3|✅ proved - incomplete|shostak|0.030|
|invertible_tensor_TCC4|✅ proved - incomplete|shostak|0.020|
|invertible_tensor|✅ proved - incomplete|shostak|8.050|
|TQMat_TCC1|✅ proved - complete|shostak|1.563|
|TQMatInv_TCC1|✅ proved - complete|shostak|1.784|
|invTQ|✅ proved - incomplete|shostak|2.746|
|is_invTQ_TCC1|✅ proved - incomplete|shostak|2.794|
|is_invTQ|✅ proved - incomplete|shostak|2.297|
|tensor_power_TCC1|✅ proved - complete|shostak|0.060|
|tensor_power_TCC2|✅ proved - complete|shostak|0.020|
|invertible_tensor_power_TCC1|✅ proved - incomplete|shostak|0.410|
|invertible_tensor_power_TCC2|✅ proved - incomplete|shostak|0.020|
|invertible_tensor_power_TCC3|✅ proved - incomplete|shostak|1.102|
|invertible_tensor_power|✅ proved - incomplete|shostak|12.531|
|tensor_power_rows_TCC1|✅ proved - complete|shostak|0.011|
|tensor_power_rows|✅ proved - incomplete|shostak|0.331|
|tensor_power_columns_TCC1|✅ proved - complete|shostak|0.020|
|tensor_power_columns|✅ proved - incomplete|shostak|0.455|
|mod_eq_lem_alt_TCC1|✅ proved - complete|shostak|0.132|
|mod_eq_lem_alt|✅ proved - incomplete|shostak|0.444|
|tensor_prod_assoc|✅ proved - incomplete|shostak|4.999|
|power_assoc|✅ proved - incomplete|shostak|0.544|
|tensor_power_rows_alt|✅ proved - incomplete|shostak|0.020|
|tensor_power_columns_alt|✅ proved - incomplete|shostak|0.030|
|TQXL_TCC1|✅ proved - complete|shostak|0.047|
|TQXLinv_TCC1|✅ proved - complete|shostak|0.070|
|invTQXL|✅ proved - incomplete|shostak|0.240|
|is_invTQXL_TCC1|✅ proved - incomplete|shostak|0.010|
|is_invTQXL_TCC2|✅ proved - incomplete|shostak|0.010|
|is_invTQXL|✅ proved - incomplete|shostak|0.418|
|RowToMat_TCC1|✅ proved - incomplete|shostak|0.000|
|RtM|✅ proved - incomplete|shostak|0.010|
|RowToMat_rows|✅ proved - incomplete|shostak|0.065|
|RowToMat_columns|✅ proved - incomplete|shostak|0.150|
|RowToMat_entry|✅ proved - incomplete|shostak|0.448|
|RowToMat_tensor_prod_TCC1|✅ proved - incomplete|shostak|0.070|
|RowToMat_tensor_prod_TCC2|✅ proved - complete|shostak|0.104|
|RowToMat_tensor_prod_TCC3|✅ proved - complete|shostak|0.165|
|RowToMat_tensor_prod_TCC4|✅ proved - complete|shostak|0.040|
|RowToMat_tensor_prod|✅ proved - incomplete|shostak|8.391|
|RowTensor_TCC1|✅ proved - complete|shostak|0.042|
|RowTensor_TCC2|✅ proved - complete|shostak|0.030|
|RowTensor_TCC3|✅ proved - complete|shostak|0.070|
|RowTensors_same_TCC1|✅ proved - complete|shostak|0.082|
|RowTensors_same_TCC2|✅ proved - incomplete|shostak|0.030|
|RowTensors_same|✅ proved - incomplete|shostak|1.275|
|RowTensor_is_TensorRow_TCC1|✅ proved - incomplete|shostak|0.060|
|RowTensor_is_TensorRow|✅ proved - incomplete|shostak|1.640|
|RowTensor_is_TensorRow2_TCC1|✅ proved - incomplete|shostak|0.050|
|RowTensor_is_TensorRow2|✅ proved - incomplete|shostak|0.102|
|tensor_entry_TCC1|✅ proved - complete|shostak|0.120|
|tensor_entry_TCC2|✅ proved - incomplete|shostak|0.020|
|tensor_entry_TCC3|✅ proved - incomplete|shostak|0.139|
|tensor_entry_TCC4|✅ proved - incomplete|shostak|0.020|
|tensor_entry_TCC5|✅ proved - incomplete|shostak|0.143|
|tensor_entry|✅ proved - incomplete|shostak|4.300|
|tensor_entry_alt|✅ proved - incomplete|shostak|0.000|

## `linear_dependence`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|zerow_TCC1|✅ proved - incomplete|shostak|0.962|
|zerow_dim|✅ proved - incomplete|shostak|0.362|
|zecolumn_dim|✅ proved - incomplete|shostak|0.060|
|row2mat_TCC1|✅ proved - incomplete|shostak|0.569|
|row2mat_dim|✅ proved - incomplete|shostak|0.614|
|sum_rows_TCC1|✅ proved - incomplete|shostak|1.151|
|sum_rows_TCC2|✅ proved - complete|shostak|0.090|
|sum_rows_TCC3|✅ proved - incomplete|shostak|1.163|
|sum_rows_TCC4|✅ proved - complete|shostak|0.020|
|sum_rows_TCC5|✅ proved - complete|shostak|0.050|
|sum_rows_TCC6|✅ proved - complete|shostak|0.010|
|sum_rows_eq|✅ proved - incomplete|shostak|0.493|
|sum_rows_add_start_TCC1|✅ proved - incomplete|shostak|0.646|
|sum_rows_add_start|✅ proved - incomplete|shostak|2.309|
|subtract_same_scal|✅ proved - incomplete|shostak|0.992|
|sum_lem_prep_TCC1|✅ proved - complete|shostak|0.100|
|sum_lem_prep|✅ proved - incomplete|shostak|3.314|
|sum_lem|✅ proved - incomplete|shostak|0.120|
|row_dependence_lem|✅ proved - incomplete|shostak|1.534|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib//float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-pvsio-fix.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210219-extratregies.lisp`|
