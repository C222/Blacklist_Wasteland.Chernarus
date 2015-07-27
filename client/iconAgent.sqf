diag_log "Starting iconAgent";

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
			[.1,1,.1,1], _fpos, _size, _size, 45, "", 1, 0.05, "TahomaB"];
		}
	} forEach nearestObjects [getPos player, ["CAManBase"], 1000]; 
}
] call BIS_fnc_addStackedEventHandler;