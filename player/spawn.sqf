_thePlayer = _this select 0;

_thePlayer setPos [-20000 - (random 10000), 5000 + random 15000, 0];

chosen = false;

_ok = createDialog "SPAWN_DIALOG";

waitUntil {chosen};

_towns = [] call config_fnc_getTowns select 0;

_chosenIdx = random ((count _towns) - 1);
_markerName = _towns select _chosenIdx;

_mPos = markerPos _markerName;
_mSize = markerSize _markerName;

_radius  = (_mSize select 0);

_spawnPos = [_mPos, _radius, 10] call util_fnc_safeSpot;

if (parachute) then
{
	_spawnPos set [2, 1000];
	_thePlayer addBackpack "B_Parachute";
};

_thePlayer enableFatigue false;
_thePlayer setPos _spawnPos;

_now = date;
_year = _now select 0;
_month = _now select 1;
_day = _now select 2;
_hour = _now select 3;
_min  = _now select 4;

// hint format ["Spawning at %1", markerText _markerName];
[
	markerText _markerName,
	"Chernarus",
	format ["%1-%2-%3 | %4:%5", _year, _month, _day, _hour, _min]
] spawn BIS_fnc_infoText;

// _veh = createVehicle ["Steerable_Parachute_F", _spawnPos, [], 0, "FLY"];
// player moveInDriver _veh;