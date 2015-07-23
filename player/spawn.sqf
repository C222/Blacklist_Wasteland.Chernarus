thePlayer = _this select 0;

towns = [] call config_fnc_getTowns;

chosenIdx = random ((count towns) - 1);
markerName = towns select chosenIdx;

hint format ["Spawning at %1", markerText markerName];

mPos = markerPos markerName;
mSize = markerSize markerName;

// diag_log format ["%1 - %2", mPos, mSize];
safety = 0;

while {safety < 20} do
{
	xOffset = (mSize select 0) / 2;
	xPos = (mPos select 0) + (random (mSize select 0)) - xOffset;

	yOffset = (mSize select 1) / 2;
	yPos = (mPos select 1) + (random (mSize select 1)) - yOffset;

	thePlayer setPos [xPos, yPos, (mPos select 2)];

	safety = (nearestObject [getPos thePlayer, "Building"]) distance thePlayer; //(nearestBuilding thePlayer) distance thePlayer;
};

// thePlayer enableSimulationGlobal true;