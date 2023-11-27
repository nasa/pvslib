# Summary for `sorting`
Run started at 20:27:33 11/24/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **649**   | **649**    | **649**    | **0**  | **3:47.386 s**   |
|top|0|0|0|0|0.000|
|quicksort|21|21|21|0|3.292|
|total_preorder|2|2|2|0|0.020|
|sorting|18|18|18|0|1.553|
|sorting_aux|70|70|70|0|6.381|
|mergesort|17|17|17|0|6.039|
|insertionsort|11|11|11|0|1.025|
|insertionsort_fs|12|12|12|0|3.764|
|sorting_seq|58|58|58|0|9.630|
|sorting_min|22|22|22|0|7.409|
|bubblesort|32|32|32|0|5.447|
|heapsort|58|58|58|0|1:26.527|
|maxsort|38|38|38|0|6.978|
|binsertionsort|40|40|40|0|7.200|
|radix_sort|20|20|20|0|0.835|
|radix_sort_nat|30|30|30|0|10.509|
|ford_johnson|163|163|163|0|1:1.817|
|firt_phase_ford_johnson|37|37|37|0|8.960|
## Detailed Summary 
## `top`
No formula declaration found.
## `quicksort`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|leq_elements_TCC1|✅ proved - complete|shostak|0.052|
|leq_elements_TCC2|✅ proved - complete|shostak|0.030|
|g_elements_TCC1|✅ proved - complete|shostak|0.040|
|g_elements_TCC2|✅ proved - complete|shostak|0.030|
|leq_elements_size|✅ proved - complete|shostak|0.098|
|g_elements_size|✅ proved - complete|shostak|0.109|
|same_occurrence_leq|✅ proved - complete|shostak|0.186|
|same_occurrence_g|✅ proved - complete|shostak|0.157|
|quick_sort_TCC1|✅ proved - complete|shostak|0.115|
|quick_sort_TCC2|✅ proved - complete|shostak|0.046|
|g_leq_car_size_TCC1|✅ proved - complete|shostak|0.020|
|g_leq_car_size|✅ proved - complete|shostak|0.205|
|quick_sort_size|✅ proved - complete|shostak|0.178|
|leq_elements_works|✅ proved - complete|shostak|0.106|
|g_elements_works|✅ proved - complete|shostak|0.101|
|quick_sort_is_permutation|✅ proved - complete|shostak|0.348|
|append_null_in_sorted_is_sorted|✅ proved - complete|shostak|0.042|
|cons_in_sorted_TCC1|✅ proved - complete|shostak|0.030|
|cons_in_sorted|✅ proved - complete|shostak|0.106|
|quick_sort_is_sorted|✅ proved - complete|shostak|1.280|
|quick_sort_works|✅ proved - complete|shostak|0.013|

## `total_preorder`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|total_preorder_is_preorder|✅ proved - complete|shostak|0.010|
|total_order_is_total_preorder|✅ proved - complete|shostak|0.010|

## `sorting`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|lt_le|✅ proved - complete|shostak|0.013|
|gt_not_le|✅ proved - complete|shostak|0.010|
|search_TCC1|✅ proved - complete|shostak|0.010|
|search_TCC2|✅ proved - complete|shostak|0.036|
|not_in_l_gives_lenght_l|✅ proved - complete|shostak|0.119|
|not_member_gives_length|✅ proved - complete|shostak|0.020|
|search_works_TCC1|✅ proved - complete|shostak|0.101|
|search_works|✅ proved - complete|shostak|0.104|
|search_min_index|✅ proved - complete|shostak|0.137|
|search_in_rev_max_index|✅ proved - complete|shostak|0.077|
|search_in_append_of_lists_key_in_the_first|✅ proved - complete|shostak|0.202|
|search_in_append_of_lists_key_not_member_of_the_first|✅ proved - complete|shostak|0.148|
|search_in_append_of_lists_with_searched_key|✅ proved - complete|shostak|0.148|
|is_sorted?_TCC1|✅ proved - complete|shostak|0.044|
|is_sorted_implies_monotone_TCC1|✅ proved - complete|shostak|0.010|
|is_sorted_implies_monotone|✅ proved - complete|shostak|0.277|
|cdr_of_sorted_is_sorted_TCC1|✅ proved - complete|shostak|0.020|
|cdr_of_sorted_is_sorted|✅ proved - complete|shostak|0.077|

## `sorting_aux`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|elim_list_TCC1|✅ proved - complete|shostak|0.010|
|elim_list_TCC2|✅ proved - complete|shostak|0.020|
|elim_list_TCC3|✅ proved - complete|shostak|0.020|
|elim_list_TCC4|✅ proved - complete|shostak|0.020|
|elim_list_length_TCC1|✅ proved - complete|shostak|0.017|
|elim_list_length|✅ proved - complete|shostak|0.117|
|preservation_contents_TCC1|✅ proved - complete|shostak|0.020|
|preservation_contents|✅ proved - complete|shostak|0.058|
|nth_implies_member|✅ proved - complete|shostak|0.112|
|member_implies_exists_nth|✅ proved - complete|shostak|0.192|
|nth_of_list_is_nth_append_list_TCC1|✅ proved - complete|shostak|0.037|
|nth_of_list_is_nth_append_list|✅ proved - complete|shostak|0.124|
|nth_of_cons_TCC1|✅ proved - complete|shostak|0.027|
|nth_of_cons_TCC2|✅ proved - complete|shostak|0.010|
|nth_of_cons_TCC3|✅ proved - complete|shostak|0.040|
|nth_of_cons|✅ proved - complete|shostak|0.028|
|nth_of_append_TCC1|✅ proved - complete|shostak|0.030|
|nth_of_append_TCC2|✅ proved - complete|shostak|0.038|
|nth_of_append|✅ proved - complete|shostak|0.478|
|null_rev_null|✅ proved - complete|shostak|0.020|
|nth_member_TCC1|✅ proved - complete|shostak|0.010|
|nth_member|✅ proved - complete|shostak|0.122|
|car_rev_TCC1|✅ proved - complete|shostak|0.020|
|car_rev_TCC2|✅ proved - complete|shostak|0.036|
|car_rev_TCC3|✅ proved - complete|shostak|0.030|
|car_rev|✅ proved - complete|shostak|0.057|
|nth_rev_zero_TCC1|✅ proved - complete|shostak|0.030|
|nth_rev_zero_TCC2|✅ proved - complete|shostak|0.077|
|nth_rev_zero|✅ proved - complete|shostak|0.456|
|nth_rev_last_TCC1|✅ proved - complete|shostak|0.020|
|nth_rev_last_TCC2|✅ proved - complete|shostak|0.047|
|nth_rev_last|✅ proved - complete|shostak|0.070|
|nth_append_TCC1|✅ proved - complete|shostak|0.068|
|nth_append_TCC2|✅ proved - complete|shostak|0.010|
|nth_append|✅ proved - complete|shostak|0.124|
|nth_rev_TCC1|✅ proved - complete|shostak|0.077|
|nth_rev|✅ proved - complete|shostak|0.427|
|occurrences_TCC1|✅ proved - complete|shostak|0.020|
|occurrences_TCC2|✅ proved - complete|shostak|0.027|
|occurrences_TCC3|✅ proved - complete|shostak|0.030|
|occurrences_of_nth_element|✅ proved - complete|shostak|0.143|
|occurrences_of_app|✅ proved - complete|shostak|0.204|
|cons_of_perm_is_permutation|✅ proved - complete|shostak|0.017|
|ocurrence_list_has_element|✅ proved - complete|shostak|0.127|
|no_occurrence_implies|✅ proved - complete|shostak|0.125|
|member_implies_pos_occurrences|✅ proved - complete|shostak|0.087|
|occurrences_implies_member|✅ proved - complete|shostak|0.075|
|permutations_preserve_contents|✅ proved - complete|shostak|0.030|
|permutations_is_commutative|✅ proved - complete|shostak|0.027|
|permutations_is_transitive|✅ proved - complete|shostak|0.018|
|cons_elim_is_permutation|✅ proved - complete|shostak|0.200|
|same_occurrences_same_length|✅ proved - complete|shostak|0.177|
|permutations_is_ext_reflexive_TCC1|✅ proved - complete|shostak|0.010|
|permutations_is_ext_reflexive|✅ proved - complete|shostak|0.348|
|suffix_TCC1|✅ proved - complete|shostak|0.045|
|suffix_TCC2|✅ proved - complete|shostak|0.085|
|suffix_TCC3|✅ proved - complete|shostak|0.070|
|app_prefix_suffix|✅ proved - complete|shostak|0.134|
|length_suffix|✅ proved - complete|shostak|0.166|
|length_prefix|✅ proved - complete|shostak|0.131|
|contents_suffix_TCC1|✅ proved - complete|shostak|0.010|
|contents_suffix_TCC2|✅ proved - complete|shostak|0.060|
|contents_suffix_TCC3|✅ proved - complete|shostak|0.010|
|contents_suffix|✅ proved - complete|shostak|0.000|
|contents_prefix_TCC1|✅ proved - complete|shostak|0.054|
|contents_prefix_TCC2|✅ proved - complete|shostak|0.010|
|contents_prefix|✅ proved - complete|shostak|0.655|
|permutations_of_appends|✅ proved - complete|shostak|0.065|
|permutations_of_app_suff|✅ proved - complete|shostak|0.056|
|permutations_of_app_pref|✅ proved - complete|shostak|0.066|

## `mergesort`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|merge_TCC1|✅ proved - complete|shostak|0.020|
|merge_TCC2|✅ proved - complete|shostak|0.016|
|merge_TCC3|✅ proved - complete|shostak|0.060|
|merge_TCC4|✅ proved - complete|shostak|0.068|
|merge_size|✅ proved - complete|shostak|0.174|
|merge_occurrence|✅ proved - complete|shostak|0.212|
|merge_is_permutation|✅ proved - complete|shostak|0.037|
|merge_of_sorted_is_sorted|✅ proved - complete|shostak|0.408|
|merge_sort_TCC1|✅ proved - complete|shostak|0.073|
|merge_sort_TCC2|✅ proved - complete|shostak|0.050|
|merge_sort_TCC3|✅ proved - complete|shostak|0.054|
|merge_sort_size|✅ proved - complete|shostak|0.155|
|merge_sort_is_sorted|✅ proved - complete|shostak|0.189|
|merge_sort_is_permutation|✅ proved - complete|shostak|0.250|
|merge_sort_works|✅ proved - complete|shostak|0.010|
|merge_is_conservative|✅ proved - complete|shostak|2.708|
|merge_sort_is_conservative|✅ proved - complete|shostak|1.555|

## `insertionsort`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|insert_TCC1|✅ proved - complete|shostak|0.020|
|insert_TCC2|✅ proved - complete|shostak|0.030|
|occ_in_insert|✅ proved - complete|shostak|0.311|
|insertion_sort_TCC1|✅ proved - complete|shostak|0.020|
|insertion_sort_TCC2|✅ proved - complete|shostak|0.020|
|insert_size|✅ proved - complete|shostak|0.094|
|insert_in_sorted_preserves_sort|✅ proved - complete|shostak|0.284|
|insertionsort_is_sorted|✅ proved - complete|shostak|0.064|
|ins_and_cons_in_perm_is_perm|✅ proved - complete|shostak|0.053|
|insertion_sort_is_permutations|✅ proved - complete|shostak|0.114|
|insertion_sort_works|✅ proved - complete|shostak|0.015|

## `insertionsort_fs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|insertion_TCC1|✅ proved - complete|shostak|0.020|
|insertion_TCC2|✅ proved - incomplete|shostak|0.074|
|length_insertion|✅ proved - incomplete|shostak|0.137|
|occ_in_insert|✅ proved - incomplete|shostak|1.225|
|fs_insertion_sort_TCC1|✅ proved - complete|shostak|0.010|
|fs_insertion_sort_TCC2|✅ proved - incomplete|shostak|0.062|
|fs_insert_size|✅ proved - incomplete|shostak|0.160|
|fs_insert_in_sorted_preserves_sort|✅ proved - incomplete|shostak|1.028|
|fs_insertionsort_is_sorted|✅ proved - incomplete|shostak|0.296|
|fs_ins_and_add_in_perm_is_perm|✅ proved - incomplete|shostak|0.620|
|fs_insertion_sort_is_permutations|✅ proved - incomplete|shostak|0.112|
|fs_insertion_sort_works|✅ proved - incomplete|shostak|0.020|

## `sorting_seq`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|occurrences_TCC1|✅ proved - complete|shostak|0.010|
|occurrences_TCC2|✅ proved - complete|shostak|0.020|
|occurrences_TCC3|✅ proved - complete|shostak|0.072|
|occurrences_TCC4|✅ proved - complete|shostak|0.016|
|occurrences_TCC5|✅ proved - complete|shostak|0.060|
|finseq2list_rec_equivalence_TCC1|✅ proved - complete|shostak|0.010|
|finseq2list_rec_equivalence_TCC2|✅ proved - complete|shostak|0.055|
|finseq2list_rec_equivalence_TCC3|✅ proved - complete|shostak|0.007|
|finseq2list_rec_equivalence|✅ proved - complete|shostak|0.170|
|finseq2lists_for_suffixes_TCC1|✅ proved - complete|shostak|0.017|
|finseq2lists_for_suffixes_TCC2|✅ proved - complete|shostak|0.040|
|finseq2lists_for_suffixes_TCC3|✅ proved - complete|shostak|0.010|
|finseq2lists_for_suffixes|✅ proved - complete|shostak|0.205|
|subseq_is_cdr_TCC1|✅ proved - complete|shostak|0.000|
|subseq_is_cdr_TCC2|✅ proved - complete|shostak|0.030|
|subseq_is_cdr|✅ proved - complete|shostak|0.104|
|same_occ_fseq_list|✅ proved - complete|shostak|0.286|
|perm_fsq_iff_perm_list|✅ proved - complete|shostak|0.051|
|permutations_equiv|✅ proved - complete|shostak|0.033|
|psorted_TCC1|✅ proved - complete|shostak|0.055|
|is_sorted?_TCC1|✅ proved - complete|shostak|0.030|
|is_sorted_equiv|✅ proved - complete|shostak|0.213|
|ind_parent_TCC1|✅ proved - complete|shostak|0.040|
|left_child_TCC1|✅ proved - complete|shostak|0.070|
|right_child_TCC1|✅ proved - complete|shostak|0.067|
|is_p_heap_TCC1|✅ proved - complete|shostak|0.020|
|is_p_heap_TCC2|✅ proved - complete|shostak|0.010|
|is_p_heap_TCC3|✅ proved - complete|shostak|0.095|
|is_p_heap_TCC4|✅ proved - complete|shostak|0.106|
|is_p_heap_TCC5|✅ proved - complete|shostak|0.117|
|is_heap_TCC1|✅ proved - complete|shostak|0.006|
|is_heap_TCC2|✅ proved - complete|shostak|0.020|
|root_is_greatest_in_p_heap_TCC1|✅ proved - complete|shostak|0.010|
|root_is_greatest_in_p_heap_TCC2|✅ proved - complete|shostak|0.010|
|root_is_greatest_in_p_heap_TCC3|✅ proved - complete|shostak|0.050|
|root_is_greatest_in_p_heap|✅ proved - complete|shostak|0.445|
|root_is_greatest_in_heap_TCC1|✅ proved - complete|shostak|0.048|
|root_is_greatest_in_heap|✅ proved - complete|shostak|0.030|
|parent_TCC1|✅ proved - complete|shostak|0.038|
|ind_gc_TCC1|✅ proved - complete|shostak|0.010|
|ind_gc_TCC2|✅ proved - complete|shostak|0.104|
|ind_gc_TCC3|✅ proved - complete|shostak|0.113|
|swap_of_p_heap_TCC1|✅ proved - complete|shostak|0.050|
|swap_of_p_heap|✅ proved - complete|shostak|0.033|
|swap_commutes|✅ proved - complete|shostak|0.052|
|occ_replaces_at_j_TCC1|✅ proved - complete|shostak|0.031|
|occ_replaces_at_j|✅ proved - complete|shostak|0.876|
|swap_occ_at_0_TCC1|✅ proved - complete|shostak|0.010|
|swap_occ_at_0_TCC2|✅ proved - complete|shostak|0.010|
|swap_occ_at_0|✅ proved - complete|shostak|1.100|
|swap_permutes|✅ proved - complete|shostak|0.914|
|swap_of_heap_TCC1|✅ proved - complete|shostak|0.051|
|swap_of_heap_TCC2|✅ proved - complete|shostak|0.050|
|swap_of_heap|✅ proved - complete|shostak|0.088|
|occ_in_insert|✅ proved - incomplete|shostak|1.825|
|occ_in_delete|✅ proved - incomplete|shostak|1.544|
|delete_insert_same_permutes_TCC1|✅ proved - incomplete|shostak|0.020|
|delete_insert_same_permutes|✅ proved - incomplete|shostak|0.073|

## `sorting_min`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|switching_min_TCC1|✅ proved - complete|shostak|0.035|
|switching_min_TCC2|✅ proved - complete|shostak|0.044|
|switching_min_TCC3|✅ proved - complete|shostak|0.160|
|switching_min_TCC4|✅ proved - complete|shostak|0.040|
|reverse_is_permutation|✅ proved - complete|shostak|0.167|
|swch_min_preserves_length|✅ proved - complete|shostak|0.307|
|swch_min_preserves_contents|✅ proved - complete|shostak|0.420|
|swch_min_is_permutation|✅ proved - complete|shostak|0.352|
|last_swch_min_element_is_least_TCC1|✅ proved - complete|shostak|0.064|
|last_swch_min_element_is_least_TCC2|✅ proved - complete|shostak|0.030|
|last_swch_min_element_is_least|✅ proved - complete|shostak|1.006|
|sorting_min_TCC1|✅ proved - complete|shostak|0.049|
|sorting_min_TCC2|✅ proved - complete|shostak|0.249|
|sorting_min_preserves_length|✅ proved - complete|shostak|0.621|
|sorting_min_is_permutations|✅ proved - complete|shostak|0.844|
|swch_min_moves_min_to_end_TCC1|✅ proved - complete|shostak|0.070|
|swch_min_moves_min_to_end_TCC2|✅ proved - complete|shostak|0.076|
|swch_min_moves_min_to_end|✅ proved - complete|shostak|0.126|
|sorting_min_moves_min_to_begining_TCC1|✅ proved - complete|shostak|0.057|
|sorting_min_moves_min_to_begining_TCC2|✅ proved - complete|shostak|0.066|
|sorting_min_moves_min_to_begining|✅ proved - complete|shostak|0.401|
|sorting_min_work|✅ proved - complete|shostak|2.225|

## `bubblesort`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|bubbling_TCC1|✅ proved - complete|shostak|0.020|
|bubbling_TCC2|✅ proved - complete|shostak|0.038|
|bubbling_TCC3|✅ proved - complete|shostak|0.086|
|bubbling_TCC4|✅ proved - complete|shostak|0.020|
|bubbling_TCC5|✅ proved - complete|shostak|0.056|
|bubbling_TCC6|✅ proved - complete|shostak|0.020|
|bubbling_preserves_length|✅ proved - complete|shostak|0.232|
|bubbling_preserves_suffix_TCC1|✅ proved - complete|shostak|0.037|
|bubbling_preserves_suffix|✅ proved - complete|shostak|0.486|
|bubblesort_aux_TCC1|✅ proved - complete|shostak|0.041|
|bubblesort_aux_TCC2|✅ proved - complete|shostak|0.010|
|bubblesort_aux_preserves_length|✅ proved - complete|shostak|0.094|
|bubblesort_TCC1|✅ proved - complete|shostak|0.040|
|bubbling_preseves_contents|✅ proved - complete|shostak|0.659|
|bubbling_preserves_prefix_TCC1|✅ proved - complete|shostak|0.020|
|bubbling_preserves_prefix_TCC2|✅ proved - complete|shostak|0.054|
|bubbling_preserves_prefix|✅ proved - complete|shostak|0.914|
|bubbling_bubbles_TCC1|✅ proved - complete|shostak|0.045|
|bubbling_bubbles_TCC2|✅ proved - complete|shostak|0.040|
|bubbling_bubbles|✅ proved - complete|shostak|0.645|
|bubblesort_aux_preserves_suffix_TCC1|✅ proved - complete|shostak|0.032|
|bubblesort_aux_preserves_suffix|✅ proved - complete|shostak|0.336|
|bubblesort_aux_is_permutation|✅ proved - complete|shostak|0.109|
|bubblesort_aux_preserves_prefix_TCC1|✅ proved - complete|shostak|0.082|
|bubblesort_aux_preserves_prefix_TCC2|✅ proved - complete|shostak|0.010|
|bubblesort_aux_preserves_prefix|✅ proved - complete|shostak|0.434|
|bubblesort_is_permutation|✅ proved - complete|shostak|0.043|
|bubblesort_aux_sorts_prefix_TCC1|✅ proved - complete|shostak|0.040|
|bubblesort_aux_sorts_prefix_TCC2|✅ proved - complete|shostak|0.060|
|bubblesort_aux_sorts_prefix|✅ proved - complete|shostak|0.734|
|bubblesort_is_sorted|✅ proved - complete|shostak|0.000|
|bubblesort_works|✅ proved - complete|shostak|0.010|

## `heapsort`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sink_TCC1|✅ proved - complete|shostak|0.020|
|sink_TCC2|✅ proved - complete|shostak|0.358|
|sink_TCC3|✅ proved - complete|shostak|0.249|
|sink_TCC4|✅ proved - complete|shostak|0.258|
|sink_TCC5|✅ proved - complete|shostak|0.252|
|sink_TCC6|✅ proved - complete|shostak|0.159|
|sink_permutes_TCC1|✅ proved - complete|shostak|0.010|
|sink_permutes|✅ proved - complete|shostak|1.062|
|sink_length|✅ proved - complete|shostak|0.798|
|sink_stable_TCC1|✅ proved - complete|shostak|0.020|
|sink_stable|✅ proved - complete|shostak|3.768|
|sink_in_stable_TCC1|✅ proved - complete|shostak|0.016|
|sink_in_stable|✅ proved - complete|shostak|1.993|
|sink_interval_children_stable_TCC1|✅ proved - complete|shostak|0.130|
|sink_interval_children_stable_TCC2|✅ proved - complete|shostak|0.259|
|sink_interval_children_stable_TCC3|✅ proved - complete|shostak|0.362|
|sink_interval_children_stable_TCC4|✅ proved - complete|shostak|0.240|
|sink_interval_children_stable_TCC5|✅ proved - complete|shostak|0.481|
|sink_interval_children_stable_TCC6|✅ proved - complete|shostak|0.256|
|sink_interval_children_stable_TCC7|✅ proved - complete|shostak|0.306|
|sink_interval_children_stable|✅ proved - complete|shostak|5.113|
|is_heap_from_to_TCC1|✅ proved - complete|shostak|0.010|
|is_heap_from_to_TCC2|✅ proved - complete|shostak|0.010|
|is_heap_from_to_TCC3|✅ proved - complete|shostak|0.179|
|is_heap_from_to_TCC4|✅ proved - complete|shostak|0.184|
|is_heap_from_to_TCC5|✅ proved - complete|shostak|0.151|
|is_heap_from_to_TCC6|✅ proved - complete|shostak|0.144|
|is_heap_from_to|✅ proved - complete|shostak|53.782|
|heapify_TCC1|✅ proved - complete|shostak|0.040|
|heapify_TCC2|✅ proved - complete|shostak|0.045|
|heapify_TCC3|✅ proved - complete|shostak|0.059|
|heapify_TCC4|✅ proved - complete|shostak|0.020|
|heapify_TCC5|✅ proved - complete|shostak|0.040|
|heapify_TCC6|✅ proved - complete|shostak|0.034|
|heapify_length_TCC1|✅ proved - complete|shostak|0.030|
|heapify_length|✅ proved - complete|shostak|0.000|
|heapify_permutes|✅ proved - complete|shostak|0.839|
|heapify_heapifies_TCC1|✅ proved - complete|shostak|0.020|
|heapify_heapifies|✅ proved - complete|shostak|3.290|
|heapsort_aux_TCC1|✅ proved - complete|shostak|0.010|
|heapsort_aux_TCC2|✅ proved - complete|shostak|0.020|
|heapsort_aux_TCC3|✅ proved - complete|shostak|0.020|
|heapsort_aux_TCC4|✅ proved - complete|shostak|0.036|
|heapsort_aux_TCC5|✅ proved - complete|shostak|0.010|
|heapsort_aux_TCC6|✅ proved - complete|shostak|0.179|
|heapsort_aux_TCC7|✅ proved - complete|shostak|0.010|
|heapsort_aux_permutes|✅ proved - complete|shostak|0.425|
|heapsort_aux_length|✅ proved - complete|shostak|0.298|
|heapsort_aux_psorts_TCC1|✅ proved - complete|shostak|0.010|
|heapsort_aux_psorts_TCC2|✅ proved - complete|shostak|0.010|
|heapsort_aux_psorts_TCC3|✅ proved - complete|shostak|0.043|
|heapsort_aux_psorts_TCC4|✅ proved - complete|shostak|0.030|
|heapsort_aux_psorts_TCC5|✅ proved - complete|shostak|0.132|
|heapsort_aux_psorts_TCC6|✅ proved - complete|shostak|0.020|
|heapsort_aux_psorts|✅ proved - complete|shostak|6.970|
|heapsort_TCC1|✅ proved - complete|shostak|0.054|
|heapsort_TCC2|✅ proved - complete|shostak|0.030|
|heapsort_works|✅ proved - complete|shostak|3.233|

## `maxsort`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|move_max_TCC1|✅ proved - complete|shostak|0.021|
|move_max_TCC2|✅ proved - complete|shostak|0.010|
|move_max_TCC3|✅ proved - complete|shostak|0.010|
|move_max_TCC4|✅ proved - complete|shostak|0.010|
|move_max_TCC5|✅ proved - complete|shostak|0.010|
|move_max_TCC6|✅ proved - complete|shostak|0.034|
|move_max_TCC7|✅ proved - complete|shostak|0.050|
|move_max_TCC8|✅ proved - complete|shostak|0.030|
|move_max_TCC9|✅ proved - complete|shostak|0.047|
|move_max_TCC10|✅ proved - complete|shostak|0.020|
|move_max_length_TCC1|✅ proved - complete|shostak|0.010|
|move_max_length|✅ proved - complete|shostak|0.325|
|move_max_preserves_out_TCC1|✅ proved - complete|shostak|0.015|
|move_max_preserves_out|✅ proved - complete|shostak|0.815|
|move_max_preserves_TCC1|✅ proved - complete|shostak|0.042|
|move_max_preserves|✅ proved - complete|shostak|0.000|
|move_max_preserves2_TCC1|✅ proved - complete|shostak|0.016|
|move_max_preserves2_TCC2|✅ proved - complete|shostak|0.020|
|move_max_preserves2|✅ proved - complete|shostak|1.249|
|move_max_works_TCC1|✅ proved - complete|shostak|0.025|
|move_max_works_TCC2|✅ proved - complete|shostak|0.020|
|move_max_works|✅ proved - complete|shostak|1.830|
|move_max_permutes|✅ proved - complete|shostak|0.378|
|maxsort_aux_TCC1|✅ proved - complete|shostak|0.013|
|maxsort_aux_TCC2|✅ proved - complete|shostak|0.020|
|maxsort_aux_TCC3|✅ proved - complete|shostak|0.010|
|maxsort_aux_length|✅ proved - complete|shostak|0.102|
|maxsort_aux_psorts_TCC1|✅ proved - complete|shostak|0.012|
|maxsort_aux_psorts_TCC2|✅ proved - complete|shostak|0.010|
|maxsort_aux_psorts_TCC3|✅ proved - complete|shostak|0.030|
|maxsort_aux_psorts_TCC4|✅ proved - complete|shostak|0.030|
|maxsort_aux_psorts|✅ proved - complete|shostak|0.849|
|maxsort_aux_permutes_TCC1|✅ proved - complete|shostak|0.010|
|maxsort_aux_permutes|✅ proved - complete|shostak|0.230|
|maxsort_TCC1|✅ proved - complete|shostak|0.020|
|maxsort_sorts|✅ proved - complete|shostak|0.404|
|maxsort_permutes|✅ proved - complete|shostak|0.238|
|maxsort_works|✅ proved - complete|shostak|0.013|

## `binsertionsort`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|bin_search_TCC1|✅ proved - complete|shostak|0.020|
|bin_search_TCC2|✅ proved - complete|shostak|0.010|
|bin_search_TCC3|✅ proved - complete|shostak|0.020|
|bin_search_TCC4|✅ proved - complete|shostak|0.040|
|bin_search_TCC5|✅ proved - complete|shostak|0.044|
|bin_search_TCC6|✅ proved - complete|shostak|0.040|
|bin_search_TCC7|✅ proved - complete|shostak|0.221|
|bin_search_TCC8|✅ proved - complete|shostak|0.056|
|bin_search_TCC9|✅ proved - complete|shostak|0.267|
|bin_search_TCC10|✅ proved - complete|shostak|0.168|
|bin_search_TCC11|✅ proved - complete|shostak|0.159|
|bin_search_TCC12|✅ proved - complete|shostak|0.050|
|binsertionsort_aux_TCC1|✅ proved - complete|shostak|0.010|
|binsertionsort_aux_TCC2|✅ proved - incomplete|shostak|0.030|
|binsertionsort_aux_TCC3|✅ proved - incomplete|shostak|0.113|
|binsertionsort_aux_TCC4|✅ proved - incomplete|shostak|0.126|
|binsertionsort_aux_TCC5|✅ proved - incomplete|shostak|0.067|
|binsertionsort_aux_TCC6|✅ proved - incomplete|shostak|0.124|
|binsertionsort_aux_TCC7|✅ proved - incomplete|shostak|0.151|
|binsertionsort_aux_TCC8|✅ proved - complete|shostak|0.010|
|binsertionsort_aux_TCC9|✅ proved - complete|shostak|0.020|
|binsertionsort_TCC1|✅ proved - complete|shostak|0.010|
|binsertionsort_TCC2|✅ proved - complete|shostak|0.017|
|b_search_bound|✅ proved - complete|shostak|0.493|
|b_search_preserves_sorting_TCC1|✅ proved - complete|shostak|0.038|
|b_search_preserves_sorting_TCC2|✅ proved - complete|shostak|0.060|
|b_search_preserves_sorting_TCC3|✅ proved - complete|shostak|0.070|
|b_search_preserves_sorting|✅ proved - incomplete|shostak|2.170|
|b_search_translation_TCC1|✅ proved - complete|shostak|0.010|
|b_search_translation_TCC2|✅ proved - complete|shostak|0.010|
|b_search_translation_TCC3|✅ proved - complete|shostak|0.010|
|b_search_translation_TCC4|✅ proved - complete|shostak|0.050|
|b_search_translation_TCC5|✅ proved - complete|shostak|0.040|
|b_search_translation|✅ proved - complete|shostak|1.655|
|bs_aux_perm|✅ proved - incomplete|shostak|0.656|
|bs_aux_sorts_TCC1|✅ proved - complete|shostak|0.010|
|bs_aux_sorts|✅ proved - incomplete|shostak|0.000|
|binsertion_permutation|✅ proved - incomplete|shostak|0.020|
|binsertion_sorts|✅ proved - incomplete|shostak|0.124|
|binsertionsort_works|✅ proved - incomplete|shostak|0.011|

## `radix_sort`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|radixsort_aux_TCC1|✅ proved - complete|shostak|0.010|
|radixsort_aux_TCC2|✅ proved - complete|shostak|0.010|
|radixsort_aux_TCC3|✅ proved - complete|shostak|0.040|
|radixsort_aux_TCC4|✅ proved - complete|shostak|0.010|
|radixsort_TCC1|✅ proved - complete|shostak|0.005|
|radixsort_permutes|✅ proved - complete|shostak|0.094|
|lex_TCC1|✅ proved - complete|shostak|0.025|
|lex_TCC2|✅ proved - complete|shostak|0.020|
|lex_total_preorder|✅ proved - complete|shostak|0.205|
|merge_sort_lex_sorted_TCC1|✅ proved - complete|shostak|0.010|
|merge_sort_lex_sorted_TCC2|✅ proved - complete|shostak|0.010|
|merge_sort_lex_sorted_TCC3|✅ proved - complete|shostak|0.004|
|merge_sort_lex_sorted_TCC4|✅ proved - complete|shostak|0.040|
|merge_sort_lex_sorted|✅ proved - complete|shostak|0.187|
|radix_sort_is_sorted_TCC1|✅ proved - complete|shostak|0.010|
|radix_sort_is_sorted_TCC2|✅ proved - complete|shostak|0.015|
|radix_sort_is_sorted_TCC3|✅ proved - complete|shostak|0.010|
|radix_sort_is_sorted_TCC4|✅ proved - complete|shostak|0.064|
|radix_sort_is_sorted_TCC5|✅ proved - complete|shostak|0.040|
|radixsort_sorts|✅ proved - complete|shostak|0.026|

## `radix_sort_nat`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|d_nth_TCC1|✅ proved - complete|shostak|0.020|
|d_nth_TCC2|✅ proved - complete|shostak|0.010|
|n_digits_TCC1|✅ proved - incomplete|shostak|0.116|
|max_digits_TCC1|✅ proved - complete|shostak|0.035|
|max_digits_TCC2|✅ proved - complete|shostak|0.020|
|max_digits_TCC3|✅ proved - complete|shostak|0.056|
|max_digits_TCC4|✅ proved - complete|shostak|0.100|
|max_digits_works_TCC1|✅ proved - complete|shostak|0.010|
|max_digits_works|✅ proved - incomplete|shostak|0.341|
|d_nth_zero|✅ proved - incomplete|shostak|0.135|
|d_nth_digits_TCC1|✅ proved - incomplete|shostak|0.020|
|d_nth_digits|✅ proved - incomplete|shostak|0.676|
|d_exp_dec|✅ proved - incomplete|shostak|0.594|
|d_nth_rem|✅ proved - incomplete|shostak|3.155|
|n_digits_power|✅ proved - incomplete|shostak|0.184|
|d_nth_nmod_TCC1|✅ proved - complete|shostak|0.010|
|d_nth_nmod|✅ proved - incomplete|shostak|0.172|
|n_digits_monotone|✅ proved - incomplete|shostak|0.192|
|n_digits_ten_power_TCC1|✅ proved - complete|shostak|0.076|
|n_digits_ten_power|✅ proved - incomplete|shostak|0.282|
|n_digits_nmod_leq|✅ proved - incomplete|shostak|0.063|
|leq_N_TCC1|✅ proved - incomplete|shostak|0.047|
|lex_preserves_TCC1|✅ proved - complete|shostak|0.010|
|lex_preserves|✅ proved - incomplete|shostak|0.149|
|lex_nat_works_aux_TCC1|✅ proved - incomplete|shostak|0.020|
|lex_nat_works_aux|✅ proved - incomplete|shostak|3.476|
|lex_nat_works_TCC1|✅ proved - incomplete|shostak|0.010|
|lex_nat_works|✅ proved - incomplete|shostak|0.044|
|radixsort_nat_works_TCC1|✅ proved - incomplete|shostak|0.045|
|radixsort_nat_works|✅ proved - incomplete|shostak|0.441|

## `ford_johnson`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|t_TCC1|✅ proved - complete|shostak|0.661|
|t_is_increasing|✅ proved - complete|shostak|0.757|
|t_is_unbounded|✅ proved - complete|shostak|0.198|
|t_qinversible_TCC1|✅ proved - complete|shostak|0.010|
|t_qinversible|✅ proved - complete|shostak|0.224|
|maxk_TCC1|✅ proved - complete|shostak|0.003|
|maxk_TCC2|✅ proved - complete|shostak|0.196|
|maxk_correction|✅ proved - complete|shostak|0.076|
|upToOneIsCorrectAll_TCC1|✅ proved - complete|shostak|0.020|
|upToOneIsCorrectAll_TCC2|✅ proved - incomplete|shostak|0.076|
|upToOneIsCorrectAll_TCC3|✅ proved - complete|shostak|0.017|
|upToOneIsCorrectAll|✅ proved - incomplete|shostak|0.096|
|upToOnePreservesIndx_TCC1|✅ proved - incomplete|shostak|0.066|
|upToOnePreservesIndx_TCC2|✅ proved - complete|shostak|0.040|
|upToOnePreservesIndx|✅ proved - incomplete|shostak|0.263|
|bin_search_TCC1|✅ proved - complete|shostak|0.010|
|bin_search_TCC2|✅ proved - complete|shostak|0.020|
|bin_search_TCC3|✅ proved - complete|shostak|0.017|
|bin_search_TCC4|✅ proved - complete|shostak|0.040|
|bin_search_TCC5|✅ proved - complete|shostak|0.050|
|bin_search_TCC6|✅ proved - complete|shostak|0.057|
|bin_search_TCC7|✅ proved - complete|shostak|0.193|
|bin_search_TCC8|✅ proved - complete|shostak|0.056|
|bin_search_TCC9|✅ proved - complete|shostak|0.287|
|bin_search_TCC10|✅ proved - complete|shostak|0.168|
|bin_search_TCC11|✅ proved - complete|shostak|0.158|
|bin_search_TCC12|✅ proved - complete|shostak|0.060|
|b_search_bound|✅ proved - complete|shostak|0.608|
|b_search_preserves_sorting_TCC1|✅ proved - complete|shostak|0.049|
|b_search_preserves_sorting_TCC2|✅ proved - complete|shostak|0.069|
|b_search_preserves_sorting_TCC3|✅ proved - complete|shostak|0.070|
|b_search_preserves_sorting|✅ proved - incomplete|shostak|2.841|
|b_search_removeSon_TCC1|✅ proved - complete|shostak|0.031|
|b_search_removeSon_TCC2|✅ proved - complete|shostak|0.060|
|b_search_removeSon_TCC3|✅ proved - complete|shostak|0.024|
|b_search_removeSon_TCC4|✅ proved - complete|shostak|0.020|
|b_search_removeSon|✅ proved - complete|shostak|4.842|
|PartialERforK?_TCC1|✅ proved - complete|shostak|0.010|
|PartialERforK?_TCC2|✅ proved - complete|shostak|0.080|
|PartialERforK?_TCC3|✅ proved - incomplete|shostak|0.048|
|PartialERforK?_TCC4|✅ proved - incomplete|shostak|0.093|
|PartialERforK?_TCC5|✅ proved - incomplete|shostak|0.073|
|oddNstructDeconstruction_TCC1|✅ proved - incomplete|shostak|0.025|
|oddNstructDeconstruction_TCC2|✅ proved - incomplete|shostak|0.050|
|oddNstructDeconstruction_TCC3|✅ proved - incomplete|shostak|0.010|
|oddNstructDeconstruction|✅ proved - incomplete|shostak|0.000|
|nstructER_vs_nstructER_basic_TCC1|✅ proved - incomplete|shostak|0.025|
|nstructER_vs_nstructER_basic_TCC2|✅ proved - incomplete|shostak|0.034|
|nstructER_vs_nstructER_basic|✅ proved - incomplete|shostak|0.273|
|occ_in_rest_TCC1|✅ proved - complete|shostak|0.010|
|occ_in_rest|✅ proved - incomplete|shostak|0.016|
|occ_in_removeson|✅ proved - incomplete|shostak|1.461|
|occ_in_insert|✅ proved - incomplete|shostak|2.199|
|insert_removeson_permutation_TCC1|✅ proved - complete|shostak|0.030|
|insert_removeson_permutation|✅ proved - incomplete|shostak|0.063|
|insertSonPreservesPartialERforK_TCC1|✅ proved - complete|shostak|0.054|
|insertSonPreservesPartialERforK_TCC2|✅ proved - complete|shostak|0.224|
|insertSonPreservesPartialERforK_TCC3|✅ proved - incomplete|shostak|0.035|
|insertSonPreservesPartialERforK_TCC4|✅ proved - incomplete|shostak|0.086|
|insertSonPreservesPartialERforK_TCC5|✅ proved - incomplete|shostak|0.086|
|insertSonPreservesPartialERforK_TCC6|✅ proved - incomplete|shostak|0.036|
|insertSonPreservesPartialERforK_TCC7|✅ proved - incomplete|shostak|0.086|
|insertSonPreservesPartialERforK_TCC8|✅ proved - incomplete|shostak|0.668|
|insertSonPreservesPartialERforK_TCC9|✅ proved - incomplete|shostak|0.315|
|insertSonPreservesPartialERforK_TCC10|✅ proved - incomplete|shostak|0.188|
|insertSonPreservesPartialERforK_TCC11|✅ proved - incomplete|shostak|0.065|
|insertSonPreservesPartialERforK|✅ proved - incomplete|shostak|4.941|
|insertCarPreservesPartialERforK_TCC1|✅ proved - complete|shostak|0.046|
|insertCarPreservesPartialERforK_TCC2|✅ proved - complete|shostak|0.106|
|insertCarPreservesPartialERforK_TCC3|✅ proved - incomplete|shostak|0.040|
|insertCarPreservesPartialERforK_TCC4|✅ proved - incomplete|shostak|0.042|
|insertCarPreservesPartialERforK_TCC5|✅ proved - incomplete|shostak|0.260|
|insertCarPreservesPartialERforK_TCC6|✅ proved - incomplete|shostak|0.070|
|insertCarPreservesPartialERforK_TCC7|✅ proved - incomplete|shostak|0.073|
|insertCarPreservesPartialERforK_TCC8|✅ proved - incomplete|shostak|0.077|
|insertCarPreservesPartialERforK_TCC9|✅ proved - incomplete|shostak|0.037|
|insertCarPreservesPartialERforK|✅ proved - incomplete|shostak|0.794|
|binsert_tk_interval_TCC1|✅ proved - complete|shostak|0.058|
|binsert_tk_interval_TCC2|✅ proved - complete|shostak|0.030|
|binsert_tk_interval_TCC3|✅ proved - incomplete|shostak|0.027|
|binsert_tk_interval_TCC4|✅ proved - incomplete|shostak|0.037|
|binsert_tk_interval_TCC5|✅ proved - incomplete|shostak|0.076|
|binsert_tk_interval_TCC6|✅ proved - incomplete|shostak|0.275|
|binsert_tk_interval_TCC7|✅ proved - incomplete|shostak|0.096|
|binsert_tk_interval_TCC8|✅ proved - incomplete|shostak|0.026|
|binsert_tk_interval_TCC9|✅ proved - incomplete|shostak|0.047|
|binsert_tk_interval_TCC10|✅ proved - incomplete|shostak|0.040|
|binsert_tk_interval_TCC11|✅ proved - incomplete|shostak|0.087|
|binsert_tk_interval_TCC12|✅ proved - incomplete|shostak|0.455|
|binsert_tk_interval_TCC13|✅ proved - incomplete|shostak|0.141|
|binsert_tk_interval_TCC14|✅ proved - incomplete|shostak|0.099|
|binsert_tk_interval_TCC15|✅ proved - incomplete|shostak|0.364|
|binsert_tk_interval_TCC16|✅ proved - incomplete|shostak|0.140|
|binsert_tk_interval_TCC17|✅ proved - incomplete|shostak|0.075|
|binsert_tk_interval_TCC18|✅ proved - incomplete|shostak|0.035|
|binsert_tk_interval_TCC19|✅ proved - incomplete|shostak|0.117|
|binsert_tk_interval_length|✅ proved - incomplete|shostak|0.000|
|binsert_tk_interval_preserves_indx_TCC1|✅ proved - incomplete|shostak|0.025|
|binsert_tk_interval_preserves_indx_TCC2|✅ proved - incomplete|shostak|0.025|
|binsert_tk_interval_preserves_indx|✅ proved - incomplete|shostak|1.008|
|up_partialER_TCC1|✅ proved - incomplete|shostak|0.020|
|up_partialER_TCC2|✅ proved - complete|shostak|0.025|
|up_partialER_TCC3|✅ proved - incomplete|shostak|0.030|
|up_partialER_TCC4|✅ proved - incomplete|shostak|0.045|
|up_partialER_TCC5|✅ proved - incomplete|shostak|0.051|
|up_partialER|✅ proved - incomplete|shostak|1.958|
|binsert_tk_interval_preserves_oddList|✅ proved - incomplete|shostak|0.662|
|binsert_tk_interval_gives_permutation|✅ proved - incomplete|shostak|2.312|
|PartialERforK_equiv_TCC1|✅ proved - complete|shostak|0.083|
|PartialERforK_equiv_TCC2|✅ proved - incomplete|shostak|0.113|
|PartialERforK_equiv|✅ proved - incomplete|shostak|0.651|
|basis_PartialERforK_equiv_TCC1|✅ proved - complete|shostak|0.040|
|basis_PartialERforK_equiv_TCC2|✅ proved - complete|shostak|0.146|
|basis_PartialERforK_equiv_TCC3|✅ proved - incomplete|shostak|0.021|
|basis_PartialERforK_equiv_TCC4|✅ proved - incomplete|shostak|0.176|
|basis_PartialERforK_equiv_TCC5|✅ proved - incomplete|shostak|0.048|
|basis_PartialERforK_equiv_TCC6|✅ proved - incomplete|shostak|0.197|
|basis_PartialERforK_equiv_TCC7|✅ proved - incomplete|shostak|1.006|
|basis_PartialERforK_equiv|✅ proved - incomplete|shostak|0.330|
|binsert_one_level_TCC1|✅ proved - complete|shostak|0.052|
|binsert_one_level_TCC2|✅ proved - complete|shostak|0.143|
|binsert_one_level_TCC3|✅ proved - incomplete|shostak|0.050|
|binsert_one_level_TCC4|✅ proved - incomplete|shostak|0.072|
|binsert_one_level_TCC5|✅ proved - incomplete|shostak|0.060|
|binsert_one_level_TCC6|✅ proved - incomplete|shostak|0.055|
|binsert_one_level_TCC7|✅ proved - incomplete|shostak|0.637|
|binsert_one_level_TCC8|✅ proved - incomplete|shostak|0.238|
|binsert_one_level_TCC9|✅ proved - incomplete|shostak|0.040|
|binsert_one_level_TCC10|✅ proved - incomplete|shostak|0.045|
|binsert_one_level_TCC11|✅ proved - incomplete|shostak|0.221|
|binsert_one_level_TCC12|✅ proved - incomplete|shostak|0.090|
|binsert_one_level_TCC13|✅ proved - incomplete|shostak|0.167|
|binsert_one_level_TCC14|✅ proved - incomplete|shostak|0.367|
|binsert_one_level_TCC15|✅ proved - incomplete|shostak|0.470|
|binsert_one_level_TCC16|✅ proved - incomplete|shostak|0.410|
|binsert_one_level_TCC17|✅ proved - incomplete|shostak|0.030|
|binsert_one_level_TCC18|✅ proved - incomplete|shostak|0.041|
|binsert_one_level_length_TCC1|✅ proved - complete|shostak|0.021|
|binsert_one_level_length_TCC2|✅ proved - complete|shostak|0.020|
|binsert_one_level_length_TCC3|✅ proved - complete|shostak|0.020|
|binsert_one_level_length_TCC4|✅ proved - complete|shostak|0.093|
|binsert_one_level_length_TCC5|✅ proved - incomplete|shostak|0.105|
|binsert_one_level_length|✅ proved - incomplete|shostak|4.996|
|binsert_one_level_gives_permutation|✅ proved - incomplete|shostak|5.362|
|binsert_one_level_go_to_nstruct_TCC1|✅ proved - incomplete|shostak|0.034|
|binsert_one_level_go_to_nstruct_TCC2|✅ proved - incomplete|shostak|0.070|
|binsert_one_level_go_to_nstruct|✅ proved - incomplete|shostak|8.805|
|nstructER_basic_equiv_TCC1|✅ proved - incomplete|shostak|0.094|
|nstructER_basic_equiv_TCC2|✅ proved - incomplete|shostak|0.175|
|nstructER_basic_equiv|✅ proved - incomplete|shostak|0.333|
|seqfjFatten_TCC1|✅ proved - incomplete|shostak|0.014|
|seqfjFatten_TCC2|✅ proved - incomplete|shostak|0.120|
|seqfjFatten_TCC3|✅ proved - incomplete|shostak|0.205|
|seqfjFatten_TCC4|✅ proved - incomplete|shostak|0.187|
|seqfjFatten_TCC5|✅ proved - incomplete|shostak|0.045|
|seqfjFatten_length|✅ proved - incomplete|shostak|0.146|
|seqfjFatten_gives_permutation|✅ proved - incomplete|shostak|0.443|
|seqfjFatten_gives_down_nstructER_basic_TCC1|✅ proved - incomplete|shostak|0.030|
|seqfjFatten_gives_down_nstructER_basic|✅ proved - incomplete|shostak|0.179|
|mergeInsertion_TCC1|✅ proved - incomplete|shostak|0.020|
|mergeInsertion_TCC2|✅ proved - incomplete|shostak|0.053|
|mergeInsertion_TCC3|✅ proved - incomplete|shostak|0.441|
|mergeInsertion_is_ok|✅ proved - incomplete|shostak|0.159|

## `firt_phase_ford_johnson`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|log_exp_TCC1|✅ proved - complete|shostak|0.014|
|log_exp_TCC2|✅ proved - complete|shostak|0.110|
|log_exp|✅ proved - incomplete|shostak|0.113|
|is_sorted?_TCC1|✅ proved - complete|shostak|0.040|
|add_fold_TCC1|✅ proved - incomplete|shostak|0.030|
|add_fold_TCC2|✅ proved - incomplete|shostak|0.014|
|add_fold_TCC3|✅ proved - incomplete|shostak|0.061|
|add_fold_TCC4|✅ proved - incomplete|shostak|0.047|
|nodes_TCC1|✅ proved - incomplete|shostak|0.440|
|map_TCC1|✅ proved - incomplete|shostak|0.020|
|map_TCC2|✅ proved - incomplete|shostak|0.040|
|map_TCC3|✅ proved - complete|shostak|0.010|
|map_TCC4|✅ proved - incomplete|shostak|0.063|
|permutation_equiv|✅ proved - incomplete|shostak|0.379|
|compare2to2_TCC1|✅ proved - complete|shostak|0.066|
|compare2to2_TCC2|✅ proved - complete|shostak|0.070|
|compare2to2_TCC3|✅ proved - complete|shostak|0.076|
|seqfjBottleneck_TCC1|✅ proved - complete|shostak|0.060|
|nstruct?_TCC1|✅ proved - incomplete|shostak|0.036|
|nstruct?_TCC2|✅ proved - complete|shostak|0.020|
|length_odd_TCC1|✅ proved - complete|shostak|0.030|
|length_odd_TCC2|✅ proved - complete|shostak|0.010|
|nstructER?_TCC1|✅ proved - incomplete|shostak|0.038|
|plain_finseqfj_nstructER0_TCC1|✅ proved - incomplete|shostak|0.040|
|plain_finseqfj_nstructER0|✅ proved - incomplete|shostak|0.122|
|occ_list_vs_fjnodes|✅ proved - incomplete|shostak|0.092|
|comparePeservesElements|✅ proved - incomplete|shostak|3.780|
|seqfjBottPreservesElements|✅ proved - incomplete|shostak|0.143|
|oneStepCorrectionER_TCC1|✅ proved - incomplete|shostak|0.051|
|oneStepCorrectionER_TCC2|✅ proved - incomplete|shostak|0.159|
|oneStepCorrectionER|✅ proved - incomplete|shostak|1.657|
|correctionER_TCC1|✅ proved - incomplete|shostak|0.010|
|correctionER_TCC2|✅ proved - incomplete|shostak|0.108|
|correctionER_TCC3|✅ proved - incomplete|shostak|0.050|
|correctionER|✅ proved - incomplete|shostak|0.579|
|lengthBottleneckIs1|✅ proved - incomplete|shostak|0.254|
|seqfjBottleneck_works|✅ proved - incomplete|shostak|0.128|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Mac OS X (Intel)] (Nov 14, 2020 23:13)|
| Patch Version| n/a|
| Library Path| `/Applications/pvs-7.1.0/pvslib/`<br/>`/Applications/pvs-7.1.0/lib/`<br/>`/Applications/pvs-7.1.0/pvslib/float/`<br/>`/Applications/pvs-7.1.0/pvslib/pvsio_utils/`|
| Loaded Patches | `/Applications/pvs-7.1.0/pvslib/.pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230712-static-update.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230710-tcc-gen.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230707-defattach.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230706-extrategies.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210323-wish.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210225-cl2pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210715a.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210715.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210707.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210706.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210511.lisp`|
