thePlayer = _this select 0;

titleText ["Respawning", "BLACK", 0];
waitUntil {alive thePlayer};
[thePlayer] call player_fnc_spawn;
titleFadeOut 1;