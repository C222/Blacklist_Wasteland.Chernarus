_thePlayer = _this select 0;

titleText ["Respawning", "BLACK", 0];
waitUntil {alive _thePlayer};
[_thePlayer] call player_fnc_spawn;
titleFadeOut 1;