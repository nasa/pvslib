# Summary for `aviation`
Run started at 17:20:46 9/1/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **484**   | **484**    | **484**    | **0**  | **9:43.062 s**   |
|top|0|0|0|0|0.000|
|ECEF|18|18|18|0|15.842|
|error_proj|40|40|40|0|1:50.899|
|units|3|3|3|0|0.250|
|util|14|14|14|0|6.710|
|track_3D|5|5|5|0|0.141|
|track|22|22|22|0|17.314|
|simple_motion|11|11|11|0|1.678|
|simple_motion_props|24|24|24|0|11.082|
|motion|23|23|23|0|2.999|
|kinematics_turn|38|38|38|0|12.249|
|Velocity|10|10|10|0|0.828|
|gen_turn|32|32|32|0|46.417|
|turn_derivation|10|10|10|0|1.329|
|kinematics_vs_accel|12|12|12|0|20.105|
|vsAccel|53|53|53|0|1:21.382|
|gen_vert|3|3|3|0|0.543|
|vsLevelOut|42|42|42|0|3:31.759|
|gsAccel|19|19|19|0|3.523|
|kinematics_gs_accel|9|9|9|0|24.169|
|NavPoint3D|5|5|5|0|0.439|
|KinematicPlan|53|53|53|0|7.966|
|LatLonAlt|1|1|1|0|0.010|
|GreatCircle|8|8|8|0|2.598|
|ENU|0|0|0|0|0.000|
|Kinematics|1|1|1|0|0.296|
|VectFuns|1|1|1|0|0.150|
|Position|0|0|0|0|0.000|
|NavPoint|7|7|7|0|0.517|
|KinematicsPosition|1|1|1|0|0.020|
|TcpData|0|0|0|0|0.000|
|Plan|19|19|19|0|1.847|
## Detailed Summary 
## `top`
No formula declaration found.
## `ECEF`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|spherical2xyz_TCC1|✅ proved - incomplete|shostak|0.774|
|spherical2xyz_norm|✅ proved - incomplete|shostak|0.718|
|sin_acos_ecef_TCC1|✅ proved - complete|shostak|0.060|
|sin_acos_ecef_TCC2|✅ proved - incomplete|shostak|0.290|
|sin_acos_ecef|✅ proved - incomplete|shostak|0.461|
|xyz2spherical_TCC1|✅ proved - complete|shostak|0.020|
|xyz2spherical_TCC2|✅ proved - incomplete|shostak|0.240|
|xyz2spherical_TCC3|✅ proved - incomplete|shostak|0.060|
|xyz2spherical_TCC4|✅ proved - incomplete|shostak|0.244|
|xyz2spherical_TCC5|✅ proved - incomplete|shostak|0.451|
|xyz2spherical_TCC6|✅ proved - incomplete|shostak|0.322|
|xyz2spherical_TCC7|✅ proved - incomplete|shostak|0.456|
|xyz2spherical_TCC8|✅ proved - incomplete|shostak|1.266|
|xyz2spherical_TCC9|✅ proved - incomplete|shostak|0.372|
|xyz2spherical_TCC10|✅ proved - incomplete|shostak|0.511|
|spherical2xyz_def_TCC1|✅ proved - incomplete|shostak|0.142|
|spherical2xyz_def|✅ proved - incomplete|shostak|9.455|
|xyz2spherical_def|✅ proved - incomplete|shostak|0.000|

## `error_proj`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|tangent_error_basic|✅ proved - incomplete|shostak|0.230|
|lift_to_surface_TCC1|✅ proved - incomplete|shostak|0.932|
|norm_lem|✅ proved - incomplete|shostak|0.180|
|norm_Rc_lt_const|✅ proved - incomplete|shostak|1.602|
|tri_ineq_Rc|✅ proved - incomplete|shostak|0.500|
|error_valid?_TCC1|✅ proved - incomplete|shostak|1.772|
|error_valid_simple?_TCC1|✅ proved - incomplete|shostak|0.192|
|error_valid_simple?_TCC2|✅ proved - incomplete|shostak|0.060|
|error_valid_simple_def|✅ proved - incomplete|shostak|5.340|
|error_valid_simple_edgebound_def|✅ proved - incomplete|shostak|7.195|
|sphere_to_2D_plane_error_reduction|✅ proved - incomplete|shostak|1.208|
|sphere_to_2D_plane_error_reduction_edgebound|✅ proved - incomplete|shostak|7.431|
|sphere_to_2D_plane_error_simple_27780|✅ proved - incomplete|shostak|3.145|
|sphere_to_2D_plane_error_simple_1852|✅ proved - incomplete|shostak|3.082|
|sphere_to_2D_plane_error_simple_3704|✅ proved - incomplete|shostak|3.120|
|sphere_to_2D_plane_error_simple_5556|✅ proved - incomplete|shostak|3.108|
|sphere_to_2D_plane_error_simple_7408|✅ proved - incomplete|shostak|3.130|
|sphere_to_2D_plane_error_simple_9260|✅ proved - incomplete|shostak|3.172|
|sphere_to_2D_plane_error_simple_11112|✅ proved - incomplete|shostak|3.149|
|sphere_to_2D_plane_error_simple_12964|✅ proved - incomplete|shostak|0.000|
|sphere_to_2D_plane_error_simple_14816|✅ proved - incomplete|shostak|3.191|
|sphere_to_2D_plane_error_simple_16668|✅ proved - incomplete|shostak|3.143|
|sphere_to_2D_plane_error_simple_18520|✅ proved - incomplete|shostak|3.117|
|sphere_to_2D_plane_error_simple_20372|✅ proved - incomplete|shostak|3.033|
|sphere_to_2D_plane_error_simple_22224|✅ proved - incomplete|shostak|2.882|
|sphere_to_2D_plane_error_simple_24076|✅ proved - incomplete|shostak|3.041|
|sphere_to_2D_plane_error_simple_25928|✅ proved - incomplete|shostak|3.097|
|sphere_to_2D_plane_error_simple_37040|✅ proved - incomplete|shostak|3.129|
|sphere_to_2D_plane_error_simple_46300|✅ proved - incomplete|shostak|3.023|
|sphere_to_2D_plane_error_simple_55560|✅ proved - incomplete|shostak|3.102|
|sphere_to_2D_plane_error_simple_64820|✅ proved - incomplete|shostak|3.117|
|sphere_to_2D_plane_error_simple_74080|✅ proved - incomplete|shostak|3.094|
|sphere_to_2D_plane_error_simple_83340|✅ proved - incomplete|shostak|3.121|
|sphere_to_2D_plane_error_simple_92600|✅ proved - incomplete|shostak|2.979|
|sphere_to_2D_plane_error_simple_111120|✅ proved - incomplete|shostak|3.115|
|sphere_to_2D_plane_error_simple_129640|✅ proved - incomplete|shostak|3.137|
|sphere_to_2D_plane_error_simple_148160|✅ proved - incomplete|shostak|3.119|
|sphere_to_2D_plane_error_simple_166680|✅ proved - incomplete|shostak|3.066|
|sphere_to_2D_plane_error_simple_185200|✅ proved - incomplete|shostak|3.108|
|sphere_to_2D_plane_error_simple_185200_27780|✅ proved - incomplete|shostak|3.737|

## `units`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|ex0|✅ proved - complete|shostak|0.070|
|ex1|✅ proved - complete|shostak|0.070|
|ex2|✅ proved - complete|shostak|0.110|

## `util`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|util_turnDelta_TCC1|✅ proved - incomplete|shostak|0.000|
|cos_util_turnDelta|✅ proved - incomplete|shostak|1.142|
|sin_util_turnDelta|✅ proved - incomplete|shostak|1.692|
|util_turnDelta_TCC2|✅ proved - incomplete|shostak|0.180|
|util_turnDelta_TCC3|✅ proved - incomplete|shostak|0.180|
|util_turnDelta_TCC4|✅ proved - incomplete|shostak|0.190|
|mkAlt_TCC1|✅ proved - complete|shostak|0.020|
|Vect3_TCC1|✅ proved - complete|shostak|0.040|
|Hat_TCC1|✅ proved - incomplete|shostak|0.034|
|Hat_TCC2|✅ proved - incomplete|shostak|0.030|
|Hat_TCC3|✅ proved - incomplete|shostak|0.090|
|Hat_TCC4|✅ proved - incomplete|shostak|0.771|
|cos_turnDelta|✅ proved - incomplete|shostak|0.786|
|sin_turnDelta|✅ proved - incomplete|shostak|1.555|

## `track_3D`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|nzhVect3_TCC1|✅ proved - incomplete|shostak|0.030|
|track_TCC1|✅ proved - incomplete|shostak|0.031|
|ground_speed_nzv|✅ proved - incomplete|shostak|0.030|
|sin_track|✅ proved - incomplete|shostak|0.030|
|cos_track|✅ proved - incomplete|shostak|0.020|

## `track`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|trkgs2vectz_nonzero|✅ proved - incomplete|shostak|0.265|
|trkgs2vect_TCC1|✅ proved - incomplete|shostak|0.020|
|trkgs2vectz_eq|✅ proved - incomplete|shostak|0.020|
|track_TCC1|✅ proved - incomplete|shostak|0.026|
|sin_track|✅ proved - incomplete|shostak|4.518|
|cos_track|✅ proved - incomplete|shostak|0.000|
|norm_id|✅ proved - incomplete|shostak|0.244|
|track_id|✅ proved - incomplete|shostak|0.091|
|trkgs2vectz_id|✅ proved - incomplete|shostak|0.070|
|trkgs2vect_id|✅ proved - incomplete|shostak|0.030|
|track_scal|✅ proved - incomplete|shostak|0.610|
|ordered_eps_1_TCC1|✅ proved - incomplete|shostak|0.410|
|ordered_eps_1|✅ proved - incomplete|shostak|2.430|
|ordered_det_ge|✅ proved - incomplete|shostak|2.233|
|ordered_eps_neg_1|✅ proved - incomplete|shostak|0.360|
|ordered_eps_1_dot_gt_0|✅ proved - incomplete|shostak|0.000|
|ordered_eps_1_dot_ge_0|✅ proved - incomplete|shostak|3.157|
|ordered_eps_1_dot_lt_0|✅ proved - incomplete|shostak|1.225|
|ordered_eps_1_dot_le_0|✅ proved - incomplete|shostak|1.225|
|trk_TCC1|✅ proved - incomplete|shostak|0.150|
|trk_TCC2|✅ proved - incomplete|shostak|0.020|
|add_track_TCC1|✅ proved - incomplete|shostak|0.210|

## `simple_motion`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|accelUntil_param_TCC1|✅ proved - complete|shostak|0.104|
|accelUntil_param_TCC2|✅ proved - complete|shostak|0.150|
|posUntilRamp_comp_TCC1|✅ proved - complete|shostak|0.020|
|posUntilRamp_comp_TCC2|✅ proved - complete|shostak|0.030|
|posUntilRamp_comp_TCC3|✅ proved - complete|shostak|0.020|
|posUntilRamp_comp_TCC4|✅ proved - complete|shostak|0.020|
|posUntilRamp_comp_TCC5|✅ proved - complete|shostak|0.020|
|posUntilRamp_comp_TCC6|✅ proved - complete|shostak|0.020|
|posUntilRamp_comp_TCC7|✅ proved - complete|shostak|0.030|
|accelUntilRamp_TCC1|✅ proved - incomplete|shostak|0.552|
|accelUntilRamp_TCC2|✅ proved - incomplete|shostak|0.712|

## `simple_motion_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_integral_split_fun_TCC1|✅ proved - complete|shostak|0.160|
|IMP_integral_split_fun_TCC2|✅ proved - complete|shostak|0.030|
|IMP_integral_split_fun_TCC3|✅ proved - complete|shostak|0.040|
|accel_int?|✅ proved - incomplete|shostak|0.110|
|vel_fnd_TCC1|✅ proved - incomplete|shostak|0.096|
|vel_equal|✅ proved - incomplete|shostak|0.190|
|vel_int?|✅ proved - incomplete|shostak|0.169|
|pos_fnd_TCC1|✅ proved - incomplete|shostak|0.163|
|pos_equal|✅ proved - incomplete|shostak|0.312|
|accelUntil_int?|✅ proved - incomplete|shostak|0.252|
|velUntil_fnd_TCC1|✅ proved - incomplete|shostak|0.020|
|velUntil_equal|✅ proved - incomplete|shostak|0.513|
|velUntil_int?|✅ proved - incomplete|shostak|0.477|
|posUntil_fnd_TCC1|✅ proved - incomplete|shostak|0.020|
|posUntil_equal|✅ proved - incomplete|shostak|1.044|
|accelUntil_reach_goal|✅ proved - complete|shostak|0.228|
|accelUntilRamp_int?|✅ proved - incomplete|shostak|0.509|
|velUntilRamp_fnd_TCC1|✅ proved - incomplete|shostak|0.026|
|velUntilRamp_equal|✅ proved - incomplete|shostak|1.070|
|velUntilRamp_int?|✅ proved - incomplete|shostak|0.000|
|posUntilRamp_fnd_TCC1|✅ proved - incomplete|shostak|0.020|
|posUntilRamp_equal|✅ proved - incomplete|shostak|3.418|
|accelUntilRamp_param_ordered|✅ proved - incomplete|shostak|1.061|
|accelUntilRamp_reach_goal|✅ proved - incomplete|shostak|1.154|

## `motion`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|deriv_domain|✅ proved - incomplete|shostak|0.030|
|Rate_fun_TCC1|✅ proved - incomplete|shostak|0.030|
|Rate_fun_TCC2|✅ proved - incomplete|shostak|0.010|
|integrable_Rate_fun_TCC1|✅ proved - incomplete|shostak|0.010|
|integrable_Rate_fun|✅ proved - incomplete|shostak|0.030|
|derivable_integral_Rate_fun_TCC1|✅ proved - incomplete|shostak|0.046|
|derivable_integral_Rate_fun|✅ proved - incomplete|shostak|0.220|
|integrate_TCC1|✅ proved - incomplete|shostak|0.019|
|integrate2_TCC1|✅ proved - incomplete|shostak|0.040|
|integrate2_TCC2|✅ proved - incomplete|shostak|0.295|
|derive2_TCC1|✅ proved - incomplete|shostak|0.020|
|speed_TCC1|✅ proved - incomplete|shostak|0.020|
|speed_TCC2|✅ proved - incomplete|shostak|0.020|
|speed_TCC3|✅ proved - incomplete|shostak|0.020|
|position_TCC1|✅ proved - incomplete|shostak|0.060|
|position_TCC2|✅ proved - incomplete|shostak|0.020|
|no_accel_TCC1|✅ proved - incomplete|shostak|0.057|
|const_accel_TCC1|✅ proved - incomplete|shostak|0.100|
|linear_accel_TCC1|✅ proved - incomplete|shostak|0.140|
|const_accel_speed|✅ proved - incomplete|shostak|0.231|
|zero_accel_speed|✅ proved - incomplete|shostak|0.020|
|zero_accel_pos|✅ proved - incomplete|shostak|0.310|
|const_accel_pos|✅ proved - incomplete|shostak|1.251|

## `kinematics_turn`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|linear_preserves_gs|✅ proved - incomplete|shostak|0.020|
|linear_preserves_vs|✅ proved - complete|shostak|0.030|
|linear_preserves_track_TCC1|✅ proved - incomplete|shostak|0.020|
|linear_preserves_track|✅ proved - incomplete|shostak|0.030|
|turnRadius_TCC1|✅ proved - incomplete|shostak|0.802|
|turnRadius_TCC2|✅ proved - incomplete|shostak|0.140|
|turnRadius_TCC3|✅ proved - incomplete|shostak|0.535|
|turnRadius_TCC4|✅ proved - incomplete|shostak|0.100|
|turnRadius_TCC5|✅ proved - incomplete|shostak|0.414|
|speedOfTurn_TCC1|✅ proved - incomplete|shostak|0.636|
|speedOfTurn_TCC2|✅ proved - incomplete|shostak|0.165|
|turnRate_TCC1|✅ proved - complete|shostak|0.030|
|bankAngle_TCC1|✅ proved - incomplete|shostak|0.150|
|bank_radius|✅ proved - incomplete|shostak|0.090|
|bank_speed_TCC1|✅ proved - incomplete|shostak|0.170|
|bank_speed|✅ proved - incomplete|shostak|0.190|
|delta_clockwise|✅ proved - incomplete|shostak|0.500|
|turnTime_TCC1|✅ proved - incomplete|shostak|0.112|
|turnTime_TCC2|✅ proved - incomplete|shostak|0.300|
|turnTimeAlt_TCC1|✅ proved - incomplete|shostak|0.202|
|turnTimeAlt_def|✅ proved - incomplete|shostak|0.080|
|turnOmega_TCC1|✅ proved - incomplete|shostak|0.120|
|turnOmega_start|✅ proved - incomplete|shostak|0.250|
|turnOmegaAT_TCC1|✅ proved - incomplete|shostak|0.030|
|turnOmegaAT_TCC2|✅ proved - incomplete|shostak|0.101|
|turnOmega_equal|✅ proved - incomplete|shostak|0.000|
|center_test_3|✅ proved - incomplete|shostak|0.280|
|center_test_4|✅ proved - incomplete|shostak|0.209|
|center_test_TCC1|✅ proved - complete|shostak|0.020|
|center_test|✅ proved - incomplete|shostak|0.480|
|center_test2|✅ proved - incomplete|shostak|0.481|
|turnOmega_thm|✅ proved - incomplete|shostak|0.970|
|turnOmega_vel|✅ proved - incomplete|shostak|0.837|
|turnOmega_TCC2|✅ proved - incomplete|shostak|0.118|
|turnOmega_test|✅ proved - incomplete|shostak|0.809|
|turnOmega_test2|✅ proved - incomplete|shostak|0.880|
|turnOmega_test3|✅ proved - incomplete|shostak|0.891|
|turnOmega_test4|✅ proved - incomplete|shostak|1.057|

## `Velocity`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|trkVel_TCC1|✅ proved - incomplete|shostak|0.050|
|trkVel_TCC2|✅ proved - incomplete|shostak|0.030|
|groundSpeed_nzv|✅ proved - incomplete|shostak|0.020|
|trk_is_pi2|✅ proved - incomplete|shostak|0.113|
|trk_track|✅ proved - incomplete|shostak|0.060|
|mkGs_TCC1|✅ proved - incomplete|shostak|0.090|
|mkTrkGsVs_nonzero|✅ proved - incomplete|shostak|0.070|
|track_mktrk|✅ proved - incomplete|shostak|0.027|
|mkTrkGsVs_def|✅ proved - incomplete|shostak|0.250|
|Hat_TCC1|✅ proved - incomplete|shostak|0.118|

## `gen_turn`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|not_collinear_TCC1|✅ proved - incomplete|shostak|0.040|
|not_collinear_TCC2|✅ proved - incomplete|shostak|0.050|
|not_collinear_not_equal|✅ proved - incomplete|shostak|0.040|
|hat_on_line_TCC1|✅ proved - incomplete|shostak|0.040|
|hat_on_line_TCC2|✅ proved - incomplete|shostak|0.266|
|hat_on_line|✅ proved - incomplete|shostak|0.204|
|normalize_sqv|✅ proved - incomplete|shostak|0.030|
|dot_normalize_ge|✅ proved - incomplete|shostak|0.112|
|sqv_hat_hat|✅ proved - incomplete|shostak|0.100|
|pythagorean_dot_hat|✅ proved - incomplete|shostak|0.448|
|turn_gen_sides|✅ proved - incomplete|shostak|0.414|
|turnGenerator_TCC1|✅ proved - incomplete|shostak|0.030|
|turnGenerator_TCC2|✅ proved - incomplete|shostak|0.046|
|turnGenerator_TCC3|✅ proved - incomplete|shostak|0.050|
|turnGenerator_TCC4|✅ proved - incomplete|shostak|0.050|
|turnGenerator_TCC5|✅ proved - incomplete|shostak|0.030|
|turnGenerator_TCC6|✅ proved - incomplete|shostak|0.100|
|turnGenerator_test_TCC1|✅ proved - complete|shostak|0.040|
|turnGenerator_test_TCC2|✅ proved - incomplete|shostak|0.111|
|turnGenerator_test|✅ proved - incomplete|shostak|0.140|
|turnGenerator_test_2_TCC1|✅ proved - incomplete|shostak|0.110|
|turnGenerator_test_2|✅ proved - incomplete|shostak|0.140|
|right_turn_test|✅ proved - complete|shostak|0.040|
|BOT_onLine_TCC1|✅ proved - incomplete|shostak|0.020|
|BOT_onLine|✅ proved - incomplete|shostak|0.180|
|EOT_onLine_TCC1|✅ proved - incomplete|shostak|0.852|
|EOT_onLine|✅ proved - incomplete|shostak|0.241|
|BOT_Center|✅ proved - incomplete|shostak|0.945|
|EOT_Center|✅ proved - incomplete|shostak|1.001|
|centers_match|✅ proved - incomplete|shostak|5.586|
|turnGenerator_correct_TCC1|✅ proved - incomplete|shostak|0.170|
|turnGenerator_correct|✅ proved - incomplete|shostak|34.791|

## `turn_derivation`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|turn_vx_prep_TCC1|✅ proved - complete|shostak|0.020|
|turn_vx_prep_TCC2|✅ proved - complete|shostak|0.020|
|turn_vx_prep_TCC3|✅ proved - complete|shostak|0.010|
|turn_vx_prep|✅ proved - incomplete|shostak|0.121|
|turn_vy_prep|✅ proved - incomplete|shostak|0.120|
|turn_vx_TCC1|✅ proved - incomplete|shostak|0.016|
|turn_vy_TCC1|✅ proved - incomplete|shostak|0.020|
|linear_angular_TCC1|✅ proved - incomplete|shostak|0.200|
|turn_position_x|✅ proved - incomplete|shostak|0.450|
|turn_position_y|✅ proved - incomplete|shostak|0.352|

## `kinematics_vs_accel`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|vsConstAccelGoalPos_TCC1|✅ proved - incomplete|shostak|0.070|
|equals_integral|✅ proved - incomplete|shostak|0.846|
|equals_integral_pos|✅ proved - incomplete|shostak|2.986|
|reach_goalVs|✅ proved - incomplete|shostak|0.700|
|gamma_TCC1|✅ proved - complete|shostak|0.020|
|gamma_TCC2|✅ proved - complete|shostak|0.030|
|vsAccelUntilWithRampUp_TCC1|✅ proved - incomplete|shostak|0.217|
|vsAccelUntilWithRampUp_TCC2|✅ proved - complete|shostak|0.170|
|equals_integral_AUWRU|✅ proved - incomplete|shostak|11.290|
|reach_goal_AUWRU|✅ proved - incomplete|shostak|3.396|
|vsAccelPos_TCC1|✅ proved - complete|shostak|0.140|
|vsAccel_TCC1|✅ proved - complete|shostak|0.240|

## `vsAccel`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|accel_TCC1|✅ proved - complete|shostak|0.116|
|accel_TCC2|✅ proved - complete|shostak|0.020|
|accel_TCC3|✅ proved - complete|shostak|0.030|
|L1_prep|✅ proved - incomplete|shostak|0.160|
|velo_TCC1|✅ proved - incomplete|shostak|0.020|
|L1_TCC1|✅ proved - complete|shostak|0.032|
|L1_TCC2|✅ proved - complete|shostak|0.030|
|L1|✅ proved - incomplete|shostak|0.239|
|vsAccelUntil_Vel_TCC1|✅ proved - complete|shostak|0.040|
|L2_prep_TCC1|✅ proved - complete|shostak|0.030|
|L2_prep_TCC2|✅ proved - complete|shostak|0.040|
|L2_prep|✅ proved - incomplete|shostak|1.771|
|posit_TCC1|✅ proved - incomplete|shostak|0.010|
|L2_TCC1|✅ proved - complete|shostak|0.020|
|L2_TCC2|✅ proved - complete|shostak|0.026|
|L2|✅ proved - incomplete|shostak|0.000|
|vsAccelUntil_Pos_TCC1|✅ proved - complete|shostak|0.050|
|vsAccelUntil_Pos_TCC2|✅ proved - complete|shostak|0.060|
|vsAccelRamp_Vel_TCC1|✅ proved - incomplete|shostak|0.645|
|Int_ramp_vel_TCC1|✅ proved - complete|shostak|0.020|
|Int_ramp_vel|✅ proved - incomplete|shostak|0.884|
|Int_ramp_vel2|✅ proved - incomplete|shostak|0.887|
|vsAccelRamp_Pos_TCC1|✅ proved - incomplete|shostak|0.540|
|Int_ramp_pos_TCC1|✅ proved - complete|shostak|0.020|
|Int_ramp_pos|✅ proved - incomplete|shostak|1.528|
|vsAccelConst_Vel_TCC1|✅ proved - incomplete|shostak|0.311|
|Int_const_vel|✅ proved - incomplete|shostak|0.314|
|Int_const_vel2|✅ proved - incomplete|shostak|0.692|
|vsAccelConst_Pos_TCC1|✅ proved - incomplete|shostak|0.530|
|Int_const_pos|✅ proved - incomplete|shostak|1.849|
|sign_not_zero|✅ proved - complete|shostak|0.040|
|vsAUWRU_case1_acc_TCC1|✅ proved - incomplete|shostak|0.193|
|case1_vel_prep|✅ proved - incomplete|shostak|2.448|
|vsAUWRU_case1_vel_TCC1|✅ proved - incomplete|shostak|0.200|
|Integral_case1_vel|✅ proved - incomplete|shostak|3.697|
|case1_pos_prep|✅ proved - incomplete|shostak|2.824|
|vsAUWRU_case1_pos_TCC1|✅ proved - incomplete|shostak|0.595|
|Integral_case1_pos_TCC1|✅ proved - incomplete|shostak|0.100|
|Integral_case1_pos|✅ proved - incomplete|shostak|0.395|
|vsAUWRU_acc_TCC1|✅ proved - incomplete|shostak|0.271|
|case2_vel_prep|✅ proved - incomplete|shostak|1.294|
|vsAUWRU_vel_TCC1|✅ proved - incomplete|shostak|0.020|
|Integral_AUWRU_vel_TCC1|✅ proved - incomplete|shostak|0.211|
|Integral_AUWRU_vel|✅ proved - incomplete|shostak|6.494|
|case2_pos_prep|✅ proved - incomplete|shostak|2.876|
|vsAUWRU_pos_TCC1|✅ proved - incomplete|shostak|0.030|
|Integral_AUWRU_pos_TCC1|✅ proved - incomplete|shostak|0.070|
|Integral_AUWRU_pos_TCC2|✅ proved - incomplete|shostak|0.120|
|Integral_AUWRU_pos|✅ proved - incomplete|shostak|45.759|
|vsAUWRU_TCC1|✅ proved - incomplete|shostak|0.190|
|same_tMax|✅ proved - incomplete|shostak|0.210|
|exceeds_deltav|✅ proved - incomplete|shostak|2.371|
|finish_ramp|✅ proved - incomplete|shostak|0.060|

## `gen_vert`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|vertGen_TCC1|✅ proved - complete|shostak|0.077|
|vertGen_TCC2|✅ proved - complete|shostak|0.130|
|vertGen_TCC3|✅ proved - complete|shostak|0.336|

## `vsLevelOut`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|S1_TCC1|✅ proved - complete|shostak|0.020|
|quadRoots_TCC1|✅ proved - complete|shostak|0.020|
|quadRoots_TCC2|✅ proved - complete|shostak|0.130|
|quad_contrapos_TCC1|✅ proved - complete|shostak|0.088|
|quad_contrapos_TCC2|✅ proved - complete|shostak|0.100|
|quad_contrapos|✅ proved - incomplete|shostak|0.000|
|quad_lem_TCC1|✅ proved - complete|shostak|0.080|
|quad_lem|✅ proved - incomplete|shostak|0.730|
|quad_lem2_TCC1|✅ proved - incomplete|shostak|0.020|
|quad_lem2_TCC2|✅ proved - incomplete|shostak|0.200|
|quad_lem2_TCC3|✅ proved - incomplete|shostak|0.231|
|quad_lem2|✅ proved - incomplete|shostak|2.805|
|vsLevelOutTimes1_TCC1|✅ proved - complete|shostak|0.309|
|vsLevelOutTimes1_TCC2|✅ proved - complete|shostak|0.200|
|vsLevelOutTimes1_TCC3|✅ proved - complete|shostak|5.056|
|vsLevelOutTimes1_TCC4|✅ proved - complete|shostak|0.822|
|vsLevelOutTimes1_TCC5|✅ proved - complete|shostak|0.140|
|vsLevelOutTimes_TCC1|✅ proved - complete|shostak|0.090|
|vsLevelOutTimes_TCC2|✅ proved - complete|shostak|0.082|
|times_increase|✅ proved - incomplete|shostak|1:5.668|
|vsLevelOut_acc_TCC1|✅ proved - incomplete|shostak|0.101|
|vsLevelOut_acc_TCC2|✅ proved - incomplete|shostak|0.030|
|vsLevelOut_acc_TCC3|✅ proved - incomplete|shostak|0.104|
|vel_prep_TCC1|✅ proved - incomplete|shostak|0.040|
|vel_prep_TCC2|✅ proved - incomplete|shostak|0.040|
|vel_prep|✅ proved - incomplete|shostak|0.870|
|vsLevelOut_velInt_TCC1|✅ proved - incomplete|shostak|0.021|
|vsLevelOut_velCalc_TCC1|✅ proved - incomplete|shostak|1.340|
|Integral_vsLO_vel|✅ proved - incomplete|shostak|1.616|
|pos_prep|✅ proved - incomplete|shostak|5.449|
|vsLevelOut_posInt_TCC1|✅ proved - incomplete|shostak|0.020|
|vsLevelOut_posCalc_TCC1|✅ proved - incomplete|shostak|1.113|
|Integral_vsLO_pos|✅ proved - incomplete|shostak|23.109|
|Velocity_after_level|✅ proved - incomplete|shostak|2.059|
|Position_after_level|✅ proved - incomplete|shostak|1:33.522|
|vsLevelOut_TCC1|✅ proved - incomplete|shostak|1.408|
|vsLevelOut_TCC2|✅ proved - incomplete|shostak|1.222|
|vsLevelOut_TCC3|✅ proved - incomplete|shostak|0.040|
|vsLevelOut_TCC4|✅ proved - incomplete|shostak|0.040|
|vsLevelOut_TCC5|✅ proved - incomplete|shostak|0.048|
|vsLevelOutEquals|✅ proved - incomplete|shostak|1.717|
|vsLevelOut_vect2|✅ proved - incomplete|shostak|1.059|

## `gsAccel`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|gsAccel_Vel_prep_TCC1|✅ proved - incomplete|shostak|0.070|
|gsAccel_Vel_prep_TCC2|✅ proved - incomplete|shostak|0.040|
|gsAccel_Vel_prep|✅ proved - incomplete|shostak|0.217|
|gsAccel_Vel_Int_TCC1|✅ proved - incomplete|shostak|0.180|
|gsAccel_Vel_Int_TCC2|✅ proved - incomplete|shostak|0.190|
|gsAccel_Vel_Int_TCC3|✅ proved - incomplete|shostak|0.208|
|Integral_gsAccel_Vel|✅ proved - incomplete|shostak|0.180|
|gsAccel_Pos_prep_TCC1|✅ proved - incomplete|shostak|0.020|
|gsAccel_Pos_prep_TCC2|✅ proved - incomplete|shostak|0.040|
|gsAccel_Pos_prep|✅ proved - incomplete|shostak|1.004|
|gsAccel_Pos_Int_TCC1|✅ proved - incomplete|shostak|0.027|
|gsAccel_Pos_Int_TCC2|✅ proved - incomplete|shostak|0.030|
|gsAccel_Pos_Int_TCC3|✅ proved - incomplete|shostak|0.040|
|gsAccel_Pos_Calc_TCC1|✅ proved - incomplete|shostak|0.070|
|Integral_gsAccel_Pos|✅ proved - incomplete|shostak|0.637|
|gsAccelToRTA_possible_TCC1|✅ proved - incomplete|shostak|0.020|
|gsAccelToRTA_possible_TCC2|✅ proved - incomplete|shostak|0.040|
|gsAccelToRTA_possible_TCC3|✅ proved - incomplete|shostak|0.140|
|neg_groundspeed|✅ proved - incomplete|shostak|0.370|

## `kinematics_gs_accel`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|gsAccel_equals_fnd|✅ proved - incomplete|shostak|2.300|
|reach_goal|✅ proved - incomplete|shostak|2.202|
|gsAccelUntil_checks|✅ proved - incomplete|shostak|2.726|
|gsAccelToRTA_TCC1|✅ proved - complete|shostak|0.130|
|gsAccelToRTA_TCC2|✅ proved - incomplete|shostak|0.770|
|gsAccelToRTA_TCC3|✅ proved - complete|shostak|0.560|
|gsAccelToRTA_checks_TCC1|✅ proved - incomplete|shostak|0.032|
|gsAccelToRTA_checks_TCC2|✅ proved - incomplete|shostak|4.239|
|gsAccelToRTA_checks|✅ proved - incomplete|shostak|11.210|

## `NavPoint3D`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|groundSpeed_TCC1|✅ proved - complete|shostak|0.060|
|groundSpeed_TCC2|✅ proved - incomplete|shostak|0.140|
|gs_nz|✅ proved - incomplete|shostak|0.140|
|initialVelocity_TCC1|✅ proved - complete|shostak|0.039|
|initialVelocity_TCC2|✅ proved - complete|shostak|0.060|

## `KinematicPlan`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|plan_lin_ex1_TCC1|✅ proved - incomplete|shostak|0.050|
|plan_lin_ex1_TCC2|✅ proved - incomplete|shostak|0.080|
|getLastTime_TCC1|✅ proved - incomplete|shostak|0.050|
|getSegment_TCC1|✅ proved - incomplete|shostak|0.080|
|getSegment_TCC2|✅ proved - incomplete|shostak|0.030|
|getSegment_TCC3|✅ proved - incomplete|shostak|0.050|
|getSegment_TCC4|✅ proved - incomplete|shostak|0.040|
|getSegment_TCC5|✅ proved - incomplete|shostak|0.108|
|getSegment_TCC6|✅ proved - incomplete|shostak|0.070|
|getSegment_TCC7|✅ proved - incomplete|shostak|0.030|
|getSegment_TCC8|✅ proved - incomplete|shostak|0.150|
|getSegment_test_TCC1|✅ proved - incomplete|shostak|0.060|
|getSegment_test|✅ proved - incomplete|shostak|0.170|
|getSegment_TCC9|✅ proved - incomplete|shostak|0.030|
|getSegment_def_found_TCC1|✅ proved - incomplete|shostak|0.270|
|getSegment_def_found|✅ proved - incomplete|shostak|1.210|
|getSegment_at_tcp|✅ proved - incomplete|shostak|0.260|
|prevTCPType_TCC1|✅ proved - incomplete|shostak|0.070|
|prevTCPType_TCC2|✅ proved - incomplete|shostak|0.070|
|prevTCPType_TCC3|✅ proved - incomplete|shostak|0.106|
|nextTCPType_TCC1|✅ proved - incomplete|shostak|0.080|
|nextTCPType_TCC2|✅ proved - incomplete|shostak|0.090|
|nextTCPType_TCC3|✅ proved - incomplete|shostak|0.110|
|prevTCP_TCC1|✅ proved - incomplete|shostak|0.060|
|prevTCP_TCC2|✅ proved - incomplete|shostak|0.070|
|prevTCP_TCC3|✅ proved - incomplete|shostak|0.050|
|prevTCP_TCC4|✅ proved - incomplete|shostak|0.174|
|prevTCP_TCC5|✅ proved - incomplete|shostak|0.100|
|prevTCP_TCC6|✅ proved - incomplete|shostak|0.080|
|prevTCP_TCC7|✅ proved - incomplete|shostak|0.260|
|nextTCP_TCC1|✅ proved - incomplete|shostak|0.080|
|nextTCP_TCC2|✅ proved - incomplete|shostak|0.090|
|nextTCP_TCC3|✅ proved - incomplete|shostak|0.178|
|nextTCP_TCC4|✅ proved - incomplete|shostak|0.120|
|nextTCP_TCC5|✅ proved - incomplete|shostak|0.130|
|nextTCP_TCC6|✅ proved - incomplete|shostak|0.440|
|prevTCP_test|✅ proved - incomplete|shostak|0.070|
|nextTCP_test|✅ proved - incomplete|shostak|0.060|
|inTurn_TCC1|✅ proved - incomplete|shostak|0.115|
|turnRadius_TCC1|✅ proved - incomplete|shostak|0.220|
|inGroundSpeedChange_TCC1|✅ proved - incomplete|shostak|0.120|
|inVerticalSpeedChange_TCC1|✅ proved - incomplete|shostak|0.100|
|inTurnPrevBOT|✅ proved - incomplete|shostak|0.180|
|gsAccel_TCC1|✅ proved - incomplete|shostak|0.170|
|vsAccel_TCC1|✅ proved - incomplete|shostak|0.178|
|pathDistance_TCC1|✅ proved - incomplete|shostak|0.110|
|pathDistance_TCC2|✅ proved - incomplete|shostak|0.170|
|ValidTime?_TCC1|✅ proved - incomplete|shostak|0.060|
|accelZone_TCC1|✅ proved - incomplete|shostak|0.120|
|accelZone_TCC2|✅ proved - incomplete|shostak|0.180|
|accelZone_TCC3|✅ proved - incomplete|shostak|0.302|
|accelZone_TCC4|✅ proved - incomplete|shostak|0.345|
|accelZone_TCC5|✅ proved - incomplete|shostak|0.370|

## `LatLonAlt`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|mk_lem|✅ proved - complete|shostak|0.010|

## `GreatCircle`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|spherical_earth_radius_TCC1|✅ proved - incomplete|shostak|0.147|
|angular_distance_prep|✅ proved - incomplete|shostak|0.845|
|angular_distance_TCC1|✅ proved - incomplete|shostak|0.020|
|distance_from_angle_TCC1|✅ proved - incomplete|shostak|0.210|
|initial_course_impl2_TCC1|✅ proved - incomplete|shostak|0.080|
|angle_between_old_TCC1|✅ proved - incomplete|shostak|0.386|
|velocity_initial_TCC1|✅ proved - incomplete|shostak|0.460|
|velocity_initial_TCC2|✅ proved - incomplete|shostak|0.450|

## `ENU`
No formula declaration found.
## `Kinematics`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|turnByDist2D_TCC1|✅ proved - incomplete|shostak|0.296|

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
|gs_nz|✅ proved - incomplete|shostak|0.140|
|initialVelocity_TCC1|✅ proved - complete|shostak|0.040|
|initialVelocity_TCC2|✅ proved - complete|shostak|0.057|
|finalVelocity_TCC1|✅ proved - complete|shostak|0.030|
|finalVelocity_TCC2|✅ proved - complete|shostak|0.050|

## `KinematicsPosition`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|turnByDist2D_TCC1|✅ proved - incomplete|shostak|0.020|

## `TcpData`
No formula declaration found.
## `Plan`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|point_TCC1|✅ proved - complete|shostak|0.040|
|ordered_lem|✅ proved - complete|shostak|0.320|
|getIndexInRange_rec_TCC1|✅ proved - complete|shostak|0.100|
|getIndexInRange_rec_TCC2|✅ proved - complete|shostak|0.050|
|getIndexInRange_TCC1|✅ proved - complete|shostak|0.040|
|getIndex_TCC1|✅ proved - complete|shostak|0.067|
|findPrev_TCC1|✅ proved - complete|shostak|0.110|
|turnDir_TCC1|✅ proved - complete|shostak|0.080|
|pathDistanceNat_TCC1|✅ proved - complete|shostak|0.030|
|pathDistanceNat_TCC2|✅ proved - complete|shostak|0.070|
|pathDistanceNat_TCC3|✅ proved - complete|shostak|0.060|
|pathDistanceNat_TCC4|✅ proved - complete|shostak|0.030|
|pathDistance4_TCC1|✅ proved - complete|shostak|0.040|
|gsFinal_TCC1|✅ proved - complete|shostak|0.070|
|gsFinal_TCC2|✅ proved - incomplete|shostak|0.170|
|gsOut_TCC1|✅ proved - complete|shostak|0.070|
|gsOut_TCC2|✅ proved - incomplete|shostak|0.160|
|vsFinal_TCC1|✅ proved - complete|shostak|0.180|
|vsOut_TCC1|✅ proved - complete|shostak|0.160|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib/pvsio_utils/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230712-static-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230710-tcc-gen.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230707-defattach.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20230706-extrategies.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`|
