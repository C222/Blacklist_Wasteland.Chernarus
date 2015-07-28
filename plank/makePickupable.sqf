_target = _this select 0;
fortIdx = _this select 1;

_target addAction ["Pick Up",
	{
		[_this select 1, 1, fortIdx] call plank_deploy_fnc_addFortificationAction;
		deleteVehicle (_this select 0);
	}
];