_size = _this select 0;
_pos = _this select 1;

_g = createGroup civilian;

_man1 = _g createUnit ["C_Driver_1_black_F", [(_pos select 0) + 10, _pos select 1, 0], [], 1, "FORM"];
_man1 addVest "V_TacVest_blk_POLICE";
_man1 addBackpack "B_AssaultPack_blk";
_man1 addMagazine "rhs_rpg7_PG7VL_mag";
_man1 addMagazine "rhs_rpg7_PG7VL_mag";
_man1 addWeapon "rhs_weap_rpg7";
_man1 addMagazine "rhs_45Rnd_545x39_AK";
_man1 addMagazine "rhs_45Rnd_545x39_AK";
_man1 addMagazine "rhs_45Rnd_545x39_AK";
_man1 addWeapon "rhs_weap_aks74u";

[_g, _pos] call BIS_fnc_taskDefend;