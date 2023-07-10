# Summary for `aviation`
Run started at 2:14:32 7/8/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **484**   | **484**    | **484**    | **0**  | **8:20.059 s**   |
|top|0|0|0|0|0.000|
|ECEF|18|18|18|0|11.921|
|error_proj|40|40|40|0|1:26.452|
|units|3|3|3|0|0.170|
|util|14|14|14|0|5.501|
|track_3D|5|5|5|0|0.130|
|track|22|22|22|0|10.785|
|simple_motion|11|11|11|0|1.538|
|simple_motion_props|24|24|24|0|11.976|
|motion|23|23|23|0|2.481|
|kinematics_turn|38|38|38|0|13.206|
|Velocity|10|10|10|0|0.732|
|gen_turn|32|32|32|0|43.554|
|turn_derivation|10|10|10|0|1.331|
|kinematics_vs_accel|12|12|12|0|16.358|
|vsAccel|53|53|53|0|1:10.544|
|gen_vert|3|3|3|0|0.514|
|vsLevelOut|42|42|42|0|3:6.428|
|gsAccel|19|19|19|0|3.236|
|kinematics_gs_accel|9|9|9|0|21.309|
|NavPoint3D|5|5|5|0|0.369|
|KinematicPlan|53|53|53|0|6.716|
|LatLonAlt|1|1|1|0|0.010|
|GreatCircle|8|8|8|0|2.295|
|ENU|0|0|0|0|0.000|
|Kinematics|1|1|1|0|0.280|
|VectFuns|1|1|1|0|0.139|
|Position|0|0|0|0|0.000|
|NavPoint|7|7|7|0|0.461|
|KinematicsPosition|1|1|1|0|0.020|
|TcpData|0|0|0|0|0.000|
|Plan|19|19|19|0|1.603|
## Detailed Summary 
## `top`
No formula declaration found.
## `ECEF`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|spherical2xyz_TCC1|✅ proved - incomplete|shostak|0.773|
|spherical2xyz_norm|✅ proved - incomplete|shostak|0.731|
|sin_acos_ecef_TCC1|✅ proved - complete|shostak|0.050|
|sin_acos_ecef_TCC2|✅ proved - incomplete|shostak|0.272|
|sin_acos_ecef|✅ proved - incomplete|shostak|0.441|
|xyz2spherical_TCC1|✅ proved - complete|shostak|0.010|
|xyz2spherical_TCC2|✅ proved - incomplete|shostak|0.215|
|xyz2spherical_TCC3|✅ proved - incomplete|shostak|0.060|
|xyz2spherical_TCC4|✅ proved - incomplete|shostak|0.224|
|xyz2spherical_TCC5|✅ proved - incomplete|shostak|0.412|
|xyz2spherical_TCC6|✅ proved - incomplete|shostak|0.314|
|xyz2spherical_TCC7|✅ proved - incomplete|shostak|0.402|
|xyz2spherical_TCC8|✅ proved - incomplete|shostak|1.141|
|xyz2spherical_TCC9|✅ proved - incomplete|shostak|0.363|
|xyz2spherical_TCC10|✅ proved - incomplete|shostak|0.494|
|spherical2xyz_def_TCC1|✅ proved - incomplete|shostak|0.131|
|spherical2xyz_def|✅ proved - incomplete|shostak|3.244|
|xyz2spherical_def|✅ proved - incomplete|shostak|2.644|

## `error_proj`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|tangent_error_basic|✅ proved - incomplete|shostak|0.225|
|lift_to_surface_TCC1|✅ proved - incomplete|shostak|0.841|
|norm_lem|✅ proved - incomplete|shostak|0.190|
|norm_Rc_lt_const|✅ proved - incomplete|shostak|1.501|
|tri_ineq_Rc|✅ proved - incomplete|shostak|0.443|
|error_valid?_TCC1|✅ proved - incomplete|shostak|1.678|
|error_valid_simple?_TCC1|✅ proved - incomplete|shostak|0.170|
|error_valid_simple?_TCC2|✅ proved - incomplete|shostak|0.060|
|error_valid_simple_def|✅ proved - incomplete|shostak|0.000|
|error_valid_simple_edgebound_def|✅ proved - incomplete|shostak|6.359|
|sphere_to_2D_plane_error_reduction|✅ proved - incomplete|shostak|0.679|
|sphere_to_2D_plane_error_reduction_edgebound|✅ proved - incomplete|shostak|6.434|
|sphere_to_2D_plane_error_simple_27780|✅ proved - incomplete|shostak|2.546|
|sphere_to_2D_plane_error_simple_1852|✅ proved - incomplete|shostak|0.000|
|sphere_to_2D_plane_error_simple_3704|✅ proved - incomplete|shostak|2.600|
|sphere_to_2D_plane_error_simple_5556|✅ proved - incomplete|shostak|2.631|
|sphere_to_2D_plane_error_simple_7408|✅ proved - incomplete|shostak|2.565|
|sphere_to_2D_plane_error_simple_9260|✅ proved - incomplete|shostak|2.567|
|sphere_to_2D_plane_error_simple_11112|✅ proved - incomplete|shostak|2.556|
|sphere_to_2D_plane_error_simple_12964|✅ proved - incomplete|shostak|2.614|
|sphere_to_2D_plane_error_simple_14816|✅ proved - incomplete|shostak|2.574|
|sphere_to_2D_plane_error_simple_16668|✅ proved - incomplete|shostak|2.564|
|sphere_to_2D_plane_error_simple_18520|✅ proved - incomplete|shostak|2.618|
|sphere_to_2D_plane_error_simple_20372|✅ proved - incomplete|shostak|2.583|
|sphere_to_2D_plane_error_simple_22224|✅ proved - incomplete|shostak|2.634|
|sphere_to_2D_plane_error_simple_24076|✅ proved - incomplete|shostak|2.612|
|sphere_to_2D_plane_error_simple_25928|✅ proved - incomplete|shostak|2.586|
|sphere_to_2D_plane_error_simple_37040|✅ proved - incomplete|shostak|2.603|
|sphere_to_2D_plane_error_simple_46300|✅ proved - incomplete|shostak|2.571|
|sphere_to_2D_plane_error_simple_55560|✅ proved - incomplete|shostak|2.572|
|sphere_to_2D_plane_error_simple_64820|✅ proved - incomplete|shostak|0.000|
|sphere_to_2D_plane_error_simple_74080|✅ proved - incomplete|shostak|2.536|
|sphere_to_2D_plane_error_simple_83340|✅ proved - incomplete|shostak|2.549|
|sphere_to_2D_plane_error_simple_92600|✅ proved - incomplete|shostak|2.544|
|sphere_to_2D_plane_error_simple_111120|✅ proved - incomplete|shostak|2.550|
|sphere_to_2D_plane_error_simple_129640|✅ proved - incomplete|shostak|2.580|
|sphere_to_2D_plane_error_simple_148160|✅ proved - incomplete|shostak|2.641|
|sphere_to_2D_plane_error_simple_166680|✅ proved - incomplete|shostak|2.524|
|sphere_to_2D_plane_error_simple_185200|✅ proved - incomplete|shostak|2.634|
|sphere_to_2D_plane_error_simple_185200_27780|✅ proved - incomplete|shostak|3.318|

## `units`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|ex0|✅ proved - complete|shostak|0.060|
|ex1|✅ proved - complete|shostak|0.050|
|ex2|✅ proved - complete|shostak|0.060|

## `util`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|util_turnDelta_TCC1|✅ proved - incomplete|shostak|0.218|
|cos_util_turnDelta|✅ proved - incomplete|shostak|0.966|
|sin_util_turnDelta|✅ proved - incomplete|shostak|1.520|
|util_turnDelta_TCC2|✅ proved - incomplete|shostak|0.150|
|util_turnDelta_TCC3|✅ proved - incomplete|shostak|0.151|
|util_turnDelta_TCC4|✅ proved - incomplete|shostak|0.150|
|mkAlt_TCC1|✅ proved - complete|shostak|0.020|
|Vect3_TCC1|✅ proved - complete|shostak|0.040|
|Hat_TCC1|✅ proved - incomplete|shostak|0.020|
|Hat_TCC2|✅ proved - incomplete|shostak|0.030|
|Hat_TCC3|✅ proved - incomplete|shostak|0.080|
|Hat_TCC4|✅ proved - incomplete|shostak|0.000|
|cos_turnDelta|✅ proved - incomplete|shostak|0.729|
|sin_turnDelta|✅ proved - incomplete|shostak|1.427|

## `track_3D`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|nzhVect3_TCC1|✅ proved - incomplete|shostak|0.030|
|track_TCC1|✅ proved - incomplete|shostak|0.030|
|ground_speed_nzv|✅ proved - incomplete|shostak|0.030|
|sin_track|✅ proved - incomplete|shostak|0.020|
|cos_track|✅ proved - incomplete|shostak|0.020|

## `track`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|trkgs2vectz_nonzero|✅ proved - incomplete|shostak|0.232|
|trkgs2vect_TCC1|✅ proved - incomplete|shostak|0.030|
|trkgs2vectz_eq|✅ proved - incomplete|shostak|0.010|
|track_TCC1|✅ proved - incomplete|shostak|0.020|
|sin_track|✅ proved - incomplete|shostak|0.000|
|cos_track|✅ proved - incomplete|shostak|0.000|
|norm_id|✅ proved - incomplete|shostak|0.251|
|track_id|✅ proved - incomplete|shostak|0.089|
|trkgs2vectz_id|✅ proved - incomplete|shostak|0.070|
|trkgs2vect_id|✅ proved - incomplete|shostak|0.030|
|track_scal|✅ proved - incomplete|shostak|0.565|
|ordered_eps_1_TCC1|✅ proved - incomplete|shostak|0.392|
|ordered_eps_1|✅ proved - incomplete|shostak|2.284|
|ordered_det_ge|✅ proved - incomplete|shostak|2.073|
|ordered_eps_neg_1|✅ proved - incomplete|shostak|0.323|
|ordered_eps_1_dot_gt_0|✅ proved - incomplete|shostak|0.000|
|ordered_eps_1_dot_ge_0|✅ proved - incomplete|shostak|2.904|
|ordered_eps_1_dot_lt_0|✅ proved - incomplete|shostak|1.149|
|ordered_eps_1_dot_le_0|✅ proved - incomplete|shostak|0.000|
|trk_TCC1|✅ proved - incomplete|shostak|0.130|
|trk_TCC2|✅ proved - incomplete|shostak|0.020|
|add_track_TCC1|✅ proved - incomplete|shostak|0.213|

## `simple_motion`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|accelUntil_param_TCC1|✅ proved - complete|shostak|0.100|
|accelUntil_param_TCC2|✅ proved - complete|shostak|0.130|
|posUntilRamp_comp_TCC1|✅ proved - complete|shostak|0.020|
|posUntilRamp_comp_TCC2|✅ proved - complete|shostak|0.030|
|posUntilRamp_comp_TCC3|✅ proved - complete|shostak|0.020|
|posUntilRamp_comp_TCC4|✅ proved - complete|shostak|0.020|
|posUntilRamp_comp_TCC5|✅ proved - complete|shostak|0.020|
|posUntilRamp_comp_TCC6|✅ proved - complete|shostak|0.020|
|posUntilRamp_comp_TCC7|✅ proved - complete|shostak|0.020|
|accelUntilRamp_TCC1|✅ proved - incomplete|shostak|0.500|
|accelUntilRamp_TCC2|✅ proved - incomplete|shostak|0.658|

## `simple_motion_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_integral_split_fun_TCC1|✅ proved - complete|shostak|0.150|
|IMP_integral_split_fun_TCC2|✅ proved - complete|shostak|0.030|
|IMP_integral_split_fun_TCC3|✅ proved - complete|shostak|0.030|
|accel_int?|✅ proved - incomplete|shostak|0.102|
|vel_fnd_TCC1|✅ proved - incomplete|shostak|0.080|
|vel_equal|✅ proved - incomplete|shostak|0.186|
|vel_int?|✅ proved - incomplete|shostak|0.151|
|pos_fnd_TCC1|✅ proved - incomplete|shostak|0.147|
|pos_equal|✅ proved - incomplete|shostak|0.276|
|accelUntil_int?|✅ proved - incomplete|shostak|0.226|
|velUntil_fnd_TCC1|✅ proved - incomplete|shostak|0.020|
|velUntil_equal|✅ proved - incomplete|shostak|0.451|
|velUntil_int?|✅ proved - incomplete|shostak|0.427|
|posUntil_fnd_TCC1|✅ proved - incomplete|shostak|0.019|
|posUntil_equal|✅ proved - incomplete|shostak|0.951|
|accelUntil_reach_goal|✅ proved - complete|shostak|0.227|
|accelUntilRamp_int?|✅ proved - incomplete|shostak|0.464|
|velUntilRamp_fnd_TCC1|✅ proved - incomplete|shostak|0.010|
|velUntilRamp_equal|✅ proved - incomplete|shostak|0.998|
|velUntilRamp_int?|✅ proved - incomplete|shostak|1.608|
|posUntilRamp_fnd_TCC1|✅ proved - incomplete|shostak|0.017|
|posUntilRamp_equal|✅ proved - incomplete|shostak|3.315|
|accelUntilRamp_param_ordered|✅ proved - incomplete|shostak|1.060|
|accelUntilRamp_reach_goal|✅ proved - incomplete|shostak|1.031|

## `motion`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|deriv_domain|✅ proved - incomplete|shostak|0.030|
|Rate_fun_TCC1|✅ proved - incomplete|shostak|0.030|
|Rate_fun_TCC2|✅ proved - incomplete|shostak|0.010|
|integrable_Rate_fun_TCC1|✅ proved - incomplete|shostak|0.010|
|integrable_Rate_fun|✅ proved - incomplete|shostak|0.040|
|derivable_integral_Rate_fun_TCC1|✅ proved - incomplete|shostak|0.036|
|derivable_integral_Rate_fun|✅ proved - incomplete|shostak|0.000|
|integrate_TCC1|✅ proved - incomplete|shostak|0.010|
|integrate2_TCC1|✅ proved - incomplete|shostak|0.040|
|integrate2_TCC2|✅ proved - incomplete|shostak|0.239|
|derive2_TCC1|✅ proved - incomplete|shostak|0.009|
|speed_TCC1|✅ proved - incomplete|shostak|0.020|
|speed_TCC2|✅ proved - incomplete|shostak|0.020|
|speed_TCC3|✅ proved - incomplete|shostak|0.020|
|position_TCC1|✅ proved - incomplete|shostak|0.040|
|position_TCC2|✅ proved - incomplete|shostak|0.013|
|no_accel_TCC1|✅ proved - incomplete|shostak|0.040|
|const_accel_TCC1|✅ proved - incomplete|shostak|0.083|
|linear_accel_TCC1|✅ proved - incomplete|shostak|0.110|
|const_accel_speed|✅ proved - incomplete|shostak|0.182|
|zero_accel_speed|✅ proved - incomplete|shostak|0.010|
|zero_accel_pos|✅ proved - incomplete|shostak|0.280|
|const_accel_pos|✅ proved - incomplete|shostak|1.209|

## `kinematics_turn`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|linear_preserves_gs|✅ proved - incomplete|shostak|0.020|
|linear_preserves_vs|✅ proved - complete|shostak|0.023|
|linear_preserves_track_TCC1|✅ proved - incomplete|shostak|0.030|
|linear_preserves_track|✅ proved - incomplete|shostak|0.020|
|turnRadius_TCC1|✅ proved - incomplete|shostak|0.714|
|turnRadius_TCC2|✅ proved - incomplete|shostak|0.123|
|turnRadius_TCC3|✅ proved - incomplete|shostak|0.490|
|turnRadius_TCC4|✅ proved - incomplete|shostak|0.091|
|turnRadius_TCC5|✅ proved - incomplete|shostak|0.381|
|speedOfTurn_TCC1|✅ proved - incomplete|shostak|0.560|
|speedOfTurn_TCC2|✅ proved - incomplete|shostak|0.140|
|turnRate_TCC1|✅ proved - complete|shostak|0.030|
|bankAngle_TCC1|✅ proved - incomplete|shostak|0.120|
|bank_radius|✅ proved - incomplete|shostak|0.070|
|bank_speed_TCC1|✅ proved - incomplete|shostak|0.152|
|bank_speed|✅ proved - incomplete|shostak|0.180|
|delta_clockwise|✅ proved - incomplete|shostak|0.435|
|turnTime_TCC1|✅ proved - incomplete|shostak|0.100|
|turnTime_TCC2|✅ proved - incomplete|shostak|0.263|
|turnTimeAlt_TCC1|✅ proved - incomplete|shostak|0.180|
|turnTimeAlt_def|✅ proved - incomplete|shostak|0.000|
|turnOmega_TCC1|✅ proved - incomplete|shostak|0.110|
|turnOmega_start|✅ proved - incomplete|shostak|0.225|
|turnOmegaAT_TCC1|✅ proved - incomplete|shostak|0.030|
|turnOmegaAT_TCC2|✅ proved - incomplete|shostak|0.080|
|turnOmega_equal|✅ proved - incomplete|shostak|2.303|
|center_test_3|✅ proved - incomplete|shostak|0.260|
|center_test_4|✅ proved - incomplete|shostak|0.192|
|center_test_TCC1|✅ proved - complete|shostak|0.020|
|center_test|✅ proved - incomplete|shostak|0.412|
|center_test2|✅ proved - incomplete|shostak|0.420|
|turnOmega_thm|✅ proved - incomplete|shostak|0.877|
|turnOmega_vel|✅ proved - incomplete|shostak|0.710|
|turnOmega_TCC2|✅ proved - incomplete|shostak|0.101|
|turnOmega_test|✅ proved - incomplete|shostak|0.742|
|turnOmega_test2|✅ proved - incomplete|shostak|0.854|
|turnOmega_test3|✅ proved - incomplete|shostak|0.806|
|turnOmega_test4|✅ proved - incomplete|shostak|0.942|

## `Velocity`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|trkVel_TCC1|✅ proved - incomplete|shostak|0.050|
|trkVel_TCC2|✅ proved - incomplete|shostak|0.030|
|groundSpeed_nzv|✅ proved - incomplete|shostak|0.020|
|trk_is_pi2|✅ proved - incomplete|shostak|0.094|
|trk_track|✅ proved - incomplete|shostak|0.050|
|mkGs_TCC1|✅ proved - incomplete|shostak|0.080|
|mkTrkGsVs_nonzero|✅ proved - incomplete|shostak|0.062|
|track_mktrk|✅ proved - incomplete|shostak|0.020|
|mkTrkGsVs_def|✅ proved - incomplete|shostak|0.221|
|Hat_TCC1|✅ proved - incomplete|shostak|0.105|

## `gen_turn`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|not_collinear_TCC1|✅ proved - incomplete|shostak|0.040|
|not_collinear_TCC2|✅ proved - incomplete|shostak|0.040|
|not_collinear_not_equal|✅ proved - incomplete|shostak|0.040|
|hat_on_line_TCC1|✅ proved - incomplete|shostak|0.032|
|hat_on_line_TCC2|✅ proved - incomplete|shostak|0.240|
|hat_on_line|✅ proved - incomplete|shostak|0.180|
|normalize_sqv|✅ proved - incomplete|shostak|0.020|
|dot_normalize_ge|✅ proved - incomplete|shostak|0.100|
|sqv_hat_hat|✅ proved - incomplete|shostak|0.092|
|pythagorean_dot_hat|✅ proved - incomplete|shostak|0.434|
|turn_gen_sides|✅ proved - incomplete|shostak|0.358|
|turnGenerator_TCC1|✅ proved - incomplete|shostak|0.020|
|turnGenerator_TCC2|✅ proved - incomplete|shostak|0.040|
|turnGenerator_TCC3|✅ proved - incomplete|shostak|0.040|
|turnGenerator_TCC4|✅ proved - incomplete|shostak|0.043|
|turnGenerator_TCC5|✅ proved - incomplete|shostak|0.020|
|turnGenerator_TCC6|✅ proved - incomplete|shostak|0.090|
|turnGenerator_test_TCC1|✅ proved - complete|shostak|0.040|
|turnGenerator_test_TCC2|✅ proved - incomplete|shostak|0.102|
|turnGenerator_test|✅ proved - incomplete|shostak|0.110|
|turnGenerator_test_2_TCC1|✅ proved - incomplete|shostak|0.100|
|turnGenerator_test_2|✅ proved - incomplete|shostak|0.110|
|right_turn_test|✅ proved - complete|shostak|0.040|
|BOT_onLine_TCC1|✅ proved - incomplete|shostak|0.020|
|BOT_onLine|✅ proved - incomplete|shostak|0.163|
|EOT_onLine_TCC1|✅ proved - incomplete|shostak|0.786|
|EOT_onLine|✅ proved - incomplete|shostak|0.214|
|BOT_Center|✅ proved - incomplete|shostak|0.000|
|EOT_Center|✅ proved - incomplete|shostak|0.947|
|centers_match|✅ proved - incomplete|shostak|5.320|
|turnGenerator_correct_TCC1|✅ proved - incomplete|shostak|0.143|
|turnGenerator_correct|✅ proved - incomplete|shostak|33.630|

## `turn_derivation`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|turn_vx_prep_TCC1|✅ proved - complete|shostak|0.030|
|turn_vx_prep_TCC2|✅ proved - complete|shostak|0.010|
|turn_vx_prep_TCC3|✅ proved - complete|shostak|0.020|
|turn_vx_prep|✅ proved - incomplete|shostak|0.121|
|turn_vy_prep|✅ proved - incomplete|shostak|0.126|
|turn_vx_TCC1|✅ proved - incomplete|shostak|0.020|
|turn_vy_TCC1|✅ proved - incomplete|shostak|0.020|
|linear_angular_TCC1|✅ proved - incomplete|shostak|0.183|
|turn_position_x|✅ proved - incomplete|shostak|0.441|
|turn_position_y|✅ proved - incomplete|shostak|0.360|

## `kinematics_vs_accel`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|vsConstAccelGoalPos_TCC1|✅ proved - incomplete|shostak|0.053|
|equals_integral|✅ proved - incomplete|shostak|0.797|
|equals_integral_pos|✅ proved - incomplete|shostak|2.658|
|reach_goalVs|✅ proved - incomplete|shostak|0.648|
|gamma_TCC1|✅ proved - complete|shostak|0.020|
|gamma_TCC2|✅ proved - complete|shostak|0.027|
|vsAccelUntilWithRampUp_TCC1|✅ proved - incomplete|shostak|0.200|
|vsAccelUntilWithRampUp_TCC2|✅ proved - complete|shostak|0.170|
|equals_integral_AUWRU|✅ proved - incomplete|shostak|11.454|
|reach_goal_AUWRU|✅ proved - incomplete|shostak|0.000|
|vsAccelPos_TCC1|✅ proved - complete|shostak|0.110|
|vsAccel_TCC1|✅ proved - complete|shostak|0.221|

## `vsAccel`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|accel_TCC1|✅ proved - complete|shostak|0.090|
|accel_TCC2|✅ proved - complete|shostak|0.010|
|accel_TCC3|✅ proved - complete|shostak|0.030|
|L1_prep|✅ proved - incomplete|shostak|0.144|
|velo_TCC1|✅ proved - incomplete|shostak|0.010|
|L1_TCC1|✅ proved - complete|shostak|0.030|
|L1_TCC2|✅ proved - complete|shostak|0.020|
|L1|✅ proved - incomplete|shostak|0.206|
|vsAccelUntil_Vel_TCC1|✅ proved - complete|shostak|0.030|
|L2_prep_TCC1|✅ proved - complete|shostak|0.023|
|L2_prep_TCC2|✅ proved - complete|shostak|0.030|
|L2_prep|✅ proved - incomplete|shostak|1.572|
|posit_TCC1|✅ proved - incomplete|shostak|0.010|
|L2_TCC1|✅ proved - complete|shostak|0.010|
|L2_TCC2|✅ proved - complete|shostak|0.020|
|L2|✅ proved - incomplete|shostak|4.469|
|vsAccelUntil_Pos_TCC1|✅ proved - complete|shostak|0.050|
|vsAccelUntil_Pos_TCC2|✅ proved - complete|shostak|0.046|
|vsAccelRamp_Vel_TCC1|✅ proved - incomplete|shostak|0.600|
|Int_ramp_vel_TCC1|✅ proved - complete|shostak|0.010|
|Int_ramp_vel|✅ proved - incomplete|shostak|0.815|
|Int_ramp_vel2|✅ proved - incomplete|shostak|0.815|
|vsAccelRamp_Pos_TCC1|✅ proved - incomplete|shostak|0.483|
|Int_ramp_pos_TCC1|✅ proved - complete|shostak|0.020|
|Int_ramp_pos|✅ proved - incomplete|shostak|0.000|
|vsAccelConst_Vel_TCC1|✅ proved - incomplete|shostak|0.266|
|Int_const_vel|✅ proved - incomplete|shostak|0.297|
|Int_const_vel2|✅ proved - incomplete|shostak|0.614|
|vsAccelConst_Pos_TCC1|✅ proved - incomplete|shostak|0.506|
|Int_const_pos|✅ proved - incomplete|shostak|1.747|
|sign_not_zero|✅ proved - complete|shostak|0.040|
|vsAUWRU_case1_acc_TCC1|✅ proved - incomplete|shostak|0.160|
|case1_vel_prep|✅ proved - incomplete|shostak|2.269|
|vsAUWRU_case1_vel_TCC1|✅ proved - incomplete|shostak|0.172|
|Integral_case1_vel|✅ proved - incomplete|shostak|0.000|
|case1_pos_prep|✅ proved - incomplete|shostak|2.524|
|vsAUWRU_case1_pos_TCC1|✅ proved - incomplete|shostak|0.537|
|Integral_case1_pos_TCC1|✅ proved - incomplete|shostak|0.090|
|Integral_case1_pos|✅ proved - incomplete|shostak|5.695|
|vsAUWRU_acc_TCC1|✅ proved - incomplete|shostak|0.237|
|case2_vel_prep|✅ proved - incomplete|shostak|1.168|
|vsAUWRU_vel_TCC1|✅ proved - incomplete|shostak|0.010|
|Integral_AUWRU_vel_TCC1|✅ proved - incomplete|shostak|0.176|
|Integral_AUWRU_vel|✅ proved - incomplete|shostak|6.723|
|case2_pos_prep|✅ proved - incomplete|shostak|2.557|
|vsAUWRU_pos_TCC1|✅ proved - incomplete|shostak|0.020|
|Integral_AUWRU_pos_TCC1|✅ proved - incomplete|shostak|0.050|
|Integral_AUWRU_pos_TCC2|✅ proved - incomplete|shostak|0.114|
|Integral_AUWRU_pos|✅ proved - incomplete|shostak|32.490|
|vsAUWRU_TCC1|✅ proved - incomplete|shostak|0.162|
|same_tMax|✅ proved - incomplete|shostak|0.183|
|exceeds_deltav|✅ proved - incomplete|shostak|2.144|
|finish_ramp|✅ proved - incomplete|shostak|0.050|

## `gen_vert`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|vertGen_TCC1|✅ proved - complete|shostak|0.079|
|vertGen_TCC2|✅ proved - complete|shostak|0.113|
|vertGen_TCC3|✅ proved - complete|shostak|0.322|

## `vsLevelOut`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|S1_TCC1|✅ proved - complete|shostak|0.020|
|quadRoots_TCC1|✅ proved - complete|shostak|0.020|
|quadRoots_TCC2|✅ proved - complete|shostak|0.110|
|quad_contrapos_TCC1|✅ proved - complete|shostak|0.080|
|quad_contrapos_TCC2|✅ proved - complete|shostak|0.080|
|quad_contrapos|✅ proved - incomplete|shostak|1.162|
|quad_lem_TCC1|✅ proved - complete|shostak|0.070|
|quad_lem|✅ proved - incomplete|shostak|0.633|
|quad_lem2_TCC1|✅ proved - incomplete|shostak|0.020|
|quad_lem2_TCC2|✅ proved - incomplete|shostak|0.170|
|quad_lem2_TCC3|✅ proved - incomplete|shostak|0.206|
|quad_lem2|✅ proved - incomplete|shostak|2.512|
|vsLevelOutTimes1_TCC1|✅ proved - complete|shostak|0.266|
|vsLevelOutTimes1_TCC2|✅ proved - complete|shostak|0.174|
|vsLevelOutTimes1_TCC3|✅ proved - complete|shostak|4.618|
|vsLevelOutTimes1_TCC4|✅ proved - complete|shostak|0.712|
|vsLevelOutTimes1_TCC5|✅ proved - complete|shostak|0.120|
|vsLevelOutTimes_TCC1|✅ proved - complete|shostak|0.071|
|vsLevelOutTimes_TCC2|✅ proved - complete|shostak|0.070|
|times_increase|✅ proved - incomplete|shostak|53.665|
|vsLevelOut_acc_TCC1|✅ proved - incomplete|shostak|0.106|
|vsLevelOut_acc_TCC2|✅ proved - incomplete|shostak|0.024|
|vsLevelOut_acc_TCC3|✅ proved - incomplete|shostak|0.097|
|vel_prep_TCC1|✅ proved - incomplete|shostak|0.030|
|vel_prep_TCC2|✅ proved - incomplete|shostak|0.030|
|vel_prep|✅ proved - incomplete|shostak|0.778|
|vsLevelOut_velInt_TCC1|✅ proved - incomplete|shostak|0.020|
|vsLevelOut_velCalc_TCC1|✅ proved - incomplete|shostak|1.098|
|Integral_vsLO_vel|✅ proved - incomplete|shostak|1.434|
|pos_prep|✅ proved - incomplete|shostak|0.000|
|vsLevelOut_posInt_TCC1|✅ proved - incomplete|shostak|0.020|
|vsLevelOut_posCalc_TCC1|✅ proved - incomplete|shostak|0.955|
|Integral_vsLO_pos|✅ proved - incomplete|shostak|21.315|
|Velocity_after_level|✅ proved - incomplete|shostak|1.969|
|Position_after_level|✅ proved - incomplete|shostak|1:28.613|
|vsLevelOut_TCC1|✅ proved - incomplete|shostak|1.301|
|vsLevelOut_TCC2|✅ proved - incomplete|shostak|1.200|
|vsLevelOut_TCC3|✅ proved - incomplete|shostak|0.040|
|vsLevelOut_TCC4|✅ proved - incomplete|shostak|0.034|
|vsLevelOut_TCC5|✅ proved - incomplete|shostak|0.040|
|vsLevelOutEquals|✅ proved - incomplete|shostak|1.562|
|vsLevelOut_vect2|✅ proved - incomplete|shostak|0.983|

## `gsAccel`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|gsAccel_Vel_prep_TCC1|✅ proved - incomplete|shostak|0.060|
|gsAccel_Vel_prep_TCC2|✅ proved - incomplete|shostak|0.040|
|gsAccel_Vel_prep|✅ proved - incomplete|shostak|0.210|
|gsAccel_Vel_Int_TCC1|✅ proved - incomplete|shostak|0.167|
|gsAccel_Vel_Int_TCC2|✅ proved - incomplete|shostak|0.199|
|gsAccel_Vel_Int_TCC3|✅ proved - incomplete|shostak|0.206|
|Integral_gsAccel_Vel|✅ proved - incomplete|shostak|0.161|
|gsAccel_Pos_prep_TCC1|✅ proved - incomplete|shostak|0.030|
|gsAccel_Pos_prep_TCC2|✅ proved - incomplete|shostak|0.030|
|gsAccel_Pos_prep|✅ proved - incomplete|shostak|0.906|
|gsAccel_Pos_Int_TCC1|✅ proved - incomplete|shostak|0.030|
|gsAccel_Pos_Int_TCC2|✅ proved - incomplete|shostak|0.030|
|gsAccel_Pos_Int_TCC3|✅ proved - incomplete|shostak|0.030|
|gsAccel_Pos_Calc_TCC1|✅ proved - incomplete|shostak|0.060|
|Integral_gsAccel_Pos|✅ proved - incomplete|shostak|0.581|
|gsAccelToRTA_possible_TCC1|✅ proved - incomplete|shostak|0.020|
|gsAccelToRTA_possible_TCC2|✅ proved - incomplete|shostak|0.030|
|gsAccelToRTA_possible_TCC3|✅ proved - incomplete|shostak|0.122|
|neg_groundspeed|✅ proved - incomplete|shostak|0.324|

## `kinematics_gs_accel`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|gsAccel_equals_fnd|✅ proved - incomplete|shostak|2.102|
|reach_goal|✅ proved - incomplete|shostak|2.019|
|gsAccelUntil_checks|✅ proved - incomplete|shostak|2.428|
|gsAccelToRTA_TCC1|✅ proved - complete|shostak|0.110|
|gsAccelToRTA_TCC2|✅ proved - incomplete|shostak|0.680|
|gsAccelToRTA_TCC3|✅ proved - complete|shostak|0.000|
|gsAccelToRTA_checks_TCC1|✅ proved - incomplete|shostak|0.030|
|gsAccelToRTA_checks_TCC2|✅ proved - incomplete|shostak|3.779|
|gsAccelToRTA_checks|✅ proved - incomplete|shostak|10.161|

## `NavPoint3D`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|groundSpeed_TCC1|✅ proved - complete|shostak|0.060|
|groundSpeed_TCC2|✅ proved - incomplete|shostak|0.110|
|gs_nz|✅ proved - incomplete|shostak|0.119|
|initialVelocity_TCC1|✅ proved - complete|shostak|0.030|
|initialVelocity_TCC2|✅ proved - complete|shostak|0.050|

## `KinematicPlan`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|plan_lin_ex1_TCC1|✅ proved - incomplete|shostak|0.040|
|plan_lin_ex1_TCC2|✅ proved - incomplete|shostak|0.070|
|getLastTime_TCC1|✅ proved - incomplete|shostak|0.040|
|getSegment_TCC1|✅ proved - incomplete|shostak|0.069|
|getSegment_TCC2|✅ proved - incomplete|shostak|0.030|
|getSegment_TCC3|✅ proved - incomplete|shostak|0.050|
|getSegment_TCC4|✅ proved - incomplete|shostak|0.030|
|getSegment_TCC5|✅ proved - incomplete|shostak|0.090|
|getSegment_TCC6|✅ proved - incomplete|shostak|0.070|
|getSegment_TCC7|✅ proved - incomplete|shostak|0.030|
|getSegment_TCC8|✅ proved - incomplete|shostak|0.130|
|getSegment_test_TCC1|✅ proved - incomplete|shostak|0.040|
|getSegment_test|✅ proved - incomplete|shostak|0.160|
|getSegment_TCC9|✅ proved - incomplete|shostak|0.030|
|getSegment_def_found_TCC1|✅ proved - incomplete|shostak|0.243|
|getSegment_def_found|✅ proved - incomplete|shostak|1.047|
|getSegment_at_tcp|✅ proved - incomplete|shostak|0.216|
|prevTCPType_TCC1|✅ proved - incomplete|shostak|0.070|
|prevTCPType_TCC2|✅ proved - incomplete|shostak|0.060|
|prevTCPType_TCC3|✅ proved - incomplete|shostak|0.090|
|nextTCPType_TCC1|✅ proved - incomplete|shostak|0.080|
|nextTCPType_TCC2|✅ proved - incomplete|shostak|0.070|
|nextTCPType_TCC3|✅ proved - incomplete|shostak|0.100|
|prevTCP_TCC1|✅ proved - incomplete|shostak|0.060|
|prevTCP_TCC2|✅ proved - incomplete|shostak|0.060|
|prevTCP_TCC3|✅ proved - incomplete|shostak|0.040|
|prevTCP_TCC4|✅ proved - incomplete|shostak|0.160|
|prevTCP_TCC5|✅ proved - incomplete|shostak|0.080|
|prevTCP_TCC6|✅ proved - incomplete|shostak|0.070|
|prevTCP_TCC7|✅ proved - incomplete|shostak|0.220|
|nextTCP_TCC1|✅ proved - incomplete|shostak|0.079|
|nextTCP_TCC2|✅ proved - incomplete|shostak|0.070|
|nextTCP_TCC3|✅ proved - incomplete|shostak|0.160|
|nextTCP_TCC4|✅ proved - incomplete|shostak|0.100|
|nextTCP_TCC5|✅ proved - incomplete|shostak|0.110|
|nextTCP_TCC6|✅ proved - incomplete|shostak|0.301|
|prevTCP_test|✅ proved - incomplete|shostak|0.040|
|nextTCP_test|✅ proved - incomplete|shostak|0.050|
|inTurn_TCC1|✅ proved - incomplete|shostak|0.090|
|turnRadius_TCC1|✅ proved - incomplete|shostak|0.147|
|inGroundSpeedChange_TCC1|✅ proved - incomplete|shostak|0.080|
|inVerticalSpeedChange_TCC1|✅ proved - incomplete|shostak|0.080|
|inTurnPrevBOT|✅ proved - incomplete|shostak|0.150|
|gsAccel_TCC1|✅ proved - incomplete|shostak|0.147|
|vsAccel_TCC1|✅ proved - incomplete|shostak|0.140|
|pathDistance_TCC1|✅ proved - incomplete|shostak|0.090|
|pathDistance_TCC2|✅ proved - incomplete|shostak|0.150|
|ValidTime?_TCC1|✅ proved - incomplete|shostak|0.050|
|accelZone_TCC1|✅ proved - incomplete|shostak|0.104|
|accelZone_TCC2|✅ proved - incomplete|shostak|0.150|
|accelZone_TCC3|✅ proved - incomplete|shostak|0.258|
|accelZone_TCC4|✅ proved - incomplete|shostak|0.297|
|accelZone_TCC5|✅ proved - incomplete|shostak|0.328|

## `LatLonAlt`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|mk_lem|✅ proved - complete|shostak|0.010|

## `GreatCircle`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|spherical_earth_radius_TCC1|✅ proved - incomplete|shostak|0.120|
|angular_distance_prep|✅ proved - incomplete|shostak|0.757|
|angular_distance_TCC1|✅ proved - incomplete|shostak|0.020|
|distance_from_angle_TCC1|✅ proved - incomplete|shostak|0.180|
|initial_course_impl2_TCC1|✅ proved - incomplete|shostak|0.069|
|angle_between_old_TCC1|✅ proved - incomplete|shostak|0.350|
|velocity_initial_TCC1|✅ proved - incomplete|shostak|0.409|
|velocity_initial_TCC2|✅ proved - incomplete|shostak|0.390|

## `ENU`
No formula declaration found.
## `Kinematics`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|turnByDist2D_TCC1|✅ proved - incomplete|shostak|0.280|

## `VectFuns`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|angle_between_TCC1|✅ proved - incomplete|shostak|0.139|

## `Position`
No formula declaration found.
## `NavPoint`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|groundSpeed_TCC1|✅ proved - complete|shostak|0.060|
|groundSpeed_TCC2|✅ proved - incomplete|shostak|0.110|
|gs_nz|✅ proved - incomplete|shostak|0.130|
|initialVelocity_TCC1|✅ proved - complete|shostak|0.030|
|initialVelocity_TCC2|✅ proved - complete|shostak|0.051|
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
|point_TCC1|✅ proved - complete|shostak|0.030|
|ordered_lem|✅ proved - complete|shostak|0.290|
|getIndexInRange_rec_TCC1|✅ proved - complete|shostak|0.085|
|getIndexInRange_rec_TCC2|✅ proved - complete|shostak|0.040|
|getIndexInRange_TCC1|✅ proved - complete|shostak|0.030|
|getIndex_TCC1|✅ proved - complete|shostak|0.060|
|findPrev_TCC1|✅ proved - complete|shostak|0.100|
|turnDir_TCC1|✅ proved - complete|shostak|0.070|
|pathDistanceNat_TCC1|✅ proved - complete|shostak|0.030|
|pathDistanceNat_TCC2|✅ proved - complete|shostak|0.060|
|pathDistanceNat_TCC3|✅ proved - complete|shostak|0.050|
|pathDistanceNat_TCC4|✅ proved - complete|shostak|0.020|
|pathDistance4_TCC1|✅ proved - complete|shostak|0.049|
|gsFinal_TCC1|✅ proved - complete|shostak|0.050|
|gsFinal_TCC2|✅ proved - incomplete|shostak|0.150|
|gsOut_TCC1|✅ proved - complete|shostak|0.060|
|gsOut_TCC2|✅ proved - incomplete|shostak|0.140|
|vsFinal_TCC1|✅ proved - complete|shostak|0.150|
|vsOut_TCC1|✅ proved - complete|shostak|0.139|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib//float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-pvsio-fix.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210219-extratregies.lisp`|
