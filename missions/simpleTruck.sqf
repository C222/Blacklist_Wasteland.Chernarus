systemChat "----------New Mission!----------";

_missions = [] call config_fnc_getTowns select 1;
_missionSpot = [_missions] call util_fnc_pickOne select 0;

_spawnedM = createMarker ["missionMarker", markerPos _missionSpot];
_spawnedM setMarkerShape "ICON";
_spawnedM setMarkerType "hd_destroy";
_spawnedM setMarkerText format ["%1", "Mission"];
_spawnedM setMarkerAlpha 1;
_spawnedM setMarkerColor "ColorRed";

sleep 120;
_spawnedM setMarkerAlpha 0;
systemChat "----------End Mission!----------";