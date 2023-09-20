# Summary for `aviation`
Run started at 0:27:54 9/20/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **484**   | **484**    | **484**    | **0**  | **9:27.902 s**   |
|top|0|0|0|0|0.000|
|ECEF|18|18|18|0|13.496|
|error_proj|40|40|40|0|1:45.647|
|units|3|3|3|0|0.190|
|util|14|14|14|0|6.801|
|track_3D|5|5|5|0|0.136|
|track|22|22|22|0|12.797|
|simple_motion|11|11|11|0|1.895|
|simple_motion_props|24|24|24|0|9.441|
|motion|23|23|23|0|2.809|
|kinematics_turn|38|38|38|0|12.571|
|Velocity|10|10|10|0|0.848|
|gen_turn|32|32|32|0|44.810|
|turn_derivation|10|10|10|0|1.402|
|kinematics_vs_accel|12|12|12|0|19.823|
|vsAccel|53|53|53|0|1:17.529|
|gen_vert|3|3|3|0|0.560|
|vsLevelOut|42|42|42|0|3:37.045|
|gsAccel|19|19|19|0|3.457|
|kinematics_gs_accel|9|9|9|0|24.246|
|NavPoint3D|5|5|5|0|0.429|
|KinematicPlan|53|53|53|0|6.526|
|LatLonAlt|1|1|1|0|0.010|
|GreatCircle|8|8|8|0|2.560|
|ENU|0|0|0|0|0.000|
|Kinematics|1|1|1|0|0.300|
|VectFuns|1|1|1|0|0.150|
|Position|0|0|0|0|0.000|
|NavPoint|7|7|7|0|0.518|
|KinematicsPosition|1|1|1|0|0.030|
|TcpData|0|0|0|0|0.000|
|Plan|19|19|19|0|1.876|
## Detailed Summary 
## `top`
No formula declaration found.
## `ECEF`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|spherical2xyz_TCC1|✅ proved - incomplete|shostak|0.783|
|spherical2xyz_norm|✅ proved - incomplete|shostak|0.728|
|sin_acos_ecef_TCC1|✅ proved - complete|shostak|0.060|
|sin_acos_ecef_TCC2|✅ proved - incomplete|shostak|0.297|
|sin_acos_ecef|✅ proved - incomplete|shostak|0.462|
|xyz2spherical_TCC1|✅ proved - complete|shostak|0.020|
|xyz2spherical_TCC2|✅ proved - incomplete|shostak|0.229|
|xyz2spherical_TCC3|✅ proved - incomplete|shostak|0.060|
|xyz2spherical_TCC4|✅ proved - incomplete|shostak|0.230|
|xyz2spherical_TCC5|✅ proved - incomplete|shostak|0.453|
|xyz2spherical_TCC6|✅ proved - incomplete|shostak|0.322|
|xyz2spherical_TCC7|✅ proved - incomplete|shostak|0.429|
|xyz2spherical_TCC8|✅ proved - incomplete|shostak|1.236|
|xyz2spherical_TCC9|✅ proved - incomplete|shostak|0.395|
|xyz2spherical_TCC10|✅ proved - incomplete|shostak|0.506|
|spherical2xyz_def_TCC1|✅ proved - incomplete|shostak|0.144|
|spherical2xyz_def|✅ proved - incomplete|shostak|4.232|
|xyz2spherical_def|✅ proved - incomplete|shostak|2.910|

## `error_proj`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|tangent_error_basic|✅ proved - incomplete|shostak|0.240|
|lift_to_surface_TCC1|✅ proved - incomplete|shostak|0.920|
|norm_lem|✅ proved - incomplete|shostak|0.204|
|norm_Rc_lt_const|✅ proved - incomplete|shostak|0.000|
|tri_ineq_Rc|✅ proved - incomplete|shostak|0.501|
|error_valid?_TCC1|✅ proved - incomplete|shostak|1.776|
|error_valid_simple?_TCC1|✅ proved - incomplete|shostak|0.190|
|error_valid_simple?_TCC2|✅ proved - incomplete|shostak|0.060|
|error_valid_simple_def|✅ proved - incomplete|shostak|5.202|
|error_valid_simple_edgebound_def|✅ proved - incomplete|shostak|7.193|
|sphere_to_2D_plane_error_reduction|✅ proved - incomplete|shostak|0.956|
|sphere_to_2D_plane_error_reduction_edgebound|✅ proved - incomplete|shostak|7.434|
|sphere_to_2D_plane_error_simple_27780|✅ proved - incomplete|shostak|3.086|
|sphere_to_2D_plane_error_simple_1852|✅ proved - incomplete|shostak|3.082|
|sphere_to_2D_plane_error_simple_3704|✅ proved - incomplete|shostak|2.996|
|sphere_to_2D_plane_error_simple_5556|✅ proved - incomplete|shostak|3.102|
|sphere_to_2D_plane_error_simple_7408|✅ proved - incomplete|shostak|3.108|
|sphere_to_2D_plane_error_simple_9260|✅ proved - incomplete|shostak|3.041|
|sphere_to_2D_plane_error_simple_11112|✅ proved - incomplete|shostak|0.000|
|sphere_to_2D_plane_error_simple_12964|✅ proved - incomplete|shostak|3.226|
|sphere_to_2D_plane_error_simple_14816|✅ proved - incomplete|shostak|3.156|
|sphere_to_2D_plane_error_simple_16668|✅ proved - incomplete|shostak|3.337|
|sphere_to_2D_plane_error_simple_18520|✅ proved - incomplete|shostak|3.088|
|sphere_to_2D_plane_error_simple_20372|✅ proved - incomplete|shostak|3.114|
|sphere_to_2D_plane_error_simple_22224|✅ proved - incomplete|shostak|3.122|
|sphere_to_2D_plane_error_simple_24076|✅ proved - incomplete|shostak|3.122|
|sphere_to_2D_plane_error_simple_25928|✅ proved - incomplete|shostak|3.131|
|sphere_to_2D_plane_error_simple_37040|✅ proved - incomplete|shostak|3.111|
|sphere_to_2D_plane_error_simple_46300|✅ proved - incomplete|shostak|2.891|
|sphere_to_2D_plane_error_simple_55560|✅ proved - incomplete|shostak|3.129|
|sphere_to_2D_plane_error_simple_64820|✅ proved - incomplete|shostak|2.921|
|sphere_to_2D_plane_error_simple_74080|✅ proved - incomplete|shostak|3.129|
|sphere_to_2D_plane_error_simple_83340|✅ proved - incomplete|shostak|3.150|
|sphere_to_2D_plane_error_simple_92600|✅ proved - incomplete|shostak|2.890|
|sphere_to_2D_plane_error_simple_111120|✅ proved - incomplete|shostak|3.129|
|sphere_to_2D_plane_error_simple_129640|✅ proved - incomplete|shostak|3.030|
|sphere_to_2D_plane_error_simple_148160|✅ proved - incomplete|shostak|0.000|
|sphere_to_2D_plane_error_simple_166680|✅ proved - incomplete|shostak|3.062|
|sphere_to_2D_plane_error_simple_185200|✅ proved - incomplete|shostak|3.094|
|sphere_to_2D_plane_error_simple_185200_27780|✅ proved - incomplete|shostak|3.724|

## `units`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|ex0|✅ proved - complete|shostak|0.070|
|ex1|✅ proved - complete|shostak|0.060|
|ex2|✅ proved - complete|shostak|0.060|

## `util`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|util_turnDelta_TCC1|✅ proved - incomplete|shostak|0.250|
|cos_util_turnDelta|✅ proved - incomplete|shostak|1.071|
|sin_util_turnDelta|✅ proved - incomplete|shostak|1.672|
|util_turnDelta_TCC2|✅ proved - incomplete|shostak|0.180|
|util_turnDelta_TCC3|✅ proved - incomplete|shostak|0.165|
|util_turnDelta_TCC4|✅ proved - incomplete|shostak|0.180|
|mkAlt_TCC1|✅ proved - complete|shostak|0.020|
|Vect3_TCC1|✅ proved - complete|shostak|0.030|
|Hat_TCC1|✅ proved - incomplete|shostak|0.030|
|Hat_TCC2|✅ proved - incomplete|shostak|0.030|
|Hat_TCC3|✅ proved - incomplete|shostak|0.089|
|Hat_TCC4|✅ proved - incomplete|shostak|0.750|
|cos_turnDelta|✅ proved - incomplete|shostak|0.784|
|sin_turnDelta|✅ proved - incomplete|shostak|1.550|

## `track_3D`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|nzhVect3_TCC1|✅ proved - incomplete|shostak|0.030|
|track_TCC1|✅ proved - incomplete|shostak|0.030|
|ground_speed_nzv|✅ proved - incomplete|shostak|0.020|
|sin_track|✅ proved - incomplete|shostak|0.026|
|cos_track|✅ proved - incomplete|shostak|0.030|

## `track`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|trkgs2vectz_nonzero|✅ proved - incomplete|shostak|0.258|
|trkgs2vect_TCC1|✅ proved - incomplete|shostak|0.030|
|trkgs2vectz_eq|✅ proved - incomplete|shostak|0.020|
|track_TCC1|✅ proved - incomplete|shostak|0.030|
|sin_track|✅ proved - incomplete|shostak|0.000|
|cos_track|✅ proved - incomplete|shostak|0.000|
|norm_id|✅ proved - incomplete|shostak|0.266|
|track_id|✅ proved - incomplete|shostak|0.090|
|trkgs2vectz_id|✅ proved - incomplete|shostak|0.070|
|trkgs2vect_id|✅ proved - incomplete|shostak|0.020|
|track_scal|✅ proved - incomplete|shostak|0.613|
|ordered_eps_1_TCC1|✅ proved - incomplete|shostak|0.416|
|ordered_eps_1|✅ proved - incomplete|shostak|2.415|
|ordered_det_ge|✅ proved - incomplete|shostak|2.239|
|ordered_eps_neg_1|✅ proved - incomplete|shostak|0.354|
|ordered_eps_1_dot_gt_0|✅ proved - incomplete|shostak|0.000|
|ordered_eps_1_dot_ge_0|✅ proved - incomplete|shostak|3.104|
|ordered_eps_1_dot_lt_0|✅ proved - incomplete|shostak|1.238|
|ordered_eps_1_dot_le_0|✅ proved - incomplete|shostak|1.236|
|trk_TCC1|✅ proved - incomplete|shostak|0.150|
|trk_TCC2|✅ proved - incomplete|shostak|0.030|
|add_track_TCC1|✅ proved - incomplete|shostak|0.218|

## `simple_motion`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|accelUntil_param_TCC1|✅ proved - complete|shostak|0.100|
|accelUntil_param_TCC2|✅ proved - complete|shostak|0.153|
|posUntilRamp_comp_TCC1|✅ proved - complete|shostak|0.020|
|posUntilRamp_comp_TCC2|✅ proved - complete|shostak|0.020|
|posUntilRamp_comp_TCC3|✅ proved - complete|shostak|0.020|
|posUntilRamp_comp_TCC4|✅ proved - complete|shostak|0.020|
|posUntilRamp_comp_TCC5|✅ proved - complete|shostak|0.020|
|posUntilRamp_comp_TCC6|✅ proved - complete|shostak|0.050|
|posUntilRamp_comp_TCC7|✅ proved - complete|shostak|0.040|
|accelUntilRamp_TCC1|✅ proved - incomplete|shostak|0.726|
|accelUntilRamp_TCC2|✅ proved - incomplete|shostak|0.726|

## `simple_motion_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_integral_split_fun_TCC1|✅ proved - complete|shostak|0.164|
|IMP_integral_split_fun_TCC2|✅ proved - complete|shostak|0.040|
|IMP_integral_split_fun_TCC3|✅ proved - complete|shostak|0.040|
|accel_int?|✅ proved - incomplete|shostak|0.110|
|vel_fnd_TCC1|✅ proved - incomplete|shostak|0.088|
|vel_equal|✅ proved - incomplete|shostak|0.196|
|vel_int?|✅ proved - incomplete|shostak|0.172|
|pos_fnd_TCC1|✅ proved - incomplete|shostak|0.168|
|pos_equal|✅ proved - incomplete|shostak|0.304|
|accelUntil_int?|✅ proved - incomplete|shostak|0.260|
|velUntil_fnd_TCC1|✅ proved - incomplete|shostak|0.020|
|velUntil_equal|✅ proved - incomplete|shostak|0.515|
|velUntil_int?|✅ proved - incomplete|shostak|0.475|
|posUntil_fnd_TCC1|✅ proved - incomplete|shostak|0.026|
|posUntil_equal|✅ proved - incomplete|shostak|1.041|
|accelUntil_reach_goal|✅ proved - complete|shostak|0.255|
|accelUntilRamp_int?|✅ proved - incomplete|shostak|0.502|
|velUntilRamp_fnd_TCC1|✅ proved - incomplete|shostak|0.020|
|velUntilRamp_equal|✅ proved - incomplete|shostak|1.081|
|velUntilRamp_int?|✅ proved - incomplete|shostak|1.702|
|posUntilRamp_fnd_TCC1|✅ proved - incomplete|shostak|0.020|
|posUntilRamp_equal|✅ proved - incomplete|shostak|0.000|
|accelUntilRamp_param_ordered|✅ proved - incomplete|shostak|1.079|
|accelUntilRamp_reach_goal|✅ proved - incomplete|shostak|1.163|

## `motion`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|deriv_domain|✅ proved - incomplete|shostak|0.030|
|Rate_fun_TCC1|✅ proved - incomplete|shostak|0.020|
|Rate_fun_TCC2|✅ proved - incomplete|shostak|0.020|
|integrable_Rate_fun_TCC1|✅ proved - incomplete|shostak|0.010|
|integrable_Rate_fun|✅ proved - incomplete|shostak|0.040|
|derivable_integral_Rate_fun_TCC1|✅ proved - incomplete|shostak|0.044|
|derivable_integral_Rate_fun|✅ proved - incomplete|shostak|0.210|
|integrate_TCC1|✅ proved - incomplete|shostak|0.009|
|integrate2_TCC1|✅ proved - incomplete|shostak|0.040|
|integrate2_TCC2|✅ proved - incomplete|shostak|0.239|
|derive2_TCC1|✅ proved - incomplete|shostak|0.020|
|speed_TCC1|✅ proved - incomplete|shostak|0.020|
|speed_TCC2|✅ proved - incomplete|shostak|0.020|
|speed_TCC3|✅ proved - incomplete|shostak|0.020|
|position_TCC1|✅ proved - incomplete|shostak|0.040|
|position_TCC2|✅ proved - incomplete|shostak|0.020|
|no_accel_TCC1|✅ proved - incomplete|shostak|0.040|
|const_accel_TCC1|✅ proved - incomplete|shostak|0.080|
|linear_accel_TCC1|✅ proved - incomplete|shostak|0.115|
|const_accel_speed|✅ proved - incomplete|shostak|0.181|
|zero_accel_speed|✅ proved - incomplete|shostak|0.020|
|zero_accel_pos|✅ proved - incomplete|shostak|0.294|
|const_accel_pos|✅ proved - incomplete|shostak|1.277|

## `kinematics_turn`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|linear_preserves_gs|✅ proved - incomplete|shostak|0.020|
|linear_preserves_vs|✅ proved - complete|shostak|0.024|
|linear_preserves_track_TCC1|✅ proved - incomplete|shostak|0.020|
|linear_preserves_track|✅ proved - incomplete|shostak|0.030|
|turnRadius_TCC1|✅ proved - incomplete|shostak|0.806|
|turnRadius_TCC2|✅ proved - incomplete|shostak|0.140|
|turnRadius_TCC3|✅ proved - incomplete|shostak|0.549|
|turnRadius_TCC4|✅ proved - incomplete|shostak|0.100|
|turnRadius_TCC5|✅ proved - incomplete|shostak|0.424|
|speedOfTurn_TCC1|✅ proved - incomplete|shostak|0.617|
|speedOfTurn_TCC2|✅ proved - incomplete|shostak|0.170|
|turnRate_TCC1|✅ proved - complete|shostak|0.030|
|bankAngle_TCC1|✅ proved - incomplete|shostak|0.137|
|bank_radius|✅ proved - incomplete|shostak|0.090|
|bank_speed_TCC1|✅ proved - incomplete|shostak|0.170|
|bank_speed|✅ proved - incomplete|shostak|0.200|
|delta_clockwise|✅ proved - incomplete|shostak|0.502|
|turnTime_TCC1|✅ proved - incomplete|shostak|0.101|
|turnTime_TCC2|✅ proved - incomplete|shostak|0.290|
|turnTimeAlt_TCC1|✅ proved - incomplete|shostak|0.202|
|turnTimeAlt_def|✅ proved - incomplete|shostak|0.080|
|turnOmega_TCC1|✅ proved - incomplete|shostak|0.120|
|turnOmega_start|✅ proved - incomplete|shostak|0.251|
|turnOmegaAT_TCC1|✅ proved - incomplete|shostak|0.030|
|turnOmegaAT_TCC2|✅ proved - incomplete|shostak|0.100|
|turnOmega_equal|✅ proved - incomplete|shostak|0.000|
|center_test_3|✅ proved - incomplete|shostak|0.280|
|center_test_4|✅ proved - incomplete|shostak|0.202|
|center_test_TCC1|✅ proved - complete|shostak|0.020|
|center_test|✅ proved - incomplete|shostak|0.480|
|center_test2|✅ proved - incomplete|shostak|0.491|
|turnOmega_thm|✅ proved - incomplete|shostak|1.001|
|turnOmega_vel|✅ proved - incomplete|shostak|0.834|
|turnOmega_TCC2|✅ proved - incomplete|shostak|0.120|
|turnOmega_test|✅ proved - incomplete|shostak|0.833|
|turnOmega_test2|✅ proved - incomplete|shostak|0.921|
|turnOmega_test3|✅ proved - incomplete|shostak|0.966|
|turnOmega_test4|✅ proved - incomplete|shostak|1.220|

## `Velocity`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|trkVel_TCC1|✅ proved - incomplete|shostak|0.062|
|trkVel_TCC2|✅ proved - incomplete|shostak|0.030|
|groundSpeed_nzv|✅ proved - incomplete|shostak|0.030|
|trk_is_pi2|✅ proved - incomplete|shostak|0.110|
|trk_track|✅ proved - incomplete|shostak|0.060|
|mkGs_TCC1|✅ proved - incomplete|shostak|0.093|
|mkTrkGsVs_nonzero|✅ proved - incomplete|shostak|0.070|
|track_mktrk|✅ proved - incomplete|shostak|0.030|
|mkTrkGsVs_def|✅ proved - incomplete|shostak|0.254|
|Hat_TCC1|✅ proved - incomplete|shostak|0.109|

## `gen_turn`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|not_collinear_TCC1|✅ proved - incomplete|shostak|0.040|
|not_collinear_TCC2|✅ proved - incomplete|shostak|0.050|
|not_collinear_not_equal|✅ proved - incomplete|shostak|0.040|
|hat_on_line_TCC1|✅ proved - incomplete|shostak|0.051|
|hat_on_line_TCC2|✅ proved - incomplete|shostak|0.280|
|hat_on_line|✅ proved - incomplete|shostak|0.201|
|normalize_sqv|✅ proved - incomplete|shostak|0.030|
|dot_normalize_ge|✅ proved - incomplete|shostak|0.113|
|sqv_hat_hat|✅ proved - incomplete|shostak|0.107|
|pythagorean_dot_hat|✅ proved - incomplete|shostak|0.501|
|turn_gen_sides|✅ proved - incomplete|shostak|0.418|
|turnGenerator_TCC1|✅ proved - incomplete|shostak|0.030|
|turnGenerator_TCC2|✅ proved - incomplete|shostak|0.050|
|turnGenerator_TCC3|✅ proved - incomplete|shostak|0.050|
|turnGenerator_TCC4|✅ proved - incomplete|shostak|0.062|
|turnGenerator_TCC5|✅ proved - incomplete|shostak|0.030|
|turnGenerator_TCC6|✅ proved - incomplete|shostak|0.100|
|turnGenerator_test_TCC1|✅ proved - complete|shostak|0.030|
|turnGenerator_test_TCC2|✅ proved - incomplete|shostak|0.120|
|turnGenerator_test|✅ proved - incomplete|shostak|0.132|
|turnGenerator_test_2_TCC1|✅ proved - incomplete|shostak|0.110|
|turnGenerator_test_2|✅ proved - incomplete|shostak|0.140|
|right_turn_test|✅ proved - complete|shostak|0.050|
|BOT_onLine_TCC1|✅ proved - incomplete|shostak|0.020|
|BOT_onLine|✅ proved - incomplete|shostak|0.190|
|EOT_onLine_TCC1|✅ proved - incomplete|shostak|0.870|
|EOT_onLine|✅ proved - incomplete|shostak|0.232|
|BOT_Center|✅ proved - incomplete|shostak|0.945|
|EOT_Center|✅ proved - incomplete|shostak|0.000|
|centers_match|✅ proved - incomplete|shostak|5.517|
|turnGenerator_correct_TCC1|✅ proved - incomplete|shostak|0.160|
|turnGenerator_correct|✅ proved - incomplete|shostak|34.141|

## `turn_derivation`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|turn_vx_prep_TCC1|✅ proved - complete|shostak|0.020|
|turn_vx_prep_TCC2|✅ proved - complete|shostak|0.020|
|turn_vx_prep_TCC3|✅ proved - complete|shostak|0.020|
|turn_vx_prep|✅ proved - incomplete|shostak|0.129|
|turn_vy_prep|✅ proved - incomplete|shostak|0.120|
|turn_vx_TCC1|✅ proved - incomplete|shostak|0.020|
|turn_vy_TCC1|✅ proved - incomplete|shostak|0.018|
|linear_angular_TCC1|✅ proved - incomplete|shostak|0.200|
|turn_position_x|✅ proved - incomplete|shostak|0.475|
|turn_position_y|✅ proved - incomplete|shostak|0.380|

## `kinematics_vs_accel`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|vsConstAccelGoalPos_TCC1|✅ proved - incomplete|shostak|0.073|
|equals_integral|✅ proved - incomplete|shostak|0.858|
|equals_integral_pos|✅ proved - incomplete|shostak|2.795|
|reach_goalVs|✅ proved - incomplete|shostak|0.713|
|gamma_TCC1|✅ proved - complete|shostak|0.020|
|gamma_TCC2|✅ proved - complete|shostak|0.029|
|vsAccelUntilWithRampUp_TCC1|✅ proved - incomplete|shostak|0.220|
|vsAccelUntilWithRampUp_TCC2|✅ proved - complete|shostak|0.170|
|equals_integral_AUWRU|✅ proved - incomplete|shostak|11.240|
|reach_goal_AUWRU|✅ proved - incomplete|shostak|3.331|
|vsAccelPos_TCC1|✅ proved - complete|shostak|0.134|
|vsAccel_TCC1|✅ proved - complete|shostak|0.240|

## `vsAccel`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|accel_TCC1|✅ proved - complete|shostak|0.120|
|accel_TCC2|✅ proved - complete|shostak|0.013|
|accel_TCC3|✅ proved - complete|shostak|0.030|
|L1_prep|✅ proved - incomplete|shostak|0.150|
|velo_TCC1|✅ proved - incomplete|shostak|0.022|
|L1_TCC1|✅ proved - complete|shostak|0.040|
|L1_TCC2|✅ proved - complete|shostak|0.030|
|L1|✅ proved - incomplete|shostak|0.240|
|vsAccelUntil_Vel_TCC1|✅ proved - complete|shostak|0.040|
|L2_prep_TCC1|✅ proved - complete|shostak|0.031|
|L2_prep_TCC2|✅ proved - complete|shostak|0.030|
|L2_prep|✅ proved - incomplete|shostak|1.757|
|posit_TCC1|✅ proved - incomplete|shostak|0.010|
|L2_TCC1|✅ proved - complete|shostak|0.020|
|L2_TCC2|✅ proved - complete|shostak|0.020|
|L2|✅ proved - incomplete|shostak|0.000|
|vsAccelUntil_Pos_TCC1|✅ proved - complete|shostak|0.050|
|vsAccelUntil_Pos_TCC2|✅ proved - complete|shostak|0.060|
|vsAccelRamp_Vel_TCC1|✅ proved - incomplete|shostak|0.650|
|Int_ramp_vel_TCC1|✅ proved - complete|shostak|0.020|
|Int_ramp_vel|✅ proved - incomplete|shostak|0.909|
|Int_ramp_vel2|✅ proved - incomplete|shostak|0.886|
|vsAccelRamp_Pos_TCC1|✅ proved - incomplete|shostak|0.530|
|Int_ramp_pos_TCC1|✅ proved - complete|shostak|0.020|
|Int_ramp_pos|✅ proved - incomplete|shostak|1.559|
|vsAccelConst_Vel_TCC1|✅ proved - incomplete|shostak|0.311|
|Int_const_vel|✅ proved - incomplete|shostak|0.320|
|Int_const_vel2|✅ proved - incomplete|shostak|0.688|
|vsAccelConst_Pos_TCC1|✅ proved - incomplete|shostak|0.549|
|Int_const_pos|✅ proved - incomplete|shostak|1.890|
|sign_not_zero|✅ proved - complete|shostak|0.030|
|vsAUWRU_case1_acc_TCC1|✅ proved - incomplete|shostak|0.180|
|case1_vel_prep|✅ proved - incomplete|shostak|2.490|
|vsAUWRU_case1_vel_TCC1|✅ proved - incomplete|shostak|0.200|
|Integral_case1_vel|✅ proved - incomplete|shostak|3.709|
|case1_pos_prep|✅ proved - incomplete|shostak|0.000|
|vsAUWRU_case1_pos_TCC1|✅ proved - incomplete|shostak|0.592|
|Integral_case1_pos_TCC1|✅ proved - incomplete|shostak|0.100|
|Integral_case1_pos|✅ proved - incomplete|shostak|6.289|
|vsAUWRU_acc_TCC1|✅ proved - incomplete|shostak|0.281|
|case2_vel_prep|✅ proved - incomplete|shostak|1.283|
|vsAUWRU_vel_TCC1|✅ proved - incomplete|shostak|0.020|
|Integral_AUWRU_vel_TCC1|✅ proved - incomplete|shostak|0.213|
|Integral_AUWRU_vel|✅ proved - incomplete|shostak|6.397|
|case2_pos_prep|✅ proved - incomplete|shostak|2.822|
|vsAUWRU_pos_TCC1|✅ proved - incomplete|shostak|0.020|
|Integral_AUWRU_pos_TCC1|✅ proved - incomplete|shostak|0.070|
|Integral_AUWRU_pos_TCC2|✅ proved - incomplete|shostak|0.125|
|Integral_AUWRU_pos|✅ proved - incomplete|shostak|38.902|
|vsAUWRU_TCC1|✅ proved - incomplete|shostak|0.181|
|same_tMax|✅ proved - incomplete|shostak|0.210|
|exceeds_deltav|✅ proved - incomplete|shostak|2.370|
|finish_ramp|✅ proved - incomplete|shostak|0.050|

## `gen_vert`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|vertGen_TCC1|✅ proved - complete|shostak|0.080|
|vertGen_TCC2|✅ proved - complete|shostak|0.131|
|vertGen_TCC3|✅ proved - complete|shostak|0.349|

## `vsLevelOut`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|S1_TCC1|✅ proved - complete|shostak|0.020|
|quadRoots_TCC1|✅ proved - complete|shostak|0.020|
|quadRoots_TCC2|✅ proved - complete|shostak|0.130|
|quad_contrapos_TCC1|✅ proved - complete|shostak|0.090|
|quad_contrapos_TCC2|✅ proved - complete|shostak|0.098|
|quad_contrapos|✅ proved - incomplete|shostak|1.344|
|quad_lem_TCC1|✅ proved - complete|shostak|0.080|
|quad_lem|✅ proved - incomplete|shostak|0.743|
|quad_lem2_TCC1|✅ proved - incomplete|shostak|0.020|
|quad_lem2_TCC2|✅ proved - incomplete|shostak|0.200|
|quad_lem2_TCC3|✅ proved - incomplete|shostak|0.230|
|quad_lem2|✅ proved - incomplete|shostak|2.795|
|vsLevelOutTimes1_TCC1|✅ proved - complete|shostak|0.309|
|vsLevelOutTimes1_TCC2|✅ proved - complete|shostak|0.190|
|vsLevelOutTimes1_TCC3|✅ proved - complete|shostak|5.079|
|vsLevelOutTimes1_TCC4|✅ proved - complete|shostak|0.830|
|vsLevelOutTimes1_TCC5|✅ proved - complete|shostak|0.140|
|vsLevelOutTimes_TCC1|✅ proved - complete|shostak|0.080|
|vsLevelOutTimes_TCC2|✅ proved - complete|shostak|0.080|
|times_increase|✅ proved - incomplete|shostak|1:4.930|
|vsLevelOut_acc_TCC1|✅ proved - incomplete|shostak|0.102|
|vsLevelOut_acc_TCC2|✅ proved - incomplete|shostak|0.030|
|vsLevelOut_acc_TCC3|✅ proved - incomplete|shostak|0.100|
|vel_prep_TCC1|✅ proved - incomplete|shostak|0.040|
|vel_prep_TCC2|✅ proved - incomplete|shostak|0.040|
|vel_prep|✅ proved - incomplete|shostak|0.869|
|vsLevelOut_velInt_TCC1|✅ proved - incomplete|shostak|0.020|
|vsLevelOut_velCalc_TCC1|✅ proved - incomplete|shostak|1.276|
|Integral_vsLO_vel|✅ proved - incomplete|shostak|1.577|
|pos_prep|✅ proved - incomplete|shostak|0.000|
|vsLevelOut_posInt_TCC1|✅ proved - incomplete|shostak|0.020|
|vsLevelOut_posCalc_TCC1|✅ proved - incomplete|shostak|1.091|
|Integral_vsLO_pos|✅ proved - incomplete|shostak|22.937|
|Velocity_after_level|✅ proved - incomplete|shostak|2.261|
|Position_after_level|✅ proved - incomplete|shostak|1:44.945|
|vsLevelOut_TCC1|✅ proved - incomplete|shostak|1.416|
|vsLevelOut_TCC2|✅ proved - incomplete|shostak|0.000|
|vsLevelOut_TCC3|✅ proved - incomplete|shostak|0.050|
|vsLevelOut_TCC4|✅ proved - incomplete|shostak|0.050|
|vsLevelOut_TCC5|✅ proved - incomplete|shostak|0.050|
|vsLevelOutEquals|✅ proved - incomplete|shostak|1.703|
|vsLevelOut_vect2|✅ proved - incomplete|shostak|1.060|

## `gsAccel`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|gsAccel_Vel_prep_TCC1|✅ proved - incomplete|shostak|0.060|
|gsAccel_Vel_prep_TCC2|✅ proved - incomplete|shostak|0.040|
|gsAccel_Vel_prep|✅ proved - incomplete|shostak|0.220|
|gsAccel_Vel_Int_TCC1|✅ proved - incomplete|shostak|0.170|
|gsAccel_Vel_Int_TCC2|✅ proved - incomplete|shostak|0.180|
|gsAccel_Vel_Int_TCC3|✅ proved - incomplete|shostak|0.207|
|Integral_gsAccel_Vel|✅ proved - incomplete|shostak|0.170|
|gsAccel_Pos_prep_TCC1|✅ proved - incomplete|shostak|0.020|
|gsAccel_Pos_prep_TCC2|✅ proved - incomplete|shostak|0.040|
|gsAccel_Pos_prep|✅ proved - incomplete|shostak|0.997|
|gsAccel_Pos_Int_TCC1|✅ proved - incomplete|shostak|0.020|
|gsAccel_Pos_Int_TCC2|✅ proved - incomplete|shostak|0.030|
|gsAccel_Pos_Int_TCC3|✅ proved - incomplete|shostak|0.034|
|gsAccel_Pos_Calc_TCC1|✅ proved - incomplete|shostak|0.070|
|Integral_gsAccel_Pos|✅ proved - incomplete|shostak|0.640|
|gsAccelToRTA_possible_TCC1|✅ proved - incomplete|shostak|0.020|
|gsAccelToRTA_possible_TCC2|✅ proved - incomplete|shostak|0.030|
|gsAccelToRTA_possible_TCC3|✅ proved - incomplete|shostak|0.140|
|neg_groundspeed|✅ proved - incomplete|shostak|0.369|

## `kinematics_gs_accel`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|gsAccel_equals_fnd|✅ proved - incomplete|shostak|2.349|
|reach_goal|✅ proved - incomplete|shostak|2.234|
|gsAccelUntil_checks|✅ proved - incomplete|shostak|2.692|
|gsAccelToRTA_TCC1|✅ proved - complete|shostak|0.130|
|gsAccelToRTA_TCC2|✅ proved - incomplete|shostak|0.780|
|gsAccelToRTA_TCC3|✅ proved - complete|shostak|0.550|
|gsAccelToRTA_checks_TCC1|✅ proved - incomplete|shostak|0.040|
|gsAccelToRTA_checks_TCC2|✅ proved - incomplete|shostak|4.245|
|gsAccelToRTA_checks|✅ proved - incomplete|shostak|11.226|

## `NavPoint3D`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|groundSpeed_TCC1|✅ proved - complete|shostak|0.060|
|groundSpeed_TCC2|✅ proved - incomplete|shostak|0.139|
|gs_nz|✅ proved - incomplete|shostak|0.140|
|initialVelocity_TCC1|✅ proved - complete|shostak|0.030|
|initialVelocity_TCC2|✅ proved - complete|shostak|0.060|

## `KinematicPlan`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|plan_lin_ex1_TCC1|✅ proved - incomplete|shostak|0.050|
|plan_lin_ex1_TCC2|✅ proved - incomplete|shostak|0.080|
|getLastTime_TCC1|✅ proved - incomplete|shostak|0.050|
|getSegment_TCC1|✅ proved - incomplete|shostak|0.070|
|getSegment_TCC2|✅ proved - incomplete|shostak|0.040|
|getSegment_TCC3|✅ proved - incomplete|shostak|0.050|
|getSegment_TCC4|✅ proved - incomplete|shostak|0.040|
|getSegment_TCC5|✅ proved - incomplete|shostak|0.100|
|getSegment_TCC6|✅ proved - incomplete|shostak|0.070|
|getSegment_TCC7|✅ proved - incomplete|shostak|0.040|
|getSegment_TCC8|✅ proved - incomplete|shostak|0.150|
|getSegment_test_TCC1|✅ proved - incomplete|shostak|0.050|
|getSegment_test|✅ proved - incomplete|shostak|0.180|
|getSegment_TCC9|✅ proved - incomplete|shostak|0.040|
|getSegment_def_found_TCC1|✅ proved - incomplete|shostak|0.270|
|getSegment_def_found|✅ proved - incomplete|shostak|0.000|
|getSegment_at_tcp|✅ proved - incomplete|shostak|0.280|
|prevTCPType_TCC1|✅ proved - incomplete|shostak|0.080|
|prevTCPType_TCC2|✅ proved - incomplete|shostak|0.070|
|prevTCPType_TCC3|✅ proved - incomplete|shostak|0.099|
|nextTCPType_TCC1|✅ proved - incomplete|shostak|0.090|
|nextTCPType_TCC2|✅ proved - incomplete|shostak|0.080|
|nextTCPType_TCC3|✅ proved - incomplete|shostak|0.110|
|prevTCP_TCC1|✅ proved - incomplete|shostak|0.070|
|prevTCP_TCC2|✅ proved - incomplete|shostak|0.080|
|prevTCP_TCC3|✅ proved - incomplete|shostak|0.040|
|prevTCP_TCC4|✅ proved - incomplete|shostak|0.180|
|prevTCP_TCC5|✅ proved - incomplete|shostak|0.103|
|prevTCP_TCC6|✅ proved - incomplete|shostak|0.090|
|prevTCP_TCC7|✅ proved - incomplete|shostak|0.250|
|nextTCP_TCC1|✅ proved - incomplete|shostak|0.090|
|nextTCP_TCC2|✅ proved - incomplete|shostak|0.080|
|nextTCP_TCC3|✅ proved - incomplete|shostak|0.180|
|nextTCP_TCC4|✅ proved - incomplete|shostak|0.125|
|nextTCP_TCC5|✅ proved - incomplete|shostak|0.130|
|nextTCP_TCC6|✅ proved - incomplete|shostak|0.330|
|prevTCP_test|✅ proved - incomplete|shostak|0.050|
|nextTCP_test|✅ proved - incomplete|shostak|0.050|
|inTurn_TCC1|✅ proved - incomplete|shostak|0.090|
|turnRadius_TCC1|✅ proved - incomplete|shostak|0.170|
|inGroundSpeedChange_TCC1|✅ proved - incomplete|shostak|0.098|
|inVerticalSpeedChange_TCC1|✅ proved - incomplete|shostak|0.090|
|inTurnPrevBOT|✅ proved - incomplete|shostak|0.170|
|gsAccel_TCC1|✅ proved - incomplete|shostak|0.170|
|vsAccel_TCC1|✅ proved - incomplete|shostak|0.160|
|pathDistance_TCC1|✅ proved - incomplete|shostak|0.100|
|pathDistance_TCC2|✅ proved - incomplete|shostak|0.167|
|ValidTime?_TCC1|✅ proved - incomplete|shostak|0.060|
|accelZone_TCC1|✅ proved - incomplete|shostak|0.130|
|accelZone_TCC2|✅ proved - incomplete|shostak|0.170|
|accelZone_TCC3|✅ proved - incomplete|shostak|0.307|
|accelZone_TCC4|✅ proved - incomplete|shostak|0.340|
|accelZone_TCC5|✅ proved - incomplete|shostak|0.367|

## `LatLonAlt`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|mk_lem|✅ proved - complete|shostak|0.010|

## `GreatCircle`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|spherical_earth_radius_TCC1|✅ proved - incomplete|shostak|0.150|
|angular_distance_prep|✅ proved - incomplete|shostak|0.826|
|angular_distance_TCC1|✅ proved - incomplete|shostak|0.016|
|distance_from_angle_TCC1|✅ proved - incomplete|shostak|0.210|
|initial_course_impl2_TCC1|✅ proved - incomplete|shostak|0.080|
|angle_between_old_TCC1|✅ proved - incomplete|shostak|0.380|
|velocity_initial_TCC1|✅ proved - incomplete|shostak|0.460|
|velocity_initial_TCC2|✅ proved - incomplete|shostak|0.438|

## `ENU`
No formula declaration found.
## `Kinematics`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|turnByDist2D_TCC1|✅ proved - incomplete|shostak|0.300|

## `VectFuns`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|angle_between_TCC1|✅ proved - incomplete|shostak|0.150|

## `Position`
No formula declaration found.
## `NavPoint`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|groundSpeed_TCC1|✅ proved - complete|shostak|0.060|
|groundSpeed_TCC2|✅ proved - incomplete|shostak|0.140|
|gs_nz|✅ proved - incomplete|shostak|0.148|
|initialVelocity_TCC1|✅ proved - complete|shostak|0.030|
|initialVelocity_TCC2|✅ proved - complete|shostak|0.060|
|finalVelocity_TCC1|✅ proved - complete|shostak|0.030|
|finalVelocity_TCC2|✅ proved - complete|shostak|0.050|

## `KinematicsPosition`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|turnByDist2D_TCC1|✅ proved - incomplete|shostak|0.030|

## `TcpData`
No formula declaration found.
## `Plan`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|point_TCC1|✅ proved - complete|shostak|0.040|
|ordered_lem|✅ proved - complete|shostak|0.330|
|getIndexInRange_rec_TCC1|✅ proved - complete|shostak|0.090|
|getIndexInRange_rec_TCC2|✅ proved - complete|shostak|0.050|
|getIndexInRange_TCC1|✅ proved - complete|shostak|0.040|
|getIndex_TCC1|✅ proved - complete|shostak|0.070|
|findPrev_TCC1|✅ proved - complete|shostak|0.110|
|turnDir_TCC1|✅ proved - complete|shostak|0.080|
|pathDistanceNat_TCC1|✅ proved - complete|shostak|0.030|
|pathDistanceNat_TCC2|✅ proved - complete|shostak|0.070|
|pathDistanceNat_TCC3|✅ proved - complete|shostak|0.060|
|pathDistanceNat_TCC4|✅ proved - complete|shostak|0.030|
|pathDistance4_TCC1|✅ proved - complete|shostak|0.050|
|gsFinal_TCC1|✅ proved - complete|shostak|0.060|
|gsFinal_TCC2|✅ proved - incomplete|shostak|0.180|
|gsOut_TCC1|✅ proved - complete|shostak|0.070|
|gsOut_TCC2|✅ proved - incomplete|shostak|0.166|
|vsFinal_TCC1|✅ proved - complete|shostak|0.180|
|vsOut_TCC1|✅ proved - complete|shostak|0.170|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib/pvsio_utils/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230712-static-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230710-tcc-gen.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230707-defattach.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230706-extrategies.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`|
