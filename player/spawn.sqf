_thePlayer = _this select 0;

_thePlayer setPos [-20000 - (random 10000), 5000 + random 15000, 0];

chosen = false;

_ok = createDialog "SPAWN_DIALOG";

waitUntil {chosen};

_towns = [] call config_fnc_getTowns select 0;
_gear = [side _thePlayer] call config_fnc_getGear;
_uniforms = _gear select 0;
_vests = _gear select 1;

_chosenIdx = random ((count _towns) - 1);
_markerName = _towns select _chosenIdx;

_mPos = markerPos _markerName;
_mSize = markerSize _markerName;

_radius  = (_mSize select 0);

_spawnPos = [_mPos, _radius, 10] call util_fnc_safeSpot;

_thePlayer enableFatigue false;

removeGoggles _thePlayer;
removeAllWeapons _thePlayer;
removeAllContainers _thePlayer;
// removeAllAssignedItems _thePlayer;
removeHeadgear _thePlayer;

_uniform = _uniforms select floor(random(count _uniforms));
_vest = _vests select floor(random(count _vests));

_thePlayer forceAddUniform _uniform;
_thePlayer addVest _vest;

if (parachute) then
{
	_spawnPos set [2, 1000];
	_thePlayer addBackpack "B_Parachute";
};

_thePlayer setPos _spawnPos;

_now = date;
_year = _now select 0;
_month = _now select 1;
_day = _now select 2;
_hour = _now select 3;
_min  = _now select 4;

[_thePlayer, [2, 1, 2, 2, 0, 2, 0, 0]] call plank_api_fnc_forceAddFortifications;

// hint format ["Spawning at %1", markerText _markerName];
[
	markerText _markerName,
	"Chernarus",
	format ["%1-%2-%3 | %4:%5", _year, _month, _day, _hour, _min]
] spawn BIS_fnc_infoText;

// _veh = createVehicle ["Steerable_Parachute_F", _spawnPos, [], 0, "FLY"];
// player moveInDriver _veh;