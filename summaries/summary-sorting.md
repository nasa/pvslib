# Summary for `sorting`
Run started at 2:56:37 7/8/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **649**   | **649**    | **649**    | **0**  | **5:33.046 s**   |
|top|0|0|0|0|0.000|
|quicksort|21|21|21|0|4.633|
|total_preorder|2|2|2|0|0.037|
|sorting|18|18|18|0|2.232|
|sorting_aux|70|70|70|0|11.117|
|mergesort|17|17|17|0|6.186|
|insertionsort|11|11|11|0|1.502|
|insertionsort_fs|12|12|12|0|5.251|
|sorting_seq|58|58|58|0|16.112|
|sorting_min|22|22|22|0|9.994|
|bubblesort|32|32|32|0|8.217|
|heapsort|58|58|58|0|2:7.482|
|maxsort|38|38|38|0|10.483|
|binsertionsort|40|40|40|0|11.725|
|radix_sort|20|20|20|0|1.146|
|radix_sort_nat|30|30|30|0|14.047|
|ford_johnson|163|163|163|0|1:27.203|
|firt_phase_ford_johnson|37|37|37|0|15.679|
## Detailed Summary 
## `top`
No formula declaration found.
## `quicksort`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|leq_elements_TCC1|✅ proved - complete|shostak|0.084|
|leq_elements_TCC2|✅ proved - complete|shostak|0.051|
|g_elements_TCC1|✅ proved - complete|shostak|0.053|
|g_elements_TCC2|✅ proved - complete|shostak|0.050|
|leq_elements_size|✅ proved - complete|shostak|0.158|
|g_elements_size|✅ proved - complete|shostak|0.161|
|same_occurrence_leq|✅ proved - complete|shostak|0.263|
|same_occurrence_g|✅ proved - complete|shostak|0.230|
|quick_sort_TCC1|✅ proved - complete|shostak|0.173|
|quick_sort_TCC2|✅ proved - complete|shostak|0.080|
|g_leq_car_size_TCC1|✅ proved - complete|shostak|0.020|
|g_leq_car_size|✅ proved - complete|shostak|0.260|
|quick_sort_size|✅ proved - complete|shostak|0.251|
|leq_elements_works|✅ proved - complete|shostak|0.126|
|g_elements_works|✅ proved - complete|shostak|0.153|
|quick_sort_is_permutation|✅ proved - complete|shostak|0.481|
|append_null_in_sorted_is_sorted|✅ proved - complete|shostak|0.060|
|cons_in_sorted_TCC1|✅ proved - complete|shostak|0.040|
|cons_in_sorted|✅ proved - complete|shostak|0.146|
|quick_sort_is_sorted|✅ proved - complete|shostak|1.773|
|quick_sort_works|✅ proved - complete|shostak|0.020|

## `total_preorder`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|total_preorder_is_preorder|✅ proved - complete|shostak|0.017|
|total_order_is_total_preorder|✅ proved - complete|shostak|0.020|

## `sorting`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|lt_le|✅ proved - complete|shostak|0.020|
|gt_not_le|✅ proved - complete|shostak|0.010|
|search_TCC1|✅ proved - complete|shostak|0.020|
|search_TCC2|✅ proved - complete|shostak|0.040|
|not_in_l_gives_lenght_l|✅ proved - complete|shostak|0.178|
|not_member_gives_length|✅ proved - complete|shostak|0.032|
|search_works_TCC1|✅ proved - complete|shostak|0.142|
|search_works|✅ proved - complete|shostak|0.154|
|search_min_index|✅ proved - complete|shostak|0.209|
|search_in_rev_max_index|✅ proved - complete|shostak|0.117|
|search_in_append_of_lists_key_in_the_first|✅ proved - complete|shostak|0.282|
|search_in_append_of_lists_key_not_member_of_the_first|✅ proved - complete|shostak|0.221|
|search_in_append_of_lists_with_searched_key|✅ proved - complete|shostak|0.212|
|is_sorted?_TCC1|✅ proved - complete|shostak|0.070|
|is_sorted_implies_monotone_TCC1|✅ proved - complete|shostak|0.020|
|is_sorted_implies_monotone|✅ proved - complete|shostak|0.398|
|cdr_of_sorted_is_sorted_TCC1|✅ proved - complete|shostak|0.020|
|cdr_of_sorted_is_sorted|✅ proved - complete|shostak|0.087|

## `sorting_aux`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|elim_list_TCC1|✅ proved - complete|shostak|0.020|
|elim_list_TCC2|✅ proved - complete|shostak|0.030|
|elim_list_TCC3|✅ proved - complete|shostak|0.030|
|elim_list_TCC4|✅ proved - complete|shostak|0.020|
|elim_list_length_TCC1|✅ proved - complete|shostak|0.030|
|elim_list_length|✅ proved - complete|shostak|0.172|
|preservation_contents_TCC1|✅ proved - complete|shostak|0.020|
|preservation_contents|✅ proved - complete|shostak|0.090|
|nth_implies_member|✅ proved - complete|shostak|0.178|
|member_implies_exists_nth|✅ proved - complete|shostak|0.275|
|nth_of_list_is_nth_append_list_TCC1|✅ proved - complete|shostak|0.045|
|nth_of_list_is_nth_append_list|✅ proved - complete|shostak|0.193|
|nth_of_cons_TCC1|✅ proved - complete|shostak|0.040|
|nth_of_cons_TCC2|✅ proved - complete|shostak|0.020|
|nth_of_cons_TCC3|✅ proved - complete|shostak|0.046|
|nth_of_cons|✅ proved - complete|shostak|0.040|
|nth_of_append_TCC1|✅ proved - complete|shostak|0.050|
|nth_of_append_TCC2|✅ proved - complete|shostak|0.057|
|nth_of_append|✅ proved - complete|shostak|0.674|
|null_rev_null|✅ proved - complete|shostak|0.040|
|nth_member_TCC1|✅ proved - complete|shostak|0.010|
|nth_member|✅ proved - complete|shostak|0.182|
|car_rev_TCC1|✅ proved - complete|shostak|0.020|
|car_rev_TCC2|✅ proved - complete|shostak|0.050|
|car_rev_TCC3|✅ proved - complete|shostak|0.040|
|car_rev|✅ proved - complete|shostak|0.078|
|nth_rev_zero_TCC1|✅ proved - complete|shostak|0.050|
|nth_rev_zero_TCC2|✅ proved - complete|shostak|0.127|
|nth_rev_zero|✅ proved - complete|shostak|0.656|
|nth_rev_last_TCC1|✅ proved - complete|shostak|0.030|
|nth_rev_last_TCC2|✅ proved - complete|shostak|0.067|
|nth_rev_last|✅ proved - complete|shostak|0.100|
|nth_append_TCC1|✅ proved - complete|shostak|0.106|
|nth_append_TCC2|✅ proved - complete|shostak|0.020|
|nth_append|✅ proved - complete|shostak|0.186|
|nth_rev_TCC1|✅ proved - complete|shostak|0.117|
|nth_rev|✅ proved - complete|shostak|0.628|
|occurrences_TCC1|✅ proved - complete|shostak|0.020|
|occurrences_TCC2|✅ proved - complete|shostak|0.040|
|occurrences_TCC3|✅ proved - complete|shostak|0.037|
|occurrences_of_nth_element|✅ proved - complete|shostak|0.206|
|occurrences_of_app|✅ proved - complete|shostak|0.293|
|cons_of_perm_is_permutation|✅ proved - complete|shostak|0.030|
|ocurrence_list_has_element|✅ proved - complete|shostak|0.186|
|no_occurrence_implies|✅ proved - complete|shostak|0.182|
|member_implies_pos_occurrences|✅ proved - complete|shostak|0.127|
|occurrences_implies_member|✅ proved - complete|shostak|0.106|
|permutations_preserve_contents|✅ proved - complete|shostak|0.040|
|permutations_is_commutative|✅ proved - complete|shostak|0.037|
|permutations_is_transitive|✅ proved - complete|shostak|0.020|
|cons_elim_is_permutation|✅ proved - complete|shostak|0.289|
|same_occurrences_same_length|✅ proved - complete|shostak|0.280|
|permutations_is_ext_reflexive_TCC1|✅ proved - complete|shostak|0.010|
|permutations_is_ext_reflexive|✅ proved - complete|shostak|0.515|
|suffix_TCC1|✅ proved - complete|shostak|0.056|
|suffix_TCC2|✅ proved - complete|shostak|0.120|
|suffix_TCC3|✅ proved - complete|shostak|0.097|
|app_prefix_suffix|✅ proved - complete|shostak|0.197|
|length_suffix|✅ proved - complete|shostak|0.236|
|length_prefix|✅ proved - complete|shostak|0.186|
|contents_suffix_TCC1|✅ proved - complete|shostak|0.020|
|contents_suffix_TCC2|✅ proved - complete|shostak|0.076|
|contents_suffix_TCC3|✅ proved - complete|shostak|0.010|
|contents_suffix|✅ proved - complete|shostak|1.889|
|contents_prefix_TCC1|✅ proved - complete|shostak|0.069|
|contents_prefix_TCC2|✅ proved - complete|shostak|0.020|
|contents_prefix|✅ proved - complete|shostak|0.896|
|permutations_of_appends|✅ proved - complete|shostak|0.096|
|permutations_of_app_suff|✅ proved - complete|shostak|0.103|
|permutations_of_app_pref|✅ proved - complete|shostak|0.091|

## `mergesort`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|merge_TCC1|✅ proved - complete|shostak|0.020|
|merge_TCC2|✅ proved - complete|shostak|0.030|
|merge_TCC3|✅ proved - complete|shostak|0.100|
|merge_TCC4|✅ proved - complete|shostak|0.100|
|merge_size|✅ proved - complete|shostak|0.280|
|merge_occurrence|✅ proved - complete|shostak|0.292|
|merge_is_permutation|✅ proved - complete|shostak|0.054|
|merge_of_sorted_is_sorted|✅ proved - complete|shostak|0.602|
|merge_sort_TCC1|✅ proved - complete|shostak|0.112|
|merge_sort_TCC2|✅ proved - complete|shostak|0.080|
|merge_sort_TCC3|✅ proved - complete|shostak|0.070|
|merge_sort_size|✅ proved - complete|shostak|0.214|
|merge_sort_is_sorted|✅ proved - complete|shostak|0.291|
|merge_sort_is_permutation|✅ proved - complete|shostak|0.352|
|merge_sort_works|✅ proved - complete|shostak|0.010|
|merge_is_conservative|✅ proved - complete|shostak|1.330|
|merge_sort_is_conservative|✅ proved - complete|shostak|2.249|

## `insertionsort`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|insert_TCC1|✅ proved - complete|shostak|0.020|
|insert_TCC2|✅ proved - complete|shostak|0.050|
|occ_in_insert|✅ proved - complete|shostak|0.459|
|insertion_sort_TCC1|✅ proved - complete|shostak|0.020|
|insertion_sort_TCC2|✅ proved - complete|shostak|0.040|
|insert_size|✅ proved - complete|shostak|0.149|
|insert_in_sorted_preserves_sort|✅ proved - complete|shostak|0.405|
|insertionsort_is_sorted|✅ proved - complete|shostak|0.100|
|ins_and_cons_in_perm_is_perm|✅ proved - complete|shostak|0.073|
|insertion_sort_is_permutations|✅ proved - complete|shostak|0.166|
|insertion_sort_works|✅ proved - complete|shostak|0.020|

## `insertionsort_fs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|insertion_TCC1|✅ proved - complete|shostak|0.026|
|insertion_TCC2|✅ proved - incomplete|shostak|0.120|
|length_insertion|✅ proved - incomplete|shostak|0.231|
|occ_in_insert|✅ proved - incomplete|shostak|1.812|
|fs_insertion_sort_TCC1|✅ proved - complete|shostak|0.020|
|fs_insertion_sort_TCC2|✅ proved - incomplete|shostak|0.089|
|fs_insert_size|✅ proved - incomplete|shostak|0.206|
|fs_insert_in_sorted_preserves_sort|✅ proved - incomplete|shostak|1.363|
|fs_insertionsort_is_sorted|✅ proved - incomplete|shostak|0.244|
|fs_ins_and_add_in_perm_is_perm|✅ proved - incomplete|shostak|0.957|
|fs_insertion_sort_is_permutations|✅ proved - incomplete|shostak|0.166|
|fs_insertion_sort_works|✅ proved - incomplete|shostak|0.017|

## `sorting_seq`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|occurrences_TCC1|✅ proved - complete|shostak|0.020|
|occurrences_TCC2|✅ proved - complete|shostak|0.030|
|occurrences_TCC3|✅ proved - complete|shostak|0.101|
|occurrences_TCC4|✅ proved - complete|shostak|0.030|
|occurrences_TCC5|✅ proved - complete|shostak|0.100|
|finseq2list_rec_equivalence_TCC1|✅ proved - complete|shostak|0.020|
|finseq2list_rec_equivalence_TCC2|✅ proved - complete|shostak|0.089|
|finseq2list_rec_equivalence_TCC3|✅ proved - complete|shostak|0.010|
|finseq2list_rec_equivalence|✅ proved - complete|shostak|0.236|
|finseq2lists_for_suffixes_TCC1|✅ proved - complete|shostak|0.010|
|finseq2lists_for_suffixes_TCC2|✅ proved - complete|shostak|0.070|
|finseq2lists_for_suffixes_TCC3|✅ proved - complete|shostak|0.020|
|finseq2lists_for_suffixes|✅ proved - complete|shostak|0.281|
|subseq_is_cdr_TCC1|✅ proved - complete|shostak|0.010|
|subseq_is_cdr_TCC2|✅ proved - complete|shostak|0.040|
|subseq_is_cdr|✅ proved - complete|shostak|0.155|
|same_occ_fseq_list|✅ proved - complete|shostak|0.400|
|perm_fsq_iff_perm_list|✅ proved - complete|shostak|0.055|
|permutations_equiv|✅ proved - complete|shostak|0.036|
|psorted_TCC1|✅ proved - complete|shostak|0.080|
|is_sorted?_TCC1|✅ proved - complete|shostak|0.056|
|is_sorted_equiv|✅ proved - complete|shostak|0.291|
|ind_parent_TCC1|✅ proved - complete|shostak|0.050|
|left_child_TCC1|✅ proved - complete|shostak|0.110|
|right_child_TCC1|✅ proved - complete|shostak|0.106|
|is_p_heap_TCC1|✅ proved - complete|shostak|0.010|
|is_p_heap_TCC2|✅ proved - complete|shostak|0.020|
|is_p_heap_TCC3|✅ proved - complete|shostak|0.145|
|is_p_heap_TCC4|✅ proved - complete|shostak|0.150|
|is_p_heap_TCC5|✅ proved - complete|shostak|0.163|
|is_heap_TCC1|✅ proved - complete|shostak|0.010|
|is_heap_TCC2|✅ proved - complete|shostak|0.030|
|root_is_greatest_in_p_heap_TCC1|✅ proved - complete|shostak|0.010|
|root_is_greatest_in_p_heap_TCC2|✅ proved - complete|shostak|0.017|
|root_is_greatest_in_p_heap_TCC3|✅ proved - complete|shostak|0.070|
|root_is_greatest_in_p_heap|✅ proved - complete|shostak|0.637|
|root_is_greatest_in_heap_TCC1|✅ proved - complete|shostak|0.070|
|root_is_greatest_in_heap|✅ proved - complete|shostak|0.046|
|parent_TCC1|✅ proved - complete|shostak|0.070|
|ind_gc_TCC1|✅ proved - complete|shostak|0.010|
|ind_gc_TCC2|✅ proved - complete|shostak|0.155|
|ind_gc_TCC3|✅ proved - complete|shostak|0.150|
|swap_of_p_heap_TCC1|✅ proved - complete|shostak|0.077|
|swap_of_p_heap|✅ proved - complete|shostak|0.040|
|swap_commutes|✅ proved - complete|shostak|0.057|
|occ_replaces_at_j_TCC1|✅ proved - complete|shostak|0.056|
|occ_replaces_at_j|✅ proved - complete|shostak|1.200|
|swap_occ_at_0_TCC1|✅ proved - complete|shostak|0.020|
|swap_occ_at_0_TCC2|✅ proved - complete|shostak|0.020|
|swap_occ_at_0|✅ proved - complete|shostak|1.504|
|swap_permutes|✅ proved - complete|shostak|1.314|
|swap_of_heap_TCC1|✅ proved - complete|shostak|0.078|
|swap_of_heap_TCC2|✅ proved - complete|shostak|0.070|
|swap_of_heap|✅ proved - complete|shostak|0.138|
|occ_in_insert|✅ proved - incomplete|shostak|5.025|
|occ_in_delete|✅ proved - incomplete|shostak|2.226|
|delete_insert_same_permutes_TCC1|✅ proved - incomplete|shostak|0.030|
|delete_insert_same_permutes|✅ proved - incomplete|shostak|0.088|

## `sorting_min`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|switching_min_TCC1|✅ proved - complete|shostak|0.049|
|switching_min_TCC2|✅ proved - complete|shostak|0.070|
|switching_min_TCC3|✅ proved - complete|shostak|0.206|
|switching_min_TCC4|✅ proved - complete|shostak|0.080|
|reverse_is_permutation|✅ proved - complete|shostak|0.238|
|swch_min_preserves_length|✅ proved - complete|shostak|0.429|
|swch_min_preserves_contents|✅ proved - complete|shostak|0.578|
|swch_min_is_permutation|✅ proved - complete|shostak|0.503|
|last_swch_min_element_is_least_TCC1|✅ proved - complete|shostak|0.088|
|last_swch_min_element_is_least_TCC2|✅ proved - complete|shostak|0.040|
|last_swch_min_element_is_least|✅ proved - complete|shostak|1.428|
|sorting_min_TCC1|✅ proved - complete|shostak|0.065|
|sorting_min_TCC2|✅ proved - complete|shostak|0.346|
|sorting_min_preserves_length|✅ proved - complete|shostak|0.893|
|sorting_min_is_permutations|✅ proved - complete|shostak|1.160|
|swch_min_moves_min_to_end_TCC1|✅ proved - complete|shostak|0.095|
|swch_min_moves_min_to_end_TCC2|✅ proved - complete|shostak|0.120|
|swch_min_moves_min_to_end|✅ proved - complete|shostak|0.154|
|sorting_min_moves_min_to_begining_TCC1|✅ proved - complete|shostak|0.080|
|sorting_min_moves_min_to_begining_TCC2|✅ proved - complete|shostak|0.114|
|sorting_min_moves_min_to_begining|✅ proved - complete|shostak|0.000|
|sorting_min_work|✅ proved - complete|shostak|3.258|

## `bubblesort`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|bubbling_TCC1|✅ proved - complete|shostak|0.040|
|bubbling_TCC2|✅ proved - complete|shostak|0.050|
|bubbling_TCC3|✅ proved - complete|shostak|0.125|
|bubbling_TCC4|✅ proved - complete|shostak|0.030|
|bubbling_TCC5|✅ proved - complete|shostak|0.090|
|bubbling_TCC6|✅ proved - complete|shostak|0.027|
|bubbling_preserves_length|✅ proved - complete|shostak|0.335|
|bubbling_preserves_suffix_TCC1|✅ proved - complete|shostak|0.056|
|bubbling_preserves_suffix|✅ proved - complete|shostak|0.681|
|bubblesort_aux_TCC1|✅ proved - complete|shostak|0.061|
|bubblesort_aux_TCC2|✅ proved - complete|shostak|0.020|
|bubblesort_aux_preserves_length|✅ proved - complete|shostak|0.149|
|bubblesort_TCC1|✅ proved - complete|shostak|0.050|
|bubbling_preseves_contents|✅ proved - complete|shostak|0.945|
|bubbling_preserves_prefix_TCC1|✅ proved - complete|shostak|0.020|
|bubbling_preserves_prefix_TCC2|✅ proved - complete|shostak|0.080|
|bubbling_preserves_prefix|✅ proved - complete|shostak|1.358|
|bubbling_bubbles_TCC1|✅ proved - complete|shostak|0.071|
|bubbling_bubbles_TCC2|✅ proved - complete|shostak|0.050|
|bubbling_bubbles|✅ proved - complete|shostak|0.953|
|bubblesort_aux_preserves_suffix_TCC1|✅ proved - complete|shostak|0.058|
|bubblesort_aux_preserves_suffix|✅ proved - complete|shostak|0.486|
|bubblesort_aux_is_permutation|✅ proved - complete|shostak|0.174|
|bubblesort_aux_preserves_prefix_TCC1|✅ proved - complete|shostak|0.105|
|bubblesort_aux_preserves_prefix_TCC2|✅ proved - complete|shostak|0.020|
|bubblesort_aux_preserves_prefix|✅ proved - complete|shostak|0.655|
|bubblesort_is_permutation|✅ proved - complete|shostak|0.070|
|bubblesort_aux_sorts_prefix_TCC1|✅ proved - complete|shostak|0.055|
|bubblesort_aux_sorts_prefix_TCC2|✅ proved - complete|shostak|0.090|
|bubblesort_aux_sorts_prefix|✅ proved - complete|shostak|1.072|
|bubblesort_is_sorted|✅ proved - complete|shostak|0.217|
|bubblesort_works|✅ proved - complete|shostak|0.024|

## `heapsort`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sink_TCC1|✅ proved - complete|shostak|0.020|
|sink_TCC2|✅ proved - complete|shostak|0.535|
|sink_TCC3|✅ proved - complete|shostak|0.397|
|sink_TCC4|✅ proved - complete|shostak|0.393|
|sink_TCC5|✅ proved - complete|shostak|0.388|
|sink_TCC6|✅ proved - complete|shostak|0.256|
|sink_permutes_TCC1|✅ proved - complete|shostak|0.010|
|sink_permutes|✅ proved - complete|shostak|1.627|
|sink_length|✅ proved - complete|shostak|1.208|
|sink_stable_TCC1|✅ proved - complete|shostak|0.024|
|sink_stable|✅ proved - complete|shostak|6.114|
|sink_in_stable_TCC1|✅ proved - complete|shostak|0.030|
|sink_in_stable|✅ proved - complete|shostak|3.002|
|sink_interval_children_stable_TCC1|✅ proved - complete|shostak|0.203|
|sink_interval_children_stable_TCC2|✅ proved - complete|shostak|0.381|
|sink_interval_children_stable_TCC3|✅ proved - complete|shostak|0.556|
|sink_interval_children_stable_TCC4|✅ proved - complete|shostak|0.380|
|sink_interval_children_stable_TCC5|✅ proved - complete|shostak|0.700|
|sink_interval_children_stable_TCC6|✅ proved - complete|shostak|0.394|
|sink_interval_children_stable_TCC7|✅ proved - complete|shostak|0.459|
|sink_interval_children_stable|✅ proved - complete|shostak|5.131|
|is_heap_from_to_TCC1|✅ proved - complete|shostak|0.010|
|is_heap_from_to_TCC2|✅ proved - complete|shostak|0.020|
|is_heap_from_to_TCC3|✅ proved - complete|shostak|0.280|
|is_heap_from_to_TCC4|✅ proved - complete|shostak|0.284|
|is_heap_from_to_TCC5|✅ proved - complete|shostak|0.231|
|is_heap_from_to_TCC6|✅ proved - complete|shostak|0.225|
|is_heap_from_to|✅ proved - complete|shostak|1:17.990|
|heapify_TCC1|✅ proved - complete|shostak|0.060|
|heapify_TCC2|✅ proved - complete|shostak|0.057|
|heapify_TCC3|✅ proved - complete|shostak|0.080|
|heapify_TCC4|✅ proved - complete|shostak|0.040|
|heapify_TCC5|✅ proved - complete|shostak|0.058|
|heapify_TCC6|✅ proved - complete|shostak|0.070|
|heapify_length_TCC1|✅ proved - complete|shostak|0.030|
|heapify_length|✅ proved - complete|shostak|1.647|
|heapify_permutes|✅ proved - complete|shostak|1.375|
|heapify_heapifies_TCC1|✅ proved - complete|shostak|0.040|
|heapify_heapifies|✅ proved - complete|shostak|5.128|
|heapsort_aux_TCC1|✅ proved - complete|shostak|0.010|
|heapsort_aux_TCC2|✅ proved - complete|shostak|0.020|
|heapsort_aux_TCC3|✅ proved - complete|shostak|0.040|
|heapsort_aux_TCC4|✅ proved - complete|shostak|0.043|
|heapsort_aux_TCC5|✅ proved - complete|shostak|0.010|
|heapsort_aux_TCC6|✅ proved - complete|shostak|0.270|
|heapsort_aux_TCC7|✅ proved - complete|shostak|0.020|
|heapsort_aux_permutes|✅ proved - complete|shostak|0.671|
|heapsort_aux_length|✅ proved - complete|shostak|0.467|
|heapsort_aux_psorts_TCC1|✅ proved - complete|shostak|0.020|
|heapsort_aux_psorts_TCC2|✅ proved - complete|shostak|0.020|
|heapsort_aux_psorts_TCC3|✅ proved - complete|shostak|0.050|
|heapsort_aux_psorts_TCC4|✅ proved - complete|shostak|0.052|
|heapsort_aux_psorts_TCC5|✅ proved - complete|shostak|0.212|
|heapsort_aux_psorts_TCC6|✅ proved - complete|shostak|0.030|
|heapsort_aux_psorts|✅ proved - complete|shostak|10.421|
|heapsort_TCC1|✅ proved - complete|shostak|0.079|
|heapsort_TCC2|✅ proved - complete|shostak|0.060|
|heapsort_works|✅ proved - complete|shostak|5.154|

## `maxsort`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|move_max_TCC1|✅ proved - complete|shostak|0.117|
|move_max_TCC2|✅ proved - complete|shostak|0.010|
|move_max_TCC3|✅ proved - complete|shostak|0.023|
|move_max_TCC4|✅ proved - complete|shostak|0.010|
|move_max_TCC5|✅ proved - complete|shostak|0.020|
|move_max_TCC6|✅ proved - complete|shostak|0.050|
|move_max_TCC7|✅ proved - complete|shostak|0.080|
|move_max_TCC8|✅ proved - complete|shostak|0.040|
|move_max_TCC9|✅ proved - complete|shostak|0.074|
|move_max_TCC10|✅ proved - complete|shostak|0.030|
|move_max_length_TCC1|✅ proved - complete|shostak|0.020|
|move_max_length|✅ proved - complete|shostak|0.481|
|move_max_preserves_out_TCC1|✅ proved - complete|shostak|0.023|
|move_max_preserves_out|✅ proved - complete|shostak|1.201|
|move_max_preserves_TCC1|✅ proved - complete|shostak|0.059|
|move_max_preserves|✅ proved - complete|shostak|0.000|
|move_max_preserves2_TCC1|✅ proved - complete|shostak|0.010|
|move_max_preserves2_TCC2|✅ proved - complete|shostak|0.040|
|move_max_preserves2|✅ proved - complete|shostak|1.855|
|move_max_works_TCC1|✅ proved - complete|shostak|0.040|
|move_max_works_TCC2|✅ proved - complete|shostak|0.030|
|move_max_works|✅ proved - complete|shostak|2.691|
|move_max_permutes|✅ proved - complete|shostak|0.602|
|maxsort_aux_TCC1|✅ proved - complete|shostak|0.023|
|maxsort_aux_TCC2|✅ proved - complete|shostak|0.030|
|maxsort_aux_TCC3|✅ proved - complete|shostak|0.010|
|maxsort_aux_length|✅ proved - complete|shostak|0.161|
|maxsort_aux_psorts_TCC1|✅ proved - complete|shostak|0.010|
|maxsort_aux_psorts_TCC2|✅ proved - complete|shostak|0.020|
|maxsort_aux_psorts_TCC3|✅ proved - complete|shostak|0.061|
|maxsort_aux_psorts_TCC4|✅ proved - complete|shostak|0.040|
|maxsort_aux_psorts|✅ proved - complete|shostak|1.262|
|maxsort_aux_permutes_TCC1|✅ proved - complete|shostak|0.010|
|maxsort_aux_permutes|✅ proved - complete|shostak|0.357|
|maxsort_TCC1|✅ proved - complete|shostak|0.020|
|maxsort_sorts|✅ proved - complete|shostak|0.613|
|maxsort_permutes|✅ proved - complete|shostak|0.350|
|maxsort_works|✅ proved - complete|shostak|0.010|

## `binsertionsort`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|bin_search_TCC1|✅ proved - complete|shostak|0.020|
|bin_search_TCC2|✅ proved - complete|shostak|0.028|
|bin_search_TCC3|✅ proved - complete|shostak|0.020|
|bin_search_TCC4|✅ proved - complete|shostak|0.070|
|bin_search_TCC5|✅ proved - complete|shostak|0.070|
|bin_search_TCC6|✅ proved - complete|shostak|0.072|
|bin_search_TCC7|✅ proved - complete|shostak|0.283|
|bin_search_TCC8|✅ proved - complete|shostak|0.074|
|bin_search_TCC9|✅ proved - complete|shostak|0.416|
|bin_search_TCC10|✅ proved - complete|shostak|0.241|
|bin_search_TCC11|✅ proved - complete|shostak|0.235|
|bin_search_TCC12|✅ proved - complete|shostak|0.070|
|binsertionsort_aux_TCC1|✅ proved - complete|shostak|0.020|
|binsertionsort_aux_TCC2|✅ proved - incomplete|shostak|0.046|
|binsertionsort_aux_TCC3|✅ proved - incomplete|shostak|0.181|
|binsertionsort_aux_TCC4|✅ proved - incomplete|shostak|0.205|
|binsertionsort_aux_TCC5|✅ proved - incomplete|shostak|0.106|
|binsertionsort_aux_TCC6|✅ proved - incomplete|shostak|0.185|
|binsertionsort_aux_TCC7|✅ proved - incomplete|shostak|0.239|
|binsertionsort_aux_TCC8|✅ proved - complete|shostak|0.020|
|binsertionsort_aux_TCC9|✅ proved - complete|shostak|0.036|
|binsertionsort_TCC1|✅ proved - complete|shostak|0.010|
|binsertionsort_TCC2|✅ proved - complete|shostak|0.020|
|b_search_bound|✅ proved - complete|shostak|0.694|
|b_search_preserves_sorting_TCC1|✅ proved - complete|shostak|0.064|
|b_search_preserves_sorting_TCC2|✅ proved - complete|shostak|0.103|
|b_search_preserves_sorting_TCC3|✅ proved - complete|shostak|0.100|
|b_search_preserves_sorting|✅ proved - incomplete|shostak|3.099|
|b_search_translation_TCC1|✅ proved - complete|shostak|0.010|
|b_search_translation_TCC2|✅ proved - complete|shostak|0.020|
|b_search_translation_TCC3|✅ proved - complete|shostak|0.010|
|b_search_translation_TCC4|✅ proved - complete|shostak|0.082|
|b_search_translation_TCC5|✅ proved - complete|shostak|0.080|
|b_search_translation|✅ proved - complete|shostak|2.378|
|bs_aux_perm|✅ proved - incomplete|shostak|1.010|
|bs_aux_sorts_TCC1|✅ proved - complete|shostak|0.020|
|bs_aux_sorts|✅ proved - incomplete|shostak|1.144|
|binsertion_permutation|✅ proved - incomplete|shostak|0.030|
|binsertion_sorts|✅ proved - incomplete|shostak|0.194|
|binsertionsort_works|✅ proved - incomplete|shostak|0.020|

## `radix_sort`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|radixsort_aux_TCC1|✅ proved - complete|shostak|0.010|
|radixsort_aux_TCC2|✅ proved - complete|shostak|0.030|
|radixsort_aux_TCC3|✅ proved - complete|shostak|0.040|
|radixsort_aux_TCC4|✅ proved - complete|shostak|0.020|
|radixsort_TCC1|✅ proved - complete|shostak|0.010|
|radixsort_permutes|✅ proved - complete|shostak|0.139|
|lex_TCC1|✅ proved - complete|shostak|0.020|
|lex_TCC2|✅ proved - complete|shostak|0.040|
|lex_total_preorder|✅ proved - complete|shostak|0.268|
|merge_sort_lex_sorted_TCC1|✅ proved - complete|shostak|0.020|
|merge_sort_lex_sorted_TCC2|✅ proved - complete|shostak|0.020|
|merge_sort_lex_sorted_TCC3|✅ proved - complete|shostak|0.020|
|merge_sort_lex_sorted_TCC4|✅ proved - complete|shostak|0.036|
|merge_sort_lex_sorted|✅ proved - complete|shostak|0.231|
|radix_sort_is_sorted_TCC1|✅ proved - complete|shostak|0.010|
|radix_sort_is_sorted_TCC2|✅ proved - complete|shostak|0.020|
|radix_sort_is_sorted_TCC3|✅ proved - complete|shostak|0.020|
|radix_sort_is_sorted_TCC4|✅ proved - complete|shostak|0.102|
|radix_sort_is_sorted_TCC5|✅ proved - complete|shostak|0.050|
|radixsort_sorts|✅ proved - complete|shostak|0.040|

## `radix_sort_nat`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|d_nth_TCC1|✅ proved - complete|shostak|0.035|
|d_nth_TCC2|✅ proved - complete|shostak|0.010|
|n_digits_TCC1|✅ proved - incomplete|shostak|0.160|
|max_digits_TCC1|✅ proved - complete|shostak|0.059|
|max_digits_TCC2|✅ proved - complete|shostak|0.040|
|max_digits_TCC3|✅ proved - complete|shostak|0.085|
|max_digits_TCC4|✅ proved - complete|shostak|0.139|
|max_digits_works_TCC1|✅ proved - complete|shostak|0.010|
|max_digits_works|✅ proved - incomplete|shostak|0.493|
|d_nth_zero|✅ proved - incomplete|shostak|0.204|
|d_nth_digits_TCC1|✅ proved - incomplete|shostak|0.020|
|d_nth_digits|✅ proved - incomplete|shostak|0.000|
|d_exp_dec|✅ proved - incomplete|shostak|0.894|
|d_nth_rem|✅ proved - incomplete|shostak|4.470|
|n_digits_power|✅ proved - incomplete|shostak|0.252|
|d_nth_nmod_TCC1|✅ proved - complete|shostak|0.010|
|d_nth_nmod|✅ proved - incomplete|shostak|0.244|
|n_digits_monotone|✅ proved - incomplete|shostak|0.289|
|n_digits_ten_power_TCC1|✅ proved - complete|shostak|0.100|
|n_digits_ten_power|✅ proved - incomplete|shostak|0.390|
|n_digits_nmod_leq|✅ proved - incomplete|shostak|0.084|
|leq_N_TCC1|✅ proved - incomplete|shostak|0.066|
|lex_preserves_TCC1|✅ proved - complete|shostak|0.010|
|lex_preserves|✅ proved - incomplete|shostak|0.217|
|lex_nat_works_aux_TCC1|✅ proved - incomplete|shostak|0.020|
|lex_nat_works_aux|✅ proved - incomplete|shostak|4.927|
|lex_nat_works_TCC1|✅ proved - incomplete|shostak|0.020|
|lex_nat_works|✅ proved - incomplete|shostak|0.070|
|radixsort_nat_works_TCC1|✅ proved - incomplete|shostak|0.076|
|radixsort_nat_works|✅ proved - incomplete|shostak|0.653|

## `ford_johnson`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|t_TCC1|✅ proved - complete|shostak|0.934|
|t_is_increasing|✅ proved - complete|shostak|1.079|
|t_is_unbounded|✅ proved - complete|shostak|0.288|
|t_qinversible_TCC1|✅ proved - complete|shostak|0.020|
|t_qinversible|✅ proved - complete|shostak|0.341|
|maxk_TCC1|✅ proved - complete|shostak|0.010|
|maxk_TCC2|✅ proved - complete|shostak|0.297|
|maxk_correction|✅ proved - complete|shostak|0.113|
|upToOneIsCorrectAll_TCC1|✅ proved - complete|shostak|0.030|
|upToOneIsCorrectAll_TCC2|✅ proved - incomplete|shostak|0.125|
|upToOneIsCorrectAll_TCC3|✅ proved - complete|shostak|0.030|
|upToOneIsCorrectAll|✅ proved - incomplete|shostak|0.141|
|upToOnePreservesIndx_TCC1|✅ proved - incomplete|shostak|0.100|
|upToOnePreservesIndx_TCC2|✅ proved - complete|shostak|0.060|
|upToOnePreservesIndx|✅ proved - incomplete|shostak|0.404|
|bin_search_TCC1|✅ proved - complete|shostak|0.014|
|bin_search_TCC2|✅ proved - complete|shostak|0.030|
|bin_search_TCC3|✅ proved - complete|shostak|0.030|
|bin_search_TCC4|✅ proved - complete|shostak|0.060|
|bin_search_TCC5|✅ proved - complete|shostak|0.070|
|bin_search_TCC6|✅ proved - complete|shostak|0.086|
|bin_search_TCC7|✅ proved - complete|shostak|0.300|
|bin_search_TCC8|✅ proved - complete|shostak|0.080|
|bin_search_TCC9|✅ proved - complete|shostak|0.434|
|bin_search_TCC10|✅ proved - complete|shostak|0.245|
|bin_search_TCC11|✅ proved - complete|shostak|0.241|
|bin_search_TCC12|✅ proved - complete|shostak|0.080|
|b_search_bound|✅ proved - complete|shostak|0.869|
|b_search_preserves_sorting_TCC1|✅ proved - complete|shostak|0.076|
|b_search_preserves_sorting_TCC2|✅ proved - complete|shostak|0.101|
|b_search_preserves_sorting_TCC3|✅ proved - complete|shostak|0.115|
|b_search_preserves_sorting|✅ proved - incomplete|shostak|4.108|
|b_search_removeSon_TCC1|✅ proved - complete|shostak|0.040|
|b_search_removeSon_TCC2|✅ proved - complete|shostak|0.089|
|b_search_removeSon_TCC3|✅ proved - complete|shostak|0.040|
|b_search_removeSon_TCC4|✅ proved - complete|shostak|0.040|
|b_search_removeSon|✅ proved - complete|shostak|6.688|
|PartialERforK?_TCC1|✅ proved - complete|shostak|0.020|
|PartialERforK?_TCC2|✅ proved - complete|shostak|0.118|
|PartialERforK?_TCC3|✅ proved - incomplete|shostak|0.057|
|PartialERforK?_TCC4|✅ proved - incomplete|shostak|0.150|
|PartialERforK?_TCC5|✅ proved - incomplete|shostak|0.127|
|oddNstructDeconstruction_TCC1|✅ proved - incomplete|shostak|0.041|
|oddNstructDeconstruction_TCC2|✅ proved - incomplete|shostak|0.060|
|oddNstructDeconstruction_TCC3|✅ proved - incomplete|shostak|0.027|
|oddNstructDeconstruction|✅ proved - incomplete|shostak|0.937|
|nstructER_vs_nstructER_basic_TCC1|✅ proved - incomplete|shostak|0.029|
|nstructER_vs_nstructER_basic_TCC2|✅ proved - incomplete|shostak|0.070|
|nstructER_vs_nstructER_basic|✅ proved - incomplete|shostak|0.411|
|occ_in_rest_TCC1|✅ proved - complete|shostak|0.010|
|occ_in_rest|✅ proved - incomplete|shostak|0.040|
|occ_in_removeson|✅ proved - incomplete|shostak|2.133|
|occ_in_insert|✅ proved - incomplete|shostak|0.588|
|insert_removeson_permutation_TCC1|✅ proved - complete|shostak|0.040|
|insert_removeson_permutation|✅ proved - incomplete|shostak|0.083|
|insertSonPreservesPartialERforK_TCC1|✅ proved - complete|shostak|0.097|
|insertSonPreservesPartialERforK_TCC2|✅ proved - complete|shostak|0.321|
|insertSonPreservesPartialERforK_TCC3|✅ proved - incomplete|shostak|0.060|
|insertSonPreservesPartialERforK_TCC4|✅ proved - incomplete|shostak|0.133|
|insertSonPreservesPartialERforK_TCC5|✅ proved - incomplete|shostak|0.138|
|insertSonPreservesPartialERforK_TCC6|✅ proved - incomplete|shostak|0.060|
|insertSonPreservesPartialERforK_TCC7|✅ proved - incomplete|shostak|0.125|
|insertSonPreservesPartialERforK_TCC8|✅ proved - incomplete|shostak|0.892|
|insertSonPreservesPartialERforK_TCC9|✅ proved - incomplete|shostak|0.475|
|insertSonPreservesPartialERforK_TCC10|✅ proved - incomplete|shostak|0.282|
|insertSonPreservesPartialERforK_TCC11|✅ proved - incomplete|shostak|0.105|
|insertSonPreservesPartialERforK|✅ proved - incomplete|shostak|6.971|
|insertCarPreservesPartialERforK_TCC1|✅ proved - complete|shostak|0.070|
|insertCarPreservesPartialERforK_TCC2|✅ proved - complete|shostak|0.151|
|insertCarPreservesPartialERforK_TCC3|✅ proved - incomplete|shostak|0.060|
|insertCarPreservesPartialERforK_TCC4|✅ proved - incomplete|shostak|0.064|
|insertCarPreservesPartialERforK_TCC5|✅ proved - incomplete|shostak|0.374|
|insertCarPreservesPartialERforK_TCC6|✅ proved - incomplete|shostak|0.110|
|insertCarPreservesPartialERforK_TCC7|✅ proved - incomplete|shostak|0.113|
|insertCarPreservesPartialERforK_TCC8|✅ proved - incomplete|shostak|0.115|
|insertCarPreservesPartialERforK_TCC9|✅ proved - incomplete|shostak|0.050|
|insertCarPreservesPartialERforK|✅ proved - incomplete|shostak|1.077|
|binsert_tk_interval_TCC1|✅ proved - complete|shostak|0.083|
|binsert_tk_interval_TCC2|✅ proved - complete|shostak|0.050|
|binsert_tk_interval_TCC3|✅ proved - incomplete|shostak|0.037|
|binsert_tk_interval_TCC4|✅ proved - incomplete|shostak|0.048|
|binsert_tk_interval_TCC5|✅ proved - incomplete|shostak|0.115|
|binsert_tk_interval_TCC6|✅ proved - incomplete|shostak|0.427|
|binsert_tk_interval_TCC7|✅ proved - incomplete|shostak|0.146|
|binsert_tk_interval_TCC8|✅ proved - incomplete|shostak|0.046|
|binsert_tk_interval_TCC9|✅ proved - incomplete|shostak|0.065|
|binsert_tk_interval_TCC10|✅ proved - incomplete|shostak|0.070|
|binsert_tk_interval_TCC11|✅ proved - incomplete|shostak|0.137|
|binsert_tk_interval_TCC12|✅ proved - incomplete|shostak|0.653|
|binsert_tk_interval_TCC13|✅ proved - incomplete|shostak|0.215|
|binsert_tk_interval_TCC14|✅ proved - incomplete|shostak|0.134|
|binsert_tk_interval_TCC15|✅ proved - incomplete|shostak|0.540|
|binsert_tk_interval_TCC16|✅ proved - incomplete|shostak|0.200|
|binsert_tk_interval_TCC17|✅ proved - incomplete|shostak|0.120|
|binsert_tk_interval_TCC18|✅ proved - incomplete|shostak|0.059|
|binsert_tk_interval_TCC19|✅ proved - incomplete|shostak|0.164|
|binsert_tk_interval_length|✅ proved - incomplete|shostak|1.532|
|binsert_tk_interval_preserves_indx_TCC1|✅ proved - incomplete|shostak|0.030|
|binsert_tk_interval_preserves_indx_TCC2|✅ proved - incomplete|shostak|0.037|
|binsert_tk_interval_preserves_indx|✅ proved - incomplete|shostak|1.473|
|up_partialER_TCC1|✅ proved - incomplete|shostak|0.030|
|up_partialER_TCC2|✅ proved - complete|shostak|0.036|
|up_partialER_TCC3|✅ proved - incomplete|shostak|0.040|
|up_partialER_TCC4|✅ proved - incomplete|shostak|0.069|
|up_partialER_TCC5|✅ proved - incomplete|shostak|0.078|
|up_partialER|✅ proved - incomplete|shostak|0.238|
|binsert_tk_interval_preserves_oddList|✅ proved - incomplete|shostak|0.979|
|binsert_tk_interval_gives_permutation|✅ proved - incomplete|shostak|3.395|
|PartialERforK_equiv_TCC1|✅ proved - complete|shostak|0.130|
|PartialERforK_equiv_TCC2|✅ proved - incomplete|shostak|0.162|
|PartialERforK_equiv|✅ proved - incomplete|shostak|0.936|
|basis_PartialERforK_equiv_TCC1|✅ proved - complete|shostak|0.061|
|basis_PartialERforK_equiv_TCC2|✅ proved - complete|shostak|0.230|
|basis_PartialERforK_equiv_TCC3|✅ proved - incomplete|shostak|0.024|
|basis_PartialERforK_equiv_TCC4|✅ proved - incomplete|shostak|0.260|
|basis_PartialERforK_equiv_TCC5|✅ proved - incomplete|shostak|0.080|
|basis_PartialERforK_equiv_TCC6|✅ proved - incomplete|shostak|0.297|
|basis_PartialERforK_equiv_TCC7|✅ proved - incomplete|shostak|1.520|
|basis_PartialERforK_equiv|✅ proved - incomplete|shostak|3.298|
|binsert_one_level_TCC1|✅ proved - complete|shostak|0.081|
|binsert_one_level_TCC2|✅ proved - complete|shostak|0.203|
|binsert_one_level_TCC3|✅ proved - incomplete|shostak|0.090|
|binsert_one_level_TCC4|✅ proved - incomplete|shostak|0.108|
|binsert_one_level_TCC5|✅ proved - incomplete|shostak|0.090|
|binsert_one_level_TCC6|✅ proved - incomplete|shostak|0.085|
|binsert_one_level_TCC7|✅ proved - incomplete|shostak|0.921|
|binsert_one_level_TCC8|✅ proved - incomplete|shostak|0.360|
|binsert_one_level_TCC9|✅ proved - incomplete|shostak|0.050|
|binsert_one_level_TCC10|✅ proved - incomplete|shostak|0.065|
|binsert_one_level_TCC11|✅ proved - incomplete|shostak|0.353|
|binsert_one_level_TCC12|✅ proved - incomplete|shostak|0.154|
|binsert_one_level_TCC13|✅ proved - incomplete|shostak|0.230|
|binsert_one_level_TCC14|✅ proved - incomplete|shostak|0.553|
|binsert_one_level_TCC15|✅ proved - incomplete|shostak|0.660|
|binsert_one_level_TCC16|✅ proved - incomplete|shostak|0.614|
|binsert_one_level_TCC17|✅ proved - incomplete|shostak|0.056|
|binsert_one_level_TCC18|✅ proved - incomplete|shostak|0.060|
|binsert_one_level_length_TCC1|✅ proved - complete|shostak|0.039|
|binsert_one_level_length_TCC2|✅ proved - complete|shostak|0.020|
|binsert_one_level_length_TCC3|✅ proved - complete|shostak|0.040|
|binsert_one_level_length_TCC4|✅ proved - complete|shostak|0.137|
|binsert_one_level_length_TCC5|✅ proved - incomplete|shostak|0.151|
|binsert_one_level_length|✅ proved - incomplete|shostak|4.443|
|binsert_one_level_gives_permutation|✅ proved - incomplete|shostak|7.979|
|binsert_one_level_go_to_nstruct_TCC1|✅ proved - incomplete|shostak|0.049|
|binsert_one_level_go_to_nstruct_TCC2|✅ proved - incomplete|shostak|0.100|
|binsert_one_level_go_to_nstruct|✅ proved - incomplete|shostak|12.731|
|nstructER_basic_equiv_TCC1|✅ proved - incomplete|shostak|0.148|
|nstructER_basic_equiv_TCC2|✅ proved - incomplete|shostak|0.270|
|nstructER_basic_equiv|✅ proved - incomplete|shostak|0.498|
|seqfjFatten_TCC1|✅ proved - incomplete|shostak|0.020|
|seqfjFatten_TCC2|✅ proved - incomplete|shostak|0.166|
|seqfjFatten_TCC3|✅ proved - incomplete|shostak|0.299|
|seqfjFatten_TCC4|✅ proved - incomplete|shostak|0.285|
|seqfjFatten_TCC5|✅ proved - incomplete|shostak|0.075|
|seqfjFatten_length|✅ proved - incomplete|shostak|0.205|
|seqfjFatten_gives_permutation|✅ proved - incomplete|shostak|0.675|
|seqfjFatten_gives_down_nstructER_basic_TCC1|✅ proved - incomplete|shostak|0.031|
|seqfjFatten_gives_down_nstructER_basic|✅ proved - incomplete|shostak|0.275|
|mergeInsertion_TCC1|✅ proved - incomplete|shostak|0.020|
|mergeInsertion_TCC2|✅ proved - incomplete|shostak|0.085|
|mergeInsertion_TCC3|✅ proved - incomplete|shostak|0.667|
|mergeInsertion_is_ok|✅ proved - incomplete|shostak|0.226|

## `firt_phase_ford_johnson`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|log_exp_TCC1|✅ proved - complete|shostak|0.030|
|log_exp_TCC2|✅ proved - complete|shostak|0.146|
|log_exp|✅ proved - incomplete|shostak|0.147|
|is_sorted?_TCC1|✅ proved - complete|shostak|0.060|
|add_fold_TCC1|✅ proved - incomplete|shostak|0.030|
|add_fold_TCC2|✅ proved - incomplete|shostak|0.030|
|add_fold_TCC3|✅ proved - incomplete|shostak|0.070|
|add_fold_TCC4|✅ proved - incomplete|shostak|0.080|
|nodes_TCC1|✅ proved - incomplete|shostak|0.639|
|map_TCC1|✅ proved - incomplete|shostak|0.020|
|map_TCC2|✅ proved - incomplete|shostak|0.046|
|map_TCC3|✅ proved - complete|shostak|0.020|
|map_TCC4|✅ proved - incomplete|shostak|0.090|
|permutation_equiv|✅ proved - incomplete|shostak|0.533|
|compare2to2_TCC1|✅ proved - complete|shostak|0.090|
|compare2to2_TCC2|✅ proved - complete|shostak|0.076|
|compare2to2_TCC3|✅ proved - complete|shostak|0.110|
|seqfjBottleneck_TCC1|✅ proved - complete|shostak|0.090|
|nstruct?_TCC1|✅ proved - incomplete|shostak|0.045|
|nstruct?_TCC2|✅ proved - complete|shostak|0.030|
|length_odd_TCC1|✅ proved - complete|shostak|0.040|
|length_odd_TCC2|✅ proved - complete|shostak|0.010|
|nstructER?_TCC1|✅ proved - incomplete|shostak|0.056|
|plain_finseqfj_nstructER0_TCC1|✅ proved - incomplete|shostak|0.070|
|plain_finseqfj_nstructER0|✅ proved - incomplete|shostak|0.166|
|occ_list_vs_fjnodes|✅ proved - incomplete|shostak|0.139|
|comparePeservesElements|✅ proved - incomplete|shostak|8.398|
|seqfjBottPreservesElements|✅ proved - incomplete|shostak|0.202|
|oneStepCorrectionER_TCC1|✅ proved - incomplete|shostak|0.061|
|oneStepCorrectionER_TCC2|✅ proved - incomplete|shostak|0.243|
|oneStepCorrectionER|✅ proved - incomplete|shostak|2.321|
|correctionER_TCC1|✅ proved - incomplete|shostak|0.020|
|correctionER_TCC2|✅ proved - incomplete|shostak|0.127|
|correctionER_TCC3|✅ proved - incomplete|shostak|0.065|
|correctionER|✅ proved - incomplete|shostak|0.821|
|lengthBottleneckIs1|✅ proved - incomplete|shostak|0.385|
|seqfjBottleneck_works|✅ proved - incomplete|shostak|0.173|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib//float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-pvsio-fix.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210219-extratregies.lisp`|
