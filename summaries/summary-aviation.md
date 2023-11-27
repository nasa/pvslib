# Summary for `aviation`
Run started at 19:57:49 11/24/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **484**   | **484**    | **484**    | **0**  | **6:36.850 s**   |
|top|0|0|0|0|0.000|
|ECEF|18|18|18|0|9.874|
|error_proj|40|40|40|0|1:8.132|
|units|3|3|3|0|0.130|
|util|14|14|14|0|4.663|
|track_3D|5|5|5|0|0.086|
|track|22|22|22|0|9.069|
|simple_motion|11|11|11|0|1.156|
|simple_motion_props|24|24|24|0|8.800|
|motion|23|23|23|0|1.020|
|kinematics_turn|38|38|38|0|8.715|
|Velocity|10|10|10|0|0.552|
|gen_turn|32|32|32|0|38.780|
|turn_derivation|10|10|10|0|0.813|
|kinematics_vs_accel|12|12|12|0|14.000|
|vsAccel|53|53|53|0|1:1.254|
|gen_vert|3|3|3|0|0.337|
|vsLevelOut|42|42|42|0|2:23.558|
|gsAccel|19|19|19|0|2.230|
|kinematics_gs_accel|9|9|9|0|15.479|
|NavPoint3D|5|5|5|0|0.260|
|KinematicPlan|53|53|53|0|4.626|
|LatLonAlt|1|1|1|0|0.010|
|GreatCircle|8|8|8|0|1.579|
|ENU|0|0|0|0|0.000|
|Kinematics|1|1|1|0|0.180|
|VectFuns|1|1|1|0|0.100|
|Position|0|0|0|0|0.000|
|NavPoint|7|7|7|0|0.320|
|KinematicsPosition|1|1|1|0|0.010|
|TcpData|0|0|0|0|0.000|
|Plan|19|19|19|0|1.117|
## Detailed Summary 
## `top`
No formula declaration found.
## `ECEF`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|spherical2xyz_TCC1|✅ proved - incomplete|shostak|0.581|
|spherical2xyz_norm|✅ proved - incomplete|shostak|0.532|
|sin_acos_ecef_TCC1|✅ proved - complete|shostak|0.043|
|sin_acos_ecef_TCC2|✅ proved - incomplete|shostak|0.200|
|sin_acos_ecef|✅ proved - incomplete|shostak|0.360|
|xyz2spherical_TCC1|✅ proved - complete|shostak|0.010|
|xyz2spherical_TCC2|✅ proved - incomplete|shostak|0.170|
|xyz2spherical_TCC3|✅ proved - incomplete|shostak|0.040|
|xyz2spherical_TCC4|✅ proved - incomplete|shostak|0.169|
|xyz2spherical_TCC5|✅ proved - incomplete|shostak|0.328|
|xyz2spherical_TCC6|✅ proved - incomplete|shostak|0.238|
|xyz2spherical_TCC7|✅ proved - incomplete|shostak|0.312|
|xyz2spherical_TCC8|✅ proved - incomplete|shostak|0.888|
|xyz2spherical_TCC9|✅ proved - incomplete|shostak|0.280|
|xyz2spherical_TCC10|✅ proved - incomplete|shostak|0.379|
|spherical2xyz_def_TCC1|✅ proved - incomplete|shostak|0.100|
|spherical2xyz_def|✅ proved - incomplete|shostak|3.256|
|xyz2spherical_def|✅ proved - incomplete|shostak|1.988|

## `error_proj`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|tangent_error_basic|✅ proved - incomplete|shostak|0.175|
|lift_to_surface_TCC1|✅ proved - incomplete|shostak|0.609|
|norm_lem|✅ proved - incomplete|shostak|0.140|
|norm_Rc_lt_const|✅ proved - incomplete|shostak|1.124|
|tri_ineq_Rc|✅ proved - incomplete|shostak|0.350|
|error_valid?_TCC1|✅ proved - incomplete|shostak|1.147|
|error_valid_simple?_TCC1|✅ proved - incomplete|shostak|0.130|
|error_valid_simple?_TCC2|✅ proved - incomplete|shostak|0.040|
|error_valid_simple_def|✅ proved - incomplete|shostak|3.384|
|error_valid_simple_edgebound_def|✅ proved - incomplete|shostak|0.790|
|sphere_to_2D_plane_error_reduction|✅ proved - incomplete|shostak|5.120|
|sphere_to_2D_plane_error_reduction_edgebound|✅ proved - incomplete|shostak|1.090|
|sphere_to_2D_plane_error_simple_27780|✅ proved - incomplete|shostak|2.019|
|sphere_to_2D_plane_error_simple_1852|✅ proved - incomplete|shostak|1.976|
|sphere_to_2D_plane_error_simple_3704|✅ proved - incomplete|shostak|2.000|
|sphere_to_2D_plane_error_simple_5556|✅ proved - incomplete|shostak|1.993|
|sphere_to_2D_plane_error_simple_7408|✅ proved - incomplete|shostak|2.043|
|sphere_to_2D_plane_error_simple_9260|✅ proved - incomplete|shostak|1.967|
|sphere_to_2D_plane_error_simple_11112|✅ proved - incomplete|shostak|1.962|
|sphere_to_2D_plane_error_simple_12964|✅ proved - incomplete|shostak|1.986|
|sphere_to_2D_plane_error_simple_14816|✅ proved - incomplete|shostak|1.998|
|sphere_to_2D_plane_error_simple_16668|✅ proved - incomplete|shostak|1.998|
|sphere_to_2D_plane_error_simple_18520|✅ proved - incomplete|shostak|1.948|
|sphere_to_2D_plane_error_simple_20372|✅ proved - incomplete|shostak|1.947|
|sphere_to_2D_plane_error_simple_22224|✅ proved - incomplete|shostak|1.989|
|sphere_to_2D_plane_error_simple_24076|✅ proved - incomplete|shostak|1.984|
|sphere_to_2D_plane_error_simple_25928|✅ proved - incomplete|shostak|2.031|
|sphere_to_2D_plane_error_simple_37040|✅ proved - incomplete|shostak|0.000|
|sphere_to_2D_plane_error_simple_46300|✅ proved - incomplete|shostak|1.985|
|sphere_to_2D_plane_error_simple_55560|✅ proved - incomplete|shostak|1.971|
|sphere_to_2D_plane_error_simple_64820|✅ proved - incomplete|shostak|1.961|
|sphere_to_2D_plane_error_simple_74080|✅ proved - incomplete|shostak|1.995|
|sphere_to_2D_plane_error_simple_83340|✅ proved - incomplete|shostak|2.033|
|sphere_to_2D_plane_error_simple_92600|✅ proved - incomplete|shostak|2.008|
|sphere_to_2D_plane_error_simple_111120|✅ proved - incomplete|shostak|1.992|
|sphere_to_2D_plane_error_simple_129640|✅ proved - incomplete|shostak|1.961|
|sphere_to_2D_plane_error_simple_148160|✅ proved - incomplete|shostak|1.977|
|sphere_to_2D_plane_error_simple_166680|✅ proved - incomplete|shostak|1.925|
|sphere_to_2D_plane_error_simple_185200|✅ proved - incomplete|shostak|1.964|
|sphere_to_2D_plane_error_simple_185200_27780|✅ proved - incomplete|shostak|2.420|

## `units`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|ex0|✅ proved - complete|shostak|0.040|
|ex1|✅ proved - complete|shostak|0.050|
|ex2|✅ proved - complete|shostak|0.040|

## `util`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|util_turnDelta_TCC1|✅ proved - incomplete|shostak|0.174|
|cos_util_turnDelta|✅ proved - incomplete|shostak|0.752|
|sin_util_turnDelta|✅ proved - incomplete|shostak|1.129|
|util_turnDelta_TCC2|✅ proved - incomplete|shostak|0.120|
|util_turnDelta_TCC3|✅ proved - incomplete|shostak|0.120|
|util_turnDelta_TCC4|✅ proved - incomplete|shostak|0.120|
|mkAlt_TCC1|✅ proved - complete|shostak|0.020|
|Vect3_TCC1|✅ proved - complete|shostak|0.020|
|Hat_TCC1|✅ proved - incomplete|shostak|0.020|
|Hat_TCC2|✅ proved - incomplete|shostak|0.020|
|Hat_TCC3|✅ proved - incomplete|shostak|0.060|
|Hat_TCC4|✅ proved - incomplete|shostak|0.546|
|cos_turnDelta|✅ proved - incomplete|shostak|0.523|
|sin_turnDelta|✅ proved - incomplete|shostak|1.039|

## `track_3D`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|nzhVect3_TCC1|✅ proved - incomplete|shostak|0.016|
|track_TCC1|✅ proved - incomplete|shostak|0.020|
|ground_speed_nzv|✅ proved - incomplete|shostak|0.020|
|sin_track|✅ proved - incomplete|shostak|0.020|
|cos_track|✅ proved - incomplete|shostak|0.010|

## `track`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|trkgs2vectz_nonzero|✅ proved - incomplete|shostak|0.173|
|trkgs2vect_TCC1|✅ proved - incomplete|shostak|0.011|
|trkgs2vectz_eq|✅ proved - incomplete|shostak|0.020|
|track_TCC1|✅ proved - incomplete|shostak|0.020|
|sin_track|✅ proved - incomplete|shostak|0.000|
|cos_track|✅ proved - incomplete|shostak|1.722|
|norm_id|✅ proved - incomplete|shostak|0.183|
|track_id|✅ proved - incomplete|shostak|0.060|
|trkgs2vectz_id|✅ proved - incomplete|shostak|0.070|
|trkgs2vect_id|✅ proved - incomplete|shostak|0.020|
|track_scal|✅ proved - incomplete|shostak|0.429|
|ordered_eps_1_TCC1|✅ proved - incomplete|shostak|0.285|
|ordered_eps_1|✅ proved - incomplete|shostak|0.000|
|ordered_det_ge|✅ proved - incomplete|shostak|1.554|
|ordered_eps_neg_1|✅ proved - incomplete|shostak|0.235|
|ordered_eps_1_dot_gt_0|✅ proved - incomplete|shostak|2.330|
|ordered_eps_1_dot_ge_0|✅ proved - incomplete|shostak|0.000|
|ordered_eps_1_dot_lt_0|✅ proved - incomplete|shostak|0.858|
|ordered_eps_1_dot_le_0|✅ proved - incomplete|shostak|0.839|
|trk_TCC1|✅ proved - incomplete|shostak|0.100|
|trk_TCC2|✅ proved - incomplete|shostak|0.010|
|add_track_TCC1|✅ proved - incomplete|shostak|0.150|

## `simple_motion`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|accelUntil_param_TCC1|✅ proved - complete|shostak|0.071|
|accelUntil_param_TCC2|✅ proved - complete|shostak|0.100|
|posUntilRamp_comp_TCC1|✅ proved - complete|shostak|0.020|
|posUntilRamp_comp_TCC2|✅ proved - complete|shostak|0.010|
|posUntilRamp_comp_TCC3|✅ proved - complete|shostak|0.020|
|posUntilRamp_comp_TCC4|✅ proved - complete|shostak|0.010|
|posUntilRamp_comp_TCC5|✅ proved - complete|shostak|0.020|
|posUntilRamp_comp_TCC6|✅ proved - complete|shostak|0.010|
|posUntilRamp_comp_TCC7|✅ proved - complete|shostak|0.020|
|accelUntilRamp_TCC1|✅ proved - incomplete|shostak|0.383|
|accelUntilRamp_TCC2|✅ proved - incomplete|shostak|0.492|

## `simple_motion_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_integral_split_fun_TCC1|✅ proved - complete|shostak|0.112|
|IMP_integral_split_fun_TCC2|✅ proved - complete|shostak|0.020|
|IMP_integral_split_fun_TCC3|✅ proved - complete|shostak|0.030|
|accel_int?|✅ proved - incomplete|shostak|0.072|
|vel_fnd_TCC1|✅ proved - incomplete|shostak|0.060|
|vel_equal|✅ proved - incomplete|shostak|0.143|
|vel_int?|✅ proved - incomplete|shostak|0.120|
|pos_fnd_TCC1|✅ proved - incomplete|shostak|0.110|
|pos_equal|✅ proved - incomplete|shostak|0.210|
|accelUntil_int?|✅ proved - incomplete|shostak|0.163|
|velUntil_fnd_TCC1|✅ proved - incomplete|shostak|0.010|
|velUntil_equal|✅ proved - incomplete|shostak|0.339|
|velUntil_int?|✅ proved - incomplete|shostak|0.381|
|posUntil_fnd_TCC1|✅ proved - incomplete|shostak|0.020|
|posUntil_equal|✅ proved - incomplete|shostak|0.704|
|accelUntil_reach_goal|✅ proved - complete|shostak|0.160|
|accelUntilRamp_int?|✅ proved - incomplete|shostak|0.340|
|velUntilRamp_fnd_TCC1|✅ proved - incomplete|shostak|0.020|
|velUntilRamp_equal|✅ proved - incomplete|shostak|0.715|
|velUntilRamp_int?|✅ proved - incomplete|shostak|1.188|
|posUntilRamp_fnd_TCC1|✅ proved - incomplete|shostak|0.020|
|posUntilRamp_equal|✅ proved - incomplete|shostak|2.329|
|accelUntilRamp_param_ordered|✅ proved - incomplete|shostak|0.710|
|accelUntilRamp_reach_goal|✅ proved - incomplete|shostak|0.824|

## `motion`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|deriv_domain|✅ proved - incomplete|shostak|0.020|
|Rate_fun_TCC1|✅ proved - incomplete|shostak|0.020|
|Rate_fun_TCC2|✅ proved - incomplete|shostak|0.001|
|integrable_Rate_fun_TCC1|✅ proved - incomplete|shostak|0.000|
|integrable_Rate_fun|✅ proved - incomplete|shostak|0.020|
|derivable_integral_Rate_fun_TCC1|✅ proved - incomplete|shostak|0.030|
|derivable_integral_Rate_fun|✅ proved - incomplete|shostak|0.131|
|integrate_TCC1|✅ proved - incomplete|shostak|0.010|
|integrate2_TCC1|✅ proved - incomplete|shostak|0.030|
|integrate2_TCC2|✅ proved - incomplete|shostak|0.152|
|derive2_TCC1|✅ proved - incomplete|shostak|0.010|
|speed_TCC1|✅ proved - incomplete|shostak|0.010|
|speed_TCC2|✅ proved - incomplete|shostak|0.020|
|speed_TCC3|✅ proved - incomplete|shostak|0.008|
|position_TCC1|✅ proved - incomplete|shostak|0.030|
|position_TCC2|✅ proved - incomplete|shostak|0.020|
|no_accel_TCC1|✅ proved - incomplete|shostak|0.030|
|const_accel_TCC1|✅ proved - incomplete|shostak|0.057|
|linear_accel_TCC1|✅ proved - incomplete|shostak|0.070|
|const_accel_speed|✅ proved - incomplete|shostak|0.134|
|zero_accel_speed|✅ proved - incomplete|shostak|0.010|
|zero_accel_pos|✅ proved - incomplete|shostak|0.207|
|const_accel_pos|✅ proved - incomplete|shostak|0.000|

## `kinematics_turn`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|linear_preserves_gs|✅ proved - incomplete|shostak|0.020|
|linear_preserves_vs|✅ proved - complete|shostak|0.016|
|linear_preserves_track_TCC1|✅ proved - incomplete|shostak|0.020|
|linear_preserves_track|✅ proved - incomplete|shostak|0.010|
|turnRadius_TCC1|✅ proved - incomplete|shostak|0.579|
|turnRadius_TCC2|✅ proved - incomplete|shostak|0.100|
|turnRadius_TCC3|✅ proved - incomplete|shostak|0.397|
|turnRadius_TCC4|✅ proved - incomplete|shostak|0.090|
|turnRadius_TCC5|✅ proved - incomplete|shostak|0.297|
|speedOfTurn_TCC1|✅ proved - incomplete|shostak|0.456|
|speedOfTurn_TCC2|✅ proved - incomplete|shostak|0.109|
|turnRate_TCC1|✅ proved - complete|shostak|0.020|
|bankAngle_TCC1|✅ proved - incomplete|shostak|0.100|
|bank_radius|✅ proved - incomplete|shostak|0.070|
|bank_speed_TCC1|✅ proved - incomplete|shostak|0.123|
|bank_speed|✅ proved - incomplete|shostak|0.140|
|delta_clockwise|✅ proved - incomplete|shostak|0.366|
|turnTime_TCC1|✅ proved - incomplete|shostak|0.066|
|turnTime_TCC2|✅ proved - incomplete|shostak|0.220|
|turnTimeAlt_TCC1|✅ proved - incomplete|shostak|0.147|
|turnTimeAlt_def|✅ proved - incomplete|shostak|0.050|
|turnOmega_TCC1|✅ proved - incomplete|shostak|0.080|
|turnOmega_start|✅ proved - incomplete|shostak|0.176|
|turnOmegaAT_TCC1|✅ proved - incomplete|shostak|0.030|
|turnOmegaAT_TCC2|✅ proved - incomplete|shostak|0.070|
|turnOmega_equal|✅ proved - incomplete|shostak|0.000|
|center_test_3|✅ proved - incomplete|shostak|0.190|
|center_test_4|✅ proved - incomplete|shostak|0.170|
|center_test_TCC1|✅ proved - complete|shostak|0.020|
|center_test|✅ proved - incomplete|shostak|0.343|
|center_test2|✅ proved - incomplete|shostak|0.361|
|turnOmega_thm|✅ proved - incomplete|shostak|0.641|
|turnOmega_vel|✅ proved - incomplete|shostak|0.557|
|turnOmega_TCC2|✅ proved - incomplete|shostak|0.089|
|turnOmega_test|✅ proved - incomplete|shostak|0.590|
|turnOmega_test2|✅ proved - incomplete|shostak|0.650|
|turnOmega_test3|✅ proved - incomplete|shostak|0.621|
|turnOmega_test4|✅ proved - incomplete|shostak|0.731|

## `Velocity`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|trkVel_TCC1|✅ proved - incomplete|shostak|0.040|
|trkVel_TCC2|✅ proved - incomplete|shostak|0.020|
|groundSpeed_nzv|✅ proved - incomplete|shostak|0.010|
|trk_is_pi2|✅ proved - incomplete|shostak|0.070|
|trk_track|✅ proved - incomplete|shostak|0.040|
|mkGs_TCC1|✅ proved - incomplete|shostak|0.053|
|mkTrkGsVs_nonzero|✅ proved - incomplete|shostak|0.050|
|track_mktrk|✅ proved - incomplete|shostak|0.020|
|mkTrkGsVs_def|✅ proved - incomplete|shostak|0.169|
|Hat_TCC1|✅ proved - incomplete|shostak|0.080|

## `gen_turn`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|not_collinear_TCC1|✅ proved - incomplete|shostak|0.030|
|not_collinear_TCC2|✅ proved - incomplete|shostak|0.030|
|not_collinear_not_equal|✅ proved - incomplete|shostak|0.030|
|hat_on_line_TCC1|✅ proved - incomplete|shostak|0.030|
|hat_on_line_TCC2|✅ proved - incomplete|shostak|0.200|
|hat_on_line|✅ proved - incomplete|shostak|0.143|
|normalize_sqv|✅ proved - incomplete|shostak|0.020|
|dot_normalize_ge|✅ proved - incomplete|shostak|0.072|
|sqv_hat_hat|✅ proved - incomplete|shostak|0.071|
|pythagorean_dot_hat|✅ proved - incomplete|shostak|0.360|
|turn_gen_sides|✅ proved - incomplete|shostak|0.291|
|turnGenerator_TCC1|✅ proved - incomplete|shostak|0.020|
|turnGenerator_TCC2|✅ proved - incomplete|shostak|0.030|
|turnGenerator_TCC3|✅ proved - incomplete|shostak|0.030|
|turnGenerator_TCC4|✅ proved - incomplete|shostak|0.033|
|turnGenerator_TCC5|✅ proved - incomplete|shostak|0.020|
|turnGenerator_TCC6|✅ proved - incomplete|shostak|0.070|
|turnGenerator_test_TCC1|✅ proved - complete|shostak|0.020|
|turnGenerator_test_TCC2|✅ proved - incomplete|shostak|0.080|
|turnGenerator_test|✅ proved - incomplete|shostak|0.090|
|turnGenerator_test_2_TCC1|✅ proved - incomplete|shostak|0.072|
|turnGenerator_test_2|✅ proved - incomplete|shostak|0.090|
|right_turn_test|✅ proved - complete|shostak|0.030|
|BOT_onLine_TCC1|✅ proved - incomplete|shostak|0.010|
|BOT_onLine|✅ proved - incomplete|shostak|0.130|
|EOT_onLine_TCC1|✅ proved - incomplete|shostak|0.591|
|EOT_onLine|✅ proved - incomplete|shostak|0.162|
|BOT_Center|✅ proved - incomplete|shostak|0.643|
|EOT_Center|✅ proved - incomplete|shostak|0.700|
|centers_match|✅ proved - incomplete|shostak|4.129|
|turnGenerator_correct_TCC1|✅ proved - incomplete|shostak|0.100|
|turnGenerator_correct|✅ proved - incomplete|shostak|30.453|

## `turn_derivation`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|turn_vx_prep_TCC1|✅ proved - complete|shostak|0.020|
|turn_vx_prep_TCC2|✅ proved - complete|shostak|0.010|
|turn_vx_prep_TCC3|✅ proved - complete|shostak|0.010|
|turn_vx_prep|✅ proved - incomplete|shostak|0.080|
|turn_vy_prep|✅ proved - incomplete|shostak|0.090|
|turn_vx_TCC1|✅ proved - incomplete|shostak|0.020|
|turn_vy_TCC1|✅ proved - incomplete|shostak|0.010|
|linear_angular_TCC1|✅ proved - incomplete|shostak|0.000|
|turn_position_x|✅ proved - incomplete|shostak|0.321|
|turn_position_y|✅ proved - incomplete|shostak|0.252|

## `kinematics_vs_accel`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|vsConstAccelGoalPos_TCC1|✅ proved - incomplete|shostak|0.046|
|equals_integral|✅ proved - incomplete|shostak|0.574|
|equals_integral_pos|✅ proved - incomplete|shostak|1.896|
|reach_goalVs|✅ proved - incomplete|shostak|0.475|
|gamma_TCC1|✅ proved - complete|shostak|0.020|
|gamma_TCC2|✅ proved - complete|shostak|0.020|
|vsAccelUntilWithRampUp_TCC1|✅ proved - incomplete|shostak|0.140|
|vsAccelUntilWithRampUp_TCC2|✅ proved - complete|shostak|0.110|
|equals_integral_AUWRU|✅ proved - incomplete|shostak|8.166|
|reach_goal_AUWRU|✅ proved - incomplete|shostak|2.310|
|vsAccelPos_TCC1|✅ proved - complete|shostak|0.080|
|vsAccel_TCC1|✅ proved - complete|shostak|0.163|

## `vsAccel`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|accel_TCC1|✅ proved - complete|shostak|0.070|
|accel_TCC2|✅ proved - complete|shostak|0.010|
|accel_TCC3|✅ proved - complete|shostak|0.010|
|L1_prep|✅ proved - incomplete|shostak|0.191|
|velo_TCC1|✅ proved - incomplete|shostak|0.062|
|L1_TCC1|✅ proved - complete|shostak|0.020|
|L1_TCC2|✅ proved - complete|shostak|0.026|
|L1|✅ proved - incomplete|shostak|0.187|
|vsAccelUntil_Vel_TCC1|✅ proved - complete|shostak|0.030|
|L2_prep_TCC1|✅ proved - complete|shostak|0.017|
|L2_prep_TCC2|✅ proved - complete|shostak|0.030|
|L2_prep|✅ proved - incomplete|shostak|1.222|
|posit_TCC1|✅ proved - incomplete|shostak|0.010|
|L2_TCC1|✅ proved - complete|shostak|0.010|
|L2_TCC2|✅ proved - complete|shostak|0.020|
|L2|✅ proved - incomplete|shostak|3.440|
|vsAccelUntil_Pos_TCC1|✅ proved - complete|shostak|0.040|
|vsAccelUntil_Pos_TCC2|✅ proved - complete|shostak|0.040|
|vsAccelRamp_Vel_TCC1|✅ proved - incomplete|shostak|0.512|
|Int_ramp_vel_TCC1|✅ proved - complete|shostak|0.010|
|Int_ramp_vel|✅ proved - incomplete|shostak|0.605|
|Int_ramp_vel2|✅ proved - incomplete|shostak|0.592|
|vsAccelRamp_Pos_TCC1|✅ proved - incomplete|shostak|0.373|
|Int_ramp_pos_TCC1|✅ proved - complete|shostak|0.009|
|Int_ramp_pos|✅ proved - incomplete|shostak|0.000|
|vsAccelConst_Vel_TCC1|✅ proved - incomplete|shostak|0.208|
|Int_const_vel|✅ proved - incomplete|shostak|0.226|
|Int_const_vel2|✅ proved - incomplete|shostak|0.485|
|vsAccelConst_Pos_TCC1|✅ proved - incomplete|shostak|0.366|
|Int_const_pos|✅ proved - incomplete|shostak|1.253|
|sign_not_zero|✅ proved - complete|shostak|0.030|
|vsAUWRU_case1_acc_TCC1|✅ proved - incomplete|shostak|0.130|
|case1_vel_prep|✅ proved - incomplete|shostak|1.743|
|vsAUWRU_case1_vel_TCC1|✅ proved - incomplete|shostak|0.130|
|Integral_case1_vel|✅ proved - incomplete|shostak|2.555|
|case1_pos_prep|✅ proved - incomplete|shostak|0.000|
|vsAUWRU_case1_pos_TCC1|✅ proved - incomplete|shostak|0.403|
|Integral_case1_pos_TCC1|✅ proved - incomplete|shostak|0.070|
|Integral_case1_pos|✅ proved - incomplete|shostak|4.264|
|vsAUWRU_acc_TCC1|✅ proved - incomplete|shostak|0.174|
|case2_vel_prep|✅ proved - incomplete|shostak|0.892|
|vsAUWRU_vel_TCC1|✅ proved - incomplete|shostak|0.010|
|Integral_AUWRU_vel_TCC1|✅ proved - incomplete|shostak|0.129|
|Integral_AUWRU_vel|✅ proved - incomplete|shostak|4.696|
|case2_pos_prep|✅ proved - incomplete|shostak|1.837|
|vsAUWRU_pos_TCC1|✅ proved - incomplete|shostak|0.010|
|Integral_AUWRU_pos_TCC1|✅ proved - incomplete|shostak|0.040|
|Integral_AUWRU_pos_TCC2|✅ proved - incomplete|shostak|0.080|
|Integral_AUWRU_pos|✅ proved - incomplete|shostak|33.688|
|vsAUWRU_TCC1|✅ proved - incomplete|shostak|0.124|
|same_tMax|✅ proved - incomplete|shostak|0.135|
|exceeds_deltav|✅ proved - incomplete|shostak|0.000|
|finish_ramp|✅ proved - incomplete|shostak|0.040|

## `gen_vert`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|vertGen_TCC1|✅ proved - complete|shostak|0.049|
|vertGen_TCC2|✅ proved - complete|shostak|0.070|
|vertGen_TCC3|✅ proved - complete|shostak|0.218|

## `vsLevelOut`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|S1_TCC1|✅ proved - complete|shostak|0.020|
|quadRoots_TCC1|✅ proved - complete|shostak|0.010|
|quadRoots_TCC2|✅ proved - complete|shostak|0.090|
|quad_contrapos_TCC1|✅ proved - complete|shostak|0.060|
|quad_contrapos_TCC2|✅ proved - complete|shostak|0.060|
|quad_contrapos|✅ proved - incomplete|shostak|0.887|
|quad_lem_TCC1|✅ proved - complete|shostak|0.050|
|quad_lem|✅ proved - incomplete|shostak|0.473|
|quad_lem2_TCC1|✅ proved - incomplete|shostak|0.020|
|quad_lem2_TCC2|✅ proved - incomplete|shostak|0.128|
|quad_lem2_TCC3|✅ proved - incomplete|shostak|0.150|
|quad_lem2|✅ proved - incomplete|shostak|1.927|
|vsLevelOutTimes1_TCC1|✅ proved - complete|shostak|0.221|
|vsLevelOutTimes1_TCC2|✅ proved - complete|shostak|0.120|
|vsLevelOutTimes1_TCC3|✅ proved - complete|shostak|3.443|
|vsLevelOutTimes1_TCC4|✅ proved - complete|shostak|0.557|
|vsLevelOutTimes1_TCC5|✅ proved - complete|shostak|0.090|
|vsLevelOutTimes_TCC1|✅ proved - complete|shostak|0.060|
|vsLevelOutTimes_TCC2|✅ proved - complete|shostak|0.050|
|times_increase|✅ proved - incomplete|shostak|44.509|
|vsLevelOut_acc_TCC1|✅ proved - incomplete|shostak|0.068|
|vsLevelOut_acc_TCC2|✅ proved - incomplete|shostak|0.010|
|vsLevelOut_acc_TCC3|✅ proved - incomplete|shostak|0.061|
|vel_prep_TCC1|✅ proved - incomplete|shostak|0.028|
|vel_prep_TCC2|✅ proved - incomplete|shostak|0.020|
|vel_prep|✅ proved - incomplete|shostak|0.555|
|vsLevelOut_velInt_TCC1|✅ proved - incomplete|shostak|0.015|
|vsLevelOut_velCalc_TCC1|✅ proved - incomplete|shostak|0.801|
|Integral_vsLO_vel|✅ proved - incomplete|shostak|0.000|
|pos_prep|✅ proved - incomplete|shostak|3.446|
|vsLevelOut_posInt_TCC1|✅ proved - incomplete|shostak|0.020|
|vsLevelOut_posCalc_TCC1|✅ proved - incomplete|shostak|0.666|
|Integral_vsLO_pos|✅ proved - incomplete|shostak|15.804|
|Velocity_after_level|✅ proved - incomplete|shostak|1.672|
|Position_after_level|✅ proved - incomplete|shostak|1:4.013|
|vsLevelOut_TCC1|✅ proved - incomplete|shostak|0.852|
|vsLevelOut_TCC2|✅ proved - incomplete|shostak|0.797|
|vsLevelOut_TCC3|✅ proved - incomplete|shostak|0.020|
|vsLevelOut_TCC4|✅ proved - incomplete|shostak|0.030|
|vsLevelOut_TCC5|✅ proved - incomplete|shostak|0.026|
|vsLevelOutEquals|✅ proved - incomplete|shostak|1.044|
|vsLevelOut_vect2|✅ proved - incomplete|shostak|0.685|

## `gsAccel`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|gsAccel_Vel_prep_TCC1|✅ proved - incomplete|shostak|0.040|
|gsAccel_Vel_prep_TCC2|✅ proved - incomplete|shostak|0.030|
|gsAccel_Vel_prep|✅ proved - incomplete|shostak|0.133|
|gsAccel_Vel_Int_TCC1|✅ proved - incomplete|shostak|0.130|
|gsAccel_Vel_Int_TCC2|✅ proved - incomplete|shostak|0.134|
|gsAccel_Vel_Int_TCC3|✅ proved - incomplete|shostak|0.137|
|Integral_gsAccel_Vel|✅ proved - incomplete|shostak|0.110|
|gsAccel_Pos_prep_TCC1|✅ proved - incomplete|shostak|0.020|
|gsAccel_Pos_prep_TCC2|✅ proved - incomplete|shostak|0.020|
|gsAccel_Pos_prep|✅ proved - incomplete|shostak|0.645|
|gsAccel_Pos_Int_TCC1|✅ proved - incomplete|shostak|0.016|
|gsAccel_Pos_Int_TCC2|✅ proved - incomplete|shostak|0.010|
|gsAccel_Pos_Int_TCC3|✅ proved - incomplete|shostak|0.020|
|gsAccel_Pos_Calc_TCC1|✅ proved - incomplete|shostak|0.040|
|Integral_gsAccel_Pos|✅ proved - incomplete|shostak|0.405|
|gsAccelToRTA_possible_TCC1|✅ proved - incomplete|shostak|0.020|
|gsAccelToRTA_possible_TCC2|✅ proved - incomplete|shostak|0.020|
|gsAccelToRTA_possible_TCC3|✅ proved - incomplete|shostak|0.080|
|neg_groundspeed|✅ proved - incomplete|shostak|0.220|

## `kinematics_gs_accel`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|gsAccel_equals_fnd|✅ proved - incomplete|shostak|1.469|
|reach_goal|✅ proved - incomplete|shostak|1.410|
|gsAccelUntil_checks|✅ proved - incomplete|shostak|1.711|
|gsAccelToRTA_TCC1|✅ proved - complete|shostak|0.080|
|gsAccelToRTA_TCC2|✅ proved - incomplete|shostak|0.467|
|gsAccelToRTA_TCC3|✅ proved - complete|shostak|0.340|
|gsAccelToRTA_checks_TCC1|✅ proved - incomplete|shostak|0.020|
|gsAccelToRTA_checks_TCC2|✅ proved - incomplete|shostak|2.710|
|gsAccelToRTA_checks|✅ proved - incomplete|shostak|7.272|

## `NavPoint3D`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|groundSpeed_TCC1|✅ proved - complete|shostak|0.040|
|groundSpeed_TCC2|✅ proved - incomplete|shostak|0.080|
|gs_nz|✅ proved - incomplete|shostak|0.090|
|initialVelocity_TCC1|✅ proved - complete|shostak|0.020|
|initialVelocity_TCC2|✅ proved - complete|shostak|0.030|

## `KinematicPlan`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|plan_lin_ex1_TCC1|✅ proved - incomplete|shostak|0.031|
|plan_lin_ex1_TCC2|✅ proved - incomplete|shostak|0.050|
|getLastTime_TCC1|✅ proved - incomplete|shostak|0.030|
|getSegment_TCC1|✅ proved - incomplete|shostak|0.040|
|getSegment_TCC2|✅ proved - incomplete|shostak|0.020|
|getSegment_TCC3|✅ proved - incomplete|shostak|0.030|
|getSegment_TCC4|✅ proved - incomplete|shostak|0.020|
|getSegment_TCC5|✅ proved - incomplete|shostak|0.060|
|getSegment_TCC6|✅ proved - incomplete|shostak|0.060|
|getSegment_TCC7|✅ proved - incomplete|shostak|0.020|
|getSegment_TCC8|✅ proved - incomplete|shostak|0.103|
|getSegment_test_TCC1|✅ proved - incomplete|shostak|0.030|
|getSegment_test|✅ proved - incomplete|shostak|0.110|
|getSegment_TCC9|✅ proved - incomplete|shostak|0.030|
|getSegment_def_found_TCC1|✅ proved - incomplete|shostak|0.160|
|getSegment_def_found|✅ proved - incomplete|shostak|0.742|
|getSegment_at_tcp|✅ proved - incomplete|shostak|0.160|
|prevTCPType_TCC1|✅ proved - incomplete|shostak|0.050|
|prevTCPType_TCC2|✅ proved - incomplete|shostak|0.040|
|prevTCPType_TCC3|✅ proved - incomplete|shostak|0.067|
|nextTCPType_TCC1|✅ proved - incomplete|shostak|0.050|
|nextTCPType_TCC2|✅ proved - incomplete|shostak|0.050|
|nextTCPType_TCC3|✅ proved - incomplete|shostak|0.060|
|prevTCP_TCC1|✅ proved - incomplete|shostak|0.040|
|prevTCP_TCC2|✅ proved - incomplete|shostak|0.040|
|prevTCP_TCC3|✅ proved - incomplete|shostak|0.030|
|prevTCP_TCC4|✅ proved - incomplete|shostak|0.000|
|prevTCP_TCC5|✅ proved - incomplete|shostak|0.060|
|prevTCP_TCC6|✅ proved - incomplete|shostak|0.060|
|prevTCP_TCC7|✅ proved - incomplete|shostak|0.160|
|nextTCP_TCC1|✅ proved - incomplete|shostak|0.050|
|nextTCP_TCC2|✅ proved - incomplete|shostak|0.050|
|nextTCP_TCC3|✅ proved - incomplete|shostak|0.122|
|nextTCP_TCC4|✅ proved - incomplete|shostak|0.070|
|nextTCP_TCC5|✅ proved - incomplete|shostak|0.080|
|nextTCP_TCC6|✅ proved - incomplete|shostak|0.200|
|prevTCP_test|✅ proved - incomplete|shostak|0.030|
|nextTCP_test|✅ proved - incomplete|shostak|0.032|
|inTurn_TCC1|✅ proved - incomplete|shostak|0.060|
|turnRadius_TCC1|✅ proved - incomplete|shostak|0.100|
|inGroundSpeedChange_TCC1|✅ proved - incomplete|shostak|0.060|
|inVerticalSpeedChange_TCC1|✅ proved - incomplete|shostak|0.060|
|inTurnPrevBOT|✅ proved - incomplete|shostak|0.100|
|gsAccel_TCC1|✅ proved - incomplete|shostak|0.100|
|vsAccel_TCC1|✅ proved - incomplete|shostak|0.100|
|pathDistance_TCC1|✅ proved - incomplete|shostak|0.070|
|pathDistance_TCC2|✅ proved - incomplete|shostak|0.110|
|ValidTime?_TCC1|✅ proved - incomplete|shostak|0.030|
|accelZone_TCC1|✅ proved - incomplete|shostak|0.080|
|accelZone_TCC2|✅ proved - incomplete|shostak|0.100|
|accelZone_TCC3|✅ proved - incomplete|shostak|0.180|
|accelZone_TCC4|✅ proved - incomplete|shostak|0.210|
|accelZone_TCC5|✅ proved - incomplete|shostak|0.229|

## `LatLonAlt`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|mk_lem|✅ proved - complete|shostak|0.010|

## `GreatCircle`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|spherical_earth_radius_TCC1|✅ proved - incomplete|shostak|0.090|
|angular_distance_prep|✅ proved - incomplete|shostak|0.519|
|angular_distance_TCC1|✅ proved - incomplete|shostak|0.020|
|distance_from_angle_TCC1|✅ proved - incomplete|shostak|0.130|
|initial_course_impl2_TCC1|✅ proved - incomplete|shostak|0.040|
|angle_between_old_TCC1|✅ proved - incomplete|shostak|0.230|
|velocity_initial_TCC1|✅ proved - incomplete|shostak|0.280|
|velocity_initial_TCC2|✅ proved - incomplete|shostak|0.270|

## `ENU`
No formula declaration found.
## `Kinematics`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|turnByDist2D_TCC1|✅ proved - incomplete|shostak|0.180|

## `VectFuns`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|angle_between_TCC1|✅ proved - incomplete|shostak|0.100|

## `Position`
No formula declaration found.
## `NavPoint`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|groundSpeed_TCC1|✅ proved - complete|shostak|0.040|
|groundSpeed_TCC2|✅ proved - incomplete|shostak|0.080|
|gs_nz|✅ proved - incomplete|shostak|0.090|
|initialVelocity_TCC1|✅ proved - complete|shostak|0.020|
|initialVelocity_TCC2|✅ proved - complete|shostak|0.040|
|finalVelocity_TCC1|✅ proved - complete|shostak|0.020|
|finalVelocity_TCC2|✅ proved - complete|shostak|0.030|

## `KinematicsPosition`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|turnByDist2D_TCC1|✅ proved - incomplete|shostak|0.010|

## `TcpData`
No formula declaration found.
## `Plan`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|point_TCC1|✅ proved - complete|shostak|0.020|
|ordered_lem|✅ proved - complete|shostak|0.199|
|getIndexInRange_rec_TCC1|✅ proved - complete|shostak|0.060|
|getIndexInRange_rec_TCC2|✅ proved - complete|shostak|0.040|
|getIndexInRange_TCC1|✅ proved - complete|shostak|0.020|
|getIndex_TCC1|✅ proved - complete|shostak|0.040|
|findPrev_TCC1|✅ proved - complete|shostak|0.070|
|turnDir_TCC1|✅ proved - complete|shostak|0.050|
|pathDistanceNat_TCC1|✅ proved - complete|shostak|0.010|
|pathDistanceNat_TCC2|✅ proved - complete|shostak|0.038|
|pathDistanceNat_TCC3|✅ proved - complete|shostak|0.040|
|pathDistanceNat_TCC4|✅ proved - complete|shostak|0.020|
|pathDistance4_TCC1|✅ proved - complete|shostak|0.020|
|gsFinal_TCC1|✅ proved - complete|shostak|0.040|
|gsFinal_TCC2|✅ proved - incomplete|shostak|0.100|
|gsOut_TCC1|✅ proved - complete|shostak|0.040|
|gsOut_TCC2|✅ proved - incomplete|shostak|0.100|
|vsFinal_TCC1|✅ proved - complete|shostak|0.110|
|vsOut_TCC1|✅ proved - complete|shostak|0.100|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Mac OS X (Intel)] (Nov 14, 2020 23:13)|
| Patch Version| n/a|
| Library Path| `/Applications/pvs-7.1.0/pvslib/`<br/>`/Applications/pvs-7.1.0/lib/`<br/>`/Applications/pvs-7.1.0/pvslib/float/`<br/>`/Applications/pvs-7.1.0/pvslib/pvsio_utils/`|
| Loaded Patches | `/Applications/pvs-7.1.0/pvslib/.pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230712-static-update.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230710-tcc-gen.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230709-pvsio.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230708-prelude-attachments.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230707-defattach.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20230706-extrategies.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210623-cl2pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210323-wish.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210301-pvseval-update.lisp`<br/>`/Applications/pvs-7.1.0/pvslib/pvs-patches/patch-20210225-cl2pvs.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210715a.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210715.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210707.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210706.lisp`<br/>`/Applications/pvs-7.1.0/pvs-patches/patch-20210511.lisp`|
