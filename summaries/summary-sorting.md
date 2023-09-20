# Summary for `sorting`
Run started at 1:12:19 9/20/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **649**   | **649**    | **649**    | **0**  | **6:0.245 s**   |
|top|0|0|0|0|0.000|
|quicksort|21|21|21|0|4.987|
|total_preorder|2|2|2|0|0.030|
|sorting|18|18|18|0|2.437|
|sorting_aux|70|70|70|0|11.324|
|mergesort|17|17|17|0|9.202|
|insertionsort|11|11|11|0|1.642|
|insertionsort_fs|12|12|12|0|5.567|
|sorting_seq|58|58|58|0|14.807|
|sorting_min|22|22|22|0|11.407|
|bubblesort|32|32|32|0|8.822|
|heapsort|58|58|58|0|2:16.612|
|maxsort|38|38|38|0|10.059|
|binsertionsort|40|40|40|0|12.750|
|radix_sort|20|20|20|0|1.277|
|radix_sort_nat|30|30|30|0|13.108|
|ford_johnson|163|163|163|0|1:39.095|
|firt_phase_ford_johnson|37|37|37|0|17.119|
## Detailed Summary 
## `top`
No formula declaration found.
## `quicksort`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|leq_elements_TCC1|✅ proved - complete|shostak|0.086|
|leq_elements_TCC2|✅ proved - complete|shostak|0.047|
|g_elements_TCC1|✅ proved - complete|shostak|0.055|
|g_elements_TCC2|✅ proved - complete|shostak|0.050|
|leq_elements_size|✅ proved - complete|shostak|0.171|
|g_elements_size|✅ proved - complete|shostak|0.168|
|same_occurrence_leq|✅ proved - complete|shostak|0.283|
|same_occurrence_g|✅ proved - complete|shostak|0.241|
|quick_sort_TCC1|✅ proved - complete|shostak|0.172|
|quick_sort_TCC2|✅ proved - complete|shostak|0.086|
|g_leq_car_size_TCC1|✅ proved - complete|shostak|0.020|
|g_leq_car_size|✅ proved - complete|shostak|0.273|
|quick_sort_size|✅ proved - complete|shostak|0.287|
|leq_elements_works|✅ proved - complete|shostak|0.146|
|g_elements_works|✅ proved - complete|shostak|0.163|
|quick_sort_is_permutation|✅ proved - complete|shostak|0.523|
|append_null_in_sorted_is_sorted|✅ proved - complete|shostak|0.068|
|cons_in_sorted_TCC1|✅ proved - complete|shostak|0.030|
|cons_in_sorted|✅ proved - complete|shostak|0.163|
|quick_sort_is_sorted|✅ proved - complete|shostak|1.937|
|quick_sort_works|✅ proved - complete|shostak|0.018|

## `total_preorder`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|total_preorder_is_preorder|✅ proved - complete|shostak|0.020|
|total_order_is_total_preorder|✅ proved - complete|shostak|0.010|

## `sorting`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|lt_le|✅ proved - complete|shostak|0.020|
|gt_not_le|✅ proved - complete|shostak|0.022|
|search_TCC1|✅ proved - complete|shostak|0.020|
|search_TCC2|✅ proved - complete|shostak|0.050|
|not_in_l_gives_lenght_l|✅ proved - complete|shostak|0.189|
|not_member_gives_length|✅ proved - complete|shostak|0.030|
|search_works_TCC1|✅ proved - complete|shostak|0.158|
|search_works|✅ proved - complete|shostak|0.162|
|search_min_index|✅ proved - complete|shostak|0.222|
|search_in_rev_max_index|✅ proved - complete|shostak|0.127|
|search_in_append_of_lists_key_in_the_first|✅ proved - complete|shostak|0.292|
|search_in_append_of_lists_key_not_member_of_the_first|✅ proved - complete|shostak|0.237|
|search_in_append_of_lists_with_searched_key|✅ proved - complete|shostak|0.220|
|is_sorted?_TCC1|✅ proved - complete|shostak|0.070|
|is_sorted_implies_monotone_TCC1|✅ proved - complete|shostak|0.020|
|is_sorted_implies_monotone|✅ proved - complete|shostak|0.451|
|cdr_of_sorted_is_sorted_TCC1|✅ proved - complete|shostak|0.040|
|cdr_of_sorted_is_sorted|✅ proved - complete|shostak|0.107|

## `sorting_aux`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|elim_list_TCC1|✅ proved - complete|shostak|0.020|
|elim_list_TCC2|✅ proved - complete|shostak|0.036|
|elim_list_TCC3|✅ proved - complete|shostak|0.040|
|elim_list_TCC4|✅ proved - complete|shostak|0.020|
|elim_list_length_TCC1|✅ proved - complete|shostak|0.020|
|elim_list_length|✅ proved - complete|shostak|0.190|
|preservation_contents_TCC1|✅ proved - complete|shostak|0.020|
|preservation_contents|✅ proved - complete|shostak|0.094|
|nth_implies_member|✅ proved - complete|shostak|0.190|
|member_implies_exists_nth|✅ proved - complete|shostak|0.289|
|nth_of_list_is_nth_append_list_TCC1|✅ proved - complete|shostak|0.057|
|nth_of_list_is_nth_append_list|✅ proved - complete|shostak|0.202|
|nth_of_cons_TCC1|✅ proved - complete|shostak|0.037|
|nth_of_cons_TCC2|✅ proved - complete|shostak|0.020|
|nth_of_cons_TCC3|✅ proved - complete|shostak|0.060|
|nth_of_cons|✅ proved - complete|shostak|0.037|
|nth_of_append_TCC1|✅ proved - complete|shostak|0.050|
|nth_of_append_TCC2|✅ proved - complete|shostak|0.067|
|nth_of_append|✅ proved - complete|shostak|0.715|
|null_rev_null|✅ proved - complete|shostak|0.030|
|nth_member_TCC1|✅ proved - complete|shostak|0.020|
|nth_member|✅ proved - complete|shostak|0.183|
|car_rev_TCC1|✅ proved - complete|shostak|0.030|
|car_rev_TCC2|✅ proved - complete|shostak|0.065|
|car_rev_TCC3|✅ proved - complete|shostak|0.040|
|car_rev|✅ proved - complete|shostak|0.085|
|nth_rev_zero_TCC1|✅ proved - complete|shostak|0.050|
|nth_rev_zero_TCC2|✅ proved - complete|shostak|0.117|
|nth_rev_zero|✅ proved - complete|shostak|0.674|
|nth_rev_last_TCC1|✅ proved - complete|shostak|0.030|
|nth_rev_last_TCC2|✅ proved - complete|shostak|0.080|
|nth_rev_last|✅ proved - complete|shostak|0.088|
|nth_append_TCC1|✅ proved - complete|shostak|0.116|
|nth_append_TCC2|✅ proved - complete|shostak|0.020|
|nth_append|✅ proved - complete|shostak|0.188|
|nth_rev_TCC1|✅ proved - complete|shostak|0.124|
|nth_rev|✅ proved - complete|shostak|0.652|
|occurrences_TCC1|✅ proved - complete|shostak|0.030|
|occurrences_TCC2|✅ proved - complete|shostak|0.035|
|occurrences_TCC3|✅ proved - complete|shostak|0.050|
|occurrences_of_nth_element|✅ proved - complete|shostak|0.210|
|occurrences_of_app|✅ proved - complete|shostak|0.291|
|cons_of_perm_is_permutation|✅ proved - complete|shostak|0.027|
|ocurrence_list_has_element|✅ proved - complete|shostak|0.194|
|no_occurrence_implies|✅ proved - complete|shostak|0.196|
|member_implies_pos_occurrences|✅ proved - complete|shostak|0.133|
|occurrences_implies_member|✅ proved - complete|shostak|0.117|
|permutations_preserve_contents|✅ proved - complete|shostak|0.047|
|permutations_is_commutative|✅ proved - complete|shostak|0.030|
|permutations_is_transitive|✅ proved - complete|shostak|0.037|
|cons_elim_is_permutation|✅ proved - complete|shostak|0.299|
|same_occurrences_same_length|✅ proved - complete|shostak|0.287|
|permutations_is_ext_reflexive_TCC1|✅ proved - complete|shostak|0.020|
|permutations_is_ext_reflexive|✅ proved - complete|shostak|0.000|
|suffix_TCC1|✅ proved - complete|shostak|0.060|
|suffix_TCC2|✅ proved - complete|shostak|0.138|
|suffix_TCC3|✅ proved - complete|shostak|0.117|
|app_prefix_suffix|✅ proved - complete|shostak|0.204|
|length_suffix|✅ proved - complete|shostak|0.266|
|length_prefix|✅ proved - complete|shostak|0.216|
|contents_suffix_TCC1|✅ proved - complete|shostak|0.020|
|contents_suffix_TCC2|✅ proved - complete|shostak|0.087|
|contents_suffix_TCC3|✅ proved - complete|shostak|0.020|
|contents_suffix|✅ proved - complete|shostak|2.101|
|contents_prefix_TCC1|✅ proved - complete|shostak|0.060|
|contents_prefix_TCC2|✅ proved - complete|shostak|0.010|
|contents_prefix|✅ proved - complete|shostak|0.990|
|permutations_of_appends|✅ proved - complete|shostak|0.090|
|permutations_of_app_suff|✅ proved - complete|shostak|0.104|
|permutations_of_app_pref|✅ proved - complete|shostak|0.082|

## `mergesort`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|merge_TCC1|✅ proved - complete|shostak|0.030|
|merge_TCC2|✅ proved - complete|shostak|0.026|
|merge_TCC3|✅ proved - complete|shostak|0.110|
|merge_TCC4|✅ proved - complete|shostak|0.107|
|merge_size|✅ proved - complete|shostak|0.282|
|merge_occurrence|✅ proved - complete|shostak|0.311|
|merge_is_permutation|✅ proved - complete|shostak|0.057|
|merge_of_sorted_is_sorted|✅ proved - complete|shostak|0.624|
|merge_sort_TCC1|✅ proved - complete|shostak|0.129|
|merge_sort_TCC2|✅ proved - complete|shostak|0.080|
|merge_sort_TCC3|✅ proved - complete|shostak|0.080|
|merge_sort_size|✅ proved - complete|shostak|0.231|
|merge_sort_is_sorted|✅ proved - complete|shostak|0.296|
|merge_sort_is_permutation|✅ proved - complete|shostak|0.362|
|merge_sort_works|✅ proved - complete|shostak|0.020|
|merge_is_conservative|✅ proved - complete|shostak|4.119|
|merge_sort_is_conservative|✅ proved - complete|shostak|2.338|

## `insertionsort`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|insert_TCC1|✅ proved - complete|shostak|0.020|
|insert_TCC2|✅ proved - complete|shostak|0.050|
|occ_in_insert|✅ proved - complete|shostak|0.501|
|insertion_sort_TCC1|✅ proved - complete|shostak|0.020|
|insertion_sort_TCC2|✅ proved - complete|shostak|0.050|
|insert_size|✅ proved - complete|shostak|0.152|
|insert_in_sorted_preserves_sort|✅ proved - complete|shostak|0.459|
|insertionsort_is_sorted|✅ proved - complete|shostak|0.100|
|ins_and_cons_in_perm_is_perm|✅ proved - complete|shostak|0.090|
|insertion_sort_is_permutations|✅ proved - complete|shostak|0.180|
|insertion_sort_works|✅ proved - complete|shostak|0.020|

## `insertionsort_fs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|insertion_TCC1|✅ proved - complete|shostak|0.020|
|insertion_TCC2|✅ proved - incomplete|shostak|0.122|
|length_insertion|✅ proved - incomplete|shostak|0.226|
|occ_in_insert|✅ proved - incomplete|shostak|1.958|
|fs_insertion_sort_TCC1|✅ proved - complete|shostak|0.020|
|fs_insertion_sort_TCC2|✅ proved - incomplete|shostak|0.093|
|fs_insert_size|✅ proved - incomplete|shostak|0.210|
|fs_insert_in_sorted_preserves_sort|✅ proved - incomplete|shostak|1.493|
|fs_insertionsort_is_sorted|✅ proved - incomplete|shostak|0.264|
|fs_ins_and_add_in_perm_is_perm|✅ proved - incomplete|shostak|0.970|
|fs_insertion_sort_is_permutations|✅ proved - incomplete|shostak|0.171|
|fs_insertion_sort_works|✅ proved - incomplete|shostak|0.020|

## `sorting_seq`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|occurrences_TCC1|✅ proved - complete|shostak|0.025|
|occurrences_TCC2|✅ proved - complete|shostak|0.030|
|occurrences_TCC3|✅ proved - complete|shostak|0.100|
|occurrences_TCC4|✅ proved - complete|shostak|0.030|
|occurrences_TCC5|✅ proved - complete|shostak|0.105|
|finseq2list_rec_equivalence_TCC1|✅ proved - complete|shostak|0.020|
|finseq2list_rec_equivalence_TCC2|✅ proved - complete|shostak|0.082|
|finseq2list_rec_equivalence_TCC3|✅ proved - complete|shostak|0.020|
|finseq2list_rec_equivalence|✅ proved - complete|shostak|0.243|
|finseq2lists_for_suffixes_TCC1|✅ proved - complete|shostak|0.020|
|finseq2lists_for_suffixes_TCC2|✅ proved - complete|shostak|0.070|
|finseq2lists_for_suffixes_TCC3|✅ proved - complete|shostak|0.020|
|finseq2lists_for_suffixes|✅ proved - complete|shostak|0.304|
|subseq_is_cdr_TCC1|✅ proved - complete|shostak|0.010|
|subseq_is_cdr_TCC2|✅ proved - complete|shostak|0.040|
|subseq_is_cdr|✅ proved - complete|shostak|0.165|
|same_occ_fseq_list|✅ proved - complete|shostak|0.421|
|perm_fsq_iff_perm_list|✅ proved - complete|shostak|0.066|
|permutations_equiv|✅ proved - complete|shostak|0.053|
|psorted_TCC1|✅ proved - complete|shostak|0.090|
|is_sorted?_TCC1|✅ proved - complete|shostak|0.055|
|is_sorted_equiv|✅ proved - complete|shostak|0.327|
|ind_parent_TCC1|✅ proved - complete|shostak|0.050|
|left_child_TCC1|✅ proved - complete|shostak|0.120|
|right_child_TCC1|✅ proved - complete|shostak|0.116|
|is_p_heap_TCC1|✅ proved - complete|shostak|0.020|
|is_p_heap_TCC2|✅ proved - complete|shostak|0.010|
|is_p_heap_TCC3|✅ proved - complete|shostak|0.162|
|is_p_heap_TCC4|✅ proved - complete|shostak|0.171|
|is_p_heap_TCC5|✅ proved - complete|shostak|0.181|
|is_heap_TCC1|✅ proved - complete|shostak|0.020|
|is_heap_TCC2|✅ proved - complete|shostak|0.029|
|root_is_greatest_in_p_heap_TCC1|✅ proved - complete|shostak|0.010|
|root_is_greatest_in_p_heap_TCC2|✅ proved - complete|shostak|0.020|
|root_is_greatest_in_p_heap_TCC3|✅ proved - complete|shostak|0.080|
|root_is_greatest_in_p_heap|✅ proved - complete|shostak|0.695|
|root_is_greatest_in_heap_TCC1|✅ proved - complete|shostak|0.070|
|root_is_greatest_in_heap|✅ proved - complete|shostak|0.051|
|parent_TCC1|✅ proved - complete|shostak|0.063|
|ind_gc_TCC1|✅ proved - complete|shostak|0.020|
|ind_gc_TCC2|✅ proved - complete|shostak|0.160|
|ind_gc_TCC3|✅ proved - complete|shostak|0.179|
|swap_of_p_heap_TCC1|✅ proved - complete|shostak|0.080|
|swap_of_p_heap|✅ proved - complete|shostak|0.040|
|swap_commutes|✅ proved - complete|shostak|0.075|
|occ_replaces_at_j_TCC1|✅ proved - complete|shostak|0.056|
|occ_replaces_at_j|✅ proved - complete|shostak|1.343|
|swap_occ_at_0_TCC1|✅ proved - complete|shostak|0.020|
|swap_occ_at_0_TCC2|✅ proved - complete|shostak|0.020|
|swap_occ_at_0|✅ proved - complete|shostak|1.625|
|swap_permutes|✅ proved - complete|shostak|1.443|
|swap_of_heap_TCC1|✅ proved - complete|shostak|0.080|
|swap_of_heap_TCC2|✅ proved - complete|shostak|0.080|
|swap_of_heap|✅ proved - complete|shostak|0.145|
|occ_in_insert|✅ proved - incomplete|shostak|2.672|
|occ_in_delete|✅ proved - incomplete|shostak|2.458|
|delete_insert_same_permutes_TCC1|✅ proved - incomplete|shostak|0.040|
|delete_insert_same_permutes|✅ proved - incomplete|shostak|0.107|

## `sorting_min`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|switching_min_TCC1|✅ proved - complete|shostak|0.047|
|switching_min_TCC2|✅ proved - complete|shostak|0.080|
|switching_min_TCC3|✅ proved - complete|shostak|0.245|
|switching_min_TCC4|✅ proved - complete|shostak|0.070|
|reverse_is_permutation|✅ proved - complete|shostak|0.255|
|swch_min_preserves_length|✅ proved - complete|shostak|0.474|
|swch_min_preserves_contents|✅ proved - complete|shostak|0.638|
|swch_min_is_permutation|✅ proved - complete|shostak|0.546|
|last_swch_min_element_is_least_TCC1|✅ proved - complete|shostak|0.090|
|last_swch_min_element_is_least_TCC2|✅ proved - complete|shostak|0.043|
|last_swch_min_element_is_least|✅ proved - complete|shostak|1.595|
|sorting_min_TCC1|✅ proved - complete|shostak|0.061|
|sorting_min_TCC2|✅ proved - complete|shostak|0.380|
|sorting_min_preserves_length|✅ proved - complete|shostak|1.001|
|sorting_min_is_permutations|✅ proved - complete|shostak|1.285|
|swch_min_moves_min_to_end_TCC1|✅ proved - complete|shostak|0.120|
|swch_min_moves_min_to_end_TCC2|✅ proved - complete|shostak|0.125|
|swch_min_moves_min_to_end|✅ proved - complete|shostak|0.167|
|sorting_min_moves_min_to_begining_TCC1|✅ proved - complete|shostak|0.084|
|sorting_min_moves_min_to_begining_TCC2|✅ proved - complete|shostak|0.110|
|sorting_min_moves_min_to_begining|✅ proved - complete|shostak|0.631|
|sorting_min_work|✅ proved - complete|shostak|3.360|

## `bubblesort`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|bubbling_TCC1|✅ proved - complete|shostak|0.046|
|bubbling_TCC2|✅ proved - complete|shostak|0.060|
|bubbling_TCC3|✅ proved - complete|shostak|0.126|
|bubbling_TCC4|✅ proved - complete|shostak|0.030|
|bubbling_TCC5|✅ proved - complete|shostak|0.105|
|bubbling_TCC6|✅ proved - complete|shostak|0.020|
|bubbling_preserves_length|✅ proved - complete|shostak|0.371|
|bubbling_preserves_suffix_TCC1|✅ proved - complete|shostak|0.056|
|bubbling_preserves_suffix|✅ proved - complete|shostak|0.748|
|bubblesort_aux_TCC1|✅ proved - complete|shostak|0.070|
|bubblesort_aux_TCC2|✅ proved - complete|shostak|0.014|
|bubblesort_aux_preserves_length|✅ proved - complete|shostak|0.150|
|bubblesort_TCC1|✅ proved - complete|shostak|0.053|
|bubbling_preseves_contents|✅ proved - complete|shostak|1.049|
|bubbling_preserves_prefix_TCC1|✅ proved - complete|shostak|0.020|
|bubbling_preserves_prefix_TCC2|✅ proved - complete|shostak|0.100|
|bubbling_preserves_prefix|✅ proved - complete|shostak|1.446|
|bubbling_bubbles_TCC1|✅ proved - complete|shostak|0.070|
|bubbling_bubbles_TCC2|✅ proved - complete|shostak|0.052|
|bubbling_bubbles|✅ proved - complete|shostak|1.036|
|bubblesort_aux_preserves_suffix_TCC1|✅ proved - complete|shostak|0.058|
|bubblesort_aux_preserves_suffix|✅ proved - complete|shostak|0.522|
|bubblesort_aux_is_permutation|✅ proved - complete|shostak|0.179|
|bubblesort_aux_preserves_prefix_TCC1|✅ proved - complete|shostak|0.113|
|bubblesort_aux_preserves_prefix_TCC2|✅ proved - complete|shostak|0.030|
|bubblesort_aux_preserves_prefix|✅ proved - complete|shostak|0.685|
|bubblesort_is_permutation|✅ proved - complete|shostak|0.080|
|bubblesort_aux_sorts_prefix_TCC1|✅ proved - complete|shostak|0.061|
|bubblesort_aux_sorts_prefix_TCC2|✅ proved - complete|shostak|0.100|
|bubblesort_aux_sorts_prefix|✅ proved - complete|shostak|1.130|
|bubblesort_is_sorted|✅ proved - complete|shostak|0.222|
|bubblesort_works|✅ proved - complete|shostak|0.020|

## `heapsort`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sink_TCC1|✅ proved - complete|shostak|0.030|
|sink_TCC2|✅ proved - complete|shostak|0.573|
|sink_TCC3|✅ proved - complete|shostak|0.404|
|sink_TCC4|✅ proved - complete|shostak|0.411|
|sink_TCC5|✅ proved - complete|shostak|0.418|
|sink_TCC6|✅ proved - complete|shostak|0.261|
|sink_permutes_TCC1|✅ proved - complete|shostak|0.020|
|sink_permutes|✅ proved - complete|shostak|0.000|
|sink_length|✅ proved - complete|shostak|1.370|
|sink_stable_TCC1|✅ proved - complete|shostak|0.032|
|sink_stable|✅ proved - complete|shostak|6.217|
|sink_in_stable_TCC1|✅ proved - complete|shostak|0.030|
|sink_in_stable|✅ proved - complete|shostak|3.108|
|sink_interval_children_stable_TCC1|✅ proved - complete|shostak|0.220|
|sink_interval_children_stable_TCC2|✅ proved - complete|shostak|0.415|
|sink_interval_children_stable_TCC3|✅ proved - complete|shostak|0.581|
|sink_interval_children_stable_TCC4|✅ proved - complete|shostak|0.407|
|sink_interval_children_stable_TCC5|✅ proved - complete|shostak|0.769|
|sink_interval_children_stable_TCC6|✅ proved - complete|shostak|0.410|
|sink_interval_children_stable_TCC7|✅ proved - complete|shostak|0.489|
|sink_interval_children_stable|✅ proved - complete|shostak|8.169|
|is_heap_from_to_TCC1|✅ proved - complete|shostak|0.020|
|is_heap_from_to_TCC2|✅ proved - complete|shostak|0.020|
|is_heap_from_to_TCC3|✅ proved - complete|shostak|0.299|
|is_heap_from_to_TCC4|✅ proved - complete|shostak|0.293|
|is_heap_from_to_TCC5|✅ proved - complete|shostak|0.240|
|is_heap_from_to_TCC6|✅ proved - complete|shostak|0.237|
|is_heap_from_to|✅ proved - complete|shostak|1:23.701|
|heapify_TCC1|✅ proved - complete|shostak|0.060|
|heapify_TCC2|✅ proved - complete|shostak|0.065|
|heapify_TCC3|✅ proved - complete|shostak|0.090|
|heapify_TCC4|✅ proved - complete|shostak|0.040|
|heapify_TCC5|✅ proved - complete|shostak|0.056|
|heapify_TCC6|✅ proved - complete|shostak|0.070|
|heapify_length_TCC1|✅ proved - complete|shostak|0.030|
|heapify_length|✅ proved - complete|shostak|1.715|
|heapify_permutes|✅ proved - complete|shostak|1.398|
|heapify_heapifies_TCC1|✅ proved - complete|shostak|0.040|
|heapify_heapifies|✅ proved - complete|shostak|5.385|
|heapsort_aux_TCC1|✅ proved - complete|shostak|0.020|
|heapsort_aux_TCC2|✅ proved - complete|shostak|0.025|
|heapsort_aux_TCC3|✅ proved - complete|shostak|0.040|
|heapsort_aux_TCC4|✅ proved - complete|shostak|0.070|
|heapsort_aux_TCC5|✅ proved - complete|shostak|0.010|
|heapsort_aux_TCC6|✅ proved - complete|shostak|0.285|
|heapsort_aux_TCC7|✅ proved - complete|shostak|0.010|
|heapsort_aux_permutes|✅ proved - complete|shostak|0.719|
|heapsort_aux_length|✅ proved - complete|shostak|0.000|
|heapsort_aux_psorts_TCC1|✅ proved - complete|shostak|0.020|
|heapsort_aux_psorts_TCC2|✅ proved - complete|shostak|0.020|
|heapsort_aux_psorts_TCC3|✅ proved - complete|shostak|0.080|
|heapsort_aux_psorts_TCC4|✅ proved - complete|shostak|0.070|
|heapsort_aux_psorts_TCC5|✅ proved - complete|shostak|0.271|
|heapsort_aux_psorts_TCC6|✅ proved - complete|shostak|0.030|
|heapsort_aux_psorts|✅ proved - complete|shostak|11.185|
|heapsort_TCC1|✅ proved - complete|shostak|0.090|
|heapsort_TCC2|✅ proved - complete|shostak|0.053|
|heapsort_works|✅ proved - complete|shostak|5.521|

## `maxsort`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|move_max_TCC1|✅ proved - complete|shostak|0.110|
|move_max_TCC2|✅ proved - complete|shostak|0.020|
|move_max_TCC3|✅ proved - complete|shostak|0.020|
|move_max_TCC4|✅ proved - complete|shostak|0.020|
|move_max_TCC5|✅ proved - complete|shostak|0.020|
|move_max_TCC6|✅ proved - complete|shostak|0.061|
|move_max_TCC7|✅ proved - complete|shostak|0.080|
|move_max_TCC8|✅ proved - complete|shostak|0.040|
|move_max_TCC9|✅ proved - complete|shostak|0.084|
|move_max_TCC10|✅ proved - complete|shostak|0.030|
|move_max_length_TCC1|✅ proved - complete|shostak|0.020|
|move_max_length|✅ proved - complete|shostak|0.516|
|move_max_preserves_out_TCC1|✅ proved - complete|shostak|0.032|
|move_max_preserves_out|✅ proved - complete|shostak|1.295|
|move_max_preserves_TCC1|✅ proved - complete|shostak|0.060|
|move_max_preserves|✅ proved - complete|shostak|1.695|
|move_max_preserves2_TCC1|✅ proved - complete|shostak|0.020|
|move_max_preserves2_TCC2|✅ proved - complete|shostak|0.028|
|move_max_preserves2|✅ proved - complete|shostak|1.978|
|move_max_works_TCC1|✅ proved - complete|shostak|0.030|
|move_max_works_TCC2|✅ proved - complete|shostak|0.033|
|move_max_works|✅ proved - complete|shostak|0.000|
|move_max_permutes|✅ proved - complete|shostak|0.623|
|maxsort_aux_TCC1|✅ proved - complete|shostak|0.030|
|maxsort_aux_TCC2|✅ proved - complete|shostak|0.035|
|maxsort_aux_TCC3|✅ proved - complete|shostak|0.020|
|maxsort_aux_length|✅ proved - complete|shostak|0.171|
|maxsort_aux_psorts_TCC1|✅ proved - complete|shostak|0.010|
|maxsort_aux_psorts_TCC2|✅ proved - complete|shostak|0.020|
|maxsort_aux_psorts_TCC3|✅ proved - complete|shostak|0.069|
|maxsort_aux_psorts_TCC4|✅ proved - complete|shostak|0.047|
|maxsort_aux_psorts|✅ proved - complete|shostak|1.361|
|maxsort_aux_permutes_TCC1|✅ proved - complete|shostak|0.021|
|maxsort_aux_permutes|✅ proved - complete|shostak|0.381|
|maxsort_TCC1|✅ proved - complete|shostak|0.030|
|maxsort_sorts|✅ proved - complete|shostak|0.647|
|maxsort_permutes|✅ proved - complete|shostak|0.382|
|maxsort_works|✅ proved - complete|shostak|0.020|

## `binsertionsort`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|bin_search_TCC1|✅ proved - complete|shostak|0.020|
|bin_search_TCC2|✅ proved - complete|shostak|0.030|
|bin_search_TCC3|✅ proved - complete|shostak|0.023|
|bin_search_TCC4|✅ proved - complete|shostak|0.060|
|bin_search_TCC5|✅ proved - complete|shostak|0.070|
|bin_search_TCC6|✅ proved - complete|shostak|0.072|
|bin_search_TCC7|✅ proved - complete|shostak|0.309|
|bin_search_TCC8|✅ proved - complete|shostak|0.084|
|bin_search_TCC9|✅ proved - complete|shostak|0.436|
|bin_search_TCC10|✅ proved - complete|shostak|0.262|
|bin_search_TCC11|✅ proved - complete|shostak|0.253|
|bin_search_TCC12|✅ proved - complete|shostak|0.080|
|binsertionsort_aux_TCC1|✅ proved - complete|shostak|0.020|
|binsertionsort_aux_TCC2|✅ proved - incomplete|shostak|0.046|
|binsertionsort_aux_TCC3|✅ proved - incomplete|shostak|0.193|
|binsertionsort_aux_TCC4|✅ proved - incomplete|shostak|0.221|
|binsertionsort_aux_TCC5|✅ proved - incomplete|shostak|0.106|
|binsertionsort_aux_TCC6|✅ proved - incomplete|shostak|0.201|
|binsertionsort_aux_TCC7|✅ proved - incomplete|shostak|0.250|
|binsertionsort_aux_TCC8|✅ proved - complete|shostak|0.020|
|binsertionsort_aux_TCC9|✅ proved - complete|shostak|0.030|
|binsertionsort_TCC1|✅ proved - complete|shostak|0.030|
|binsertionsort_TCC2|✅ proved - complete|shostak|0.020|
|b_search_bound|✅ proved - complete|shostak|0.780|
|b_search_preserves_sorting_TCC1|✅ proved - complete|shostak|0.060|
|b_search_preserves_sorting_TCC2|✅ proved - complete|shostak|0.106|
|b_search_preserves_sorting_TCC3|✅ proved - complete|shostak|0.112|
|b_search_preserves_sorting|✅ proved - incomplete|shostak|3.427|
|b_search_translation_TCC1|✅ proved - complete|shostak|0.020|
|b_search_translation_TCC2|✅ proved - complete|shostak|0.020|
|b_search_translation_TCC3|✅ proved - complete|shostak|0.010|
|b_search_translation_TCC4|✅ proved - complete|shostak|0.093|
|b_search_translation_TCC5|✅ proved - complete|shostak|0.070|
|b_search_translation|✅ proved - complete|shostak|2.632|
|bs_aux_perm|✅ proved - incomplete|shostak|1.083|
|bs_aux_sorts_TCC1|✅ proved - complete|shostak|0.020|
|bs_aux_sorts|✅ proved - incomplete|shostak|1.231|
|binsertion_permutation|✅ proved - incomplete|shostak|0.029|
|binsertion_sorts|✅ proved - incomplete|shostak|0.202|
|binsertionsort_works|✅ proved - incomplete|shostak|0.019|

## `radix_sort`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|radixsort_aux_TCC1|✅ proved - complete|shostak|0.020|
|radixsort_aux_TCC2|✅ proved - complete|shostak|0.020|
|radixsort_aux_TCC3|✅ proved - complete|shostak|0.050|
|radixsort_aux_TCC4|✅ proved - complete|shostak|0.020|
|radixsort_TCC1|✅ proved - complete|shostak|0.020|
|radixsort_permutes|✅ proved - complete|shostak|0.149|
|lex_TCC1|✅ proved - complete|shostak|0.030|
|lex_TCC2|✅ proved - complete|shostak|0.045|
|lex_total_preorder|✅ proved - complete|shostak|0.313|
|merge_sort_lex_sorted_TCC1|✅ proved - complete|shostak|0.010|
|merge_sort_lex_sorted_TCC2|✅ proved - complete|shostak|0.020|
|merge_sort_lex_sorted_TCC3|✅ proved - complete|shostak|0.020|
|merge_sort_lex_sorted_TCC4|✅ proved - complete|shostak|0.046|
|merge_sort_lex_sorted|✅ proved - complete|shostak|0.262|
|radix_sort_is_sorted_TCC1|✅ proved - complete|shostak|0.020|
|radix_sort_is_sorted_TCC2|✅ proved - complete|shostak|0.010|
|radix_sort_is_sorted_TCC3|✅ proved - complete|shostak|0.010|
|radix_sort_is_sorted_TCC4|✅ proved - complete|shostak|0.116|
|radix_sort_is_sorted_TCC5|✅ proved - complete|shostak|0.050|
|radixsort_sorts|✅ proved - complete|shostak|0.046|

## `radix_sort_nat`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|d_nth_TCC1|✅ proved - complete|shostak|0.030|
|d_nth_TCC2|✅ proved - complete|shostak|0.010|
|n_digits_TCC1|✅ proved - incomplete|shostak|0.185|
|max_digits_TCC1|✅ proved - complete|shostak|0.060|
|max_digits_TCC2|✅ proved - complete|shostak|0.040|
|max_digits_TCC3|✅ proved - complete|shostak|0.094|
|max_digits_TCC4|✅ proved - complete|shostak|0.164|
|max_digits_works_TCC1|✅ proved - complete|shostak|0.010|
|max_digits_works|✅ proved - incomplete|shostak|0.561|
|d_nth_zero|✅ proved - incomplete|shostak|0.224|
|d_nth_digits_TCC1|✅ proved - incomplete|shostak|0.020|
|d_nth_digits|✅ proved - incomplete|shostak|1.056|
|d_exp_dec|✅ proved - incomplete|shostak|0.972|
|d_nth_rem|✅ proved - incomplete|shostak|4.609|
|n_digits_power|✅ proved - incomplete|shostak|0.279|
|d_nth_nmod_TCC1|✅ proved - complete|shostak|0.020|
|d_nth_nmod|✅ proved - incomplete|shostak|0.266|
|n_digits_monotone|✅ proved - incomplete|shostak|0.311|
|n_digits_ten_power_TCC1|✅ proved - complete|shostak|0.114|
|n_digits_ten_power|✅ proved - incomplete|shostak|0.435|
|n_digits_nmod_leq|✅ proved - incomplete|shostak|0.095|
|leq_N_TCC1|✅ proved - incomplete|shostak|0.076|
|lex_preserves_TCC1|✅ proved - complete|shostak|0.010|
|lex_preserves|✅ proved - incomplete|shostak|0.243|
|lex_nat_works_aux_TCC1|✅ proved - incomplete|shostak|0.020|
|lex_nat_works_aux|✅ proved - incomplete|shostak|2.327|
|lex_nat_works_TCC1|✅ proved - incomplete|shostak|0.020|
|lex_nat_works|✅ proved - incomplete|shostak|0.082|
|radixsort_nat_works_TCC1|✅ proved - incomplete|shostak|0.070|
|radixsort_nat_works|✅ proved - incomplete|shostak|0.705|

## `ford_johnson`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|t_TCC1|✅ proved - complete|shostak|1.073|
|t_is_increasing|✅ proved - complete|shostak|1.174|
|t_is_unbounded|✅ proved - complete|shostak|0.303|
|t_qinversible_TCC1|✅ proved - complete|shostak|0.011|
|t_qinversible|✅ proved - complete|shostak|0.349|
|maxk_TCC1|✅ proved - complete|shostak|0.020|
|maxk_TCC2|✅ proved - complete|shostak|0.314|
|maxk_correction|✅ proved - complete|shostak|0.125|
|upToOneIsCorrectAll_TCC1|✅ proved - complete|shostak|0.040|
|upToOneIsCorrectAll_TCC2|✅ proved - incomplete|shostak|0.112|
|upToOneIsCorrectAll_TCC3|✅ proved - complete|shostak|0.030|
|upToOneIsCorrectAll|✅ proved - incomplete|shostak|0.162|
|upToOnePreservesIndx_TCC1|✅ proved - incomplete|shostak|0.104|
|upToOnePreservesIndx_TCC2|✅ proved - complete|shostak|0.060|
|upToOnePreservesIndx|✅ proved - incomplete|shostak|0.420|
|bin_search_TCC1|✅ proved - complete|shostak|0.020|
|bin_search_TCC2|✅ proved - complete|shostak|0.035|
|bin_search_TCC3|✅ proved - complete|shostak|0.040|
|bin_search_TCC4|✅ proved - complete|shostak|0.060|
|bin_search_TCC5|✅ proved - complete|shostak|0.076|
|bin_search_TCC6|✅ proved - complete|shostak|0.080|
|bin_search_TCC7|✅ proved - complete|shostak|0.327|
|bin_search_TCC8|✅ proved - complete|shostak|0.090|
|bin_search_TCC9|✅ proved - complete|shostak|0.450|
|bin_search_TCC10|✅ proved - complete|shostak|0.270|
|bin_search_TCC11|✅ proved - complete|shostak|0.273|
|bin_search_TCC12|✅ proved - complete|shostak|0.080|
|b_search_bound|✅ proved - complete|shostak|0.927|
|b_search_preserves_sorting_TCC1|✅ proved - complete|shostak|0.082|
|b_search_preserves_sorting_TCC2|✅ proved - complete|shostak|0.115|
|b_search_preserves_sorting_TCC3|✅ proved - complete|shostak|0.115|
|b_search_preserves_sorting|✅ proved - incomplete|shostak|4.466|
|b_search_removeSon_TCC1|✅ proved - complete|shostak|0.045|
|b_search_removeSon_TCC2|✅ proved - complete|shostak|0.101|
|b_search_removeSon_TCC3|✅ proved - complete|shostak|0.040|
|b_search_removeSon_TCC4|✅ proved - complete|shostak|0.040|
|b_search_removeSon|✅ proved - complete|shostak|7.370|
|PartialERforK?_TCC1|✅ proved - complete|shostak|0.020|
|PartialERforK?_TCC2|✅ proved - complete|shostak|0.120|
|PartialERforK?_TCC3|✅ proved - incomplete|shostak|0.072|
|PartialERforK?_TCC4|✅ proved - incomplete|shostak|0.149|
|PartialERforK?_TCC5|✅ proved - incomplete|shostak|0.132|
|oddNstructDeconstruction_TCC1|✅ proved - incomplete|shostak|0.047|
|oddNstructDeconstruction_TCC2|✅ proved - incomplete|shostak|0.066|
|oddNstructDeconstruction_TCC3|✅ proved - incomplete|shostak|0.030|
|oddNstructDeconstruction|✅ proved - incomplete|shostak|1.025|
|nstructER_vs_nstructER_basic_TCC1|✅ proved - incomplete|shostak|0.040|
|nstructER_vs_nstructER_basic_TCC2|✅ proved - incomplete|shostak|0.068|
|nstructER_vs_nstructER_basic|✅ proved - incomplete|shostak|0.443|
|occ_in_rest_TCC1|✅ proved - complete|shostak|0.020|
|occ_in_rest|✅ proved - incomplete|shostak|0.030|
|occ_in_removeson|✅ proved - incomplete|shostak|2.207|
|occ_in_insert|✅ proved - incomplete|shostak|0.402|
|insert_removeson_permutation_TCC1|✅ proved - complete|shostak|0.040|
|insert_removeson_permutation|✅ proved - incomplete|shostak|0.101|
|insertSonPreservesPartialERforK_TCC1|✅ proved - complete|shostak|0.093|
|insertSonPreservesPartialERforK_TCC2|✅ proved - complete|shostak|0.336|
|insertSonPreservesPartialERforK_TCC3|✅ proved - incomplete|shostak|0.060|
|insertSonPreservesPartialERforK_TCC4|✅ proved - incomplete|shostak|0.134|
|insertSonPreservesPartialERforK_TCC5|✅ proved - incomplete|shostak|0.151|
|insertSonPreservesPartialERforK_TCC6|✅ proved - incomplete|shostak|0.050|
|insertSonPreservesPartialERforK_TCC7|✅ proved - incomplete|shostak|0.131|
|insertSonPreservesPartialERforK_TCC8|✅ proved - incomplete|shostak|0.942|
|insertSonPreservesPartialERforK_TCC9|✅ proved - incomplete|shostak|0.489|
|insertSonPreservesPartialERforK_TCC10|✅ proved - incomplete|shostak|0.295|
|insertSonPreservesPartialERforK_TCC11|✅ proved - incomplete|shostak|0.115|
|insertSonPreservesPartialERforK|✅ proved - incomplete|shostak|7.543|
|insertCarPreservesPartialERforK_TCC1|✅ proved - complete|shostak|0.086|
|insertCarPreservesPartialERforK_TCC2|✅ proved - complete|shostak|0.166|
|insertCarPreservesPartialERforK_TCC3|✅ proved - incomplete|shostak|0.060|
|insertCarPreservesPartialERforK_TCC4|✅ proved - incomplete|shostak|0.064|
|insertCarPreservesPartialERforK_TCC5|✅ proved - incomplete|shostak|0.422|
|insertCarPreservesPartialERforK_TCC6|✅ proved - incomplete|shostak|0.110|
|insertCarPreservesPartialERforK_TCC7|✅ proved - incomplete|shostak|0.113|
|insertCarPreservesPartialERforK_TCC8|✅ proved - incomplete|shostak|0.115|
|insertCarPreservesPartialERforK_TCC9|✅ proved - incomplete|shostak|0.056|
|insertCarPreservesPartialERforK|✅ proved - incomplete|shostak|1.173|
|binsert_tk_interval_TCC1|✅ proved - complete|shostak|0.086|
|binsert_tk_interval_TCC2|✅ proved - complete|shostak|0.056|
|binsert_tk_interval_TCC3|✅ proved - incomplete|shostak|0.040|
|binsert_tk_interval_TCC4|✅ proved - incomplete|shostak|0.056|
|binsert_tk_interval_TCC5|✅ proved - incomplete|shostak|0.110|
|binsert_tk_interval_TCC6|✅ proved - incomplete|shostak|0.442|
|binsert_tk_interval_TCC7|✅ proved - incomplete|shostak|0.155|
|binsert_tk_interval_TCC8|✅ proved - incomplete|shostak|0.057|
|binsert_tk_interval_TCC9|✅ proved - incomplete|shostak|0.077|
|binsert_tk_interval_TCC10|✅ proved - incomplete|shostak|0.076|
|binsert_tk_interval_TCC11|✅ proved - incomplete|shostak|0.156|
|binsert_tk_interval_TCC12|✅ proved - incomplete|shostak|0.705|
|binsert_tk_interval_TCC13|✅ proved - incomplete|shostak|0.223|
|binsert_tk_interval_TCC14|✅ proved - incomplete|shostak|0.156|
|binsert_tk_interval_TCC15|✅ proved - incomplete|shostak|0.597|
|binsert_tk_interval_TCC16|✅ proved - incomplete|shostak|0.200|
|binsert_tk_interval_TCC17|✅ proved - incomplete|shostak|0.123|
|binsert_tk_interval_TCC18|✅ proved - incomplete|shostak|0.061|
|binsert_tk_interval_TCC19|✅ proved - incomplete|shostak|0.176|
|binsert_tk_interval_length|✅ proved - incomplete|shostak|1.605|
|binsert_tk_interval_preserves_indx_TCC1|✅ proved - incomplete|shostak|0.050|
|binsert_tk_interval_preserves_indx_TCC2|✅ proved - incomplete|shostak|0.040|
|binsert_tk_interval_preserves_indx|✅ proved - incomplete|shostak|1.626|
|up_partialER_TCC1|✅ proved - incomplete|shostak|0.039|
|up_partialER_TCC2|✅ proved - complete|shostak|0.038|
|up_partialER_TCC3|✅ proved - incomplete|shostak|0.040|
|up_partialER_TCC4|✅ proved - incomplete|shostak|0.070|
|up_partialER_TCC5|✅ proved - incomplete|shostak|0.097|
|up_partialER|✅ proved - incomplete|shostak|3.281|
|binsert_tk_interval_preserves_oddList|✅ proved - incomplete|shostak|1.087|
|binsert_tk_interval_gives_permutation|✅ proved - incomplete|shostak|3.612|
|PartialERforK_equiv_TCC1|✅ proved - complete|shostak|0.128|
|PartialERforK_equiv_TCC2|✅ proved - incomplete|shostak|0.198|
|PartialERforK_equiv|✅ proved - incomplete|shostak|1.043|
|basis_PartialERforK_equiv_TCC1|✅ proved - complete|shostak|0.060|
|basis_PartialERforK_equiv_TCC2|✅ proved - complete|shostak|0.238|
|basis_PartialERforK_equiv_TCC3|✅ proved - incomplete|shostak|0.020|
|basis_PartialERforK_equiv_TCC4|✅ proved - incomplete|shostak|0.277|
|basis_PartialERforK_equiv_TCC5|✅ proved - incomplete|shostak|0.090|
|basis_PartialERforK_equiv_TCC6|✅ proved - incomplete|shostak|0.328|
|basis_PartialERforK_equiv_TCC7|✅ proved - incomplete|shostak|1.595|
|basis_PartialERforK_equiv|✅ proved - incomplete|shostak|3.530|
|binsert_one_level_TCC1|✅ proved - complete|shostak|0.090|
|binsert_one_level_TCC2|✅ proved - complete|shostak|0.235|
|binsert_one_level_TCC3|✅ proved - incomplete|shostak|0.087|
|binsert_one_level_TCC4|✅ proved - incomplete|shostak|0.110|
|binsert_one_level_TCC5|✅ proved - incomplete|shostak|0.101|
|binsert_one_level_TCC6|✅ proved - incomplete|shostak|0.084|
|binsert_one_level_TCC7|✅ proved - incomplete|shostak|1.006|
|binsert_one_level_TCC8|✅ proved - incomplete|shostak|0.382|
|binsert_one_level_TCC9|✅ proved - incomplete|shostak|0.050|
|binsert_one_level_TCC10|✅ proved - incomplete|shostak|0.067|
|binsert_one_level_TCC11|✅ proved - incomplete|shostak|0.361|
|binsert_one_level_TCC12|✅ proved - incomplete|shostak|0.150|
|binsert_one_level_TCC13|✅ proved - incomplete|shostak|0.225|
|binsert_one_level_TCC14|✅ proved - incomplete|shostak|0.587|
|binsert_one_level_TCC15|✅ proved - incomplete|shostak|0.689|
|binsert_one_level_TCC16|✅ proved - incomplete|shostak|0.000|
|binsert_one_level_TCC17|✅ proved - incomplete|shostak|0.060|
|binsert_one_level_TCC18|✅ proved - incomplete|shostak|0.077|
|binsert_one_level_length_TCC1|✅ proved - complete|shostak|0.040|
|binsert_one_level_length_TCC2|✅ proved - complete|shostak|0.030|
|binsert_one_level_length_TCC3|✅ proved - complete|shostak|0.037|
|binsert_one_level_length_TCC4|✅ proved - complete|shostak|0.147|
|binsert_one_level_length_TCC5|✅ proved - incomplete|shostak|0.184|
|binsert_one_level_length|✅ proved - incomplete|shostak|7.910|
|binsert_one_level_gives_permutation|✅ proved - incomplete|shostak|8.504|
|binsert_one_level_go_to_nstruct_TCC1|✅ proved - incomplete|shostak|0.052|
|binsert_one_level_go_to_nstruct_TCC2|✅ proved - incomplete|shostak|0.100|
|binsert_one_level_go_to_nstruct|✅ proved - incomplete|shostak|13.774|
|nstructER_basic_equiv_TCC1|✅ proved - incomplete|shostak|0.150|
|nstructER_basic_equiv_TCC2|✅ proved - incomplete|shostak|0.261|
|nstructER_basic_equiv|✅ proved - incomplete|shostak|0.535|
|seqfjFatten_TCC1|✅ proved - incomplete|shostak|0.013|
|seqfjFatten_TCC2|✅ proved - incomplete|shostak|0.183|
|seqfjFatten_TCC3|✅ proved - incomplete|shostak|0.329|
|seqfjFatten_TCC4|✅ proved - incomplete|shostak|0.312|
|seqfjFatten_TCC5|✅ proved - incomplete|shostak|0.083|
|seqfjFatten_length|✅ proved - incomplete|shostak|0.225|
|seqfjFatten_gives_permutation|✅ proved - incomplete|shostak|0.703|
|seqfjFatten_gives_down_nstructER_basic_TCC1|✅ proved - incomplete|shostak|0.030|
|seqfjFatten_gives_down_nstructER_basic|✅ proved - incomplete|shostak|0.304|
|mergeInsertion_TCC1|✅ proved - incomplete|shostak|0.020|
|mergeInsertion_TCC2|✅ proved - incomplete|shostak|0.093|
|mergeInsertion_TCC3|✅ proved - incomplete|shostak|0.704|
|mergeInsertion_is_ok|✅ proved - incomplete|shostak|0.252|

## `firt_phase_ford_johnson`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|log_exp_TCC1|✅ proved - complete|shostak|0.030|
|log_exp_TCC2|✅ proved - complete|shostak|0.170|
|log_exp|✅ proved - incomplete|shostak|0.185|
|is_sorted?_TCC1|✅ proved - complete|shostak|0.060|
|add_fold_TCC1|✅ proved - incomplete|shostak|0.040|
|add_fold_TCC2|✅ proved - incomplete|shostak|0.032|
|add_fold_TCC3|✅ proved - incomplete|shostak|0.087|
|add_fold_TCC4|✅ proved - incomplete|shostak|0.080|
|nodes_TCC1|✅ proved - incomplete|shostak|0.687|
|map_TCC1|✅ proved - incomplete|shostak|0.021|
|map_TCC2|✅ proved - incomplete|shostak|0.060|
|map_TCC3|✅ proved - complete|shostak|0.020|
|map_TCC4|✅ proved - incomplete|shostak|0.101|
|permutation_equiv|✅ proved - incomplete|shostak|0.580|
|compare2to2_TCC1|✅ proved - complete|shostak|0.096|
|compare2to2_TCC2|✅ proved - complete|shostak|0.090|
|compare2to2_TCC3|✅ proved - complete|shostak|0.116|
|seqfjBottleneck_TCC1|✅ proved - complete|shostak|0.100|
|nstruct?_TCC1|✅ proved - incomplete|shostak|0.056|
|nstruct?_TCC2|✅ proved - complete|shostak|0.030|
|length_odd_TCC1|✅ proved - complete|shostak|0.046|
|length_odd_TCC2|✅ proved - complete|shostak|0.020|
|nstructER?_TCC1|✅ proved - incomplete|shostak|0.060|
|plain_finseqfj_nstructER0_TCC1|✅ proved - incomplete|shostak|0.076|
|plain_finseqfj_nstructER0|✅ proved - incomplete|shostak|0.185|
|occ_list_vs_fjnodes|✅ proved - incomplete|shostak|0.150|
|comparePeservesElements|✅ proved - incomplete|shostak|9.140|
|seqfjBottPreservesElements|✅ proved - incomplete|shostak|0.000|
|oneStepCorrectionER_TCC1|✅ proved - incomplete|shostak|0.095|
|oneStepCorrectionER_TCC2|✅ proved - incomplete|shostak|0.324|
|oneStepCorrectionER|✅ proved - incomplete|shostak|2.617|
|correctionER_TCC1|✅ proved - incomplete|shostak|0.020|
|correctionER_TCC2|✅ proved - incomplete|shostak|0.144|
|correctionER_TCC3|✅ proved - incomplete|shostak|0.066|
|correctionER|✅ proved - incomplete|shostak|0.915|
|lengthBottleneckIs1|✅ proved - incomplete|shostak|0.421|
|seqfjBottleneck_works|✅ proved - incomplete|shostak|0.199|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib/pvsio_utils/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230712-static-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230710-tcc-gen.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230707-defattach.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230706-extrategies.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`|
