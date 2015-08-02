//BEGIN SETUP
_missions = [] call config_fnc_getTowns select 1;
_missionSpot = [_missions] call util_fnc_pickOne select 0;

_mPos = markerPos _missionSpot;
_mSize = markerSize _missionSpot;
_radius  = (_mSize select 0);

_offset = [_radius] call util_fnc_randRadius;

_xPos = (_mPos select 0) + (_offset select 0);
_yPos = (_mPos select 1) + (_offset select 1);
_mPos = [_xPos, _yPos, (_mPos select 2)];

_spawnPos = _mPos findEmptyPosition [0, 50, "rhs_bmp1_vdv"];

_vehicle = "rhs_bmp1_vdv" createVehicle _spawnPos;

_picture = getText (configFile >> "cfgVehicles" >> typeOf _vehicle >> "picture");
_vehicleName = getText (configFile >> "cfgVehicles" >> typeOf _vehicle >> "displayName");
_hint = parseText format ["<t align='center'><img size='5' image='images\blacklist_icon.paa'/></t><br/><t align='center' color='%4'>------------------------------</t><br/><t align='center' color='%5' size='1.25'>%1</t><br/><t align='center'><img size='5' image='%2'/></t><br/><t align='center' color='%5'>A<t color='%4'> %3</t> has been immobilized; go get it for your team!</t>", "BMP1 Delivery", _picture, _vehicleName, "#52bf90", "#FFFFFF"];
hint _hint;
// [nil,nil,rHINT,_hint] call RE;

_spawnedM = createMarker ["missionMarker", markerPos _missionSpot];
_spawnedM setMarkerShape "ICON";
_spawnedM setMarkerType "hd_destroy";
_spawnedM setMarkerText format ["%1", "Mission"];
_spawnedM setMarkerColor "ColorRed";

[0, _spawnPos] call missions_fnc_makeEnemies;
//END SETUP

//BEGIN IN PROGRESS
waitUntil{!isNull(driver _vehicle)};
//END IN PROGRESS

//BEGIN TEARDOWN
deleteMarker _spawnedM;
//END TEARDOWN