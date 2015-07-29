_thePlayer = _this select 0;

call compile preprocessFileLineNumbers "plank\plank_init.sqf";

// titleText ["Please wait for your player to setup", "BLACK", 0];
// waitUntil {_thePlayer == _thePlayer};
// [_thePlayer] call player_fnc_spawn;
// titleFadeOut 1;

[] spawn client_fnc_iconAgent;

_thePlayer addAction ["Pick Up",
	{
		player playActionNow "MedicOther";
		_item = (cursorTarget getVariable ["pickupableIdx", -1]);
		[player, 1, _item] call plank_deploy_fnc_addFortificationAction;
		deleteVehicle (cursorTarget);
	},
	"",
	1,
	false,
	true,
	"",
	"(vehicle player == player)
	and ((cursorTarget getVariable [""pickupableIdx"", -1]) >= 0)
	and ((player distance cursorTarget) < 10)"
];