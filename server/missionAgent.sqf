diag_log format ["Starting mission agent."];

_lastMissionTime = time;
_lastMissionHandle = 0 spawn {};
sleep 60;

// systemChat "Starting Missions";
while {true} do
{
	// systemChat "Mission Check";
	if (scriptDone _lastMissionHandle) then
	{
		_lastMissionHandle = [] spawn missions_fnc_simpleTruck;
	};
	sleep 5;
};