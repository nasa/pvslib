# Summary for `sorting`
Run started at 18:5:11 9/1/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **649**   | **649**    | **649**    | **0**  | **6:3.279 s**   |
|top|0|0|0|0|0.000|
|quicksort|21|21|21|0|5.021|
|total_preorder|2|2|2|0|0.033|
|sorting|18|18|18|0|2.483|
|sorting_aux|70|70|70|0|12.069|
|mergesort|17|17|17|0|9.380|
|insertionsort|11|11|11|0|1.653|
|insertionsort_fs|12|12|12|0|5.553|
|sorting_seq|58|58|58|0|16.399|
|sorting_min|22|22|22|0|11.632|
|bubblesort|32|32|32|0|8.688|
|heapsort|58|58|58|0|2:18.583|
|maxsort|38|38|38|0|10.199|
|binsertionsort|40|40|40|0|13.022|
|radix_sort|20|20|20|0|1.283|
|radix_sort_nat|30|30|30|0|13.554|
|ford_johnson|163|163|163|0|1:39.472|
|firt_phase_ford_johnson|37|37|37|0|14.255|
## Detailed Summary 
## `top`
No formula declaration found.
## `quicksort`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|leq_elements_TCC1|✅ proved - complete|shostak|0.085|
|leq_elements_TCC2|✅ proved - complete|shostak|0.050|
|g_elements_TCC1|✅ proved - complete|shostak|0.052|
|g_elements_TCC2|✅ proved - complete|shostak|0.050|
|leq_elements_size|✅ proved - complete|shostak|0.162|
|g_elements_size|✅ proved - complete|shostak|0.186|
|same_occurrence_leq|✅ proved - complete|shostak|0.272|
|same_occurrence_g|✅ proved - complete|shostak|0.239|
|quick_sort_TCC1|✅ proved - complete|shostak|0.193|
|quick_sort_TCC2|✅ proved - complete|shostak|0.084|
|g_leq_car_size_TCC1|✅ proved - complete|shostak|0.020|
|g_leq_car_size|✅ proved - complete|shostak|0.279|
|quick_sort_size|✅ proved - complete|shostak|0.290|
|leq_elements_works|✅ proved - complete|shostak|0.144|
|g_elements_works|✅ proved - complete|shostak|0.171|
|quick_sort_is_permutation|✅ proved - complete|shostak|0.518|
|append_null_in_sorted_is_sorted|✅ proved - complete|shostak|0.058|
|cons_in_sorted_TCC1|✅ proved - complete|shostak|0.040|
|cons_in_sorted|✅ proved - complete|shostak|0.160|
|quick_sort_is_sorted|✅ proved - complete|shostak|1.948|
|quick_sort_works|✅ proved - complete|shostak|0.020|

## `total_preorder`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|total_preorder_is_preorder|✅ proved - complete|shostak|0.020|
|total_order_is_total_preorder|✅ proved - complete|shostak|0.013|

## `sorting`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|lt_le|✅ proved - complete|shostak|0.020|
|gt_not_le|✅ proved - complete|shostak|0.020|
|search_TCC1|✅ proved - complete|shostak|0.028|
|search_TCC2|✅ proved - complete|shostak|0.050|
|not_in_l_gives_lenght_l|✅ proved - complete|shostak|0.182|
|not_member_gives_length|✅ proved - complete|shostak|0.034|
|search_works_TCC1|✅ proved - complete|shostak|0.153|
|search_works|✅ proved - complete|shostak|0.152|
|search_min_index|✅ proved - complete|shostak|0.214|
|search_in_rev_max_index|✅ proved - complete|shostak|0.136|
|search_in_append_of_lists_key_in_the_first|✅ proved - complete|shostak|0.298|
|search_in_append_of_lists_key_not_member_of_the_first|✅ proved - complete|shostak|0.224|
|search_in_append_of_lists_with_searched_key|✅ proved - complete|shostak|0.236|
|is_sorted?_TCC1|✅ proved - complete|shostak|0.067|
|is_sorted_implies_monotone_TCC1|✅ proved - complete|shostak|0.020|
|is_sorted_implies_monotone|✅ proved - complete|shostak|0.493|
|cdr_of_sorted_is_sorted_TCC1|✅ proved - complete|shostak|0.030|
|cdr_of_sorted_is_sorted|✅ proved - complete|shostak|0.126|

## `sorting_aux`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|elim_list_TCC1|✅ proved - complete|shostak|0.030|
|elim_list_TCC2|✅ proved - complete|shostak|0.040|
|elim_list_TCC3|✅ proved - complete|shostak|0.035|
|elim_list_TCC4|✅ proved - complete|shostak|0.030|
|elim_list_length_TCC1|✅ proved - complete|shostak|0.030|
|elim_list_length|✅ proved - complete|shostak|0.211|
|preservation_contents_TCC1|✅ proved - complete|shostak|0.030|
|preservation_contents|✅ proved - complete|shostak|0.113|
|nth_implies_member|✅ proved - complete|shostak|0.206|
|member_implies_exists_nth|✅ proved - complete|shostak|0.299|
|nth_of_list_is_nth_append_list_TCC1|✅ proved - complete|shostak|0.046|
|nth_of_list_is_nth_append_list|✅ proved - complete|shostak|0.202|
|nth_of_cons_TCC1|✅ proved - complete|shostak|0.047|
|nth_of_cons_TCC2|✅ proved - complete|shostak|0.020|
|nth_of_cons_TCC3|✅ proved - complete|shostak|0.060|
|nth_of_cons|✅ proved - complete|shostak|0.037|
|nth_of_append_TCC1|✅ proved - complete|shostak|0.060|
|nth_of_append_TCC2|✅ proved - complete|shostak|0.066|
|nth_of_append|✅ proved - complete|shostak|0.747|
|null_rev_null|✅ proved - complete|shostak|0.030|
|nth_member_TCC1|✅ proved - complete|shostak|0.020|
|nth_member|✅ proved - complete|shostak|0.198|
|car_rev_TCC1|✅ proved - complete|shostak|0.030|
|car_rev_TCC2|✅ proved - complete|shostak|0.067|
|car_rev_TCC3|✅ proved - complete|shostak|0.040|
|car_rev|✅ proved - complete|shostak|0.084|
|nth_rev_zero_TCC1|✅ proved - complete|shostak|0.060|
|nth_rev_zero_TCC2|✅ proved - complete|shostak|0.113|
|nth_rev_zero|✅ proved - complete|shostak|0.723|
|nth_rev_last_TCC1|✅ proved - complete|shostak|0.030|
|nth_rev_last_TCC2|✅ proved - complete|shostak|0.080|
|nth_rev_last|✅ proved - complete|shostak|0.103|
|nth_append_TCC1|✅ proved - complete|shostak|0.122|
|nth_append_TCC2|✅ proved - complete|shostak|0.020|
|nth_append|✅ proved - complete|shostak|0.202|
|nth_rev_TCC1|✅ proved - complete|shostak|0.137|
|nth_rev|✅ proved - complete|shostak|0.654|
|occurrences_TCC1|✅ proved - complete|shostak|0.022|
|occurrences_TCC2|✅ proved - complete|shostak|0.050|
|occurrences_TCC3|✅ proved - complete|shostak|0.040|
|occurrences_of_nth_element|✅ proved - complete|shostak|0.213|
|occurrences_of_app|✅ proved - complete|shostak|0.294|
|cons_of_perm_is_permutation|✅ proved - complete|shostak|0.020|
|ocurrence_list_has_element|✅ proved - complete|shostak|0.000|
|no_occurrence_implies|✅ proved - complete|shostak|0.262|
|member_implies_pos_occurrences|✅ proved - complete|shostak|0.156|
|occurrences_implies_member|✅ proved - complete|shostak|0.116|
|permutations_preserve_contents|✅ proved - complete|shostak|0.048|
|permutations_is_commutative|✅ proved - complete|shostak|0.037|
|permutations_is_transitive|✅ proved - complete|shostak|0.030|
|cons_elim_is_permutation|✅ proved - complete|shostak|0.307|
|same_occurrences_same_length|✅ proved - complete|shostak|0.292|
|permutations_is_ext_reflexive_TCC1|✅ proved - complete|shostak|0.020|
|permutations_is_ext_reflexive|✅ proved - complete|shostak|0.552|
|suffix_TCC1|✅ proved - complete|shostak|0.066|
|suffix_TCC2|✅ proved - complete|shostak|0.132|
|suffix_TCC3|✅ proved - complete|shostak|0.120|
|app_prefix_suffix|✅ proved - complete|shostak|0.209|
|length_suffix|✅ proved - complete|shostak|0.263|
|length_prefix|✅ proved - complete|shostak|0.213|
|contents_suffix_TCC1|✅ proved - complete|shostak|0.020|
|contents_suffix_TCC2|✅ proved - complete|shostak|0.080|
|contents_suffix_TCC3|✅ proved - complete|shostak|0.017|
|contents_suffix|✅ proved - complete|shostak|2.111|
|contents_prefix_TCC1|✅ proved - complete|shostak|0.077|
|contents_prefix_TCC2|✅ proved - complete|shostak|0.010|
|contents_prefix|✅ proved - complete|shostak|0.999|
|permutations_of_appends|✅ proved - complete|shostak|0.090|
|permutations_of_app_suff|✅ proved - complete|shostak|0.097|
|permutations_of_app_pref|✅ proved - complete|shostak|0.084|

## `mergesort`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|merge_TCC1|✅ proved - complete|shostak|0.030|
|merge_TCC2|✅ proved - complete|shostak|0.020|
|merge_TCC3|✅ proved - complete|shostak|0.115|
|merge_TCC4|✅ proved - complete|shostak|0.116|
|merge_size|✅ proved - complete|shostak|0.292|
|merge_occurrence|✅ proved - complete|shostak|0.322|
|merge_is_permutation|✅ proved - complete|shostak|0.056|
|merge_of_sorted_is_sorted|✅ proved - complete|shostak|0.633|
|merge_sort_TCC1|✅ proved - complete|shostak|0.130|
|merge_sort_TCC2|✅ proved - complete|shostak|0.080|
|merge_sort_TCC3|✅ proved - complete|shostak|0.090|
|merge_sort_size|✅ proved - complete|shostak|0.231|
|merge_sort_is_sorted|✅ proved - complete|shostak|0.315|
|merge_sort_is_permutation|✅ proved - complete|shostak|0.382|
|merge_sort_works|✅ proved - complete|shostak|0.020|
|merge_is_conservative|✅ proved - complete|shostak|4.195|
|merge_sort_is_conservative|✅ proved - complete|shostak|2.353|

## `insertionsort`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|insert_TCC1|✅ proved - complete|shostak|0.020|
|insert_TCC2|✅ proved - complete|shostak|0.050|
|occ_in_insert|✅ proved - complete|shostak|0.510|
|insertion_sort_TCC1|✅ proved - complete|shostak|0.020|
|insertion_sort_TCC2|✅ proved - complete|shostak|0.045|
|insert_size|✅ proved - complete|shostak|0.166|
|insert_in_sorted_preserves_sort|✅ proved - complete|shostak|0.450|
|insertionsort_is_sorted|✅ proved - complete|shostak|0.107|
|ins_and_cons_in_perm_is_perm|✅ proved - complete|shostak|0.077|
|insertion_sort_is_permutations|✅ proved - complete|shostak|0.188|
|insertion_sort_works|✅ proved - complete|shostak|0.020|

## `insertionsort_fs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|insertion_TCC1|✅ proved - complete|shostak|0.020|
|insertion_TCC2|✅ proved - incomplete|shostak|0.113|
|length_insertion|✅ proved - incomplete|shostak|0.234|
|occ_in_insert|✅ proved - incomplete|shostak|1.966|
|fs_insertion_sort_TCC1|✅ proved - complete|shostak|0.020|
|fs_insertion_sort_TCC2|✅ proved - incomplete|shostak|0.100|
|fs_insert_size|✅ proved - incomplete|shostak|0.214|
|fs_insert_in_sorted_preserves_sort|✅ proved - incomplete|shostak|1.485|
|fs_insertionsort_is_sorted|✅ proved - incomplete|shostak|0.264|
|fs_ins_and_add_in_perm_is_perm|✅ proved - incomplete|shostak|0.957|
|fs_insertion_sort_is_permutations|✅ proved - incomplete|shostak|0.164|
|fs_insertion_sort_works|✅ proved - incomplete|shostak|0.016|

## `sorting_seq`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|occurrences_TCC1|✅ proved - complete|shostak|0.020|
|occurrences_TCC2|✅ proved - complete|shostak|0.030|
|occurrences_TCC3|✅ proved - complete|shostak|0.107|
|occurrences_TCC4|✅ proved - complete|shostak|0.030|
|occurrences_TCC5|✅ proved - complete|shostak|0.101|
|finseq2list_rec_equivalence_TCC1|✅ proved - complete|shostak|0.020|
|finseq2list_rec_equivalence_TCC2|✅ proved - complete|shostak|0.091|
|finseq2list_rec_equivalence_TCC3|✅ proved - complete|shostak|0.020|
|finseq2list_rec_equivalence|✅ proved - complete|shostak|0.246|
|finseq2lists_for_suffixes_TCC1|✅ proved - complete|shostak|0.010|
|finseq2lists_for_suffixes_TCC2|✅ proved - complete|shostak|0.070|
|finseq2lists_for_suffixes_TCC3|✅ proved - complete|shostak|0.016|
|finseq2lists_for_suffixes|✅ proved - complete|shostak|0.320|
|subseq_is_cdr_TCC1|✅ proved - complete|shostak|0.020|
|subseq_is_cdr_TCC2|✅ proved - complete|shostak|0.030|
|subseq_is_cdr|✅ proved - complete|shostak|0.176|
|same_occ_fseq_list|✅ proved - complete|shostak|0.422|
|perm_fsq_iff_perm_list|✅ proved - complete|shostak|0.067|
|permutations_equiv|✅ proved - complete|shostak|0.051|
|psorted_TCC1|✅ proved - complete|shostak|0.089|
|is_sorted?_TCC1|✅ proved - complete|shostak|0.060|
|is_sorted_equiv|✅ proved - complete|shostak|0.336|
|ind_parent_TCC1|✅ proved - complete|shostak|0.050|
|left_child_TCC1|✅ proved - complete|shostak|0.116|
|right_child_TCC1|✅ proved - complete|shostak|0.120|
|is_p_heap_TCC1|✅ proved - complete|shostak|0.017|
|is_p_heap_TCC2|✅ proved - complete|shostak|0.020|
|is_p_heap_TCC3|✅ proved - complete|shostak|0.151|
|is_p_heap_TCC4|✅ proved - complete|shostak|0.172|
|is_p_heap_TCC5|✅ proved - complete|shostak|0.182|
|is_heap_TCC1|✅ proved - complete|shostak|0.020|
|is_heap_TCC2|✅ proved - complete|shostak|0.030|
|root_is_greatest_in_p_heap_TCC1|✅ proved - complete|shostak|0.010|
|root_is_greatest_in_p_heap_TCC2|✅ proved - complete|shostak|0.020|
|root_is_greatest_in_p_heap_TCC3|✅ proved - complete|shostak|0.070|
|root_is_greatest_in_p_heap|✅ proved - complete|shostak|0.693|
|root_is_greatest_in_heap_TCC1|✅ proved - complete|shostak|0.080|
|root_is_greatest_in_heap|✅ proved - complete|shostak|0.053|
|parent_TCC1|✅ proved - complete|shostak|0.070|
|ind_gc_TCC1|✅ proved - complete|shostak|0.020|
|ind_gc_TCC2|✅ proved - complete|shostak|0.166|
|ind_gc_TCC3|✅ proved - complete|shostak|0.169|
|swap_of_p_heap_TCC1|✅ proved - complete|shostak|0.090|
|swap_of_p_heap|✅ proved - complete|shostak|0.041|
|swap_commutes|✅ proved - complete|shostak|0.076|
|occ_replaces_at_j_TCC1|✅ proved - complete|shostak|0.055|
|occ_replaces_at_j|✅ proved - complete|shostak|1.348|
|swap_occ_at_0_TCC1|✅ proved - complete|shostak|0.020|
|swap_occ_at_0_TCC2|✅ proved - complete|shostak|0.010|
|swap_occ_at_0|✅ proved - complete|shostak|1.645|
|swap_permutes|✅ proved - complete|shostak|0.000|
|swap_of_heap_TCC1|✅ proved - complete|shostak|0.110|
|swap_of_heap_TCC2|✅ proved - complete|shostak|0.097|
|swap_of_heap|✅ proved - complete|shostak|0.190|
|occ_in_insert|✅ proved - incomplete|shostak|5.557|
|occ_in_delete|✅ proved - incomplete|shostak|2.461|
|delete_insert_same_permutes_TCC1|✅ proved - incomplete|shostak|0.040|
|delete_insert_same_permutes|✅ proved - incomplete|shostak|0.098|

## `sorting_min`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|switching_min_TCC1|✅ proved - complete|shostak|0.057|
|switching_min_TCC2|✅ proved - complete|shostak|0.070|
|switching_min_TCC3|✅ proved - complete|shostak|0.244|
|switching_min_TCC4|✅ proved - complete|shostak|0.080|
|reverse_is_permutation|✅ proved - complete|shostak|0.244|
|swch_min_preserves_length|✅ proved - complete|shostak|0.475|
|swch_min_preserves_contents|✅ proved - complete|shostak|0.645|
|swch_min_is_permutation|✅ proved - complete|shostak|0.565|
|last_swch_min_element_is_least_TCC1|✅ proved - complete|shostak|0.091|
|last_swch_min_element_is_least_TCC2|✅ proved - complete|shostak|0.040|
|last_swch_min_element_is_least|✅ proved - complete|shostak|1.589|
|sorting_min_TCC1|✅ proved - complete|shostak|0.070|
|sorting_min_TCC2|✅ proved - complete|shostak|0.380|
|sorting_min_preserves_length|✅ proved - complete|shostak|1.001|
|sorting_min_is_permutations|✅ proved - complete|shostak|1.298|
|swch_min_moves_min_to_end_TCC1|✅ proved - complete|shostak|0.113|
|swch_min_moves_min_to_end_TCC2|✅ proved - complete|shostak|0.120|
|swch_min_moves_min_to_end|✅ proved - complete|shostak|0.188|
|sorting_min_moves_min_to_begining_TCC1|✅ proved - complete|shostak|0.093|
|sorting_min_moves_min_to_begining_TCC2|✅ proved - complete|shostak|0.125|
|sorting_min_moves_min_to_begining|✅ proved - complete|shostak|0.668|
|sorting_min_work|✅ proved - complete|shostak|3.476|

## `bubblesort`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|bubbling_TCC1|✅ proved - complete|shostak|0.050|
|bubbling_TCC2|✅ proved - complete|shostak|0.056|
|bubbling_TCC3|✅ proved - complete|shostak|0.130|
|bubbling_TCC4|✅ proved - complete|shostak|0.036|
|bubbling_TCC5|✅ proved - complete|shostak|0.100|
|bubbling_TCC6|✅ proved - complete|shostak|0.030|
|bubbling_preserves_length|✅ proved - complete|shostak|0.366|
|bubbling_preserves_suffix_TCC1|✅ proved - complete|shostak|0.065|
|bubbling_preserves_suffix|✅ proved - complete|shostak|0.750|
|bubblesort_aux_TCC1|✅ proved - complete|shostak|0.070|
|bubblesort_aux_TCC2|✅ proved - complete|shostak|0.020|
|bubblesort_aux_preserves_length|✅ proved - complete|shostak|0.149|
|bubblesort_TCC1|✅ proved - complete|shostak|0.052|
|bubbling_preseves_contents|✅ proved - complete|shostak|1.056|
|bubbling_preserves_prefix_TCC1|✅ proved - complete|shostak|0.010|
|bubbling_preserves_prefix_TCC2|✅ proved - complete|shostak|0.109|
|bubbling_preserves_prefix|✅ proved - complete|shostak|1.456|
|bubbling_bubbles_TCC1|✅ proved - complete|shostak|0.070|
|bubbling_bubbles_TCC2|✅ proved - complete|shostak|0.063|
|bubbling_bubbles|✅ proved - complete|shostak|1.024|
|bubblesort_aux_preserves_suffix_TCC1|✅ proved - complete|shostak|0.068|
|bubblesort_aux_preserves_suffix|✅ proved - complete|shostak|0.518|
|bubblesort_aux_is_permutation|✅ proved - complete|shostak|0.178|
|bubblesort_aux_preserves_prefix_TCC1|✅ proved - complete|shostak|0.117|
|bubblesort_aux_preserves_prefix_TCC2|✅ proved - complete|shostak|0.030|
|bubblesort_aux_preserves_prefix|✅ proved - complete|shostak|0.715|
|bubblesort_is_permutation|✅ proved - complete|shostak|0.082|
|bubblesort_aux_sorts_prefix_TCC1|✅ proved - complete|shostak|0.059|
|bubblesort_aux_sorts_prefix_TCC2|✅ proved - complete|shostak|0.090|
|bubblesort_aux_sorts_prefix|✅ proved - complete|shostak|1.149|
|bubblesort_is_sorted|✅ proved - complete|shostak|0.000|
|bubblesort_works|✅ proved - complete|shostak|0.020|

## `heapsort`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sink_TCC1|✅ proved - complete|shostak|0.030|
|sink_TCC2|✅ proved - complete|shostak|0.663|
|sink_TCC3|✅ proved - complete|shostak|0.420|
|sink_TCC4|✅ proved - complete|shostak|0.417|
|sink_TCC5|✅ proved - complete|shostak|0.409|
|sink_TCC6|✅ proved - complete|shostak|0.268|
|sink_permutes_TCC1|✅ proved - complete|shostak|0.020|
|sink_permutes|✅ proved - complete|shostak|1.741|
|sink_length|✅ proved - complete|shostak|1.293|
|sink_stable_TCC1|✅ proved - complete|shostak|0.030|
|sink_stable|✅ proved - complete|shostak|6.397|
|sink_in_stable_TCC1|✅ proved - complete|shostak|0.034|
|sink_in_stable|✅ proved - complete|shostak|3.221|
|sink_interval_children_stable_TCC1|✅ proved - complete|shostak|0.215|
|sink_interval_children_stable_TCC2|✅ proved - complete|shostak|0.414|
|sink_interval_children_stable_TCC3|✅ proved - complete|shostak|0.585|
|sink_interval_children_stable_TCC4|✅ proved - complete|shostak|0.407|
|sink_interval_children_stable_TCC5|✅ proved - complete|shostak|0.773|
|sink_interval_children_stable_TCC6|✅ proved - complete|shostak|0.419|
|sink_interval_children_stable_TCC7|✅ proved - complete|shostak|0.504|
|sink_interval_children_stable|✅ proved - complete|shostak|8.358|
|is_heap_from_to_TCC1|✅ proved - complete|shostak|0.020|
|is_heap_from_to_TCC2|✅ proved - complete|shostak|0.010|
|is_heap_from_to_TCC3|✅ proved - complete|shostak|0.302|
|is_heap_from_to_TCC4|✅ proved - complete|shostak|0.289|
|is_heap_from_to_TCC5|✅ proved - complete|shostak|0.252|
|is_heap_from_to_TCC6|✅ proved - complete|shostak|0.239|
|is_heap_from_to|✅ proved - complete|shostak|1:25.497|
|heapify_TCC1|✅ proved - complete|shostak|0.070|
|heapify_TCC2|✅ proved - complete|shostak|0.060|
|heapify_TCC3|✅ proved - complete|shostak|0.088|
|heapify_TCC4|✅ proved - complete|shostak|0.040|
|heapify_TCC5|✅ proved - complete|shostak|0.056|
|heapify_TCC6|✅ proved - complete|shostak|0.070|
|heapify_length_TCC1|✅ proved - complete|shostak|0.040|
|heapify_length|✅ proved - complete|shostak|1.712|
|heapify_permutes|✅ proved - complete|shostak|1.397|
|heapify_heapifies_TCC1|✅ proved - complete|shostak|0.040|
|heapify_heapifies|✅ proved - complete|shostak|2.488|
|heapsort_aux_TCC1|✅ proved - complete|shostak|0.020|
|heapsort_aux_TCC2|✅ proved - complete|shostak|0.025|
|heapsort_aux_TCC3|✅ proved - complete|shostak|0.040|
|heapsort_aux_TCC4|✅ proved - complete|shostak|0.060|
|heapsort_aux_TCC5|✅ proved - complete|shostak|0.025|
|heapsort_aux_TCC6|✅ proved - complete|shostak|0.274|
|heapsort_aux_TCC7|✅ proved - complete|shostak|0.024|
|heapsort_aux_permutes|✅ proved - complete|shostak|0.697|
|heapsort_aux_length|✅ proved - complete|shostak|0.475|
|heapsort_aux_psorts_TCC1|✅ proved - complete|shostak|0.020|
|heapsort_aux_psorts_TCC2|✅ proved - complete|shostak|0.020|
|heapsort_aux_psorts_TCC3|✅ proved - complete|shostak|0.049|
|heapsort_aux_psorts_TCC4|✅ proved - complete|shostak|0.060|
|heapsort_aux_psorts_TCC5|✅ proved - complete|shostak|0.231|
|heapsort_aux_psorts_TCC6|✅ proved - complete|shostak|0.030|
|heapsort_aux_psorts|✅ proved - complete|shostak|11.471|
|heapsort_TCC1|✅ proved - complete|shostak|0.085|
|heapsort_TCC2|✅ proved - complete|shostak|0.050|
|heapsort_works|✅ proved - complete|shostak|5.639|

## `maxsort`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|move_max_TCC1|✅ proved - complete|shostak|0.119|
|move_max_TCC2|✅ proved - complete|shostak|0.020|
|move_max_TCC3|✅ proved - complete|shostak|0.020|
|move_max_TCC4|✅ proved - complete|shostak|0.016|
|move_max_TCC5|✅ proved - complete|shostak|0.020|
|move_max_TCC6|✅ proved - complete|shostak|0.064|
|move_max_TCC7|✅ proved - complete|shostak|0.076|
|move_max_TCC8|✅ proved - complete|shostak|0.040|
|move_max_TCC9|✅ proved - complete|shostak|0.080|
|move_max_TCC10|✅ proved - complete|shostak|0.043|
|move_max_length_TCC1|✅ proved - complete|shostak|0.020|
|move_max_length|✅ proved - complete|shostak|0.522|
|move_max_preserves_out_TCC1|✅ proved - complete|shostak|0.030|
|move_max_preserves_out|✅ proved - complete|shostak|1.308|
|move_max_preserves_TCC1|✅ proved - complete|shostak|0.061|
|move_max_preserves|✅ proved - complete|shostak|1.712|
|move_max_preserves2_TCC1|✅ proved - complete|shostak|0.020|
|move_max_preserves2_TCC2|✅ proved - complete|shostak|0.028|
|move_max_preserves2|✅ proved - complete|shostak|1.995|
|move_max_works_TCC1|✅ proved - complete|shostak|0.040|
|move_max_works_TCC2|✅ proved - complete|shostak|0.023|
|move_max_works|✅ proved - complete|shostak|0.032|
|move_max_permutes|✅ proved - complete|shostak|0.647|
|maxsort_aux_TCC1|✅ proved - complete|shostak|0.030|
|maxsort_aux_TCC2|✅ proved - complete|shostak|0.035|
|maxsort_aux_TCC3|✅ proved - complete|shostak|0.010|
|maxsort_aux_length|✅ proved - complete|shostak|0.160|
|maxsort_aux_psorts_TCC1|✅ proved - complete|shostak|0.020|
|maxsort_aux_psorts_TCC2|✅ proved - complete|shostak|0.020|
|maxsort_aux_psorts_TCC3|✅ proved - complete|shostak|0.057|
|maxsort_aux_psorts_TCC4|✅ proved - complete|shostak|0.050|
|maxsort_aux_psorts|✅ proved - complete|shostak|1.394|
|maxsort_aux_permutes_TCC1|✅ proved - complete|shostak|0.020|
|maxsort_aux_permutes|✅ proved - complete|shostak|0.381|
|maxsort_TCC1|✅ proved - complete|shostak|0.030|
|maxsort_sorts|✅ proved - complete|shostak|0.651|
|maxsort_permutes|✅ proved - complete|shostak|0.385|
|maxsort_works|✅ proved - complete|shostak|0.020|

## `binsertionsort`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|bin_search_TCC1|✅ proved - complete|shostak|0.030|
|bin_search_TCC2|✅ proved - complete|shostak|0.023|
|bin_search_TCC3|✅ proved - complete|shostak|0.030|
|bin_search_TCC4|✅ proved - complete|shostak|0.060|
|bin_search_TCC5|✅ proved - complete|shostak|0.070|
|bin_search_TCC6|✅ proved - complete|shostak|0.072|
|bin_search_TCC7|✅ proved - complete|shostak|0.319|
|bin_search_TCC8|✅ proved - complete|shostak|0.073|
|bin_search_TCC9|✅ proved - complete|shostak|0.456|
|bin_search_TCC10|✅ proved - complete|shostak|0.266|
|bin_search_TCC11|✅ proved - complete|shostak|0.247|
|bin_search_TCC12|✅ proved - complete|shostak|0.086|
|binsertionsort_aux_TCC1|✅ proved - complete|shostak|0.020|
|binsertionsort_aux_TCC2|✅ proved - incomplete|shostak|0.050|
|binsertionsort_aux_TCC3|✅ proved - incomplete|shostak|0.188|
|binsertionsort_aux_TCC4|✅ proved - incomplete|shostak|0.226|
|binsertionsort_aux_TCC5|✅ proved - incomplete|shostak|0.116|
|binsertionsort_aux_TCC6|✅ proved - incomplete|shostak|0.202|
|binsertionsort_aux_TCC7|✅ proved - incomplete|shostak|0.251|
|binsertionsort_aux_TCC8|✅ proved - complete|shostak|0.020|
|binsertionsort_aux_TCC9|✅ proved - complete|shostak|0.040|
|binsertionsort_TCC1|✅ proved - complete|shostak|0.016|
|binsertionsort_TCC2|✅ proved - complete|shostak|0.020|
|b_search_bound|✅ proved - complete|shostak|0.799|
|b_search_preserves_sorting_TCC1|✅ proved - complete|shostak|0.065|
|b_search_preserves_sorting_TCC2|✅ proved - complete|shostak|0.113|
|b_search_preserves_sorting_TCC3|✅ proved - complete|shostak|0.106|
|b_search_preserves_sorting|✅ proved - incomplete|shostak|3.479|
|b_search_translation_TCC1|✅ proved - complete|shostak|0.010|
|b_search_translation_TCC2|✅ proved - complete|shostak|0.020|
|b_search_translation_TCC3|✅ proved - complete|shostak|0.020|
|b_search_translation_TCC4|✅ proved - complete|shostak|0.087|
|b_search_translation_TCC5|✅ proved - complete|shostak|0.070|
|b_search_translation|✅ proved - complete|shostak|2.737|
|bs_aux_perm|✅ proved - incomplete|shostak|1.094|
|bs_aux_sorts_TCC1|✅ proved - complete|shostak|0.020|
|bs_aux_sorts|✅ proved - incomplete|shostak|1.259|
|binsertion_permutation|✅ proved - incomplete|shostak|0.030|
|binsertion_sorts|✅ proved - incomplete|shostak|0.212|
|binsertionsort_works|✅ proved - incomplete|shostak|0.020|

## `radix_sort`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|radixsort_aux_TCC1|✅ proved - complete|shostak|0.010|
|radixsort_aux_TCC2|✅ proved - complete|shostak|0.030|
|radixsort_aux_TCC3|✅ proved - complete|shostak|0.053|
|radixsort_aux_TCC4|✅ proved - complete|shostak|0.020|
|radixsort_TCC1|✅ proved - complete|shostak|0.010|
|radixsort_permutes|✅ proved - complete|shostak|0.149|
|lex_TCC1|✅ proved - complete|shostak|0.025|
|lex_TCC2|✅ proved - complete|shostak|0.040|
|lex_total_preorder|✅ proved - complete|shostak|0.320|
|merge_sort_lex_sorted_TCC1|✅ proved - complete|shostak|0.014|
|merge_sort_lex_sorted_TCC2|✅ proved - complete|shostak|0.020|
|merge_sort_lex_sorted_TCC3|✅ proved - complete|shostak|0.020|
|merge_sort_lex_sorted_TCC4|✅ proved - complete|shostak|0.050|
|merge_sort_lex_sorted|✅ proved - complete|shostak|0.249|
|radix_sort_is_sorted_TCC1|✅ proved - complete|shostak|0.010|
|radix_sort_is_sorted_TCC2|✅ proved - complete|shostak|0.020|
|radix_sort_is_sorted_TCC3|✅ proved - complete|shostak|0.020|
|radix_sort_is_sorted_TCC4|✅ proved - complete|shostak|0.118|
|radix_sort_is_sorted_TCC5|✅ proved - complete|shostak|0.050|
|radixsort_sorts|✅ proved - complete|shostak|0.055|

## `radix_sort_nat`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|d_nth_TCC1|✅ proved - complete|shostak|0.040|
|d_nth_TCC2|✅ proved - complete|shostak|0.010|
|n_digits_TCC1|✅ proved - incomplete|shostak|0.194|
|max_digits_TCC1|✅ proved - complete|shostak|0.085|
|max_digits_TCC2|✅ proved - complete|shostak|0.070|
|max_digits_TCC3|✅ proved - complete|shostak|0.129|
|max_digits_TCC4|✅ proved - complete|shostak|0.203|
|max_digits_works_TCC1|✅ proved - complete|shostak|0.020|
|max_digits_works|✅ proved - incomplete|shostak|0.647|
|d_nth_zero|✅ proved - incomplete|shostak|0.224|
|d_nth_digits_TCC1|✅ proved - incomplete|shostak|0.020|
|d_nth_digits|✅ proved - incomplete|shostak|1.077|
|d_exp_dec|✅ proved - incomplete|shostak|0.984|
|d_nth_rem|✅ proved - incomplete|shostak|1.817|
|n_digits_power|✅ proved - incomplete|shostak|0.280|
|d_nth_nmod_TCC1|✅ proved - complete|shostak|0.010|
|d_nth_nmod|✅ proved - incomplete|shostak|0.240|
|n_digits_monotone|✅ proved - incomplete|shostak|0.301|
|n_digits_ten_power_TCC1|✅ proved - complete|shostak|0.125|
|n_digits_ten_power|✅ proved - incomplete|shostak|0.426|
|n_digits_nmod_leq|✅ proved - incomplete|shostak|0.106|
|leq_N_TCC1|✅ proved - incomplete|shostak|0.076|
|lex_preserves_TCC1|✅ proved - complete|shostak|0.010|
|lex_preserves|✅ proved - incomplete|shostak|0.234|
|lex_nat_works_aux_TCC1|✅ proved - incomplete|shostak|0.020|
|lex_nat_works_aux|✅ proved - incomplete|shostak|5.325|
|lex_nat_works_TCC1|✅ proved - incomplete|shostak|0.020|
|lex_nat_works|✅ proved - incomplete|shostak|0.082|
|radixsort_nat_works_TCC1|✅ proved - incomplete|shostak|0.073|
|radixsort_nat_works|✅ proved - incomplete|shostak|0.706|

## `ford_johnson`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|t_TCC1|✅ proved - complete|shostak|1.087|
|t_is_increasing|✅ proved - complete|shostak|1.167|
|t_is_unbounded|✅ proved - complete|shostak|0.315|
|t_qinversible_TCC1|✅ proved - complete|shostak|0.020|
|t_qinversible|✅ proved - complete|shostak|0.357|
|maxk_TCC1|✅ proved - complete|shostak|0.020|
|maxk_TCC2|✅ proved - complete|shostak|0.308|
|maxk_correction|✅ proved - complete|shostak|0.135|
|upToOneIsCorrectAll_TCC1|✅ proved - complete|shostak|0.040|
|upToOneIsCorrectAll_TCC2|✅ proved - incomplete|shostak|0.121|
|upToOneIsCorrectAll_TCC3|✅ proved - complete|shostak|0.030|
|upToOneIsCorrectAll|✅ proved - incomplete|shostak|0.161|
|upToOnePreservesIndx_TCC1|✅ proved - incomplete|shostak|0.100|
|upToOnePreservesIndx_TCC2|✅ proved - complete|shostak|0.055|
|upToOnePreservesIndx|✅ proved - incomplete|shostak|0.428|
|bin_search_TCC1|✅ proved - complete|shostak|0.020|
|bin_search_TCC2|✅ proved - complete|shostak|0.030|
|bin_search_TCC3|✅ proved - complete|shostak|0.040|
|bin_search_TCC4|✅ proved - complete|shostak|0.066|
|bin_search_TCC5|✅ proved - complete|shostak|0.080|
|bin_search_TCC6|✅ proved - complete|shostak|0.075|
|bin_search_TCC7|✅ proved - complete|shostak|0.332|
|bin_search_TCC8|✅ proved - complete|shostak|0.085|
|bin_search_TCC9|✅ proved - complete|shostak|0.465|
|bin_search_TCC10|✅ proved - complete|shostak|0.276|
|bin_search_TCC11|✅ proved - complete|shostak|0.277|
|bin_search_TCC12|✅ proved - complete|shostak|0.085|
|b_search_bound|✅ proved - complete|shostak|0.942|
|b_search_preserves_sorting_TCC1|✅ proved - complete|shostak|0.079|
|b_search_preserves_sorting_TCC2|✅ proved - complete|shostak|0.118|
|b_search_preserves_sorting_TCC3|✅ proved - complete|shostak|0.114|
|b_search_preserves_sorting|✅ proved - incomplete|shostak|4.554|
|b_search_removeSon_TCC1|✅ proved - complete|shostak|0.042|
|b_search_removeSon_TCC2|✅ proved - complete|shostak|0.091|
|b_search_removeSon_TCC3|✅ proved - complete|shostak|0.050|
|b_search_removeSon_TCC4|✅ proved - complete|shostak|0.040|
|b_search_removeSon|✅ proved - complete|shostak|7.652|
|PartialERforK?_TCC1|✅ proved - complete|shostak|0.020|
|PartialERforK?_TCC2|✅ proved - complete|shostak|0.120|
|PartialERforK?_TCC3|✅ proved - incomplete|shostak|0.074|
|PartialERforK?_TCC4|✅ proved - incomplete|shostak|0.150|
|PartialERforK?_TCC5|✅ proved - incomplete|shostak|0.130|
|oddNstructDeconstruction_TCC1|✅ proved - incomplete|shostak|0.050|
|oddNstructDeconstruction_TCC2|✅ proved - incomplete|shostak|0.066|
|oddNstructDeconstruction_TCC3|✅ proved - incomplete|shostak|0.020|
|oddNstructDeconstruction|✅ proved - incomplete|shostak|1.037|
|nstructER_vs_nstructER_basic_TCC1|✅ proved - incomplete|shostak|0.030|
|nstructER_vs_nstructER_basic_TCC2|✅ proved - incomplete|shostak|0.068|
|nstructER_vs_nstructER_basic|✅ proved - incomplete|shostak|0.460|
|occ_in_rest_TCC1|✅ proved - complete|shostak|0.020|
|occ_in_rest|✅ proved - incomplete|shostak|0.029|
|occ_in_removeson|✅ proved - incomplete|shostak|0.000|
|occ_in_insert|✅ proved - incomplete|shostak|3.422|
|insert_removeson_permutation_TCC1|✅ proved - complete|shostak|0.040|
|insert_removeson_permutation|✅ proved - incomplete|shostak|0.089|
|insertSonPreservesPartialERforK_TCC1|✅ proved - complete|shostak|0.093|
|insertSonPreservesPartialERforK_TCC2|✅ proved - complete|shostak|0.345|
|insertSonPreservesPartialERforK_TCC3|✅ proved - incomplete|shostak|0.050|
|insertSonPreservesPartialERforK_TCC4|✅ proved - incomplete|shostak|0.139|
|insertSonPreservesPartialERforK_TCC5|✅ proved - incomplete|shostak|0.145|
|insertSonPreservesPartialERforK_TCC6|✅ proved - incomplete|shostak|0.060|
|insertSonPreservesPartialERforK_TCC7|✅ proved - incomplete|shostak|0.141|
|insertSonPreservesPartialERforK_TCC8|✅ proved - incomplete|shostak|0.963|
|insertSonPreservesPartialERforK_TCC9|✅ proved - incomplete|shostak|0.511|
|insertSonPreservesPartialERforK_TCC10|✅ proved - incomplete|shostak|0.283|
|insertSonPreservesPartialERforK_TCC11|✅ proved - incomplete|shostak|0.115|
|insertSonPreservesPartialERforK|✅ proved - incomplete|shostak|7.647|
|insertCarPreservesPartialERforK_TCC1|✅ proved - complete|shostak|0.085|
|insertCarPreservesPartialERforK_TCC2|✅ proved - complete|shostak|0.171|
|insertCarPreservesPartialERforK_TCC3|✅ proved - incomplete|shostak|0.060|
|insertCarPreservesPartialERforK_TCC4|✅ proved - incomplete|shostak|0.063|
|insertCarPreservesPartialERforK_TCC5|✅ proved - incomplete|shostak|0.423|
|insertCarPreservesPartialERforK_TCC6|✅ proved - incomplete|shostak|0.110|
|insertCarPreservesPartialERforK_TCC7|✅ proved - incomplete|shostak|0.117|
|insertCarPreservesPartialERforK_TCC8|✅ proved - incomplete|shostak|0.122|
|insertCarPreservesPartialERforK_TCC9|✅ proved - incomplete|shostak|0.056|
|insertCarPreservesPartialERforK|✅ proved - incomplete|shostak|1.195|
|binsert_tk_interval_TCC1|✅ proved - complete|shostak|0.098|
|binsert_tk_interval_TCC2|✅ proved - complete|shostak|0.056|
|binsert_tk_interval_TCC3|✅ proved - incomplete|shostak|0.040|
|binsert_tk_interval_TCC4|✅ proved - incomplete|shostak|0.056|
|binsert_tk_interval_TCC5|✅ proved - incomplete|shostak|0.119|
|binsert_tk_interval_TCC6|✅ proved - incomplete|shostak|0.442|
|binsert_tk_interval_TCC7|✅ proved - incomplete|shostak|0.155|
|binsert_tk_interval_TCC8|✅ proved - incomplete|shostak|0.046|
|binsert_tk_interval_TCC9|✅ proved - incomplete|shostak|0.086|
|binsert_tk_interval_TCC10|✅ proved - incomplete|shostak|0.076|
|binsert_tk_interval_TCC11|✅ proved - incomplete|shostak|0.161|
|binsert_tk_interval_TCC12|✅ proved - incomplete|shostak|0.710|
|binsert_tk_interval_TCC13|✅ proved - incomplete|shostak|0.220|
|binsert_tk_interval_TCC14|✅ proved - incomplete|shostak|0.160|
|binsert_tk_interval_TCC15|✅ proved - incomplete|shostak|0.598|
|binsert_tk_interval_TCC16|✅ proved - incomplete|shostak|0.210|
|binsert_tk_interval_TCC17|✅ proved - incomplete|shostak|0.122|
|binsert_tk_interval_TCC18|✅ proved - incomplete|shostak|0.069|
|binsert_tk_interval_TCC19|✅ proved - incomplete|shostak|0.182|
|binsert_tk_interval_length|✅ proved - incomplete|shostak|1.673|
|binsert_tk_interval_preserves_indx_TCC1|✅ proved - incomplete|shostak|0.050|
|binsert_tk_interval_preserves_indx_TCC2|✅ proved - incomplete|shostak|0.040|
|binsert_tk_interval_preserves_indx|✅ proved - incomplete|shostak|0.000|
|up_partialER_TCC1|✅ proved - incomplete|shostak|0.041|
|up_partialER_TCC2|✅ proved - complete|shostak|0.040|
|up_partialER_TCC3|✅ proved - incomplete|shostak|0.043|
|up_partialER_TCC4|✅ proved - incomplete|shostak|0.063|
|up_partialER_TCC5|✅ proved - incomplete|shostak|0.075|
|up_partialER|✅ proved - incomplete|shostak|3.154|
|binsert_tk_interval_preserves_oddList|✅ proved - incomplete|shostak|1.084|
|binsert_tk_interval_gives_permutation|✅ proved - incomplete|shostak|3.610|
|PartialERforK_equiv_TCC1|✅ proved - complete|shostak|0.128|
|PartialERforK_equiv_TCC2|✅ proved - incomplete|shostak|0.189|
|PartialERforK_equiv|✅ proved - incomplete|shostak|1.065|
|basis_PartialERforK_equiv_TCC1|✅ proved - complete|shostak|0.056|
|basis_PartialERforK_equiv_TCC2|✅ proved - complete|shostak|0.244|
|basis_PartialERforK_equiv_TCC3|✅ proved - incomplete|shostak|0.020|
|basis_PartialERforK_equiv_TCC4|✅ proved - incomplete|shostak|0.276|
|basis_PartialERforK_equiv_TCC5|✅ proved - incomplete|shostak|0.089|
|basis_PartialERforK_equiv_TCC6|✅ proved - incomplete|shostak|0.316|
|basis_PartialERforK_equiv_TCC7|✅ proved - incomplete|shostak|1.605|
|basis_PartialERforK_equiv|✅ proved - incomplete|shostak|3.580|
|binsert_one_level_TCC1|✅ proved - complete|shostak|0.080|
|binsert_one_level_TCC2|✅ proved - complete|shostak|0.227|
|binsert_one_level_TCC3|✅ proved - incomplete|shostak|0.096|
|binsert_one_level_TCC4|✅ proved - incomplete|shostak|0.110|
|binsert_one_level_TCC5|✅ proved - incomplete|shostak|0.100|
|binsert_one_level_TCC6|✅ proved - incomplete|shostak|0.086|
|binsert_one_level_TCC7|✅ proved - incomplete|shostak|0.000|
|binsert_one_level_TCC8|✅ proved - incomplete|shostak|0.467|
|binsert_one_level_TCC9|✅ proved - incomplete|shostak|0.050|
|binsert_one_level_TCC10|✅ proved - incomplete|shostak|0.060|
|binsert_one_level_TCC11|✅ proved - incomplete|shostak|0.399|
|binsert_one_level_TCC12|✅ proved - incomplete|shostak|0.165|
|binsert_one_level_TCC13|✅ proved - incomplete|shostak|0.245|
|binsert_one_level_TCC14|✅ proved - incomplete|shostak|0.632|
|binsert_one_level_TCC15|✅ proved - incomplete|shostak|0.717|
|binsert_one_level_TCC16|✅ proved - incomplete|shostak|0.656|
|binsert_one_level_TCC17|✅ proved - incomplete|shostak|0.057|
|binsert_one_level_TCC18|✅ proved - incomplete|shostak|0.073|
|binsert_one_level_length_TCC1|✅ proved - complete|shostak|0.040|
|binsert_one_level_length_TCC2|✅ proved - complete|shostak|0.020|
|binsert_one_level_length_TCC3|✅ proved - complete|shostak|0.048|
|binsert_one_level_length_TCC4|✅ proved - complete|shostak|0.146|
|binsert_one_level_length_TCC5|✅ proved - incomplete|shostak|0.185|
|binsert_one_level_length|✅ proved - incomplete|shostak|8.040|
|binsert_one_level_gives_permutation|✅ proved - incomplete|shostak|8.670|
|binsert_one_level_go_to_nstruct_TCC1|✅ proved - incomplete|shostak|0.060|
|binsert_one_level_go_to_nstruct_TCC2|✅ proved - incomplete|shostak|0.111|
|binsert_one_level_go_to_nstruct|✅ proved - incomplete|shostak|14.098|
|nstructER_basic_equiv_TCC1|✅ proved - incomplete|shostak|0.161|
|nstructER_basic_equiv_TCC2|✅ proved - incomplete|shostak|0.273|
|nstructER_basic_equiv|✅ proved - incomplete|shostak|0.533|
|seqfjFatten_TCC1|✅ proved - incomplete|shostak|0.020|
|seqfjFatten_TCC2|✅ proved - incomplete|shostak|0.187|
|seqfjFatten_TCC3|✅ proved - incomplete|shostak|0.328|
|seqfjFatten_TCC4|✅ proved - incomplete|shostak|0.313|
|seqfjFatten_TCC5|✅ proved - incomplete|shostak|0.066|
|seqfjFatten_length|✅ proved - incomplete|shostak|0.223|
|seqfjFatten_gives_permutation|✅ proved - incomplete|shostak|0.703|
|seqfjFatten_gives_down_nstructER_basic_TCC1|✅ proved - incomplete|shostak|0.040|
|seqfjFatten_gives_down_nstructER_basic|✅ proved - incomplete|shostak|0.300|
|mergeInsertion_TCC1|✅ proved - incomplete|shostak|0.020|
|mergeInsertion_TCC2|✅ proved - incomplete|shostak|0.091|
|mergeInsertion_TCC3|✅ proved - incomplete|shostak|0.711|
|mergeInsertion_is_ok|✅ proved - incomplete|shostak|0.242|

## `firt_phase_ford_johnson`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|log_exp_TCC1|✅ proved - complete|shostak|0.020|
|log_exp_TCC2|✅ proved - complete|shostak|0.185|
|log_exp|✅ proved - incomplete|shostak|0.175|
|is_sorted?_TCC1|✅ proved - complete|shostak|0.060|
|add_fold_TCC1|✅ proved - incomplete|shostak|0.040|
|add_fold_TCC2|✅ proved - incomplete|shostak|0.042|
|add_fold_TCC3|✅ proved - incomplete|shostak|0.087|
|add_fold_TCC4|✅ proved - incomplete|shostak|0.080|
|nodes_TCC1|✅ proved - incomplete|shostak|0.695|
|map_TCC1|✅ proved - incomplete|shostak|0.021|
|map_TCC2|✅ proved - incomplete|shostak|0.060|
|map_TCC3|✅ proved - complete|shostak|0.020|
|map_TCC4|✅ proved - incomplete|shostak|0.090|
|permutation_equiv|✅ proved - incomplete|shostak|0.593|
|compare2to2_TCC1|✅ proved - complete|shostak|0.090|
|compare2to2_TCC2|✅ proved - complete|shostak|0.093|
|compare2to2_TCC3|✅ proved - complete|shostak|0.120|
|seqfjBottleneck_TCC1|✅ proved - complete|shostak|0.105|
|nstruct?_TCC1|✅ proved - incomplete|shostak|0.050|
|nstruct?_TCC2|✅ proved - complete|shostak|0.040|
|length_odd_TCC1|✅ proved - complete|shostak|0.046|
|length_odd_TCC2|✅ proved - complete|shostak|0.020|
|nstructER?_TCC1|✅ proved - incomplete|shostak|0.060|
|plain_finseqfj_nstructER0_TCC1|✅ proved - incomplete|shostak|0.067|
|plain_finseqfj_nstructER0|✅ proved - incomplete|shostak|0.175|
|occ_list_vs_fjnodes|✅ proved - incomplete|shostak|0.150|
|comparePeservesElements|✅ proved - incomplete|shostak|6.116|
|seqfjBottPreservesElements|✅ proved - incomplete|shostak|0.211|
|oneStepCorrectionER_TCC1|✅ proved - incomplete|shostak|0.075|
|oneStepCorrectionER_TCC2|✅ proved - incomplete|shostak|0.264|
|oneStepCorrectionER|✅ proved - incomplete|shostak|2.640|
|correctionER_TCC1|✅ proved - incomplete|shostak|0.020|
|correctionER_TCC2|✅ proved - incomplete|shostak|0.137|
|correctionER_TCC3|✅ proved - incomplete|shostak|0.066|
|correctionER|✅ proved - incomplete|shostak|0.926|
|lengthBottleneckIs1|✅ proved - incomplete|shostak|0.427|
|seqfjBottleneck_works|✅ proved - incomplete|shostak|0.189|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib/pvsio_utils/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230712-static-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230710-tcc-gen.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230707-defattach.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230706-extrategies.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`|
