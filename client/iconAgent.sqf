diag_log "Starting iconAgent";

iconColor = [.05, 0.7, .05, 1];
if (side player == west) then
{
	iconColor = [.05, .05, .7,1];
};
if (side player == east) then
{
	iconColor = [0.7, .05, .05,1];
};

["iconAgent", "onEachFrame",
{
	 {
		if ((side _x == side player) and (_x != player)) then
		{
			_fpos = getPos _x;
			_fpos set [2, (_fpos select 2) + 1];
			_size = (1000 - (_x distance player)) / 1000;
			// hint format ["%1", _size];
			drawIcon3D ["\a3\ui_f\data\gui\cfg\cursors\hc_overfriendly_gs.paa",
			iconColor,
			_fpos, _size, _size, 45, "", 1, 0.05, "TahomaB"];
		};
	} forEach ([getPos player, 1000] call util_fnc_playersWithin); 
}
] call BIS_fnc_addStackedEventHandler;