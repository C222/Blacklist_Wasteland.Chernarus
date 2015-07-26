_pos = _this select 0;
_radius = _this select 1;

players_ = (nearestObjects [_pos, ["CAManBase"], _radius]);
_vehicles = (nearestObjects [_pos, ["LandVehicle"], _radius]);

{
	_crew = crew _x;
	{
		if (!(isNull _x)) then
		{
			players_ = players_ + [_x];
		};
	} forEach _crew;
} forEach _vehicles;

players_