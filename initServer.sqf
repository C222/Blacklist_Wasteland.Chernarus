diag_log format ["############################# %1 #############################", missionName];
diag_log format ["T%1,DT%2,F%3", time, diag_tickTime, diag_frameno];
diag_log format ["WASTELAND SERVER - Initilizing Server"];
diag_log format ["Towns are: %1", [] call config_fnc_getTowns];

diag_log format ["Spawning Vehicles"];

for "_x" from 1 to 40 do
{
	[_x] spawn vehicle_fnc_spawn;
};

diag_log format ["Done"];