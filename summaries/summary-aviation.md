# Summary for `aviation`
Run started at 3:11:36 7/4/2023.

_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.
## Grand Totals 
|            | Formulas | Attempted | Succeeded | Missing | Total Time |
| ---:       | :---:    | :---:     | :---:     | :---:   | ---        |
| **totals** | **484**   | **484**    | **484**    | **0**  | **8:7.498 s**   |
|top|0|0|0|0|0.000|
|ECEF|18|18|18|0|11.206|
|error_proj|40|40|40|0|1:27.189|
|units|3|3|3|0|0.150|
|util|14|14|14|0|6.021|
|track_3D|5|5|5|0|0.140|
|track|22|22|22|0|11.815|
|simple_motion|11|11|11|0|1.466|
|simple_motion_props|24|24|24|0|10.118|
|motion|23|23|23|0|2.653|
|kinematics_turn|38|38|38|0|11.083|
|Velocity|10|10|10|0|0.694|
|gen_turn|32|32|32|0|41.925|
|turn_derivation|10|10|10|0|1.284|
|kinematics_vs_accel|12|12|12|0|13.675|
|vsAccel|53|53|53|0|1:17.935|
|gen_vert|3|3|3|0|0.515|
|vsLevelOut|42|42|42|0|2:52.102|
|gsAccel|19|19|19|0|3.299|
|kinematics_gs_accel|9|9|9|0|22.329|
|NavPoint3D|5|5|5|0|0.390|
|KinematicPlan|53|53|53|0|6.245|
|LatLonAlt|1|1|1|0|0.010|
|GreatCircle|8|8|8|0|2.490|
|ENU|0|0|0|0|0.000|
|Kinematics|1|1|1|0|0.290|
|VectFuns|1|1|1|0|0.150|
|Position|0|0|0|0|0.000|
|NavPoint|7|7|7|0|0.510|
|KinematicsPosition|1|1|1|0|0.030|
|TcpData|0|0|0|0|0.000|
|Plan|19|19|19|0|1.784|
## Detailed Summary 
## `top`
No formula declaration found.
## `ECEF`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|spherical2xyz_TCC1|✅ proved - incomplete|shostak|0.793|
|spherical2xyz_norm|✅ proved - incomplete|shostak|0.759|
|sin_acos_ecef_TCC1|✅ proved - complete|shostak|0.060|
|sin_acos_ecef_TCC2|✅ proved - incomplete|shostak|0.313|
|sin_acos_ecef|✅ proved - incomplete|shostak|0.468|
|xyz2spherical_TCC1|✅ proved - complete|shostak|0.025|
|xyz2spherical_TCC2|✅ proved - incomplete|shostak|0.230|
|xyz2spherical_TCC3|✅ proved - incomplete|shostak|0.070|
|xyz2spherical_TCC4|✅ proved - incomplete|shostak|0.248|
|xyz2spherical_TCC5|✅ proved - incomplete|shostak|0.473|
|xyz2spherical_TCC6|✅ proved - incomplete|shostak|0.333|
|xyz2spherical_TCC7|✅ proved - incomplete|shostak|0.455|
|xyz2spherical_TCC8|✅ proved - incomplete|shostak|1.291|
|xyz2spherical_TCC9|✅ proved - incomplete|shostak|0.405|
|xyz2spherical_TCC10|✅ proved - incomplete|shostak|0.536|
|spherical2xyz_def_TCC1|✅ proved - incomplete|shostak|0.147|
|spherical2xyz_def|✅ proved - incomplete|shostak|2.049|
|xyz2spherical_def|✅ proved - incomplete|shostak|2.551|

## `error_proj`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|tangent_error_basic|✅ proved - incomplete|shostak|0.216|
|lift_to_surface_TCC1|✅ proved - incomplete|shostak|0.821|
|norm_lem|✅ proved - incomplete|shostak|0.180|
|norm_Rc_lt_const|✅ proved - incomplete|shostak|0.000|
|tri_ineq_Rc|✅ proved - incomplete|shostak|0.440|
|error_valid?_TCC1|✅ proved - incomplete|shostak|1.662|
|error_valid_simple?_TCC1|✅ proved - incomplete|shostak|0.171|
|error_valid_simple?_TCC2|✅ proved - incomplete|shostak|0.060|
|error_valid_simple_def|✅ proved - incomplete|shostak|4.515|
|error_valid_simple_edgebound_def|✅ proved - incomplete|shostak|6.411|
|sphere_to_2D_plane_error_reduction|✅ proved - incomplete|shostak|6.769|
|sphere_to_2D_plane_error_reduction_edgebound|✅ proved - incomplete|shostak|0.000|
|sphere_to_2D_plane_error_simple_27780|✅ proved - incomplete|shostak|2.523|
|sphere_to_2D_plane_error_simple_1852|✅ proved - incomplete|shostak|2.534|
|sphere_to_2D_plane_error_simple_3704|✅ proved - incomplete|shostak|2.532|
|sphere_to_2D_plane_error_simple_5556|✅ proved - incomplete|shostak|2.521|
|sphere_to_2D_plane_error_simple_7408|✅ proved - incomplete|shostak|2.558|
|sphere_to_2D_plane_error_simple_9260|✅ proved - incomplete|shostak|2.506|
|sphere_to_2D_plane_error_simple_11112|✅ proved - incomplete|shostak|2.509|
|sphere_to_2D_plane_error_simple_12964|✅ proved - incomplete|shostak|2.499|
|sphere_to_2D_plane_error_simple_14816|✅ proved - incomplete|shostak|0.000|
|sphere_to_2D_plane_error_simple_16668|✅ proved - incomplete|shostak|2.512|
|sphere_to_2D_plane_error_simple_18520|✅ proved - incomplete|shostak|2.482|
|sphere_to_2D_plane_error_simple_20372|✅ proved - incomplete|shostak|2.520|
|sphere_to_2D_plane_error_simple_22224|✅ proved - incomplete|shostak|2.523|
|sphere_to_2D_plane_error_simple_24076|✅ proved - incomplete|shostak|2.518|
|sphere_to_2D_plane_error_simple_25928|✅ proved - incomplete|shostak|2.520|
|sphere_to_2D_plane_error_simple_37040|✅ proved - incomplete|shostak|2.520|
|sphere_to_2D_plane_error_simple_46300|✅ proved - incomplete|shostak|2.518|
|sphere_to_2D_plane_error_simple_55560|✅ proved - incomplete|shostak|2.519|
|sphere_to_2D_plane_error_simple_64820|✅ proved - incomplete|shostak|2.523|
|sphere_to_2D_plane_error_simple_74080|✅ proved - incomplete|shostak|2.509|
|sphere_to_2D_plane_error_simple_83340|✅ proved - incomplete|shostak|2.528|
|sphere_to_2D_plane_error_simple_92600|✅ proved - incomplete|shostak|2.537|
|sphere_to_2D_plane_error_simple_111120|✅ proved - incomplete|shostak|2.524|
|sphere_to_2D_plane_error_simple_129640|✅ proved - incomplete|shostak|2.499|
|sphere_to_2D_plane_error_simple_148160|✅ proved - incomplete|shostak|2.494|
|sphere_to_2D_plane_error_simple_166680|✅ proved - incomplete|shostak|2.455|
|sphere_to_2D_plane_error_simple_185200|✅ proved - incomplete|shostak|0.000|
|sphere_to_2D_plane_error_simple_185200_27780|✅ proved - incomplete|shostak|3.061|

## `units`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|ex0|✅ proved - complete|shostak|0.050|
|ex1|✅ proved - complete|shostak|0.050|
|ex2|✅ proved - complete|shostak|0.050|

## `util`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|util_turnDelta_TCC1|✅ proved - incomplete|shostak|0.224|
|cos_util_turnDelta|✅ proved - incomplete|shostak|0.928|
|sin_util_turnDelta|✅ proved - incomplete|shostak|1.471|
|util_turnDelta_TCC2|✅ proved - incomplete|shostak|0.150|
|util_turnDelta_TCC3|✅ proved - incomplete|shostak|0.160|
|util_turnDelta_TCC4|✅ proved - incomplete|shostak|0.150|
|mkAlt_TCC1|✅ proved - complete|shostak|0.020|
|Vect3_TCC1|✅ proved - complete|shostak|0.031|
|Hat_TCC1|✅ proved - incomplete|shostak|0.030|
|Hat_TCC2|✅ proved - incomplete|shostak|0.030|
|Hat_TCC3|✅ proved - incomplete|shostak|0.080|
|Hat_TCC4|✅ proved - incomplete|shostak|0.699|
|cos_turnDelta|✅ proved - incomplete|shostak|0.689|
|sin_turnDelta|✅ proved - incomplete|shostak|1.359|

## `track_3D`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|nzhVect3_TCC1|✅ proved - incomplete|shostak|0.030|
|track_TCC1|✅ proved - incomplete|shostak|0.030|
|ground_speed_nzv|✅ proved - incomplete|shostak|0.030|
|sin_track|✅ proved - incomplete|shostak|0.020|
|cos_track|✅ proved - incomplete|shostak|0.030|

## `track`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|trkgs2vectz_nonzero|✅ proved - incomplete|shostak|0.229|
|trkgs2vect_TCC1|✅ proved - incomplete|shostak|0.020|
|trkgs2vectz_eq|✅ proved - incomplete|shostak|0.010|
|track_TCC1|✅ proved - incomplete|shostak|0.020|
|sin_track|✅ proved - incomplete|shostak|0.000|
|cos_track|✅ proved - incomplete|shostak|2.257|
|norm_id|✅ proved - incomplete|shostak|0.237|
|track_id|✅ proved - incomplete|shostak|0.090|
|trkgs2vectz_id|✅ proved - incomplete|shostak|0.072|
|trkgs2vect_id|✅ proved - incomplete|shostak|0.030|
|track_scal|✅ proved - incomplete|shostak|0.555|
|ordered_eps_1_TCC1|✅ proved - incomplete|shostak|0.363|
|ordered_eps_1|✅ proved - incomplete|shostak|0.000|
|ordered_det_ge|✅ proved - incomplete|shostak|2.003|
|ordered_eps_neg_1|✅ proved - incomplete|shostak|0.316|
|ordered_eps_1_dot_gt_0|✅ proved - incomplete|shostak|3.049|
|ordered_eps_1_dot_ge_0|✅ proved - incomplete|shostak|0.000|
|ordered_eps_1_dot_lt_0|✅ proved - incomplete|shostak|1.108|
|ordered_eps_1_dot_le_0|✅ proved - incomplete|shostak|1.103|
|trk_TCC1|✅ proved - incomplete|shostak|0.130|
|trk_TCC2|✅ proved - incomplete|shostak|0.020|
|add_track_TCC1|✅ proved - incomplete|shostak|0.203|

## `simple_motion`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|accelUntil_param_TCC1|✅ proved - complete|shostak|0.100|
|accelUntil_param_TCC2|✅ proved - complete|shostak|0.132|
|posUntilRamp_comp_TCC1|✅ proved - complete|shostak|0.020|
|posUntilRamp_comp_TCC2|✅ proved - complete|shostak|0.020|
|posUntilRamp_comp_TCC3|✅ proved - complete|shostak|0.020|
|posUntilRamp_comp_TCC4|✅ proved - complete|shostak|0.020|
|posUntilRamp_comp_TCC5|✅ proved - complete|shostak|0.020|
|posUntilRamp_comp_TCC6|✅ proved - complete|shostak|0.020|
|posUntilRamp_comp_TCC7|✅ proved - complete|shostak|0.020|
|accelUntilRamp_TCC1|✅ proved - incomplete|shostak|0.462|
|accelUntilRamp_TCC2|✅ proved - incomplete|shostak|0.632|

## `simple_motion_props`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|IMP_integral_split_fun_TCC1|✅ proved - complete|shostak|0.150|
|IMP_integral_split_fun_TCC2|✅ proved - complete|shostak|0.030|
|IMP_integral_split_fun_TCC3|✅ proved - complete|shostak|0.040|
|accel_int?|✅ proved - incomplete|shostak|0.100|
|vel_fnd_TCC1|✅ proved - incomplete|shostak|0.088|
|vel_equal|✅ proved - incomplete|shostak|0.190|
|vel_int?|✅ proved - incomplete|shostak|0.153|
|pos_fnd_TCC1|✅ proved - incomplete|shostak|0.150|
|pos_equal|✅ proved - incomplete|shostak|0.267|
|accelUntil_int?|✅ proved - incomplete|shostak|0.237|
|velUntil_fnd_TCC1|✅ proved - incomplete|shostak|0.020|
|velUntil_equal|✅ proved - incomplete|shostak|0.454|
|velUntil_int?|✅ proved - incomplete|shostak|0.419|
|posUntil_fnd_TCC1|✅ proved - incomplete|shostak|0.020|
|posUntil_equal|✅ proved - incomplete|shostak|0.927|
|accelUntil_reach_goal|✅ proved - complete|shostak|0.230|
|accelUntilRamp_int?|✅ proved - incomplete|shostak|0.444|
|velUntilRamp_fnd_TCC1|✅ proved - incomplete|shostak|0.020|
|velUntilRamp_equal|✅ proved - incomplete|shostak|0.957|
|velUntilRamp_int?|✅ proved - incomplete|shostak|0.000|
|posUntilRamp_fnd_TCC1|✅ proved - incomplete|shostak|0.020|
|posUntilRamp_equal|✅ proved - incomplete|shostak|3.180|
|accelUntilRamp_param_ordered|✅ proved - incomplete|shostak|0.999|
|accelUntilRamp_reach_goal|✅ proved - incomplete|shostak|1.023|

## `motion`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|deriv_domain|✅ proved - incomplete|shostak|0.020|
|Rate_fun_TCC1|✅ proved - incomplete|shostak|0.020|
|Rate_fun_TCC2|✅ proved - incomplete|shostak|0.010|
|integrable_Rate_fun_TCC1|✅ proved - incomplete|shostak|0.020|
|integrable_Rate_fun|✅ proved - incomplete|shostak|0.035|
|derivable_integral_Rate_fun_TCC1|✅ proved - incomplete|shostak|0.040|
|derivable_integral_Rate_fun|✅ proved - incomplete|shostak|0.199|
|integrate_TCC1|✅ proved - incomplete|shostak|0.010|
|integrate2_TCC1|✅ proved - incomplete|shostak|0.040|
|integrate2_TCC2|✅ proved - incomplete|shostak|0.240|
|derive2_TCC1|✅ proved - incomplete|shostak|0.020|
|speed_TCC1|✅ proved - incomplete|shostak|0.010|
|speed_TCC2|✅ proved - incomplete|shostak|0.020|
|speed_TCC3|✅ proved - incomplete|shostak|0.020|
|position_TCC1|✅ proved - incomplete|shostak|0.036|
|position_TCC2|✅ proved - incomplete|shostak|0.020|
|no_accel_TCC1|✅ proved - incomplete|shostak|0.040|
|const_accel_TCC1|✅ proved - incomplete|shostak|0.080|
|linear_accel_TCC1|✅ proved - incomplete|shostak|0.105|
|const_accel_speed|✅ proved - incomplete|shostak|0.192|
|zero_accel_speed|✅ proved - incomplete|shostak|0.020|
|zero_accel_pos|✅ proved - incomplete|shostak|0.285|
|const_accel_pos|✅ proved - incomplete|shostak|1.171|

## `kinematics_turn`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|linear_preserves_gs|✅ proved - incomplete|shostak|0.020|
|linear_preserves_vs|✅ proved - complete|shostak|0.030|
|linear_preserves_track_TCC1|✅ proved - incomplete|shostak|0.020|
|linear_preserves_track|✅ proved - incomplete|shostak|0.020|
|turnRadius_TCC1|✅ proved - incomplete|shostak|0.731|
|turnRadius_TCC2|✅ proved - incomplete|shostak|0.128|
|turnRadius_TCC3|✅ proved - incomplete|shostak|0.484|
|turnRadius_TCC4|✅ proved - incomplete|shostak|0.090|
|turnRadius_TCC5|✅ proved - incomplete|shostak|0.381|
|speedOfTurn_TCC1|✅ proved - incomplete|shostak|0.553|
|speedOfTurn_TCC2|✅ proved - incomplete|shostak|0.160|
|turnRate_TCC1|✅ proved - complete|shostak|0.020|
|bankAngle_TCC1|✅ proved - incomplete|shostak|0.130|
|bank_radius|✅ proved - incomplete|shostak|0.079|
|bank_speed_TCC1|✅ proved - incomplete|shostak|0.140|
|bank_speed|✅ proved - incomplete|shostak|0.180|
|delta_clockwise|✅ proved - incomplete|shostak|0.452|
|turnTime_TCC1|✅ proved - incomplete|shostak|0.091|
|turnTime_TCC2|✅ proved - incomplete|shostak|0.270|
|turnTimeAlt_TCC1|✅ proved - incomplete|shostak|0.183|
|turnTimeAlt_def|✅ proved - incomplete|shostak|0.070|
|turnOmega_TCC1|✅ proved - incomplete|shostak|0.100|
|turnOmega_start|✅ proved - incomplete|shostak|0.231|
|turnOmegaAT_TCC1|✅ proved - incomplete|shostak|0.032|
|turnOmegaAT_TCC2|✅ proved - incomplete|shostak|0.090|
|turnOmega_equal|✅ proved - incomplete|shostak|0.000|
|center_test_3|✅ proved - incomplete|shostak|0.260|
|center_test_4|✅ proved - incomplete|shostak|0.200|
|center_test_TCC1|✅ proved - complete|shostak|0.020|
|center_test|✅ proved - incomplete|shostak|0.413|
|center_test2|✅ proved - incomplete|shostak|0.431|
|turnOmega_thm|✅ proved - incomplete|shostak|0.870|
|turnOmega_vel|✅ proved - incomplete|shostak|0.727|
|turnOmega_TCC2|✅ proved - incomplete|shostak|0.100|
|turnOmega_test|✅ proved - incomplete|shostak|0.751|
|turnOmega_test2|✅ proved - incomplete|shostak|0.845|
|turnOmega_test3|✅ proved - incomplete|shostak|0.825|
|turnOmega_test4|✅ proved - incomplete|shostak|0.956|

## `Velocity`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|trkVel_TCC1|✅ proved - incomplete|shostak|0.040|
|trkVel_TCC2|✅ proved - incomplete|shostak|0.020|
|groundSpeed_nzv|✅ proved - incomplete|shostak|0.020|
|trk_is_pi2|✅ proved - incomplete|shostak|0.088|
|trk_track|✅ proved - incomplete|shostak|0.050|
|mkGs_TCC1|✅ proved - incomplete|shostak|0.070|
|mkTrkGsVs_nonzero|✅ proved - incomplete|shostak|0.057|
|track_mktrk|✅ proved - incomplete|shostak|0.030|
|mkTrkGsVs_def|✅ proved - incomplete|shostak|0.219|
|Hat_TCC1|✅ proved - incomplete|shostak|0.100|

## `gen_turn`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|not_collinear_TCC1|✅ proved - incomplete|shostak|0.030|
|not_collinear_TCC2|✅ proved - incomplete|shostak|0.039|
|not_collinear_not_equal|✅ proved - incomplete|shostak|0.040|
|hat_on_line_TCC1|✅ proved - incomplete|shostak|0.040|
|hat_on_line_TCC2|✅ proved - incomplete|shostak|0.245|
|hat_on_line|✅ proved - incomplete|shostak|0.180|
|normalize_sqv|✅ proved - incomplete|shostak|0.021|
|dot_normalize_ge|✅ proved - incomplete|shostak|0.100|
|sqv_hat_hat|✅ proved - incomplete|shostak|0.092|
|pythagorean_dot_hat|✅ proved - incomplete|shostak|0.440|
|turn_gen_sides|✅ proved - incomplete|shostak|0.370|
|turnGenerator_TCC1|✅ proved - incomplete|shostak|0.030|
|turnGenerator_TCC2|✅ proved - incomplete|shostak|0.042|
|turnGenerator_TCC3|✅ proved - incomplete|shostak|0.040|
|turnGenerator_TCC4|✅ proved - incomplete|shostak|0.060|
|turnGenerator_TCC5|✅ proved - incomplete|shostak|0.020|
|turnGenerator_TCC6|✅ proved - incomplete|shostak|0.090|
|turnGenerator_test_TCC1|✅ proved - complete|shostak|0.032|
|turnGenerator_test_TCC2|✅ proved - incomplete|shostak|0.100|
|turnGenerator_test|✅ proved - incomplete|shostak|0.110|
|turnGenerator_test_2_TCC1|✅ proved - incomplete|shostak|0.090|
|turnGenerator_test_2|✅ proved - incomplete|shostak|0.120|
|right_turn_test|✅ proved - complete|shostak|0.040|
|BOT_onLine_TCC1|✅ proved - incomplete|shostak|0.020|
|BOT_onLine|✅ proved - incomplete|shostak|0.171|
|EOT_onLine_TCC1|✅ proved - incomplete|shostak|0.783|
|EOT_onLine|✅ proved - incomplete|shostak|0.213|
|BOT_Center|✅ proved - incomplete|shostak|0.864|
|EOT_Center|✅ proved - incomplete|shostak|0.929|
|centers_match|✅ proved - incomplete|shostak|5.195|
|turnGenerator_correct_TCC1|✅ proved - incomplete|shostak|0.148|
|turnGenerator_correct|✅ proved - incomplete|shostak|31.231|

## `turn_derivation`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|turn_vx_prep_TCC1|✅ proved - complete|shostak|0.020|
|turn_vx_prep_TCC2|✅ proved - complete|shostak|0.010|
|turn_vx_prep_TCC3|✅ proved - complete|shostak|0.020|
|turn_vx_prep|✅ proved - incomplete|shostak|0.120|
|turn_vy_prep|✅ proved - incomplete|shostak|0.118|
|turn_vx_TCC1|✅ proved - incomplete|shostak|0.020|
|turn_vy_TCC1|✅ proved - incomplete|shostak|0.020|
|linear_angular_TCC1|✅ proved - incomplete|shostak|0.184|
|turn_position_x|✅ proved - incomplete|shostak|0.428|
|turn_position_y|✅ proved - incomplete|shostak|0.344|

## `kinematics_vs_accel`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|vsConstAccelGoalPos_TCC1|✅ proved - incomplete|shostak|0.064|
|equals_integral|✅ proved - incomplete|shostak|0.759|
|equals_integral_pos|✅ proved - incomplete|shostak|2.539|
|reach_goalVs|✅ proved - incomplete|shostak|0.618|
|gamma_TCC1|✅ proved - complete|shostak|0.020|
|gamma_TCC2|✅ proved - complete|shostak|0.020|
|vsAccelUntilWithRampUp_TCC1|✅ proved - incomplete|shostak|0.184|
|vsAccelUntilWithRampUp_TCC2|✅ proved - complete|shostak|0.150|
|equals_integral_AUWRU|✅ proved - incomplete|shostak|8.998|
|reach_goal_AUWRU|✅ proved - incomplete|shostak|0.000|
|vsAccelPos_TCC1|✅ proved - complete|shostak|0.110|
|vsAccel_TCC1|✅ proved - complete|shostak|0.213|

## `vsAccel`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|accel_TCC1|✅ proved - complete|shostak|0.100|
|accel_TCC2|✅ proved - complete|shostak|0.020|
|accel_TCC3|✅ proved - complete|shostak|0.030|
|L1_prep|✅ proved - incomplete|shostak|0.151|
|velo_TCC1|✅ proved - incomplete|shostak|0.020|
|L1_TCC1|✅ proved - complete|shostak|0.028|
|L1_TCC2|✅ proved - complete|shostak|0.030|
|L1|✅ proved - incomplete|shostak|0.223|
|vsAccelUntil_Vel_TCC1|✅ proved - complete|shostak|0.040|
|L2_prep_TCC1|✅ proved - complete|shostak|0.030|
|L2_prep_TCC2|✅ proved - complete|shostak|0.036|
|L2_prep|✅ proved - incomplete|shostak|1.598|
|posit_TCC1|✅ proved - incomplete|shostak|0.020|
|L2_TCC1|✅ proved - complete|shostak|0.020|
|L2_TCC2|✅ proved - complete|shostak|0.020|
|L2|✅ proved - incomplete|shostak|4.480|
|vsAccelUntil_Pos_TCC1|✅ proved - complete|shostak|0.050|
|vsAccelUntil_Pos_TCC2|✅ proved - complete|shostak|0.050|
|vsAccelRamp_Vel_TCC1|✅ proved - incomplete|shostak|0.606|
|Int_ramp_vel_TCC1|✅ proved - complete|shostak|0.020|
|Int_ramp_vel|✅ proved - incomplete|shostak|0.827|
|Int_ramp_vel2|✅ proved - incomplete|shostak|0.831|
|vsAccelRamp_Pos_TCC1|✅ proved - incomplete|shostak|0.486|
|Int_ramp_pos_TCC1|✅ proved - complete|shostak|0.020|
|Int_ramp_pos|✅ proved - incomplete|shostak|1.419|
|vsAccelConst_Vel_TCC1|✅ proved - incomplete|shostak|0.287|
|Int_const_vel|✅ proved - incomplete|shostak|0.294|
|Int_const_vel2|✅ proved - incomplete|shostak|0.633|
|vsAccelConst_Pos_TCC1|✅ proved - incomplete|shostak|0.479|
|Int_const_pos|✅ proved - incomplete|shostak|1.737|
|sign_not_zero|✅ proved - complete|shostak|0.030|
|vsAUWRU_case1_acc_TCC1|✅ proved - incomplete|shostak|0.170|
|case1_vel_prep|✅ proved - incomplete|shostak|0.000|
|vsAUWRU_case1_vel_TCC1|✅ proved - incomplete|shostak|0.180|
|Integral_case1_vel|✅ proved - incomplete|shostak|3.443|
|case1_pos_prep|✅ proved - incomplete|shostak|2.551|
|vsAUWRU_case1_pos_TCC1|✅ proved - incomplete|shostak|0.546|
|Integral_case1_pos_TCC1|✅ proved - incomplete|shostak|0.090|
|Integral_case1_pos|✅ proved - incomplete|shostak|5.809|
|vsAUWRU_acc_TCC1|✅ proved - incomplete|shostak|0.233|
|case2_vel_prep|✅ proved - incomplete|shostak|0.000|
|vsAUWRU_vel_TCC1|✅ proved - incomplete|shostak|0.010|
|Integral_AUWRU_vel_TCC1|✅ proved - incomplete|shostak|0.170|
|Integral_AUWRU_vel|✅ proved - incomplete|shostak|9.700|
|case2_pos_prep|✅ proved - incomplete|shostak|2.565|
|vsAUWRU_pos_TCC1|✅ proved - incomplete|shostak|0.020|
|Integral_AUWRU_pos_TCC1|✅ proved - incomplete|shostak|0.050|
|Integral_AUWRU_pos_TCC2|✅ proved - incomplete|shostak|0.110|
|Integral_AUWRU_pos|✅ proved - incomplete|shostak|35.137|
|vsAUWRU_TCC1|✅ proved - incomplete|shostak|0.160|
|same_tMax|✅ proved - incomplete|shostak|0.181|
|exceeds_deltav|✅ proved - incomplete|shostak|2.139|
|finish_ramp|✅ proved - incomplete|shostak|0.056|

## `gen_vert`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|vertGen_TCC1|✅ proved - complete|shostak|0.070|
|vertGen_TCC2|✅ proved - complete|shostak|0.122|
|vertGen_TCC3|✅ proved - complete|shostak|0.323|

## `vsLevelOut`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|S1_TCC1|✅ proved - complete|shostak|0.020|
|quadRoots_TCC1|✅ proved - complete|shostak|0.020|
|quadRoots_TCC2|✅ proved - complete|shostak|0.120|
|quad_contrapos_TCC1|✅ proved - complete|shostak|0.080|
|quad_contrapos_TCC2|✅ proved - complete|shostak|0.080|
|quad_contrapos|✅ proved - incomplete|shostak|1.181|
|quad_lem_TCC1|✅ proved - complete|shostak|0.068|
|quad_lem|✅ proved - incomplete|shostak|0.642|
|quad_lem2_TCC1|✅ proved - incomplete|shostak|0.020|
|quad_lem2_TCC2|✅ proved - incomplete|shostak|0.174|
|quad_lem2_TCC3|✅ proved - incomplete|shostak|0.210|
|quad_lem2|✅ proved - incomplete|shostak|2.531|
|vsLevelOutTimes1_TCC1|✅ proved - complete|shostak|0.268|
|vsLevelOutTimes1_TCC2|✅ proved - complete|shostak|0.171|
|vsLevelOutTimes1_TCC3|✅ proved - complete|shostak|4.621|
|vsLevelOutTimes1_TCC4|✅ proved - complete|shostak|0.735|
|vsLevelOutTimes1_TCC5|✅ proved - complete|shostak|0.120|
|vsLevelOutTimes_TCC1|✅ proved - complete|shostak|0.081|
|vsLevelOutTimes_TCC2|✅ proved - complete|shostak|0.080|
|times_increase|✅ proved - incomplete|shostak|50.062|
|vsLevelOut_acc_TCC1|✅ proved - incomplete|shostak|0.096|
|vsLevelOut_acc_TCC2|✅ proved - incomplete|shostak|0.030|
|vsLevelOut_acc_TCC3|✅ proved - incomplete|shostak|0.103|
|vel_prep_TCC1|✅ proved - incomplete|shostak|0.030|
|vel_prep_TCC2|✅ proved - incomplete|shostak|0.030|
|vel_prep|✅ proved - incomplete|shostak|0.000|
|vsLevelOut_velInt_TCC1|✅ proved - incomplete|shostak|0.020|
|vsLevelOut_velCalc_TCC1|✅ proved - incomplete|shostak|1.118|
|Integral_vsLO_vel|✅ proved - incomplete|shostak|1.447|
|pos_prep|✅ proved - incomplete|shostak|4.848|
|vsLevelOut_posInt_TCC1|✅ proved - incomplete|shostak|0.020|
|vsLevelOut_posCalc_TCC1|✅ proved - incomplete|shostak|0.960|
|Integral_vsLO_pos|✅ proved - incomplete|shostak|19.507|
|Velocity_after_level|✅ proved - incomplete|shostak|0.131|
|Position_after_level|✅ proved - incomplete|shostak|1:18.589|
|vsLevelOut_TCC1|✅ proved - incomplete|shostak|0.000|
|vsLevelOut_TCC2|✅ proved - incomplete|shostak|1.208|
|vsLevelOut_TCC3|✅ proved - incomplete|shostak|0.042|
|vsLevelOut_TCC4|✅ proved - incomplete|shostak|0.040|
|vsLevelOut_TCC5|✅ proved - incomplete|shostak|0.040|
|vsLevelOutEquals|✅ proved - incomplete|shostak|1.580|
|vsLevelOut_vect2|✅ proved - incomplete|shostak|0.979|

## `gsAccel`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|gsAccel_Vel_prep_TCC1|✅ proved - incomplete|shostak|0.060|
|gsAccel_Vel_prep_TCC2|✅ proved - incomplete|shostak|0.040|
|gsAccel_Vel_prep|✅ proved - incomplete|shostak|0.229|
|gsAccel_Vel_Int_TCC1|✅ proved - incomplete|shostak|0.170|
|gsAccel_Vel_Int_TCC2|✅ proved - incomplete|shostak|0.201|
|gsAccel_Vel_Int_TCC3|✅ proved - incomplete|shostak|0.222|
|Integral_gsAccel_Vel|✅ proved - incomplete|shostak|0.160|
|gsAccel_Pos_prep_TCC1|✅ proved - incomplete|shostak|0.020|
|gsAccel_Pos_prep_TCC2|✅ proved - incomplete|shostak|0.030|
|gsAccel_Pos_prep|✅ proved - incomplete|shostak|0.921|
|gsAccel_Pos_Int_TCC1|✅ proved - incomplete|shostak|0.020|
|gsAccel_Pos_Int_TCC2|✅ proved - incomplete|shostak|0.026|
|gsAccel_Pos_Int_TCC3|✅ proved - incomplete|shostak|0.030|
|gsAccel_Pos_Calc_TCC1|✅ proved - incomplete|shostak|0.060|
|Integral_gsAccel_Pos|✅ proved - incomplete|shostak|0.589|
|gsAccelToRTA_possible_TCC1|✅ proved - incomplete|shostak|0.020|
|gsAccelToRTA_possible_TCC2|✅ proved - incomplete|shostak|0.030|
|gsAccelToRTA_possible_TCC3|✅ proved - incomplete|shostak|0.130|
|neg_groundspeed|✅ proved - incomplete|shostak|0.341|

## `kinematics_gs_accel`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|gsAccel_equals_fnd|✅ proved - incomplete|shostak|2.139|
|reach_goal|✅ proved - incomplete|shostak|2.074|
|gsAccelUntil_checks|✅ proved - incomplete|shostak|2.510|
|gsAccelToRTA_TCC1|✅ proved - complete|shostak|0.110|
|gsAccelToRTA_TCC2|✅ proved - incomplete|shostak|0.678|
|gsAccelToRTA_TCC3|✅ proved - complete|shostak|0.490|
|gsAccelToRTA_checks_TCC1|✅ proved - incomplete|shostak|0.030|
|gsAccelToRTA_checks_TCC2|✅ proved - incomplete|shostak|3.912|
|gsAccelToRTA_checks|✅ proved - incomplete|shostak|10.386|

## `NavPoint3D`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|groundSpeed_TCC1|✅ proved - complete|shostak|0.060|
|groundSpeed_TCC2|✅ proved - incomplete|shostak|0.120|
|gs_nz|✅ proved - incomplete|shostak|0.120|
|initialVelocity_TCC1|✅ proved - complete|shostak|0.040|
|initialVelocity_TCC2|✅ proved - complete|shostak|0.050|

## `KinematicPlan`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|plan_lin_ex1_TCC1|✅ proved - incomplete|shostak|0.057|
|plan_lin_ex1_TCC2|✅ proved - incomplete|shostak|0.070|
|getLastTime_TCC1|✅ proved - incomplete|shostak|0.050|
|getSegment_TCC1|✅ proved - incomplete|shostak|0.060|
|getSegment_TCC2|✅ proved - incomplete|shostak|0.030|
|getSegment_TCC3|✅ proved - incomplete|shostak|0.050|
|getSegment_TCC4|✅ proved - incomplete|shostak|0.040|
|getSegment_TCC5|✅ proved - incomplete|shostak|0.090|
|getSegment_TCC6|✅ proved - incomplete|shostak|0.060|
|getSegment_TCC7|✅ proved - incomplete|shostak|0.040|
|getSegment_TCC8|✅ proved - incomplete|shostak|0.143|
|getSegment_test_TCC1|✅ proved - incomplete|shostak|0.050|
|getSegment_test|✅ proved - incomplete|shostak|0.170|
|getSegment_TCC9|✅ proved - incomplete|shostak|0.030|
|getSegment_def_found_TCC1|✅ proved - incomplete|shostak|0.240|
|getSegment_def_found|✅ proved - incomplete|shostak|0.000|
|getSegment_at_tcp|✅ proved - incomplete|shostak|0.237|
|prevTCPType_TCC1|✅ proved - incomplete|shostak|0.080|
|prevTCPType_TCC2|✅ proved - incomplete|shostak|0.070|
|prevTCPType_TCC3|✅ proved - incomplete|shostak|0.100|
|nextTCPType_TCC1|✅ proved - incomplete|shostak|0.090|
|nextTCPType_TCC2|✅ proved - incomplete|shostak|0.080|
|nextTCPType_TCC3|✅ proved - incomplete|shostak|0.110|
|prevTCP_TCC1|✅ proved - incomplete|shostak|0.068|
|prevTCP_TCC2|✅ proved - incomplete|shostak|0.070|
|prevTCP_TCC3|✅ proved - incomplete|shostak|0.040|
|prevTCP_TCC4|✅ proved - incomplete|shostak|0.180|
|prevTCP_TCC5|✅ proved - incomplete|shostak|0.090|
|prevTCP_TCC6|✅ proved - incomplete|shostak|0.100|
|prevTCP_TCC7|✅ proved - incomplete|shostak|0.230|
|nextTCP_TCC1|✅ proved - incomplete|shostak|0.080|
|nextTCP_TCC2|✅ proved - incomplete|shostak|0.090|
|nextTCP_TCC3|✅ proved - incomplete|shostak|0.180|
|nextTCP_TCC4|✅ proved - incomplete|shostak|0.110|
|nextTCP_TCC5|✅ proved - incomplete|shostak|0.140|
|nextTCP_TCC6|✅ proved - incomplete|shostak|0.299|
|prevTCP_test|✅ proved - incomplete|shostak|0.050|
|nextTCP_test|✅ proved - incomplete|shostak|0.050|
|inTurn_TCC1|✅ proved - incomplete|shostak|0.090|
|turnRadius_TCC1|✅ proved - incomplete|shostak|0.160|
|inGroundSpeedChange_TCC1|✅ proved - incomplete|shostak|0.100|
|inVerticalSpeedChange_TCC1|✅ proved - incomplete|shostak|0.090|
|inTurnPrevBOT|✅ proved - incomplete|shostak|0.170|
|gsAccel_TCC1|✅ proved - incomplete|shostak|0.170|
|vsAccel_TCC1|✅ proved - incomplete|shostak|0.160|
|pathDistance_TCC1|✅ proved - incomplete|shostak|0.100|
|pathDistance_TCC2|✅ proved - incomplete|shostak|0.180|
|ValidTime?_TCC1|✅ proved - incomplete|shostak|0.055|
|accelZone_TCC1|✅ proved - incomplete|shostak|0.120|
|accelZone_TCC2|✅ proved - incomplete|shostak|0.170|
|accelZone_TCC3|✅ proved - incomplete|shostak|0.290|
|accelZone_TCC4|✅ proved - incomplete|shostak|0.318|
|accelZone_TCC5|✅ proved - incomplete|shostak|0.348|

## `LatLonAlt`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|mk_lem|✅ proved - complete|shostak|0.010|

## `GreatCircle`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|spherical_earth_radius_TCC1|✅ proved - incomplete|shostak|0.150|
|angular_distance_prep|✅ proved - incomplete|shostak|0.792|
|angular_distance_TCC1|✅ proved - incomplete|shostak|0.020|
|distance_from_angle_TCC1|✅ proved - incomplete|shostak|0.210|
|initial_course_impl2_TCC1|✅ proved - incomplete|shostak|0.080|
|angle_between_old_TCC1|✅ proved - incomplete|shostak|0.360|
|velocity_initial_TCC1|✅ proved - incomplete|shostak|0.448|
|velocity_initial_TCC2|✅ proved - incomplete|shostak|0.430|

## `ENU`
No formula declaration found.
## `Kinematics`

| Formula | Proof Status | Decision Procedure | Time |
| ---     | ---          | ---                | ---  |
|turnByDist2D_TCC1|✅ proved - incomplete|shostak|0.290|

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
|groundSpeed_TCC2|✅ proved - incomplete|shostak|0.130|
|gs_nz|✅ proved - incomplete|shostak|0.150|
|initialVelocity_TCC1|✅ proved - complete|shostak|0.040|
|initialVelocity_TCC2|✅ proved - complete|shostak|0.050|
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
|ordered_lem|✅ proved - complete|shostak|0.298|
|getIndexInRange_rec_TCC1|✅ proved - complete|shostak|0.090|
|getIndexInRange_rec_TCC2|✅ proved - complete|shostak|0.040|
|getIndexInRange_TCC1|✅ proved - complete|shostak|0.050|
|getIndex_TCC1|✅ proved - complete|shostak|0.070|
|findPrev_TCC1|✅ proved - complete|shostak|0.100|
|turnDir_TCC1|✅ proved - complete|shostak|0.090|
|pathDistanceNat_TCC1|✅ proved - complete|shostak|0.020|
|pathDistanceNat_TCC2|✅ proved - complete|shostak|0.070|
|pathDistanceNat_TCC3|✅ proved - complete|shostak|0.060|
|pathDistanceNat_TCC4|✅ proved - complete|shostak|0.030|
|pathDistance4_TCC1|✅ proved - complete|shostak|0.046|
|gsFinal_TCC1|✅ proved - complete|shostak|0.070|
|gsFinal_TCC2|✅ proved - incomplete|shostak|0.160|
|gsOut_TCC1|✅ proved - complete|shostak|0.070|
|gsOut_TCC2|✅ proved - incomplete|shostak|0.150|
|vsFinal_TCC1|✅ proved - complete|shostak|0.170|
|vsOut_TCC1|✅ proved - complete|shostak|0.160|
## Platform information 
|  |  |
|---|---|
| PVS Version | 7.1.0 |
| Lisp| International Allegro CL Enterprise Edition 10.1 [64-bit Linux (x86-64)] (Nov 14, 2020 18:29)|
| Patch Version| n/a|
| Library Path| `/home/cmunoz/local/pvs-7.1.0/nasalib//float/`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/`<br/>`/home/cmunoz/local/pvs-7.1.0/lib/`|
| Loaded Patches | `/home/cmunoz/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/.pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20221018-proveit-init.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-syntax-matching.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220902-manip-manip-utilities.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220514-conversions.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20220512-exprjudgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210707-trivial-judgements.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210701-breakpoint-reached-when-restoring-from-binaries.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210623-pvsio-fix.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210421-prooflite.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210323-wish.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210301.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210225-cl2pvs.lisp`<br/>`/home/cmunoz/local/pvs-7.1.0/nasalib/pvs-patches/patch-20210219-extratregies.lisp`|
