_iter = _this select 0;
_type = _this select 1;
_place = _this select 2;

_vehicles = [] call config_fnc_getVehicles select _type;
_towns = [] call config_fnc_getTowns select _place;

_chosenIdx = random ((count _towns) - 1);
_markerName = _towns select _chosenIdx;

_mPos = markerPos _markerName;
_mSize = markerSize _markerName;
_radius  = (_mSize select 0);

_chosenIdx = random ((count _vehicles) - 1);
_vehicle = _vehicles select _chosenIdx;

// diag_log format ["%1", _vehicle];
// diag_log format ["%1", _markerName];

_spawnPos = [_mPos, _radius, 20] call util_fnc_safeSpot;

spawnedV = _vehicle createVehicle _spawnPos;
spawnedV setDir random 360;

_spawnedM = createMarker [format ["Marker_%1_%2", _iter, _type], _spawnPos];
_spawnedM setMarkerShape "ICON";
_spawnedM setMarkerType (["hd_dot", "hd_end", "hd_destroy", "hd_flag"] select _type);
// _spawnedM setMarkerText format ["%1", _vehicle];

spawnedV