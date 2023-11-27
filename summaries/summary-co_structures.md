# Summary for `co_structures`
Run started at 3:10:3 11/25/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **726**   | **726**    | **726**    | **0**  | **1:17.768 s**   |
|top|0|0|0|0|0.000|
|ascending_chains|2|2|2|0|0.147|
|csequence_add|11|11|11|0|0.260|
|csequence_nth|22|22|22|0|0.957|
|csequence_length|11|11|11|0|0.394|
|csequence_props|13|13|13|0|0.428|
|csequence_append|17|17|17|0|2.340|
|csequence_insert|22|22|22|0|1.932|
|csequence_concatenate|31|31|31|0|4.289|
|csequence_concatenate_extract|2|2|2|0|0.467|
|csequence_extract|30|30|30|0|4.199|
|csequence_constant|25|25|25|0|0.806|
|csequence_singleton|12|12|12|0|0.288|
|csequence_filter|26|26|26|0|3.162|
|csequence_filter_of|14|14|14|0|2.047|
|csequence_first_p|6|6|6|0|0.529|
|csequence_suffix|42|42|42|0|3.158|
|csequence_subsequence|30|30|30|0|4.251|
|csequence_prefix|36|36|36|0|3.214|
|csequence_filter_map|5|5|5|0|0.974|
|csequence_map_props|19|19|19|0|1.221|
|csequence_finseq|16|16|16|0|0.691|
|csequence_flatten|38|38|38|0|4.178|
|csequence_prefix_suffix|2|2|2|0|0.120|
|csequence_generate|8|8|8|0|0.340|
|csequence_generate_limit|10|10|10|0|0.530|
|csequence_induction|13|13|13|0|0.470|
|csequence_insert_remove|1|1|1|0|0.112|
|csequence_remove|30|30|30|0|2.635|
|csequence_length_comp|8|8|8|0|0.277|
|csequence_limit|21|21|21|0|2.922|
|csequence_list|16|16|16|0|0.818|
|csequence_map_composition|1|1|1|0|0.217|
|csequence_merge|30|30|30|0|11.841|
|csequence_merge_split|2|2|2|0|1.214|
|csequence_split|36|36|36|0|4.530|
|csequence_prefix_append|1|1|1|0|0.233|
|csequence_rest|13|13|13|0|0.331|
|csequence_reverse|19|19|19|0|1.576|
|csequence_sequence|7|7|7|0|0.275|
|csequence_strict_prefix|16|16|16|0|0.827|
|csequence_unzip|27|27|27|0|3.216|
|csequence_zip|33|33|33|0|4.095|
|csequence_zip_unzip|2|2|2|0|1.257|
## Detailed Summary 
## `top`
No formula declaration found.
## `ascending_chains`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|ascending_chain?_def|✅ proved - complete|shostak|0.123|
|least_upperbound_inj|✅ proved - complete|shostak|0.024|

## `csequence_add`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|add_finite|✅ proved - complete|shostak|0.018|
|add_infinite|✅ proved - complete|shostak|0.018|
|add_length|✅ proved - complete|shostak|0.018|
|add_index_TCC1|✅ proved - complete|shostak|0.027|
|add_index|✅ proved - complete|shostak|0.029|
|add_nth_TCC1|✅ proved - complete|shostak|0.018|
|add_nth|✅ proved - complete|shostak|0.018|
|add_last_TCC1|✅ proved - complete|shostak|0.026|
|add_last|✅ proved - complete|shostak|0.044|
|add_some|✅ proved - complete|shostak|0.027|
|add_every|✅ proved - complete|shostak|0.017|

## `csequence_nth`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|index?_TCC1|✅ proved - complete|shostak|0.028|
|index?_TCC2|✅ proved - complete|shostak|0.019|
|index?_0|✅ proved - complete|shostak|0.020|
|index?_ub|✅ proved - complete|shostak|0.040|
|index?_lt|✅ proved - complete|shostak|0.076|
|index?_finite|✅ proved - complete|shostak|0.104|
|index?_finite_bound|✅ proved - complete|shostak|0.027|
|index?_infinite|✅ proved - complete|shostak|0.038|
|index?_infinite_full|✅ proved - complete|shostak|0.039|
|index?_prop|✅ proved - complete|shostak|0.017|
|index?_nonempty|✅ proved - complete|shostak|0.028|
|nth_TCC1|✅ proved - complete|shostak|0.017|
|nth_TCC2|✅ proved - complete|shostak|0.018|
|nth_TCC3|✅ proved - complete|shostak|0.029|
|nth_TCC4|✅ proved - complete|shostak|0.019|
|nth_extensionality_TCC1|✅ proved - complete|shostak|0.018|
|nth_extensionality|✅ proved - complete|shostak|0.153|
|nth_every|✅ proved - complete|shostak|0.137|
|nth_some|✅ proved - complete|shostak|0.000|
|last_TCC1|✅ proved - complete|shostak|0.036|
|last_rest_TCC1|✅ proved - complete|shostak|0.018|
|last_rest|✅ proved - complete|shostak|0.076|

## `csequence_length`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|length_TCC1|✅ proved - complete|shostak|0.036|
|length_TCC2|✅ proved - complete|shostak|0.018|
|length_TCC3|✅ proved - complete|shostak|0.018|
|length_TCC4|✅ proved - complete|shostak|0.019|
|length_TCC5|✅ proved - complete|shostak|0.068|
|length_TCC6|✅ proved - complete|shostak|0.062|
|length_def|✅ proved - complete|shostak|0.026|
|length_empty?_rew|✅ proved - complete|shostak|0.053|
|length_nonempty?_rew|✅ proved - complete|shostak|0.067|
|length_rest_TCC1|✅ proved - complete|shostak|0.008|
|length_rest|✅ proved - complete|shostak|0.019|

## `csequence_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|has_length_TCC1|✅ proved - complete|shostak|0.028|
|has_length_TCC2|✅ proved - complete|shostak|0.027|
|has_length_TCC3|✅ proved - complete|shostak|0.010|
|has_length_injective|✅ proved - complete|shostak|0.065|
|is_finite_TCC1|✅ proved - complete|shostak|0.018|
|is_finite_def|✅ proved - complete|shostak|0.075|
|finite_csequence_TCC1|✅ proved - complete|shostak|0.020|
|empty_csequence_is_finite|✅ proved - complete|shostak|0.019|
|infinite_csequence_is_nonempty|✅ proved - complete|shostak|0.018|
|some_every_rew|✅ proved - complete|shostak|0.049|
|every_some_rew|✅ proved - complete|shostak|0.023|
|some_implies|✅ proved - complete|shostak|0.043|
|every_implies|✅ proved - complete|shostak|0.033|

## `csequence_append`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|append_struct_TCC1|✅ proved - complete|shostak|0.018|
|append_TCC1|✅ proved - complete|shostak|0.064|
|append_finite|✅ proved - complete|shostak|0.130|
|append_first_TCC1|✅ proved - complete|shostak|0.018|
|append_first|✅ proved - complete|shostak|0.060|
|append_rest|✅ proved - complete|shostak|0.822|
|append_finite_def|✅ proved - complete|shostak|0.130|
|append_infinite_def|✅ proved - complete|shostak|0.109|
|append_length|✅ proved - complete|shostak|0.193|
|append_index|✅ proved - complete|shostak|0.413|
|append_nth_TCC1|✅ proved - complete|shostak|0.025|
|append_nth|✅ proved - complete|shostak|0.063|
|append_add|✅ proved - complete|shostak|0.056|
|append_last|✅ proved - complete|shostak|0.078|
|append_extensionality|✅ proved - complete|shostak|0.106|
|append_some|✅ proved - complete|shostak|0.033|
|append_every|✅ proved - complete|shostak|0.022|

## `csequence_insert`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|insert_TCC1|✅ proved - complete|shostak|0.018|
|insert_TCC2|✅ proved - complete|shostak|0.027|
|insert_TCC3|✅ proved - complete|shostak|0.019|
|insert_finite|✅ proved - complete|shostak|0.044|
|insert_infinite|✅ proved - complete|shostak|0.043|
|insert_first|✅ proved - complete|shostak|0.019|
|insert_rest|✅ proved - complete|shostak|0.020|
|insert_length|✅ proved - complete|shostak|0.096|
|insert_index_TCC1|✅ proved - complete|shostak|0.027|
|insert_index|✅ proved - complete|shostak|0.080|
|insert_nth_TCC1|✅ proved - complete|shostak|0.061|
|insert_nth|✅ proved - complete|shostak|0.181|
|insert_0|✅ proved - complete|shostak|0.020|
|insert_add|✅ proved - complete|shostak|0.018|
|insert_last_TCC1|✅ proved - complete|shostak|0.027|
|insert_last|✅ proved - complete|shostak|0.272|
|insert_beyond|✅ proved - complete|shostak|0.104|
|insert_insert_TCC1|✅ proved - complete|shostak|0.037|
|insert_insert|✅ proved - complete|shostak|0.555|
|insert_extensionality|✅ proved - complete|shostak|0.088|
|insert_some|✅ proved - complete|shostak|0.095|
|insert_every|✅ proved - complete|shostak|0.081|

## `csequence_concatenate`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|concatenate_struct_TCC1|✅ proved - complete|shostak|0.017|
|concatenate_struct_TCC2|✅ proved - complete|shostak|0.025|
|o_finite|✅ proved - complete|shostak|0.262|
|o_finiteness|✅ proved - complete|shostak|0.336|
|o_infinite1|✅ proved - complete|shostak|0.021|
|o_infinite2|✅ proved - complete|shostak|0.023|
|o_empty|✅ proved - complete|shostak|0.084|
|o_nonempty|✅ proved - complete|shostak|0.046|
|o_nonempty_left|✅ proved - complete|shostak|0.046|
|o_nonempty_right|✅ proved - complete|shostak|0.076|
|o_empty_left|✅ proved - complete|shostak|0.160|
|o_empty_right|✅ proved - complete|shostak|0.155|
|o_first_TCC1|✅ proved - complete|shostak|0.024|
|o_first|✅ proved - complete|shostak|0.100|
|o_rest|✅ proved - complete|shostak|0.063|
|o_first_rest|✅ proved - complete|shostak|0.118|
|o_length|✅ proved - complete|shostak|0.346|
|o_index|✅ proved - complete|shostak|0.069|
|o_nth_TCC1|✅ proved - complete|shostak|0.064|
|o_nth_TCC2|✅ proved - complete|shostak|0.061|
|o_nth|✅ proved - complete|shostak|0.419|
|o_add|✅ proved - complete|shostak|0.033|
|o_last_TCC1|✅ proved - complete|shostak|0.065|
|o_last_TCC2|✅ proved - complete|shostak|0.018|
|o_last|✅ proved - complete|shostak|0.100|
|o_infinite|✅ proved - complete|shostak|0.061|
|o_assoc|✅ proved - complete|shostak|1.140|
|o_extensionality_left|✅ proved - complete|shostak|0.088|
|o_extensionality_right|✅ proved - complete|shostak|0.000|
|o_some|✅ proved - complete|shostak|0.234|
|o_every|✅ proved - complete|shostak|0.035|

## `csequence_concatenate_extract`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|o_extract|✅ proved - complete|shostak|0.404|
|o_extract_eta|✅ proved - complete|shostak|0.063|

## `csequence_extract`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|caret_TCC1|✅ proved - complete|shostak|0.024|
|caret_TCC2|✅ proved - complete|shostak|0.036|
|caret_TCC3|✅ proved - complete|shostak|0.026|
|caret_TCC4|✅ proved - complete|shostak|0.036|
|caret_TCC5|✅ proved - complete|shostak|0.028|
|caret_TCC6|✅ proved - complete|shostak|0.028|
|caret_TCC7|✅ proved - complete|shostak|0.036|
|caret_TCC8|✅ proved - complete|shostak|0.035|
|extract_empty|✅ proved - complete|shostak|0.171|
|extract_nonempty|✅ proved - complete|shostak|0.045|
|extract_length|✅ proved - complete|shostak|0.423|
|extract_def|✅ proved - complete|shostak|0.177|
|extract_rest_TCC1|✅ proved - complete|shostak|0.025|
|extract_rest|✅ proved - complete|shostak|0.083|
|extract_rest2|✅ proved - complete|shostak|0.138|
|extract_extract|✅ proved - complete|shostak|0.825|
|extract_index|✅ proved - complete|shostak|0.158|
|extract_first_TCC1|✅ proved - complete|shostak|0.047|
|extract_first|✅ proved - complete|shostak|0.088|
|extract_nth_TCC1|✅ proved - complete|shostak|0.062|
|extract_nth|✅ proved - complete|shostak|0.909|
|extract_add_TCC1|✅ proved - complete|shostak|0.028|
|extract_add_TCC2|✅ proved - complete|shostak|0.046|
|extract_add_TCC3|✅ proved - complete|shostak|0.027|
|extract_add|✅ proved - complete|shostak|0.046|
|extract_last_TCC1|✅ proved - complete|shostak|0.027|
|extract_last|✅ proved - complete|shostak|0.251|
|extract_extensionality|✅ proved - complete|shostak|0.135|
|extract_some|✅ proved - complete|shostak|0.124|
|extract_every|✅ proved - complete|shostak|0.115|

## `csequence_constant`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|constant_cseq_TCC1|✅ proved - complete|shostak|0.026|
|constant_cseq_TCC2|✅ proved - complete|shostak|0.020|
|constant_cseq_TCC3|✅ proved - complete|shostak|0.018|
|constant_cseq_empty|✅ proved - complete|shostak|0.018|
|constant_cseq_1|✅ proved - complete|shostak|0.018|
|constant_cseq_first_TCC1|✅ proved - complete|shostak|0.018|
|constant_cseq_first|✅ proved - complete|shostak|0.019|
|constant_cseq_rest_TCC1|✅ proved - complete|shostak|0.028|
|constant_cseq_rest|✅ proved - complete|shostak|0.029|
|constant_cseq_length|✅ proved - complete|shostak|0.034|
|constant_cseq_index|✅ proved - complete|shostak|0.026|
|constant_cseq_nth_TCC1|✅ proved - complete|shostak|0.027|
|constant_cseq_nth|✅ proved - complete|shostak|0.051|
|constant_cseq_add|✅ proved - complete|shostak|0.020|
|constant_cseq_last|✅ proved - complete|shostak|0.070|
|constant_cseq_some|✅ proved - complete|shostak|0.032|
|constant_cseq_every|✅ proved - complete|shostak|0.032|
|constant_cseq_TCC4|✅ proved - complete|shostak|0.052|
|constant_cseq_inf_first|✅ proved - complete|shostak|0.036|
|constant_cseq_inf_rest|✅ proved - complete|shostak|0.038|
|constant_cseq_inf_nth_TCC1|✅ proved - complete|shostak|0.019|
|constant_cseq_inf_nth|✅ proved - complete|shostak|0.063|
|constant_cseq_inf_add|✅ proved - complete|shostak|0.038|
|constant_cseq_inf_some|✅ proved - complete|shostak|0.058|
|constant_cseq_inf_every|✅ proved - complete|shostak|0.016|

## `csequence_singleton`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|singleton_is_nonempty_finite|✅ proved - complete|shostak|0.026|
|singleton_cseq_length_TCC1|✅ proved - complete|shostak|0.017|
|singleton_cseq_length|✅ proved - complete|shostak|0.058|
|singleton_cseq_index|✅ proved - complete|shostak|0.028|
|singleton_cseq_TCC1|✅ proved - complete|shostak|0.019|
|singleton_def_TCC1|✅ proved - complete|shostak|0.018|
|singleton_def|✅ proved - complete|shostak|0.028|
|singleton_cseq_first|✅ proved - complete|shostak|0.010|
|singleton_cseq_rest|✅ proved - complete|shostak|0.019|
|singleton_cseq_last|✅ proved - complete|shostak|0.029|
|singleton_cseq_some|✅ proved - complete|shostak|0.018|
|singleton_cseq_every|✅ proved - complete|shostak|0.018|

## `csequence_filter`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|filter_TCC1|✅ proved - complete|shostak|0.129|
|filter_empty|✅ proved - complete|shostak|0.052|
|filter_nonempty|✅ proved - complete|shostak|0.081|
|filter_def|✅ proved - complete|shostak|0.337|
|filter_finite|✅ proved - complete|shostak|0.021|
|filter_length|✅ proved - complete|shostak|0.033|
|filter_length_eq|✅ proved - complete|shostak|0.026|
|filter_reduce_TCC1|✅ proved - complete|shostak|0.018|
|filter_reduce|✅ proved - complete|shostak|0.306|
|filter_add|✅ proved - complete|shostak|0.278|
|filter_rest_TCC1|✅ proved - complete|shostak|0.015|
|filter_rest|✅ proved - complete|shostak|0.051|
|filter_suffix_TCC1|✅ proved - complete|shostak|0.062|
|filter_suffix_TCC2|✅ proved - complete|shostak|0.037|
|filter_suffix|✅ proved - complete|shostak|0.103|
|filter_first_TCC1|✅ proved - complete|shostak|0.027|
|filter_first|✅ proved - complete|shostak|0.074|
|filter_first_first_TCC1|✅ proved - complete|shostak|0.018|
|filter_first_first|✅ proved - complete|shostak|0.066|
|filter_full|✅ proved - complete|shostak|0.806|
|filter_idem|✅ proved - complete|shostak|0.033|
|filter_some|✅ proved - complete|shostak|0.414|
|filter_every|✅ proved - complete|shostak|0.065|
|filter_filter_of|✅ proved - complete|shostak|0.000|
|filter_concatenate|✅ proved - complete|shostak|0.063|
|filter_filter|✅ proved - complete|shostak|0.047|

## `csequence_filter_of`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|filter_of?_TCC1|✅ proved - complete|shostak|0.027|
|filter_of?_empty|✅ proved - complete|shostak|0.028|
|filter_of?_nonempty|✅ proved - complete|shostak|0.019|
|filter_of?_finite|✅ proved - complete|shostak|0.062|
|filter_of?_def|✅ proved - complete|shostak|0.130|
|filter_of?_first_p_TCC1|✅ proved - complete|shostak|0.026|
|filter_of?_first_p|✅ proved - complete|shostak|0.176|
|filter_of?_suffix|✅ proved - complete|shostak|0.281|
|filter_of?_injective|✅ proved - complete|shostak|0.118|
|filter_of?_concatenate|✅ proved - complete|shostak|0.763|
|filter_of?_implication|✅ proved - complete|shostak|0.082|
|filter_of?_implication_rev|✅ proved - complete|shostak|0.096|
|filter_of?_some|✅ proved - complete|shostak|0.076|
|filter_of?_filter_of?|✅ proved - complete|shostak|0.163|

## `csequence_first_p`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|p_indexes_nonempty|✅ proved - complete|shostak|0.034|
|first_p_TCC1|✅ proved - complete|shostak|0.025|
|first_p_nth|✅ proved - complete|shostak|0.028|
|first_p_rest_TCC1|✅ proved - complete|shostak|0.019|
|first_p_rest_TCC2|✅ proved - complete|shostak|0.028|
|first_p_rest|✅ proved - complete|shostak|0.395|

## `csequence_suffix`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|suffix?_empty|✅ proved - complete|shostak|0.051|
|suffix?_rest_left|✅ proved - complete|shostak|0.036|
|suffix?_rest_right|✅ proved - complete|shostak|0.018|
|suffix?_finite_left|✅ proved - complete|shostak|0.044|
|suffix?_finite_right|✅ proved - complete|shostak|0.043|
|suffix?_infinite_left|✅ proved - complete|shostak|0.026|
|suffix?_infinite_right|✅ proved - complete|shostak|0.016|
|suffix?_length|✅ proved - complete|shostak|0.113|
|suffix?_length_eq|✅ proved - complete|shostak|0.098|
|suffix?_index|✅ proved - complete|shostak|0.062|
|suffix?_concatenate|✅ proved - complete|shostak|0.083|
|suffix?_def|✅ proved - complete|shostak|0.055|
|suffix?_is_preorder|✅ proved - complete|shostak|0.059|
|suffix?_finite_antisymmetric|✅ proved - complete|shostak|0.070|
|suffix?_order|✅ proved - complete|shostak|0.043|
|suffix_TCC1|✅ proved - complete|shostak|0.018|
|suffix_TCC2|✅ proved - complete|shostak|0.028|
|suffix_TCC3|✅ proved - complete|shostak|0.028|
|suffix_TCC4|✅ proved - complete|shostak|0.010|
|suffix_TCC5|✅ proved - complete|shostak|0.028|
|suffix_is_finite|✅ proved - complete|shostak|0.044|
|suffix_is_infinite|✅ proved - complete|shostak|0.044|
|suffix_0|✅ proved - complete|shostak|0.018|
|suffix_1|✅ proved - complete|shostak|0.028|
|suffix_rest1|✅ proved - complete|shostak|0.020|
|suffix_rest2_TCC1|✅ proved - complete|shostak|0.074|
|suffix_rest2|✅ proved - complete|shostak|0.175|
|suffix_suffix|✅ proved - complete|shostak|0.127|
|suffix_length|✅ proved - complete|shostak|0.105|
|suffix_first_TCC1|✅ proved - complete|shostak|0.018|
|suffix_first|✅ proved - complete|shostak|0.133|
|suffix_index|✅ proved - complete|shostak|0.104|
|suffix_nth_TCC1|✅ proved - complete|shostak|0.053|
|suffix_nth|✅ proved - complete|shostak|0.218|
|suffix_empty|✅ proved - complete|shostak|0.070|
|suffix_nonempty|✅ proved - complete|shostak|0.038|
|suffix_concatenate_TCC1|✅ proved - complete|shostak|0.018|
|suffix_concatenate_TCC2|✅ proved - complete|shostak|0.026|
|suffix_concatenate|✅ proved - complete|shostak|0.659|
|suffix?_suffix|✅ proved - complete|shostak|0.066|
|suffix_some|✅ proved - complete|shostak|0.096|
|suffix_every|✅ proved - complete|shostak|0.095|

## `csequence_subsequence`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|subsequence?_TCC1|✅ proved - complete|shostak|0.038|
|subsequence?_empty_left|✅ proved - complete|shostak|0.018|
|subsequence?_empty_right|✅ proved - complete|shostak|0.029|
|subsequence?_rest1|✅ proved - complete|shostak|0.176|
|subsequence?_rest2|✅ proved - complete|shostak|0.084|
|subsequence?_extensionality|✅ proved - complete|shostak|0.034|
|subsequence?_finite|✅ proved - complete|shostak|0.121|
|subsequence?_nth|✅ proved - complete|shostak|0.277|
|subsequence?_concatenate_left|✅ proved - complete|shostak|0.000|
|subsequence?_concatenate_right|✅ proved - complete|shostak|0.373|
|subsequence?_prefix|✅ proved - complete|shostak|0.159|
|subsequence?_suffix|✅ proved - complete|shostak|0.186|
|subsequence?_length|✅ proved - complete|shostak|0.318|
|subsequence?_length_eq|✅ proved - complete|shostak|0.429|
|subsequence?_is_preorder|✅ proved - complete|shostak|0.089|
|subsequence?_finite_antisymmetric|✅ proved - complete|shostak|0.070|
|prefix?_is_subsequence?|✅ proved - complete|shostak|0.041|
|suffix?_is_subsequence?|✅ proved - complete|shostak|0.032|
|subsequence?_some|✅ proved - complete|shostak|0.089|
|subsequence?_every|✅ proved - complete|shostak|0.023|
|subsequence_func_TCC1|✅ proved - complete|shostak|0.043|
|subsequence_func_TCC2|✅ proved - complete|shostak|0.035|
|subsequence_func_TCC3|✅ proved - complete|shostak|0.088|
|subsequence_func_TCC4|✅ proved - complete|shostak|0.028|
|subsequence_func_TCC5|✅ proved - complete|shostak|0.236|
|subsequence_func_TCC6|✅ proved - complete|shostak|0.032|
|subsequence_func_TCC7|✅ proved - complete|shostak|0.040|
|subsequence_func_monotonic|✅ proved - complete|shostak|0.435|
|subsequence_func_nth|✅ proved - complete|shostak|0.490|
|subsequence?_def|✅ proved - complete|shostak|0.238|

## `csequence_prefix`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|prefix?_TCC1|✅ proved - complete|shostak|0.027|
|prefix?_finite|✅ proved - complete|shostak|0.044|
|prefix?_infinite|✅ proved - complete|shostak|0.041|
|prefix?_empty|✅ proved - complete|shostak|0.019|
|prefix?_empty_is_prefix|✅ proved - complete|shostak|0.020|
|prefix?_first|✅ proved - complete|shostak|0.018|
|prefix?_rest|✅ proved - complete|shostak|0.018|
|prefix?_length|✅ proved - complete|shostak|0.093|
|prefix?_length_eq|✅ proved - complete|shostak|0.107|
|prefix?_index|✅ proved - complete|shostak|0.032|
|prefix?_nth_TCC1|✅ proved - complete|shostak|0.025|
|prefix?_nth|✅ proved - complete|shostak|0.128|
|prefix?_concatenate|✅ proved - complete|shostak|0.058|
|prefix?_def|✅ proved - complete|shostak|0.079|
|prefix?_is_partial_order|✅ proved - complete|shostak|0.124|
|prefix?_total_order|✅ proved - complete|shostak|0.144|
|prefix_TCC1|✅ proved - complete|shostak|0.018|
|prefix_TCC2|✅ proved - complete|shostak|0.017|
|prefix_TCC3|✅ proved - complete|shostak|0.026|
|prefix_TCC4|✅ proved - complete|shostak|0.020|
|prefix_TCC5|✅ proved - complete|shostak|0.028|
|prefix_0|✅ proved - complete|shostak|0.019|
|prefix_extract|✅ proved - complete|shostak|0.073|
|prefix_rest_TCC1|✅ proved - complete|shostak|0.019|
|prefix_rest|✅ proved - complete|shostak|0.079|
|prefix_prefix|✅ proved - complete|shostak|0.174|
|prefix_length|✅ proved - complete|shostak|0.125|
|prefix_index|✅ proved - complete|shostak|0.108|
|prefix_full|✅ proved - complete|shostak|0.060|
|prefix_concatenate_TCC1|✅ proved - complete|shostak|0.027|
|prefix_concatenate_TCC2|✅ proved - complete|shostak|0.028|
|prefix_concatenate|✅ proved - complete|shostak|0.926|
|prefix?_prefix|✅ proved - complete|shostak|0.265|
|prefix_some|✅ proved - complete|shostak|0.049|
|prefix_every|✅ proved - complete|shostak|0.060|
|prefix?_order|✅ proved - complete|shostak|0.116|

## `csequence_filter_map`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|map_first_p_TCC1|✅ proved - complete|shostak|0.016|
|map_first_p|✅ proved - complete|shostak|0.779|
|map_suffix_empty|✅ proved - complete|shostak|0.115|
|map_suffix|✅ proved - complete|shostak|0.064|
|filter_map|✅ proved - complete|shostak|0.000|

## `csequence_map_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|map_empty|✅ proved - complete|shostak|0.045|
|map_nonempty|✅ proved - complete|shostak|0.036|
|map_finite|✅ proved - complete|shostak|0.045|
|map_infinite|✅ proved - complete|shostak|0.110|
|map_first_TCC1|✅ proved - complete|shostak|0.015|
|map_first|✅ proved - complete|shostak|0.028|
|map_rest|✅ proved - complete|shostak|0.018|
|map_length|✅ proved - complete|shostak|0.116|
|map_index|✅ proved - complete|shostak|0.053|
|map_nth_TCC1|✅ proved - complete|shostak|0.018|
|map_nth|✅ proved - complete|shostak|0.126|
|map_add|✅ proved - complete|shostak|0.018|
|map_last_TCC1|✅ proved - complete|shostak|0.026|
|map_last|✅ proved - complete|shostak|0.063|
|map_map|✅ proved - complete|shostak|0.096|
|map_injective|✅ proved - complete|shostak|0.146|
|map_extensionality|✅ proved - complete|shostak|0.033|
|map_some|✅ proved - complete|shostak|0.125|
|map_every|✅ proved - complete|shostak|0.104|

## `csequence_finseq`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|from_finseq_TCC1|✅ proved - complete|shostak|0.028|
|from_finseq_TCC2|✅ proved - complete|shostak|0.017|
|from_finseq_TCC3|✅ proved - complete|shostak|0.018|
|from_finseq_TCC4|✅ proved - complete|shostak|0.020|
|from_finseq_TCC5|✅ proved - complete|shostak|0.018|
|from_finseq_length|✅ proved - complete|shostak|0.089|
|from_finseq_index|✅ proved - complete|shostak|0.033|
|from_finseq_nth_TCC1|✅ proved - complete|shostak|0.014|
|from_finseq_nth|✅ proved - complete|shostak|0.178|
|to_finseq_TCC1|✅ proved - complete|shostak|0.034|
|to_finseq_length|✅ proved - complete|shostak|0.016|
|to_finseq_index|✅ proved - complete|shostak|0.026|
|to_finseq_nth_TCC1|✅ proved - complete|shostak|0.027|
|to_finseq_nth|✅ proved - complete|shostak|0.030|
|to_from_finseq|✅ proved - complete|shostak|0.087|
|from_to_finseq|✅ proved - complete|shostak|0.056|

## `csequence_flatten`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|some_every_empty|✅ proved - complete|shostak|0.034|
|flatten_struct_TCC1|✅ proved - complete|shostak|0.025|
|flatten_struct_TCC2|✅ proved - complete|shostak|0.028|
|flatten_struct_TCC3|✅ proved - complete|shostak|0.028|
|flatten_struct_TCC4|✅ proved - complete|shostak|0.018|
|flatten_TCC1|✅ proved - complete|shostak|0.019|
|flatten_empty|✅ proved - complete|shostak|0.143|
|flatten_empty_cseq|✅ proved - complete|shostak|0.018|
|flatten_nonempty|✅ proved - complete|shostak|0.026|
|flatten_filter|✅ proved - complete|shostak|0.038|
|flatten_reduce_TCC1|✅ proved - complete|shostak|0.018|
|flatten_reduce|✅ proved - complete|shostak|0.047|
|flatten_rest_TCC1|✅ proved - complete|shostak|0.057|
|flatten_rest_TCC2|✅ proved - complete|shostak|0.132|
|flatten_rest|✅ proved - complete|shostak|0.400|
|flatten_rest2_TCC1|✅ proved - complete|shostak|0.018|
|flatten_rest2_TCC2|✅ proved - complete|shostak|0.029|
|flatten_rest2|✅ proved - complete|shostak|0.293|
|flatten_first|✅ proved - complete|shostak|0.130|
|flatten_suffix|✅ proved - complete|shostak|0.175|
|flatten_concatenate|✅ proved - complete|shostak|0.328|
|flatten_rest_suffix_TCC1|✅ proved - complete|shostak|0.017|
|flatten_rest_suffix_TCC2|✅ proved - complete|shostak|0.045|
|flatten_rest_suffix|✅ proved - complete|shostak|0.194|
|flatten_finite|✅ proved - complete|shostak|0.454|
|flatten_infinite|✅ proved - complete|shostak|0.034|
|length_of_flatten_TCC1|✅ proved - complete|shostak|0.018|
|length_of_flatten_TCC2|✅ proved - complete|shostak|0.021|
|length_of_flatten_TCC3|✅ proved - complete|shostak|0.028|
|length_of_flatten_TCC4|✅ proved - complete|shostak|0.100|
|length_of_flatten_TCC5|✅ proved - complete|shostak|0.112|
|length_of_flatten_add_TCC1|✅ proved - complete|shostak|0.025|
|length_of_flatten_add|✅ proved - complete|shostak|0.353|
|flatten_length|✅ proved - complete|shostak|0.282|
|flatten_some|✅ proved - complete|shostak|0.187|
|flatten_some_finite|✅ proved - complete|shostak|0.065|
|flatten_every|✅ proved - complete|shostak|0.182|
|flatten_every_finite|✅ proved - complete|shostak|0.057|

## `csequence_prefix_suffix`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|prefix_suffix_eta|✅ proved - complete|shostak|0.087|
|prefix_suffix_extensionality|✅ proved - complete|shostak|0.033|

## `csequence_generate`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|generate_TCC1|✅ proved - complete|shostak|0.067|
|generate_first|✅ proved - complete|shostak|0.037|
|generate_rest|✅ proved - complete|shostak|0.037|
|generate_nth_TCC1|✅ proved - complete|shostak|0.017|
|generate_nth|✅ proved - complete|shostak|0.067|
|generate_add|✅ proved - complete|shostak|0.044|
|generate_some|✅ proved - complete|shostak|0.035|
|generate_every|✅ proved - complete|shostak|0.036|

## `csequence_generate_limit`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|generate_empty|✅ proved - complete|shostak|0.052|
|generate_first_TCC1|✅ proved - complete|shostak|0.018|
|generate_first|✅ proved - complete|shostak|0.055|
|generate_rest|✅ proved - complete|shostak|0.065|
|generate_has_length|✅ proved - complete|shostak|0.000|
|generate_finite|✅ proved - complete|shostak|0.056|
|generate_nth|✅ proved - complete|shostak|0.185|
|generate_add|✅ proved - complete|shostak|0.053|
|generate_some|✅ proved - complete|shostak|0.019|
|generate_every|✅ proved - complete|shostak|0.027|

## `csequence_induction`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cseq_induction|✅ proved - complete|shostak|0.098|
|cseq_infinite_induction_TCC1|✅ proved - complete|shostak|0.010|
|cseq_infinite_induction_TCC2|✅ proved - complete|shostak|0.010|
|cseq_infinite_induction_TCC3|✅ proved - complete|shostak|0.026|
|cseq_infinite_induction|✅ proved - complete|shostak|0.046|
|CSEQ_induction|✅ proved - complete|shostak|0.103|
|CSEQ_infinite_induction_TCC1|✅ proved - complete|shostak|0.018|
|CSEQ_infinite_induction_TCC2|✅ proved - complete|shostak|0.018|
|CSEQ_infinite_induction|✅ proved - complete|shostak|0.027|
|finite_sequence_induction|✅ proved - complete|shostak|0.035|
|FINITE_SEQUENCE_induction|✅ proved - complete|shostak|0.034|
|sequence_induction|✅ proved - complete|shostak|0.027|
|SEQUENCE_induction|✅ proved - complete|shostak|0.018|

## `csequence_insert_remove`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|insert_remove_eta|✅ proved - complete|shostak|0.112|

## `csequence_remove`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|remove_TCC1|✅ proved - complete|shostak|0.025|
|remove_TCC2|✅ proved - complete|shostak|0.028|
|remove_TCC3|✅ proved - complete|shostak|0.026|
|remove_TCC4|✅ proved - complete|shostak|0.020|
|remove_finite|✅ proved - complete|shostak|0.034|
|remove_infinite|✅ proved - complete|shostak|0.044|
|remove_0|✅ proved - complete|shostak|0.017|
|remove_empty|✅ proved - complete|shostak|0.029|
|remove_nonempty|✅ proved - complete|shostak|0.027|
|remove_first_TCC1|✅ proved - complete|shostak|0.018|
|remove_first_TCC2|✅ proved - complete|shostak|0.019|
|remove_first_TCC3|✅ proved - complete|shostak|0.018|
|remove_first|✅ proved - complete|shostak|0.029|
|remove_rest_TCC1|✅ proved - complete|shostak|0.028|
|remove_rest_TCC2|✅ proved - complete|shostak|0.028|
|remove_rest|✅ proved - complete|shostak|0.152|
|remove_upfrom_length|✅ proved - complete|shostak|0.101|
|remove_length|✅ proved - complete|shostak|0.134|
|remove_index|✅ proved - complete|shostak|0.111|
|remove_nth_TCC1|✅ proved - complete|shostak|0.080|
|remove_nth|✅ proved - complete|shostak|0.167|
|remove_add|✅ proved - complete|shostak|0.018|
|remove_last_TCC1|✅ proved - complete|shostak|0.071|
|remove_last_TCC2|✅ proved - complete|shostak|0.028|
|remove_last|✅ proved - complete|shostak|0.735|
|remove_remove_TCC1|✅ proved - complete|shostak|0.028|
|remove_remove|✅ proved - complete|shostak|0.239|
|remove_extensionality|✅ proved - complete|shostak|0.177|
|remove_some|✅ proved - complete|shostak|0.150|
|remove_every|✅ proved - complete|shostak|0.054|

## `csequence_length_comp`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|length_lt_le|✅ proved - complete|shostak|0.027|
|length_gt_ge|✅ proved - complete|shostak|0.028|
|length_eq_le|✅ proved - complete|shostak|0.027|
|length_eq_ge|✅ proved - complete|shostak|0.026|
|length_lt_neq|✅ proved - complete|shostak|0.029|
|length_gt_neq|✅ proved - complete|shostak|0.028|
|length_eq_empty|✅ proved - complete|shostak|0.057|
|length_eq_rest|✅ proved - complete|shostak|0.055|

## `csequence_limit`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|prefix_chain_TCC1|✅ proved - complete|shostak|0.047|
|suffix_chain_TCC1|✅ proved - complete|shostak|0.132|
|rest_chain_TCC1|✅ proved - complete|shostak|0.037|
|rest_chain_TCC2|✅ proved - complete|shostak|0.087|
|ascending_chain?_nth|✅ proved - complete|shostak|0.034|
|limit_struct_TCC1|✅ proved - complete|shostak|0.065|
|limit_struct_TCC2|✅ proved - complete|shostak|0.038|
|limit_empty|✅ proved - complete|shostak|0.101|
|limit_nonempty|✅ proved - complete|shostak|0.042|
|limit_first_TCC1|✅ proved - complete|shostak|0.018|
|limit_first|✅ proved - complete|shostak|0.190|
|limit_rest_chain|✅ proved - complete|shostak|0.139|
|limit_suffix_chain|✅ proved - complete|shostak|0.701|
|limit_lub|✅ proved - complete|shostak|0.338|
|limit_nth|✅ proved - complete|shostak|0.049|
|limit_def|✅ proved - complete|shostak|0.342|
|limit_prefix_chain|✅ proved - complete|shostak|0.095|
|limit_prefix_compact_TCC1|✅ proved - complete|shostak|0.035|
|limit_prefix_compact|✅ proved - complete|shostak|0.297|
|limit_finite_compact|✅ proved - complete|shostak|0.101|
|continuous?_infinite|✅ proved - complete|shostak|0.034|

## `csequence_list`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|from_list_TCC1|✅ proved - complete|shostak|0.026|
|from_list_TCC2|✅ proved - complete|shostak|0.027|
|from_list_TCC3|✅ proved - complete|shostak|0.018|
|from_list_length|✅ proved - complete|shostak|0.042|
|from_list_index|✅ proved - complete|shostak|0.087|
|from_list_nth_TCC1|✅ proved - complete|shostak|0.025|
|from_list_nth|✅ proved - complete|shostak|0.093|
|to_list_TCC1|✅ proved - complete|shostak|0.027|
|to_list_TCC2|✅ proved - complete|shostak|0.017|
|to_list_TCC3|✅ proved - complete|shostak|0.063|
|to_list_length|✅ proved - complete|shostak|0.080|
|to_list_index|✅ proved - complete|shostak|0.114|
|to_list_nth_TCC1|✅ proved - complete|shostak|0.025|
|to_list_nth|✅ proved - complete|shostak|0.102|
|to_from_list|✅ proved - complete|shostak|0.030|
|from_to_list|✅ proved - complete|shostak|0.042|

## `csequence_map_composition`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|map_composition|✅ proved - complete|shostak|0.217|

## `csequence_merge`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|merge_struct_TCC1|✅ proved - complete|shostak|0.020|
|merge_struct_TCC2|✅ proved - complete|shostak|0.026|
|merge_empty|✅ proved - complete|shostak|0.092|
|merge_nonempty|✅ proved - complete|shostak|0.093|
|merge_empty_left|✅ proved - complete|shostak|0.366|
|merge_empty_right|✅ proved - complete|shostak|0.000|
|merge_first_TCC1|✅ proved - complete|shostak|0.029|
|merge_first|✅ proved - complete|shostak|0.102|
|merge_rest|✅ proved - complete|shostak|0.086|
|merge_finite|✅ proved - complete|shostak|0.105|
|merge_finiteness|✅ proved - complete|shostak|0.104|
|merge_infinite1|✅ proved - complete|shostak|0.028|
|merge_infinite2|✅ proved - complete|shostak|0.027|
|merge_length|✅ proved - complete|shostak|0.237|
|merge_index_TCC1|✅ proved - complete|shostak|0.037|
|merge_index|✅ proved - complete|shostak|0.165|
|merge_nth_TCC1|✅ proved - complete|shostak|0.025|
|merge_nth_TCC2|✅ proved - complete|shostak|0.062|
|merge_nth_TCC3|✅ proved - complete|shostak|0.036|
|merge_nth_TCC4|✅ proved - complete|shostak|0.228|
|merge_nth_TCC5|✅ proved - complete|shostak|0.305|
|merge_nth_TCC6|✅ proved - complete|shostak|0.851|
|merge_nth|✅ proved - complete|shostak|6.045|
|merge_add|✅ proved - complete|shostak|0.065|
|merge_last_TCC1|✅ proved - complete|shostak|0.025|
|merge_last_TCC2|✅ proved - complete|shostak|0.037|
|merge_last|✅ proved - complete|shostak|0.429|
|merge_extensionality|✅ proved - complete|shostak|1.794|
|merge_some|✅ proved - complete|shostak|0.391|
|merge_every|✅ proved - complete|shostak|0.031|

## `csequence_merge_split`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|merge_split_eta|✅ proved - complete|shostak|0.259|
|split_merge_eta|✅ proved - complete|shostak|0.955|

## `csequence_split`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|split_left_struct_TCC1|✅ proved - complete|shostak|0.018|
|split_left_struct_TCC2|✅ proved - complete|shostak|0.027|
|split_empty_left|✅ proved - complete|shostak|0.073|
|split_empty_right|✅ proved - complete|shostak|0.077|
|split_nonempty_left|✅ proved - complete|shostak|0.073|
|split_nonempty_right|✅ proved - complete|shostak|0.076|
|split_first_left_TCC1|✅ proved - complete|shostak|0.019|
|split_first_left|✅ proved - complete|shostak|0.066|
|split_first_right_TCC1|✅ proved - complete|shostak|0.018|
|split_first_right|✅ proved - complete|shostak|0.086|
|split_rest_left_TCC1|✅ proved - complete|shostak|0.028|
|split_rest_left|✅ proved - complete|shostak|0.095|
|split_rest_right|✅ proved - complete|shostak|0.104|
|split_rest_swap_left|✅ proved - complete|shostak|0.454|
|split_rest_swap_right|✅ proved - complete|shostak|0.521|
|split_finite|✅ proved - complete|shostak|0.133|
|split_infinite|✅ proved - complete|shostak|0.195|
|split_length_left|✅ proved - complete|shostak|0.244|
|split_length_right|✅ proved - complete|shostak|0.234|
|split_length|✅ proved - complete|shostak|0.127|
|split_index_left|✅ proved - complete|shostak|0.078|
|split_index_right|✅ proved - complete|shostak|0.116|
|split_nth_left_TCC1|✅ proved - complete|shostak|0.037|
|split_nth_left|✅ proved - complete|shostak|0.256|
|split_nth_right_TCC1|✅ proved - complete|shostak|0.085|
|split_nth_right|✅ proved - complete|shostak|0.321|
|split_add|✅ proved - complete|shostak|0.000|
|split_last_left_TCC1|✅ proved - complete|shostak|0.018|
|split_last_left_TCC2|✅ proved - complete|shostak|0.083|
|split_last_left|✅ proved - complete|shostak|0.233|
|split_last_right_TCC1|✅ proved - complete|shostak|0.018|
|split_last_right_TCC2|✅ proved - complete|shostak|0.090|
|split_last_right|✅ proved - complete|shostak|0.242|
|split_extensionality|✅ proved - complete|shostak|0.092|
|split_some|✅ proved - complete|shostak|0.156|
|split_every|✅ proved - complete|shostak|0.037|

## `csequence_prefix_append`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|prefix_append_eta|✅ proved - complete|shostak|0.233|

## `csequence_rest`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|rest_finite|✅ proved - complete|shostak|0.016|
|rest_infinite|✅ proved - complete|shostak|0.026|
|rest_empty_add|✅ proved - complete|shostak|0.027|
|rest_empty|✅ proved - complete|shostak|0.046|
|rest_nonempty|✅ proved - complete|shostak|0.075|
|rest_first_TCC1|✅ proved - complete|shostak|0.017|
|rest_first|✅ proved - complete|shostak|0.019|
|rest_length|✅ proved - complete|shostak|0.018|
|rest_index|✅ proved - complete|shostak|0.020|
|rest_nth_TCC1|✅ proved - complete|shostak|0.019|
|rest_nth|✅ proved - complete|shostak|0.010|
|rest_some|✅ proved - complete|shostak|0.020|
|rest_every|✅ proved - complete|shostak|0.018|

## `csequence_reverse`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|reverse_TCC1|✅ proved - complete|shostak|0.019|
|reverse_TCC2|✅ proved - complete|shostak|0.018|
|reverse_TCC3|✅ proved - complete|shostak|0.056|
|reverse_empty|✅ proved - complete|shostak|0.028|
|reverse_nonempty|✅ proved - complete|shostak|0.028|
|reverse_first_TCC1|✅ proved - complete|shostak|0.019|
|reverse_first|✅ proved - complete|shostak|0.192|
|reverse_last|✅ proved - complete|shostak|0.016|
|reverse_length|✅ proved - complete|shostak|0.108|
|reverse_index|✅ proved - complete|shostak|0.042|
|reverse_nth_TCC1|✅ proved - complete|shostak|0.043|
|reverse_nth|✅ proved - complete|shostak|0.345|
|reverse_add1|✅ proved - complete|shostak|0.256|
|reverse_add2_TCC1|✅ proved - complete|shostak|0.019|
|reverse_add2|✅ proved - complete|shostak|0.010|
|reverse_reverse|✅ proved - complete|shostak|0.093|
|reverse_extensionality|✅ proved - complete|shostak|0.115|
|reverse_some|✅ proved - complete|shostak|0.143|
|reverse_every|✅ proved - complete|shostak|0.026|

## `csequence_sequence`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|from_sequence_TCC1|✅ proved - complete|shostak|0.087|
|from_sequence_nth_TCC1|✅ proved - complete|shostak|0.018|
|from_sequence_nth|✅ proved - complete|shostak|0.078|
|to_sequence_TCC1|✅ proved - complete|shostak|0.017|
|to_sequence_nth|✅ proved - complete|shostak|0.020|
|to_from_sequence|✅ proved - complete|shostak|0.015|
|from_to_sequence|✅ proved - complete|shostak|0.040|

## `csequence_strict_prefix`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|strict_prefix?_TCC1|✅ proved - complete|shostak|0.028|
|strict_prefix?_prefix?|✅ proved - complete|shostak|0.089|
|strict_prefix?_finite|✅ proved - complete|shostak|0.024|
|strict_prefix?_first_TCC1|✅ proved - complete|shostak|0.018|
|strict_prefix?_first|✅ proved - complete|shostak|0.018|
|strict_prefix?_rest|✅ proved - complete|shostak|0.018|
|strict_prefix?_length_TCC1|✅ proved - complete|shostak|0.017|
|strict_prefix?_length|✅ proved - complete|shostak|0.038|
|strict_prefix?_index|✅ proved - complete|shostak|0.017|
|strict_prefix?_nth_TCC1|✅ proved - complete|shostak|0.026|
|strict_prefix?_nth|✅ proved - complete|shostak|0.028|
|strict_prefix?_concatenate|✅ proved - complete|shostak|0.044|
|strict_prefix?_def|✅ proved - complete|shostak|0.106|
|strict_prefix?_is_strict_order|✅ proved - complete|shostak|0.074|
|strict_prefix?_well_ordered|✅ proved - complete|shostak|0.157|
|strict_prefix?_prefix|✅ proved - complete|shostak|0.125|

## `csequence_unzip`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|unzip_left_struct_TCC1|✅ proved - complete|shostak|0.017|
|unzip_finite|✅ proved - complete|shostak|0.186|
|unzip_infinite|✅ proved - complete|shostak|0.218|
|unzip_nonempty|✅ proved - complete|shostak|0.075|
|unzip_empty_left|✅ proved - complete|shostak|0.062|
|unzip_empty_right|✅ proved - complete|shostak|0.056|
|unzip_first_left|✅ proved - complete|shostak|0.057|
|unzip_first_right|✅ proved - complete|shostak|0.048|
|unzip_rest_left|✅ proved - complete|shostak|0.057|
|unzip_rest_right|✅ proved - complete|shostak|0.058|
|unzip_length_left|✅ proved - complete|shostak|0.156|
|unzip_length_right|✅ proved - complete|shostak|0.152|
|unzip_index_left|✅ proved - complete|shostak|0.056|
|unzip_index_right|✅ proved - complete|shostak|0.043|
|unzip_nth_left_TCC1|✅ proved - complete|shostak|0.028|
|unzip_nth_left|✅ proved - complete|shostak|0.234|
|unzip_nth_right_TCC1|✅ proved - complete|shostak|0.025|
|unzip_nth_right|✅ proved - complete|shostak|0.231|
|unzip_map|✅ proved - complete|shostak|0.377|
|unzip_extensionality|✅ proved - complete|shostak|0.652|
|unzip_add|✅ proved - complete|shostak|0.092|
|unzip_last_left_TCC1|✅ proved - complete|shostak|0.018|
|unzip_last_left|✅ proved - complete|shostak|0.044|
|unzip_last_right_TCC1|✅ proved - complete|shostak|0.019|
|unzip_last_right|✅ proved - complete|shostak|0.044|
|unzip_some|✅ proved - complete|shostak|0.100|
|unzip_every|✅ proved - complete|shostak|0.111|

## `csequence_zip`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|zip_struct_TCC1|✅ proved - complete|shostak|0.019|
|zip_struct_TCC2|✅ proved - complete|shostak|0.028|
|zip_finite1|✅ proved - complete|shostak|0.121|
|zip_finite2|✅ proved - complete|shostak|0.122|
|zip_infinite|✅ proved - complete|shostak|0.112|
|zip_nonempty|✅ proved - complete|shostak|0.000|
|zip_empty|✅ proved - complete|shostak|0.074|
|zip_first|✅ proved - complete|shostak|0.058|
|zip_rest|✅ proved - complete|shostak|0.057|
|zip_add|✅ proved - complete|shostak|0.057|
|zip_length_TCC1|✅ proved - complete|shostak|0.018|
|zip_length|✅ proved - complete|shostak|0.721|
|zip_index|✅ proved - complete|shostak|0.268|
|zip_nth_TCC1|✅ proved - complete|shostak|0.025|
|zip_nth_TCC2|✅ proved - complete|shostak|0.027|
|zip_nth|✅ proved - complete|shostak|0.320|
|zip_last_TCC1|✅ proved - complete|shostak|0.034|
|zip_last_TCC2|✅ proved - complete|shostak|0.035|
|zip_last_TCC3|✅ proved - complete|shostak|0.092|
|zip_last_TCC4|✅ proved - complete|shostak|0.036|
|zip_last_TCC5|✅ proved - complete|shostak|0.100|
|zip_last_TCC6|✅ proved - complete|shostak|0.036|
|zip_last_TCC7|✅ proved - complete|shostak|0.036|
|zip_last_TCC8|✅ proved - complete|shostak|0.028|
|zip_last_TCC9|✅ proved - complete|shostak|0.047|
|zip_last|✅ proved - complete|shostak|0.209|
|zip_extensionality|✅ proved - complete|shostak|0.562|
|zip_some_TCC1|✅ proved - complete|shostak|0.035|
|zip_some_TCC2|✅ proved - complete|shostak|0.047|
|zip_some_TCC3|✅ proved - complete|shostak|0.036|
|zip_some|✅ proved - complete|shostak|0.337|
|zip_every_TCC1|✅ proved - complete|shostak|0.053|
|zip_every|✅ proved - complete|shostak|0.345|

## `csequence_zip_unzip`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|zip_unzip_eta|✅ proved - complete|shostak|0.962|
|unzip_zip_eta|✅ proved - complete|shostak|0.295|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Mac OS X (Intel)] (Nov 14, 2020 23:13)|
| Patch Version| n/a|
| Library Path| `/Applications/pvs-7.1.0/pvslib/`<br/>`/Applications/pvs-7.1.0/lib/`<br/>`/Applications/pvs-7.1.0/pvslib/float/`<br/>`/Applications/pvs-7.1.0/pvslib/pvsio_utils/`|
| Loaded Patches | `/Applications/pvs-7.1.0/pvslib/.pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230712-static-update.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230710-tcc-gen.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230707-defattach.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230706-extrategies.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210323-wish.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210225-cl2pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210715a.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210715.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210707.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210706.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210511.lisp`|
