# Summary for `co_structures`
Run started at 21:46:25 9/1/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **726**   | **726**    | **726**    | **0**  | **1:51.118 s**   |
|top|0|0|0|0|0.000|
|ascending_chains|2|2|2|0|0.216|
|csequence_add|11|11|11|0|0.384|
|csequence_nth|22|22|22|0|1.676|
|csequence_length|11|11|11|0|0.690|
|csequence_props|13|13|13|0|0.603|
|csequence_append|17|17|17|0|3.420|
|csequence_insert|22|22|22|0|2.929|
|csequence_concatenate|31|31|31|0|6.258|
|csequence_concatenate_extract|2|2|2|0|0.672|
|csequence_extract|30|30|30|0|6.183|
|csequence_constant|25|25|25|0|1.188|
|csequence_singleton|12|12|12|0|0.423|
|csequence_filter|26|26|26|0|4.486|
|csequence_filter_of|14|14|14|0|2.748|
|csequence_first_p|6|6|6|0|0.713|
|csequence_suffix|42|42|42|0|4.134|
|csequence_subsequence|30|30|30|0|6.168|
|csequence_prefix|36|36|36|0|4.553|
|csequence_filter_map|5|5|5|0|2.151|
|csequence_map_props|19|19|19|0|1.706|
|csequence_finseq|16|16|16|0|0.991|
|csequence_flatten|38|38|38|0|5.862|
|csequence_prefix_suffix|2|2|2|0|0.173|
|csequence_generate|8|8|8|0|0.509|
|csequence_generate_limit|10|10|10|0|1.207|
|csequence_induction|13|13|13|0|0.731|
|csequence_insert_remove|1|1|1|0|0.163|
|csequence_remove|30|30|30|0|3.798|
|csequence_length_comp|8|8|8|0|0.398|
|csequence_limit|21|21|21|0|3.692|
|csequence_list|16|16|16|0|1.075|
|csequence_map_composition|1|1|1|0|0.286|
|csequence_merge|30|30|30|0|14.267|
|csequence_merge_split|2|2|2|0|1.624|
|csequence_split|36|36|36|0|7.657|
|csequence_prefix_append|1|1|1|0|0.324|
|csequence_rest|13|13|13|0|0.522|
|csequence_reverse|19|19|19|0|2.160|
|csequence_sequence|7|7|7|0|0.348|
|csequence_strict_prefix|16|16|16|0|1.322|
|csequence_unzip|27|27|27|0|4.683|
|csequence_zip|33|33|33|0|6.051|
|csequence_zip_unzip|2|2|2|0|1.974|
## Detailed Summary 
## `top`
No formula declaration found.
## `ascending_chains`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|ascending_chain?_def|✅ proved - complete|shostak|0.184|
|least_upperbound_inj|✅ proved - complete|shostak|0.032|

## `csequence_add`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|add_finite|✅ proved - complete|shostak|0.027|
|add_infinite|✅ proved - complete|shostak|0.020|
|add_length|✅ proved - complete|shostak|0.036|
|add_index_TCC1|✅ proved - complete|shostak|0.033|
|add_index|✅ proved - complete|shostak|0.038|
|add_nth_TCC1|✅ proved - complete|shostak|0.030|
|add_nth|✅ proved - complete|shostak|0.029|
|add_last_TCC1|✅ proved - complete|shostak|0.046|
|add_last|✅ proved - complete|shostak|0.071|
|add_some|✅ proved - complete|shostak|0.026|
|add_every|✅ proved - complete|shostak|0.028|

## `csequence_nth`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|index?_TCC1|✅ proved - complete|shostak|0.046|
|index?_TCC2|✅ proved - complete|shostak|0.028|
|index?_0|✅ proved - complete|shostak|0.030|
|index?_ub|✅ proved - complete|shostak|0.068|
|index?_lt|✅ proved - complete|shostak|0.135|
|index?_finite|✅ proved - complete|shostak|0.161|
|index?_finite_bound|✅ proved - complete|shostak|0.044|
|index?_infinite|✅ proved - complete|shostak|0.066|
|index?_infinite_full|✅ proved - complete|shostak|0.056|
|index?_prop|✅ proved - complete|shostak|0.036|
|index?_nonempty|✅ proved - complete|shostak|0.036|
|nth_TCC1|✅ proved - complete|shostak|0.038|
|nth_TCC2|✅ proved - complete|shostak|0.027|
|nth_TCC3|✅ proved - complete|shostak|0.028|
|nth_TCC4|✅ proved - complete|shostak|0.019|
|nth_extensionality_TCC1|✅ proved - complete|shostak|0.036|
|nth_extensionality|✅ proved - complete|shostak|0.192|
|nth_every|✅ proved - complete|shostak|0.213|
|nth_some|✅ proved - complete|shostak|0.232|
|last_TCC1|✅ proved - complete|shostak|0.000|
|last_rest_TCC1|✅ proved - complete|shostak|0.037|
|last_rest|✅ proved - complete|shostak|0.148|

## `csequence_length`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|length_TCC1|✅ proved - complete|shostak|0.070|
|length_TCC2|✅ proved - complete|shostak|0.033|
|length_TCC3|✅ proved - complete|shostak|0.047|
|length_TCC4|✅ proved - complete|shostak|0.038|
|length_TCC5|✅ proved - complete|shostak|0.127|
|length_TCC6|✅ proved - complete|shostak|0.089|
|length_def|✅ proved - complete|shostak|0.053|
|length_empty?_rew|✅ proved - complete|shostak|0.093|
|length_nonempty?_rew|✅ proved - complete|shostak|0.083|
|length_rest_TCC1|✅ proved - complete|shostak|0.028|
|length_rest|✅ proved - complete|shostak|0.029|

## `csequence_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|has_length_TCC1|✅ proved - complete|shostak|0.036|
|has_length_TCC2|✅ proved - complete|shostak|0.039|
|has_length_TCC3|✅ proved - complete|shostak|0.019|
|has_length_injective|✅ proved - complete|shostak|0.094|
|is_finite_TCC1|✅ proved - complete|shostak|0.030|
|is_finite_def|✅ proved - complete|shostak|0.103|
|finite_csequence_TCC1|✅ proved - complete|shostak|0.030|
|empty_csequence_is_finite|✅ proved - complete|shostak|0.018|
|infinite_csequence_is_nonempty|✅ proved - complete|shostak|0.029|
|some_every_rew|✅ proved - complete|shostak|0.056|
|every_some_rew|✅ proved - complete|shostak|0.044|
|some_implies|✅ proved - complete|shostak|0.060|
|every_implies|✅ proved - complete|shostak|0.045|

## `csequence_append`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|append_struct_TCC1|✅ proved - complete|shostak|0.028|
|append_TCC1|✅ proved - complete|shostak|0.102|
|append_finite|✅ proved - complete|shostak|0.202|
|append_first_TCC1|✅ proved - complete|shostak|0.024|
|append_first|✅ proved - complete|shostak|0.097|
|append_rest|✅ proved - complete|shostak|1.159|
|append_finite_def|✅ proved - complete|shostak|0.190|
|append_infinite_def|✅ proved - complete|shostak|0.167|
|append_length|✅ proved - complete|shostak|0.275|
|append_index|✅ proved - complete|shostak|0.613|
|append_nth_TCC1|✅ proved - complete|shostak|0.033|
|append_nth|✅ proved - complete|shostak|0.090|
|append_add|✅ proved - complete|shostak|0.093|
|append_last|✅ proved - complete|shostak|0.120|
|append_extensionality|✅ proved - complete|shostak|0.146|
|append_some|✅ proved - complete|shostak|0.041|
|append_every|✅ proved - complete|shostak|0.040|

## `csequence_insert`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|insert_TCC1|✅ proved - complete|shostak|0.046|
|insert_TCC2|✅ proved - complete|shostak|0.034|
|insert_TCC3|✅ proved - complete|shostak|0.028|
|insert_finite|✅ proved - complete|shostak|0.070|
|insert_infinite|✅ proved - complete|shostak|0.060|
|insert_first|✅ proved - complete|shostak|0.030|
|insert_rest|✅ proved - complete|shostak|0.022|
|insert_length|✅ proved - complete|shostak|0.149|
|insert_index_TCC1|✅ proved - complete|shostak|0.035|
|insert_index|✅ proved - complete|shostak|0.120|
|insert_nth_TCC1|✅ proved - complete|shostak|0.088|
|insert_nth|✅ proved - complete|shostak|0.267|
|insert_0|✅ proved - complete|shostak|0.028|
|insert_add|✅ proved - complete|shostak|0.026|
|insert_last_TCC1|✅ proved - complete|shostak|0.027|
|insert_last|✅ proved - complete|shostak|0.406|
|insert_beyond|✅ proved - complete|shostak|0.163|
|insert_insert_TCC1|✅ proved - complete|shostak|0.054|
|insert_insert|✅ proved - complete|shostak|0.854|
|insert_extensionality|✅ proved - complete|shostak|0.134|
|insert_some|✅ proved - complete|shostak|0.147|
|insert_every|✅ proved - complete|shostak|0.141|

## `csequence_concatenate`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|concatenate_struct_TCC1|✅ proved - complete|shostak|0.047|
|concatenate_struct_TCC2|✅ proved - complete|shostak|0.026|
|o_finite|✅ proved - complete|shostak|0.434|
|o_finiteness|✅ proved - complete|shostak|0.516|
|o_infinite1|✅ proved - complete|shostak|0.029|
|o_infinite2|✅ proved - complete|shostak|0.033|
|o_empty|✅ proved - complete|shostak|0.128|
|o_nonempty|✅ proved - complete|shostak|0.057|
|o_nonempty_left|✅ proved - complete|shostak|0.084|
|o_nonempty_right|✅ proved - complete|shostak|0.114|
|o_empty_left|✅ proved - complete|shostak|0.235|
|o_empty_right|✅ proved - complete|shostak|0.236|
|o_first_TCC1|✅ proved - complete|shostak|0.029|
|o_first|✅ proved - complete|shostak|0.166|
|o_rest|✅ proved - complete|shostak|0.101|
|o_first_rest|✅ proved - complete|shostak|0.175|
|o_length|✅ proved - complete|shostak|0.531|
|o_index|✅ proved - complete|shostak|0.109|
|o_nth_TCC1|✅ proved - complete|shostak|0.113|
|o_nth_TCC2|✅ proved - complete|shostak|0.080|
|o_nth|✅ proved - complete|shostak|0.000|
|o_add|✅ proved - complete|shostak|0.065|
|o_last_TCC1|✅ proved - complete|shostak|0.085|
|o_last_TCC2|✅ proved - complete|shostak|0.037|
|o_last|✅ proved - complete|shostak|0.131|
|o_infinite|✅ proved - complete|shostak|0.090|
|o_assoc|✅ proved - complete|shostak|1.780|
|o_extensionality_left|✅ proved - complete|shostak|0.115|
|o_extensionality_right|✅ proved - complete|shostak|0.326|
|o_some|✅ proved - complete|shostak|0.335|
|o_every|✅ proved - complete|shostak|0.051|

## `csequence_concatenate_extract`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|o_extract|✅ proved - complete|shostak|0.567|
|o_extract_eta|✅ proved - complete|shostak|0.105|

## `csequence_extract`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|caret_TCC1|✅ proved - complete|shostak|0.051|
|caret_TCC2|✅ proved - complete|shostak|0.043|
|caret_TCC3|✅ proved - complete|shostak|0.053|
|caret_TCC4|✅ proved - complete|shostak|0.056|
|caret_TCC5|✅ proved - complete|shostak|0.045|
|caret_TCC6|✅ proved - complete|shostak|0.046|
|caret_TCC7|✅ proved - complete|shostak|0.055|
|caret_TCC8|✅ proved - complete|shostak|0.054|
|extract_empty|✅ proved - complete|shostak|0.263|
|extract_nonempty|✅ proved - complete|shostak|0.082|
|extract_length|✅ proved - complete|shostak|0.587|
|extract_def|✅ proved - complete|shostak|0.241|
|extract_rest_TCC1|✅ proved - complete|shostak|0.037|
|extract_rest|✅ proved - complete|shostak|0.117|
|extract_rest2|✅ proved - complete|shostak|0.189|
|extract_extract|✅ proved - complete|shostak|1.245|
|extract_index|✅ proved - complete|shostak|0.227|
|extract_first_TCC1|✅ proved - complete|shostak|0.065|
|extract_first|✅ proved - complete|shostak|0.124|
|extract_nth_TCC1|✅ proved - complete|shostak|0.087|
|extract_nth|✅ proved - complete|shostak|1.344|
|extract_add_TCC1|✅ proved - complete|shostak|0.035|
|extract_add_TCC2|✅ proved - complete|shostak|0.063|
|extract_add_TCC3|✅ proved - complete|shostak|0.046|
|extract_add|✅ proved - complete|shostak|0.071|
|extract_last_TCC1|✅ proved - complete|shostak|0.045|
|extract_last|✅ proved - complete|shostak|0.357|
|extract_extensionality|✅ proved - complete|shostak|0.208|
|extract_some|✅ proved - complete|shostak|0.174|
|extract_every|✅ proved - complete|shostak|0.173|

## `csequence_constant`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|constant_cseq_TCC1|✅ proved - complete|shostak|0.045|
|constant_cseq_TCC2|✅ proved - complete|shostak|0.020|
|constant_cseq_TCC3|✅ proved - complete|shostak|0.029|
|constant_cseq_empty|✅ proved - complete|shostak|0.037|
|constant_cseq_1|✅ proved - complete|shostak|0.027|
|constant_cseq_first_TCC1|✅ proved - complete|shostak|0.038|
|constant_cseq_first|✅ proved - complete|shostak|0.029|
|constant_cseq_rest_TCC1|✅ proved - complete|shostak|0.036|
|constant_cseq_rest|✅ proved - complete|shostak|0.039|
|constant_cseq_length|✅ proved - complete|shostak|0.045|
|constant_cseq_index|✅ proved - complete|shostak|0.045|
|constant_cseq_nth_TCC1|✅ proved - complete|shostak|0.045|
|constant_cseq_nth|✅ proved - complete|shostak|0.075|
|constant_cseq_add|✅ proved - complete|shostak|0.028|
|constant_cseq_last|✅ proved - complete|shostak|0.091|
|constant_cseq_some|✅ proved - complete|shostak|0.046|
|constant_cseq_every|✅ proved - complete|shostak|0.045|
|constant_cseq_TCC4|✅ proved - complete|shostak|0.074|
|constant_cseq_inf_first|✅ proved - complete|shostak|0.054|
|constant_cseq_inf_rest|✅ proved - complete|shostak|0.052|
|constant_cseq_inf_nth_TCC1|✅ proved - complete|shostak|0.027|
|constant_cseq_inf_nth|✅ proved - complete|shostak|0.085|
|constant_cseq_inf_add|✅ proved - complete|shostak|0.047|
|constant_cseq_inf_some|✅ proved - complete|shostak|0.090|
|constant_cseq_inf_every|✅ proved - complete|shostak|0.039|

## `csequence_singleton`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|singleton_is_nonempty_finite|✅ proved - complete|shostak|0.028|
|singleton_cseq_length_TCC1|✅ proved - complete|shostak|0.024|
|singleton_cseq_length|✅ proved - complete|shostak|0.066|
|singleton_cseq_index|✅ proved - complete|shostak|0.046|
|singleton_cseq_TCC1|✅ proved - complete|shostak|0.028|
|singleton_def_TCC1|✅ proved - complete|shostak|0.028|
|singleton_def|✅ proved - complete|shostak|0.049|
|singleton_cseq_first|✅ proved - complete|shostak|0.018|
|singleton_cseq_rest|✅ proved - complete|shostak|0.030|
|singleton_cseq_last|✅ proved - complete|shostak|0.049|
|singleton_cseq_some|✅ proved - complete|shostak|0.029|
|singleton_cseq_every|✅ proved - complete|shostak|0.028|

## `csequence_filter`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|filter_TCC1|✅ proved - complete|shostak|0.180|
|filter_empty|✅ proved - complete|shostak|0.068|
|filter_nonempty|✅ proved - complete|shostak|0.113|
|filter_def|✅ proved - complete|shostak|0.000|
|filter_finite|✅ proved - complete|shostak|0.045|
|filter_length|✅ proved - complete|shostak|0.039|
|filter_length_eq|✅ proved - complete|shostak|0.045|
|filter_reduce_TCC1|✅ proved - complete|shostak|0.038|
|filter_reduce|✅ proved - complete|shostak|0.503|
|filter_add|✅ proved - complete|shostak|0.384|
|filter_rest_TCC1|✅ proved - complete|shostak|0.032|
|filter_rest|✅ proved - complete|shostak|0.062|
|filter_suffix_TCC1|✅ proved - complete|shostak|0.089|
|filter_suffix_TCC2|✅ proved - complete|shostak|0.035|
|filter_suffix|✅ proved - complete|shostak|0.141|
|filter_first_TCC1|✅ proved - complete|shostak|0.037|
|filter_first|✅ proved - complete|shostak|0.113|
|filter_first_first_TCC1|✅ proved - complete|shostak|0.028|
|filter_first_first|✅ proved - complete|shostak|0.096|
|filter_full|✅ proved - complete|shostak|1.182|
|filter_idem|✅ proved - complete|shostak|0.036|
|filter_some|✅ proved - complete|shostak|0.600|
|filter_every|✅ proved - complete|shostak|0.077|
|filter_filter_of|✅ proved - complete|shostak|0.375|
|filter_concatenate|✅ proved - complete|shostak|0.103|
|filter_filter|✅ proved - complete|shostak|0.065|

## `csequence_filter_of`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|filter_of?_TCC1|✅ proved - complete|shostak|0.055|
|filter_of?_empty|✅ proved - complete|shostak|0.035|
|filter_of?_nonempty|✅ proved - complete|shostak|0.036|
|filter_of?_finite|✅ proved - complete|shostak|0.082|
|filter_of?_def|✅ proved - complete|shostak|0.170|
|filter_of?_first_p_TCC1|✅ proved - complete|shostak|0.033|
|filter_of?_first_p|✅ proved - complete|shostak|0.242|
|filter_of?_suffix|✅ proved - complete|shostak|0.379|
|filter_of?_injective|✅ proved - complete|shostak|0.177|
|filter_of?_concatenate|✅ proved - complete|shostak|0.980|
|filter_of?_implication|✅ proved - complete|shostak|0.105|
|filter_of?_implication_rev|✅ proved - complete|shostak|0.136|
|filter_of?_some|✅ proved - complete|shostak|0.093|
|filter_of?_filter_of?|✅ proved - complete|shostak|0.225|

## `csequence_first_p`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|p_indexes_nonempty|✅ proved - complete|shostak|0.049|
|first_p_TCC1|✅ proved - complete|shostak|0.036|
|first_p_nth|✅ proved - complete|shostak|0.036|
|first_p_rest_TCC1|✅ proved - complete|shostak|0.038|
|first_p_rest_TCC2|✅ proved - complete|shostak|0.028|
|first_p_rest|✅ proved - complete|shostak|0.526|

## `csequence_suffix`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|suffix?_empty|✅ proved - complete|shostak|0.069|
|suffix?_rest_left|✅ proved - complete|shostak|0.043|
|suffix?_rest_right|✅ proved - complete|shostak|0.036|
|suffix?_finite_left|✅ proved - complete|shostak|0.060|
|suffix?_finite_right|✅ proved - complete|shostak|0.060|
|suffix?_infinite_left|✅ proved - complete|shostak|0.025|
|suffix?_infinite_right|✅ proved - complete|shostak|0.036|
|suffix?_length|✅ proved - complete|shostak|0.139|
|suffix?_length_eq|✅ proved - complete|shostak|0.137|
|suffix?_index|✅ proved - complete|shostak|0.090|
|suffix?_concatenate|✅ proved - complete|shostak|0.105|
|suffix?_def|✅ proved - complete|shostak|0.072|
|suffix?_is_preorder|✅ proved - complete|shostak|0.086|
|suffix?_finite_antisymmetric|✅ proved - complete|shostak|0.109|
|suffix?_order|✅ proved - complete|shostak|0.058|
|suffix_TCC1|✅ proved - complete|shostak|0.030|
|suffix_TCC2|✅ proved - complete|shostak|0.037|
|suffix_TCC3|✅ proved - complete|shostak|0.038|
|suffix_TCC4|✅ proved - complete|shostak|0.030|
|suffix_TCC5|✅ proved - complete|shostak|0.038|
|suffix_is_finite|✅ proved - complete|shostak|0.063|
|suffix_is_infinite|✅ proved - complete|shostak|0.061|
|suffix_0|✅ proved - complete|shostak|0.027|
|suffix_1|✅ proved - complete|shostak|0.027|
|suffix_rest1|✅ proved - complete|shostak|0.028|
|suffix_rest2_TCC1|✅ proved - complete|shostak|0.100|
|suffix_rest2|✅ proved - complete|shostak|0.250|
|suffix_suffix|✅ proved - complete|shostak|0.176|
|suffix_length|✅ proved - complete|shostak|0.146|
|suffix_first_TCC1|✅ proved - complete|shostak|0.027|
|suffix_first|✅ proved - complete|shostak|0.168|
|suffix_index|✅ proved - complete|shostak|0.151|
|suffix_nth_TCC1|✅ proved - complete|shostak|0.068|
|suffix_nth|✅ proved - complete|shostak|0.000|
|suffix_empty|✅ proved - complete|shostak|0.127|
|suffix_nonempty|✅ proved - complete|shostak|0.047|
|suffix_concatenate_TCC1|✅ proved - complete|shostak|0.038|
|suffix_concatenate_TCC2|✅ proved - complete|shostak|0.055|
|suffix_concatenate|✅ proved - complete|shostak|0.918|
|suffix?_suffix|✅ proved - complete|shostak|0.077|
|suffix_some|✅ proved - complete|shostak|0.141|
|suffix_every|✅ proved - complete|shostak|0.141|

## `csequence_subsequence`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|subsequence?_TCC1|✅ proved - complete|shostak|0.047|
|subsequence?_empty_left|✅ proved - complete|shostak|0.028|
|subsequence?_empty_right|✅ proved - complete|shostak|0.037|
|subsequence?_rest1|✅ proved - complete|shostak|0.235|
|subsequence?_rest2|✅ proved - complete|shostak|0.125|
|subsequence?_extensionality|✅ proved - complete|shostak|0.053|
|subsequence?_finite|✅ proved - complete|shostak|0.159|
|subsequence?_nth|✅ proved - complete|shostak|0.389|
|subsequence?_concatenate_left|✅ proved - complete|shostak|0.294|
|subsequence?_concatenate_right|✅ proved - complete|shostak|0.510|
|subsequence?_prefix|✅ proved - complete|shostak|0.229|
|subsequence?_suffix|✅ proved - complete|shostak|0.251|
|subsequence?_length|✅ proved - complete|shostak|0.424|
|subsequence?_length_eq|✅ proved - complete|shostak|0.559|
|subsequence?_is_preorder|✅ proved - complete|shostak|0.125|
|subsequence?_finite_antisymmetric|✅ proved - complete|shostak|0.105|
|prefix?_is_subsequence?|✅ proved - complete|shostak|0.070|
|suffix?_is_subsequence?|✅ proved - complete|shostak|0.055|
|subsequence?_some|✅ proved - complete|shostak|0.130|
|subsequence?_every|✅ proved - complete|shostak|0.035|
|subsequence_func_TCC1|✅ proved - complete|shostak|0.053|
|subsequence_func_TCC2|✅ proved - complete|shostak|0.044|
|subsequence_func_TCC3|✅ proved - complete|shostak|0.120|
|subsequence_func_TCC4|✅ proved - complete|shostak|0.047|
|subsequence_func_TCC5|✅ proved - complete|shostak|0.333|
|subsequence_func_TCC6|✅ proved - complete|shostak|0.046|
|subsequence_func_TCC7|✅ proved - complete|shostak|0.058|
|subsequence_func_monotonic|✅ proved - complete|shostak|0.596|
|subsequence_func_nth|✅ proved - complete|shostak|0.678|
|subsequence?_def|✅ proved - complete|shostak|0.333|

## `csequence_prefix`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|prefix?_TCC1|✅ proved - complete|shostak|0.037|
|prefix?_finite|✅ proved - complete|shostak|0.056|
|prefix?_infinite|✅ proved - complete|shostak|0.060|
|prefix?_empty|✅ proved - complete|shostak|0.018|
|prefix?_empty_is_prefix|✅ proved - complete|shostak|0.027|
|prefix?_first|✅ proved - complete|shostak|0.026|
|prefix?_rest|✅ proved - complete|shostak|0.027|
|prefix?_length|✅ proved - complete|shostak|0.132|
|prefix?_length_eq|✅ proved - complete|shostak|0.133|
|prefix?_index|✅ proved - complete|shostak|0.055|
|prefix?_nth_TCC1|✅ proved - complete|shostak|0.035|
|prefix?_nth|✅ proved - complete|shostak|0.176|
|prefix?_concatenate|✅ proved - complete|shostak|0.085|
|prefix?_def|✅ proved - complete|shostak|0.104|
|prefix?_is_partial_order|✅ proved - complete|shostak|0.153|
|prefix?_total_order|✅ proved - complete|shostak|0.198|
|prefix_TCC1|✅ proved - complete|shostak|0.027|
|prefix_TCC2|✅ proved - complete|shostak|0.036|
|prefix_TCC3|✅ proved - complete|shostak|0.045|
|prefix_TCC4|✅ proved - complete|shostak|0.020|
|prefix_TCC5|✅ proved - complete|shostak|0.036|
|prefix_0|✅ proved - complete|shostak|0.020|
|prefix_extract|✅ proved - complete|shostak|0.106|
|prefix_rest_TCC1|✅ proved - complete|shostak|0.000|
|prefix_rest|✅ proved - complete|shostak|0.150|
|prefix_prefix|✅ proved - complete|shostak|0.311|
|prefix_length|✅ proved - complete|shostak|0.202|
|prefix_index|✅ proved - complete|shostak|0.159|
|prefix_full|✅ proved - complete|shostak|0.093|
|prefix_concatenate_TCC1|✅ proved - complete|shostak|0.033|
|prefix_concatenate_TCC2|✅ proved - complete|shostak|0.046|
|prefix_concatenate|✅ proved - complete|shostak|1.272|
|prefix?_prefix|✅ proved - complete|shostak|0.355|
|prefix_some|✅ proved - complete|shostak|0.079|
|prefix_every|✅ proved - complete|shostak|0.072|
|prefix?_order|✅ proved - complete|shostak|0.169|

## `csequence_filter_map`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|map_first_p_TCC1|✅ proved - complete|shostak|0.035|
|map_first_p|✅ proved - complete|shostak|1.029|
|map_suffix_empty|✅ proved - complete|shostak|0.144|
|map_suffix|✅ proved - complete|shostak|0.095|
|filter_map|✅ proved - complete|shostak|0.848|

## `csequence_map_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|map_empty|✅ proved - complete|shostak|0.058|
|map_nonempty|✅ proved - complete|shostak|0.064|
|map_finite|✅ proved - complete|shostak|0.074|
|map_infinite|✅ proved - complete|shostak|0.144|
|map_first_TCC1|✅ proved - complete|shostak|0.034|
|map_first|✅ proved - complete|shostak|0.037|
|map_rest|✅ proved - complete|shostak|0.025|
|map_length|✅ proved - complete|shostak|0.156|
|map_index|✅ proved - complete|shostak|0.070|
|map_nth_TCC1|✅ proved - complete|shostak|0.024|
|map_nth|✅ proved - complete|shostak|0.187|
|map_add|✅ proved - complete|shostak|0.030|
|map_last_TCC1|✅ proved - complete|shostak|0.030|
|map_last|✅ proved - complete|shostak|0.099|
|map_map|✅ proved - complete|shostak|0.125|
|map_injective|✅ proved - complete|shostak|0.216|
|map_extensionality|✅ proved - complete|shostak|0.048|
|map_some|✅ proved - complete|shostak|0.134|
|map_every|✅ proved - complete|shostak|0.151|

## `csequence_finseq`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|from_finseq_TCC1|✅ proved - complete|shostak|0.026|
|from_finseq_TCC2|✅ proved - complete|shostak|0.035|
|from_finseq_TCC3|✅ proved - complete|shostak|0.027|
|from_finseq_TCC4|✅ proved - complete|shostak|0.030|
|from_finseq_TCC5|✅ proved - complete|shostak|0.028|
|from_finseq_length|✅ proved - complete|shostak|0.122|
|from_finseq_index|✅ proved - complete|shostak|0.044|
|from_finseq_nth_TCC1|✅ proved - complete|shostak|0.032|
|from_finseq_nth|✅ proved - complete|shostak|0.259|
|to_finseq_TCC1|✅ proved - complete|shostak|0.036|
|to_finseq_length|✅ proved - complete|shostak|0.035|
|to_finseq_index|✅ proved - complete|shostak|0.043|
|to_finseq_nth_TCC1|✅ proved - complete|shostak|0.045|
|to_finseq_nth|✅ proved - complete|shostak|0.027|
|to_from_finseq|✅ proved - complete|shostak|0.129|
|from_to_finseq|✅ proved - complete|shostak|0.073|

## `csequence_flatten`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|some_every_empty|✅ proved - complete|shostak|0.042|
|flatten_struct_TCC1|✅ proved - complete|shostak|0.045|
|flatten_struct_TCC2|✅ proved - complete|shostak|0.027|
|flatten_struct_TCC3|✅ proved - complete|shostak|0.037|
|flatten_struct_TCC4|✅ proved - complete|shostak|0.039|
|flatten_TCC1|✅ proved - complete|shostak|0.028|
|flatten_empty|✅ proved - complete|shostak|0.188|
|flatten_empty_cseq|✅ proved - complete|shostak|0.035|
|flatten_nonempty|✅ proved - complete|shostak|0.034|
|flatten_filter|✅ proved - complete|shostak|0.045|
|flatten_reduce_TCC1|✅ proved - complete|shostak|0.029|
|flatten_reduce|✅ proved - complete|shostak|0.046|
|flatten_rest_TCC1|✅ proved - complete|shostak|0.086|
|flatten_rest_TCC2|✅ proved - complete|shostak|0.180|
|flatten_rest|✅ proved - complete|shostak|0.565|
|flatten_rest2_TCC1|✅ proved - complete|shostak|0.038|
|flatten_rest2_TCC2|✅ proved - complete|shostak|0.038|
|flatten_rest2|✅ proved - complete|shostak|0.442|
|flatten_first|✅ proved - complete|shostak|0.203|
|flatten_suffix|✅ proved - complete|shostak|0.263|
|flatten_concatenate|✅ proved - complete|shostak|0.481|
|flatten_rest_suffix_TCC1|✅ proved - complete|shostak|0.026|
|flatten_rest_suffix_TCC2|✅ proved - complete|shostak|0.063|
|flatten_rest_suffix|✅ proved - complete|shostak|0.000|
|flatten_finite|✅ proved - complete|shostak|0.675|
|flatten_infinite|✅ proved - complete|shostak|0.044|
|length_of_flatten_TCC1|✅ proved - complete|shostak|0.035|
|length_of_flatten_TCC2|✅ proved - complete|shostak|0.034|
|length_of_flatten_TCC3|✅ proved - complete|shostak|0.047|
|length_of_flatten_TCC4|✅ proved - complete|shostak|0.157|
|length_of_flatten_TCC5|✅ proved - complete|shostak|0.170|
|length_of_flatten_add_TCC1|✅ proved - complete|shostak|0.036|
|length_of_flatten_add|✅ proved - complete|shostak|0.522|
|flatten_length|✅ proved - complete|shostak|0.418|
|flatten_some|✅ proved - complete|shostak|0.272|
|flatten_some_finite|✅ proved - complete|shostak|0.094|
|flatten_every|✅ proved - complete|shostak|0.284|
|flatten_every_finite|✅ proved - complete|shostak|0.094|

## `csequence_prefix_suffix`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|prefix_suffix_eta|✅ proved - complete|shostak|0.112|
|prefix_suffix_extensionality|✅ proved - complete|shostak|0.061|

## `csequence_generate`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|generate_TCC1|✅ proved - complete|shostak|0.101|
|generate_first|✅ proved - complete|shostak|0.056|
|generate_rest|✅ proved - complete|shostak|0.062|
|generate_nth_TCC1|✅ proved - complete|shostak|0.027|
|generate_nth|✅ proved - complete|shostak|0.098|
|generate_add|✅ proved - complete|shostak|0.069|
|generate_some|✅ proved - complete|shostak|0.043|
|generate_every|✅ proved - complete|shostak|0.053|

## `csequence_generate_limit`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|generate_empty|✅ proved - complete|shostak|0.067|
|generate_first_TCC1|✅ proved - complete|shostak|0.037|
|generate_first|✅ proved - complete|shostak|0.081|
|generate_rest|✅ proved - complete|shostak|0.092|
|generate_has_length|✅ proved - complete|shostak|0.430|
|generate_finite|✅ proved - complete|shostak|0.073|
|generate_nth|✅ proved - complete|shostak|0.266|
|generate_add|✅ proved - complete|shostak|0.072|
|generate_some|✅ proved - complete|shostak|0.045|
|generate_every|✅ proved - complete|shostak|0.044|

## `csequence_induction`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|cseq_induction|✅ proved - complete|shostak|0.125|
|cseq_infinite_induction_TCC1|✅ proved - complete|shostak|0.030|
|cseq_infinite_induction_TCC2|✅ proved - complete|shostak|0.032|
|cseq_infinite_induction_TCC3|✅ proved - complete|shostak|0.046|
|cseq_infinite_induction|✅ proved - complete|shostak|0.073|
|CSEQ_induction|✅ proved - complete|shostak|0.147|
|CSEQ_infinite_induction_TCC1|✅ proved - complete|shostak|0.025|
|CSEQ_infinite_induction_TCC2|✅ proved - complete|shostak|0.035|
|CSEQ_infinite_induction|✅ proved - complete|shostak|0.044|
|finite_sequence_induction|✅ proved - complete|shostak|0.045|
|FINITE_SEQUENCE_induction|✅ proved - complete|shostak|0.058|
|sequence_induction|✅ proved - complete|shostak|0.034|
|SEQUENCE_induction|✅ proved - complete|shostak|0.037|

## `csequence_insert_remove`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|insert_remove_eta|✅ proved - complete|shostak|0.163|

## `csequence_remove`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|remove_TCC1|✅ proved - complete|shostak|0.042|
|remove_TCC2|✅ proved - complete|shostak|0.035|
|remove_TCC3|✅ proved - complete|shostak|0.035|
|remove_TCC4|✅ proved - complete|shostak|0.020|
|remove_finite|✅ proved - complete|shostak|0.059|
|remove_infinite|✅ proved - complete|shostak|0.057|
|remove_0|✅ proved - complete|shostak|0.020|
|remove_empty|✅ proved - complete|shostak|0.046|
|remove_nonempty|✅ proved - complete|shostak|0.044|
|remove_first_TCC1|✅ proved - complete|shostak|0.037|
|remove_first_TCC2|✅ proved - complete|shostak|0.028|
|remove_first_TCC3|✅ proved - complete|shostak|0.037|
|remove_first|✅ proved - complete|shostak|0.039|
|remove_rest_TCC1|✅ proved - complete|shostak|0.037|
|remove_rest_TCC2|✅ proved - complete|shostak|0.049|
|remove_rest|✅ proved - complete|shostak|0.209|
|remove_upfrom_length|✅ proved - complete|shostak|0.155|
|remove_length|✅ proved - complete|shostak|0.184|
|remove_index|✅ proved - complete|shostak|0.176|
|remove_nth_TCC1|✅ proved - complete|shostak|0.129|
|remove_nth|✅ proved - complete|shostak|0.251|
|remove_add|✅ proved - complete|shostak|0.027|
|remove_last_TCC1|✅ proved - complete|shostak|0.102|
|remove_last_TCC2|✅ proved - complete|shostak|0.033|
|remove_last|✅ proved - complete|shostak|1.014|
|remove_remove_TCC1|✅ proved - complete|shostak|0.037|
|remove_remove|✅ proved - complete|shostak|0.356|
|remove_extensionality|✅ proved - complete|shostak|0.270|
|remove_some|✅ proved - complete|shostak|0.209|
|remove_every|✅ proved - complete|shostak|0.061|

## `csequence_length_comp`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|length_lt_le|✅ proved - complete|shostak|0.035|
|length_gt_ge|✅ proved - complete|shostak|0.046|
|length_eq_le|✅ proved - complete|shostak|0.044|
|length_eq_ge|✅ proved - complete|shostak|0.038|
|length_lt_neq|✅ proved - complete|shostak|0.047|
|length_gt_neq|✅ proved - complete|shostak|0.038|
|length_eq_empty|✅ proved - complete|shostak|0.074|
|length_eq_rest|✅ proved - complete|shostak|0.076|

## `csequence_limit`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|prefix_chain_TCC1|✅ proved - complete|shostak|0.064|
|suffix_chain_TCC1|✅ proved - complete|shostak|0.188|
|rest_chain_TCC1|✅ proved - complete|shostak|0.040|
|rest_chain_TCC2|✅ proved - complete|shostak|0.123|
|ascending_chain?_nth|✅ proved - complete|shostak|0.048|
|limit_struct_TCC1|✅ proved - complete|shostak|0.083|
|limit_struct_TCC2|✅ proved - complete|shostak|0.054|
|limit_empty|✅ proved - complete|shostak|0.131|
|limit_nonempty|✅ proved - complete|shostak|0.063|
|limit_first_TCC1|✅ proved - complete|shostak|0.026|
|limit_first|✅ proved - complete|shostak|0.000|
|limit_rest_chain|✅ proved - complete|shostak|0.239|
|limit_suffix_chain|✅ proved - complete|shostak|1.015|
|limit_lub|✅ proved - complete|shostak|0.442|
|limit_nth|✅ proved - complete|shostak|0.060|
|limit_def|✅ proved - complete|shostak|0.400|
|limit_prefix_chain|✅ proved - complete|shostak|0.121|
|limit_prefix_compact_TCC1|✅ proved - complete|shostak|0.046|
|limit_prefix_compact|✅ proved - complete|shostak|0.369|
|limit_finite_compact|✅ proved - complete|shostak|0.140|
|continuous?_infinite|✅ proved - complete|shostak|0.040|

## `csequence_list`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|from_list_TCC1|✅ proved - complete|shostak|0.036|
|from_list_TCC2|✅ proved - complete|shostak|0.037|
|from_list_TCC3|✅ proved - complete|shostak|0.030|
|from_list_length|✅ proved - complete|shostak|0.051|
|from_list_index|✅ proved - complete|shostak|0.107|
|from_list_nth_TCC1|✅ proved - complete|shostak|0.035|
|from_list_nth|✅ proved - complete|shostak|0.122|
|to_list_TCC1|✅ proved - complete|shostak|0.037|
|to_list_TCC2|✅ proved - complete|shostak|0.026|
|to_list_TCC3|✅ proved - complete|shostak|0.072|
|to_list_length|✅ proved - complete|shostak|0.101|
|to_list_index|✅ proved - complete|shostak|0.143|
|to_list_nth_TCC1|✅ proved - complete|shostak|0.027|
|to_list_nth|✅ proved - complete|shostak|0.141|
|to_from_list|✅ proved - complete|shostak|0.048|
|from_to_list|✅ proved - complete|shostak|0.062|

## `csequence_map_composition`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|map_composition|✅ proved - complete|shostak|0.286|

## `csequence_merge`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|merge_struct_TCC1|✅ proved - complete|shostak|0.033|
|merge_struct_TCC2|✅ proved - complete|shostak|0.027|
|merge_empty|✅ proved - complete|shostak|0.122|
|merge_nonempty|✅ proved - complete|shostak|0.121|
|merge_empty_left|✅ proved - complete|shostak|0.469|
|merge_empty_right|✅ proved - complete|shostak|0.481|
|merge_first_TCC1|✅ proved - complete|shostak|0.028|
|merge_first|✅ proved - complete|shostak|0.144|
|merge_rest|✅ proved - complete|shostak|0.111|
|merge_finite|✅ proved - complete|shostak|0.132|
|merge_finiteness|✅ proved - complete|shostak|0.137|
|merge_infinite1|✅ proved - complete|shostak|0.025|
|merge_infinite2|✅ proved - complete|shostak|0.031|
|merge_length|✅ proved - complete|shostak|0.297|
|merge_index_TCC1|✅ proved - complete|shostak|0.043|
|merge_index|✅ proved - complete|shostak|0.213|
|merge_nth_TCC1|✅ proved - complete|shostak|0.053|
|merge_nth_TCC2|✅ proved - complete|shostak|0.089|
|merge_nth_TCC3|✅ proved - complete|shostak|0.055|
|merge_nth_TCC4|✅ proved - complete|shostak|0.291|
|merge_nth_TCC5|✅ proved - complete|shostak|0.419|
|merge_nth_TCC6|✅ proved - complete|shostak|1.202|
|merge_nth|✅ proved - complete|shostak|8.224|
|merge_add|✅ proved - complete|shostak|0.087|
|merge_last_TCC1|✅ proved - complete|shostak|0.041|
|merge_last_TCC2|✅ proved - complete|shostak|0.047|
|merge_last|✅ proved - complete|shostak|0.619|
|merge_extensionality|✅ proved - complete|shostak|0.129|
|merge_some|✅ proved - complete|shostak|0.545|
|merge_every|✅ proved - complete|shostak|0.052|

## `csequence_merge_split`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|merge_split_eta|✅ proved - complete|shostak|0.306|
|split_merge_eta|✅ proved - complete|shostak|1.318|

## `csequence_split`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|split_left_struct_TCC1|✅ proved - complete|shostak|0.038|
|split_left_struct_TCC2|✅ proved - complete|shostak|0.028|
|split_empty_left|✅ proved - complete|shostak|0.122|
|split_empty_right|✅ proved - complete|shostak|0.104|
|split_nonempty_left|✅ proved - complete|shostak|0.112|
|split_nonempty_right|✅ proved - complete|shostak|0.103|
|split_first_left_TCC1|✅ proved - complete|shostak|0.037|
|split_first_left|✅ proved - complete|shostak|0.086|
|split_first_right_TCC1|✅ proved - complete|shostak|0.029|
|split_first_right|✅ proved - complete|shostak|0.115|
|split_rest_left_TCC1|✅ proved - complete|shostak|0.039|
|split_rest_left|✅ proved - complete|shostak|0.142|
|split_rest_right|✅ proved - complete|shostak|0.143|
|split_rest_swap_left|✅ proved - complete|shostak|0.641|
|split_rest_swap_right|✅ proved - complete|shostak|0.735|
|split_finite|✅ proved - complete|shostak|0.168|
|split_infinite|✅ proved - complete|shostak|0.275|
|split_length_left|✅ proved - complete|shostak|0.345|
|split_length_right|✅ proved - complete|shostak|0.333|
|split_length|✅ proved - complete|shostak|0.201|
|split_index_left|✅ proved - complete|shostak|0.118|
|split_index_right|✅ proved - complete|shostak|0.173|
|split_nth_left_TCC1|✅ proved - complete|shostak|0.051|
|split_nth_left|✅ proved - complete|shostak|0.354|
|split_nth_right_TCC1|✅ proved - complete|shostak|0.113|
|split_nth_right|✅ proved - complete|shostak|0.461|
|split_add|✅ proved - complete|shostak|1.217|
|split_last_left_TCC1|✅ proved - complete|shostak|0.027|
|split_last_left_TCC2|✅ proved - complete|shostak|0.116|
|split_last_left|✅ proved - complete|shostak|0.345|
|split_last_right_TCC1|✅ proved - complete|shostak|0.030|
|split_last_right_TCC2|✅ proved - complete|shostak|0.105|
|split_last_right|✅ proved - complete|shostak|0.342|
|split_extensionality|✅ proved - complete|shostak|0.135|
|split_some|✅ proved - complete|shostak|0.223|
|split_every|✅ proved - complete|shostak|0.051|

## `csequence_prefix_append`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|prefix_append_eta|✅ proved - complete|shostak|0.324|

## `csequence_rest`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|rest_finite|✅ proved - complete|shostak|0.030|
|rest_infinite|✅ proved - complete|shostak|0.024|
|rest_empty_add|✅ proved - complete|shostak|0.039|
|rest_empty|✅ proved - complete|shostak|0.076|
|rest_nonempty|✅ proved - complete|shostak|0.113|
|rest_first_TCC1|✅ proved - complete|shostak|0.028|
|rest_first|✅ proved - complete|shostak|0.038|
|rest_length|✅ proved - complete|shostak|0.029|
|rest_index|✅ proved - complete|shostak|0.029|
|rest_nth_TCC1|✅ proved - complete|shostak|0.030|
|rest_nth|✅ proved - complete|shostak|0.029|
|rest_some|✅ proved - complete|shostak|0.029|
|rest_every|✅ proved - complete|shostak|0.028|

## `csequence_reverse`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|reverse_TCC1|✅ proved - complete|shostak|0.038|
|reverse_TCC2|✅ proved - complete|shostak|0.029|
|reverse_TCC3|✅ proved - complete|shostak|0.076|
|reverse_empty|✅ proved - complete|shostak|0.037|
|reverse_nonempty|✅ proved - complete|shostak|0.048|
|reverse_first_TCC1|✅ proved - complete|shostak|0.028|
|reverse_first|✅ proved - complete|shostak|0.259|
|reverse_last|✅ proved - complete|shostak|0.026|
|reverse_length|✅ proved - complete|shostak|0.130|
|reverse_index|✅ proved - complete|shostak|0.058|
|reverse_nth_TCC1|✅ proved - complete|shostak|0.058|
|reverse_nth|✅ proved - complete|shostak|0.458|
|reverse_add1|✅ proved - complete|shostak|0.370|
|reverse_add2_TCC1|✅ proved - complete|shostak|0.028|
|reverse_add2|✅ proved - complete|shostak|0.030|
|reverse_reverse|✅ proved - complete|shostak|0.134|
|reverse_extensionality|✅ proved - complete|shostak|0.141|
|reverse_some|✅ proved - complete|shostak|0.179|
|reverse_every|✅ proved - complete|shostak|0.033|

## `csequence_sequence`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|from_sequence_TCC1|✅ proved - complete|shostak|0.122|
|from_sequence_nth_TCC1|✅ proved - complete|shostak|0.027|
|from_sequence_nth|✅ proved - complete|shostak|0.115|
|to_sequence_TCC1|✅ proved - complete|shostak|0.029|
|to_sequence_nth|✅ proved - complete|shostak|0.027|
|to_from_sequence|✅ proved - complete|shostak|0.028|
|from_to_sequence|✅ proved - complete|shostak|0.000|

## `csequence_strict_prefix`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|strict_prefix?_TCC1|✅ proved - complete|shostak|0.048|
|strict_prefix?_prefix?|✅ proved - complete|shostak|0.164|
|strict_prefix?_finite|✅ proved - complete|shostak|0.044|
|strict_prefix?_first_TCC1|✅ proved - complete|shostak|0.037|
|strict_prefix?_first|✅ proved - complete|shostak|0.038|
|strict_prefix?_rest|✅ proved - complete|shostak|0.038|
|strict_prefix?_length_TCC1|✅ proved - complete|shostak|0.037|
|strict_prefix?_length|✅ proved - complete|shostak|0.055|
|strict_prefix?_index|✅ proved - complete|shostak|0.035|
|strict_prefix?_nth_TCC1|✅ proved - complete|shostak|0.035|
|strict_prefix?_nth|✅ proved - complete|shostak|0.046|
|strict_prefix?_concatenate|✅ proved - complete|shostak|0.078|
|strict_prefix?_def|✅ proved - complete|shostak|0.155|
|strict_prefix?_is_strict_order|✅ proved - complete|shostak|0.110|
|strict_prefix?_well_ordered|✅ proved - complete|shostak|0.216|
|strict_prefix?_prefix|✅ proved - complete|shostak|0.186|

## `csequence_unzip`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|unzip_left_struct_TCC1|✅ proved - complete|shostak|0.036|
|unzip_finite|✅ proved - complete|shostak|0.264|
|unzip_infinite|✅ proved - complete|shostak|0.307|
|unzip_nonempty|✅ proved - complete|shostak|0.113|
|unzip_empty_left|✅ proved - complete|shostak|0.086|
|unzip_empty_right|✅ proved - complete|shostak|0.076|
|unzip_first_left|✅ proved - complete|shostak|0.066|
|unzip_first_right|✅ proved - complete|shostak|0.066|
|unzip_rest_left|✅ proved - complete|shostak|0.066|
|unzip_rest_right|✅ proved - complete|shostak|0.077|
|unzip_length_left|✅ proved - complete|shostak|0.227|
|unzip_length_right|✅ proved - complete|shostak|0.224|
|unzip_index_left|✅ proved - complete|shostak|0.071|
|unzip_index_right|✅ proved - complete|shostak|0.071|
|unzip_nth_left_TCC1|✅ proved - complete|shostak|0.025|
|unzip_nth_left|✅ proved - complete|shostak|0.336|
|unzip_nth_right_TCC1|✅ proved - complete|shostak|0.038|
|unzip_nth_right|✅ proved - complete|shostak|0.335|
|unzip_map|✅ proved - complete|shostak|0.545|
|unzip_extensionality|✅ proved - complete|shostak|0.974|
|unzip_add|✅ proved - complete|shostak|0.140|
|unzip_last_left_TCC1|✅ proved - complete|shostak|0.027|
|unzip_last_left|✅ proved - complete|shostak|0.074|
|unzip_last_right_TCC1|✅ proved - complete|shostak|0.029|
|unzip_last_right|✅ proved - complete|shostak|0.084|
|unzip_some|✅ proved - complete|shostak|0.162|
|unzip_every|✅ proved - complete|shostak|0.164|

## `csequence_zip`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|zip_struct_TCC1|✅ proved - complete|shostak|0.038|
|zip_struct_TCC2|✅ proved - complete|shostak|0.029|
|zip_finite1|✅ proved - complete|shostak|0.175|
|zip_finite2|✅ proved - complete|shostak|0.188|
|zip_infinite|✅ proved - complete|shostak|0.154|
|zip_nonempty|✅ proved - complete|shostak|0.084|
|zip_empty|✅ proved - complete|shostak|0.106|
|zip_first|✅ proved - complete|shostak|0.076|
|zip_rest|✅ proved - complete|shostak|0.085|
|zip_add|✅ proved - complete|shostak|0.086|
|zip_length_TCC1|✅ proved - complete|shostak|0.028|
|zip_length|✅ proved - complete|shostak|1.040|
|zip_index|✅ proved - complete|shostak|0.380|
|zip_nth_TCC1|✅ proved - complete|shostak|0.039|
|zip_nth_TCC2|✅ proved - complete|shostak|0.036|
|zip_nth|✅ proved - complete|shostak|0.447|
|zip_last_TCC1|✅ proved - complete|shostak|0.060|
|zip_last_TCC2|✅ proved - complete|shostak|0.051|
|zip_last_TCC3|✅ proved - complete|shostak|0.135|
|zip_last_TCC4|✅ proved - complete|shostak|0.071|
|zip_last_TCC5|✅ proved - complete|shostak|0.142|
|zip_last_TCC6|✅ proved - complete|shostak|0.061|
|zip_last_TCC7|✅ proved - complete|shostak|0.054|
|zip_last_TCC8|✅ proved - complete|shostak|0.046|
|zip_last_TCC9|✅ proved - complete|shostak|0.086|
|zip_last|✅ proved - complete|shostak|0.309|
|zip_extensionality|✅ proved - complete|shostak|0.808|
|zip_some_TCC1|✅ proved - complete|shostak|0.072|
|zip_some_TCC2|✅ proved - complete|shostak|0.065|
|zip_some_TCC3|✅ proved - complete|shostak|0.065|
|zip_some|✅ proved - complete|shostak|0.477|
|zip_every_TCC1|✅ proved - complete|shostak|0.071|
|zip_every|✅ proved - complete|shostak|0.487|

## `csequence_zip_unzip`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|zip_unzip_eta|✅ proved - complete|shostak|1.562|
|unzip_zip_eta|✅ proved - complete|shostak|0.412|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib/pvsio_utils/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230712-static-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230710-tcc-gen.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230707-defattach.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230706-extrategies.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`|
