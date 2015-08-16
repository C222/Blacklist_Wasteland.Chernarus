diag_log "Starting lootAgent";
_towns = [] call config_fnc_getTowns select 0;
_loot = [] call config_fnc_getLoot select 4;

{
	_pos = markerPos _x;
	_mSize = markerSize _x;
	_radius  = (_mSize select 0);
	
	_houses = (nearestObjects [_pos, ["House"], _radius]);
	
	_poses = [];
	
	{
		_poses = _poses + ([_x] call util_fnc_getPoses);
	} forEach _houses;
	
	{
		_veh = (([_loot] call util_fnc_pickOne) select 0) createVehicle [0, 0, 0];
		_veh setPos _x;
	} forEach _poses;
	
} forEach _towns;