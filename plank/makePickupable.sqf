_target = _this select 0;
_fortIdx = _this select 1;

_target addAction ["Pick Up",
	{
		player playAction "MedicOther";
		[_this select 1, 1, _this select 3] call plank_deploy_fnc_addFortificationAction;
		deleteVehicle (_this select 0);
	},
	_fortIdx,
	1,
	false,
	false,
	"",
	"vehicle player == player"
];