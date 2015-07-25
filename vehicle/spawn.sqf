iter = _this select 0;
type_ = _this select 1;
place = _this select 2;

vehicles_ = [] call config_fnc_getVehicles select type_;
towns = [] call config_fnc_getTowns select place;

chosenIdx = random ((count towns) - 1);
markerName = towns select chosenIdx;

mPos = markerPos markerName;
mSize = markerSize markerName;
radius  = (mSize select 0);

chosenIdx = random ((count vehicles_) - 1);
vehicle_ = vehicles_ select chosenIdx;

// diag_log format ["%1", vehicle_];
// diag_log format ["%1", markerName];

spawnPos = [mPos, radius, 20] call util_fnc_safeSpot;

spawnedV = vehicle_ createVehicle spawnPos;
spawnedV setDir random 360;

spawnedM = createMarker [format ["Marker_%1_%2", iter, type_], spawnPos];
spawnedM setMarkerShape "ICON";
spawnedM setMarkerType (["hd_dot", "hd_end", "hd_destroy", "hd_flag"] select type_);
spawnedM setMarkerText format ["%1", vehicle_];

spawnedV