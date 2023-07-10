# Summary for `co_structures`
Run started at 6:31:51 7/8/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **726**   | **726**    | **726**    | **0**  | **1:46.758 s**   |
|top|0|0|0|0|0.000|
|ascending_chains|2|2|2|0|0.222|
|csequence_add|11|11|11|0|0.383|
|csequence_nth|22|22|22|0|1.391|
|csequence_length|11|11|11|0|0.596|
|csequence_props|13|13|13|0|0.591|
|csequence_append|17|17|17|0|3.305|
|csequence_insert|22|22|22|0|2.707|
|csequence_concatenate|31|31|31|0|5.929|
|csequence_concatenate_extract|2|2|2|0|0.626|
|csequence_extract|30|30|30|0|5.709|
|csequence_constant|25|25|25|0|1.078|
|csequence_singleton|12|12|12|0|0.390|
|csequence_filter|26|26|26|0|4.085|
|csequence_filter_of|14|14|14|0|2.650|
|csequence_first_p|6|6|6|0|0.684|
|csequence_suffix|42|42|42|0|3.904|
|csequence_subsequence|30|30|30|0|5.901|
|csequence_prefix|36|36|36|0|4.040|
|csequence_filter_map|5|5|5|0|2.069|
|csequence_map_props|19|19|19|0|1.591|
|csequence_finseq|16|16|16|0|0.916|
|csequence_flatten|38|38|38|0|5.707|
|csequence_prefix_suffix|2|2|2|0|0.168|
|csequence_generate|8|8|8|0|0.476|
|csequence_generate_limit|10|10|10|0|1.169|
|csequence_induction|13|13|13|0|0.682|
|csequence_insert_remove|1|1|1|0|0.156|
|csequence_remove|30|30|30|0|3.553|
|csequence_length_comp|8|8|8|0|0.362|
|csequence_limit|21|21|21|0|3.171|
|csequence_list|16|16|16|0|1.009|
|csequence_map_composition|1|1|1|0|0.286|
|csequence_merge|30|30|30|0|16.357|
|csequence_merge_split|2|2|2|0|1.375|
|csequence_split|36|36|36|0|7.520|
|csequence_prefix_append|1|1|1|0|0.318|
|csequence_rest|13|13|13|0|0.458|
|csequence_reverse|19|19|19|0|2.093|
|csequence_sequence|7|7|7|0|0.385|
|csequence_strict_prefix|16|16|16|0|1.014|
|csequence_unzip|27|27|27|0|4.275|
|csequence_zip|33|33|33|0|5.564|
|csequence_zip_unzip|2|2|2|0|1.893|
## Detailed Summary 
## `top`
No formula declaration found.
## `ascending_chains`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|ascending_chain?_def|✅ proved - complete|shostak|0.190|
|least_upperbound_inj|✅ proved - complete|shostak|0.032|

## `csequence_add`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|add_finite|✅ proved - complete|shostak|0.028|
|add_infinite|✅ proved - complete|shostak|0.030|
|add_length|✅ proved - complete|shostak|0.034|
|add_index_TCC1|✅ proved - complete|shostak|0.036|
|add_index|✅ proved - complete|shostak|0.028|
|add_nth_TCC1|✅ proved - complete|shostak|0.028|
|add_nth|✅ proved - complete|shostak|0.028|
|add_last_TCC1|✅ proved - complete|shostak|0.037|
|add_last|✅ proved - complete|shostak|0.071|
|add_some|✅ proved - complete|shostak|0.035|
|add_every|✅ proved - complete|shostak|0.028|

## `csequence_nth`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|index?_TCC1|✅ proved - complete|shostak|0.035|
|index?_TCC2|✅ proved - complete|shostak|0.030|
|index?_0|✅ proved - complete|shostak|0.018|
|index?_ub|✅ proved - complete|shostak|0.064|
|index?_lt|✅ proved - complete|shostak|0.122|
|index?_finite|✅ proved - complete|shostak|0.151|
|index?_finite_bound|✅ proved - complete|shostak|0.036|
|index?_infinite|✅ proved - complete|shostak|0.067|
|index?_infinite_full|✅ proved - complete|shostak|0.052|
|index?_prop|✅ proved - complete|shostak|0.046|
|index?_nonempty|✅ proved - complete|shostak|0.027|
|nth_TCC1|✅ proved - complete|shostak|0.037|
|nth_TCC2|✅ proved - complete|shostak|0.029|
|nth_TCC3|✅ proved - complete|shostak|0.037|
|nth_TCC4|✅ proved - complete|shostak|0.030|
|nth_extensionality_TCC1|✅ proved - complete|shostak|0.037|
|nth_extensionality|✅ proved - complete|shostak|0.177|
|nth_every|✅ proved - complete|shostak|0.211|
|nth_some|✅ proved - complete|shostak|0.000|
|last_TCC1|✅ proved - complete|shostak|0.044|
|last_rest_TCC1|✅ proved - complete|shostak|0.028|
|last_rest|✅ proved - complete|shostak|0.113|

## `csequence_length`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|length_TCC1|✅ proved - complete|shostak|0.063|
|length_TCC2|✅ proved - complete|shostak|0.027|
|length_TCC3|✅ proved - complete|shostak|0.038|
|length_TCC4|✅ proved - complete|shostak|0.029|
|length_TCC5|✅ proved - complete|shostak|0.110|
|length_TCC6|✅ proved - complete|shostak|0.072|
|length_def|✅ proved - complete|shostak|0.044|
|length_empty?_rew|✅ proved - complete|shostak|0.083|
|length_nonempty?_rew|✅ proved - complete|shostak|0.084|
|length_rest_TCC1|✅ proved - complete|shostak|0.018|
|length_rest|✅ proved - complete|shostak|0.028|

## `csequence_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|has_length_TCC1|✅ proved - complete|shostak|0.039|
|has_length_TCC2|✅ proved - complete|shostak|0.037|
|has_length_TCC3|✅ proved - complete|shostak|0.020|
|has_length_injective|✅ proved - complete|shostak|0.091|
|is_finite_TCC1|✅ proved - complete|shostak|0.030|
|is_finite_def|✅ proved - complete|shostak|0.097|
|finite_csequence_TCC1|✅ proved - complete|shostak|0.028|
|empty_csequence_is_finite|✅ proved - complete|shostak|0.028|
|infinite_csequence_is_nonempty|✅ proved - complete|shostak|0.027|
|some_every_rew|✅ proved - complete|shostak|0.052|
|every_some_rew|✅ proved - complete|shostak|0.040|
|some_implies|✅ proved - complete|shostak|0.051|
|every_implies|✅ proved - complete|shostak|0.051|

## `csequence_append`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|append_struct_TCC1|✅ proved - complete|shostak|0.028|
|append_TCC1|✅ proved - complete|shostak|0.089|
|append_finite|✅ proved - complete|shostak|0.187|
|append_first_TCC1|✅ proved - complete|shostak|0.036|
|append_first|✅ proved - complete|shostak|0.086|
|append_rest|✅ proved - complete|shostak|1.098|
|append_finite_def|✅ proved - complete|shostak|0.196|
|append_infinite_def|✅ proved - complete|shostak|0.172|
|append_length|✅ proved - complete|shostak|0.269|
|append_index|✅ proved - complete|shostak|0.575|
|append_nth_TCC1|✅ proved - complete|shostak|0.034|
|append_nth|✅ proved - complete|shostak|0.082|
|append_add|✅ proved - complete|shostak|0.075|
|append_last|✅ proved - complete|shostak|0.138|
|append_extensionality|✅ proved - complete|shostak|0.149|
|append_some|✅ proved - complete|shostak|0.051|
|append_every|✅ proved - complete|shostak|0.040|

## `csequence_insert`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|insert_TCC1|✅ proved - complete|shostak|0.036|
|insert_TCC2|✅ proved - complete|shostak|0.036|
|insert_TCC3|✅ proved - complete|shostak|0.028|
|insert_finite|✅ proved - complete|shostak|0.065|
|insert_infinite|✅ proved - complete|shostak|0.062|
|insert_first|✅ proved - complete|shostak|0.025|
|insert_rest|✅ proved - complete|shostak|0.023|
|insert_length|✅ proved - complete|shostak|0.135|
|insert_index_TCC1|✅ proved - complete|shostak|0.036|
|insert_index|✅ proved - complete|shostak|0.117|
|insert_nth_TCC1|✅ proved - complete|shostak|0.085|
|insert_nth|✅ proved - complete|shostak|0.239|
|insert_0|✅ proved - complete|shostak|0.030|
|insert_add|✅ proved - complete|shostak|0.028|
|insert_last_TCC1|✅ proved - complete|shostak|0.030|
|insert_last|✅ proved - complete|shostak|0.364|
|insert_beyond|✅ proved - complete|shostak|0.151|
|insert_insert_TCC1|✅ proved - complete|shostak|0.054|
|insert_insert|✅ proved - complete|shostak|0.789|
|insert_extensionality|✅ proved - complete|shostak|0.112|
|insert_some|✅ proved - complete|shostak|0.128|
|insert_every|✅ proved - complete|shostak|0.134|

## `csequence_concatenate`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|concatenate_struct_TCC1|✅ proved - complete|shostak|0.038|
|concatenate_struct_TCC2|✅ proved - complete|shostak|0.028|
|o_finite|✅ proved - complete|shostak|0.384|
|o_finiteness|✅ proved - complete|shostak|0.486|
|o_infinite1|✅ proved - complete|shostak|0.030|
|o_infinite2|✅ proved - complete|shostak|0.026|
|o_empty|✅ proved - complete|shostak|0.115|
|o_nonempty|✅ proved - complete|shostak|0.066|
|o_nonempty_left|✅ proved - complete|shostak|0.067|
|o_nonempty_right|✅ proved - complete|shostak|0.104|
|o_empty_left|✅ proved - complete|shostak|0.225|
|o_empty_right|✅ proved - complete|shostak|0.234|
|o_first_TCC1|✅ proved - complete|shostak|0.029|
|o_first|✅ proved - complete|shostak|0.151|
|o_rest|✅ proved - complete|shostak|0.103|
|o_first_rest|✅ proved - complete|shostak|0.167|
|o_length|✅ proved - complete|shostak|0.463|
|o_index|✅ proved - complete|shostak|0.106|
|o_nth_TCC1|✅ proved - complete|shostak|0.094|
|o_nth_TCC2|✅ proved - complete|shostak|0.081|
|o_nth|✅ proved - complete|shostak|0.000|
|o_add|✅ proved - complete|shostak|0.057|
|o_last_TCC1|✅ proved - complete|shostak|0.086|
|o_last_TCC2|✅ proved - complete|shostak|0.026|
|o_last|✅ proved - complete|shostak|0.131|
|o_infinite|✅ proved - complete|shostak|0.078|
|o_assoc|✅ proved - complete|shostak|1.747|
|o_extensionality_left|✅ proved - complete|shostak|0.123|
|o_extensionality_right|✅ proved - complete|shostak|0.317|
|o_some|✅ proved - complete|shostak|0.316|
|o_every|✅ proved - complete|shostak|0.051|

## `csequence_concatenate_extract`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|o_extract|✅ proved - complete|shostak|0.538|
|o_extract_eta|✅ proved - complete|shostak|0.088|

## `csequence_extract`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|caret_TCC1|✅ proved - complete|shostak|0.045|
|caret_TCC2|✅ proved - complete|shostak|0.041|
|caret_TCC3|✅ proved - complete|shostak|0.044|
|caret_TCC4|✅ proved - complete|shostak|0.046|
|caret_TCC5|✅ proved - complete|shostak|0.035|
|caret_TCC6|✅ proved - complete|shostak|0.047|
|caret_TCC7|✅ proved - complete|shostak|0.045|
|caret_TCC8|✅ proved - complete|shostak|0.045|
|extract_empty|✅ proved - complete|shostak|0.230|
|extract_nonempty|✅ proved - complete|shostak|0.074|
|extract_length|✅ proved - complete|shostak|0.568|
|extract_def|✅ proved - complete|shostak|0.226|
|extract_rest_TCC1|✅ proved - complete|shostak|0.033|
|extract_rest|✅ proved - complete|shostak|0.119|
|extract_rest2|✅ proved - complete|shostak|0.173|
|extract_extract|✅ proved - complete|shostak|1.144|
|extract_index|✅ proved - complete|shostak|0.212|
|extract_first_TCC1|✅ proved - complete|shostak|0.064|
|extract_first|✅ proved - complete|shostak|0.115|
|extract_nth_TCC1|✅ proved - complete|shostak|0.078|
|extract_nth|✅ proved - complete|shostak|1.234|
|extract_add_TCC1|✅ proved - complete|shostak|0.045|
|extract_add_TCC2|✅ proved - complete|shostak|0.055|
|extract_add_TCC3|✅ proved - complete|shostak|0.036|
|extract_add|✅ proved - complete|shostak|0.064|
|extract_last_TCC1|✅ proved - complete|shostak|0.035|
|extract_last|✅ proved - complete|shostak|0.350|
|extract_extensionality|✅ proved - complete|shostak|0.184|
|extract_some|✅ proved - complete|shostak|0.167|
|extract_every|✅ proved - complete|shostak|0.155|

## `csequence_constant`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|constant_cseq_TCC1|✅ proved - complete|shostak|0.037|
|constant_cseq_TCC2|✅ proved - complete|shostak|0.019|
|constant_cseq_TCC3|✅ proved - complete|shostak|0.030|
|constant_cseq_empty|✅ proved - complete|shostak|0.028|
|constant_cseq_1|✅ proved - complete|shostak|0.028|
|constant_cseq_first_TCC1|✅ proved - complete|shostak|0.028|
|constant_cseq_first|✅ proved - complete|shostak|0.028|
|constant_cseq_rest_TCC1|✅ proved - complete|shostak|0.026|
|constant_cseq_rest|✅ proved - complete|shostak|0.029|
|constant_cseq_length|✅ proved - complete|shostak|0.045|
|constant_cseq_index|✅ proved - complete|shostak|0.035|
|constant_cseq_nth_TCC1|✅ proved - complete|shostak|0.035|
|constant_cseq_nth|✅ proved - complete|shostak|0.067|
|constant_cseq_add|✅ proved - complete|shostak|0.029|
|constant_cseq_last|✅ proved - complete|shostak|0.092|
|constant_cseq_some|✅ proved - complete|shostak|0.048|
|constant_cseq_every|✅ proved - complete|shostak|0.040|
|constant_cseq_TCC4|✅ proved - complete|shostak|0.076|
|constant_cseq_inf_first|✅ proved - complete|shostak|0.047|
|constant_cseq_inf_rest|✅ proved - complete|shostak|0.043|
|constant_cseq_inf_nth_TCC1|✅ proved - complete|shostak|0.026|
|constant_cseq_inf_nth|✅ proved - complete|shostak|0.080|
|constant_cseq_inf_add|✅ proved - complete|shostak|0.056|
|constant_cseq_inf_some|✅ proved - complete|shostak|0.073|
|constant_cseq_inf_every|✅ proved - complete|shostak|0.033|

## `csequence_singleton`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|singleton_is_nonempty_finite|✅ proved - complete|shostak|0.032|
|singleton_cseq_length_TCC1|✅ proved - complete|shostak|0.027|
|singleton_cseq_length|✅ proved - complete|shostak|0.065|
|singleton_cseq_index|✅ proved - complete|shostak|0.037|
|singleton_cseq_TCC1|✅ proved - complete|shostak|0.028|
|singleton_def_TCC1|✅ proved - complete|shostak|0.028|
|singleton_def|✅ proved - complete|shostak|0.038|
|singleton_cseq_first|✅ proved - complete|shostak|0.019|
|singleton_cseq_rest|✅ proved - complete|shostak|0.020|
|singleton_cseq_last|✅ proved - complete|shostak|0.048|
|singleton_cseq_some|✅ proved - complete|shostak|0.019|
|singleton_cseq_every|✅ proved - complete|shostak|0.029|

## `csequence_filter`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|filter_TCC1|✅ proved - complete|shostak|0.162|
|filter_empty|✅ proved - complete|shostak|0.069|
|filter_nonempty|✅ proved - complete|shostak|0.115|
|filter_def|✅ proved - complete|shostak|0.427|
|filter_finite|✅ proved - complete|shostak|0.019|
|filter_length|✅ proved - complete|shostak|0.027|
|filter_length_eq|✅ proved - complete|shostak|0.036|
|filter_reduce_TCC1|✅ proved - complete|shostak|0.029|
|filter_reduce|✅ proved - complete|shostak|0.000|
|filter_add|✅ proved - complete|shostak|0.350|
|filter_rest_TCC1|✅ proved - complete|shostak|0.033|
|filter_rest|✅ proved - complete|shostak|0.062|
|filter_suffix_TCC1|✅ proved - complete|shostak|0.083|
|filter_suffix_TCC2|✅ proved - complete|shostak|0.025|
|filter_suffix|✅ proved - complete|shostak|0.123|
|filter_first_TCC1|✅ proved - complete|shostak|0.026|
|filter_first|✅ proved - complete|shostak|0.113|
|filter_first_first_TCC1|✅ proved - complete|shostak|0.028|
|filter_first_first|✅ proved - complete|shostak|0.085|
|filter_full|✅ proved - complete|shostak|1.096|
|filter_idem|✅ proved - complete|shostak|0.037|
|filter_some|✅ proved - complete|shostak|0.569|
|filter_every|✅ proved - complete|shostak|0.068|
|filter_filter_of|✅ proved - complete|shostak|0.338|
|filter_concatenate|✅ proved - complete|shostak|0.098|
|filter_filter|✅ proved - complete|shostak|0.067|

## `csequence_filter_of`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|filter_of?_TCC1|✅ proved - complete|shostak|0.045|
|filter_of?_empty|✅ proved - complete|shostak|0.028|
|filter_of?_nonempty|✅ proved - complete|shostak|0.035|
|filter_of?_finite|✅ proved - complete|shostak|0.075|
|filter_of?_def|✅ proved - complete|shostak|0.162|
|filter_of?_first_p_TCC1|✅ proved - complete|shostak|0.033|
|filter_of?_first_p|✅ proved - complete|shostak|0.221|
|filter_of?_suffix|✅ proved - complete|shostak|0.355|
|filter_of?_injective|✅ proved - complete|shostak|0.166|
|filter_of?_concatenate|✅ proved - complete|shostak|0.984|
|filter_of?_implication|✅ proved - complete|shostak|0.106|
|filter_of?_implication_rev|✅ proved - complete|shostak|0.127|
|filter_of?_some|✅ proved - complete|shostak|0.089|
|filter_of?_filter_of?|✅ proved - complete|shostak|0.224|

## `csequence_first_p`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|p_indexes_nonempty|✅ proved - complete|shostak|0.041|
|first_p_TCC1|✅ proved - complete|shostak|0.035|
|first_p_nth|✅ proved - complete|shostak|0.036|
|first_p_rest_TCC1|✅ proved - complete|shostak|0.027|
|first_p_rest_TCC2|✅ proved - complete|shostak|0.039|
|first_p_rest|✅ proved - complete|shostak|0.506|

## `csequence_suffix`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|suffix?_empty|✅ proved - complete|shostak|0.062|
|suffix?_rest_left|✅ proved - complete|shostak|0.034|
|suffix?_rest_right|✅ proved - complete|shostak|0.036|
|suffix?_finite_left|✅ proved - complete|shostak|0.061|
|suffix?_finite_right|✅ proved - complete|shostak|0.052|
|suffix?_infinite_left|✅ proved - complete|shostak|0.027|
|suffix?_infinite_right|✅ proved - complete|shostak|0.036|
|suffix?_length|✅ proved - complete|shostak|0.141|
|suffix?_length_eq|✅ proved - complete|shostak|0.138|
|suffix?_index|✅ proved - complete|shostak|0.085|
|suffix?_concatenate|✅ proved - complete|shostak|0.115|
|suffix?_def|✅ proved - complete|shostak|0.072|
|suffix?_is_preorder|✅ proved - complete|shostak|0.087|
|suffix?_finite_antisymmetric|✅ proved - complete|shostak|0.082|
|suffix?_order|✅ proved - complete|shostak|0.072|
|suffix_TCC1|✅ proved - complete|shostak|0.027|
|suffix_TCC2|✅ proved - complete|shostak|0.029|
|suffix_TCC3|✅ proved - complete|shostak|0.037|
|suffix_TCC4|✅ proved - complete|shostak|0.020|
|suffix_TCC5|✅ proved - complete|shostak|0.039|
|suffix_is_finite|✅ proved - complete|shostak|0.055|
|suffix_is_infinite|✅ proved - complete|shostak|0.059|
|suffix_0|✅ proved - complete|shostak|0.028|
|suffix_1|✅ proved - complete|shostak|0.027|
|suffix_rest1|✅ proved - complete|shostak|0.020|
|suffix_rest2_TCC1|✅ proved - complete|shostak|0.111|
|suffix_rest2|✅ proved - complete|shostak|0.233|
|suffix_suffix|✅ proved - complete|shostak|0.170|
|suffix_length|✅ proved - complete|shostak|0.133|
|suffix_first_TCC1|✅ proved - complete|shostak|0.037|
|suffix_first|✅ proved - complete|shostak|0.155|
|suffix_index|✅ proved - complete|shostak|0.143|
|suffix_nth_TCC1|✅ proved - complete|shostak|0.071|
|suffix_nth|✅ proved - complete|shostak|0.000|
|suffix_empty|✅ proved - complete|shostak|0.105|
|suffix_nonempty|✅ proved - complete|shostak|0.037|
|suffix_concatenate_TCC1|✅ proved - complete|shostak|0.029|
|suffix_concatenate_TCC2|✅ proved - complete|shostak|0.036|
|suffix_concatenate|✅ proved - complete|shostak|0.854|
|suffix?_suffix|✅ proved - complete|shostak|0.079|
|suffix_some|✅ proved - complete|shostak|0.139|
|suffix_every|✅ proved - complete|shostak|0.131|

## `csequence_subsequence`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|subsequence?_TCC1|✅ proved - complete|shostak|0.036|
|subsequence?_empty_left|✅ proved - complete|shostak|0.018|
|subsequence?_empty_right|✅ proved - complete|shostak|0.038|
|subsequence?_rest1|✅ proved - complete|shostak|0.222|
|subsequence?_rest2|✅ proved - complete|shostak|0.118|
|subsequence?_extensionality|✅ proved - complete|shostak|0.050|
|subsequence?_finite|✅ proved - complete|shostak|0.160|
|subsequence?_nth|✅ proved - complete|shostak|0.370|
|subsequence?_concatenate_left|✅ proved - complete|shostak|0.284|
|subsequence?_concatenate_right|✅ proved - complete|shostak|0.484|
|subsequence?_prefix|✅ proved - complete|shostak|0.219|
|subsequence?_suffix|✅ proved - complete|shostak|0.240|
|subsequence?_length|✅ proved - complete|shostak|0.416|
|subsequence?_length_eq|✅ proved - complete|shostak|0.550|
|subsequence?_is_preorder|✅ proved - complete|shostak|0.116|
|subsequence?_finite_antisymmetric|✅ proved - complete|shostak|0.086|
|prefix?_is_subsequence?|✅ proved - complete|shostak|0.066|
|suffix?_is_subsequence?|✅ proved - complete|shostak|0.043|
|subsequence?_some|✅ proved - complete|shostak|0.132|
|subsequence?_every|✅ proved - complete|shostak|0.029|
|subsequence_func_TCC1|✅ proved - complete|shostak|0.051|
|subsequence_func_TCC2|✅ proved - complete|shostak|0.054|
|subsequence_func_TCC3|✅ proved - complete|shostak|0.119|
|subsequence_func_TCC4|✅ proved - complete|shostak|0.047|
|subsequence_func_TCC5|✅ proved - complete|shostak|0.321|
|subsequence_func_TCC6|✅ proved - complete|shostak|0.042|
|subsequence_func_TCC7|✅ proved - complete|shostak|0.048|
|subsequence_func_monotonic|✅ proved - complete|shostak|0.579|
|subsequence_func_nth|✅ proved - complete|shostak|0.649|
|subsequence?_def|✅ proved - complete|shostak|0.314|

## `csequence_prefix`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|prefix?_TCC1|✅ proved - complete|shostak|0.036|
|prefix?_finite|✅ proved - complete|shostak|0.057|
|prefix?_infinite|✅ proved - complete|shostak|0.060|
|prefix?_empty|✅ proved - complete|shostak|0.018|
|prefix?_empty_is_prefix|✅ proved - complete|shostak|0.030|
|prefix?_first|✅ proved - complete|shostak|0.020|
|prefix?_rest|✅ proved - complete|shostak|0.028|
|prefix?_length|✅ proved - complete|shostak|0.125|
|prefix?_length_eq|✅ proved - complete|shostak|0.123|
|prefix?_index|✅ proved - complete|shostak|0.054|
|prefix?_nth_TCC1|✅ proved - complete|shostak|0.024|
|prefix?_nth|✅ proved - complete|shostak|0.166|
|prefix?_concatenate|✅ proved - complete|shostak|0.082|
|prefix?_def|✅ proved - complete|shostak|0.099|
|prefix?_is_partial_order|✅ proved - complete|shostak|0.146|
|prefix?_total_order|✅ proved - complete|shostak|0.188|
|prefix_TCC1|✅ proved - complete|shostak|0.028|
|prefix_TCC2|✅ proved - complete|shostak|0.036|
|prefix_TCC3|✅ proved - complete|shostak|0.035|
|prefix_TCC4|✅ proved - complete|shostak|0.030|
|prefix_TCC5|✅ proved - complete|shostak|0.036|
|prefix_0|✅ proved - complete|shostak|0.020|
|prefix_extract|✅ proved - complete|shostak|0.101|
|prefix_rest_TCC1|✅ proved - complete|shostak|0.020|
|prefix_rest|✅ proved - complete|shostak|0.116|
|prefix_prefix|✅ proved - complete|shostak|0.216|
|prefix_length|✅ proved - complete|shostak|0.161|
|prefix_index|✅ proved - complete|shostak|0.000|
|prefix_full|✅ proved - complete|shostak|0.093|
|prefix_concatenate_TCC1|✅ proved - complete|shostak|0.028|
|prefix_concatenate_TCC2|✅ proved - complete|shostak|0.046|
|prefix_concatenate|✅ proved - complete|shostak|1.196|
|prefix?_prefix|✅ proved - complete|shostak|0.325|
|prefix_some|✅ proved - complete|shostak|0.072|
|prefix_every|✅ proved - complete|shostak|0.075|
|prefix?_order|✅ proved - complete|shostak|0.150|

## `csequence_filter_map`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|map_first_p_TCC1|✅ proved - complete|shostak|0.036|
|map_first_p|✅ proved - complete|shostak|0.973|
|map_suffix_empty|✅ proved - complete|shostak|0.145|
|map_suffix|✅ proved - complete|shostak|0.084|
|filter_map|✅ proved - complete|shostak|0.831|

## `csequence_map_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|map_empty|✅ proved - complete|shostak|0.052|
|map_nonempty|✅ proved - complete|shostak|0.061|
|map_finite|✅ proved - complete|shostak|0.073|
|map_infinite|✅ proved - complete|shostak|0.140|
|map_first_TCC1|✅ proved - complete|shostak|0.028|
|map_first|✅ proved - complete|shostak|0.030|
|map_rest|✅ proved - complete|shostak|0.028|
|map_length|✅ proved - complete|shostak|0.145|
|map_index|✅ proved - complete|shostak|0.070|
|map_nth_TCC1|✅ proved - complete|shostak|0.027|
|map_nth|✅ proved - complete|shostak|0.176|
|map_add|✅ proved - complete|shostak|0.030|
|map_last_TCC1|✅ proved - complete|shostak|0.016|
|map_last|✅ proved - complete|shostak|0.085|
|map_map|✅ proved - complete|shostak|0.116|
|map_injective|✅ proved - complete|shostak|0.207|
|map_extensionality|✅ proved - complete|shostak|0.038|
|map_some|✅ proved - complete|shostak|0.136|
|map_every|✅ proved - complete|shostak|0.133|

## `csequence_finseq`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|from_finseq_TCC1|✅ proved - complete|shostak|0.030|
|from_finseq_TCC2|✅ proved - complete|shostak|0.030|
|from_finseq_TCC3|✅ proved - complete|shostak|0.026|
|from_finseq_TCC4|✅ proved - complete|shostak|0.020|
|from_finseq_TCC5|✅ proved - complete|shostak|0.027|
|from_finseq_length|✅ proved - complete|shostak|0.121|
|from_finseq_index|✅ proved - complete|shostak|0.034|
|from_finseq_nth_TCC1|✅ proved - complete|shostak|0.032|
|from_finseq_nth|✅ proved - complete|shostak|0.238|
|to_finseq_TCC1|✅ proved - complete|shostak|0.040|
|to_finseq_length|✅ proved - complete|shostak|0.025|
|to_finseq_index|✅ proved - complete|shostak|0.036|
|to_finseq_nth_TCC1|✅ proved - complete|shostak|0.044|
|to_finseq_nth|✅ proved - complete|shostak|0.027|
|to_from_finseq|✅ proved - complete|shostak|0.110|
|from_to_finseq|✅ proved - complete|shostak|0.076|

## `csequence_flatten`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|some_every_empty|✅ proved - complete|shostak|0.043|
|flatten_struct_TCC1|✅ proved - complete|shostak|0.045|
|flatten_struct_TCC2|✅ proved - complete|shostak|0.028|
|flatten_struct_TCC3|✅ proved - complete|shostak|0.027|
|flatten_struct_TCC4|✅ proved - complete|shostak|0.038|
|flatten_TCC1|✅ proved - complete|shostak|0.019|
|flatten_empty|✅ proved - complete|shostak|0.174|
|flatten_empty_cseq|✅ proved - complete|shostak|0.031|
|flatten_nonempty|✅ proved - complete|shostak|0.032|
|flatten_filter|✅ proved - complete|shostak|0.048|
|flatten_reduce_TCC1|✅ proved - complete|shostak|0.028|
|flatten_reduce|✅ proved - complete|shostak|0.057|
|flatten_rest_TCC1|✅ proved - complete|shostak|0.077|
|flatten_rest_TCC2|✅ proved - complete|shostak|0.171|
|flatten_rest|✅ proved - complete|shostak|0.560|
|flatten_rest2_TCC1|✅ proved - complete|shostak|0.038|
|flatten_rest2_TCC2|✅ proved - complete|shostak|0.040|
|flatten_rest2|✅ proved - complete|shostak|0.416|
|flatten_first|✅ proved - complete|shostak|0.184|
|flatten_suffix|✅ proved - complete|shostak|0.253|
|flatten_concatenate|✅ proved - complete|shostak|0.458|
|flatten_rest_suffix_TCC1|✅ proved - complete|shostak|0.020|
|flatten_rest_suffix_TCC2|✅ proved - complete|shostak|0.064|
|flatten_rest_suffix|✅ proved - complete|shostak|0.267|
|flatten_finite|✅ proved - complete|shostak|0.639|
|flatten_infinite|✅ proved - complete|shostak|0.042|
|length_of_flatten_TCC1|✅ proved - complete|shostak|0.034|
|length_of_flatten_TCC2|✅ proved - complete|shostak|0.025|
|length_of_flatten_TCC3|✅ proved - complete|shostak|0.047|
|length_of_flatten_TCC4|✅ proved - complete|shostak|0.000|
|length_of_flatten_TCC5|✅ proved - complete|shostak|0.169|
|length_of_flatten_add_TCC1|✅ proved - complete|shostak|0.045|
|length_of_flatten_add|✅ proved - complete|shostak|0.492|
|flatten_length|✅ proved - complete|shostak|0.400|
|flatten_some|✅ proved - complete|shostak|0.257|
|flatten_some_finite|✅ proved - complete|shostak|0.088|
|flatten_every|✅ proved - complete|shostak|0.267|
|flatten_every_finite|✅ proved - complete|shostak|0.084|

## `csequence_prefix_suffix`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|prefix_suffix_eta|✅ proved - complete|shostak|0.117|
|prefix_suffix_extensionality|✅ proved - complete|shostak|0.051|

## `csequence_generate`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|generate_TCC1|✅ proved - complete|shostak|0.101|
|generate_first|✅ proved - complete|shostak|0.058|
|generate_rest|✅ proved - complete|shostak|0.052|
|generate_nth_TCC1|✅ proved - complete|shostak|0.027|
|generate_nth|✅ proved - complete|shostak|0.088|
|generate_add|✅ proved - complete|shostak|0.063|
|generate_some|✅ proved - complete|shostak|0.045|
|generate_every|✅ proved - complete|shostak|0.042|

## `csequence_generate_limit`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|generate_empty|✅ proved - complete|shostak|0.072|
|generate_first_TCC1|✅ proved - complete|shostak|0.034|
|generate_first|✅ proved - complete|shostak|0.082|
|generate_rest|✅ proved - complete|shostak|0.092|
|generate_has_length|✅ proved - complete|shostak|0.404|
|generate_finite|✅ proved - complete|shostak|0.083|
|generate_nth|✅ proved - complete|shostak|0.253|
|generate_add|✅ proved - complete|shostak|0.070|
|generate_some|✅ proved - complete|shostak|0.035|
|generate_every|✅ proved - complete|shostak|0.044|

## `csequence_induction`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cseq_induction|✅ proved - complete|shostak|0.121|
|cseq_infinite_induction_TCC1|✅ proved - complete|shostak|0.025|
|cseq_infinite_induction_TCC2|✅ proved - complete|shostak|0.035|
|cseq_infinite_induction_TCC3|✅ proved - complete|shostak|0.034|
|cseq_infinite_induction|✅ proved - complete|shostak|0.075|
|CSEQ_induction|✅ proved - complete|shostak|0.142|
|CSEQ_infinite_induction_TCC1|✅ proved - complete|shostak|0.026|
|CSEQ_infinite_induction_TCC2|✅ proved - complete|shostak|0.028|
|CSEQ_infinite_induction|✅ proved - complete|shostak|0.041|
|finite_sequence_induction|✅ proved - complete|shostak|0.044|
|FINITE_SEQUENCE_induction|✅ proved - complete|shostak|0.049|
|sequence_induction|✅ proved - complete|shostak|0.027|
|SEQUENCE_induction|✅ proved - complete|shostak|0.035|

## `csequence_insert_remove`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|insert_remove_eta|✅ proved - complete|shostak|0.156|

## `csequence_remove`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|remove_TCC1|✅ proved - complete|shostak|0.037|
|remove_TCC2|✅ proved - complete|shostak|0.030|
|remove_TCC3|✅ proved - complete|shostak|0.037|
|remove_TCC4|✅ proved - complete|shostak|0.028|
|remove_finite|✅ proved - complete|shostak|0.053|
|remove_infinite|✅ proved - complete|shostak|0.051|
|remove_0|✅ proved - complete|shostak|0.028|
|remove_empty|✅ proved - complete|shostak|0.035|
|remove_nonempty|✅ proved - complete|shostak|0.038|
|remove_first_TCC1|✅ proved - complete|shostak|0.026|
|remove_first_TCC2|✅ proved - complete|shostak|0.028|
|remove_first_TCC3|✅ proved - complete|shostak|0.028|
|remove_first|✅ proved - complete|shostak|0.047|
|remove_rest_TCC1|✅ proved - complete|shostak|0.028|
|remove_rest_TCC2|✅ proved - complete|shostak|0.037|
|remove_rest|✅ proved - complete|shostak|0.214|
|remove_upfrom_length|✅ proved - complete|shostak|0.138|
|remove_length|✅ proved - complete|shostak|0.165|
|remove_index|✅ proved - complete|shostak|0.172|
|remove_nth_TCC1|✅ proved - complete|shostak|0.109|
|remove_nth|✅ proved - complete|shostak|0.225|
|remove_add|✅ proved - complete|shostak|0.030|
|remove_last_TCC1|✅ proved - complete|shostak|0.105|
|remove_last_TCC2|✅ proved - complete|shostak|0.037|
|remove_last|✅ proved - complete|shostak|0.968|
|remove_remove_TCC1|✅ proved - complete|shostak|0.038|
|remove_remove|✅ proved - complete|shostak|0.316|
|remove_extensionality|✅ proved - complete|shostak|0.246|
|remove_some|✅ proved - complete|shostak|0.197|
|remove_every|✅ proved - complete|shostak|0.062|

## `csequence_length_comp`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|length_lt_le|✅ proved - complete|shostak|0.035|
|length_gt_ge|✅ proved - complete|shostak|0.037|
|length_eq_le|✅ proved - complete|shostak|0.045|
|length_eq_ge|✅ proved - complete|shostak|0.038|
|length_lt_neq|✅ proved - complete|shostak|0.037|
|length_gt_neq|✅ proved - complete|shostak|0.038|
|length_eq_empty|✅ proved - complete|shostak|0.065|
|length_eq_rest|✅ proved - complete|shostak|0.067|

## `csequence_limit`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|prefix_chain_TCC1|✅ proved - complete|shostak|0.054|
|suffix_chain_TCC1|✅ proved - complete|shostak|0.182|
|rest_chain_TCC1|✅ proved - complete|shostak|0.045|
|rest_chain_TCC2|✅ proved - complete|shostak|0.104|
|ascending_chain?_nth|✅ proved - complete|shostak|0.049|
|limit_struct_TCC1|✅ proved - complete|shostak|0.086|
|limit_struct_TCC2|✅ proved - complete|shostak|0.045|
|limit_empty|✅ proved - complete|shostak|0.124|
|limit_nonempty|✅ proved - complete|shostak|0.053|
|limit_first_TCC1|✅ proved - complete|shostak|0.027|
|limit_first|✅ proved - complete|shostak|0.213|
|limit_rest_chain|✅ proved - complete|shostak|0.173|
|limit_suffix_chain|✅ proved - complete|shostak|0.863|
|limit_lub|✅ proved - complete|shostak|0.000|
|limit_nth|✅ proved - complete|shostak|0.051|
|limit_def|✅ proved - complete|shostak|0.383|
|limit_prefix_chain|✅ proved - complete|shostak|0.114|
|limit_prefix_compact_TCC1|✅ proved - complete|shostak|0.045|
|limit_prefix_compact|✅ proved - complete|shostak|0.375|
|limit_finite_compact|✅ proved - complete|shostak|0.134|
|continuous?_infinite|✅ proved - complete|shostak|0.051|

## `csequence_list`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|from_list_TCC1|✅ proved - complete|shostak|0.026|
|from_list_TCC2|✅ proved - complete|shostak|0.037|
|from_list_TCC3|✅ proved - complete|shostak|0.018|
|from_list_length|✅ proved - complete|shostak|0.051|
|from_list_index|✅ proved - complete|shostak|0.111|
|from_list_nth_TCC1|✅ proved - complete|shostak|0.028|
|from_list_nth|✅ proved - complete|shostak|0.114|
|to_list_TCC1|✅ proved - complete|shostak|0.036|
|to_list_TCC2|✅ proved - complete|shostak|0.027|
|to_list_TCC3|✅ proved - complete|shostak|0.064|
|to_list_length|✅ proved - complete|shostak|0.102|
|to_list_index|✅ proved - complete|shostak|0.138|
|to_list_nth_TCC1|✅ proved - complete|shostak|0.035|
|to_list_nth|✅ proved - complete|shostak|0.132|
|to_from_list|✅ proved - complete|shostak|0.038|
|from_to_list|✅ proved - complete|shostak|0.052|

## `csequence_map_composition`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|map_composition|✅ proved - complete|shostak|0.286|

## `csequence_merge`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|merge_struct_TCC1|✅ proved - complete|shostak|0.037|
|merge_struct_TCC2|✅ proved - complete|shostak|0.034|
|merge_empty|✅ proved - complete|shostak|0.111|
|merge_nonempty|✅ proved - complete|shostak|0.121|
|merge_empty_left|✅ proved - complete|shostak|0.490|
|merge_empty_right|✅ proved - complete|shostak|0.485|
|merge_first_TCC1|✅ proved - complete|shostak|0.028|
|merge_first|✅ proved - complete|shostak|0.145|
|merge_rest|✅ proved - complete|shostak|0.102|
|merge_finite|✅ proved - complete|shostak|0.133|
|merge_finiteness|✅ proved - complete|shostak|0.132|
|merge_infinite1|✅ proved - complete|shostak|0.026|
|merge_infinite2|✅ proved - complete|shostak|0.025|
|merge_length|✅ proved - complete|shostak|0.288|
|merge_index_TCC1|✅ proved - complete|shostak|0.042|
|merge_index|✅ proved - complete|shostak|0.206|
|merge_nth_TCC1|✅ proved - complete|shostak|0.042|
|merge_nth_TCC2|✅ proved - complete|shostak|0.079|
|merge_nth_TCC3|✅ proved - complete|shostak|0.046|
|merge_nth_TCC4|✅ proved - complete|shostak|0.274|
|merge_nth_TCC5|✅ proved - complete|shostak|0.404|
|merge_nth_TCC6|✅ proved - complete|shostak|1.093|
|merge_nth|✅ proved - complete|shostak|8.103|
|merge_add|✅ proved - complete|shostak|0.077|
|merge_last_TCC1|✅ proved - complete|shostak|0.044|
|merge_last_TCC2|✅ proved - complete|shostak|0.037|
|merge_last|✅ proved - complete|shostak|0.595|
|merge_extensionality|✅ proved - complete|shostak|2.540|
|merge_some|✅ proved - complete|shostak|0.578|
|merge_every|✅ proved - complete|shostak|0.040|

## `csequence_merge_split`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|merge_split_eta|✅ proved - complete|shostak|0.000|
|split_merge_eta|✅ proved - complete|shostak|1.375|

## `csequence_split`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|split_left_struct_TCC1|✅ proved - complete|shostak|0.040|
|split_left_struct_TCC2|✅ proved - complete|shostak|0.028|
|split_empty_left|✅ proved - complete|shostak|0.123|
|split_empty_right|✅ proved - complete|shostak|0.104|
|split_nonempty_left|✅ proved - complete|shostak|0.113|
|split_nonempty_right|✅ proved - complete|shostak|0.105|
|split_first_left_TCC1|✅ proved - complete|shostak|0.029|
|split_first_left|✅ proved - complete|shostak|0.086|
|split_first_right_TCC1|✅ proved - complete|shostak|0.029|
|split_first_right|✅ proved - complete|shostak|0.115|
|split_rest_left_TCC1|✅ proved - complete|shostak|0.028|
|split_rest_left|✅ proved - complete|shostak|0.146|
|split_rest_right|✅ proved - complete|shostak|0.134|
|split_rest_swap_left|✅ proved - complete|shostak|0.659|
|split_rest_swap_right|✅ proved - complete|shostak|0.759|
|split_finite|✅ proved - complete|shostak|0.174|
|split_infinite|✅ proved - complete|shostak|0.272|
|split_length_left|✅ proved - complete|shostak|0.339|
|split_length_right|✅ proved - complete|shostak|0.317|
|split_length|✅ proved - complete|shostak|0.182|
|split_index_left|✅ proved - complete|shostak|0.111|
|split_index_right|✅ proved - complete|shostak|0.161|
|split_nth_left_TCC1|✅ proved - complete|shostak|0.055|
|split_nth_left|✅ proved - complete|shostak|0.328|
|split_nth_right_TCC1|✅ proved - complete|shostak|0.096|
|split_nth_right|✅ proved - complete|shostak|0.427|
|split_add|✅ proved - complete|shostak|1.251|
|split_last_left_TCC1|✅ proved - complete|shostak|0.026|
|split_last_left_TCC2|✅ proved - complete|shostak|0.121|
|split_last_left|✅ proved - complete|shostak|0.317|
|split_last_right_TCC1|✅ proved - complete|shostak|0.030|
|split_last_right_TCC2|✅ proved - complete|shostak|0.121|
|split_last_right|✅ proved - complete|shostak|0.304|
|split_extensionality|✅ proved - complete|shostak|0.140|
|split_some|✅ proved - complete|shostak|0.215|
|split_every|✅ proved - complete|shostak|0.035|

## `csequence_prefix_append`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|prefix_append_eta|✅ proved - complete|shostak|0.318|

## `csequence_rest`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|rest_finite|✅ proved - complete|shostak|0.032|
|rest_infinite|✅ proved - complete|shostak|0.023|
|rest_empty_add|✅ proved - complete|shostak|0.034|
|rest_empty|✅ proved - complete|shostak|0.074|
|rest_nonempty|✅ proved - complete|shostak|0.105|
|rest_first_TCC1|✅ proved - complete|shostak|0.028|
|rest_first|✅ proved - complete|shostak|0.018|
|rest_length|✅ proved - complete|shostak|0.029|
|rest_index|✅ proved - complete|shostak|0.028|
|rest_nth_TCC1|✅ proved - complete|shostak|0.020|
|rest_nth|✅ proved - complete|shostak|0.019|
|rest_some|✅ proved - complete|shostak|0.028|
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
|reverse_first|✅ proved - complete|shostak|0.253|
|reverse_last|✅ proved - complete|shostak|0.028|
|reverse_length|✅ proved - complete|shostak|0.142|
|reverse_index|✅ proved - complete|shostak|0.048|
|reverse_nth_TCC1|✅ proved - complete|shostak|0.050|
|reverse_nth|✅ proved - complete|shostak|0.431|
|reverse_add1|✅ proved - complete|shostak|0.373|
|reverse_add2_TCC1|✅ proved - complete|shostak|0.020|
|reverse_add2|✅ proved - complete|shostak|0.028|
|reverse_reverse|✅ proved - complete|shostak|0.129|
|reverse_extensionality|✅ proved - complete|shostak|0.145|
|reverse_some|✅ proved - complete|shostak|0.172|
|reverse_every|✅ proved - complete|shostak|0.044|

## `csequence_sequence`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|from_sequence_TCC1|✅ proved - complete|shostak|0.116|
|from_sequence_nth_TCC1|✅ proved - complete|shostak|0.028|
|from_sequence_nth|✅ proved - complete|shostak|0.107|
|to_sequence_TCC1|✅ proved - complete|shostak|0.027|
|to_sequence_nth|✅ proved - complete|shostak|0.024|
|to_from_sequence|✅ proved - complete|shostak|0.035|
|from_to_sequence|✅ proved - complete|shostak|0.048|

## `csequence_strict_prefix`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|strict_prefix?_TCC1|✅ proved - complete|shostak|0.032|
|strict_prefix?_prefix?|✅ proved - complete|shostak|0.127|
|strict_prefix?_finite|✅ proved - complete|shostak|0.033|
|strict_prefix?_first_TCC1|✅ proved - complete|shostak|0.017|
|strict_prefix?_first|✅ proved - complete|shostak|0.016|
|strict_prefix?_rest|✅ proved - complete|shostak|0.029|
|strict_prefix?_length_TCC1|✅ proved - complete|shostak|0.027|
|strict_prefix?_length|✅ proved - complete|shostak|0.045|
|strict_prefix?_index|✅ proved - complete|shostak|0.036|
|strict_prefix?_nth_TCC1|✅ proved - complete|shostak|0.024|
|strict_prefix?_nth|✅ proved - complete|shostak|0.036|
|strict_prefix?_concatenate|✅ proved - complete|shostak|0.061|
|strict_prefix?_def|✅ proved - complete|shostak|0.153|
|strict_prefix?_is_strict_order|✅ proved - complete|shostak|0.000|
|strict_prefix?_well_ordered|✅ proved - complete|shostak|0.203|
|strict_prefix?_prefix|✅ proved - complete|shostak|0.175|

## `csequence_unzip`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|unzip_left_struct_TCC1|✅ proved - complete|shostak|0.027|
|unzip_finite|✅ proved - complete|shostak|0.247|
|unzip_infinite|✅ proved - complete|shostak|0.301|
|unzip_nonempty|✅ proved - complete|shostak|0.104|
|unzip_empty_left|✅ proved - complete|shostak|0.081|
|unzip_empty_right|✅ proved - complete|shostak|0.085|
|unzip_first_left|✅ proved - complete|shostak|0.058|
|unzip_first_right|✅ proved - complete|shostak|0.056|
|unzip_rest_left|✅ proved - complete|shostak|0.077|
|unzip_rest_right|✅ proved - complete|shostak|0.067|
|unzip_length_left|✅ proved - complete|shostak|0.209|
|unzip_length_right|✅ proved - complete|shostak|0.223|
|unzip_index_left|✅ proved - complete|shostak|0.063|
|unzip_index_right|✅ proved - complete|shostak|0.061|
|unzip_nth_left_TCC1|✅ proved - complete|shostak|0.036|
|unzip_nth_left|✅ proved - complete|shostak|0.308|
|unzip_nth_right_TCC1|✅ proved - complete|shostak|0.024|
|unzip_nth_right|✅ proved - complete|shostak|0.308|
|unzip_map|✅ proved - complete|shostak|0.496|
|unzip_extensionality|✅ proved - complete|shostak|0.895|
|unzip_add|✅ proved - complete|shostak|0.115|
|unzip_last_left_TCC1|✅ proved - complete|shostak|0.030|
|unzip_last_left|✅ proved - complete|shostak|0.065|
|unzip_last_right_TCC1|✅ proved - complete|shostak|0.018|
|unzip_last_right|✅ proved - complete|shostak|0.055|
|unzip_some|✅ proved - complete|shostak|0.137|
|unzip_every|✅ proved - complete|shostak|0.129|

## `csequence_zip`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|zip_struct_TCC1|✅ proved - complete|shostak|0.038|
|zip_struct_TCC2|✅ proved - complete|shostak|0.028|
|zip_finite1|✅ proved - complete|shostak|0.169|
|zip_finite2|✅ proved - complete|shostak|0.172|
|zip_infinite|✅ proved - complete|shostak|0.149|
|zip_nonempty|✅ proved - complete|shostak|0.074|
|zip_empty|✅ proved - complete|shostak|0.097|
|zip_first|✅ proved - complete|shostak|0.066|
|zip_rest|✅ proved - complete|shostak|0.075|
|zip_add|✅ proved - complete|shostak|0.076|
|zip_length_TCC1|✅ proved - complete|shostak|0.028|
|zip_length|✅ proved - complete|shostak|0.955|
|zip_index|✅ proved - complete|shostak|0.356|
|zip_nth_TCC1|✅ proved - complete|shostak|0.031|
|zip_nth_TCC2|✅ proved - complete|shostak|0.035|
|zip_nth|✅ proved - complete|shostak|0.409|
|zip_last_TCC1|✅ proved - complete|shostak|0.055|
|zip_last_TCC2|✅ proved - complete|shostak|0.050|
|zip_last_TCC3|✅ proved - complete|shostak|0.126|
|zip_last_TCC4|✅ proved - complete|shostak|0.059|
|zip_last_TCC5|✅ proved - complete|shostak|0.124|
|zip_last_TCC6|✅ proved - complete|shostak|0.062|
|zip_last_TCC7|✅ proved - complete|shostak|0.044|
|zip_last_TCC8|✅ proved - complete|shostak|0.038|
|zip_last_TCC9|✅ proved - complete|shostak|0.075|
|zip_last|✅ proved - complete|shostak|0.287|
|zip_extensionality|✅ proved - complete|shostak|0.769|
|zip_some_TCC1|✅ proved - complete|shostak|0.065|
|zip_some_TCC2|✅ proved - complete|shostak|0.056|
|zip_some_TCC3|✅ proved - complete|shostak|0.056|
|zip_some|✅ proved - complete|shostak|0.449|
|zip_every_TCC1|✅ proved - complete|shostak|0.054|
|zip_every|✅ proved - complete|shostak|0.437|

## `csequence_zip_unzip`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|zip_unzip_eta|✅ proved - complete|shostak|1.483|
|unzip_zip_eta|✅ proved - complete|shostak|0.410|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib//float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-pvsio-fix.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210219-extratregies.lisp`|
