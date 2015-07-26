#include "config\globalConfig.sqf"

diag_log format ["############################# %1 #############################", missionName];
diag_log format ["T%1,DT%2,F%3", time, diag_tickTime, diag_frameno];
diag_log format ["WASTELAND SERVER - Initilizing Server"];
diag_log format ["Towns are: %1", [] call config_fnc_getTowns select 0];

{
	// diag_log format ["Hiding: %1", _x];
	_x setMarkerAlpha 0;
} forEach ([] call config_fnc_getTowns select 0) + ([] call config_fnc_getTowns select 1) + ([] call config_fnc_getTowns select 2);

diag_log format ["Spawning Vehicles"];

for "_x" from 1 to (vehicleCount select 0) do
{
	[_x, 0, 0] call vehicle_fnc_spawn;
};
for "_x" from 1 to (vehicleCount select 1) do
{
	[_x, 1, 0] call vehicle_fnc_spawn;
};
for "_x" from 1 to (vehicleCount select 2) do
{
	[_x, 2, 1] call vehicle_fnc_spawn;
};
for "_x" from 1 to (vehicleCount select 3) do
{
	[_x, 3, 2] call vehicle_fnc_spawn;
};

diag_log format ["Spawning server agents."];
[] spawn server_fnc_mapAgent;

sleep 5;
readyForSpawn = true;
publicVariable "readyForSpawn";
diag_log format ["Done"];