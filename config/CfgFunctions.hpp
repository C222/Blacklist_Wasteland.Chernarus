class config
{
	class common
	{
		class getTowns
		{
			file = "config\towns.sqf";
		};
		class getVehicles
		{
			file = "config\vehicles.sqf";
		};
		class getLoot
		{
			file = "config\loot.sqf";
		};
		class getGear
		{
			file = "config\gear.sqf";
		};
	};
};

class util
{
	class common
	{
		class safeSpot
		{
			file = "util\safeSpot.sqf";
		};
		class randRadius
		{
			file = "util\randRadius.sqf";
		};
		class playersWithin
		{
			file = "util\playersWithin.sqf";
		};
		class magazinesFor
		{
			file = "util\magazinesFor.sqf";
		};
	};
};

class player
{
	class common
	{
		class spawn
		{
			file = "player\spawn.sqf";
		};
	};
};

class vehicle
{
	class common
	{
		class spawn
		{
			file = "vehicle\spawn.sqf";
		};
		class giveLoadout
		{
			file = "vehicle\giveLoadout.sqf";
		};
	};
};

class server
{
	class common
	{
		class mapAgent
		{
			file = "server\mapAgent.sqf";
		};
		class vehicleWatcher
		{
			file = "server\vehicleWatcher.sqf";
		};
	};
};

class client
{
	class common
	{
		class iconAgent
		{
			file = "client\iconAgent.sqf";
		};
	};
};