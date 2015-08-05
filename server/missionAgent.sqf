diag_log format ["Starting mission agent."];

EAST setFriend [WEST, 0];
EAST setFriend [EAST, 1];
EAST setFriend [RESISTANCE, 0];
EAST setFriend [CIVILIAN, 0];
WEST setFriend [EAST, 0];
WEST setFriend [WEST, 1];
WEST setFriend [RESISTANCE, 0];
WEST setFriend [CIVILIAN, 0];
RESISTANCE setFriend [EAST, 0];
RESISTANCE setFriend [RESISTANCE, 1];
RESISTANCE setFriend [WEST, 0];
RESISTANCE setFriend [CIVILIAN, 0];
CIVILIAN setFriend [EAST, 0];
CIVILIAN setFriend [WEST, 0];
CIVILIAN setFriend [RESISTANCE, 0];

_lastMissionTime = time;
_lastMissionHandle = 0 spawn {};

// systemChat "Starting Missions";
while {true} do
{
	// systemChat "Mission Check";
	if (scriptDone _lastMissionHandle) then
	{
		sleep 60;
		_lastMissionHandle = [] spawn missions_fnc_simpleTruck;
	};
	sleep 5;
};