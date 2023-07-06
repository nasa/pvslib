# Summary for `sorting`
Run started at 3:52:59 7/4/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **649**   | **649**    | **649**    | **0**  | **5:29.965 s**   |
|top|0|0|0|0|0.000|
|quicksort|21|21|21|0|4.623|
|total_preorder|2|2|2|0|0.036|
|sorting|18|18|18|0|2.269|
|sorting_aux|70|70|70|0|11.015|
|mergesort|17|17|17|0|8.362|
|insertionsort|11|11|11|0|1.495|
|insertionsort_fs|12|12|12|0|5.337|
|sorting_seq|58|58|58|0|14.179|
|sorting_min|22|22|22|0|10.199|
|bubblesort|32|32|32|0|7.960|
|heapsort|58|58|58|0|2:0.281|
|maxsort|38|38|38|0|12.001|
|binsertionsort|40|40|40|0|10.595|
|radix_sort|20|20|20|0|1.171|
|radix_sort_nat|30|30|30|0|14.532|
|ford_johnson|163|163|163|0|1:32.593|
|firt_phase_ford_johnson|37|37|37|0|13.317|
## Detailed Summary 
## `top`
No formula declaration found.
## `quicksort`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|leq_elements_TCC1|✅ proved - complete|shostak|0.075|
|leq_elements_TCC2|✅ proved - complete|shostak|0.051|
|g_elements_TCC1|✅ proved - complete|shostak|0.052|
|g_elements_TCC2|✅ proved - complete|shostak|0.058|
|leq_elements_size|✅ proved - complete|shostak|0.151|
|g_elements_size|✅ proved - complete|shostak|0.155|
|same_occurrence_leq|✅ proved - complete|shostak|0.259|
|same_occurrence_g|✅ proved - complete|shostak|0.230|
|quick_sort_TCC1|✅ proved - complete|shostak|0.176|
|quick_sort_TCC2|✅ proved - complete|shostak|0.076|
|g_leq_car_size_TCC1|✅ proved - complete|shostak|0.030|
|g_leq_car_size|✅ proved - complete|shostak|0.243|
|quick_sort_size|✅ proved - complete|shostak|0.265|
|leq_elements_works|✅ proved - complete|shostak|0.142|
|g_elements_works|✅ proved - complete|shostak|0.156|
|quick_sort_is_permutation|✅ proved - complete|shostak|0.494|
|append_null_in_sorted_is_sorted|✅ proved - complete|shostak|0.062|
|cons_in_sorted_TCC1|✅ proved - complete|shostak|0.030|
|cons_in_sorted|✅ proved - complete|shostak|0.143|
|quick_sort_is_sorted|✅ proved - complete|shostak|1.765|
|quick_sort_works|✅ proved - complete|shostak|0.010|

## `total_preorder`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|total_preorder_is_preorder|✅ proved - complete|shostak|0.020|
|total_order_is_total_preorder|✅ proved - complete|shostak|0.016|

## `sorting`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|lt_le|✅ proved - complete|shostak|0.010|
|gt_not_le|✅ proved - complete|shostak|0.020|
|search_TCC1|✅ proved - complete|shostak|0.020|
|search_TCC2|✅ proved - complete|shostak|0.044|
|not_in_l_gives_lenght_l|✅ proved - complete|shostak|0.173|
|not_member_gives_length|✅ proved - complete|shostak|0.034|
|search_works_TCC1|✅ proved - complete|shostak|0.151|
|search_works|✅ proved - complete|shostak|0.151|
|search_min_index|✅ proved - complete|shostak|0.212|
|search_in_rev_max_index|✅ proved - complete|shostak|0.116|
|search_in_append_of_lists_key_in_the_first|✅ proved - complete|shostak|0.283|
|search_in_append_of_lists_key_not_member_of_the_first|✅ proved - complete|shostak|0.221|
|search_in_append_of_lists_with_searched_key|✅ proved - complete|shostak|0.211|
|is_sorted?_TCC1|✅ proved - complete|shostak|0.070|
|is_sorted_implies_monotone_TCC1|✅ proved - complete|shostak|0.020|
|is_sorted_implies_monotone|✅ proved - complete|shostak|0.407|
|cdr_of_sorted_is_sorted_TCC1|✅ proved - complete|shostak|0.030|
|cdr_of_sorted_is_sorted|✅ proved - complete|shostak|0.096|

## `sorting_aux`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|elim_list_TCC1|✅ proved - complete|shostak|0.020|
|elim_list_TCC2|✅ proved - complete|shostak|0.030|
|elim_list_TCC3|✅ proved - complete|shostak|0.040|
|elim_list_TCC4|✅ proved - complete|shostak|0.020|
|elim_list_length_TCC1|✅ proved - complete|shostak|0.016|
|elim_list_length|✅ proved - complete|shostak|0.176|
|preservation_contents_TCC1|✅ proved - complete|shostak|0.020|
|preservation_contents|✅ proved - complete|shostak|0.086|
|nth_implies_member|✅ proved - complete|shostak|0.175|
|member_implies_exists_nth|✅ proved - complete|shostak|0.276|
|nth_of_list_is_nth_append_list_TCC1|✅ proved - complete|shostak|0.050|
|nth_of_list_is_nth_append_list|✅ proved - complete|shostak|0.189|
|nth_of_cons_TCC1|✅ proved - complete|shostak|0.040|
|nth_of_cons_TCC2|✅ proved - complete|shostak|0.017|
|nth_of_cons_TCC3|✅ proved - complete|shostak|0.050|
|nth_of_cons|✅ proved - complete|shostak|0.040|
|nth_of_append_TCC1|✅ proved - complete|shostak|0.050|
|nth_of_append_TCC2|✅ proved - complete|shostak|0.060|
|nth_of_append|✅ proved - complete|shostak|0.655|
|null_rev_null|✅ proved - complete|shostak|0.032|
|nth_member_TCC1|✅ proved - complete|shostak|0.020|
|nth_member|✅ proved - complete|shostak|0.184|
|car_rev_TCC1|✅ proved - complete|shostak|0.020|
|car_rev_TCC2|✅ proved - complete|shostak|0.061|
|car_rev_TCC3|✅ proved - complete|shostak|0.040|
|car_rev|✅ proved - complete|shostak|0.079|
|nth_rev_zero_TCC1|✅ proved - complete|shostak|0.040|
|nth_rev_zero_TCC2|✅ proved - complete|shostak|0.110|
|nth_rev_zero|✅ proved - complete|shostak|0.645|
|nth_rev_last_TCC1|✅ proved - complete|shostak|0.030|
|nth_rev_last_TCC2|✅ proved - complete|shostak|0.070|
|nth_rev_last|✅ proved - complete|shostak|0.087|
|nth_append_TCC1|✅ proved - complete|shostak|0.117|
|nth_append_TCC2|✅ proved - complete|shostak|0.020|
|nth_append|✅ proved - complete|shostak|0.176|
|nth_rev_TCC1|✅ proved - complete|shostak|0.116|
|nth_rev|✅ proved - complete|shostak|0.627|
|occurrences_TCC1|✅ proved - complete|shostak|0.020|
|occurrences_TCC2|✅ proved - complete|shostak|0.040|
|occurrences_TCC3|✅ proved - complete|shostak|0.040|
|occurrences_of_nth_element|✅ proved - complete|shostak|0.210|
|occurrences_of_app|✅ proved - complete|shostak|0.282|
|cons_of_perm_is_permutation|✅ proved - complete|shostak|0.030|
|ocurrence_list_has_element|✅ proved - complete|shostak|0.187|
|no_occurrence_implies|✅ proved - complete|shostak|0.192|
|member_implies_pos_occurrences|✅ proved - complete|shostak|0.126|
|occurrences_implies_member|✅ proved - complete|shostak|0.106|
|permutations_preserve_contents|✅ proved - complete|shostak|0.040|
|permutations_is_commutative|✅ proved - complete|shostak|0.038|
|permutations_is_transitive|✅ proved - complete|shostak|0.020|
|cons_elim_is_permutation|✅ proved - complete|shostak|0.289|
|same_occurrences_same_length|✅ proved - complete|shostak|0.270|
|permutations_is_ext_reflexive_TCC1|✅ proved - complete|shostak|0.020|
|permutations_is_ext_reflexive|✅ proved - complete|shostak|0.497|
|suffix_TCC1|✅ proved - complete|shostak|0.057|
|suffix_TCC2|✅ proved - complete|shostak|0.120|
|suffix_TCC3|✅ proved - complete|shostak|0.097|
|app_prefix_suffix|✅ proved - complete|shostak|0.186|
|length_suffix|✅ proved - complete|shostak|0.227|
|length_prefix|✅ proved - complete|shostak|0.196|
|contents_suffix_TCC1|✅ proved - complete|shostak|0.020|
|contents_suffix_TCC2|✅ proved - complete|shostak|0.076|
|contents_suffix_TCC3|✅ proved - complete|shostak|0.020|
|contents_suffix|✅ proved - complete|shostak|1.870|
|contents_prefix_TCC1|✅ proved - complete|shostak|0.070|
|contents_prefix_TCC2|✅ proved - complete|shostak|0.010|
|contents_prefix|✅ proved - complete|shostak|0.902|
|permutations_of_appends|✅ proved - complete|shostak|0.090|
|permutations_of_app_suff|✅ proved - complete|shostak|0.088|
|permutations_of_app_pref|✅ proved - complete|shostak|0.095|

## `mergesort`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|merge_TCC1|✅ proved - complete|shostak|0.030|
|merge_TCC2|✅ proved - complete|shostak|0.021|
|merge_TCC3|✅ proved - complete|shostak|0.100|
|merge_TCC4|✅ proved - complete|shostak|0.099|
|merge_size|✅ proved - complete|shostak|0.256|
|merge_occurrence|✅ proved - complete|shostak|0.000|
|merge_is_permutation|✅ proved - complete|shostak|0.050|
|merge_of_sorted_is_sorted|✅ proved - complete|shostak|0.581|
|merge_sort_TCC1|✅ proved - complete|shostak|0.120|
|merge_sort_TCC2|✅ proved - complete|shostak|0.075|
|merge_sort_TCC3|✅ proved - complete|shostak|0.090|
|merge_sort_size|✅ proved - complete|shostak|0.210|
|merge_sort_is_sorted|✅ proved - complete|shostak|0.283|
|merge_sort_is_permutation|✅ proved - complete|shostak|0.349|
|merge_sort_works|✅ proved - complete|shostak|0.020|
|merge_is_conservative|✅ proved - complete|shostak|3.843|
|merge_sort_is_conservative|✅ proved - complete|shostak|2.235|

## `insertionsort`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|insert_TCC1|✅ proved - complete|shostak|0.020|
|insert_TCC2|✅ proved - complete|shostak|0.044|
|occ_in_insert|✅ proved - complete|shostak|0.445|
|insertion_sort_TCC1|✅ proved - complete|shostak|0.030|
|insertion_sort_TCC2|✅ proved - complete|shostak|0.040|
|insert_size|✅ proved - complete|shostak|0.138|
|insert_in_sorted_preserves_sort|✅ proved - complete|shostak|0.416|
|insertionsort_is_sorted|✅ proved - complete|shostak|0.091|
|ins_and_cons_in_perm_is_perm|✅ proved - complete|shostak|0.070|
|insertion_sort_is_permutations|✅ proved - complete|shostak|0.175|
|insertion_sort_works|✅ proved - complete|shostak|0.026|

## `insertionsort_fs`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|insertion_TCC1|✅ proved - complete|shostak|0.020|
|insertion_TCC2|✅ proved - incomplete|shostak|0.116|
|length_insertion|✅ proved - incomplete|shostak|0.239|
|occ_in_insert|✅ proved - incomplete|shostak|1.881|
|fs_insertion_sort_TCC1|✅ proved - complete|shostak|0.020|
|fs_insertion_sort_TCC2|✅ proved - incomplete|shostak|0.090|
|fs_insert_size|✅ proved - incomplete|shostak|0.205|
|fs_insert_in_sorted_preserves_sort|✅ proved - incomplete|shostak|1.397|
|fs_insertionsort_is_sorted|✅ proved - incomplete|shostak|0.252|
|fs_ins_and_add_in_perm_is_perm|✅ proved - incomplete|shostak|0.934|
|fs_insertion_sort_is_permutations|✅ proved - incomplete|shostak|0.168|
|fs_insertion_sort_works|✅ proved - incomplete|shostak|0.015|

## `sorting_seq`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|occurrences_TCC1|✅ proved - complete|shostak|0.020|
|occurrences_TCC2|✅ proved - complete|shostak|0.030|
|occurrences_TCC3|✅ proved - complete|shostak|0.091|
|occurrences_TCC4|✅ proved - complete|shostak|0.030|
|occurrences_TCC5|✅ proved - complete|shostak|0.100|
|finseq2list_rec_equivalence_TCC1|✅ proved - complete|shostak|0.020|
|finseq2list_rec_equivalence_TCC2|✅ proved - complete|shostak|0.080|
|finseq2list_rec_equivalence_TCC3|✅ proved - complete|shostak|0.020|
|finseq2list_rec_equivalence|✅ proved - complete|shostak|0.225|
|finseq2lists_for_suffixes_TCC1|✅ proved - complete|shostak|0.010|
|finseq2lists_for_suffixes_TCC2|✅ proved - complete|shostak|0.080|
|finseq2lists_for_suffixes_TCC3|✅ proved - complete|shostak|0.010|
|finseq2lists_for_suffixes|✅ proved - complete|shostak|0.300|
|subseq_is_cdr_TCC1|✅ proved - complete|shostak|0.010|
|subseq_is_cdr_TCC2|✅ proved - complete|shostak|0.040|
|subseq_is_cdr|✅ proved - complete|shostak|0.157|
|same_occ_fseq_list|✅ proved - complete|shostak|0.390|
|perm_fsq_iff_perm_list|✅ proved - complete|shostak|0.055|
|permutations_equiv|✅ proved - complete|shostak|0.056|
|psorted_TCC1|✅ proved - complete|shostak|0.076|
|is_sorted?_TCC1|✅ proved - complete|shostak|0.060|
|is_sorted_equiv|✅ proved - complete|shostak|0.301|
|ind_parent_TCC1|✅ proved - complete|shostak|0.050|
|left_child_TCC1|✅ proved - complete|shostak|0.106|
|right_child_TCC1|✅ proved - complete|shostak|0.100|
|is_p_heap_TCC1|✅ proved - complete|shostak|0.020|
|is_p_heap_TCC2|✅ proved - complete|shostak|0.020|
|is_p_heap_TCC3|✅ proved - complete|shostak|0.146|
|is_p_heap_TCC4|✅ proved - complete|shostak|0.153|
|is_p_heap_TCC5|✅ proved - complete|shostak|0.155|
|is_heap_TCC1|✅ proved - complete|shostak|0.020|
|is_heap_TCC2|✅ proved - complete|shostak|0.030|
|root_is_greatest_in_p_heap_TCC1|✅ proved - complete|shostak|0.010|
|root_is_greatest_in_p_heap_TCC2|✅ proved - complete|shostak|0.010|
|root_is_greatest_in_p_heap_TCC3|✅ proved - complete|shostak|0.080|
|root_is_greatest_in_p_heap|✅ proved - complete|shostak|0.640|
|root_is_greatest_in_heap_TCC1|✅ proved - complete|shostak|0.070|
|root_is_greatest_in_heap|✅ proved - complete|shostak|0.050|
|parent_TCC1|✅ proved - complete|shostak|0.059|
|ind_gc_TCC1|✅ proved - complete|shostak|0.020|
|ind_gc_TCC2|✅ proved - complete|shostak|0.150|
|ind_gc_TCC3|✅ proved - complete|shostak|0.152|
|swap_of_p_heap_TCC1|✅ proved - complete|shostak|0.080|
|swap_of_p_heap|✅ proved - complete|shostak|0.044|
|swap_commutes|✅ proved - complete|shostak|0.060|
|occ_replaces_at_j_TCC1|✅ proved - complete|shostak|0.060|
|occ_replaces_at_j|✅ proved - complete|shostak|1.235|
|swap_occ_at_0_TCC1|✅ proved - complete|shostak|0.020|
|swap_occ_at_0_TCC2|✅ proved - complete|shostak|0.010|
|swap_occ_at_0|✅ proved - complete|shostak|1.589|
|swap_permutes|✅ proved - complete|shostak|1.340|
|swap_of_heap_TCC1|✅ proved - complete|shostak|0.070|
|swap_of_heap_TCC2|✅ proved - complete|shostak|0.059|
|swap_of_heap|✅ proved - complete|shostak|0.130|
|occ_in_insert|✅ proved - incomplete|shostak|5.165|
|occ_in_delete|✅ proved - incomplete|shostak|0.000|
|delete_insert_same_permutes_TCC1|✅ proved - incomplete|shostak|0.030|
|delete_insert_same_permutes|✅ proved - incomplete|shostak|0.085|

## `sorting_min`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|switching_min_TCC1|✅ proved - complete|shostak|0.050|
|switching_min_TCC2|✅ proved - complete|shostak|0.069|
|switching_min_TCC3|✅ proved - complete|shostak|0.221|
|switching_min_TCC4|✅ proved - complete|shostak|0.070|
|reverse_is_permutation|✅ proved - complete|shostak|0.230|
|swch_min_preserves_length|✅ proved - complete|shostak|0.437|
|swch_min_preserves_contents|✅ proved - complete|shostak|0.567|
|swch_min_is_permutation|✅ proved - complete|shostak|0.503|
|last_swch_min_element_is_least_TCC1|✅ proved - complete|shostak|0.092|
|last_swch_min_element_is_least_TCC2|✅ proved - complete|shostak|0.040|
|last_swch_min_element_is_least|✅ proved - complete|shostak|1.405|
|sorting_min_TCC1|✅ proved - complete|shostak|0.062|
|sorting_min_TCC2|✅ proved - complete|shostak|0.340|
|sorting_min_preserves_length|✅ proved - complete|shostak|0.886|
|sorting_min_is_permutations|✅ proved - complete|shostak|1.142|
|swch_min_moves_min_to_end_TCC1|✅ proved - complete|shostak|0.090|
|swch_min_moves_min_to_end_TCC2|✅ proved - complete|shostak|0.112|
|swch_min_moves_min_to_end|✅ proved - complete|shostak|0.164|
|sorting_min_moves_min_to_begining_TCC1|✅ proved - complete|shostak|0.084|
|sorting_min_moves_min_to_begining_TCC2|✅ proved - complete|shostak|0.100|
|sorting_min_moves_min_to_begining|✅ proved - complete|shostak|0.564|
|sorting_min_work|✅ proved - complete|shostak|2.971|

## `bubblesort`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|bubbling_TCC1|✅ proved - complete|shostak|0.040|
|bubbling_TCC2|✅ proved - complete|shostak|0.056|
|bubbling_TCC3|✅ proved - complete|shostak|0.110|
|bubbling_TCC4|✅ proved - complete|shostak|0.036|
|bubbling_TCC5|✅ proved - complete|shostak|0.090|
|bubbling_TCC6|✅ proved - complete|shostak|0.020|
|bubbling_preserves_length|✅ proved - complete|shostak|0.332|
|bubbling_preserves_suffix_TCC1|✅ proved - complete|shostak|0.055|
|bubbling_preserves_suffix|✅ proved - complete|shostak|0.670|
|bubblesort_aux_TCC1|✅ proved - complete|shostak|0.060|
|bubblesort_aux_TCC2|✅ proved - complete|shostak|0.020|
|bubblesort_aux_preserves_length|✅ proved - complete|shostak|0.130|
|bubblesort_TCC1|✅ proved - complete|shostak|0.057|
|bubbling_preseves_contents|✅ proved - complete|shostak|0.921|
|bubbling_preserves_prefix_TCC1|✅ proved - complete|shostak|0.025|
|bubbling_preserves_prefix_TCC2|✅ proved - complete|shostak|0.080|
|bubbling_preserves_prefix|✅ proved - complete|shostak|1.324|
|bubbling_bubbles_TCC1|✅ proved - complete|shostak|0.060|
|bubbling_bubbles_TCC2|✅ proved - complete|shostak|0.052|
|bubbling_bubbles|✅ proved - complete|shostak|0.928|
|bubblesort_aux_preserves_suffix_TCC1|✅ proved - complete|shostak|0.053|
|bubblesort_aux_preserves_suffix|✅ proved - complete|shostak|0.475|
|bubblesort_aux_is_permutation|✅ proved - complete|shostak|0.170|
|bubblesort_aux_preserves_prefix_TCC1|✅ proved - complete|shostak|0.100|
|bubblesort_aux_preserves_prefix_TCC2|✅ proved - complete|shostak|0.020|
|bubblesort_aux_preserves_prefix|✅ proved - complete|shostak|0.609|
|bubblesort_is_permutation|✅ proved - complete|shostak|0.070|
|bubblesort_aux_sorts_prefix_TCC1|✅ proved - complete|shostak|0.060|
|bubblesort_aux_sorts_prefix_TCC2|✅ proved - complete|shostak|0.080|
|bubblesort_aux_sorts_prefix|✅ proved - complete|shostak|1.036|
|bubblesort_is_sorted|✅ proved - complete|shostak|0.198|
|bubblesort_works|✅ proved - complete|shostak|0.023|

## `heapsort`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|sink_TCC1|✅ proved - complete|shostak|0.020|
|sink_TCC2|✅ proved - complete|shostak|0.536|
|sink_TCC3|✅ proved - complete|shostak|0.375|
|sink_TCC4|✅ proved - complete|shostak|0.372|
|sink_TCC5|✅ proved - complete|shostak|0.389|
|sink_TCC6|✅ proved - complete|shostak|0.245|
|sink_permutes_TCC1|✅ proved - complete|shostak|0.020|
|sink_permutes|✅ proved - complete|shostak|1.624|
|sink_length|✅ proved - complete|shostak|1.211|
|sink_stable_TCC1|✅ proved - complete|shostak|0.020|
|sink_stable|✅ proved - complete|shostak|5.907|
|sink_in_stable_TCC1|✅ proved - complete|shostak|0.029|
|sink_in_stable|✅ proved - complete|shostak|0.000|
|sink_interval_children_stable_TCC1|✅ proved - complete|shostak|0.213|
|sink_interval_children_stable_TCC2|✅ proved - complete|shostak|0.377|
|sink_interval_children_stable_TCC3|✅ proved - complete|shostak|0.547|
|sink_interval_children_stable_TCC4|✅ proved - complete|shostak|0.380|
|sink_interval_children_stable_TCC5|✅ proved - complete|shostak|0.705|
|sink_interval_children_stable_TCC6|✅ proved - complete|shostak|0.389|
|sink_interval_children_stable_TCC7|✅ proved - complete|shostak|0.456|
|sink_interval_children_stable|✅ proved - complete|shostak|7.444|
|is_heap_from_to_TCC1|✅ proved - complete|shostak|0.020|
|is_heap_from_to_TCC2|✅ proved - complete|shostak|0.020|
|is_heap_from_to_TCC3|✅ proved - complete|shostak|0.282|
|is_heap_from_to_TCC4|✅ proved - complete|shostak|0.286|
|is_heap_from_to_TCC5|✅ proved - complete|shostak|0.223|
|is_heap_from_to_TCC6|✅ proved - complete|shostak|0.226|
|is_heap_from_to|✅ proved - complete|shostak|1:15.693|
|heapify_TCC1|✅ proved - complete|shostak|0.060|
|heapify_TCC2|✅ proved - complete|shostak|0.050|
|heapify_TCC3|✅ proved - complete|shostak|0.087|
|heapify_TCC4|✅ proved - complete|shostak|0.030|
|heapify_TCC5|✅ proved - complete|shostak|0.060|
|heapify_TCC6|✅ proved - complete|shostak|0.057|
|heapify_length_TCC1|✅ proved - complete|shostak|0.030|
|heapify_length|✅ proved - complete|shostak|1.610|
|heapify_permutes|✅ proved - complete|shostak|1.341|
|heapify_heapifies_TCC1|✅ proved - complete|shostak|0.040|
|heapify_heapifies|✅ proved - complete|shostak|4.989|
|heapsort_aux_TCC1|✅ proved - complete|shostak|0.020|
|heapsort_aux_TCC2|✅ proved - complete|shostak|0.020|
|heapsort_aux_TCC3|✅ proved - complete|shostak|0.040|
|heapsort_aux_TCC4|✅ proved - complete|shostak|0.060|
|heapsort_aux_TCC5|✅ proved - complete|shostak|0.010|
|heapsort_aux_TCC6|✅ proved - complete|shostak|0.267|
|heapsort_aux_TCC7|✅ proved - complete|shostak|0.020|
|heapsort_aux_permutes|✅ proved - complete|shostak|0.660|
|heapsort_aux_length|✅ proved - complete|shostak|0.451|
|heapsort_aux_psorts_TCC1|✅ proved - complete|shostak|0.010|
|heapsort_aux_psorts_TCC2|✅ proved - complete|shostak|0.010|
|heapsort_aux_psorts_TCC3|✅ proved - complete|shostak|0.052|
|heapsort_aux_psorts_TCC4|✅ proved - complete|shostak|0.060|
|heapsort_aux_psorts_TCC5|✅ proved - complete|shostak|0.212|
|heapsort_aux_psorts_TCC6|✅ proved - complete|shostak|0.031|
|heapsort_aux_psorts|✅ proved - complete|shostak|10.228|
|heapsort_TCC1|✅ proved - complete|shostak|0.090|
|heapsort_TCC2|✅ proved - complete|shostak|0.050|
|heapsort_works|✅ proved - complete|shostak|1.627|

## `maxsort`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|move_max_TCC1|✅ proved - complete|shostak|0.114|
|move_max_TCC2|✅ proved - complete|shostak|0.020|
|move_max_TCC3|✅ proved - complete|shostak|0.010|
|move_max_TCC4|✅ proved - complete|shostak|0.020|
|move_max_TCC5|✅ proved - complete|shostak|0.010|
|move_max_TCC6|✅ proved - complete|shostak|0.056|
|move_max_TCC7|✅ proved - complete|shostak|0.070|
|move_max_TCC8|✅ proved - complete|shostak|0.030|
|move_max_TCC9|✅ proved - complete|shostak|0.075|
|move_max_TCC10|✅ proved - complete|shostak|0.030|
|move_max_length_TCC1|✅ proved - complete|shostak|0.020|
|move_max_length|✅ proved - complete|shostak|0.473|
|move_max_preserves_out_TCC1|✅ proved - complete|shostak|0.034|
|move_max_preserves_out|✅ proved - complete|shostak|1.190|
|move_max_preserves_TCC1|✅ proved - complete|shostak|0.063|
|move_max_preserves|✅ proved - complete|shostak|1.565|
|move_max_preserves2_TCC1|✅ proved - complete|shostak|0.020|
|move_max_preserves2_TCC2|✅ proved - complete|shostak|0.040|
|move_max_preserves2|✅ proved - complete|shostak|1.834|
|move_max_works_TCC1|✅ proved - complete|shostak|0.040|
|move_max_works_TCC2|✅ proved - complete|shostak|0.030|
|move_max_works|✅ proved - complete|shostak|2.660|
|move_max_permutes|✅ proved - complete|shostak|0.591|
|maxsort_aux_TCC1|✅ proved - complete|shostak|0.021|
|maxsort_aux_TCC2|✅ proved - complete|shostak|0.040|
|maxsort_aux_TCC3|✅ proved - complete|shostak|0.010|
|maxsort_aux_length|✅ proved - complete|shostak|0.153|
|maxsort_aux_psorts_TCC1|✅ proved - complete|shostak|0.010|
|maxsort_aux_psorts_TCC2|✅ proved - complete|shostak|0.020|
|maxsort_aux_psorts_TCC3|✅ proved - complete|shostak|0.060|
|maxsort_aux_psorts_TCC4|✅ proved - complete|shostak|0.040|
|maxsort_aux_psorts|✅ proved - complete|shostak|1.262|
|maxsort_aux_permutes_TCC1|✅ proved - complete|shostak|0.010|
|maxsort_aux_permutes|✅ proved - complete|shostak|0.347|
|maxsort_TCC1|✅ proved - complete|shostak|0.030|
|maxsort_sorts|✅ proved - complete|shostak|0.622|
|maxsort_permutes|✅ proved - complete|shostak|0.361|
|maxsort_works|✅ proved - complete|shostak|0.020|

## `binsertionsort`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|bin_search_TCC1|✅ proved - complete|shostak|0.020|
|bin_search_TCC2|✅ proved - complete|shostak|0.028|
|bin_search_TCC3|✅ proved - complete|shostak|0.020|
|bin_search_TCC4|✅ proved - complete|shostak|0.060|
|bin_search_TCC5|✅ proved - complete|shostak|0.060|
|bin_search_TCC6|✅ proved - complete|shostak|0.072|
|bin_search_TCC7|✅ proved - complete|shostak|0.282|
|bin_search_TCC8|✅ proved - complete|shostak|0.075|
|bin_search_TCC9|✅ proved - complete|shostak|0.405|
|bin_search_TCC10|✅ proved - complete|shostak|0.241|
|bin_search_TCC11|✅ proved - complete|shostak|0.226|
|bin_search_TCC12|✅ proved - complete|shostak|0.075|
|binsertionsort_aux_TCC1|✅ proved - complete|shostak|0.020|
|binsertionsort_aux_TCC2|✅ proved - incomplete|shostak|0.050|
|binsertionsort_aux_TCC3|✅ proved - incomplete|shostak|0.172|
|binsertionsort_aux_TCC4|✅ proved - incomplete|shostak|0.205|
|binsertionsort_aux_TCC5|✅ proved - incomplete|shostak|0.106|
|binsertionsort_aux_TCC6|✅ proved - incomplete|shostak|0.186|
|binsertionsort_aux_TCC7|✅ proved - incomplete|shostak|0.240|
|binsertionsort_aux_TCC8|✅ proved - complete|shostak|0.020|
|binsertionsort_aux_TCC9|✅ proved - complete|shostak|0.020|
|binsertionsort_TCC1|✅ proved - complete|shostak|0.010|
|binsertionsort_TCC2|✅ proved - complete|shostak|0.020|
|b_search_bound|✅ proved - complete|shostak|0.689|
|b_search_preserves_sorting_TCC1|✅ proved - complete|shostak|0.060|
|b_search_preserves_sorting_TCC2|✅ proved - complete|shostak|0.096|
|b_search_preserves_sorting_TCC3|✅ proved - complete|shostak|0.103|
|b_search_preserves_sorting|✅ proved - incomplete|shostak|3.104|
|b_search_translation_TCC1|✅ proved - complete|shostak|0.020|
|b_search_translation_TCC2|✅ proved - complete|shostak|0.010|
|b_search_translation_TCC3|✅ proved - complete|shostak|0.020|
|b_search_translation_TCC4|✅ proved - complete|shostak|0.073|
|b_search_translation_TCC5|✅ proved - complete|shostak|0.070|
|b_search_translation|✅ proved - complete|shostak|2.368|
|bs_aux_perm|✅ proved - incomplete|shostak|0.000|
|bs_aux_sorts_TCC1|✅ proved - complete|shostak|0.010|
|bs_aux_sorts|✅ proved - incomplete|shostak|1.123|
|binsertion_permutation|✅ proved - incomplete|shostak|0.021|
|binsertion_sorts|✅ proved - incomplete|shostak|0.195|
|binsertionsort_works|✅ proved - incomplete|shostak|0.020|

## `radix_sort`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|radixsort_aux_TCC1|✅ proved - complete|shostak|0.010|
|radixsort_aux_TCC2|✅ proved - complete|shostak|0.020|
|radixsort_aux_TCC3|✅ proved - complete|shostak|0.040|
|radixsort_aux_TCC4|✅ proved - complete|shostak|0.025|
|radixsort_TCC1|✅ proved - complete|shostak|0.010|
|radixsort_permutes|✅ proved - complete|shostak|0.137|
|lex_TCC1|✅ proved - complete|shostak|0.030|
|lex_TCC2|✅ proved - complete|shostak|0.030|
|lex_total_preorder|✅ proved - complete|shostak|0.279|
|merge_sort_lex_sorted_TCC1|✅ proved - complete|shostak|0.020|
|merge_sort_lex_sorted_TCC2|✅ proved - complete|shostak|0.020|
|merge_sort_lex_sorted_TCC3|✅ proved - complete|shostak|0.010|
|merge_sort_lex_sorted_TCC4|✅ proved - complete|shostak|0.047|
|merge_sort_lex_sorted|✅ proved - complete|shostak|0.231|
|radix_sort_is_sorted_TCC1|✅ proved - complete|shostak|0.020|
|radix_sort_is_sorted_TCC2|✅ proved - complete|shostak|0.020|
|radix_sort_is_sorted_TCC3|✅ proved - complete|shostak|0.010|
|radix_sort_is_sorted_TCC4|✅ proved - complete|shostak|0.112|
|radix_sort_is_sorted_TCC5|✅ proved - complete|shostak|0.060|
|radixsort_sorts|✅ proved - complete|shostak|0.040|

## `radix_sort_nat`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|d_nth_TCC1|✅ proved - complete|shostak|0.030|
|d_nth_TCC2|✅ proved - complete|shostak|0.015|
|n_digits_TCC1|✅ proved - incomplete|shostak|0.160|
|max_digits_TCC1|✅ proved - complete|shostak|0.061|
|max_digits_TCC2|✅ proved - complete|shostak|0.040|
|max_digits_TCC3|✅ proved - complete|shostak|0.085|
|max_digits_TCC4|✅ proved - complete|shostak|0.141|
|max_digits_works_TCC1|✅ proved - complete|shostak|0.010|
|max_digits_works|✅ proved - incomplete|shostak|0.484|
|d_nth_zero|✅ proved - incomplete|shostak|0.195|
|d_nth_digits_TCC1|✅ proved - incomplete|shostak|0.020|
|d_nth_digits|✅ proved - incomplete|shostak|0.959|
|d_exp_dec|✅ proved - incomplete|shostak|0.862|
|d_nth_rem|✅ proved - incomplete|shostak|4.234|
|n_digits_power|✅ proved - incomplete|shostak|0.253|
|d_nth_nmod_TCC1|✅ proved - complete|shostak|0.020|
|d_nth_nmod|✅ proved - incomplete|shostak|0.238|
|n_digits_monotone|✅ proved - incomplete|shostak|0.285|
|n_digits_ten_power_TCC1|✅ proved - complete|shostak|0.106|
|n_digits_ten_power|✅ proved - incomplete|shostak|0.389|
|n_digits_nmod_leq|✅ proved - incomplete|shostak|0.094|
|leq_N_TCC1|✅ proved - incomplete|shostak|0.066|
|lex_preserves_TCC1|✅ proved - complete|shostak|0.020|
|lex_preserves|✅ proved - incomplete|shostak|0.211|
|lex_nat_works_aux_TCC1|✅ proved - incomplete|shostak|0.026|
|lex_nat_works_aux|✅ proved - incomplete|shostak|4.712|
|lex_nat_works_TCC1|✅ proved - incomplete|shostak|0.020|
|lex_nat_works|✅ proved - incomplete|shostak|0.075|
|radixsort_nat_works_TCC1|✅ proved - incomplete|shostak|0.070|
|radixsort_nat_works|✅ proved - incomplete|shostak|0.651|

## `ford_johnson`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|t_TCC1|✅ proved - complete|shostak|0.941|
|t_is_increasing|✅ proved - complete|shostak|1.089|
|t_is_unbounded|✅ proved - complete|shostak|0.271|
|t_qinversible_TCC1|✅ proved - complete|shostak|0.010|
|t_qinversible|✅ proved - complete|shostak|0.320|
|maxk_TCC1|✅ proved - complete|shostak|0.020|
|maxk_TCC2|✅ proved - complete|shostak|0.287|
|maxk_correction|✅ proved - complete|shostak|0.114|
|upToOneIsCorrectAll_TCC1|✅ proved - complete|shostak|0.040|
|upToOneIsCorrectAll_TCC2|✅ proved - incomplete|shostak|0.115|
|upToOneIsCorrectAll_TCC3|✅ proved - complete|shostak|0.030|
|upToOneIsCorrectAll|✅ proved - incomplete|shostak|0.141|
|upToOnePreservesIndx_TCC1|✅ proved - incomplete|shostak|0.110|
|upToOnePreservesIndx_TCC2|✅ proved - complete|shostak|0.060|
|upToOnePreservesIndx|✅ proved - incomplete|shostak|0.384|
|bin_search_TCC1|✅ proved - complete|shostak|0.014|
|bin_search_TCC2|✅ proved - complete|shostak|0.030|
|bin_search_TCC3|✅ proved - complete|shostak|0.040|
|bin_search_TCC4|✅ proved - complete|shostak|0.050|
|bin_search_TCC5|✅ proved - complete|shostak|0.070|
|bin_search_TCC6|✅ proved - complete|shostak|0.076|
|bin_search_TCC7|✅ proved - complete|shostak|0.291|
|bin_search_TCC8|✅ proved - complete|shostak|0.080|
|bin_search_TCC9|✅ proved - complete|shostak|0.413|
|bin_search_TCC10|✅ proved - complete|shostak|0.246|
|bin_search_TCC11|✅ proved - complete|shostak|0.241|
|bin_search_TCC12|✅ proved - complete|shostak|0.090|
|b_search_bound|✅ proved - complete|shostak|0.846|
|b_search_preserves_sorting_TCC1|✅ proved - complete|shostak|0.070|
|b_search_preserves_sorting_TCC2|✅ proved - complete|shostak|0.108|
|b_search_preserves_sorting_TCC3|✅ proved - complete|shostak|0.107|
|b_search_preserves_sorting|✅ proved - incomplete|shostak|3.980|
|b_search_removeSon_TCC1|✅ proved - complete|shostak|0.048|
|b_search_removeSon_TCC2|✅ proved - complete|shostak|0.090|
|b_search_removeSon_TCC3|✅ proved - complete|shostak|0.040|
|b_search_removeSon_TCC4|✅ proved - complete|shostak|0.044|
|b_search_removeSon|✅ proved - complete|shostak|6.568|
|PartialERforK?_TCC1|✅ proved - complete|shostak|0.020|
|PartialERforK?_TCC2|✅ proved - complete|shostak|0.120|
|PartialERforK?_TCC3|✅ proved - incomplete|shostak|0.059|
|PartialERforK?_TCC4|✅ proved - incomplete|shostak|0.000|
|PartialERforK?_TCC5|✅ proved - incomplete|shostak|0.126|
|oddNstructDeconstruction_TCC1|✅ proved - incomplete|shostak|0.047|
|oddNstructDeconstruction_TCC2|✅ proved - incomplete|shostak|0.066|
|oddNstructDeconstruction_TCC3|✅ proved - incomplete|shostak|0.020|
|oddNstructDeconstruction|✅ proved - incomplete|shostak|0.949|
|nstructER_vs_nstructER_basic_TCC1|✅ proved - incomplete|shostak|0.030|
|nstructER_vs_nstructER_basic_TCC2|✅ proved - incomplete|shostak|0.061|
|nstructER_vs_nstructER_basic|✅ proved - incomplete|shostak|0.390|
|occ_in_rest_TCC1|✅ proved - complete|shostak|0.010|
|occ_in_rest|✅ proved - incomplete|shostak|0.034|
|occ_in_removeson|✅ proved - incomplete|shostak|2.095|
|occ_in_insert|✅ proved - incomplete|shostak|3.194|
|insert_removeson_permutation_TCC1|✅ proved - complete|shostak|0.040|
|insert_removeson_permutation|✅ proved - incomplete|shostak|0.082|
|insertSonPreservesPartialERforK_TCC1|✅ proved - complete|shostak|0.096|
|insertSonPreservesPartialERforK_TCC2|✅ proved - complete|shostak|0.311|
|insertSonPreservesPartialERforK_TCC3|✅ proved - incomplete|shostak|0.062|
|insertSonPreservesPartialERforK_TCC4|✅ proved - incomplete|shostak|0.122|
|insertSonPreservesPartialERforK_TCC5|✅ proved - incomplete|shostak|0.134|
|insertSonPreservesPartialERforK_TCC6|✅ proved - incomplete|shostak|0.060|
|insertSonPreservesPartialERforK_TCC7|✅ proved - incomplete|shostak|0.126|
|insertSonPreservesPartialERforK_TCC8|✅ proved - incomplete|shostak|0.935|
|insertSonPreservesPartialERforK_TCC9|✅ proved - incomplete|shostak|0.463|
|insertSonPreservesPartialERforK_TCC10|✅ proved - incomplete|shostak|0.271|
|insertSonPreservesPartialERforK_TCC11|✅ proved - incomplete|shostak|0.099|
|insertSonPreservesPartialERforK|✅ proved - incomplete|shostak|6.904|
|insertCarPreservesPartialERforK_TCC1|✅ proved - complete|shostak|0.080|
|insertCarPreservesPartialERforK_TCC2|✅ proved - complete|shostak|0.153|
|insertCarPreservesPartialERforK_TCC3|✅ proved - incomplete|shostak|0.060|
|insertCarPreservesPartialERforK_TCC4|✅ proved - incomplete|shostak|0.060|
|insertCarPreservesPartialERforK_TCC5|✅ proved - incomplete|shostak|0.392|
|insertCarPreservesPartialERforK_TCC6|✅ proved - incomplete|shostak|0.110|
|insertCarPreservesPartialERforK_TCC7|✅ proved - incomplete|shostak|0.107|
|insertCarPreservesPartialERforK_TCC8|✅ proved - incomplete|shostak|0.117|
|insertCarPreservesPartialERforK_TCC9|✅ proved - incomplete|shostak|0.055|
|insertCarPreservesPartialERforK|✅ proved - incomplete|shostak|1.083|
|binsert_tk_interval_TCC1|✅ proved - complete|shostak|0.087|
|binsert_tk_interval_TCC2|✅ proved - complete|shostak|0.050|
|binsert_tk_interval_TCC3|✅ proved - incomplete|shostak|0.039|
|binsert_tk_interval_TCC4|✅ proved - incomplete|shostak|0.050|
|binsert_tk_interval_TCC5|✅ proved - incomplete|shostak|0.106|
|binsert_tk_interval_TCC6|✅ proved - incomplete|shostak|0.425|
|binsert_tk_interval_TCC7|✅ proved - incomplete|shostak|0.136|
|binsert_tk_interval_TCC8|✅ proved - incomplete|shostak|0.056|
|binsert_tk_interval_TCC9|✅ proved - incomplete|shostak|0.070|
|binsert_tk_interval_TCC10|✅ proved - incomplete|shostak|0.076|
|binsert_tk_interval_TCC11|✅ proved - incomplete|shostak|0.147|
|binsert_tk_interval_TCC12|✅ proved - incomplete|shostak|0.653|
|binsert_tk_interval_TCC13|✅ proved - incomplete|shostak|0.203|
|binsert_tk_interval_TCC14|✅ proved - incomplete|shostak|0.145|
|binsert_tk_interval_TCC15|✅ proved - incomplete|shostak|0.560|
|binsert_tk_interval_TCC16|✅ proved - incomplete|shostak|0.196|
|binsert_tk_interval_TCC17|✅ proved - incomplete|shostak|0.130|
|binsert_tk_interval_TCC18|✅ proved - incomplete|shostak|0.049|
|binsert_tk_interval_TCC19|✅ proved - incomplete|shostak|0.172|
|binsert_tk_interval_length|✅ proved - incomplete|shostak|1.530|
|binsert_tk_interval_preserves_indx_TCC1|✅ proved - incomplete|shostak|0.040|
|binsert_tk_interval_preserves_indx_TCC2|✅ proved - incomplete|shostak|0.040|
|binsert_tk_interval_preserves_indx|✅ proved - incomplete|shostak|0.000|
|up_partialER_TCC1|✅ proved - incomplete|shostak|0.041|
|up_partialER_TCC2|✅ proved - complete|shostak|0.030|
|up_partialER_TCC3|✅ proved - incomplete|shostak|0.040|
|up_partialER_TCC4|✅ proved - incomplete|shostak|0.061|
|up_partialER_TCC5|✅ proved - incomplete|shostak|0.073|
|up_partialER|✅ proved - incomplete|shostak|2.928|
|binsert_tk_interval_preserves_oddList|✅ proved - incomplete|shostak|1.002|
|binsert_tk_interval_gives_permutation|✅ proved - incomplete|shostak|3.347|
|PartialERforK_equiv_TCC1|✅ proved - complete|shostak|0.123|
|PartialERforK_equiv_TCC2|✅ proved - incomplete|shostak|0.168|
|PartialERforK_equiv|✅ proved - incomplete|shostak|0.926|
|basis_PartialERforK_equiv_TCC1|✅ proved - complete|shostak|0.049|
|basis_PartialERforK_equiv_TCC2|✅ proved - complete|shostak|0.230|
|basis_PartialERforK_equiv_TCC3|✅ proved - incomplete|shostak|0.028|
|basis_PartialERforK_equiv_TCC4|✅ proved - incomplete|shostak|0.260|
|basis_PartialERforK_equiv_TCC5|✅ proved - incomplete|shostak|0.078|
|basis_PartialERforK_equiv_TCC6|✅ proved - incomplete|shostak|0.300|
|basis_PartialERforK_equiv_TCC7|✅ proved - incomplete|shostak|1.484|
|basis_PartialERforK_equiv|✅ proved - incomplete|shostak|3.269|
|binsert_one_level_TCC1|✅ proved - complete|shostak|0.076|
|binsert_one_level_TCC2|✅ proved - complete|shostak|0.203|
|binsert_one_level_TCC3|✅ proved - incomplete|shostak|0.085|
|binsert_one_level_TCC4|✅ proved - incomplete|shostak|0.110|
|binsert_one_level_TCC5|✅ proved - incomplete|shostak|0.095|
|binsert_one_level_TCC6|✅ proved - incomplete|shostak|0.080|
|binsert_one_level_TCC7|✅ proved - incomplete|shostak|0.930|
|binsert_one_level_TCC8|✅ proved - incomplete|shostak|0.000|
|binsert_one_level_TCC9|✅ proved - incomplete|shostak|0.056|
|binsert_one_level_TCC10|✅ proved - incomplete|shostak|0.060|
|binsert_one_level_TCC11|✅ proved - incomplete|shostak|0.334|
|binsert_one_level_TCC12|✅ proved - incomplete|shostak|0.140|
|binsert_one_level_TCC13|✅ proved - incomplete|shostak|0.225|
|binsert_one_level_TCC14|✅ proved - incomplete|shostak|0.533|
|binsert_one_level_TCC15|✅ proved - incomplete|shostak|0.656|
|binsert_one_level_TCC16|✅ proved - incomplete|shostak|0.605|
|binsert_one_level_TCC17|✅ proved - incomplete|shostak|0.050|
|binsert_one_level_TCC18|✅ proved - incomplete|shostak|0.064|
|binsert_one_level_length_TCC1|✅ proved - complete|shostak|0.040|
|binsert_one_level_length_TCC2|✅ proved - complete|shostak|0.020|
|binsert_one_level_length_TCC3|✅ proved - complete|shostak|0.035|
|binsert_one_level_length_TCC4|✅ proved - complete|shostak|0.145|
|binsert_one_level_length_TCC5|✅ proved - incomplete|shostak|0.156|
|binsert_one_level_length|✅ proved - incomplete|shostak|7.617|
|binsert_one_level_gives_permutation|✅ proved - incomplete|shostak|8.142|
|binsert_one_level_go_to_nstruct_TCC1|✅ proved - incomplete|shostak|0.058|
|binsert_one_level_go_to_nstruct_TCC2|✅ proved - incomplete|shostak|0.110|
|binsert_one_level_go_to_nstruct|✅ proved - incomplete|shostak|12.073|
|nstructER_basic_equiv_TCC1|✅ proved - incomplete|shostak|0.139|
|nstructER_basic_equiv_TCC2|✅ proved - incomplete|shostak|0.260|
|nstructER_basic_equiv|✅ proved - incomplete|shostak|0.498|
|seqfjFatten_TCC1|✅ proved - incomplete|shostak|0.020|
|seqfjFatten_TCC2|✅ proved - incomplete|shostak|0.165|
|seqfjFatten_TCC3|✅ proved - incomplete|shostak|0.304|
|seqfjFatten_TCC4|✅ proved - incomplete|shostak|0.289|
|seqfjFatten_TCC5|✅ proved - incomplete|shostak|0.070|
|seqfjFatten_length|✅ proved - incomplete|shostak|0.196|
|seqfjFatten_gives_permutation|✅ proved - incomplete|shostak|0.656|
|seqfjFatten_gives_down_nstructER_basic_TCC1|✅ proved - incomplete|shostak|0.030|
|seqfjFatten_gives_down_nstructER_basic|✅ proved - incomplete|shostak|0.264|
|mergeInsertion_TCC1|✅ proved - incomplete|shostak|0.020|
|mergeInsertion_TCC2|✅ proved - incomplete|shostak|0.086|
|mergeInsertion_TCC3|✅ proved - incomplete|shostak|0.658|
|mergeInsertion_is_ok|✅ proved - incomplete|shostak|0.226|

## `firt_phase_ford_johnson`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|log_exp_TCC1|✅ proved - complete|shostak|0.020|
|log_exp_TCC2|✅ proved - complete|shostak|0.170|
|log_exp|✅ proved - incomplete|shostak|0.155|
|is_sorted?_TCC1|✅ proved - complete|shostak|0.057|
|add_fold_TCC1|✅ proved - incomplete|shostak|0.030|
|add_fold_TCC2|✅ proved - incomplete|shostak|0.030|
|add_fold_TCC3|✅ proved - incomplete|shostak|0.078|
|add_fold_TCC4|✅ proved - incomplete|shostak|0.080|
|nodes_TCC1|✅ proved - incomplete|shostak|0.629|
|map_TCC1|✅ proved - incomplete|shostak|0.030|
|map_TCC2|✅ proved - incomplete|shostak|0.046|
|map_TCC3|✅ proved - complete|shostak|0.020|
|map_TCC4|✅ proved - incomplete|shostak|0.090|
|permutation_equiv|✅ proved - incomplete|shostak|0.535|
|compare2to2_TCC1|✅ proved - complete|shostak|0.080|
|compare2to2_TCC2|✅ proved - complete|shostak|0.075|
|compare2to2_TCC3|✅ proved - complete|shostak|0.110|
|seqfjBottleneck_TCC1|✅ proved - complete|shostak|0.090|
|nstruct?_TCC1|✅ proved - incomplete|shostak|0.056|
|nstruct?_TCC2|✅ proved - complete|shostak|0.030|
|length_odd_TCC1|✅ proved - complete|shostak|0.040|
|length_odd_TCC2|✅ proved - complete|shostak|0.020|
|nstructER?_TCC1|✅ proved - incomplete|shostak|0.046|
|plain_finseqfj_nstructER0_TCC1|✅ proved - incomplete|shostak|0.070|
|plain_finseqfj_nstructER0|✅ proved - incomplete|shostak|0.165|
|occ_list_vs_fjnodes|✅ proved - incomplete|shostak|0.140|
|comparePeservesElements|✅ proved - incomplete|shostak|8.308|
|seqfjBottPreservesElements|✅ proved - incomplete|shostak|0.213|
|oneStepCorrectionER_TCC1|✅ proved - incomplete|shostak|0.073|
|oneStepCorrectionER_TCC2|✅ proved - incomplete|shostak|0.235|
|oneStepCorrectionER|✅ proved - incomplete|shostak|0.000|
|correctionER_TCC1|✅ proved - incomplete|shostak|0.020|
|correctionER_TCC2|✅ proved - incomplete|shostak|0.127|
|correctionER_TCC3|✅ proved - incomplete|shostak|0.065|
|correctionER|✅ proved - incomplete|shostak|0.824|
|lengthBottleneckIs1|✅ proved - incomplete|shostak|0.381|
|seqfjBottleneck_works|✅ proved - incomplete|shostak|0.179|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib//float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-pvsio-fix.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210219-extratregies.lisp`|
