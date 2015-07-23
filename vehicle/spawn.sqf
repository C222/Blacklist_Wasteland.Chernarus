iter = _this select 0;

vehicles_ = [] call config_fnc_getVehicles;
towns = [] call config_fnc_getTowns;

chosenIdx = random ((count towns) - 1);
markerName = towns select chosenIdx;

mPos = markerPos markerName;
mSize = markerSize markerName;
radius  = (mSize select 0);

chosenIdx = random ((count vehicles_) - 1);
vehicle_ = vehicles_ select chosenIdx;

vName = vehicle_ select 0;

spawnPos = [mPos, radius, 20] call util_fnc_safeSpot;

spawnedV = vName createVehicle spawnPos;
spawnedV setDir random 360;

spawnedM = createMarker [format ["Marker_%1", iter], spawnPos];
spawnedM setMarkerShape "ICON";
spawnedM setMarkerType "hd_dot";
spawnedM setMarkerText format ["%1", vName];

spawnedV