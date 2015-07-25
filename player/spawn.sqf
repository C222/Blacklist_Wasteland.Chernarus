thePlayer = _this select 0;

towns = [] call config_fnc_getTowns select 0;

chosenIdx = random ((count towns) - 1);
markerName = towns select chosenIdx;

hint format ["Spawning at %1", markerText markerName];

mPos = markerPos markerName;
mSize = markerSize markerName;

radius  = (mSize select 0);

spawnPos = [mPos, radius, 10] call util_fnc_safeSpot;

spawnPos set [2, 1000];

thePlayer setPos spawnPos;

thePlayer addBackpack "B_Parachute";

// _veh = createVehicle ["Steerable_Parachute_F", spawnPos, [], 0, "FLY"];
// player moveInDriver _veh;