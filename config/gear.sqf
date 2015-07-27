_side = _this select 0;

if (_side == east) exitWith
{
	[
	// Uniforms
		["rhs_uniform_emr_patchless", "rhs_uniform_msv_emr", "rhs_uniform_vdv_emr",
		"rhs_uniform_flora_patchless", "rhs_uniform_flora_patchless_alt", "rhs_uniform_flora", "rhs_uniform_vdv_flora"],
	// Vests
		["rhs_6b23", "rhs_6b23_6sh92", "rhs_6b23_6sh92_headset", "rhs_6b23_6sh92_headset_mapcase", "rhs_6b23_6sh92_radio", "rhs_6b23_6sh92_vog","rhs_6b23_6sh92_vog_headset", "rhs_6b23_crewofficer", "rhs_6b23_crew", "rhs_6b23_engineer", "rhs_6b23_medic", "rhs_6b23_rifleman", "rhs_6b23_sniper",
		"rhs_6b23_digi", "rhs_6b23_digi_6sh92", "rhs_6b23_digi_6sh92_headset", "rhs_6b23_digi_6sh92_headset_mapcase", "rhs_6b23_digi_6sh92_radio", "rhs_6b23_digi_6sh92_vog","rhs_6b23_digi_6sh92_vog_headset", "rhs_6b23_digi_crewofficer", "rhs_6b23_digi_crew", "rhs_6b23_digi_engineer", "rhs_6b23_digi_medic", "rhs_6b23_digi_rifleman", "rhs_6b23_digi_sniper"]
	]
};

if (_side == west) exitWith
{
	[
	// Uniforms
		["rhs_uniform_cu_ocp", "rhs_uniform_cu_ocp_101st", "rhs_uniform_cu_ocp_10th", "rhs_uniform_cu_ocp_82nd",
		"rhs_uniform_cu_ucp", "rhs_uniform_cu_ucp_101st", "rhs_uniform_cu_ucp_10th", "rhs_uniform_cu_ucp_82nd"],
	// Vests
		["rhsusf_iotv_ocp", "rhsusf_iotv_ucp", "rhsusf_spc", "rhsusf_spc_rifleman"]
	]
};

if (_side == resistance) exitWith
{
	[
	// Uniforms
		["rhs_uniform_FROG01_m81", "rhs_uniform_FROG01_wd",
		"rhs_uniform_mflora_patchless", "rhs_uniform_vdv_mflora"],
	// Vests
		["rhs_6b23_ML", "rhs_6b23_ML_6sh92", "rhs_6b23_ML_6sh92_headset", "rhs_6b23_ML_6sh92_headset_mapcase", "rhs_6b23_ML_6sh92_radio", "rhs_6b23_ML_6sh92_vog","rhs_6b23_ML_6sh92_vog_headset", "rhs_6b23_ML_crewofficer", "rhs_6b23_ML_crew", "rhs_6b23_ML_engineer", "rhs_6b23_ML_medic", "rhs_6b23_ML_rifleman", "rhs_6b23_ML_sniper"]
	]
};