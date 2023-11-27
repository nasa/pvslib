# Summary for `matrices`
Run started at 18:36:42 11/24/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **524**   | **524**    | **524**    | **0**  | **5:8.847 s**   |
|top|0|0|0|0|0.000|
|matrices|110|110|110|0|31.617|
|matrix_inv|35|35|35|0|49.046|
|matrix_diag|40|40|40|0|45.598|
|matrix_upper_triang|38|38|38|0|32.171|
|matrix_det|65|65|65|0|29.599|
|matrix_props|80|80|80|0|49.413|
|query_coeff|59|59|59|0|11.272|
|tensor_product|78|78|78|0|50.392|
|linear_dependence|19|19|19|0|9.739|
## Detailed Summary 
## `top`
No formula declaration found.
## `matrices`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_sigma_swap_TCC1|✅ proved - complete|shostak|0.031|
|length_matrix_eq|✅ proved - complete|shostak|0.039|
|nth_matrix_eq|✅ proved - complete|shostak|0.072|
|length_matrix_equiv|✅ proved - complete|shostak|0.040|
|length_matrix_nth|✅ proved - complete|shostak|0.257|
|matrix_listn_nth|✅ proved - complete|shostak|0.020|
|length_rows|✅ proved - complete|shostak|0.000|
|columns_TCC1|✅ proved - complete|shostak|0.026|
|columns_TCC2|✅ proved - complete|shostak|0.010|
|columns_TCC3|✅ proved - complete|shostak|0.050|
|columns_TCC4|✅ proved - complete|shostak|0.289|
|row_TCC1|✅ proved - complete|shostak|0.010|
|col_TCC1|✅ proved - complete|shostak|0.020|
|col_TCC2|✅ proved - complete|shostak|0.054|
|col_def_TCC1|✅ proved - complete|shostak|0.030|
|col_def_TCC2|✅ proved - complete|shostak|0.026|
|col_def|✅ proved - complete|shostak|0.501|
|col_zero|✅ proved - incomplete|shostak|0.155|
|access_zero|✅ proved - incomplete|shostak|0.040|
|entry_test|✅ proved - complete|shostak|0.011|
|access_row|✅ proved - complete|shostak|0.010|
|access_col|✅ proved - complete|shostak|0.081|
|coltest|✅ proved - complete|shostak|0.010|
|full_matrix_columns_TCC1|✅ proved - complete|shostak|0.030|
|full_matrix_columns|✅ proved - complete|shostak|0.052|
|rows_mn|✅ proved - complete|shostak|0.010|
|columns_mn|✅ proved - complete|shostak|0.030|
|length_row|✅ proved - complete|shostak|0.045|
|length_col|✅ proved - complete|shostak|0.020|
|columns_0_entry|✅ proved - complete|shostak|0.125|
|rows_0_entry|✅ proved - complete|shostak|0.040|
|entry_eq_0|✅ proved - complete|shostak|0.066|
|add_TCC1|✅ proved - complete|shostak|0.020|
|add_TCC2|✅ proved - complete|shostak|0.030|
|add_TCC3|✅ proved - complete|shostak|0.016|
|add_TCC4|✅ proved - complete|shostak|0.020|
|add_TCC5|✅ proved - complete|shostak|0.080|
|add_TCC6|✅ proved - complete|shostak|0.126|
|scal_TCC1|✅ proved - complete|shostak|0.010|
|scal_TCC2|✅ proved - complete|shostak|0.030|
|scal_TCC3|✅ proved - complete|shostak|0.057|
|sub_TCC1|✅ proved - complete|shostak|0.050|
|super_dot_TCC1|✅ proved - complete|shostak|0.020|
|super_dot_TCC2|✅ proved - complete|shostak|0.040|
|super_dot_TCC3|✅ proved - complete|shostak|0.046|
|super_duper_dot_TCC1|✅ proved - complete|shostak|0.020|
|super_duper_dot_TCC2|✅ proved - complete|shostak|0.000|
|access_sum|✅ proved - complete|shostak|1.118|
|access_scal|✅ proved - complete|shostak|0.263|
|vect_scal_1|✅ proved - incomplete|shostak|0.070|
|dot_eq_sigma|✅ proved - incomplete|shostak|0.000|
|dot_zero_right|✅ proved - incomplete|shostak|0.129|
|dot_commutes|✅ proved - complete|shostak|0.059|
|dot_zero_left|✅ proved - incomplete|shostak|0.010|
|length_add_vect|✅ proved - complete|shostak|0.040|
|length_add_vect_same|✅ proved - complete|shostak|0.033|
|length_scal_vect|✅ proved - complete|shostak|0.010|
|form_matrix_TCC1|✅ proved - complete|shostak|0.040|
|form_matrix_TCC2|✅ proved - complete|shostak|0.052|
|form_matrix_TCC3|✅ proved - incomplete|shostak|0.497|
|columns_form_matrix|✅ proved - incomplete|shostak|0.053|
|rows_form_matrix|✅ proved - incomplete|shostak|0.020|
|form_matrix_empty|✅ proved - incomplete|shostak|0.226|
|form_matrix_test1|✅ proved - incomplete|shostak|0.034|
|full_matrix_eq|✅ proved - incomplete|shostak|0.205|
|matrix2array|✅ proved - incomplete|shostak|1.364|
|entry_form_matrix|✅ proved - incomplete|shostak|0.110|
|entry_form_matrix2|✅ proved - incomplete|shostak|0.077|
|form_matrix_eq|✅ proved - incomplete|shostak|0.412|
|matrix_reduce_prop|✅ proved - incomplete|shostak|0.389|
|mult_TCC1|✅ proved - incomplete|shostak|0.197|
|mult_full|✅ proved - incomplete|shostak|0.060|
|mult_null_left|✅ proved - incomplete|shostak|0.080|
|mult_null_right|✅ proved - incomplete|shostak|0.141|
|columns_mult|✅ proved - incomplete|shostak|1.785|
|rows_mult|✅ proved - incomplete|shostak|0.030|
|columns_append|✅ proved - incomplete|shostak|0.504|
|append_mult|✅ proved - incomplete|shostak|2.096|
|matrix_mult_assoc|✅ proved - incomplete|shostak|8.094|
|entry_mult|✅ proved - incomplete|shostak|0.049|
|form_matrix_mult|✅ proved - incomplete|shostak|1.299|
|add_TCC7|✅ proved - incomplete|shostak|3.205|
|columns_add|✅ proved - incomplete|shostak|0.385|
|rows_add|✅ proved - incomplete|shostak|0.020|
|matrix_add_assoc|✅ proved - incomplete|shostak|1.603|
|matrix_add_comm|✅ proved - incomplete|shostak|0.000|
|scal_TCC4|✅ proved - incomplete|shostak|0.115|
|columns_scal|✅ proved - incomplete|shostak|0.233|
|rows_scal|✅ proved - incomplete|shostak|0.038|
|sub_TCC2|✅ proved - incomplete|shostak|0.272|
|rows_sub|✅ proved - incomplete|shostak|0.090|
|columns_sub|✅ proved - incomplete|shostak|0.116|
|matrix_sub_test|✅ proved - incomplete|shostak|0.040|
|Id_TCC1|✅ proved - incomplete|shostak|0.643|
|mult_Id_left|✅ proved - incomplete|shostak|0.315|
|mult_Id_right|✅ proved - incomplete|shostak|0.301|
|rows_Id|✅ proved - incomplete|shostak|0.041|
|columns_Id|✅ proved - incomplete|shostak|0.060|
|entry_Id|✅ proved - incomplete|shostak|0.056|
|transpose_TCC1|✅ proved - incomplete|shostak|0.115|
|rows_transpose|✅ proved - incomplete|shostak|0.020|
|columns_transpose|✅ proved - incomplete|shostak|0.040|
|entry_transpose|✅ proved - incomplete|shostak|0.096|
|transpose_transpose|✅ proved - incomplete|shostak|0.065|
|transpose_mult_TCC1|✅ proved - incomplete|shostak|0.066|
|transpose_mult|✅ proved - incomplete|shostak|0.844|
|form_matrix_square|✅ proved - incomplete|shostak|0.038|
|transpose_Id|✅ proved - incomplete|shostak|0.286|
|vect2matrix_TCC1|✅ proved - incomplete|shostak|0.050|
|vect2matrix_eq|✅ proved - incomplete|shostak|0.153|

## `matrix_inv`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|left_inv_TCC1|✅ proved - incomplete|shostak|0.060|
|left_inv_TCC2|✅ proved - incomplete|shostak|0.105|
|left_inv_TCC3|✅ proved - incomplete|shostak|4.284|
|mult_left_inv_right_TCC1|✅ proved - incomplete|shostak|0.043|
|mult_left_inv_right|✅ proved - incomplete|shostak|5.579|
|invertible?_TCC1|✅ proved - complete|shostak|0.059|
|invertible_rew|✅ proved - incomplete|shostak|0.811|
|inverse_TCC1|✅ proved - incomplete|shostak|0.322|
|inverse_TCC2|✅ proved - incomplete|shostak|0.958|
|mult_inverse_left_TCC1|✅ proved - incomplete|shostak|0.395|
|mult_inverse_left_TCC2|✅ proved - incomplete|shostak|0.516|
|mult_inverse_left|✅ proved - incomplete|shostak|0.362|
|mult_inverse_right|✅ proved - incomplete|shostak|0.347|
|inverse_unique|✅ proved - incomplete|shostak|6.167|
|invertible_det|✅ proved - incomplete|shostak|0.446|
|invertible_mult_TCC1|✅ proved - incomplete|shostak|0.125|
|invertible_mult|✅ proved - incomplete|shostak|0.309|
|inverse_mult_TCC1|✅ proved - incomplete|shostak|0.215|
|inverse_mult|✅ proved - incomplete|shostak|2.854|
|det_inverse_TCC1|✅ proved - incomplete|shostak|0.010|
|det_inverse|✅ proved - incomplete|shostak|0.589|
|inverse_invertible|✅ proved - incomplete|shostak|0.288|
|inverse_inverse_TCC1|✅ proved - incomplete|shostak|0.335|
|inverse_inverse|✅ proved - incomplete|shostak|0.656|
|GH_TCC1|✅ proved - complete|shostak|0.000|
|GH_TCC2|✅ proved - complete|shostak|0.010|
|GH_TCC3|✅ proved - incomplete|shostak|0.010|
|GH_TCC4|✅ proved - incomplete|shostak|0.236|
|det_nonzero_simple_prod|✅ proved - incomplete|shostak|16.831|
|mult_induction_TCC1|✅ proved - complete|shostak|0.050|
|mult_induction_TCC2|✅ proved - incomplete|shostak|0.223|
|mult_induction_TCC3|✅ proved - incomplete|shostak|0.252|
|mult_induction_TCC4|✅ proved - incomplete|shostak|0.504|
|mult_induction|✅ proved - incomplete|shostak|1.763|
|det_transpose|✅ proved - incomplete|shostak|3.332|

## `matrix_diag`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|diagonalize_TCC1|✅ proved - incomplete|shostak|0.130|
|diagonalize_TCC2|✅ proved - incomplete|shostak|0.177|
|diagonalize_TCC3|✅ proved - complete|shostak|0.036|
|diagonalize_TCC4|✅ proved - incomplete|shostak|0.187|
|diagonalize_TCC5|✅ proved - incomplete|shostak|0.204|
|diagonalize_TCC6|✅ proved - incomplete|shostak|0.136|
|diagonalize_TCC7|✅ proved - incomplete|shostak|0.622|
|diagonalize_TCC8|✅ proved - incomplete|shostak|0.156|
|diagonalize_TCC9|✅ proved - incomplete|shostak|0.191|
|diagonalize_TCC10|✅ proved - incomplete|shostak|0.127|
|diagonalize_TCC11|✅ proved - incomplete|shostak|0.185|
|diagonalize_TCC12|✅ proved - incomplete|shostak|0.234|
|diagonalize_TCC13|✅ proved - incomplete|shostak|0.000|
|diagonalize_TCC14|✅ proved - incomplete|shostak|0.237|
|diagonalize_TCC15|✅ proved - incomplete|shostak|0.667|
|diagonalize_TCC16|✅ proved - incomplete|shostak|0.157|
|diagonalize_TCC17|✅ proved - incomplete|shostak|1.783|
|diagonalize_TCC18|✅ proved - incomplete|shostak|0.259|
|diagonalize_TCC19|✅ proved - incomplete|shostak|1.014|
|diagonalize_TCC20|✅ proved - incomplete|shostak|0.780|
|diagonalize_TCC21|✅ proved - incomplete|shostak|0.810|
|diagonalize_TCC22|✅ proved - incomplete|shostak|0.133|
|diagonalize_TCC23|✅ proved - incomplete|shostak|0.194|
|diagonalize_TCC24|✅ proved - incomplete|shostak|6.972|
|diagonalize_TCC25|✅ proved - incomplete|shostak|0.216|
|diag_TCC1|✅ proved - complete|shostak|0.030|
|diag_TCC2|✅ proved - incomplete|shostak|0.051|
|diag_TCC3|✅ proved - incomplete|shostak|0.423|
|diag_TCC4|✅ proved - incomplete|shostak|0.070|
|diag_TCC5|✅ proved - complete|shostak|0.035|
|diag_TCC6|✅ proved - complete|shostak|0.080|
|diag_TCC7|✅ proved - incomplete|shostak|0.989|
|diag_TCC8|✅ proved - incomplete|shostak|2.428|
|diag_TCC9|✅ proved - incomplete|shostak|0.000|
|diag_TCC10|✅ proved - incomplete|shostak|1.714|
|diag_TCC11|✅ proved - incomplete|shostak|5.684|
|diag_TCC12|✅ proved - incomplete|shostak|8.352|
|diag_TCC13|✅ proved - incomplete|shostak|2.022|
|diag_det_zero_row|✅ proved - incomplete|shostak|1.133|
|det_mult|✅ proved - incomplete|shostak|6.980|

## `matrix_upper_triang`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|upper_triangulate_TCC1|✅ proved - incomplete|shostak|0.118|
|upper_triangulate_TCC2|✅ proved - incomplete|shostak|0.150|
|upper_triangulate_TCC3|✅ proved - complete|shostak|0.030|
|upper_triangulate_TCC4|✅ proved - incomplete|shostak|0.183|
|upper_triangulate_TCC5|✅ proved - incomplete|shostak|0.184|
|upper_triangulate_TCC6|✅ proved - incomplete|shostak|0.162|
|upper_triangulate_TCC7|✅ proved - incomplete|shostak|0.121|
|upper_triangulate_TCC8|✅ proved - incomplete|shostak|0.222|
|upper_triangulate_TCC9|✅ proved - incomplete|shostak|0.150|
|upper_triangulate_TCC10|✅ proved - incomplete|shostak|0.126|
|upper_triangulate_TCC11|✅ proved - incomplete|shostak|0.185|
|upper_triangulate_TCC12|✅ proved - incomplete|shostak|0.229|
|upper_triangulate_TCC13|✅ proved - incomplete|shostak|0.421|
|upper_triangulate_TCC14|✅ proved - incomplete|shostak|0.216|
|upper_triangulate_TCC15|✅ proved - incomplete|shostak|2.781|
|upper_triangulate_TCC16|✅ proved - incomplete|shostak|0.151|
|upper_triangulate_TCC17|✅ proved - incomplete|shostak|1.954|
|upper_triangulate_TCC18|✅ proved - incomplete|shostak|0.224|
|upper_triangulate_TCC19|✅ proved - incomplete|shostak|0.721|
|upper_triangulate_TCC20|✅ proved - incomplete|shostak|0.430|
|upper_triangulate_TCC21|✅ proved - incomplete|shostak|0.000|
|upper_triangulate_TCC22|✅ proved - incomplete|shostak|0.134|
|upper_triangulate_TCC23|✅ proved - incomplete|shostak|1.458|
|upper_triangulate_TCC24|✅ proved - incomplete|shostak|7.864|
|upper_triangulate_TCC25|✅ proved - incomplete|shostak|0.239|
|upper_triangulate_TCC26|✅ proved - incomplete|shostak|0.480|
|upper_triangulate_TCC27|✅ proved - incomplete|shostak|0.230|
|upper_triangulate_TCC28|✅ proved - incomplete|shostak|0.587|
|upper_triangulate_TCC29|✅ proved - incomplete|shostak|0.167|
|upper_triangulate_TCC30|✅ proved - incomplete|shostak|1.765|
|upper_triangulate_TCC31|✅ proved - incomplete|shostak|0.419|
|upper_triangulate_TCC32|✅ proved - incomplete|shostak|0.774|
|upper_triangulate_TCC33|✅ proved - incomplete|shostak|0.492|
|upper_triangulate_TCC34|✅ proved - incomplete|shostak|0.819|
|upper_triangulate_TCC35|✅ proved - incomplete|shostak|0.694|
|upper_triangulate_TCC36|✅ proved - incomplete|shostak|0.000|
|upper_triangulate_TCC37|✅ proved - incomplete|shostak|7.186|
|upper_triangulate_TCC38|✅ proved - incomplete|shostak|0.105|

## `matrix_det`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Esr_TCC1|✅ proved - incomplete|shostak|0.098|
|entry_Esr|✅ proved - incomplete|shostak|0.057|
|rows_Esr|✅ proved - incomplete|shostak|0.033|
|columns_Esr|✅ proved - incomplete|shostak|0.050|
|det_Esr|✅ proved - incomplete|shostak|1.272|
|transpose_Esr|✅ proved - incomplete|shostak|0.141|
|mult_Esr_left_TCC1|✅ proved - complete|shostak|0.040|
|mult_Esr_left|✅ proved - incomplete|shostak|1.145|
|mult_Esr_Esr_inv|✅ proved - incomplete|shostak|0.693|
|Ers_TCC1|✅ proved - incomplete|shostak|0.791|
|entry_Ers|✅ proved - incomplete|shostak|0.149|
|rows_Ers|✅ proved - incomplete|shostak|0.115|
|columns_Ers|✅ proved - incomplete|shostak|0.124|
|mult_Ers_left|✅ proved - incomplete|shostak|1.679|
|transpose_Ers|✅ proved - incomplete|shostak|0.547|
|det_Ers|✅ proved - incomplete|shostak|1.122|
|mult_Ers_Ers_inv|✅ proved - incomplete|shostak|0.944|
|Easr_TCC1|✅ proved - incomplete|shostak|0.184|
|entry_Easr|✅ proved - incomplete|shostak|0.115|
|rows_Easr|✅ proved - incomplete|shostak|0.060|
|columns_Easr|✅ proved - incomplete|shostak|0.000|
|mult_Easr_left_TCC1|✅ proved - complete|shostak|0.087|
|mult_Easr_left|✅ proved - incomplete|shostak|1.188|
|transpose_Easr|✅ proved - incomplete|shostak|0.264|
|det_Easr|✅ proved - incomplete|shostak|2.353|
|mult_Easr_Easr_inv|✅ proved - incomplete|shostak|0.869|
|ZERO_TCC1|✅ proved - incomplete|shostak|0.105|
|prod_diag_TCC1|✅ proved - complete|shostak|0.040|
|prod_diag_TCC2|✅ proved - complete|shostak|0.031|
|prod_diag_TCC3|✅ proved - complete|shostak|0.040|
|prod_diag_remove_0_0_TCC1|✅ proved - incomplete|shostak|0.070|
|prod_diag_remove_0_0|✅ proved - incomplete|shostak|0.625|
|diagonal_upper_triangular|✅ proved - complete|shostak|0.010|
|det_upper_triangular|✅ proved - incomplete|shostak|0.816|
|det_upper_triangular_zero|✅ proved - incomplete|shostak|0.268|
|upper_triangular_mult|✅ proved - incomplete|shostak|1.008|
|lower_triangular_mult|✅ proved - incomplete|shostak|0.776|
|upper_triangular_Id|✅ proved - incomplete|shostak|0.051|
|lower_triangular_Id|✅ proved - incomplete|shostak|0.060|
|upper_triangular_Easr|✅ proved - incomplete|shostak|0.057|
|lower_triangular_Easr|✅ proved - incomplete|shostak|0.058|
|prod_mat_TCC1|✅ proved - complete|shostak|0.050|
|prod_mat_TCC2|✅ proved - complete|shostak|0.015|
|prod_mat_TCC3|✅ proved - incomplete|shostak|0.161|
|prod_mat_eq|✅ proved - incomplete|shostak|0.290|
|mult_prod_mat_TCC1|✅ proved - complete|shostak|0.075|
|mult_prod_mat|✅ proved - incomplete|shostak|0.801|
|prod_mat_expand_left_TCC1|✅ proved - complete|shostak|0.040|
|prod_mat_expand_left|✅ proved - incomplete|shostak|0.881|
|transpose_prod_mat_TCC1|✅ proved - complete|shostak|0.050|
|transpose_prod_mat_TCC2|✅ proved - incomplete|shostak|0.061|
|transpose_prod_mat|✅ proved - incomplete|shostak|0.763|
|mult_simple_prod_TCC1|✅ proved - incomplete|shostak|0.112|
|mult_simple_prod|✅ proved - incomplete|shostak|0.778|
|Id_simple_prod|✅ proved - incomplete|shostak|0.183|
|Esr_simple_prod|✅ proved - incomplete|shostak|0.282|
|Ers_simple_prod|✅ proved - incomplete|shostak|0.476|
|Easr_simple_prod|✅ proved - incomplete|shostak|0.281|
|det_simple_prod_1|✅ proved - incomplete|shostak|1.458|
|det_mult_simple_prod_left|✅ proved - incomplete|shostak|0.000|
|Easr_null|✅ proved - incomplete|shostak|0.060|
|transpose_simple_prod_TCC1|✅ proved - incomplete|shostak|0.052|
|transpose_simple_prod|✅ proved - incomplete|shostak|1.311|
|diagonal_simple_prod|✅ proved - incomplete|shostak|3.097|
|is_simple_prod_implic|✅ proved - incomplete|shostak|0.187|

## `matrix_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|matrix_2x2|✅ proved - incomplete|shostak|0.562|
|length_row|✅ proved - complete|shostak|0.078|
|length_nth_row|✅ proved - complete|shostak|0.020|
|columns_cdr_TCC1|✅ proved - complete|shostak|0.051|
|columns_cdr|✅ proved - complete|shostak|0.203|
|columns_cons|✅ proved - complete|shostak|0.092|
|access_col|✅ proved - complete|shostak|0.143|
|remove_TCC1|✅ proved - complete|shostak|0.125|
|remove_TCC2|✅ proved - complete|shostak|0.020|
|remove_TCC3|✅ proved - complete|shostak|0.025|
|remove_TCC4|✅ proved - incomplete|shostak|0.331|
|remove_posfullmatrix|✅ proved - incomplete|shostak|0.199|
|rows_remove|✅ proved - incomplete|shostak|0.145|
|columns_remove|✅ proved - incomplete|shostak|0.494|
|remove_remove_1_0|✅ proved - incomplete|shostak|1.549|
|remove_remove_1_0_0|✅ proved - incomplete|shostak|1.443|
|remove_remove_1_n|✅ proved - incomplete|shostak|1.710|
|entry_remove|✅ proved - incomplete|shostak|0.120|
|remove_Id_0_0_TCC1|✅ proved - complete|shostak|0.010|
|remove_Id_0_0|✅ proved - incomplete|shostak|0.513|
|remove_test|✅ proved - incomplete|shostak|0.020|
|det_TCC1|✅ proved - incomplete|shostak|1.417|
|det_test|✅ proved - incomplete|shostak|0.334|
|det_size_noteq|✅ proved - incomplete|shostak|0.100|
|swap_fun_test|✅ proved - complete|shostak|0.065|
|swap_TCC1|✅ proved - incomplete|shostak|0.278|
|entry_swap|✅ proved - incomplete|shostak|0.045|
|swap_test_TCC1|✅ proved - complete|shostak|0.030|
|swap_test|✅ proved - incomplete|shostak|0.042|
|remove_swap_1|✅ proved - incomplete|shostak|0.532|
|remove_swap_2_TCC1|✅ proved - incomplete|shostak|0.080|
|remove_swap_2_TCC2|✅ proved - complete|shostak|0.050|
|remove_swap_2_TCC3|✅ proved - complete|shostak|0.050|
|remove_swap_2|✅ proved - incomplete|shostak|0.969|
|swap_sym|✅ proved - incomplete|shostak|0.198|
|det_swap_0_1|✅ proved - incomplete|shostak|10.583|
|swap_swap_matrix|✅ proved - incomplete|shostak|0.282|
|swap_similar|✅ proved - incomplete|shostak|0.532|
|det_swap|✅ proved - incomplete|shostak|1.945|
|row_swap|✅ proved - incomplete|shostak|0.303|
|rows_swap|✅ proved - incomplete|shostak|0.045|
|columns_swap|✅ proved - incomplete|shostak|0.070|
|swap_id|✅ proved - incomplete|shostak|0.163|
|swap_eq|✅ proved - incomplete|shostak|0.135|
|det_rows_eq_0|✅ proved - incomplete|shostak|0.110|
|replace_row_TCC1|✅ proved - complete|shostak|0.181|
|replace_row_TCC2|✅ proved - complete|shostak|0.185|
|replace_row_TCC3|✅ proved - complete|shostak|0.070|
|replace_row_TCC4|✅ proved - complete|shostak|1.616|
|replace_row_TCC5|✅ proved - complete|shostak|0.070|
|replace_row_TCC6|✅ proved - complete|shostak|0.238|
|replace_row_TCC7|✅ proved - complete|shostak|0.060|
|replace_row_TCC8|✅ proved - complete|shostak|0.051|
|replace_row_TCC9|✅ proved - complete|shostak|1.753|
|entry_replace_row|✅ proved - complete|shostak|0.060|
|rows_replace_row|✅ proved - complete|shostak|0.060|
|columns_replace_row|✅ proved - complete|shostak|0.089|
|remove_replace_row|✅ proved - incomplete|shostak|0.584|
|swap_replace_row_TCC1|✅ proved - incomplete|shostak|0.091|
|swap_replace_row_TCC2|✅ proved - incomplete|shostak|0.089|
|swap_replace_row_TCC3|✅ proved - incomplete|shostak|0.099|
|swap_replace_row|✅ proved - incomplete|shostak|0.000|
|row_replace_row|✅ proved - complete|shostak|0.137|
|remove_replace_row_eq|✅ proved - incomplete|shostak|0.587|
|det_replace_row_sum_TCC1|✅ proved - complete|shostak|0.030|
|det_replace_row_sum_TCC2|✅ proved - complete|shostak|0.034|
|det_replace_row_sum|✅ proved - incomplete|shostak|9.195|
|det_replace_row_scal_TCC1|✅ proved - complete|shostak|0.050|
|det_replace_row_scal|✅ proved - incomplete|shostak|3.457|
|replace_row_id_TCC1|✅ proved - complete|shostak|0.030|
|replace_row_id|✅ proved - incomplete|shostak|0.193|
|det_replace_row_sum_scal_TCC1|✅ proved - complete|shostak|0.110|
|det_replace_row_sum_scal|✅ proved - incomplete|shostak|0.658|
|replace_row_sum_to_scal_TCC1|✅ proved - complete|shostak|0.071|
|replace_row_sum_to_scal_TCC2|✅ proved - complete|shostak|0.083|
|replace_row_sum_to_scal|✅ proved - incomplete|shostak|0.150|
|det_Id|✅ proved - incomplete|shostak|2.064|
|det_first_column_zero|✅ proved - incomplete|shostak|0.513|
|remove_transpose_TCC1|✅ proved - incomplete|shostak|0.063|
|remove_transpose|✅ proved - incomplete|shostak|0.481|

## `query_coeff`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|bump_one_ind_TCC1|✅ proved - complete|shostak|0.030|
|bump_one_ind_TCC2|✅ proved - complete|shostak|0.050|
|bump_one_ind_TCC3|✅ proved - complete|shostak|0.040|
|bump_one_ind_TCC4|✅ proved - complete|shostak|0.060|
|bump_one_ind_TCC5|✅ proved - complete|shostak|0.059|
|bump_one_ind_TCC6|✅ proved - complete|shostak|0.090|
|switch_one_entry_TCC1|✅ proved - complete|shostak|0.030|
|switch_one_entry_TCC2|✅ proved - complete|shostak|0.000|
|switch_one_entry_TCC3|✅ proved - complete|shostak|0.128|
|switch_one_entry_TCC4|✅ proved - complete|shostak|0.048|
|switch_one_entry_TCC5|✅ proved - complete|shostak|0.010|
|switch_one_entry_TCC6|✅ proved - complete|shostak|0.298|
|switch_is_with_TCC1|✅ proved - complete|shostak|0.026|
|switch_is_with|✅ proved - incomplete|shostak|1.991|
|bump_one_ind_list_TCC1|✅ proved - complete|shostak|0.020|
|bump_one_ind_list_TCC2|✅ proved - complete|shostak|0.181|
|bump_one_ind_list_TCC3|✅ proved - complete|shostak|0.041|
|bump_one_ind_list_TCC4|✅ proved - complete|shostak|0.080|
|bump_one_ind_list_TCC5|✅ proved - complete|shostak|0.069|
|bump_one_ind_list_TCC6|✅ proved - complete|shostak|0.070|
|bump_one_ind_list_TCC7|✅ proved - complete|shostak|0.020|
|bump_one_ind_list_TCC8|✅ proved - complete|shostak|0.091|
|bump_one_ind_list_TCC9|✅ proved - complete|shostak|0.120|
|bump_one_ind_list_TCC10|✅ proved - complete|shostak|0.090|
|bump_one_ind_list_TCC11|✅ proved - complete|shostak|0.040|
|bump_one_below|✅ proved - complete|shostak|0.191|
|bump_one_ind_lem|✅ proved - incomplete|shostak|0.707|
|bump_one_ind_lem2_TCC1|✅ proved - complete|shostak|0.010|
|bump_one_ind_lem2_TCC2|✅ proved - complete|shostak|0.060|
|bump_one_ind_lem2|✅ proved - incomplete|shostak|1.019|
|low2_TCC1|✅ proved - complete|shostak|0.089|
|low2_TCC2|✅ proved - complete|shostak|0.090|
|low2_lem|✅ proved - complete|shostak|0.223|
|bump_one_prep_TCC1|✅ proved - complete|shostak|0.000|
|bump_one_prep|✅ proved - incomplete|shostak|0.705|
|bump_one_prep2_TCC1|✅ proved - incomplete|shostak|0.051|
|bump_one_prep2_TCC2|✅ proved - incomplete|shostak|0.040|
|bump_one_prep2|✅ proved - incomplete|shostak|0.849|
|bump_one_TCC1|✅ proved - incomplete|shostak|0.010|
|switch_to_array|✅ proved - incomplete|shostak|0.689|
|bump_one_list_TCC1|✅ proved - incomplete|shostak|0.000|
|bump_one_list_TCC2|✅ proved - incomplete|shostak|0.550|
|is_nonzero_TCC1|✅ proved - complete|shostak|0.040|
|dot_tail_sum2plus_TCC1|✅ proved - complete|shostak|0.000|
|dot_tail_sum2plus_TCC2|✅ proved - incomplete|shostak|0.107|
|dot_tail_sum2plus_TCC3|✅ proved - incomplete|shostak|0.078|
|dot_tail_sum2plus_TCC4|✅ proved - incomplete|shostak|0.010|
|dot_tail_sum2plus_TCC5|✅ proved - incomplete|shostak|0.140|
|dot_tail_sum2plus_TCC6|✅ proved - incomplete|shostak|0.157|
|dot_tail_sum2plus_TCC7|✅ proved - incomplete|shostak|0.050|
|dot_tail_sum2plus_TCC8|✅ proved - incomplete|shostak|0.114|
|dot_tail_sum_lem|✅ proved - incomplete|shostak|0.843|
|is_nz_TCC1|✅ proved - complete|shostak|0.040|
|dot_tail_sum2_TCC1|✅ proved - incomplete|shostak|0.020|
|dot_tail_sum2_TCC2|✅ proved - incomplete|shostak|0.047|
|dot_tail_sum2_TCC3|✅ proved - incomplete|shostak|0.070|
|dot_tail_sum_lem2_TCC1|✅ proved - incomplete|shostak|0.020|
|dot_tail_sum_lem2_TCC2|✅ proved - incomplete|shostak|0.010|
|dot_tail_sum_lem2|✅ proved - incomplete|shostak|0.561|

## `tensor_product`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|not_null|✅ proved - complete|shostak|0.020|
|mod_int|✅ proved - complete|shostak|0.320|
|tensor_fun_TCC1|✅ proved - complete|shostak|0.093|
|tensor_fun_TCC2|✅ proved - complete|shostak|0.210|
|tensor_fun_TCC3|✅ proved - complete|shostak|0.020|
|tensor_fun_TCC4|✅ proved - complete|shostak|0.276|
|tensor_fun_TCC5|✅ proved - complete|shostak|0.034|
|tensor_fun_TCC6|✅ proved - complete|shostak|0.040|
|tensor_prod_TCC1|✅ proved - incomplete|shostak|0.511|
|entry_tensor_prod|✅ proved - incomplete|shostak|0.145|
|tensor_rows|✅ proved - incomplete|shostak|0.110|
|tensor_cols|✅ proved - incomplete|shostak|0.154|
|tensor_mult_entry_TCC1|✅ proved - complete|shostak|0.114|
|tensor_mult_entry_TCC2|✅ proved - complete|shostak|0.260|
|tensor_mult_entry_TCC3|✅ proved - complete|shostak|0.020|
|tensor_mult_entry_TCC4|✅ proved - complete|shostak|0.255|
|tensor_mult_entry_TCC5|✅ proved - complete|shostak|0.036|
|tensor_mult_entry_TCC6|✅ proved - complete|shostak|0.040|
|tensor_mult_entry|✅ proved - incomplete|shostak|4.956|
|invertible_tensor_TCC1|✅ proved - incomplete|shostak|0.000|
|invertible_tensor_TCC2|✅ proved - incomplete|shostak|0.050|
|invertible_tensor_TCC3|✅ proved - incomplete|shostak|0.020|
|invertible_tensor_TCC4|✅ proved - incomplete|shostak|0.017|
|invertible_tensor|✅ proved - incomplete|shostak|10.547|
|TQMat_TCC1|✅ proved - complete|shostak|1.113|
|TQMatInv_TCC1|✅ proved - complete|shostak|1.272|
|invTQ|✅ proved - incomplete|shostak|1.960|
|is_invTQ_TCC1|✅ proved - incomplete|shostak|1.966|
|is_invTQ|✅ proved - incomplete|shostak|0.000|
|tensor_power_TCC1|✅ proved - complete|shostak|0.033|
|tensor_power_TCC2|✅ proved - complete|shostak|0.010|
|invertible_tensor_power_TCC1|✅ proved - incomplete|shostak|0.285|
|invertible_tensor_power_TCC2|✅ proved - incomplete|shostak|0.010|
|invertible_tensor_power_TCC3|✅ proved - incomplete|shostak|0.729|
|invertible_tensor_power|✅ proved - incomplete|shostak|8.667|
|tensor_power_rows_TCC1|✅ proved - complete|shostak|0.010|
|tensor_power_rows|✅ proved - incomplete|shostak|0.228|
|tensor_power_columns_TCC1|✅ proved - complete|shostak|0.000|
|tensor_power_columns|✅ proved - incomplete|shostak|0.353|
|mod_eq_lem_alt_TCC1|✅ proved - complete|shostak|0.090|
|mod_eq_lem_alt|✅ proved - incomplete|shostak|0.346|
|tensor_prod_assoc|✅ proved - incomplete|shostak|3.854|
|power_assoc|✅ proved - incomplete|shostak|0.408|
|tensor_power_rows_alt|✅ proved - incomplete|shostak|0.010|
|tensor_power_columns_alt|✅ proved - incomplete|shostak|0.024|
|TQXL_TCC1|✅ proved - complete|shostak|0.040|
|TQXLinv_TCC1|✅ proved - complete|shostak|0.050|
|invTQXL|✅ proved - incomplete|shostak|0.200|
|is_invTQXL_TCC1|✅ proved - incomplete|shostak|0.010|
|is_invTQXL_TCC2|✅ proved - incomplete|shostak|0.000|
|is_invTQXL|✅ proved - incomplete|shostak|0.360|
|RowToMat_TCC1|✅ proved - incomplete|shostak|0.215|
|RtM|✅ proved - incomplete|shostak|0.020|
|RowToMat_rows|✅ proved - incomplete|shostak|0.042|
|RowToMat_columns|✅ proved - incomplete|shostak|0.110|
|RowToMat_entry|✅ proved - incomplete|shostak|0.351|
|RowToMat_tensor_prod_TCC1|✅ proved - incomplete|shostak|0.050|
|RowToMat_tensor_prod_TCC2|✅ proved - complete|shostak|0.075|
|RowToMat_tensor_prod_TCC3|✅ proved - complete|shostak|0.116|
|RowToMat_tensor_prod_TCC4|✅ proved - complete|shostak|0.020|
|RowToMat_tensor_prod|✅ proved - incomplete|shostak|2.764|
|RowTensor_TCC1|✅ proved - complete|shostak|0.025|
|RowTensor_TCC2|✅ proved - complete|shostak|0.020|
|RowTensor_TCC3|✅ proved - complete|shostak|0.050|
|RowTensors_same_TCC1|✅ proved - complete|shostak|0.060|
|RowTensors_same_TCC2|✅ proved - incomplete|shostak|0.020|
|RowTensors_same|✅ proved - incomplete|shostak|1.004|
|RowTensor_is_TensorRow_TCC1|✅ proved - incomplete|shostak|0.040|
|RowTensor_is_TensorRow|✅ proved - incomplete|shostak|1.275|
|RowTensor_is_TensorRow2_TCC1|✅ proved - incomplete|shostak|0.035|
|RowTensor_is_TensorRow2|✅ proved - incomplete|shostak|0.078|
|tensor_entry_TCC1|✅ proved - complete|shostak|0.090|
|tensor_entry_TCC2|✅ proved - incomplete|shostak|0.020|
|tensor_entry_TCC3|✅ proved - incomplete|shostak|0.095|
|tensor_entry_TCC4|✅ proved - incomplete|shostak|0.010|
|tensor_entry_TCC5|✅ proved - incomplete|shostak|0.111|
|tensor_entry|✅ proved - incomplete|shostak|3.419|
|tensor_entry_alt|✅ proved - incomplete|shostak|0.001|

## `linear_dependence`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|zerow_TCC1|✅ proved - incomplete|shostak|0.695|
|zerow_dim|✅ proved - incomplete|shostak|0.276|
|zecolumn_dim|✅ proved - incomplete|shostak|0.040|
|row2mat_TCC1|✅ proved - incomplete|shostak|0.417|
|row2mat_dim|✅ proved - incomplete|shostak|0.421|
|sum_rows_TCC1|✅ proved - incomplete|shostak|0.870|
|sum_rows_TCC2|✅ proved - complete|shostak|0.069|
|sum_rows_TCC3|✅ proved - incomplete|shostak|0.858|
|sum_rows_TCC4|✅ proved - complete|shostak|0.010|
|sum_rows_TCC5|✅ proved - complete|shostak|0.040|
|sum_rows_TCC6|✅ proved - complete|shostak|0.010|
|sum_rows_eq|✅ proved - incomplete|shostak|0.377|
|sum_rows_add_start_TCC1|✅ proved - incomplete|shostak|0.517|
|sum_rows_add_start|✅ proved - incomplete|shostak|1.793|
|subtract_same_scal|✅ proved - incomplete|shostak|0.702|
|sum_lem_prep_TCC1|✅ proved - complete|shostak|0.070|
|sum_lem_prep|✅ proved - incomplete|shostak|2.494|
|sum_lem|✅ proved - incomplete|shostak|0.080|
|row_dependence_lem|✅ proved - incomplete|shostak|0.000|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Mac OS X (Intel)] (Nov 14, 2020 23:13)|
| Patch Version| n/a|
| Library Path| `/Applications/pvs-7.1.0/pvslib/`<br/>`/Applications/pvs-7.1.0/lib/`<br/>`/Applications/pvs-7.1.0/pvslib/float/`<br/>`/Applications/pvs-7.1.0/pvslib/pvsio_utils/`|
| Loaded Patches | `/Applications/pvs-7.1.0/pvslib/.pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230712-static-update.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230710-tcc-gen.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230707-defattach.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230706-extrategies.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210323-wish.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210225-cl2pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210715a.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210715.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210707.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210706.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210511.lisp`|
