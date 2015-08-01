 ////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by C222, v1.063, #Qugube)
////////////////////////////////////////////////////////
class SPAWN_DIALOG
{
	idd = 1992;
	movingenable = true;
	onLoad="uiNamespace setVariable ['SPAWN_DIALOG', _this select 0]";
	class Controls
	{
		class SPAWN_DIALOG_box: BOX
		{
			idc = 1801;
			x = 0.25 * safezoneW + safezoneX;
			y = 0.25 * safezoneH + safezoneY;
			w = 0.5 * safezoneW;
			h = 0.5 * safezoneH;
		};
		class SPAWN_DIALOG_frame: RscFrame
		{
			idc = 1800;
			text = "Spawn"; //--- ToDo: Localize;
			x = 0.25 * safezoneW + safezoneX;
			y = 0.25 * safezoneH + safezoneY;
			w = 0.5 * safezoneW;
			h = 0.5 * safezoneH;
		};
		class SPAWN_DIALOG_ground: RscButton
		{
			idc = 1600;
			text = "Ground"; //--- ToDo: Localize;
			x = 0.252 * safezoneW + safezoneX;
			y = 0.696 * safezoneH + safezoneY;
			w = 0.05 * safezoneW;
			h = 0.05 * safezoneH;
			action = "closeDialog 0;";
		};
		class SPAWN_DIALOG_parachute: RscButton
		{
			idc = 1601;
			text = "Parachute"; //--- ToDo: Localize;
			x = 0.252 * safezoneW + safezoneX;
			y = 0.642 * safezoneH + safezoneY;
			w = 0.05 * safezoneW;
			h = 0.05 * safezoneH;
			action="closeDialog 0; player setVariable [""parachuteIn"", true];";
		};
		class SPAWN_DIALOG_droplist: RscListbox
		{
			idc = 1602;
			text = "asdf"; //--- ToDo: Localize;
			x = 0.35 * safezoneW + safezoneX;
			y = 0.28 * safezoneH + safezoneY;
			w = 0.1 * safezoneW;
			h = 0.45 * safezoneH;
			onLBDblClick = "closeDialog 0; _idx = _this select 1; player setVariable [""friendlySpawn"", lbData [1602, _idx]];";
		};
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT END
		////////////////////////////////////////////////////////
	};
};