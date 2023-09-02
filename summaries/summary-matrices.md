# Summary for `matrices`
Run started at 15:15:28 9/1/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **524**   | **524**    | **524**    | **0**  | **7:37.979 s**   |
|top|0|0|0|0|0.000|
|matrices|110|110|110|0|48.366|
|matrix_inv|35|35|35|0|1:16.319|
|matrix_diag|40|40|40|0|1:6.465|
|matrix_upper_triang|38|38|38|0|45.164|
|matrix_det|65|65|65|0|42.687|
|matrix_props|80|80|80|0|1:17.218|
|query_coeff|59|59|59|0|15.754|
|tensor_product|78|78|78|0|1:11.811|
|linear_dependence|19|19|19|0|14.195|
## Detailed Summary 
## `top`
No formula declaration found.
## `matrices`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_sigma_swap_TCC1|✅ proved - complete|shostak|0.048|
|length_matrix_eq|✅ proved - complete|shostak|0.060|
|nth_matrix_eq|✅ proved - complete|shostak|0.105|
|length_matrix_equiv|✅ proved - complete|shostak|0.065|
|length_matrix_nth|✅ proved - complete|shostak|0.368|
|matrix_listn_nth|✅ proved - complete|shostak|0.020|
|length_rows|✅ proved - complete|shostak|0.010|
|columns_TCC1|✅ proved - complete|shostak|0.020|
|columns_TCC2|✅ proved - complete|shostak|0.030|
|columns_TCC3|✅ proved - complete|shostak|0.053|
|columns_TCC4|✅ proved - complete|shostak|0.423|
|row_TCC1|✅ proved - complete|shostak|0.020|
|col_TCC1|✅ proved - complete|shostak|0.030|
|col_TCC2|✅ proved - complete|shostak|0.093|
|col_def_TCC1|✅ proved - complete|shostak|0.040|
|col_def_TCC2|✅ proved - complete|shostak|0.040|
|col_def|✅ proved - complete|shostak|0.781|
|col_zero|✅ proved - incomplete|shostak|0.244|
|access_zero|✅ proved - incomplete|shostak|0.060|
|entry_test|✅ proved - complete|shostak|0.030|
|access_row|✅ proved - complete|shostak|0.011|
|access_col|✅ proved - complete|shostak|0.130|
|coltest|✅ proved - complete|shostak|0.020|
|full_matrix_columns_TCC1|✅ proved - complete|shostak|0.051|
|full_matrix_columns|✅ proved - complete|shostak|0.080|
|rows_mn|✅ proved - complete|shostak|0.010|
|columns_mn|✅ proved - complete|shostak|0.060|
|length_row|✅ proved - complete|shostak|0.084|
|length_col|✅ proved - complete|shostak|0.020|
|columns_0_entry|✅ proved - complete|shostak|0.191|
|rows_0_entry|✅ proved - complete|shostak|0.060|
|entry_eq_0|✅ proved - complete|shostak|0.090|
|add_TCC1|✅ proved - complete|shostak|0.032|
|add_TCC2|✅ proved - complete|shostak|0.040|
|add_TCC3|✅ proved - complete|shostak|0.020|
|add_TCC4|✅ proved - complete|shostak|0.020|
|add_TCC5|✅ proved - complete|shostak|0.100|
|add_TCC6|✅ proved - complete|shostak|0.194|
|scal_TCC1|✅ proved - complete|shostak|0.020|
|scal_TCC2|✅ proved - complete|shostak|0.050|
|scal_TCC3|✅ proved - complete|shostak|0.084|
|sub_TCC1|✅ proved - complete|shostak|0.090|
|super_dot_TCC1|✅ proved - complete|shostak|0.030|
|super_dot_TCC2|✅ proved - complete|shostak|0.060|
|super_dot_TCC3|✅ proved - complete|shostak|0.070|
|super_duper_dot_TCC1|✅ proved - complete|shostak|0.030|
|super_duper_dot_TCC2|✅ proved - complete|shostak|0.000|
|access_sum|✅ proved - complete|shostak|1.662|
|access_scal|✅ proved - complete|shostak|0.395|
|vect_scal_1|✅ proved - incomplete|shostak|0.072|
|dot_eq_sigma|✅ proved - incomplete|shostak|0.000|
|dot_zero_right|✅ proved - incomplete|shostak|0.216|
|dot_commutes|✅ proved - complete|shostak|0.130|
|dot_zero_left|✅ proved - incomplete|shostak|0.020|
|length_add_vect|✅ proved - complete|shostak|0.060|
|length_add_vect_same|✅ proved - complete|shostak|0.074|
|length_scal_vect|✅ proved - complete|shostak|0.020|
|form_matrix_TCC1|✅ proved - complete|shostak|0.080|
|form_matrix_TCC2|✅ proved - complete|shostak|0.100|
|form_matrix_TCC3|✅ proved - incomplete|shostak|0.866|
|columns_form_matrix|✅ proved - incomplete|shostak|0.081|
|rows_form_matrix|✅ proved - incomplete|shostak|0.030|
|form_matrix_empty|✅ proved - incomplete|shostak|0.352|
|form_matrix_test1|✅ proved - incomplete|shostak|0.050|
|full_matrix_eq|✅ proved - incomplete|shostak|0.302|
|matrix2array|✅ proved - incomplete|shostak|2.077|
|entry_form_matrix|✅ proved - incomplete|shostak|0.180|
|entry_form_matrix2|✅ proved - incomplete|shostak|0.107|
|form_matrix_eq|✅ proved - incomplete|shostak|0.605|
|matrix_reduce_prop|✅ proved - incomplete|shostak|0.605|
|mult_TCC1|✅ proved - incomplete|shostak|0.297|
|mult_full|✅ proved - incomplete|shostak|0.080|
|mult_null_left|✅ proved - incomplete|shostak|0.128|
|mult_null_right|✅ proved - incomplete|shostak|0.212|
|columns_mult|✅ proved - incomplete|shostak|2.743|
|rows_mult|✅ proved - incomplete|shostak|0.050|
|columns_append|✅ proved - incomplete|shostak|0.728|
|append_mult|✅ proved - incomplete|shostak|3.040|
|matrix_mult_assoc|✅ proved - incomplete|shostak|11.593|
|entry_mult|✅ proved - incomplete|shostak|0.061|
|form_matrix_mult|✅ proved - incomplete|shostak|1.790|
|add_TCC7|✅ proved - incomplete|shostak|4.896|
|columns_add|✅ proved - incomplete|shostak|0.563|
|rows_add|✅ proved - incomplete|shostak|0.040|
|matrix_add_assoc|✅ proved - incomplete|shostak|2.227|
|matrix_add_comm|✅ proved - incomplete|shostak|1.022|
|scal_TCC4|✅ proved - incomplete|shostak|0.180|
|columns_scal|✅ proved - incomplete|shostak|0.368|
|rows_scal|✅ proved - incomplete|shostak|0.070|
|sub_TCC2|✅ proved - incomplete|shostak|0.438|
|rows_sub|✅ proved - incomplete|shostak|0.154|
|columns_sub|✅ proved - incomplete|shostak|0.173|
|matrix_sub_test|✅ proved - incomplete|shostak|0.070|
|Id_TCC1|✅ proved - incomplete|shostak|0.998|
|mult_Id_left|✅ proved - incomplete|shostak|0.501|
|mult_Id_right|✅ proved - incomplete|shostak|0.494|
|rows_Id|✅ proved - incomplete|shostak|0.070|
|columns_Id|✅ proved - incomplete|shostak|0.130|
|entry_Id|✅ proved - incomplete|shostak|0.110|
|transpose_TCC1|✅ proved - incomplete|shostak|0.225|
|rows_transpose|✅ proved - incomplete|shostak|0.050|
|columns_transpose|✅ proved - incomplete|shostak|0.085|
|entry_transpose|✅ proved - incomplete|shostak|0.130|
|transpose_transpose|✅ proved - incomplete|shostak|0.105|
|transpose_mult_TCC1|✅ proved - incomplete|shostak|0.110|
|transpose_mult|✅ proved - incomplete|shostak|1.304|
|form_matrix_square|✅ proved - incomplete|shostak|0.080|
|transpose_Id|✅ proved - incomplete|shostak|0.460|
|vect2matrix_TCC1|✅ proved - incomplete|shostak|0.080|
|vect2matrix_eq|✅ proved - incomplete|shostak|0.240|

## `matrix_inv`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|left_inv_TCC1|✅ proved - incomplete|shostak|0.107|
|left_inv_TCC2|✅ proved - incomplete|shostak|0.160|
|left_inv_TCC3|✅ proved - incomplete|shostak|6.526|
|mult_left_inv_right_TCC1|✅ proved - incomplete|shostak|0.060|
|mult_left_inv_right|✅ proved - incomplete|shostak|8.249|
|invertible?_TCC1|✅ proved - complete|shostak|0.100|
|invertible_rew|✅ proved - incomplete|shostak|6.690|
|inverse_TCC1|✅ proved - incomplete|shostak|0.430|
|inverse_TCC2|✅ proved - incomplete|shostak|1.402|
|mult_inverse_left_TCC1|✅ proved - incomplete|shostak|0.659|
|mult_inverse_left_TCC2|✅ proved - incomplete|shostak|0.845|
|mult_inverse_left|✅ proved - incomplete|shostak|0.581|
|mult_inverse_right|✅ proved - incomplete|shostak|0.580|
|inverse_unique|✅ proved - incomplete|shostak|4.451|
|invertible_det|✅ proved - incomplete|shostak|0.720|
|invertible_mult_TCC1|✅ proved - incomplete|shostak|0.198|
|invertible_mult|✅ proved - incomplete|shostak|0.487|
|inverse_mult_TCC1|✅ proved - incomplete|shostak|0.320|
|inverse_mult|✅ proved - incomplete|shostak|4.646|
|det_inverse_TCC1|✅ proved - incomplete|shostak|0.030|
|det_inverse|✅ proved - incomplete|shostak|1.125|
|inverse_invertible|✅ proved - incomplete|shostak|0.614|
|inverse_inverse_TCC1|✅ proved - incomplete|shostak|0.634|
|inverse_inverse|✅ proved - incomplete|shostak|1.117|
|GH_TCC1|✅ proved - complete|shostak|0.010|
|GH_TCC2|✅ proved - complete|shostak|0.010|
|GH_TCC3|✅ proved - incomplete|shostak|0.030|
|GH_TCC4|✅ proved - incomplete|shostak|0.422|
|det_nonzero_simple_prod|✅ proved - incomplete|shostak|26.439|
|mult_induction_TCC1|✅ proved - complete|shostak|0.070|
|mult_induction_TCC2|✅ proved - incomplete|shostak|0.329|
|mult_induction_TCC3|✅ proved - incomplete|shostak|0.404|
|mult_induction_TCC4|✅ proved - incomplete|shostak|0.777|
|mult_induction|✅ proved - incomplete|shostak|2.448|
|det_transpose|✅ proved - incomplete|shostak|4.649|

## `matrix_diag`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|diagonalize_TCC1|✅ proved - incomplete|shostak|0.210|
|diagonalize_TCC2|✅ proved - incomplete|shostak|0.290|
|diagonalize_TCC3|✅ proved - complete|shostak|0.055|
|diagonalize_TCC4|✅ proved - incomplete|shostak|0.305|
|diagonalize_TCC5|✅ proved - incomplete|shostak|0.340|
|diagonalize_TCC6|✅ proved - incomplete|shostak|0.214|
|diagonalize_TCC7|✅ proved - incomplete|shostak|1.013|
|diagonalize_TCC8|✅ proved - incomplete|shostak|0.253|
|diagonalize_TCC9|✅ proved - incomplete|shostak|0.315|
|diagonalize_TCC10|✅ proved - incomplete|shostak|0.213|
|diagonalize_TCC11|✅ proved - incomplete|shostak|0.292|
|diagonalize_TCC12|✅ proved - incomplete|shostak|0.362|
|diagonalize_TCC13|✅ proved - incomplete|shostak|1.802|
|diagonalize_TCC14|✅ proved - incomplete|shostak|0.396|
|diagonalize_TCC15|✅ proved - incomplete|shostak|1.058|
|diagonalize_TCC16|✅ proved - incomplete|shostak|0.254|
|diagonalize_TCC17|✅ proved - incomplete|shostak|2.783|
|diagonalize_TCC18|✅ proved - incomplete|shostak|0.425|
|diagonalize_TCC19|✅ proved - incomplete|shostak|1.607|
|diagonalize_TCC20|✅ proved - incomplete|shostak|1.170|
|diagonalize_TCC21|✅ proved - incomplete|shostak|0.000|
|diagonalize_TCC22|✅ proved - incomplete|shostak|0.226|
|diagonalize_TCC23|✅ proved - incomplete|shostak|0.305|
|diagonalize_TCC24|✅ proved - incomplete|shostak|10.561|
|diagonalize_TCC25|✅ proved - incomplete|shostak|0.300|
|diag_TCC1|✅ proved - complete|shostak|0.050|
|diag_TCC2|✅ proved - incomplete|shostak|0.094|
|diag_TCC3|✅ proved - incomplete|shostak|0.638|
|diag_TCC4|✅ proved - incomplete|shostak|0.107|
|diag_TCC5|✅ proved - complete|shostak|0.050|
|diag_TCC6|✅ proved - complete|shostak|0.130|
|diag_TCC7|✅ proved - incomplete|shostak|1.611|
|diag_TCC8|✅ proved - incomplete|shostak|3.726|
|diag_TCC9|✅ proved - incomplete|shostak|1.626|
|diag_TCC10|✅ proved - incomplete|shostak|2.572|
|diag_TCC11|✅ proved - incomplete|shostak|3.424|
|diag_TCC12|✅ proved - incomplete|shostak|11.904|
|diag_TCC13|✅ proved - incomplete|shostak|8.456|
|diag_det_zero_row|✅ proved - incomplete|shostak|1.807|
|det_mult|✅ proved - incomplete|shostak|5.521|

## `matrix_upper_triang`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|upper_triangulate_TCC1|✅ proved - incomplete|shostak|0.197|
|upper_triangulate_TCC2|✅ proved - incomplete|shostak|0.230|
|upper_triangulate_TCC3|✅ proved - complete|shostak|0.040|
|upper_triangulate_TCC4|✅ proved - incomplete|shostak|0.301|
|upper_triangulate_TCC5|✅ proved - incomplete|shostak|0.332|
|upper_triangulate_TCC6|✅ proved - incomplete|shostak|0.334|
|upper_triangulate_TCC7|✅ proved - incomplete|shostak|0.262|
|upper_triangulate_TCC8|✅ proved - incomplete|shostak|0.393|
|upper_triangulate_TCC9|✅ proved - incomplete|shostak|0.244|
|upper_triangulate_TCC10|✅ proved - incomplete|shostak|0.204|
|upper_triangulate_TCC11|✅ proved - incomplete|shostak|0.275|
|upper_triangulate_TCC12|✅ proved - incomplete|shostak|0.364|
|upper_triangulate_TCC13|✅ proved - incomplete|shostak|0.635|
|upper_triangulate_TCC14|✅ proved - incomplete|shostak|0.331|
|upper_triangulate_TCC15|✅ proved - incomplete|shostak|4.352|
|upper_triangulate_TCC16|✅ proved - incomplete|shostak|0.236|
|upper_triangulate_TCC17|✅ proved - incomplete|shostak|2.773|
|upper_triangulate_TCC18|✅ proved - incomplete|shostak|0.371|
|upper_triangulate_TCC19|✅ proved - incomplete|shostak|1.171|
|upper_triangulate_TCC20|✅ proved - incomplete|shostak|0.664|
|upper_triangulate_TCC21|✅ proved - incomplete|shostak|0.610|
|upper_triangulate_TCC22|✅ proved - incomplete|shostak|0.209|
|upper_triangulate_TCC23|✅ proved - incomplete|shostak|2.178|
|upper_triangulate_TCC24|✅ proved - incomplete|shostak|5.883|
|upper_triangulate_TCC25|✅ proved - incomplete|shostak|0.361|
|upper_triangulate_TCC26|✅ proved - incomplete|shostak|0.734|
|upper_triangulate_TCC27|✅ proved - incomplete|shostak|0.359|
|upper_triangulate_TCC28|✅ proved - incomplete|shostak|0.874|
|upper_triangulate_TCC29|✅ proved - incomplete|shostak|0.235|
|upper_triangulate_TCC30|✅ proved - incomplete|shostak|2.661|
|upper_triangulate_TCC31|✅ proved - incomplete|shostak|0.617|
|upper_triangulate_TCC32|✅ proved - incomplete|shostak|1.093|
|upper_triangulate_TCC33|✅ proved - incomplete|shostak|0.770|
|upper_triangulate_TCC34|✅ proved - incomplete|shostak|1.279|
|upper_triangulate_TCC35|✅ proved - incomplete|shostak|1.050|
|upper_triangulate_TCC36|✅ proved - incomplete|shostak|1.773|
|upper_triangulate_TCC37|✅ proved - incomplete|shostak|10.586|
|upper_triangulate_TCC38|✅ proved - incomplete|shostak|0.183|

## `matrix_det`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|Esr_TCC1|✅ proved - incomplete|shostak|0.140|
|entry_Esr|✅ proved - incomplete|shostak|0.091|
|rows_Esr|✅ proved - incomplete|shostak|0.050|
|columns_Esr|✅ proved - incomplete|shostak|0.089|
|det_Esr|✅ proved - incomplete|shostak|1.791|
|transpose_Esr|✅ proved - incomplete|shostak|0.180|
|mult_Esr_left_TCC1|✅ proved - complete|shostak|0.059|
|mult_Esr_left|✅ proved - incomplete|shostak|0.000|
|mult_Esr_Esr_inv|✅ proved - incomplete|shostak|0.980|
|Ers_TCC1|✅ proved - incomplete|shostak|1.212|
|entry_Ers|✅ proved - incomplete|shostak|0.237|
|rows_Ers|✅ proved - incomplete|shostak|0.160|
|columns_Ers|✅ proved - incomplete|shostak|0.197|
|mult_Ers_left|✅ proved - incomplete|shostak|2.556|
|transpose_Ers|✅ proved - incomplete|shostak|0.802|
|det_Ers|✅ proved - incomplete|shostak|1.684|
|mult_Ers_Ers_inv|✅ proved - incomplete|shostak|1.345|
|Easr_TCC1|✅ proved - incomplete|shostak|0.292|
|entry_Easr|✅ proved - incomplete|shostak|0.180|
|rows_Easr|✅ proved - incomplete|shostak|0.105|
|columns_Easr|✅ proved - incomplete|shostak|0.130|
|mult_Easr_left_TCC1|✅ proved - complete|shostak|0.151|
|mult_Easr_left|✅ proved - incomplete|shostak|1.721|
|transpose_Easr|✅ proved - incomplete|shostak|0.367|
|det_Easr|✅ proved - incomplete|shostak|3.541|
|mult_Easr_Easr_inv|✅ proved - incomplete|shostak|1.237|
|ZERO_TCC1|✅ proved - incomplete|shostak|0.151|
|prod_diag_TCC1|✅ proved - complete|shostak|0.060|
|prod_diag_TCC2|✅ proved - complete|shostak|0.050|
|prod_diag_TCC3|✅ proved - complete|shostak|0.066|
|prod_diag_remove_0_0_TCC1|✅ proved - incomplete|shostak|0.100|
|prod_diag_remove_0_0|✅ proved - incomplete|shostak|0.896|
|diagonal_upper_triangular|✅ proved - complete|shostak|0.020|
|det_upper_triangular|✅ proved - incomplete|shostak|1.216|
|det_upper_triangular_zero|✅ proved - incomplete|shostak|0.413|
|upper_triangular_mult|✅ proved - incomplete|shostak|1.538|
|lower_triangular_mult|✅ proved - incomplete|shostak|1.198|
|upper_triangular_Id|✅ proved - incomplete|shostak|0.090|
|lower_triangular_Id|✅ proved - incomplete|shostak|0.088|
|upper_triangular_Easr|✅ proved - incomplete|shostak|0.090|
|lower_triangular_Easr|✅ proved - incomplete|shostak|0.083|
|prod_mat_TCC1|✅ proved - complete|shostak|0.060|
|prod_mat_TCC2|✅ proved - complete|shostak|0.020|
|prod_mat_TCC3|✅ proved - incomplete|shostak|0.255|
|prod_mat_eq|✅ proved - incomplete|shostak|0.466|
|mult_prod_mat_TCC1|✅ proved - complete|shostak|0.130|
|mult_prod_mat|✅ proved - incomplete|shostak|1.268|
|prod_mat_expand_left_TCC1|✅ proved - complete|shostak|0.060|
|prod_mat_expand_left|✅ proved - incomplete|shostak|1.294|
|transpose_prod_mat_TCC1|✅ proved - complete|shostak|0.080|
|transpose_prod_mat_TCC2|✅ proved - incomplete|shostak|0.095|
|transpose_prod_mat|✅ proved - incomplete|shostak|1.130|
|mult_simple_prod_TCC1|✅ proved - incomplete|shostak|0.160|
|mult_simple_prod|✅ proved - incomplete|shostak|1.179|
|Id_simple_prod|✅ proved - incomplete|shostak|0.272|
|Esr_simple_prod|✅ proved - incomplete|shostak|0.437|
|Ers_simple_prod|✅ proved - incomplete|shostak|0.723|
|Easr_simple_prod|✅ proved - incomplete|shostak|0.402|
|det_simple_prod_1|✅ proved - incomplete|shostak|2.097|
|det_mult_simple_prod_left|✅ proved - incomplete|shostak|0.000|
|Easr_null|✅ proved - incomplete|shostak|0.100|
|transpose_simple_prod_TCC1|✅ proved - incomplete|shostak|0.050|
|transpose_simple_prod|✅ proved - incomplete|shostak|1.904|
|diagonal_simple_prod|✅ proved - incomplete|shostak|4.841|
|is_simple_prod_implic|✅ proved - incomplete|shostak|0.308|

## `matrix_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|matrix_2x2|✅ proved - incomplete|shostak|0.895|
|length_row|✅ proved - complete|shostak|0.109|
|length_nth_row|✅ proved - complete|shostak|0.040|
|columns_cdr_TCC1|✅ proved - complete|shostak|0.080|
|columns_cdr|✅ proved - complete|shostak|0.341|
|columns_cons|✅ proved - complete|shostak|0.153|
|access_col|✅ proved - complete|shostak|0.223|
|remove_TCC1|✅ proved - complete|shostak|0.184|
|remove_TCC2|✅ proved - complete|shostak|0.040|
|remove_TCC3|✅ proved - complete|shostak|0.040|
|remove_TCC4|✅ proved - incomplete|shostak|0.524|
|remove_posfullmatrix|✅ proved - incomplete|shostak|0.323|
|rows_remove|✅ proved - incomplete|shostak|0.232|
|columns_remove|✅ proved - incomplete|shostak|0.815|
|remove_remove_1_0|✅ proved - incomplete|shostak|2.456|
|remove_remove_1_0_0|✅ proved - incomplete|shostak|2.106|
|remove_remove_1_n|✅ proved - incomplete|shostak|2.530|
|entry_remove|✅ proved - incomplete|shostak|0.158|
|remove_Id_0_0_TCC1|✅ proved - complete|shostak|0.030|
|remove_Id_0_0|✅ proved - incomplete|shostak|0.719|
|remove_test|✅ proved - incomplete|shostak|0.040|
|det_TCC1|✅ proved - incomplete|shostak|2.239|
|det_test|✅ proved - incomplete|shostak|0.530|
|det_size_noteq|✅ proved - incomplete|shostak|0.140|
|swap_fun_test|✅ proved - complete|shostak|0.097|
|swap_TCC1|✅ proved - incomplete|shostak|0.405|
|entry_swap|✅ proved - incomplete|shostak|0.070|
|swap_test_TCC1|✅ proved - complete|shostak|0.050|
|swap_test|✅ proved - incomplete|shostak|0.071|
|remove_swap_1|✅ proved - incomplete|shostak|0.845|
|remove_swap_2_TCC1|✅ proved - incomplete|shostak|0.143|
|remove_swap_2_TCC2|✅ proved - complete|shostak|0.080|
|remove_swap_2_TCC3|✅ proved - complete|shostak|0.081|
|remove_swap_2|✅ proved - incomplete|shostak|1.475|
|swap_sym|✅ proved - incomplete|shostak|0.299|
|det_swap_0_1|✅ proved - incomplete|shostak|15.601|
|swap_swap_matrix|✅ proved - incomplete|shostak|0.422|
|swap_similar|✅ proved - incomplete|shostak|0.806|
|det_swap|✅ proved - incomplete|shostak|3.086|
|row_swap|✅ proved - incomplete|shostak|0.435|
|rows_swap|✅ proved - incomplete|shostak|0.060|
|columns_swap|✅ proved - incomplete|shostak|0.108|
|swap_id|✅ proved - incomplete|shostak|0.265|
|swap_eq|✅ proved - incomplete|shostak|0.198|
|det_rows_eq_0|✅ proved - incomplete|shostak|0.140|
|replace_row_TCC1|✅ proved - complete|shostak|0.276|
|replace_row_TCC2|✅ proved - complete|shostak|0.294|
|replace_row_TCC3|✅ proved - complete|shostak|0.114|
|replace_row_TCC4|✅ proved - complete|shostak|2.545|
|replace_row_TCC5|✅ proved - complete|shostak|0.100|
|replace_row_TCC6|✅ proved - complete|shostak|0.376|
|replace_row_TCC7|✅ proved - complete|shostak|0.090|
|replace_row_TCC8|✅ proved - complete|shostak|0.085|
|replace_row_TCC9|✅ proved - complete|shostak|2.669|
|entry_replace_row|✅ proved - complete|shostak|0.095|
|rows_replace_row|✅ proved - complete|shostak|0.090|
|columns_replace_row|✅ proved - complete|shostak|0.156|
|remove_replace_row|✅ proved - incomplete|shostak|0.870|
|swap_replace_row_TCC1|✅ proved - incomplete|shostak|0.150|
|swap_replace_row_TCC2|✅ proved - incomplete|shostak|0.145|
|swap_replace_row_TCC3|✅ proved - incomplete|shostak|0.155|
|swap_replace_row|✅ proved - incomplete|shostak|3.779|
|row_replace_row|✅ proved - complete|shostak|0.225|
|remove_replace_row_eq|✅ proved - incomplete|shostak|0.000|
|det_replace_row_sum_TCC1|✅ proved - complete|shostak|0.063|
|det_replace_row_sum_TCC2|✅ proved - complete|shostak|0.060|
|det_replace_row_sum|✅ proved - incomplete|shostak|13.218|
|det_replace_row_scal_TCC1|✅ proved - complete|shostak|0.071|
|det_replace_row_scal|✅ proved - incomplete|shostak|5.422|
|replace_row_id_TCC1|✅ proved - complete|shostak|0.040|
|replace_row_id|✅ proved - incomplete|shostak|0.294|
|det_replace_row_sum_scal_TCC1|✅ proved - complete|shostak|0.158|
|det_replace_row_sum_scal|✅ proved - incomplete|shostak|0.953|
|replace_row_sum_to_scal_TCC1|✅ proved - complete|shostak|0.103|
|replace_row_sum_to_scal_TCC2|✅ proved - complete|shostak|0.116|
|replace_row_sum_to_scal|✅ proved - incomplete|shostak|0.220|
|det_Id|✅ proved - incomplete|shostak|3.006|
|det_first_column_zero|✅ proved - incomplete|shostak|0.792|
|remove_transpose_TCC1|✅ proved - incomplete|shostak|0.092|
|remove_transpose|✅ proved - incomplete|shostak|0.712|

## `query_coeff`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|bump_one_ind_TCC1|✅ proved - complete|shostak|0.040|
|bump_one_ind_TCC2|✅ proved - complete|shostak|0.080|
|bump_one_ind_TCC3|✅ proved - complete|shostak|0.080|
|bump_one_ind_TCC4|✅ proved - complete|shostak|0.094|
|bump_one_ind_TCC5|✅ proved - complete|shostak|0.090|
|bump_one_ind_TCC6|✅ proved - complete|shostak|0.148|
|switch_one_entry_TCC1|✅ proved - complete|shostak|0.040|
|switch_one_entry_TCC2|✅ proved - complete|shostak|0.090|
|switch_one_entry_TCC3|✅ proved - complete|shostak|0.088|
|switch_one_entry_TCC4|✅ proved - complete|shostak|0.080|
|switch_one_entry_TCC5|✅ proved - complete|shostak|0.010|
|switch_one_entry_TCC6|✅ proved - complete|shostak|0.461|
|switch_is_with_TCC1|✅ proved - complete|shostak|0.040|
|switch_is_with|✅ proved - incomplete|shostak|2.989|
|bump_one_ind_list_TCC1|✅ proved - complete|shostak|0.040|
|bump_one_ind_list_TCC2|✅ proved - complete|shostak|0.270|
|bump_one_ind_list_TCC3|✅ proved - complete|shostak|0.069|
|bump_one_ind_list_TCC4|✅ proved - complete|shostak|0.120|
|bump_one_ind_list_TCC5|✅ proved - complete|shostak|0.120|
|bump_one_ind_list_TCC6|✅ proved - complete|shostak|0.102|
|bump_one_ind_list_TCC7|✅ proved - complete|shostak|0.040|
|bump_one_ind_list_TCC8|✅ proved - complete|shostak|0.140|
|bump_one_ind_list_TCC9|✅ proved - complete|shostak|0.179|
|bump_one_ind_list_TCC10|✅ proved - complete|shostak|0.130|
|bump_one_ind_list_TCC11|✅ proved - complete|shostak|0.070|
|bump_one_below|✅ proved - complete|shostak|0.309|
|bump_one_ind_lem|✅ proved - incomplete|shostak|1.022|
|bump_one_ind_lem2_TCC1|✅ proved - complete|shostak|0.010|
|bump_one_ind_lem2_TCC2|✅ proved - complete|shostak|0.090|
|bump_one_ind_lem2|✅ proved - incomplete|shostak|1.363|
|low2_TCC1|✅ proved - complete|shostak|0.119|
|low2_TCC2|✅ proved - complete|shostak|0.130|
|low2_lem|✅ proved - complete|shostak|0.318|
|bump_one_prep_TCC1|✅ proved - complete|shostak|0.010|
|bump_one_prep|✅ proved - incomplete|shostak|0.000|
|bump_one_prep2_TCC1|✅ proved - incomplete|shostak|0.070|
|bump_one_prep2_TCC2|✅ proved - incomplete|shostak|0.060|
|bump_one_prep2|✅ proved - incomplete|shostak|1.324|
|bump_one_TCC1|✅ proved - incomplete|shostak|0.010|
|switch_to_array|✅ proved - incomplete|shostak|1.075|
|bump_one_list_TCC1|✅ proved - incomplete|shostak|0.014|
|bump_one_list_TCC2|✅ proved - incomplete|shostak|0.849|
|is_nonzero_TCC1|✅ proved - complete|shostak|0.061|
|dot_tail_sum2plus_TCC1|✅ proved - complete|shostak|0.010|
|dot_tail_sum2plus_TCC2|✅ proved - incomplete|shostak|0.180|
|dot_tail_sum2plus_TCC3|✅ proved - incomplete|shostak|0.122|
|dot_tail_sum2plus_TCC4|✅ proved - incomplete|shostak|0.010|
|dot_tail_sum2plus_TCC5|✅ proved - incomplete|shostak|0.210|
|dot_tail_sum2plus_TCC6|✅ proved - incomplete|shostak|0.232|
|dot_tail_sum2plus_TCC7|✅ proved - incomplete|shostak|0.090|
|dot_tail_sum2plus_TCC8|✅ proved - incomplete|shostak|0.175|
|dot_tail_sum_lem|✅ proved - incomplete|shostak|1.223|
|is_nz_TCC1|✅ proved - complete|shostak|0.050|
|dot_tail_sum2_TCC1|✅ proved - incomplete|shostak|0.030|
|dot_tail_sum2_TCC2|✅ proved - incomplete|shostak|0.074|
|dot_tail_sum2_TCC3|✅ proved - incomplete|shostak|0.090|
|dot_tail_sum_lem2_TCC1|✅ proved - incomplete|shostak|0.020|
|dot_tail_sum_lem2_TCC2|✅ proved - incomplete|shostak|0.025|
|dot_tail_sum_lem2|✅ proved - incomplete|shostak|0.769|

## `tensor_product`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|not_null|✅ proved - complete|shostak|0.033|
|mod_int|✅ proved - complete|shostak|0.453|
|tensor_fun_TCC1|✅ proved - complete|shostak|0.130|
|tensor_fun_TCC2|✅ proved - complete|shostak|0.300|
|tensor_fun_TCC3|✅ proved - complete|shostak|0.030|
|tensor_fun_TCC4|✅ proved - complete|shostak|0.384|
|tensor_fun_TCC5|✅ proved - complete|shostak|0.040|
|tensor_fun_TCC6|✅ proved - complete|shostak|0.060|
|tensor_prod_TCC1|✅ proved - incomplete|shostak|0.687|
|entry_tensor_prod|✅ proved - incomplete|shostak|0.202|
|tensor_rows|✅ proved - incomplete|shostak|0.130|
|tensor_cols|✅ proved - incomplete|shostak|0.204|
|tensor_mult_entry_TCC1|✅ proved - complete|shostak|0.160|
|tensor_mult_entry_TCC2|✅ proved - complete|shostak|0.398|
|tensor_mult_entry_TCC3|✅ proved - complete|shostak|0.040|
|tensor_mult_entry_TCC4|✅ proved - complete|shostak|0.364|
|tensor_mult_entry_TCC5|✅ proved - complete|shostak|0.050|
|tensor_mult_entry_TCC6|✅ proved - complete|shostak|0.074|
|tensor_mult_entry|✅ proved - incomplete|shostak|7.349|
|invertible_tensor_TCC1|✅ proved - incomplete|shostak|0.070|
|invertible_tensor_TCC2|✅ proved - incomplete|shostak|0.063|
|invertible_tensor_TCC3|✅ proved - incomplete|shostak|0.020|
|invertible_tensor_TCC4|✅ proved - incomplete|shostak|0.020|
|invertible_tensor|✅ proved - incomplete|shostak|11.031|
|TQMat_TCC1|✅ proved - complete|shostak|1.741|
|TQMatInv_TCC1|✅ proved - complete|shostak|1.972|
|invTQ|✅ proved - incomplete|shostak|2.953|
|is_invTQ_TCC1|✅ proved - incomplete|shostak|2.990|
|is_invTQ|✅ proved - incomplete|shostak|2.478|
|tensor_power_TCC1|✅ proved - complete|shostak|0.062|
|tensor_power_TCC2|✅ proved - complete|shostak|0.020|
|invertible_tensor_power_TCC1|✅ proved - incomplete|shostak|0.429|
|invertible_tensor_power_TCC2|✅ proved - incomplete|shostak|0.030|
|invertible_tensor_power_TCC3|✅ proved - incomplete|shostak|1.158|
|invertible_tensor_power|✅ proved - incomplete|shostak|13.198|
|tensor_power_rows_TCC1|✅ proved - complete|shostak|0.020|
|tensor_power_rows|✅ proved - incomplete|shostak|0.362|
|tensor_power_columns_TCC1|✅ proved - complete|shostak|0.020|
|tensor_power_columns|✅ proved - incomplete|shostak|0.501|
|mod_eq_lem_alt_TCC1|✅ proved - complete|shostak|0.144|
|mod_eq_lem_alt|✅ proved - incomplete|shostak|0.486|
|tensor_prod_assoc|✅ proved - incomplete|shostak|0.140|
|power_assoc|✅ proved - incomplete|shostak|0.614|
|tensor_power_rows_alt|✅ proved - incomplete|shostak|0.020|
|tensor_power_columns_alt|✅ proved - incomplete|shostak|0.030|
|TQXL_TCC1|✅ proved - complete|shostak|0.050|
|TQXLinv_TCC1|✅ proved - complete|shostak|0.080|
|invTQXL|✅ proved - incomplete|shostak|0.270|
|is_invTQXL_TCC1|✅ proved - incomplete|shostak|0.003|
|is_invTQXL_TCC2|✅ proved - incomplete|shostak|0.010|
|is_invTQXL|✅ proved - incomplete|shostak|0.415|
|RowToMat_TCC1|✅ proved - incomplete|shostak|0.283|
|RtM|✅ proved - incomplete|shostak|0.020|
|RowToMat_rows|✅ proved - incomplete|shostak|0.063|
|RowToMat_columns|✅ proved - incomplete|shostak|0.170|
|RowToMat_entry|✅ proved - incomplete|shostak|0.473|
|RowToMat_tensor_prod_TCC1|✅ proved - incomplete|shostak|0.060|
|RowToMat_tensor_prod_TCC2|✅ proved - complete|shostak|0.123|
|RowToMat_tensor_prod_TCC3|✅ proved - complete|shostak|0.180|
|RowToMat_tensor_prod_TCC4|✅ proved - complete|shostak|0.034|
|RowToMat_tensor_prod|✅ proved - incomplete|shostak|8.839|
|RowTensor_TCC1|✅ proved - complete|shostak|0.038|
|RowTensor_TCC2|✅ proved - complete|shostak|0.030|
|RowTensor_TCC3|✅ proved - complete|shostak|0.080|
|RowTensors_same_TCC1|✅ proved - complete|shostak|0.100|
|RowTensors_same_TCC2|✅ proved - incomplete|shostak|0.036|
|RowTensors_same|✅ proved - incomplete|shostak|1.368|
|RowTensor_is_TensorRow_TCC1|✅ proved - incomplete|shostak|0.060|
|RowTensor_is_TensorRow|✅ proved - incomplete|shostak|1.843|
|RowTensor_is_TensorRow2_TCC1|✅ proved - incomplete|shostak|0.060|
|RowTensor_is_TensorRow2|✅ proved - incomplete|shostak|0.114|
|tensor_entry_TCC1|✅ proved - complete|shostak|0.150|
|tensor_entry_TCC2|✅ proved - incomplete|shostak|0.020|
|tensor_entry_TCC3|✅ proved - incomplete|shostak|0.169|
|tensor_entry_TCC4|✅ proved - incomplete|shostak|0.020|
|tensor_entry_TCC5|✅ proved - incomplete|shostak|0.179|
|tensor_entry|✅ proved - incomplete|shostak|4.811|
|tensor_entry_alt|✅ proved - incomplete|shostak|0.000|

## `linear_dependence`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|zerow_TCC1|✅ proved - incomplete|shostak|1.035|
|zerow_dim|✅ proved - incomplete|shostak|0.390|
|zecolumn_dim|✅ proved - incomplete|shostak|0.060|
|row2mat_TCC1|✅ proved - incomplete|shostak|0.628|
|row2mat_dim|✅ proved - incomplete|shostak|0.683|
|sum_rows_TCC1|✅ proved - incomplete|shostak|1.259|
|sum_rows_TCC2|✅ proved - complete|shostak|0.100|
|sum_rows_TCC3|✅ proved - incomplete|shostak|1.279|
|sum_rows_TCC4|✅ proved - complete|shostak|0.020|
|sum_rows_TCC5|✅ proved - complete|shostak|0.050|
|sum_rows_TCC6|✅ proved - complete|shostak|0.020|
|sum_rows_eq|✅ proved - incomplete|shostak|0.539|
|sum_rows_add_start_TCC1|✅ proved - incomplete|shostak|0.702|
|sum_rows_add_start|✅ proved - incomplete|shostak|2.554|
|subtract_same_scal|✅ proved - incomplete|shostak|1.053|
|sum_lem_prep_TCC1|✅ proved - complete|shostak|0.114|
|sum_lem_prep|✅ proved - incomplete|shostak|3.579|
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
