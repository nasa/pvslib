# Summary for `matrices`
Run started at 22:25:38 9/19/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **524**   | **524**    | **524**    | **0**  | **7:20.302 s**   |
|top|0|0|0|0|0.000|
|matrices|110|110|110|0|46.896|
|matrix_inv|35|35|35|0|1:11.355|
|matrix_diag|40|40|40|0|1:0.970|
|matrix_upper_triang|38|38|38|0|44.295|
|matrix_det|65|65|65|0|43.647|
|matrix_props|80|80|80|0|1:11.917|
|query_coeff|59|59|59|0|15.851|
|tensor_product|78|78|78|0|1:11.295|
|linear_dependence|19|19|19|0|14.076|
## Detailed Summary 
## `top`
No formula declaration found.
## `matrices`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_sigma_swap_TCC1|✅ proved - complete|shostak|0.049|
|length_matrix_eq|✅ proved - complete|shostak|0.060|
|nth_matrix_eq|✅ proved - complete|shostak|0.114|
|length_matrix_equiv|✅ proved - complete|shostak|0.055|
|length_matrix_nth|✅ proved - complete|shostak|0.347|
|matrix_listn_nth|✅ proved - complete|shostak|0.020|
|length_rows|✅ proved - complete|shostak|0.010|
|columns_TCC1|✅ proved - complete|shostak|0.020|
|columns_TCC2|✅ proved - complete|shostak|0.020|
|columns_TCC3|✅ proved - complete|shostak|0.053|
|columns_TCC4|✅ proved - complete|shostak|0.402|
|row_TCC1|✅ proved - complete|shostak|0.020|
|col_TCC1|✅ proved - complete|shostak|0.020|
|col_TCC2|✅ proved - complete|shostak|0.093|
|col_def_TCC1|✅ proved - complete|shostak|0.030|
|col_def_TCC2|✅ proved - complete|shostak|0.040|
|col_def|✅ proved - complete|shostak|0.713|
|col_zero|✅ proved - incomplete|shostak|0.236|
|access_zero|✅ proved - incomplete|shostak|0.050|
|entry_test|✅ proved - complete|shostak|0.030|
|access_row|✅ proved - complete|shostak|0.011|
|access_col|✅ proved - complete|shostak|0.120|
|coltest|✅ proved - complete|shostak|0.020|
|full_matrix_columns_TCC1|✅ proved - complete|shostak|0.042|
|full_matrix_columns|✅ proved - complete|shostak|0.070|
|rows_mn|✅ proved - complete|shostak|0.020|
|columns_mn|✅ proved - complete|shostak|0.050|
|length_row|✅ proved - complete|shostak|0.075|
|length_col|✅ proved - complete|shostak|0.020|
|columns_0_entry|✅ proved - complete|shostak|0.180|
|rows_0_entry|✅ proved - complete|shostak|0.050|
|entry_eq_0|✅ proved - complete|shostak|0.090|
|add_TCC1|✅ proved - complete|shostak|0.033|
|add_TCC2|✅ proved - complete|shostak|0.030|
|add_TCC3|✅ proved - complete|shostak|0.020|
|add_TCC4|✅ proved - complete|shostak|0.020|
|add_TCC5|✅ proved - complete|shostak|0.100|
|add_TCC6|✅ proved - complete|shostak|0.174|
|scal_TCC1|✅ proved - complete|shostak|0.020|
|scal_TCC2|✅ proved - complete|shostak|0.040|
|scal_TCC3|✅ proved - complete|shostak|0.074|
|sub_TCC1|✅ proved - complete|shostak|0.070|
|super_dot_TCC1|✅ proved - complete|shostak|0.040|
|super_dot_TCC2|✅ proved - complete|shostak|0.050|
|super_dot_TCC3|✅ proved - complete|shostak|0.070|
|super_duper_dot_TCC1|✅ proved - complete|shostak|0.020|
|super_duper_dot_TCC2|✅ proved - complete|shostak|0.010|
|access_sum|✅ proved - complete|shostak|1.493|
|access_scal|✅ proved - complete|shostak|0.355|
|vect_scal_1|✅ proved - incomplete|shostak|0.064|
|dot_eq_sigma|✅ proved - incomplete|shostak|0.000|
|dot_zero_right|✅ proved - incomplete|shostak|0.176|
|dot_commutes|✅ proved - complete|shostak|0.090|
|dot_zero_left|✅ proved - incomplete|shostak|0.020|
|length_add_vect|✅ proved - complete|shostak|0.060|
|length_add_vect_same|✅ proved - complete|shostak|0.050|
|length_scal_vect|✅ proved - complete|shostak|0.020|
|form_matrix_TCC1|✅ proved - complete|shostak|0.060|
|form_matrix_TCC2|✅ proved - complete|shostak|0.080|
|form_matrix_TCC3|✅ proved - incomplete|shostak|0.811|
|columns_form_matrix|✅ proved - incomplete|shostak|0.081|
|rows_form_matrix|✅ proved - incomplete|shostak|0.030|
|form_matrix_empty|✅ proved - incomplete|shostak|0.352|
|form_matrix_test1|✅ proved - incomplete|shostak|0.050|
|full_matrix_eq|✅ proved - incomplete|shostak|0.293|
|matrix2array|✅ proved - incomplete|shostak|2.074|
|entry_form_matrix|✅ proved - incomplete|shostak|0.170|
|entry_form_matrix2|✅ proved - incomplete|shostak|0.113|
|form_matrix_eq|✅ proved - incomplete|shostak|0.604|
|matrix_reduce_prop|✅ proved - incomplete|shostak|0.602|
|mult_TCC1|✅ proved - incomplete|shostak|0.286|
|mult_full|✅ proved - incomplete|shostak|0.090|
|mult_null_left|✅ proved - incomplete|shostak|0.118|
|mult_null_right|✅ proved - incomplete|shostak|0.201|
|columns_mult|✅ proved - incomplete|shostak|2.715|
|rows_mult|✅ proved - incomplete|shostak|0.040|
|columns_append|✅ proved - incomplete|shostak|0.697|
|append_mult|✅ proved - incomplete|shostak|2.927|
|matrix_mult_assoc|✅ proved - incomplete|shostak|11.369|
|entry_mult|✅ proved - incomplete|shostak|0.053|
|form_matrix_mult|✅ proved - incomplete|shostak|1.774|
|add_TCC7|✅ proved - incomplete|shostak|4.860|
|columns_add|✅ proved - incomplete|shostak|0.566|
|rows_add|✅ proved - incomplete|shostak|0.040|
|matrix_add_assoc|✅ proved - incomplete|shostak|2.246|
|matrix_add_comm|✅ proved - incomplete|shostak|0.966|
|scal_TCC4|✅ proved - incomplete|shostak|0.173|
|columns_scal|✅ proved - incomplete|shostak|0.334|
|rows_scal|✅ proved - incomplete|shostak|0.060|
|sub_TCC2|✅ proved - incomplete|shostak|0.416|
|rows_sub|✅ proved - incomplete|shostak|0.144|
|columns_sub|✅ proved - incomplete|shostak|0.173|
|matrix_sub_test|✅ proved - incomplete|shostak|0.070|
|Id_TCC1|✅ proved - incomplete|shostak|0.977|
|mult_Id_left|✅ proved - incomplete|shostak|0.497|
|mult_Id_right|✅ proved - incomplete|shostak|0.492|
|rows_Id|✅ proved - incomplete|shostak|0.000|
|columns_Id|✅ proved - incomplete|shostak|0.130|
|entry_Id|✅ proved - incomplete|shostak|0.100|
|transpose_TCC1|✅ proved - incomplete|shostak|0.224|
|rows_transpose|✅ proved - incomplete|shostak|0.050|
|columns_transpose|✅ proved - incomplete|shostak|0.075|
|entry_transpose|✅ proved - incomplete|shostak|0.150|
|transpose_transpose|✅ proved - incomplete|shostak|0.095|
|transpose_mult_TCC1|✅ proved - incomplete|shostak|0.120|
|transpose_mult|✅ proved - incomplete|shostak|1.268|
|form_matrix_square|✅ proved - incomplete|shostak|0.080|
|transpose_Id|✅ proved - incomplete|shostak|0.461|
|vect2matrix_TCC1|✅ proved - incomplete|shostak|0.080|
|vect2matrix_eq|✅ proved - incomplete|shostak|0.230|

## `matrix_inv`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|left_inv_TCC1|✅ proved - incomplete|shostak|0.099|
|left_inv_TCC2|✅ proved - incomplete|shostak|0.160|
|left_inv_TCC3|✅ proved - incomplete|shostak|6.445|
|mult_left_inv_right_TCC1|✅ proved - incomplete|shostak|0.060|
|mult_left_inv_right|✅ proved - incomplete|shostak|7.958|
|invertible?_TCC1|✅ proved - complete|shostak|0.090|
|invertible_rew|✅ proved - incomplete|shostak|6.731|
|inverse_TCC1|✅ proved - incomplete|shostak|0.428|
|inverse_TCC2|✅ proved - incomplete|shostak|1.358|
|mult_inverse_left_TCC1|✅ proved - incomplete|shostak|0.653|
|mult_inverse_left_TCC2|✅ proved - incomplete|shostak|0.838|
|mult_inverse_left|✅ proved - incomplete|shostak|0.573|
|mult_inverse_right|✅ proved - incomplete|shostak|0.580|
|inverse_unique|✅ proved - incomplete|shostak|4.589|
|invertible_det|✅ proved - incomplete|shostak|0.720|
|invertible_mult_TCC1|✅ proved - incomplete|shostak|0.207|
|invertible_mult|✅ proved - incomplete|shostak|0.487|
|inverse_mult_TCC1|✅ proved - incomplete|shostak|0.321|
|inverse_mult|✅ proved - incomplete|shostak|4.214|
|det_inverse_TCC1|✅ proved - incomplete|shostak|0.020|
|det_inverse|✅ proved - incomplete|shostak|0.923|
|inverse_invertible|✅ proved - incomplete|shostak|0.434|
|inverse_inverse_TCC1|✅ proved - incomplete|shostak|0.505|
|inverse_inverse|✅ proved - incomplete|shostak|0.951|
|GH_TCC1|✅ proved - complete|shostak|0.010|
|GH_TCC2|✅ proved - complete|shostak|0.010|
|GH_TCC3|✅ proved - incomplete|shostak|0.020|
|GH_TCC4|✅ proved - incomplete|shostak|0.354|
|det_nonzero_simple_prod|✅ proved - incomplete|shostak|22.969|
|mult_induction_TCC1|✅ proved - complete|shostak|0.070|
|mult_induction_TCC2|✅ proved - incomplete|shostak|0.319|
|mult_induction_TCC3|✅ proved - incomplete|shostak|0.394|
|mult_induction_TCC4|✅ proved - incomplete|shostak|0.774|
|mult_induction|✅ proved - incomplete|shostak|2.447|
|det_transpose|✅ proved - incomplete|shostak|4.644|

## `matrix_diag`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|diagonalize_TCC1|✅ proved - incomplete|shostak|0.200|
|diagonalize_TCC2|✅ proved - incomplete|shostak|0.277|
|diagonalize_TCC3|✅ proved - complete|shostak|0.051|
|diagonalize_TCC4|✅ proved - incomplete|shostak|0.306|
|diagonalize_TCC5|✅ proved - incomplete|shostak|0.335|
|diagonalize_TCC6|✅ proved - incomplete|shostak|0.208|
|diagonalize_TCC7|✅ proved - incomplete|shostak|1.006|
|diagonalize_TCC8|✅ proved - incomplete|shostak|0.243|
|diagonalize_TCC9|✅ proved - incomplete|shostak|0.315|
|diagonalize_TCC10|✅ proved - incomplete|shostak|0.210|
|diagonalize_TCC11|✅ proved - incomplete|shostak|0.297|
|diagonalize_TCC12|✅ proved - incomplete|shostak|0.361|
|diagonalize_TCC13|✅ proved - incomplete|shostak|1.736|
|diagonalize_TCC14|✅ proved - incomplete|shostak|0.374|
|diagonalize_TCC15|✅ proved - incomplete|shostak|1.036|
|diagonalize_TCC16|✅ proved - incomplete|shostak|0.247|
|diagonalize_TCC17|✅ proved - incomplete|shostak|2.743|
|diagonalize_TCC18|✅ proved - incomplete|shostak|0.425|
|diagonalize_TCC19|✅ proved - incomplete|shostak|1.604|
|diagonalize_TCC20|✅ proved - incomplete|shostak|1.155|
|diagonalize_TCC21|✅ proved - incomplete|shostak|1.218|
|diagonalize_TCC22|✅ proved - incomplete|shostak|0.231|
|diagonalize_TCC23|✅ proved - incomplete|shostak|0.315|
|diagonalize_TCC24|✅ proved - incomplete|shostak|5.293|
|diagonalize_TCC25|✅ proved - incomplete|shostak|0.305|
|diag_TCC1|✅ proved - complete|shostak|0.051|
|diag_TCC2|✅ proved - incomplete|shostak|0.100|
|diag_TCC3|✅ proved - incomplete|shostak|0.618|
|diag_TCC4|✅ proved - incomplete|shostak|0.100|
|diag_TCC5|✅ proved - complete|shostak|0.050|
|diag_TCC6|✅ proved - complete|shostak|0.124|
|diag_TCC7|✅ proved - incomplete|shostak|1.615|
|diag_TCC8|✅ proved - incomplete|shostak|3.690|
|diag_TCC9|✅ proved - incomplete|shostak|1.580|
|diag_TCC10|✅ proved - incomplete|shostak|2.568|
|diag_TCC11|✅ proved - incomplete|shostak|8.577|
|diag_TCC12|✅ proved - incomplete|shostak|6.457|
|diag_TCC13|✅ proved - incomplete|shostak|8.351|
|diag_det_zero_row|✅ proved - incomplete|shostak|1.790|
|det_mult|✅ proved - incomplete|shostak|4.808|

## `matrix_upper_triang`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|upper_triangulate_TCC1|✅ proved - incomplete|shostak|0.200|
|upper_triangulate_TCC2|✅ proved - incomplete|shostak|0.220|
|upper_triangulate_TCC3|✅ proved - complete|shostak|0.043|
|upper_triangulate_TCC4|✅ proved - incomplete|shostak|0.294|
|upper_triangulate_TCC5|✅ proved - incomplete|shostak|0.293|
|upper_triangulate_TCC6|✅ proved - incomplete|shostak|0.249|
|upper_triangulate_TCC7|✅ proved - incomplete|shostak|0.204|
|upper_triangulate_TCC8|✅ proved - incomplete|shostak|0.344|
|upper_triangulate_TCC9|✅ proved - incomplete|shostak|0.234|
|upper_triangulate_TCC10|✅ proved - incomplete|shostak|0.205|
|upper_triangulate_TCC11|✅ proved - incomplete|shostak|0.284|
|upper_triangulate_TCC12|✅ proved - incomplete|shostak|0.364|
|upper_triangulate_TCC13|✅ proved - incomplete|shostak|0.634|
|upper_triangulate_TCC14|✅ proved - incomplete|shostak|0.322|
|upper_triangulate_TCC15|✅ proved - incomplete|shostak|4.278|
|upper_triangulate_TCC16|✅ proved - incomplete|shostak|0.232|
|upper_triangulate_TCC17|✅ proved - incomplete|shostak|2.739|
|upper_triangulate_TCC18|✅ proved - incomplete|shostak|0.366|
|upper_triangulate_TCC19|✅ proved - incomplete|shostak|1.163|
|upper_triangulate_TCC20|✅ proved - incomplete|shostak|0.663|
|upper_triangulate_TCC21|✅ proved - incomplete|shostak|0.603|
|upper_triangulate_TCC22|✅ proved - incomplete|shostak|0.206|
|upper_triangulate_TCC23|✅ proved - incomplete|shostak|2.167|
|upper_triangulate_TCC24|✅ proved - incomplete|shostak|5.854|
|upper_triangulate_TCC25|✅ proved - incomplete|shostak|0.365|
|upper_triangulate_TCC26|✅ proved - incomplete|shostak|0.714|
|upper_triangulate_TCC27|✅ proved - incomplete|shostak|0.349|
|upper_triangulate_TCC28|✅ proved - incomplete|shostak|0.854|
|upper_triangulate_TCC29|✅ proved - incomplete|shostak|0.212|
|upper_triangulate_TCC30|✅ proved - incomplete|shostak|2.400|
|upper_triangulate_TCC31|✅ proved - incomplete|shostak|0.640|
|upper_triangulate_TCC32|✅ proved - incomplete|shostak|1.117|
|upper_triangulate_TCC33|✅ proved - incomplete|shostak|0.764|
|upper_triangulate_TCC34|✅ proved - incomplete|shostak|1.263|
|upper_triangulate_TCC35|✅ proved - incomplete|shostak|1.038|
|upper_triangulate_TCC36|✅ proved - incomplete|shostak|1.803|
|upper_triangulate_TCC37|✅ proved - incomplete|shostak|10.435|
|upper_triangulate_TCC38|✅ proved - incomplete|shostak|0.180|

## `matrix_det`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Esr_TCC1|✅ proved - incomplete|shostak|0.140|
|entry_Esr|✅ proved - incomplete|shostak|0.080|
|rows_Esr|✅ proved - incomplete|shostak|0.050|
|columns_Esr|✅ proved - incomplete|shostak|0.078|
|det_Esr|✅ proved - incomplete|shostak|1.765|
|transpose_Esr|✅ proved - incomplete|shostak|0.189|
|mult_Esr_left_TCC1|✅ proved - complete|shostak|0.067|
|mult_Esr_left|✅ proved - incomplete|shostak|1.677|
|mult_Esr_Esr_inv|✅ proved - incomplete|shostak|0.000|
|Ers_TCC1|✅ proved - incomplete|shostak|1.324|
|entry_Ers|✅ proved - incomplete|shostak|0.237|
|rows_Ers|✅ proved - incomplete|shostak|0.158|
|columns_Ers|✅ proved - incomplete|shostak|0.200|
|mult_Ers_left|✅ proved - incomplete|shostak|2.522|
|transpose_Ers|✅ proved - incomplete|shostak|0.807|
|det_Ers|✅ proved - incomplete|shostak|1.684|
|mult_Ers_Ers_inv|✅ proved - incomplete|shostak|1.368|
|Easr_TCC1|✅ proved - incomplete|shostak|0.298|
|entry_Easr|✅ proved - incomplete|shostak|0.182|
|rows_Easr|✅ proved - incomplete|shostak|0.100|
|columns_Easr|✅ proved - incomplete|shostak|0.130|
|mult_Easr_left_TCC1|✅ proved - complete|shostak|0.148|
|mult_Easr_left|✅ proved - incomplete|shostak|1.714|
|transpose_Easr|✅ proved - incomplete|shostak|0.375|
|det_Easr|✅ proved - incomplete|shostak|3.509|
|mult_Easr_Easr_inv|✅ proved - incomplete|shostak|1.165|
|ZERO_TCC1|✅ proved - incomplete|shostak|0.129|
|prod_diag_TCC1|✅ proved - complete|shostak|0.050|
|prod_diag_TCC2|✅ proved - complete|shostak|0.052|
|prod_diag_TCC3|✅ proved - complete|shostak|0.060|
|prod_diag_remove_0_0_TCC1|✅ proved - incomplete|shostak|0.100|
|prod_diag_remove_0_0|✅ proved - incomplete|shostak|0.866|
|diagonal_upper_triangular|✅ proved - complete|shostak|0.012|
|det_upper_triangular|✅ proved - incomplete|shostak|1.214|
|det_upper_triangular_zero|✅ proved - incomplete|shostak|0.408|
|upper_triangular_mult|✅ proved - incomplete|shostak|1.520|
|lower_triangular_mult|✅ proved - incomplete|shostak|1.183|
|upper_triangular_Id|✅ proved - incomplete|shostak|0.080|
|lower_triangular_Id|✅ proved - incomplete|shostak|0.070|
|upper_triangular_Easr|✅ proved - incomplete|shostak|0.081|
|lower_triangular_Easr|✅ proved - incomplete|shostak|0.080|
|prod_mat_TCC1|✅ proved - complete|shostak|0.060|
|prod_mat_TCC2|✅ proved - complete|shostak|0.020|
|prod_mat_TCC3|✅ proved - incomplete|shostak|0.246|
|prod_mat_eq|✅ proved - incomplete|shostak|0.476|
|mult_prod_mat_TCC1|✅ proved - complete|shostak|0.120|
|mult_prod_mat|✅ proved - incomplete|shostak|1.250|
|prod_mat_expand_left_TCC1|✅ proved - complete|shostak|0.060|
|prod_mat_expand_left|✅ proved - incomplete|shostak|1.235|
|transpose_prod_mat_TCC1|✅ proved - complete|shostak|0.080|
|transpose_prod_mat_TCC2|✅ proved - incomplete|shostak|0.085|
|transpose_prod_mat|✅ proved - incomplete|shostak|1.105|
|mult_simple_prod_TCC1|✅ proved - incomplete|shostak|0.151|
|mult_simple_prod|✅ proved - incomplete|shostak|1.164|
|Id_simple_prod|✅ proved - incomplete|shostak|0.268|
|Esr_simple_prod|✅ proved - incomplete|shostak|0.443|
|Ers_simple_prod|✅ proved - incomplete|shostak|0.724|
|Easr_simple_prod|✅ proved - incomplete|shostak|0.432|
|det_simple_prod_1|✅ proved - incomplete|shostak|2.187|
|det_mult_simple_prod_left|✅ proved - incomplete|shostak|2.495|
|Easr_null|✅ proved - incomplete|shostak|0.089|
|transpose_simple_prod_TCC1|✅ proved - incomplete|shostak|0.050|
|transpose_simple_prod|✅ proved - incomplete|shostak|0.000|
|diagonal_simple_prod|✅ proved - incomplete|shostak|4.730|
|is_simple_prod_implic|✅ proved - incomplete|shostak|0.305|

## `matrix_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|matrix_2x2|✅ proved - incomplete|shostak|0.895|
|length_row|✅ proved - complete|shostak|0.107|
|length_nth_row|✅ proved - complete|shostak|0.040|
|columns_cdr_TCC1|✅ proved - complete|shostak|0.080|
|columns_cdr|✅ proved - complete|shostak|0.338|
|columns_cons|✅ proved - complete|shostak|0.152|
|access_col|✅ proved - complete|shostak|0.224|
|remove_TCC1|✅ proved - complete|shostak|0.164|
|remove_TCC2|✅ proved - complete|shostak|0.040|
|remove_TCC3|✅ proved - complete|shostak|0.040|
|remove_TCC4|✅ proved - incomplete|shostak|0.535|
|remove_posfullmatrix|✅ proved - incomplete|shostak|0.313|
|rows_remove|✅ proved - incomplete|shostak|0.233|
|columns_remove|✅ proved - incomplete|shostak|0.795|
|remove_remove_1_0|✅ proved - incomplete|shostak|2.433|
|remove_remove_1_0_0|✅ proved - incomplete|shostak|2.107|
|remove_remove_1_n|✅ proved - incomplete|shostak|2.506|
|entry_remove|✅ proved - incomplete|shostak|0.160|
|remove_Id_0_0_TCC1|✅ proved - complete|shostak|0.020|
|remove_Id_0_0|✅ proved - incomplete|shostak|0.704|
|remove_test|✅ proved - incomplete|shostak|0.042|
|det_TCC1|✅ proved - incomplete|shostak|2.230|
|det_test|✅ proved - incomplete|shostak|0.532|
|det_size_noteq|✅ proved - incomplete|shostak|0.140|
|swap_fun_test|✅ proved - complete|shostak|0.085|
|swap_TCC1|✅ proved - incomplete|shostak|0.427|
|entry_swap|✅ proved - incomplete|shostak|0.070|
|swap_test_TCC1|✅ proved - complete|shostak|0.050|
|swap_test|✅ proved - incomplete|shostak|0.071|
|remove_swap_1|✅ proved - incomplete|shostak|0.837|
|remove_swap_2_TCC1|✅ proved - incomplete|shostak|0.130|
|remove_swap_2_TCC2|✅ proved - complete|shostak|0.070|
|remove_swap_2_TCC3|✅ proved - complete|shostak|0.083|
|remove_swap_2|✅ proved - incomplete|shostak|1.445|
|swap_sym|✅ proved - incomplete|shostak|0.279|
|det_swap_0_1|✅ proved - incomplete|shostak|15.244|
|swap_swap_matrix|✅ proved - incomplete|shostak|0.440|
|swap_similar|✅ proved - incomplete|shostak|0.755|
|det_swap|✅ proved - incomplete|shostak|2.990|
|row_swap|✅ proved - incomplete|shostak|0.419|
|rows_swap|✅ proved - incomplete|shostak|0.056|
|columns_swap|✅ proved - incomplete|shostak|0.100|
|swap_id|✅ proved - incomplete|shostak|0.251|
|swap_eq|✅ proved - incomplete|shostak|0.188|
|det_rows_eq_0|✅ proved - incomplete|shostak|0.140|
|replace_row_TCC1|✅ proved - complete|shostak|0.265|
|replace_row_TCC2|✅ proved - complete|shostak|0.296|
|replace_row_TCC3|✅ proved - complete|shostak|0.104|
|replace_row_TCC4|✅ proved - complete|shostak|2.451|
|replace_row_TCC5|✅ proved - complete|shostak|0.110|
|replace_row_TCC6|✅ proved - complete|shostak|0.378|
|replace_row_TCC7|✅ proved - complete|shostak|0.095|
|replace_row_TCC8|✅ proved - complete|shostak|0.080|
|replace_row_TCC9|✅ proved - complete|shostak|2.631|
|entry_replace_row|✅ proved - complete|shostak|0.080|
|rows_replace_row|✅ proved - complete|shostak|0.070|
|columns_replace_row|✅ proved - complete|shostak|0.128|
|remove_replace_row|✅ proved - incomplete|shostak|0.845|
|swap_replace_row_TCC1|✅ proved - incomplete|shostak|0.143|
|swap_replace_row_TCC2|✅ proved - incomplete|shostak|0.150|
|swap_replace_row_TCC3|✅ proved - incomplete|shostak|0.145|
|swap_replace_row|✅ proved - incomplete|shostak|3.825|
|row_replace_row|✅ proved - complete|shostak|0.210|
|remove_replace_row_eq|✅ proved - incomplete|shostak|0.802|
|det_replace_row_sum_TCC1|✅ proved - complete|shostak|0.050|
|det_replace_row_sum_TCC2|✅ proved - complete|shostak|0.050|
|det_replace_row_sum|✅ proved - incomplete|shostak|8.175|
|det_replace_row_scal_TCC1|✅ proved - complete|shostak|0.070|
|det_replace_row_scal|✅ proved - incomplete|shostak|5.413|
|replace_row_id_TCC1|✅ proved - complete|shostak|0.050|
|replace_row_id|✅ proved - incomplete|shostak|0.248|
|det_replace_row_sum_scal_TCC1|✅ proved - complete|shostak|0.145|
|det_replace_row_sum_scal|✅ proved - incomplete|shostak|0.914|
|replace_row_sum_to_scal_TCC1|✅ proved - complete|shostak|0.090|
|replace_row_sum_to_scal_TCC2|✅ proved - complete|shostak|0.114|
|replace_row_sum_to_scal|✅ proved - incomplete|shostak|0.240|
|det_Id|✅ proved - incomplete|shostak|2.998|
|det_first_column_zero|✅ proved - incomplete|shostak|0.788|
|remove_transpose_TCC1|✅ proved - incomplete|shostak|0.090|
|remove_transpose|✅ proved - incomplete|shostak|0.714|

## `query_coeff`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|bump_one_ind_TCC1|✅ proved - complete|shostak|0.040|
|bump_one_ind_TCC2|✅ proved - complete|shostak|0.060|
|bump_one_ind_TCC3|✅ proved - complete|shostak|0.084|
|bump_one_ind_TCC4|✅ proved - complete|shostak|0.090|
|bump_one_ind_TCC5|✅ proved - complete|shostak|0.100|
|bump_one_ind_TCC6|✅ proved - complete|shostak|0.142|
|switch_one_entry_TCC1|✅ proved - complete|shostak|0.040|
|switch_one_entry_TCC2|✅ proved - complete|shostak|0.090|
|switch_one_entry_TCC3|✅ proved - complete|shostak|0.087|
|switch_one_entry_TCC4|✅ proved - complete|shostak|0.080|
|switch_one_entry_TCC5|✅ proved - complete|shostak|0.010|
|switch_one_entry_TCC6|✅ proved - complete|shostak|0.463|
|switch_is_with_TCC1|✅ proved - complete|shostak|0.030|
|switch_is_with|✅ proved - incomplete|shostak|2.978|
|bump_one_ind_list_TCC1|✅ proved - complete|shostak|0.040|
|bump_one_ind_list_TCC2|✅ proved - complete|shostak|0.265|
|bump_one_ind_list_TCC3|✅ proved - complete|shostak|0.070|
|bump_one_ind_list_TCC4|✅ proved - complete|shostak|0.130|
|bump_one_ind_list_TCC5|✅ proved - complete|shostak|0.117|
|bump_one_ind_list_TCC6|✅ proved - complete|shostak|0.100|
|bump_one_ind_list_TCC7|✅ proved - complete|shostak|0.040|
|bump_one_ind_list_TCC8|✅ proved - complete|shostak|0.140|
|bump_one_ind_list_TCC9|✅ proved - complete|shostak|0.189|
|bump_one_ind_list_TCC10|✅ proved - complete|shostak|0.140|
|bump_one_ind_list_TCC11|✅ proved - complete|shostak|0.064|
|bump_one_below|✅ proved - complete|shostak|0.313|
|bump_one_ind_lem|✅ proved - incomplete|shostak|0.992|
|bump_one_ind_lem2_TCC1|✅ proved - complete|shostak|0.010|
|bump_one_ind_lem2_TCC2|✅ proved - complete|shostak|0.090|
|bump_one_ind_lem2|✅ proved - incomplete|shostak|1.333|
|low2_TCC1|✅ proved - complete|shostak|0.110|
|low2_TCC2|✅ proved - complete|shostak|0.126|
|low2_lem|✅ proved - complete|shostak|0.328|
|bump_one_prep_TCC1|✅ proved - complete|shostak|0.010|
|bump_one_prep|✅ proved - incomplete|shostak|1.051|
|bump_one_prep2_TCC1|✅ proved - incomplete|shostak|0.080|
|bump_one_prep2_TCC2|✅ proved - incomplete|shostak|0.061|
|bump_one_prep2|✅ proved - incomplete|shostak|1.328|
|bump_one_TCC1|✅ proved - incomplete|shostak|0.007|
|switch_to_array|✅ proved - incomplete|shostak|1.073|
|bump_one_list_TCC1|✅ proved - incomplete|shostak|0.010|
|bump_one_list_TCC2|✅ proved - incomplete|shostak|0.000|
|is_nonzero_TCC1|✅ proved - complete|shostak|0.082|
|dot_tail_sum2plus_TCC1|✅ proved - complete|shostak|0.010|
|dot_tail_sum2plus_TCC2|✅ proved - incomplete|shostak|0.200|
|dot_tail_sum2plus_TCC3|✅ proved - incomplete|shostak|0.114|
|dot_tail_sum2plus_TCC4|✅ proved - incomplete|shostak|0.020|
|dot_tail_sum2plus_TCC5|✅ proved - incomplete|shostak|0.203|
|dot_tail_sum2plus_TCC6|✅ proved - incomplete|shostak|0.230|
|dot_tail_sum2plus_TCC7|✅ proved - incomplete|shostak|0.090|
|dot_tail_sum2plus_TCC8|✅ proved - incomplete|shostak|0.165|
|dot_tail_sum_lem|✅ proved - incomplete|shostak|1.196|
|is_nz_TCC1|✅ proved - complete|shostak|0.050|
|dot_tail_sum2_TCC1|✅ proved - incomplete|shostak|0.032|
|dot_tail_sum2_TCC2|✅ proved - incomplete|shostak|0.070|
|dot_tail_sum2_TCC3|✅ proved - incomplete|shostak|0.090|
|dot_tail_sum_lem2_TCC1|✅ proved - incomplete|shostak|0.020|
|dot_tail_sum_lem2_TCC2|✅ proved - incomplete|shostak|0.015|
|dot_tail_sum_lem2|✅ proved - incomplete|shostak|0.753|

## `tensor_product`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|not_null|✅ proved - complete|shostak|0.030|
|mod_int|✅ proved - complete|shostak|0.449|
|tensor_fun_TCC1|✅ proved - complete|shostak|0.117|
|tensor_fun_TCC2|✅ proved - complete|shostak|0.308|
|tensor_fun_TCC3|✅ proved - complete|shostak|0.020|
|tensor_fun_TCC4|✅ proved - complete|shostak|0.393|
|tensor_fun_TCC5|✅ proved - complete|shostak|0.040|
|tensor_fun_TCC6|✅ proved - complete|shostak|0.060|
|tensor_prod_TCC1|✅ proved - incomplete|shostak|0.697|
|entry_tensor_prod|✅ proved - incomplete|shostak|0.193|
|tensor_rows|✅ proved - incomplete|shostak|0.120|
|tensor_cols|✅ proved - incomplete|shostak|0.203|
|tensor_mult_entry_TCC1|✅ proved - complete|shostak|0.160|
|tensor_mult_entry_TCC2|✅ proved - complete|shostak|0.399|
|tensor_mult_entry_TCC3|✅ proved - complete|shostak|0.030|
|tensor_mult_entry_TCC4|✅ proved - complete|shostak|0.364|
|tensor_mult_entry_TCC5|✅ proved - complete|shostak|0.050|
|tensor_mult_entry_TCC6|✅ proved - complete|shostak|0.064|
|tensor_mult_entry|✅ proved - incomplete|shostak|7.370|
|invertible_tensor_TCC1|✅ proved - incomplete|shostak|0.070|
|invertible_tensor_TCC2|✅ proved - incomplete|shostak|0.070|
|invertible_tensor_TCC3|✅ proved - incomplete|shostak|0.020|
|invertible_tensor_TCC4|✅ proved - incomplete|shostak|0.020|
|invertible_tensor|✅ proved - incomplete|shostak|10.735|
|TQMat_TCC1|✅ proved - complete|shostak|1.752|
|TQMatInv_TCC1|✅ proved - complete|shostak|1.974|
|invTQ|✅ proved - incomplete|shostak|2.980|
|is_invTQ_TCC1|✅ proved - incomplete|shostak|2.966|
|is_invTQ|✅ proved - incomplete|shostak|2.484|
|tensor_power_TCC1|✅ proved - complete|shostak|0.061|
|tensor_power_TCC2|✅ proved - complete|shostak|0.010|
|invertible_tensor_power_TCC1|✅ proved - incomplete|shostak|0.427|
|invertible_tensor_power_TCC2|✅ proved - incomplete|shostak|0.030|
|invertible_tensor_power_TCC3|✅ proved - incomplete|shostak|1.154|
|invertible_tensor_power|✅ proved - incomplete|shostak|13.244|
|tensor_power_rows_TCC1|✅ proved - complete|shostak|0.020|
|tensor_power_rows|✅ proved - incomplete|shostak|0.362|
|tensor_power_columns_TCC1|✅ proved - complete|shostak|0.010|
|tensor_power_columns|✅ proved - incomplete|shostak|0.490|
|mod_eq_lem_alt_TCC1|✅ proved - complete|shostak|0.147|
|mod_eq_lem_alt|✅ proved - incomplete|shostak|0.485|
|tensor_prod_assoc|✅ proved - incomplete|shostak|0.003|
|power_assoc|✅ proved - incomplete|shostak|0.682|
|tensor_power_rows_alt|✅ proved - incomplete|shostak|0.020|
|tensor_power_columns_alt|✅ proved - incomplete|shostak|0.030|
|TQXL_TCC1|✅ proved - complete|shostak|0.050|
|TQXLinv_TCC1|✅ proved - complete|shostak|0.073|
|invTQXL|✅ proved - incomplete|shostak|0.270|
|is_invTQXL_TCC1|✅ proved - incomplete|shostak|0.010|
|is_invTQXL_TCC2|✅ proved - incomplete|shostak|0.010|
|is_invTQXL|✅ proved - incomplete|shostak|0.420|
|RowToMat_TCC1|✅ proved - incomplete|shostak|0.282|
|RtM|✅ proved - incomplete|shostak|0.020|
|RowToMat_rows|✅ proved - incomplete|shostak|0.070|
|RowToMat_columns|✅ proved - incomplete|shostak|0.163|
|RowToMat_entry|✅ proved - incomplete|shostak|0.482|
|RowToMat_tensor_prod_TCC1|✅ proved - incomplete|shostak|0.060|
|RowToMat_tensor_prod_TCC2|✅ proved - complete|shostak|0.123|
|RowToMat_tensor_prod_TCC3|✅ proved - complete|shostak|0.180|
|RowToMat_tensor_prod_TCC4|✅ proved - complete|shostak|0.045|
|RowToMat_tensor_prod|✅ proved - incomplete|shostak|8.802|
|RowTensor_TCC1|✅ proved - complete|shostak|0.030|
|RowTensor_TCC2|✅ proved - complete|shostak|0.024|
|RowTensor_TCC3|✅ proved - complete|shostak|0.090|
|RowTensors_same_TCC1|✅ proved - complete|shostak|0.090|
|RowTensors_same_TCC2|✅ proved - incomplete|shostak|0.029|
|RowTensors_same|✅ proved - incomplete|shostak|1.351|
|RowTensor_is_TensorRow_TCC1|✅ proved - incomplete|shostak|0.060|
|RowTensor_is_TensorRow|✅ proved - incomplete|shostak|1.825|
|RowTensor_is_TensorRow2_TCC1|✅ proved - incomplete|shostak|0.050|
|RowTensor_is_TensorRow2|✅ proved - incomplete|shostak|0.104|
|tensor_entry_TCC1|✅ proved - complete|shostak|0.140|
|tensor_entry_TCC2|✅ proved - incomplete|shostak|0.020|
|tensor_entry_TCC3|✅ proved - incomplete|shostak|0.149|
|tensor_entry_TCC4|✅ proved - incomplete|shostak|0.020|
|tensor_entry_TCC5|✅ proved - incomplete|shostak|0.160|
|tensor_entry|✅ proved - incomplete|shostak|4.770|
|tensor_entry_alt|✅ proved - incomplete|shostak|0.010|

## `linear_dependence`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|zerow_TCC1|✅ proved - incomplete|shostak|1.041|
|zerow_dim|✅ proved - incomplete|shostak|0.394|
|zecolumn_dim|✅ proved - incomplete|shostak|0.060|
|row2mat_TCC1|✅ proved - incomplete|shostak|0.629|
|row2mat_dim|✅ proved - incomplete|shostak|0.682|
|sum_rows_TCC1|✅ proved - incomplete|shostak|1.250|
|sum_rows_TCC2|✅ proved - complete|shostak|0.100|
|sum_rows_TCC3|✅ proved - incomplete|shostak|1.242|
|sum_rows_TCC4|✅ proved - complete|shostak|0.020|
|sum_rows_TCC5|✅ proved - complete|shostak|0.050|
|sum_rows_TCC6|✅ proved - complete|shostak|0.010|
|sum_rows_eq|✅ proved - incomplete|shostak|0.538|
|sum_rows_add_start_TCC1|✅ proved - incomplete|shostak|0.704|
|sum_rows_add_start|✅ proved - incomplete|shostak|2.518|
|subtract_same_scal|✅ proved - incomplete|shostak|1.048|
|sum_lem_prep_TCC1|✅ proved - complete|shostak|0.115|
|sum_lem_prep|✅ proved - incomplete|shostak|3.545|
|sum_lem|✅ proved - incomplete|shostak|0.130|
|row_dependence_lem|✅ proved - incomplete|shostak|0.000|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib/pvsio_utils/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230712-static-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230710-tcc-gen.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230707-defattach.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230706-extrategies.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`|
