# Summary for `matrices`
Run started at 0:18:59 7/8/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **524**   | **524**    | **524**    | **0**  | **7:14.037 s**   |
|top|0|0|0|0|0.000|
|matrices|110|110|110|0|47.092|
|matrix_inv|35|35|35|0|1:5.851|
|matrix_diag|40|40|40|0|1:0.392|
|matrix_upper_triang|38|38|38|0|49.123|
|matrix_det|65|65|65|0|40.991|
|matrix_props|80|80|80|0|1:8.960|
|query_coeff|59|59|59|0|16.051|
|tensor_product|78|78|78|0|1:9.917|
|linear_dependence|19|19|19|0|15.660|
## Detailed Summary 
## `top`
No formula declaration found.
## `matrices`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_sigma_swap_TCC1|✅ proved - complete|shostak|0.038|
|length_matrix_eq|✅ proved - complete|shostak|0.070|
|nth_matrix_eq|✅ proved - complete|shostak|0.096|
|length_matrix_equiv|✅ proved - complete|shostak|0.054|
|length_matrix_nth|✅ proved - complete|shostak|0.355|
|matrix_listn_nth|✅ proved - complete|shostak|0.020|
|length_rows|✅ proved - complete|shostak|0.010|
|columns_TCC1|✅ proved - complete|shostak|0.020|
|columns_TCC2|✅ proved - complete|shostak|0.020|
|columns_TCC3|✅ proved - complete|shostak|0.060|
|columns_TCC4|✅ proved - complete|shostak|0.406|
|row_TCC1|✅ proved - complete|shostak|0.020|
|col_TCC1|✅ proved - complete|shostak|0.030|
|col_TCC2|✅ proved - complete|shostak|0.083|
|col_def_TCC1|✅ proved - complete|shostak|0.040|
|col_def_TCC2|✅ proved - complete|shostak|0.040|
|col_def|✅ proved - complete|shostak|0.753|
|col_zero|✅ proved - incomplete|shostak|0.225|
|access_zero|✅ proved - incomplete|shostak|0.060|
|entry_test|✅ proved - complete|shostak|0.020|
|access_row|✅ proved - complete|shostak|0.010|
|access_col|✅ proved - complete|shostak|0.122|
|coltest|✅ proved - complete|shostak|0.010|
|full_matrix_columns_TCC1|✅ proved - complete|shostak|0.050|
|full_matrix_columns|✅ proved - complete|shostak|0.080|
|rows_mn|✅ proved - complete|shostak|0.010|
|columns_mn|✅ proved - complete|shostak|0.060|
|length_row|✅ proved - complete|shostak|0.074|
|length_col|✅ proved - complete|shostak|0.020|
|columns_0_entry|✅ proved - complete|shostak|0.191|
|rows_0_entry|✅ proved - complete|shostak|0.060|
|entry_eq_0|✅ proved - complete|shostak|0.090|
|add_TCC1|✅ proved - complete|shostak|0.033|
|add_TCC2|✅ proved - complete|shostak|0.030|
|add_TCC3|✅ proved - complete|shostak|0.020|
|add_TCC4|✅ proved - complete|shostak|0.020|
|add_TCC5|✅ proved - complete|shostak|0.110|
|add_TCC6|✅ proved - complete|shostak|0.194|
|scal_TCC1|✅ proved - complete|shostak|0.010|
|scal_TCC2|✅ proved - complete|shostak|0.050|
|scal_TCC3|✅ proved - complete|shostak|0.080|
|sub_TCC1|✅ proved - complete|shostak|0.073|
|super_dot_TCC1|✅ proved - complete|shostak|0.030|
|super_dot_TCC2|✅ proved - complete|shostak|0.060|
|super_dot_TCC3|✅ proved - complete|shostak|0.080|
|super_duper_dot_TCC1|✅ proved - complete|shostak|0.020|
|super_duper_dot_TCC2|✅ proved - complete|shostak|0.010|
|access_sum|✅ proved - complete|shostak|1.532|
|access_scal|✅ proved - complete|shostak|0.365|
|vect_scal_1|✅ proved - incomplete|shostak|0.072|
|dot_eq_sigma|✅ proved - incomplete|shostak|1.957|
|dot_zero_right|✅ proved - incomplete|shostak|0.166|
|dot_commutes|✅ proved - complete|shostak|0.090|
|dot_zero_left|✅ proved - incomplete|shostak|0.010|
|length_add_vect|✅ proved - complete|shostak|0.040|
|length_add_vect_same|✅ proved - complete|shostak|0.060|
|length_scal_vect|✅ proved - complete|shostak|0.020|
|form_matrix_TCC1|✅ proved - complete|shostak|0.060|
|form_matrix_TCC2|✅ proved - complete|shostak|0.074|
|form_matrix_TCC3|✅ proved - incomplete|shostak|0.736|
|columns_form_matrix|✅ proved - incomplete|shostak|0.072|
|rows_form_matrix|✅ proved - incomplete|shostak|0.030|
|form_matrix_empty|✅ proved - incomplete|shostak|0.321|
|form_matrix_test1|✅ proved - incomplete|shostak|0.050|
|full_matrix_eq|✅ proved - incomplete|shostak|0.273|
|matrix2array|✅ proved - incomplete|shostak|1.937|
|entry_form_matrix|✅ proved - incomplete|shostak|0.160|
|entry_form_matrix2|✅ proved - incomplete|shostak|0.108|
|form_matrix_eq|✅ proved - incomplete|shostak|0.000|
|matrix_reduce_prop|✅ proved - incomplete|shostak|0.566|
|mult_TCC1|✅ proved - incomplete|shostak|0.282|
|mult_full|✅ proved - incomplete|shostak|0.070|
|mult_null_left|✅ proved - incomplete|shostak|0.114|
|mult_null_right|✅ proved - incomplete|shostak|0.201|
|columns_mult|✅ proved - incomplete|shostak|2.652|
|rows_mult|✅ proved - incomplete|shostak|0.050|
|columns_append|✅ proved - incomplete|shostak|0.699|
|append_mult|✅ proved - incomplete|shostak|2.896|
|matrix_mult_assoc|✅ proved - incomplete|shostak|11.008|
|entry_mult|✅ proved - incomplete|shostak|0.050|
|form_matrix_mult|✅ proved - incomplete|shostak|1.719|
|add_TCC7|✅ proved - incomplete|shostak|4.640|
|columns_add|✅ proved - incomplete|shostak|0.537|
|rows_add|✅ proved - incomplete|shostak|0.030|
|matrix_add_assoc|✅ proved - incomplete|shostak|2.207|
|matrix_add_comm|✅ proved - incomplete|shostak|0.970|
|scal_TCC4|✅ proved - incomplete|shostak|0.169|
|columns_scal|✅ proved - incomplete|shostak|0.328|
|rows_scal|✅ proved - incomplete|shostak|0.050|
|sub_TCC2|✅ proved - incomplete|shostak|0.401|
|rows_sub|✅ proved - incomplete|shostak|0.150|
|columns_sub|✅ proved - incomplete|shostak|0.185|
|matrix_sub_test|✅ proved - incomplete|shostak|0.060|
|Id_TCC1|✅ proved - incomplete|shostak|0.948|
|mult_Id_left|✅ proved - incomplete|shostak|0.495|
|mult_Id_right|✅ proved - incomplete|shostak|0.473|
|rows_Id|✅ proved - incomplete|shostak|0.060|
|columns_Id|✅ proved - incomplete|shostak|0.100|
|entry_Id|✅ proved - incomplete|shostak|0.083|
|transpose_TCC1|✅ proved - incomplete|shostak|0.175|
|rows_transpose|✅ proved - incomplete|shostak|0.040|
|columns_transpose|✅ proved - incomplete|shostak|0.070|
|entry_transpose|✅ proved - incomplete|shostak|0.135|
|transpose_transpose|✅ proved - incomplete|shostak|0.100|
|transpose_mult_TCC1|✅ proved - incomplete|shostak|0.114|
|transpose_mult|✅ proved - incomplete|shostak|1.280|
|form_matrix_square|✅ proved - incomplete|shostak|0.078|
|transpose_Id|✅ proved - incomplete|shostak|0.472|
|vect2matrix_TCC1|✅ proved - incomplete|shostak|0.070|
|vect2matrix_eq|✅ proved - incomplete|shostak|0.215|

## `matrix_inv`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|left_inv_TCC1|✅ proved - incomplete|shostak|0.100|
|left_inv_TCC2|✅ proved - incomplete|shostak|0.153|
|left_inv_TCC3|✅ proved - incomplete|shostak|1.723|
|mult_left_inv_right_TCC1|✅ proved - incomplete|shostak|0.060|
|mult_left_inv_right|✅ proved - incomplete|shostak|8.067|
|invertible?_TCC1|✅ proved - complete|shostak|0.100|
|invertible_rew|✅ proved - incomplete|shostak|6.538|
|inverse_TCC1|✅ proved - incomplete|shostak|0.415|
|inverse_TCC2|✅ proved - incomplete|shostak|1.330|
|mult_inverse_left_TCC1|✅ proved - incomplete|shostak|0.626|
|mult_inverse_left_TCC2|✅ proved - incomplete|shostak|0.795|
|mult_inverse_left|✅ proved - incomplete|shostak|0.559|
|mult_inverse_right|✅ proved - incomplete|shostak|0.569|
|inverse_unique|✅ proved - incomplete|shostak|4.604|
|invertible_det|✅ proved - incomplete|shostak|0.713|
|invertible_mult_TCC1|✅ proved - incomplete|shostak|0.207|
|invertible_mult|✅ proved - incomplete|shostak|0.488|
|inverse_mult_TCC1|✅ proved - incomplete|shostak|0.340|
|inverse_mult|✅ proved - incomplete|shostak|4.329|
|det_inverse_TCC1|✅ proved - incomplete|shostak|0.020|
|det_inverse|✅ proved - incomplete|shostak|0.929|
|inverse_invertible|✅ proved - incomplete|shostak|0.452|
|inverse_inverse_TCC1|✅ proved - incomplete|shostak|0.517|
|inverse_inverse|✅ proved - incomplete|shostak|0.971|
|GH_TCC1|✅ proved - complete|shostak|0.010|
|GH_TCC2|✅ proved - complete|shostak|0.010|
|GH_TCC3|✅ proved - incomplete|shostak|0.030|
|GH_TCC4|✅ proved - incomplete|shostak|0.344|
|det_nonzero_simple_prod|✅ proved - incomplete|shostak|22.433|
|mult_induction_TCC1|✅ proved - complete|shostak|0.060|
|mult_induction_TCC2|✅ proved - incomplete|shostak|0.305|
|mult_induction_TCC3|✅ proved - incomplete|shostak|0.378|
|mult_induction_TCC4|✅ proved - incomplete|shostak|0.760|
|mult_induction|✅ proved - incomplete|shostak|2.369|
|det_transpose|✅ proved - incomplete|shostak|4.547|

## `matrix_diag`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|diagonalize_TCC1|✅ proved - incomplete|shostak|0.196|
|diagonalize_TCC2|✅ proved - incomplete|shostak|0.260|
|diagonalize_TCC3|✅ proved - complete|shostak|0.040|
|diagonalize_TCC4|✅ proved - incomplete|shostak|0.300|
|diagonalize_TCC5|✅ proved - incomplete|shostak|0.309|
|diagonalize_TCC6|✅ proved - incomplete|shostak|0.202|
|diagonalize_TCC7|✅ proved - incomplete|shostak|0.963|
|diagonalize_TCC8|✅ proved - incomplete|shostak|0.243|
|diagonalize_TCC9|✅ proved - incomplete|shostak|0.303|
|diagonalize_TCC10|✅ proved - incomplete|shostak|0.212|
|diagonalize_TCC11|✅ proved - incomplete|shostak|0.294|
|diagonalize_TCC12|✅ proved - incomplete|shostak|0.355|
|diagonalize_TCC13|✅ proved - incomplete|shostak|1.704|
|diagonalize_TCC14|✅ proved - incomplete|shostak|0.361|
|diagonalize_TCC15|✅ proved - incomplete|shostak|1.009|
|diagonalize_TCC16|✅ proved - incomplete|shostak|0.234|
|diagonalize_TCC17|✅ proved - incomplete|shostak|2.676|
|diagonalize_TCC18|✅ proved - incomplete|shostak|0.409|
|diagonalize_TCC19|✅ proved - incomplete|shostak|1.565|
|diagonalize_TCC20|✅ proved - incomplete|shostak|1.154|
|diagonalize_TCC21|✅ proved - incomplete|shostak|1.218|
|diagonalize_TCC22|✅ proved - incomplete|shostak|0.225|
|diagonalize_TCC23|✅ proved - incomplete|shostak|0.304|
|diagonalize_TCC24|✅ proved - incomplete|shostak|5.782|
|diagonalize_TCC25|✅ proved - incomplete|shostak|0.298|
|diag_TCC1|✅ proved - complete|shostak|0.050|
|diag_TCC2|✅ proved - incomplete|shostak|0.095|
|diag_TCC3|✅ proved - incomplete|shostak|0.650|
|diag_TCC4|✅ proved - incomplete|shostak|0.107|
|diag_TCC5|✅ proved - complete|shostak|0.060|
|diag_TCC6|✅ proved - complete|shostak|0.110|
|diag_TCC7|✅ proved - incomplete|shostak|1.566|
|diag_TCC8|✅ proved - incomplete|shostak|3.572|
|diag_TCC9|✅ proved - incomplete|shostak|1.597|
|diag_TCC10|✅ proved - incomplete|shostak|2.498|
|diag_TCC11|✅ proved - incomplete|shostak|8.403|
|diag_TCC12|✅ proved - incomplete|shostak|6.303|
|diag_TCC13|✅ proved - incomplete|shostak|8.108|
|diag_det_zero_row|✅ proved - incomplete|shostak|1.723|
|det_mult|✅ proved - incomplete|shostak|4.934|

## `matrix_upper_triang`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|upper_triangulate_TCC1|✅ proved - incomplete|shostak|0.190|
|upper_triangulate_TCC2|✅ proved - incomplete|shostak|0.210|
|upper_triangulate_TCC3|✅ proved - complete|shostak|0.040|
|upper_triangulate_TCC4|✅ proved - incomplete|shostak|0.285|
|upper_triangulate_TCC5|✅ proved - incomplete|shostak|0.274|
|upper_triangulate_TCC6|✅ proved - incomplete|shostak|0.241|
|upper_triangulate_TCC7|✅ proved - incomplete|shostak|0.194|
|upper_triangulate_TCC8|✅ proved - incomplete|shostak|0.334|
|upper_triangulate_TCC9|✅ proved - incomplete|shostak|0.234|
|upper_triangulate_TCC10|✅ proved - incomplete|shostak|0.195|
|upper_triangulate_TCC11|✅ proved - incomplete|shostak|0.274|
|upper_triangulate_TCC12|✅ proved - incomplete|shostak|0.354|
|upper_triangulate_TCC13|✅ proved - incomplete|shostak|0.635|
|upper_triangulate_TCC14|✅ proved - incomplete|shostak|0.313|
|upper_triangulate_TCC15|✅ proved - incomplete|shostak|4.202|
|upper_triangulate_TCC16|✅ proved - incomplete|shostak|0.238|
|upper_triangulate_TCC17|✅ proved - incomplete|shostak|2.783|
|upper_triangulate_TCC18|✅ proved - incomplete|shostak|0.356|
|upper_triangulate_TCC19|✅ proved - incomplete|shostak|1.097|
|upper_triangulate_TCC20|✅ proved - incomplete|shostak|0.638|
|upper_triangulate_TCC21|✅ proved - incomplete|shostak|0.582|
|upper_triangulate_TCC22|✅ proved - incomplete|shostak|0.197|
|upper_triangulate_TCC23|✅ proved - incomplete|shostak|2.065|
|upper_triangulate_TCC24|✅ proved - incomplete|shostak|11.309|
|upper_triangulate_TCC25|✅ proved - incomplete|shostak|0.000|
|upper_triangulate_TCC26|✅ proved - incomplete|shostak|0.741|
|upper_triangulate_TCC27|✅ proved - incomplete|shostak|0.356|
|upper_triangulate_TCC28|✅ proved - incomplete|shostak|0.881|
|upper_triangulate_TCC29|✅ proved - incomplete|shostak|0.224|
|upper_triangulate_TCC30|✅ proved - incomplete|shostak|2.505|
|upper_triangulate_TCC31|✅ proved - incomplete|shostak|0.628|
|upper_triangulate_TCC32|✅ proved - incomplete|shostak|1.077|
|upper_triangulate_TCC33|✅ proved - incomplete|shostak|0.765|
|upper_triangulate_TCC34|✅ proved - incomplete|shostak|1.273|
|upper_triangulate_TCC35|✅ proved - incomplete|shostak|1.017|
|upper_triangulate_TCC36|✅ proved - incomplete|shostak|1.745|
|upper_triangulate_TCC37|✅ proved - incomplete|shostak|10.504|
|upper_triangulate_TCC38|✅ proved - incomplete|shostak|0.167|

## `matrix_det`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Esr_TCC1|✅ proved - incomplete|shostak|0.127|
|entry_Esr|✅ proved - incomplete|shostak|0.088|
|rows_Esr|✅ proved - incomplete|shostak|0.050|
|columns_Esr|✅ proved - incomplete|shostak|0.080|
|det_Esr|✅ proved - incomplete|shostak|1.757|
|transpose_Esr|✅ proved - incomplete|shostak|0.189|
|mult_Esr_left_TCC1|✅ proved - complete|shostak|0.060|
|mult_Esr_left|✅ proved - incomplete|shostak|1.666|
|mult_Esr_Esr_inv|✅ proved - incomplete|shostak|1.000|
|Ers_TCC1|✅ proved - incomplete|shostak|1.164|
|entry_Ers|✅ proved - incomplete|shostak|0.225|
|rows_Ers|✅ proved - incomplete|shostak|0.000|
|columns_Ers|✅ proved - incomplete|shostak|0.180|
|mult_Ers_left|✅ proved - incomplete|shostak|2.494|
|transpose_Ers|✅ proved - incomplete|shostak|0.789|
|det_Ers|✅ proved - incomplete|shostak|1.668|
|mult_Ers_Ers_inv|✅ proved - incomplete|shostak|1.419|
|Easr_TCC1|✅ proved - incomplete|shostak|0.265|
|entry_Easr|✅ proved - incomplete|shostak|0.170|
|rows_Easr|✅ proved - incomplete|shostak|0.098|
|columns_Easr|✅ proved - incomplete|shostak|0.130|
|mult_Easr_left_TCC1|✅ proved - complete|shostak|0.132|
|mult_Easr_left|✅ proved - incomplete|shostak|1.787|
|transpose_Easr|✅ proved - incomplete|shostak|0.382|
|det_Easr|✅ proved - incomplete|shostak|3.443|
|mult_Easr_Easr_inv|✅ proved - incomplete|shostak|1.192|
|ZERO_TCC1|✅ proved - incomplete|shostak|0.130|
|prod_diag_TCC1|✅ proved - complete|shostak|0.060|
|prod_diag_TCC2|✅ proved - complete|shostak|0.040|
|prod_diag_TCC3|✅ proved - complete|shostak|0.060|
|prod_diag_remove_0_0_TCC1|✅ proved - incomplete|shostak|0.090|
|prod_diag_remove_0_0|✅ proved - incomplete|shostak|0.866|
|diagonal_upper_triangular|✅ proved - complete|shostak|0.020|
|det_upper_triangular|✅ proved - incomplete|shostak|1.189|
|det_upper_triangular_zero|✅ proved - incomplete|shostak|0.371|
|upper_triangular_mult|✅ proved - incomplete|shostak|1.481|
|lower_triangular_mult|✅ proved - incomplete|shostak|1.164|
|upper_triangular_Id|✅ proved - incomplete|shostak|0.085|
|lower_triangular_Id|✅ proved - incomplete|shostak|0.080|
|upper_triangular_Easr|✅ proved - incomplete|shostak|0.092|
|lower_triangular_Easr|✅ proved - incomplete|shostak|0.090|
|prod_mat_TCC1|✅ proved - complete|shostak|0.065|
|prod_mat_TCC2|✅ proved - complete|shostak|0.020|
|prod_mat_TCC3|✅ proved - incomplete|shostak|0.254|
|prod_mat_eq|✅ proved - incomplete|shostak|0.454|
|mult_prod_mat_TCC1|✅ proved - complete|shostak|0.124|
|mult_prod_mat|✅ proved - incomplete|shostak|1.247|
|prod_mat_expand_left_TCC1|✅ proved - complete|shostak|0.062|
|prod_mat_expand_left|✅ proved - incomplete|shostak|1.245|
|transpose_prod_mat_TCC1|✅ proved - complete|shostak|0.072|
|transpose_prod_mat_TCC2|✅ proved - incomplete|shostak|0.100|
|transpose_prod_mat|✅ proved - incomplete|shostak|1.132|
|mult_simple_prod_TCC1|✅ proved - incomplete|shostak|0.161|
|mult_simple_prod|✅ proved - incomplete|shostak|1.152|
|Id_simple_prod|✅ proved - incomplete|shostak|0.252|
|Esr_simple_prod|✅ proved - incomplete|shostak|0.404|
|Ers_simple_prod|✅ proved - incomplete|shostak|0.676|
|Easr_simple_prod|✅ proved - incomplete|shostak|0.415|
|det_simple_prod_1|✅ proved - incomplete|shostak|2.113|
|det_mult_simple_prod_left|✅ proved - incomplete|shostak|2.410|
|Easr_null|✅ proved - incomplete|shostak|0.092|
|transpose_simple_prod_TCC1|✅ proved - incomplete|shostak|0.060|
|transpose_simple_prod|✅ proved - incomplete|shostak|1.813|
|diagonal_simple_prod|✅ proved - incomplete|shostak|0.000|
|is_simple_prod_implic|✅ proved - incomplete|shostak|0.295|

## `matrix_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|matrix_2x2|✅ proved - incomplete|shostak|0.851|
|length_row|✅ proved - complete|shostak|0.100|
|length_nth_row|✅ proved - complete|shostak|0.033|
|columns_cdr_TCC1|✅ proved - complete|shostak|0.070|
|columns_cdr|✅ proved - complete|shostak|0.310|
|columns_cons|✅ proved - complete|shostak|0.150|
|access_col|✅ proved - complete|shostak|0.215|
|remove_TCC1|✅ proved - complete|shostak|0.185|
|remove_TCC2|✅ proved - complete|shostak|0.040|
|remove_TCC3|✅ proved - complete|shostak|0.040|
|remove_TCC4|✅ proved - incomplete|shostak|0.497|
|remove_posfullmatrix|✅ proved - incomplete|shostak|0.294|
|rows_remove|✅ proved - incomplete|shostak|0.215|
|columns_remove|✅ proved - incomplete|shostak|0.759|
|remove_remove_1_0|✅ proved - incomplete|shostak|2.225|
|remove_remove_1_0_0|✅ proved - incomplete|shostak|1.928|
|remove_remove_1_n|✅ proved - incomplete|shostak|2.279|
|entry_remove|✅ proved - incomplete|shostak|0.150|
|remove_Id_0_0_TCC1|✅ proved - complete|shostak|0.018|
|remove_Id_0_0|✅ proved - incomplete|shostak|0.728|
|remove_test|✅ proved - incomplete|shostak|0.040|
|det_TCC1|✅ proved - incomplete|shostak|2.125|
|det_test|✅ proved - incomplete|shostak|0.515|
|det_size_noteq|✅ proved - incomplete|shostak|0.140|
|swap_fun_test|✅ proved - complete|shostak|0.090|
|swap_TCC1|✅ proved - incomplete|shostak|0.376|
|entry_swap|✅ proved - incomplete|shostak|0.060|
|swap_test_TCC1|✅ proved - complete|shostak|0.042|
|swap_test|✅ proved - incomplete|shostak|0.060|
|remove_swap_1|✅ proved - incomplete|shostak|0.773|
|remove_swap_2_TCC1|✅ proved - incomplete|shostak|0.120|
|remove_swap_2_TCC2|✅ proved - complete|shostak|0.073|
|remove_swap_2_TCC3|✅ proved - complete|shostak|0.070|
|remove_swap_2|✅ proved - incomplete|shostak|1.371|
|swap_sym|✅ proved - incomplete|shostak|0.287|
|det_swap_0_1|✅ proved - incomplete|shostak|14.325|
|swap_swap_matrix|✅ proved - incomplete|shostak|0.386|
|swap_similar|✅ proved - incomplete|shostak|0.782|
|det_swap|✅ proved - incomplete|shostak|2.876|
|row_swap|✅ proved - incomplete|shostak|0.437|
|rows_swap|✅ proved - incomplete|shostak|0.063|
|columns_swap|✅ proved - incomplete|shostak|0.100|
|swap_id|✅ proved - incomplete|shostak|0.239|
|swap_eq|✅ proved - incomplete|shostak|0.209|
|det_rows_eq_0|✅ proved - incomplete|shostak|0.130|
|replace_row_TCC1|✅ proved - complete|shostak|0.256|
|replace_row_TCC2|✅ proved - complete|shostak|0.285|
|replace_row_TCC3|✅ proved - complete|shostak|0.104|
|replace_row_TCC4|✅ proved - complete|shostak|2.356|
|replace_row_TCC5|✅ proved - complete|shostak|0.110|
|replace_row_TCC6|✅ proved - complete|shostak|0.351|
|replace_row_TCC7|✅ proved - complete|shostak|0.090|
|replace_row_TCC8|✅ proved - complete|shostak|0.068|
|replace_row_TCC9|✅ proved - complete|shostak|2.510|
|entry_replace_row|✅ proved - complete|shostak|0.090|
|rows_replace_row|✅ proved - complete|shostak|0.080|
|columns_replace_row|✅ proved - complete|shostak|0.160|
|remove_replace_row|✅ proved - incomplete|shostak|0.867|
|swap_replace_row_TCC1|✅ proved - incomplete|shostak|0.140|
|swap_replace_row_TCC2|✅ proved - incomplete|shostak|0.136|
|swap_replace_row_TCC3|✅ proved - incomplete|shostak|0.135|
|swap_replace_row|✅ proved - incomplete|shostak|3.648|
|row_replace_row|✅ proved - complete|shostak|0.228|
|remove_replace_row_eq|✅ proved - incomplete|shostak|0.859|
|det_replace_row_sum_TCC1|✅ proved - complete|shostak|0.041|
|det_replace_row_sum_TCC2|✅ proved - complete|shostak|0.050|
|det_replace_row_sum|✅ proved - incomplete|shostak|8.100|
|det_replace_row_scal_TCC1|✅ proved - complete|shostak|0.071|
|det_replace_row_scal|✅ proved - incomplete|shostak|5.056|
|replace_row_id_TCC1|✅ proved - complete|shostak|0.040|
|replace_row_id|✅ proved - incomplete|shostak|0.266|
|det_replace_row_sum_scal_TCC1|✅ proved - complete|shostak|0.147|
|det_replace_row_sum_scal|✅ proved - incomplete|shostak|0.967|
|replace_row_sum_to_scal_TCC1|✅ proved - complete|shostak|0.093|
|replace_row_sum_to_scal_TCC2|✅ proved - complete|shostak|0.120|
|replace_row_sum_to_scal|✅ proved - incomplete|shostak|0.247|
|det_Id|✅ proved - incomplete|shostak|2.953|
|det_first_column_zero|✅ proved - incomplete|shostak|0.759|
|remove_transpose_TCC1|✅ proved - incomplete|shostak|0.090|
|remove_transpose|✅ proved - incomplete|shostak|0.711|

## `query_coeff`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|bump_one_ind_TCC1|✅ proved - complete|shostak|0.054|
|bump_one_ind_TCC2|✅ proved - complete|shostak|0.080|
|bump_one_ind_TCC3|✅ proved - complete|shostak|0.070|
|bump_one_ind_TCC4|✅ proved - complete|shostak|0.090|
|bump_one_ind_TCC5|✅ proved - complete|shostak|0.084|
|bump_one_ind_TCC6|✅ proved - complete|shostak|0.130|
|switch_one_entry_TCC1|✅ proved - complete|shostak|0.039|
|switch_one_entry_TCC2|✅ proved - complete|shostak|0.090|
|switch_one_entry_TCC3|✅ proved - complete|shostak|0.080|
|switch_one_entry_TCC4|✅ proved - complete|shostak|0.072|
|switch_one_entry_TCC5|✅ proved - complete|shostak|0.010|
|switch_one_entry_TCC6|✅ proved - complete|shostak|0.431|
|switch_is_with_TCC1|✅ proved - complete|shostak|0.030|
|switch_is_with|✅ proved - incomplete|shostak|2.802|
|bump_one_ind_list_TCC1|✅ proved - complete|shostak|0.050|
|bump_one_ind_list_TCC2|✅ proved - complete|shostak|0.250|
|bump_one_ind_list_TCC3|✅ proved - complete|shostak|0.070|
|bump_one_ind_list_TCC4|✅ proved - complete|shostak|0.121|
|bump_one_ind_list_TCC5|✅ proved - complete|shostak|0.110|
|bump_one_ind_list_TCC6|✅ proved - complete|shostak|0.104|
|bump_one_ind_list_TCC7|✅ proved - complete|shostak|0.040|
|bump_one_ind_list_TCC8|✅ proved - complete|shostak|0.140|
|bump_one_ind_list_TCC9|✅ proved - complete|shostak|0.180|
|bump_one_ind_list_TCC10|✅ proved - complete|shostak|0.130|
|bump_one_ind_list_TCC11|✅ proved - complete|shostak|0.070|
|bump_one_below|✅ proved - complete|shostak|0.303|
|bump_one_ind_lem|✅ proved - incomplete|shostak|0.965|
|bump_one_ind_lem2_TCC1|✅ proved - complete|shostak|0.010|
|bump_one_ind_lem2_TCC2|✅ proved - complete|shostak|0.080|
|bump_one_ind_lem2|✅ proved - incomplete|shostak|1.375|
|low2_TCC1|✅ proved - complete|shostak|0.117|
|low2_TCC2|✅ proved - complete|shostak|0.120|
|low2_lem|✅ proved - complete|shostak|0.306|
|bump_one_prep_TCC1|✅ proved - complete|shostak|0.010|
|bump_one_prep|✅ proved - incomplete|shostak|1.001|
|bump_one_prep2_TCC1|✅ proved - incomplete|shostak|0.070|
|bump_one_prep2_TCC2|✅ proved - incomplete|shostak|0.050|
|bump_one_prep2|✅ proved - incomplete|shostak|1.231|
|bump_one_TCC1|✅ proved - incomplete|shostak|0.010|
|switch_to_array|✅ proved - incomplete|shostak|1.025|
|bump_one_list_TCC1|✅ proved - incomplete|shostak|0.010|
|bump_one_list_TCC2|✅ proved - incomplete|shostak|0.817|
|is_nonzero_TCC1|✅ proved - complete|shostak|0.060|
|dot_tail_sum2plus_TCC1|✅ proved - complete|shostak|0.000|
|dot_tail_sum2plus_TCC2|✅ proved - incomplete|shostak|0.174|
|dot_tail_sum2plus_TCC3|✅ proved - incomplete|shostak|0.110|
|dot_tail_sum2plus_TCC4|✅ proved - incomplete|shostak|0.010|
|dot_tail_sum2plus_TCC5|✅ proved - incomplete|shostak|0.203|
|dot_tail_sum2plus_TCC6|✅ proved - incomplete|shostak|0.223|
|dot_tail_sum2plus_TCC7|✅ proved - incomplete|shostak|0.090|
|dot_tail_sum2plus_TCC8|✅ proved - incomplete|shostak|0.160|
|dot_tail_sum_lem|✅ proved - incomplete|shostak|1.177|
|is_nz_TCC1|✅ proved - complete|shostak|0.050|
|dot_tail_sum2_TCC1|✅ proved - incomplete|shostak|0.030|
|dot_tail_sum2_TCC2|✅ proved - incomplete|shostak|0.063|
|dot_tail_sum2_TCC3|✅ proved - incomplete|shostak|0.080|
|dot_tail_sum_lem2_TCC1|✅ proved - incomplete|shostak|0.020|
|dot_tail_sum_lem2_TCC2|✅ proved - incomplete|shostak|0.020|
|dot_tail_sum_lem2|✅ proved - incomplete|shostak|0.754|

## `tensor_product`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|not_null|✅ proved - complete|shostak|0.030|
|mod_int|✅ proved - complete|shostak|0.443|
|tensor_fun_TCC1|✅ proved - complete|shostak|0.130|
|tensor_fun_TCC2|✅ proved - complete|shostak|0.279|
|tensor_fun_TCC3|✅ proved - complete|shostak|0.030|
|tensor_fun_TCC4|✅ proved - complete|shostak|0.000|
|tensor_fun_TCC5|✅ proved - complete|shostak|0.040|
|tensor_fun_TCC6|✅ proved - complete|shostak|0.057|
|tensor_prod_TCC1|✅ proved - incomplete|shostak|0.708|
|entry_tensor_prod|✅ proved - incomplete|shostak|0.200|
|tensor_rows|✅ proved - incomplete|shostak|0.124|
|tensor_cols|✅ proved - incomplete|shostak|0.190|
|tensor_mult_entry_TCC1|✅ proved - complete|shostak|0.165|
|tensor_mult_entry_TCC2|✅ proved - complete|shostak|0.395|
|tensor_mult_entry_TCC3|✅ proved - complete|shostak|0.030|
|tensor_mult_entry_TCC4|✅ proved - complete|shostak|0.356|
|tensor_mult_entry_TCC5|✅ proved - complete|shostak|0.055|
|tensor_mult_entry_TCC6|✅ proved - complete|shostak|0.070|
|tensor_mult_entry|✅ proved - incomplete|shostak|7.038|
|invertible_tensor_TCC1|✅ proved - incomplete|shostak|0.070|
|invertible_tensor_TCC2|✅ proved - incomplete|shostak|0.070|
|invertible_tensor_TCC3|✅ proved - incomplete|shostak|0.021|
|invertible_tensor_TCC4|✅ proved - incomplete|shostak|0.020|
|invertible_tensor|✅ proved - incomplete|shostak|10.570|
|TQMat_TCC1|✅ proved - complete|shostak|1.675|
|TQMatInv_TCC1|✅ proved - complete|shostak|1.908|
|invTQ|✅ proved - incomplete|shostak|2.974|
|is_invTQ_TCC1|✅ proved - incomplete|shostak|2.975|
|is_invTQ|✅ proved - incomplete|shostak|2.415|
|tensor_power_TCC1|✅ proved - complete|shostak|0.060|
|tensor_power_TCC2|✅ proved - complete|shostak|0.010|
|invertible_tensor_power_TCC1|✅ proved - incomplete|shostak|0.442|
|invertible_tensor_power_TCC2|✅ proved - incomplete|shostak|0.030|
|invertible_tensor_power_TCC3|✅ proved - incomplete|shostak|1.099|
|invertible_tensor_power|✅ proved - incomplete|shostak|13.125|
|tensor_power_rows_TCC1|✅ proved - complete|shostak|0.020|
|tensor_power_rows|✅ proved - incomplete|shostak|0.364|
|tensor_power_columns_TCC1|✅ proved - complete|shostak|0.020|
|tensor_power_columns|✅ proved - incomplete|shostak|0.493|
|mod_eq_lem_alt_TCC1|✅ proved - complete|shostak|0.150|
|mod_eq_lem_alt|✅ proved - incomplete|shostak|0.473|
|tensor_prod_assoc|✅ proved - incomplete|shostak|5.301|
|power_assoc|✅ proved - incomplete|shostak|0.597|
|tensor_power_rows_alt|✅ proved - incomplete|shostak|0.020|
|tensor_power_columns_alt|✅ proved - incomplete|shostak|0.040|
|TQXL_TCC1|✅ proved - complete|shostak|0.050|
|TQXLinv_TCC1|✅ proved - complete|shostak|0.070|
|invTQXL|✅ proved - incomplete|shostak|0.263|
|is_invTQXL_TCC1|✅ proved - incomplete|shostak|0.010|
|is_invTQXL_TCC2|✅ proved - incomplete|shostak|0.010|
|is_invTQXL|✅ proved - incomplete|shostak|0.431|
|RowToMat_TCC1|✅ proved - incomplete|shostak|0.265|
|RtM|✅ proved - incomplete|shostak|0.020|
|RowToMat_rows|✅ proved - incomplete|shostak|0.060|
|RowToMat_columns|✅ proved - incomplete|shostak|0.159|
|RowToMat_entry|✅ proved - incomplete|shostak|0.474|
|RowToMat_tensor_prod_TCC1|✅ proved - incomplete|shostak|0.060|
|RowToMat_tensor_prod_TCC2|✅ proved - complete|shostak|0.110|
|RowToMat_tensor_prod_TCC3|✅ proved - complete|shostak|0.174|
|RowToMat_tensor_prod_TCC4|✅ proved - complete|shostak|0.035|
|RowToMat_tensor_prod|✅ proved - incomplete|shostak|3.949|
|RowTensor_TCC1|✅ proved - complete|shostak|0.040|
|RowTensor_TCC2|✅ proved - complete|shostak|0.029|
|RowTensor_TCC3|✅ proved - complete|shostak|0.070|
|RowTensors_same_TCC1|✅ proved - complete|shostak|0.090|
|RowTensors_same_TCC2|✅ proved - incomplete|shostak|0.030|
|RowTensors_same|✅ proved - incomplete|shostak|1.332|
|RowTensor_is_TensorRow_TCC1|✅ proved - incomplete|shostak|0.060|
|RowTensor_is_TensorRow|✅ proved - incomplete|shostak|1.735|
|RowTensor_is_TensorRow2_TCC1|✅ proved - incomplete|shostak|0.050|
|RowTensor_is_TensorRow2|✅ proved - incomplete|shostak|0.113|
|tensor_entry_TCC1|✅ proved - complete|shostak|0.130|
|tensor_entry_TCC2|✅ proved - incomplete|shostak|0.020|
|tensor_entry_TCC3|✅ proved - incomplete|shostak|0.131|
|tensor_entry_TCC4|✅ proved - incomplete|shostak|0.020|
|tensor_entry_TCC5|✅ proved - incomplete|shostak|0.140|
|tensor_entry|✅ proved - incomplete|shostak|4.495|
|tensor_entry_alt|✅ proved - incomplete|shostak|0.010|

## `linear_dependence`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|zerow_TCC1|✅ proved - incomplete|shostak|0.996|
|zerow_dim|✅ proved - incomplete|shostak|0.391|
|zecolumn_dim|✅ proved - incomplete|shostak|0.050|
|row2mat_TCC1|✅ proved - incomplete|shostak|0.591|
|row2mat_dim|✅ proved - incomplete|shostak|0.643|
|sum_rows_TCC1|✅ proved - incomplete|shostak|1.203|
|sum_rows_TCC2|✅ proved - complete|shostak|0.100|
|sum_rows_TCC3|✅ proved - incomplete|shostak|1.205|
|sum_rows_TCC4|✅ proved - complete|shostak|0.024|
|sum_rows_TCC5|✅ proved - complete|shostak|0.050|
|sum_rows_TCC6|✅ proved - complete|shostak|0.010|
|sum_rows_eq|✅ proved - incomplete|shostak|0.529|
|sum_rows_add_start_TCC1|✅ proved - incomplete|shostak|0.712|
|sum_rows_add_start|✅ proved - incomplete|shostak|2.588|
|subtract_same_scal|✅ proved - incomplete|shostak|1.090|
|sum_lem_prep_TCC1|✅ proved - complete|shostak|0.113|
|sum_lem_prep|✅ proved - incomplete|shostak|3.597|
|sum_lem|✅ proved - incomplete|shostak|0.120|
|row_dependence_lem|✅ proved - incomplete|shostak|1.648|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib//float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-pvsio-fix.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210219-extratregies.lisp`|
