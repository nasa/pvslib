# Summary for `co_structures`
Run started at 7:24:42 7/4/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **726**   | **726**    | **726**    | **0**  | **1:43.745 s**   |
|top|0|0|0|0|0.000|
|ascending_chains|2|2|2|0|0.224|
|csequence_add|11|11|11|0|0.355|
|csequence_nth|22|22|22|0|1.334|
|csequence_length|11|11|11|0|0.549|
|csequence_props|13|13|13|0|0.565|
|csequence_append|17|17|17|0|3.242|
|csequence_insert|22|22|22|0|2.677|
|csequence_concatenate|31|31|31|0|6.207|
|csequence_concatenate_extract|2|2|2|0|0.603|
|csequence_extract|30|30|30|0|5.773|
|csequence_constant|25|25|25|0|1.083|
|csequence_singleton|12|12|12|0|0.400|
|csequence_filter|26|26|26|0|3.409|
|csequence_filter_of|14|14|14|0|2.576|
|csequence_first_p|6|6|6|0|0.649|
|csequence_suffix|42|42|42|0|3.907|
|csequence_subsequence|30|30|30|0|5.691|
|csequence_prefix|36|36|36|0|3.784|
|csequence_filter_map|5|5|5|0|1.997|
|csequence_map_props|19|19|19|0|1.550|
|csequence_finseq|16|16|16|0|0.889|
|csequence_flatten|38|38|38|0|5.410|
|csequence_prefix_suffix|2|2|2|0|0.167|
|csequence_generate|8|8|8|0|0.453|
|csequence_generate_limit|10|10|10|0|1.124|
|csequence_induction|13|13|13|0|0.650|
|csequence_insert_remove|1|1|1|0|0.149|
|csequence_remove|30|30|30|0|3.507|
|csequence_length_comp|8|8|8|0|0.361|
|csequence_limit|21|21|21|0|3.207|
|csequence_list|16|16|16|0|0.999|
|csequence_map_composition|1|1|1|0|0.272|
|csequence_merge|30|30|30|0|15.853|
|csequence_merge_split|2|2|2|0|1.629|
|csequence_split|36|36|36|0|6.626|
|csequence_prefix_append|1|1|1|0|0.300|
|csequence_rest|13|13|13|0|0.450|
|csequence_reverse|19|19|19|0|2.024|
|csequence_sequence|7|7|7|0|0.369|
|csequence_strict_prefix|16|16|16|0|1.156|
|csequence_unzip|27|27|27|0|4.037|
|csequence_zip|33|33|33|0|5.658|
|csequence_zip_unzip|2|2|2|0|1.880|
## Detailed Summary 
## `top`
No formula declaration found.
## `ascending_chains`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|ascending_chain?_def|✅ proved - complete|shostak|0.182|
|least_upperbound_inj|✅ proved - complete|shostak|0.042|

## `csequence_add`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|add_finite|✅ proved - complete|shostak|0.018|
|add_infinite|✅ proved - complete|shostak|0.030|
|add_length|✅ proved - complete|shostak|0.036|
|add_index_TCC1|✅ proved - complete|shostak|0.036|
|add_index|✅ proved - complete|shostak|0.028|
|add_nth_TCC1|✅ proved - complete|shostak|0.028|
|add_nth|✅ proved - complete|shostak|0.027|
|add_last_TCC1|✅ proved - complete|shostak|0.027|
|add_last|✅ proved - complete|shostak|0.072|
|add_some|✅ proved - complete|shostak|0.025|
|add_every|✅ proved - complete|shostak|0.028|

## `csequence_nth`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|index?_TCC1|✅ proved - complete|shostak|0.034|
|index?_TCC2|✅ proved - complete|shostak|0.020|
|index?_0|✅ proved - complete|shostak|0.029|
|index?_ub|✅ proved - complete|shostak|0.054|
|index?_lt|✅ proved - complete|shostak|0.130|
|index?_finite|✅ proved - complete|shostak|0.143|
|index?_finite_bound|✅ proved - complete|shostak|0.046|
|index?_infinite|✅ proved - complete|shostak|0.058|
|index?_infinite_full|✅ proved - complete|shostak|0.050|
|index?_prop|✅ proved - complete|shostak|0.036|
|index?_nonempty|✅ proved - complete|shostak|0.036|
|nth_TCC1|✅ proved - complete|shostak|0.028|
|nth_TCC2|✅ proved - complete|shostak|0.028|
|nth_TCC3|✅ proved - complete|shostak|0.038|
|nth_TCC4|✅ proved - complete|shostak|0.020|
|nth_extensionality_TCC1|✅ proved - complete|shostak|0.037|
|nth_extensionality|✅ proved - complete|shostak|0.171|
|nth_every|✅ proved - complete|shostak|0.207|
|nth_some|✅ proved - complete|shostak|0.000|
|last_TCC1|✅ proved - complete|shostak|0.036|
|last_rest_TCC1|✅ proved - complete|shostak|0.017|
|last_rest|✅ proved - complete|shostak|0.116|

## `csequence_length`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|length_TCC1|✅ proved - complete|shostak|0.053|
|length_TCC2|✅ proved - complete|shostak|0.027|
|length_TCC3|✅ proved - complete|shostak|0.028|
|length_TCC4|✅ proved - complete|shostak|0.029|
|length_TCC5|✅ proved - complete|shostak|0.092|
|length_TCC6|✅ proved - complete|shostak|0.072|
|length_def|✅ proved - complete|shostak|0.034|
|length_empty?_rew|✅ proved - complete|shostak|0.084|
|length_nonempty?_rew|✅ proved - complete|shostak|0.083|
|length_rest_TCC1|✅ proved - complete|shostak|0.018|
|length_rest|✅ proved - complete|shostak|0.029|

## `csequence_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|has_length_TCC1|✅ proved - complete|shostak|0.028|
|has_length_TCC2|✅ proved - complete|shostak|0.038|
|has_length_TCC3|✅ proved - complete|shostak|0.020|
|has_length_injective|✅ proved - complete|shostak|0.091|
|is_finite_TCC1|✅ proved - complete|shostak|0.031|
|is_finite_def|✅ proved - complete|shostak|0.098|
|finite_csequence_TCC1|✅ proved - complete|shostak|0.017|
|empty_csequence_is_finite|✅ proved - complete|shostak|0.028|
|infinite_csequence_is_nonempty|✅ proved - complete|shostak|0.018|
|some_every_rew|✅ proved - complete|shostak|0.052|
|every_some_rew|✅ proved - complete|shostak|0.041|
|some_implies|✅ proved - complete|shostak|0.051|
|every_implies|✅ proved - complete|shostak|0.052|

## `csequence_append`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|append_struct_TCC1|✅ proved - complete|shostak|0.037|
|append_TCC1|✅ proved - complete|shostak|0.080|
|append_finite|✅ proved - complete|shostak|0.188|
|append_first_TCC1|✅ proved - complete|shostak|0.026|
|append_first|✅ proved - complete|shostak|0.087|
|append_rest|✅ proved - complete|shostak|1.084|
|append_finite_def|✅ proved - complete|shostak|0.188|
|append_infinite_def|✅ proved - complete|shostak|0.166|
|append_length|✅ proved - complete|shostak|0.258|
|append_index|✅ proved - complete|shostak|0.575|
|append_nth_TCC1|✅ proved - complete|shostak|0.034|
|append_nth|✅ proved - complete|shostak|0.082|
|append_add|✅ proved - complete|shostak|0.084|
|append_last|✅ proved - complete|shostak|0.112|
|append_extensionality|✅ proved - complete|shostak|0.150|
|append_some|✅ proved - complete|shostak|0.041|
|append_every|✅ proved - complete|shostak|0.050|

## `csequence_insert`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|insert_TCC1|✅ proved - complete|shostak|0.036|
|insert_TCC2|✅ proved - complete|shostak|0.035|
|insert_TCC3|✅ proved - complete|shostak|0.028|
|insert_finite|✅ proved - complete|shostak|0.061|
|insert_infinite|✅ proved - complete|shostak|0.065|
|insert_first|✅ proved - complete|shostak|0.024|
|insert_rest|✅ proved - complete|shostak|0.022|
|insert_length|✅ proved - complete|shostak|0.135|
|insert_index_TCC1|✅ proved - complete|shostak|0.035|
|insert_index|✅ proved - complete|shostak|0.118|
|insert_nth_TCC1|✅ proved - complete|shostak|0.079|
|insert_nth|✅ proved - complete|shostak|0.251|
|insert_0|✅ proved - complete|shostak|0.026|
|insert_add|✅ proved - complete|shostak|0.020|
|insert_last_TCC1|✅ proved - complete|shostak|0.033|
|insert_last|✅ proved - complete|shostak|0.367|
|insert_beyond|✅ proved - complete|shostak|0.159|
|insert_insert_TCC1|✅ proved - complete|shostak|0.039|
|insert_insert|✅ proved - complete|shostak|0.771|
|insert_extensionality|✅ proved - complete|shostak|0.114|
|insert_some|✅ proved - complete|shostak|0.134|
|insert_every|✅ proved - complete|shostak|0.125|

## `csequence_concatenate`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|concatenate_struct_TCC1|✅ proved - complete|shostak|0.026|
|concatenate_struct_TCC2|✅ proved - complete|shostak|0.027|
|o_finite|✅ proved - complete|shostak|0.369|
|o_finiteness|✅ proved - complete|shostak|0.460|
|o_infinite1|✅ proved - complete|shostak|0.026|
|o_infinite2|✅ proved - complete|shostak|0.032|
|o_empty|✅ proved - complete|shostak|0.113|
|o_nonempty|✅ proved - complete|shostak|0.066|
|o_nonempty_left|✅ proved - complete|shostak|0.067|
|o_nonempty_right|✅ proved - complete|shostak|0.104|
|o_empty_left|✅ proved - complete|shostak|0.214|
|o_empty_right|✅ proved - complete|shostak|0.209|
|o_first_TCC1|✅ proved - complete|shostak|0.036|
|o_first|✅ proved - complete|shostak|0.142|
|o_rest|✅ proved - complete|shostak|0.092|
|o_first_rest|✅ proved - complete|shostak|0.158|
|o_length|✅ proved - complete|shostak|0.478|
|o_index|✅ proved - complete|shostak|0.101|
|o_nth_TCC1|✅ proved - complete|shostak|0.096|
|o_nth_TCC2|✅ proved - complete|shostak|0.078|
|o_nth|✅ proved - complete|shostak|0.558|
|o_add|✅ proved - complete|shostak|0.055|
|o_last_TCC1|✅ proved - complete|shostak|0.083|
|o_last_TCC2|✅ proved - complete|shostak|0.027|
|o_last|✅ proved - complete|shostak|0.119|
|o_infinite|✅ proved - complete|shostak|0.000|
|o_assoc|✅ proved - complete|shostak|1.692|
|o_extensionality_left|✅ proved - complete|shostak|0.111|
|o_extensionality_right|✅ proved - complete|shostak|0.310|
|o_some|✅ proved - complete|shostak|0.305|
|o_every|✅ proved - complete|shostak|0.053|

## `csequence_concatenate_extract`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|o_extract|✅ proved - complete|shostak|0.504|
|o_extract_eta|✅ proved - complete|shostak|0.099|

## `csequence_extract`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|caret_TCC1|✅ proved - complete|shostak|0.045|
|caret_TCC2|✅ proved - complete|shostak|0.043|
|caret_TCC3|✅ proved - complete|shostak|0.047|
|caret_TCC4|✅ proved - complete|shostak|0.044|
|caret_TCC5|✅ proved - complete|shostak|0.037|
|caret_TCC6|✅ proved - complete|shostak|0.055|
|caret_TCC7|✅ proved - complete|shostak|0.047|
|caret_TCC8|✅ proved - complete|shostak|0.044|
|extract_empty|✅ proved - complete|shostak|0.243|
|extract_nonempty|✅ proved - complete|shostak|0.074|
|extract_length|✅ proved - complete|shostak|0.568|
|extract_def|✅ proved - complete|shostak|0.227|
|extract_rest_TCC1|✅ proved - complete|shostak|0.043|
|extract_rest|✅ proved - complete|shostak|0.108|
|extract_rest2|✅ proved - complete|shostak|0.195|
|extract_extract|✅ proved - complete|shostak|1.142|
|extract_index|✅ proved - complete|shostak|0.213|
|extract_first_TCC1|✅ proved - complete|shostak|0.074|
|extract_first|✅ proved - complete|shostak|0.116|
|extract_nth_TCC1|✅ proved - complete|shostak|0.077|
|extract_nth|✅ proved - complete|shostak|1.235|
|extract_add_TCC1|✅ proved - complete|shostak|0.046|
|extract_add_TCC2|✅ proved - complete|shostak|0.055|
|extract_add_TCC3|✅ proved - complete|shostak|0.036|
|extract_add|✅ proved - complete|shostak|0.064|
|extract_last_TCC1|✅ proved - complete|shostak|0.035|
|extract_last|✅ proved - complete|shostak|0.346|
|extract_extensionality|✅ proved - complete|shostak|0.192|
|extract_some|✅ proved - complete|shostak|0.158|
|extract_every|✅ proved - complete|shostak|0.164|

## `csequence_constant`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|constant_cseq_TCC1|✅ proved - complete|shostak|0.038|
|constant_cseq_TCC2|✅ proved - complete|shostak|0.019|
|constant_cseq_TCC3|✅ proved - complete|shostak|0.030|
|constant_cseq_empty|✅ proved - complete|shostak|0.028|
|constant_cseq_1|✅ proved - complete|shostak|0.028|
|constant_cseq_first_TCC1|✅ proved - complete|shostak|0.027|
|constant_cseq_first|✅ proved - complete|shostak|0.029|
|constant_cseq_rest_TCC1|✅ proved - complete|shostak|0.026|
|constant_cseq_rest|✅ proved - complete|shostak|0.039|
|constant_cseq_length|✅ proved - complete|shostak|0.045|
|constant_cseq_index|✅ proved - complete|shostak|0.035|
|constant_cseq_nth_TCC1|✅ proved - complete|shostak|0.035|
|constant_cseq_nth|✅ proved - complete|shostak|0.078|
|constant_cseq_add|✅ proved - complete|shostak|0.018|
|constant_cseq_last|✅ proved - complete|shostak|0.093|
|constant_cseq_some|✅ proved - complete|shostak|0.048|
|constant_cseq_every|✅ proved - complete|shostak|0.041|
|constant_cseq_TCC4|✅ proved - complete|shostak|0.066|
|constant_cseq_inf_first|✅ proved - complete|shostak|0.047|
|constant_cseq_inf_rest|✅ proved - complete|shostak|0.054|
|constant_cseq_inf_nth_TCC1|✅ proved - complete|shostak|0.026|
|constant_cseq_inf_nth|✅ proved - complete|shostak|0.068|
|constant_cseq_inf_add|✅ proved - complete|shostak|0.058|
|constant_cseq_inf_some|✅ proved - complete|shostak|0.076|
|constant_cseq_inf_every|✅ proved - complete|shostak|0.031|

## `csequence_singleton`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|singleton_is_nonempty_finite|✅ proved - complete|shostak|0.035|
|singleton_cseq_length_TCC1|✅ proved - complete|shostak|0.024|
|singleton_cseq_length|✅ proved - complete|shostak|0.065|
|singleton_cseq_index|✅ proved - complete|shostak|0.047|
|singleton_cseq_TCC1|✅ proved - complete|shostak|0.028|
|singleton_def_TCC1|✅ proved - complete|shostak|0.028|
|singleton_def|✅ proved - complete|shostak|0.038|
|singleton_cseq_first|✅ proved - complete|shostak|0.019|
|singleton_cseq_rest|✅ proved - complete|shostak|0.030|
|singleton_cseq_last|✅ proved - complete|shostak|0.038|
|singleton_cseq_some|✅ proved - complete|shostak|0.029|
|singleton_cseq_every|✅ proved - complete|shostak|0.019|

## `csequence_filter`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|filter_TCC1|✅ proved - complete|shostak|0.176|
|filter_empty|✅ proved - complete|shostak|0.068|
|filter_nonempty|✅ proved - complete|shostak|0.115|
|filter_def|✅ proved - complete|shostak|0.436|
|filter_finite|✅ proved - complete|shostak|0.039|
|filter_length|✅ proved - complete|shostak|0.037|
|filter_length_eq|✅ proved - complete|shostak|0.036|
|filter_reduce_TCC1|✅ proved - complete|shostak|0.029|
|filter_reduce|✅ proved - complete|shostak|0.376|
|filter_add|✅ proved - complete|shostak|0.355|
|filter_rest_TCC1|✅ proved - complete|shostak|0.026|
|filter_rest|✅ proved - complete|shostak|0.057|
|filter_suffix_TCC1|✅ proved - complete|shostak|0.081|
|filter_suffix_TCC2|✅ proved - complete|shostak|0.034|
|filter_suffix|✅ proved - complete|shostak|0.131|
|filter_first_TCC1|✅ proved - complete|shostak|0.036|
|filter_first|✅ proved - complete|shostak|0.107|
|filter_first_first_TCC1|✅ proved - complete|shostak|0.028|
|filter_first_first|✅ proved - complete|shostak|0.085|
|filter_full|✅ proved - complete|shostak|0.000|
|filter_idem|✅ proved - complete|shostak|0.040|
|filter_some|✅ proved - complete|shostak|0.561|
|filter_every|✅ proved - complete|shostak|0.071|
|filter_filter_of|✅ proved - complete|shostak|0.334|
|filter_concatenate|✅ proved - complete|shostak|0.091|
|filter_filter|✅ proved - complete|shostak|0.060|

## `csequence_filter_of`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|filter_of?_TCC1|✅ proved - complete|shostak|0.048|
|filter_of?_empty|✅ proved - complete|shostak|0.036|
|filter_of?_nonempty|✅ proved - complete|shostak|0.027|
|filter_of?_finite|✅ proved - complete|shostak|0.081|
|filter_of?_def|✅ proved - complete|shostak|0.159|
|filter_of?_first_p_TCC1|✅ proved - complete|shostak|0.032|
|filter_of?_first_p|✅ proved - complete|shostak|0.224|
|filter_of?_suffix|✅ proved - complete|shostak|0.345|
|filter_of?_injective|✅ proved - complete|shostak|0.151|
|filter_of?_concatenate|✅ proved - complete|shostak|0.937|
|filter_of?_implication|✅ proved - complete|shostak|0.099|
|filter_of?_implication_rev|✅ proved - complete|shostak|0.130|
|filter_of?_some|✅ proved - complete|shostak|0.090|
|filter_of?_filter_of?|✅ proved - complete|shostak|0.217|

## `csequence_first_p`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|p_indexes_nonempty|✅ proved - complete|shostak|0.042|
|first_p_TCC1|✅ proved - complete|shostak|0.025|
|first_p_nth|✅ proved - complete|shostak|0.025|
|first_p_rest_TCC1|✅ proved - complete|shostak|0.028|
|first_p_rest_TCC2|✅ proved - complete|shostak|0.038|
|first_p_rest|✅ proved - complete|shostak|0.491|

## `csequence_suffix`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|suffix?_empty|✅ proved - complete|shostak|0.072|
|suffix?_rest_left|✅ proved - complete|shostak|0.034|
|suffix?_rest_right|✅ proved - complete|shostak|0.027|
|suffix?_finite_left|✅ proved - complete|shostak|0.061|
|suffix?_finite_right|✅ proved - complete|shostak|0.053|
|suffix?_infinite_left|✅ proved - complete|shostak|0.037|
|suffix?_infinite_right|✅ proved - complete|shostak|0.025|
|suffix?_length|✅ proved - complete|shostak|0.142|
|suffix?_length_eq|✅ proved - complete|shostak|0.130|
|suffix?_index|✅ proved - complete|shostak|0.074|
|suffix?_concatenate|✅ proved - complete|shostak|0.107|
|suffix?_def|✅ proved - complete|shostak|0.064|
|suffix?_is_preorder|✅ proved - complete|shostak|0.085|
|suffix?_finite_antisymmetric|✅ proved - complete|shostak|0.092|
|suffix?_order|✅ proved - complete|shostak|0.064|
|suffix_TCC1|✅ proved - complete|shostak|0.018|
|suffix_TCC2|✅ proved - complete|shostak|0.028|
|suffix_TCC3|✅ proved - complete|shostak|0.028|
|suffix_TCC4|✅ proved - complete|shostak|0.030|
|suffix_TCC5|✅ proved - complete|shostak|0.039|
|suffix_is_finite|✅ proved - complete|shostak|0.044|
|suffix_is_infinite|✅ proved - complete|shostak|0.061|
|suffix_0|✅ proved - complete|shostak|0.027|
|suffix_1|✅ proved - complete|shostak|0.028|
|suffix_rest1|✅ proved - complete|shostak|0.020|
|suffix_rest2_TCC1|✅ proved - complete|shostak|0.101|
|suffix_rest2|✅ proved - complete|shostak|0.227|
|suffix_suffix|✅ proved - complete|shostak|0.161|
|suffix_length|✅ proved - complete|shostak|0.136|
|suffix_first_TCC1|✅ proved - complete|shostak|0.027|
|suffix_first|✅ proved - complete|shostak|0.158|
|suffix_index|✅ proved - complete|shostak|0.136|
|suffix_nth_TCC1|✅ proved - complete|shostak|0.071|
|suffix_nth|✅ proved - complete|shostak|0.276|
|suffix_empty|✅ proved - complete|shostak|0.094|
|suffix_nonempty|✅ proved - complete|shostak|0.035|
|suffix_concatenate_TCC1|✅ proved - complete|shostak|0.027|
|suffix_concatenate_TCC2|✅ proved - complete|shostak|0.046|
|suffix_concatenate|✅ proved - complete|shostak|0.816|
|suffix?_suffix|✅ proved - complete|shostak|0.075|
|suffix_some|✅ proved - complete|shostak|0.000|
|suffix_every|✅ proved - complete|shostak|0.131|

## `csequence_subsequence`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|subsequence?_TCC1|✅ proved - complete|shostak|0.037|
|subsequence?_empty_left|✅ proved - complete|shostak|0.028|
|subsequence?_empty_right|✅ proved - complete|shostak|0.038|
|subsequence?_rest1|✅ proved - complete|shostak|0.214|
|subsequence?_rest2|✅ proved - complete|shostak|0.108|
|subsequence?_extensionality|✅ proved - complete|shostak|0.052|
|subsequence?_finite|✅ proved - complete|shostak|0.152|
|subsequence?_nth|✅ proved - complete|shostak|0.347|
|subsequence?_concatenate_left|✅ proved - complete|shostak|0.262|
|subsequence?_concatenate_right|✅ proved - complete|shostak|0.464|
|subsequence?_prefix|✅ proved - complete|shostak|0.213|
|subsequence?_suffix|✅ proved - complete|shostak|0.236|
|subsequence?_length|✅ proved - complete|shostak|0.400|
|subsequence?_length_eq|✅ proved - complete|shostak|0.524|
|subsequence?_is_preorder|✅ proved - complete|shostak|0.120|
|subsequence?_finite_antisymmetric|✅ proved - complete|shostak|0.086|
|prefix?_is_subsequence?|✅ proved - complete|shostak|0.056|
|suffix?_is_subsequence?|✅ proved - complete|shostak|0.041|
|subsequence?_some|✅ proved - complete|shostak|0.124|
|subsequence?_every|✅ proved - complete|shostak|0.040|
|subsequence_func_TCC1|✅ proved - complete|shostak|0.052|
|subsequence_func_TCC2|✅ proved - complete|shostak|0.044|
|subsequence_func_TCC3|✅ proved - complete|shostak|0.121|
|subsequence_func_TCC4|✅ proved - complete|shostak|0.047|
|subsequence_func_TCC5|✅ proved - complete|shostak|0.304|
|subsequence_func_TCC6|✅ proved - complete|shostak|0.042|
|subsequence_func_TCC7|✅ proved - complete|shostak|0.049|
|subsequence_func_monotonic|✅ proved - complete|shostak|0.553|
|subsequence_func_nth|✅ proved - complete|shostak|0.620|
|subsequence?_def|✅ proved - complete|shostak|0.317|

## `csequence_prefix`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|prefix?_TCC1|✅ proved - complete|shostak|0.037|
|prefix?_finite|✅ proved - complete|shostak|0.057|
|prefix?_infinite|✅ proved - complete|shostak|0.060|
|prefix?_empty|✅ proved - complete|shostak|0.018|
|prefix?_empty_is_prefix|✅ proved - complete|shostak|0.020|
|prefix?_first|✅ proved - complete|shostak|0.030|
|prefix?_rest|✅ proved - complete|shostak|0.018|
|prefix?_length|✅ proved - complete|shostak|0.125|
|prefix?_length_eq|✅ proved - complete|shostak|0.136|
|prefix?_index|✅ proved - complete|shostak|0.045|
|prefix?_nth_TCC1|✅ proved - complete|shostak|0.033|
|prefix?_nth|✅ proved - complete|shostak|0.169|
|prefix?_concatenate|✅ proved - complete|shostak|0.072|
|prefix?_def|✅ proved - complete|shostak|0.088|
|prefix?_is_partial_order|✅ proved - complete|shostak|0.147|
|prefix?_total_order|✅ proved - complete|shostak|0.191|
|prefix_TCC1|✅ proved - complete|shostak|0.028|
|prefix_TCC2|✅ proved - complete|shostak|0.026|
|prefix_TCC3|✅ proved - complete|shostak|0.035|
|prefix_TCC4|✅ proved - complete|shostak|0.020|
|prefix_TCC5|✅ proved - complete|shostak|0.036|
|prefix_0|✅ proved - complete|shostak|0.020|
|prefix_extract|✅ proved - complete|shostak|0.102|
|prefix_rest_TCC1|✅ proved - complete|shostak|0.020|
|prefix_rest|✅ proved - complete|shostak|0.097|
|prefix_prefix|✅ proved - complete|shostak|0.223|
|prefix_length|✅ proved - complete|shostak|0.153|
|prefix_index|✅ proved - complete|shostak|0.149|
|prefix_full|✅ proved - complete|shostak|0.087|
|prefix_concatenate_TCC1|✅ proved - complete|shostak|0.028|
|prefix_concatenate_TCC2|✅ proved - complete|shostak|0.036|
|prefix_concatenate|✅ proved - complete|shostak|1.182|
|prefix?_prefix|✅ proved - complete|shostak|0.000|
|prefix_some|✅ proved - complete|shostak|0.072|
|prefix_every|✅ proved - complete|shostak|0.074|
|prefix?_order|✅ proved - complete|shostak|0.150|

## `csequence_filter_map`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|map_first_p_TCC1|✅ proved - complete|shostak|0.037|
|map_first_p|✅ proved - complete|shostak|0.940|
|map_suffix_empty|✅ proved - complete|shostak|0.143|
|map_suffix|✅ proved - complete|shostak|0.080|
|filter_map|✅ proved - complete|shostak|0.797|

## `csequence_map_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|map_empty|✅ proved - complete|shostak|0.050|
|map_nonempty|✅ proved - complete|shostak|0.063|
|map_finite|✅ proved - complete|shostak|0.064|
|map_infinite|✅ proved - complete|shostak|0.138|
|map_first_TCC1|✅ proved - complete|shostak|0.025|
|map_first|✅ proved - complete|shostak|0.037|
|map_rest|✅ proved - complete|shostak|0.020|
|map_length|✅ proved - complete|shostak|0.146|
|map_index|✅ proved - complete|shostak|0.058|
|map_nth_TCC1|✅ proved - complete|shostak|0.026|
|map_nth|✅ proved - complete|shostak|0.170|
|map_add|✅ proved - complete|shostak|0.020|
|map_last_TCC1|✅ proved - complete|shostak|0.026|
|map_last|✅ proved - complete|shostak|0.087|
|map_map|✅ proved - complete|shostak|0.119|
|map_injective|✅ proved - complete|shostak|0.200|
|map_extensionality|✅ proved - complete|shostak|0.039|
|map_some|✅ proved - complete|shostak|0.127|
|map_every|✅ proved - complete|shostak|0.135|

## `csequence_finseq`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|from_finseq_TCC1|✅ proved - complete|shostak|0.030|
|from_finseq_TCC2|✅ proved - complete|shostak|0.040|
|from_finseq_TCC3|✅ proved - complete|shostak|0.017|
|from_finseq_TCC4|✅ proved - complete|shostak|0.030|
|from_finseq_TCC5|✅ proved - complete|shostak|0.026|
|from_finseq_length|✅ proved - complete|shostak|0.113|
|from_finseq_index|✅ proved - complete|shostak|0.035|
|from_finseq_nth_TCC1|✅ proved - complete|shostak|0.022|
|from_finseq_nth|✅ proved - complete|shostak|0.243|
|to_finseq_TCC1|✅ proved - complete|shostak|0.040|
|to_finseq_length|✅ proved - complete|shostak|0.025|
|to_finseq_index|✅ proved - complete|shostak|0.036|
|to_finseq_nth_TCC1|✅ proved - complete|shostak|0.035|
|to_finseq_nth|✅ proved - complete|shostak|0.027|
|to_from_finseq|✅ proved - complete|shostak|0.102|
|from_to_finseq|✅ proved - complete|shostak|0.068|

## `csequence_flatten`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|some_every_empty|✅ proved - complete|shostak|0.043|
|flatten_struct_TCC1|✅ proved - complete|shostak|0.035|
|flatten_struct_TCC2|✅ proved - complete|shostak|0.028|
|flatten_struct_TCC3|✅ proved - complete|shostak|0.027|
|flatten_struct_TCC4|✅ proved - complete|shostak|0.038|
|flatten_TCC1|✅ proved - complete|shostak|0.029|
|flatten_empty|✅ proved - complete|shostak|0.185|
|flatten_empty_cseq|✅ proved - complete|shostak|0.021|
|flatten_nonempty|✅ proved - complete|shostak|0.032|
|flatten_filter|✅ proved - complete|shostak|0.038|
|flatten_reduce_TCC1|✅ proved - complete|shostak|0.029|
|flatten_reduce|✅ proved - complete|shostak|0.057|
|flatten_rest_TCC1|✅ proved - complete|shostak|0.076|
|flatten_rest_TCC2|✅ proved - complete|shostak|0.172|
|flatten_rest|✅ proved - complete|shostak|0.543|
|flatten_rest2_TCC1|✅ proved - complete|shostak|0.037|
|flatten_rest2_TCC2|✅ proved - complete|shostak|0.037|
|flatten_rest2|✅ proved - complete|shostak|0.410|
|flatten_first|✅ proved - complete|shostak|0.186|
|flatten_suffix|✅ proved - complete|shostak|0.244|
|flatten_concatenate|✅ proved - complete|shostak|0.443|
|flatten_rest_suffix_TCC1|✅ proved - complete|shostak|0.020|
|flatten_rest_suffix_TCC2|✅ proved - complete|shostak|0.064|
|flatten_rest_suffix|✅ proved - complete|shostak|0.262|
|flatten_finite|✅ proved - complete|shostak|0.605|
|flatten_infinite|✅ proved - complete|shostak|0.032|
|length_of_flatten_TCC1|✅ proved - complete|shostak|0.025|
|length_of_flatten_TCC2|✅ proved - complete|shostak|0.025|
|length_of_flatten_TCC3|✅ proved - complete|shostak|0.037|
|length_of_flatten_TCC4|✅ proved - complete|shostak|0.142|
|length_of_flatten_TCC5|✅ proved - complete|shostak|0.159|
|length_of_flatten_add_TCC1|✅ proved - complete|shostak|0.033|
|length_of_flatten_add|✅ proved - complete|shostak|0.487|
|flatten_length|✅ proved - complete|shostak|0.392|
|flatten_some|✅ proved - complete|shostak|0.000|
|flatten_some_finite|✅ proved - complete|shostak|0.080|
|flatten_every|✅ proved - complete|shostak|0.252|
|flatten_every_finite|✅ proved - complete|shostak|0.085|

## `csequence_prefix_suffix`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|prefix_suffix_eta|✅ proved - complete|shostak|0.115|
|prefix_suffix_extensionality|✅ proved - complete|shostak|0.052|

## `csequence_generate`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|generate_TCC1|✅ proved - complete|shostak|0.091|
|generate_first|✅ proved - complete|shostak|0.058|
|generate_rest|✅ proved - complete|shostak|0.053|
|generate_nth_TCC1|✅ proved - complete|shostak|0.018|
|generate_nth|✅ proved - complete|shostak|0.082|
|generate_add|✅ proved - complete|shostak|0.063|
|generate_some|✅ proved - complete|shostak|0.045|
|generate_every|✅ proved - complete|shostak|0.043|

## `csequence_generate_limit`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|generate_empty|✅ proved - complete|shostak|0.072|
|generate_first_TCC1|✅ proved - complete|shostak|0.025|
|generate_first|✅ proved - complete|shostak|0.082|
|generate_rest|✅ proved - complete|shostak|0.083|
|generate_has_length|✅ proved - complete|shostak|0.400|
|generate_finite|✅ proved - complete|shostak|0.076|
|generate_nth|✅ proved - complete|shostak|0.246|
|generate_add|✅ proved - complete|shostak|0.070|
|generate_some|✅ proved - complete|shostak|0.036|
|generate_every|✅ proved - complete|shostak|0.034|

## `csequence_induction`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cseq_induction|✅ proved - complete|shostak|0.113|
|cseq_infinite_induction_TCC1|✅ proved - complete|shostak|0.026|
|cseq_infinite_induction_TCC2|✅ proved - complete|shostak|0.025|
|cseq_infinite_induction_TCC3|✅ proved - complete|shostak|0.044|
|cseq_infinite_induction|✅ proved - complete|shostak|0.066|
|CSEQ_induction|✅ proved - complete|shostak|0.134|
|CSEQ_infinite_induction_TCC1|✅ proved - complete|shostak|0.026|
|CSEQ_infinite_induction_TCC2|✅ proved - complete|shostak|0.028|
|CSEQ_infinite_induction|✅ proved - complete|shostak|0.032|
|finite_sequence_induction|✅ proved - complete|shostak|0.034|
|FINITE_SEQUENCE_induction|✅ proved - complete|shostak|0.050|
|sequence_induction|✅ proved - complete|shostak|0.037|
|SEQUENCE_induction|✅ proved - complete|shostak|0.035|

## `csequence_insert_remove`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|insert_remove_eta|✅ proved - complete|shostak|0.149|

## `csequence_remove`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|remove_TCC1|✅ proved - complete|shostak|0.027|
|remove_TCC2|✅ proved - complete|shostak|0.042|
|remove_TCC3|✅ proved - complete|shostak|0.036|
|remove_TCC4|✅ proved - complete|shostak|0.019|
|remove_finite|✅ proved - complete|shostak|0.054|
|remove_infinite|✅ proved - complete|shostak|0.051|
|remove_0|✅ proved - complete|shostak|0.028|
|remove_empty|✅ proved - complete|shostak|0.036|
|remove_nonempty|✅ proved - complete|shostak|0.037|
|remove_first_TCC1|✅ proved - complete|shostak|0.026|
|remove_first_TCC2|✅ proved - complete|shostak|0.029|
|remove_first_TCC3|✅ proved - complete|shostak|0.027|
|remove_first|✅ proved - complete|shostak|0.037|
|remove_rest_TCC1|✅ proved - complete|shostak|0.029|
|remove_rest_TCC2|✅ proved - complete|shostak|0.037|
|remove_rest|✅ proved - complete|shostak|0.206|
|remove_upfrom_length|✅ proved - complete|shostak|0.140|
|remove_length|✅ proved - complete|shostak|0.168|
|remove_index|✅ proved - complete|shostak|0.164|
|remove_nth_TCC1|✅ proved - complete|shostak|0.110|
|remove_nth|✅ proved - complete|shostak|0.226|
|remove_add|✅ proved - complete|shostak|0.020|
|remove_last_TCC1|✅ proved - complete|shostak|0.103|
|remove_last_TCC2|✅ proved - complete|shostak|0.037|
|remove_last|✅ proved - complete|shostak|0.940|
|remove_remove_TCC1|✅ proved - complete|shostak|0.047|
|remove_remove|✅ proved - complete|shostak|0.316|
|remove_extensionality|✅ proved - complete|shostak|0.256|
|remove_some|✅ proved - complete|shostak|0.197|
|remove_every|✅ proved - complete|shostak|0.062|

## `csequence_length_comp`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|length_lt_le|✅ proved - complete|shostak|0.035|
|length_gt_ge|✅ proved - complete|shostak|0.037|
|length_eq_le|✅ proved - complete|shostak|0.044|
|length_eq_ge|✅ proved - complete|shostak|0.039|
|length_lt_neq|✅ proved - complete|shostak|0.036|
|length_gt_neq|✅ proved - complete|shostak|0.039|
|length_eq_empty|✅ proved - complete|shostak|0.065|
|length_eq_rest|✅ proved - complete|shostak|0.066|

## `csequence_limit`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|prefix_chain_TCC1|✅ proved - complete|shostak|0.055|
|suffix_chain_TCC1|✅ proved - complete|shostak|0.182|
|rest_chain_TCC1|✅ proved - complete|shostak|0.046|
|rest_chain_TCC2|✅ proved - complete|shostak|0.114|
|ascending_chain?_nth|✅ proved - complete|shostak|0.049|
|limit_struct_TCC1|✅ proved - complete|shostak|0.085|
|limit_struct_TCC2|✅ proved - complete|shostak|0.046|
|limit_empty|✅ proved - complete|shostak|0.134|
|limit_nonempty|✅ proved - complete|shostak|0.043|
|limit_first_TCC1|✅ proved - complete|shostak|0.037|
|limit_first|✅ proved - complete|shostak|0.206|
|limit_rest_chain|✅ proved - complete|shostak|0.175|
|limit_suffix_chain|✅ proved - complete|shostak|0.871|
|limit_lub|✅ proved - complete|shostak|0.416|
|limit_nth|✅ proved - complete|shostak|0.057|
|limit_def|✅ proved - complete|shostak|0.373|
|limit_prefix_chain|✅ proved - complete|shostak|0.114|
|limit_prefix_compact_TCC1|✅ proved - complete|shostak|0.044|
|limit_prefix_compact|✅ proved - complete|shostak|0.000|
|limit_finite_compact|✅ proved - complete|shostak|0.127|
|continuous?_infinite|✅ proved - complete|shostak|0.033|

## `csequence_list`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|from_list_TCC1|✅ proved - complete|shostak|0.027|
|from_list_TCC2|✅ proved - complete|shostak|0.037|
|from_list_TCC3|✅ proved - complete|shostak|0.029|
|from_list_length|✅ proved - complete|shostak|0.042|
|from_list_index|✅ proved - complete|shostak|0.101|
|from_list_nth_TCC1|✅ proved - complete|shostak|0.037|
|from_list_nth|✅ proved - complete|shostak|0.105|
|to_list_TCC1|✅ proved - complete|shostak|0.037|
|to_list_TCC2|✅ proved - complete|shostak|0.028|
|to_list_TCC3|✅ proved - complete|shostak|0.063|
|to_list_length|✅ proved - complete|shostak|0.092|
|to_list_index|✅ proved - complete|shostak|0.145|
|to_list_nth_TCC1|✅ proved - complete|shostak|0.025|
|to_list_nth|✅ proved - complete|shostak|0.128|
|to_from_list|✅ proved - complete|shostak|0.040|
|from_to_list|✅ proved - complete|shostak|0.063|

## `csequence_map_composition`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|map_composition|✅ proved - complete|shostak|0.272|

## `csequence_merge`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|merge_struct_TCC1|✅ proved - complete|shostak|0.037|
|merge_struct_TCC2|✅ proved - complete|shostak|0.024|
|merge_empty|✅ proved - complete|shostak|0.112|
|merge_nonempty|✅ proved - complete|shostak|0.122|
|merge_empty_left|✅ proved - complete|shostak|0.456|
|merge_empty_right|✅ proved - complete|shostak|0.460|
|merge_first_TCC1|✅ proved - complete|shostak|0.039|
|merge_first|✅ proved - complete|shostak|0.135|
|merge_rest|✅ proved - complete|shostak|0.102|
|merge_finite|✅ proved - complete|shostak|0.137|
|merge_finiteness|✅ proved - complete|shostak|0.123|
|merge_infinite1|✅ proved - complete|shostak|0.027|
|merge_infinite2|✅ proved - complete|shostak|0.025|
|merge_length|✅ proved - complete|shostak|0.282|
|merge_index_TCC1|✅ proved - complete|shostak|0.043|
|merge_index|✅ proved - complete|shostak|0.207|
|merge_nth_TCC1|✅ proved - complete|shostak|0.043|
|merge_nth_TCC2|✅ proved - complete|shostak|0.079|
|merge_nth_TCC3|✅ proved - complete|shostak|0.046|
|merge_nth_TCC4|✅ proved - complete|shostak|0.268|
|merge_nth_TCC5|✅ proved - complete|shostak|0.387|
|merge_nth_TCC6|✅ proved - complete|shostak|1.075|
|merge_nth|✅ proved - complete|shostak|7.859|
|merge_add|✅ proved - complete|shostak|0.074|
|merge_last_TCC1|✅ proved - complete|shostak|0.045|
|merge_last_TCC2|✅ proved - complete|shostak|0.036|
|merge_last|✅ proved - complete|shostak|0.581|
|merge_extensionality|✅ proved - complete|shostak|2.430|
|merge_some|✅ proved - complete|shostak|0.552|
|merge_every|✅ proved - complete|shostak|0.047|

## `csequence_merge_split`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|merge_split_eta|✅ proved - complete|shostak|0.307|
|split_merge_eta|✅ proved - complete|shostak|1.322|

## `csequence_split`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|split_left_struct_TCC1|✅ proved - complete|shostak|0.028|
|split_left_struct_TCC2|✅ proved - complete|shostak|0.037|
|split_empty_left|✅ proved - complete|shostak|0.111|
|split_empty_right|✅ proved - complete|shostak|0.096|
|split_nonempty_left|✅ proved - complete|shostak|0.112|
|split_nonempty_right|✅ proved - complete|shostak|0.102|
|split_first_left_TCC1|✅ proved - complete|shostak|0.027|
|split_first_left|✅ proved - complete|shostak|0.086|
|split_first_right_TCC1|✅ proved - complete|shostak|0.019|
|split_first_right|✅ proved - complete|shostak|0.115|
|split_rest_left_TCC1|✅ proved - complete|shostak|0.029|
|split_rest_left|✅ proved - complete|shostak|0.135|
|split_rest_right|✅ proved - complete|shostak|0.133|
|split_rest_swap_left|✅ proved - complete|shostak|0.000|
|split_rest_swap_right|✅ proved - complete|shostak|0.729|
|split_finite|✅ proved - complete|shostak|0.164|
|split_infinite|✅ proved - complete|shostak|0.265|
|split_length_left|✅ proved - complete|shostak|0.320|
|split_length_right|✅ proved - complete|shostak|0.315|
|split_length|✅ proved - complete|shostak|0.175|
|split_index_left|✅ proved - complete|shostak|0.112|
|split_index_right|✅ proved - complete|shostak|0.157|
|split_nth_left_TCC1|✅ proved - complete|shostak|0.055|
|split_nth_left|✅ proved - complete|shostak|0.332|
|split_nth_right_TCC1|✅ proved - complete|shostak|0.094|
|split_nth_right|✅ proved - complete|shostak|0.416|
|split_add|✅ proved - complete|shostak|1.189|
|split_last_left_TCC1|✅ proved - complete|shostak|0.036|
|split_last_left_TCC2|✅ proved - complete|shostak|0.102|
|split_last_left|✅ proved - complete|shostak|0.310|
|split_last_right_TCC1|✅ proved - complete|shostak|0.030|
|split_last_right_TCC2|✅ proved - complete|shostak|0.102|
|split_last_right|✅ proved - complete|shostak|0.298|
|split_extensionality|✅ proved - complete|shostak|0.132|
|split_some|✅ proved - complete|shostak|0.218|
|split_every|✅ proved - complete|shostak|0.045|

## `csequence_prefix_append`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|prefix_append_eta|✅ proved - complete|shostak|0.300|

## `csequence_rest`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|rest_finite|✅ proved - complete|shostak|0.032|
|rest_infinite|✅ proved - complete|shostak|0.024|
|rest_empty_add|✅ proved - complete|shostak|0.034|
|rest_empty|✅ proved - complete|shostak|0.064|
|rest_nonempty|✅ proved - complete|shostak|0.105|
|rest_first_TCC1|✅ proved - complete|shostak|0.028|
|rest_first|✅ proved - complete|shostak|0.028|
|rest_length|✅ proved - complete|shostak|0.019|
|rest_index|✅ proved - complete|shostak|0.018|
|rest_nth_TCC1|✅ proved - complete|shostak|0.020|
|rest_nth|✅ proved - complete|shostak|0.029|
|rest_some|✅ proved - complete|shostak|0.029|
|rest_every|✅ proved - complete|shostak|0.020|

## `csequence_reverse`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|reverse_TCC1|✅ proved - complete|shostak|0.029|
|reverse_TCC2|✅ proved - complete|shostak|0.029|
|reverse_TCC3|✅ proved - complete|shostak|0.066|
|reverse_empty|✅ proved - complete|shostak|0.038|
|reverse_nonempty|✅ proved - complete|shostak|0.039|
|reverse_first_TCC1|✅ proved - complete|shostak|0.029|
|reverse_first|✅ proved - complete|shostak|0.236|
|reverse_last|✅ proved - complete|shostak|0.028|
|reverse_length|✅ proved - complete|shostak|0.124|
|reverse_index|✅ proved - complete|shostak|0.049|
|reverse_nth_TCC1|✅ proved - complete|shostak|0.060|
|reverse_nth|✅ proved - complete|shostak|0.416|
|reverse_add1|✅ proved - complete|shostak|0.360|
|reverse_add2_TCC1|✅ proved - complete|shostak|0.028|
|reverse_add2|✅ proved - complete|shostak|0.020|
|reverse_reverse|✅ proved - complete|shostak|0.139|
|reverse_extensionality|✅ proved - complete|shostak|0.136|
|reverse_some|✅ proved - complete|shostak|0.163|
|reverse_every|✅ proved - complete|shostak|0.035|

## `csequence_sequence`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|from_sequence_TCC1|✅ proved - complete|shostak|0.109|
|from_sequence_nth_TCC1|✅ proved - complete|shostak|0.028|
|from_sequence_nth|✅ proved - complete|shostak|0.100|
|to_sequence_TCC1|✅ proved - complete|shostak|0.029|
|to_sequence_nth|✅ proved - complete|shostak|0.027|
|to_from_sequence|✅ proved - complete|shostak|0.029|
|from_to_sequence|✅ proved - complete|shostak|0.047|

## `csequence_strict_prefix`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|strict_prefix?_TCC1|✅ proved - complete|shostak|0.036|
|strict_prefix?_prefix?|✅ proved - complete|shostak|0.122|
|strict_prefix?_finite|✅ proved - complete|shostak|0.033|
|strict_prefix?_first_TCC1|✅ proved - complete|shostak|0.026|
|strict_prefix?_first|✅ proved - complete|shostak|0.027|
|strict_prefix?_rest|✅ proved - complete|shostak|0.027|
|strict_prefix?_length_TCC1|✅ proved - complete|shostak|0.028|
|strict_prefix?_length|✅ proved - complete|shostak|0.055|
|strict_prefix?_index|✅ proved - complete|shostak|0.036|
|strict_prefix?_nth_TCC1|✅ proved - complete|shostak|0.024|
|strict_prefix?_nth|✅ proved - complete|shostak|0.046|
|strict_prefix?_concatenate|✅ proved - complete|shostak|0.063|
|strict_prefix?_def|✅ proved - complete|shostak|0.151|
|strict_prefix?_is_strict_order|✅ proved - complete|shostak|0.101|
|strict_prefix?_well_ordered|✅ proved - complete|shostak|0.211|
|strict_prefix?_prefix|✅ proved - complete|shostak|0.170|

## `csequence_unzip`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|unzip_left_struct_TCC1|✅ proved - complete|shostak|0.036|
|unzip_finite|✅ proved - complete|shostak|0.245|
|unzip_infinite|✅ proved - complete|shostak|0.000|
|unzip_nonempty|✅ proved - complete|shostak|0.102|
|unzip_empty_left|✅ proved - complete|shostak|0.084|
|unzip_empty_right|✅ proved - complete|shostak|0.086|
|unzip_first_left|✅ proved - complete|shostak|0.057|
|unzip_first_right|✅ proved - complete|shostak|0.067|
|unzip_rest_left|✅ proved - complete|shostak|0.076|
|unzip_rest_right|✅ proved - complete|shostak|0.069|
|unzip_length_left|✅ proved - complete|shostak|0.219|
|unzip_length_right|✅ proved - complete|shostak|0.213|
|unzip_index_left|✅ proved - complete|shostak|0.066|
|unzip_index_right|✅ proved - complete|shostak|0.062|
|unzip_nth_left_TCC1|✅ proved - complete|shostak|0.026|
|unzip_nth_left|✅ proved - complete|shostak|0.310|
|unzip_nth_right_TCC1|✅ proved - complete|shostak|0.025|
|unzip_nth_right|✅ proved - complete|shostak|0.306|
|unzip_map|✅ proved - complete|shostak|0.494|
|unzip_extensionality|✅ proved - complete|shostak|0.901|
|unzip_add|✅ proved - complete|shostak|0.116|
|unzip_last_left_TCC1|✅ proved - complete|shostak|0.030|
|unzip_last_left|✅ proved - complete|shostak|0.064|
|unzip_last_right_TCC1|✅ proved - complete|shostak|0.029|
|unzip_last_right|✅ proved - complete|shostak|0.065|
|unzip_some|✅ proved - complete|shostak|0.149|
|unzip_every|✅ proved - complete|shostak|0.140|

## `csequence_zip`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|zip_struct_TCC1|✅ proved - complete|shostak|0.028|
|zip_struct_TCC2|✅ proved - complete|shostak|0.038|
|zip_finite1|✅ proved - complete|shostak|0.170|
|zip_finite2|✅ proved - complete|shostak|0.174|
|zip_infinite|✅ proved - complete|shostak|0.151|
|zip_nonempty|✅ proved - complete|shostak|0.063|
|zip_empty|✅ proved - complete|shostak|0.108|
|zip_first|✅ proved - complete|shostak|0.076|
|zip_rest|✅ proved - complete|shostak|0.075|
|zip_add|✅ proved - complete|shostak|0.086|
|zip_length_TCC1|✅ proved - complete|shostak|0.029|
|zip_length|✅ proved - complete|shostak|0.978|
|zip_index|✅ proved - complete|shostak|0.348|
|zip_nth_TCC1|✅ proved - complete|shostak|0.032|
|zip_nth_TCC2|✅ proved - complete|shostak|0.035|
|zip_nth|✅ proved - complete|shostak|0.411|
|zip_last_TCC1|✅ proved - complete|shostak|0.055|
|zip_last_TCC2|✅ proved - complete|shostak|0.051|
|zip_last_TCC3|✅ proved - complete|shostak|0.136|
|zip_last_TCC4|✅ proved - complete|shostak|0.059|
|zip_last_TCC5|✅ proved - complete|shostak|0.134|
|zip_last_TCC6|✅ proved - complete|shostak|0.053|
|zip_last_TCC7|✅ proved - complete|shostak|0.044|
|zip_last_TCC8|✅ proved - complete|shostak|0.048|
|zip_last_TCC9|✅ proved - complete|shostak|0.075|
|zip_last|✅ proved - complete|shostak|0.288|
|zip_extensionality|✅ proved - complete|shostak|0.791|
|zip_some_TCC1|✅ proved - complete|shostak|0.065|
|zip_some_TCC2|✅ proved - complete|shostak|0.056|
|zip_some_TCC3|✅ proved - complete|shostak|0.057|
|zip_some|✅ proved - complete|shostak|0.431|
|zip_every_TCC1|✅ proved - complete|shostak|0.063|
|zip_every|✅ proved - complete|shostak|0.450|

## `csequence_zip_unzip`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|zip_unzip_eta|✅ proved - complete|shostak|1.467|
|unzip_zip_eta|✅ proved - complete|shostak|0.413|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib//float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-pvsio-fix.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210219-extratregies.lisp`|
