_pos = _this select 0;
_radius = _this select 1;

players_ = [];//(nearestObjects [_pos, ["CAManBase"], _radius]);
_vehicles = (nearestObjects [_pos, ["AllVehicles"], _radius]);

{
	_crew = crew _x;
	{
		if (!(isNull _x)) then
		{
			players_ pushBack _x;
		};
	} forEach _crew;
} forEach _vehicles;

players_