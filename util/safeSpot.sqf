center = _this select 0;
radius = _this select 1;
threshold = _this select 2;

safety = 0;

while {safety < threshold} do
{
	offset = [radius] call util_fnc_randRadius;

	xPos = (center select 0) + (offset select 0);
	yPos = (center select 1) + (offset select 1);
	
	finalPos = [xPos, yPos, (center select 2)];

	safety = (nearestObject [finalPos, "Building"]) distance finalPos; //(nearestBuilding thePlayer) distance thePlayer;
};

finalPos