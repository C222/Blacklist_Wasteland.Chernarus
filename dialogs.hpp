 ////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by C222, v1.063, #Qugube)
////////////////////////////////////////////////////////
class SPAWN_DIALOG
{
	idd = -1;
	movingenable = true;
	class Controls
	{
		class SPAWN_DIALOG_box: BOX
		{
			idc = 1801;
			x = 0.384700 * safezoneW + safezoneX;
			y = 0.290476 * safezoneH + safezoneY;
			w = 0.247905 * safezoneW;
			h = 0.396238 * safezoneH;
		};
		class SPAWN_DIALOG_frame: RscFrame
		{
			idc = 1800;
			text = "Spawn"; //--- ToDo: Localize;
			x = 0.384700 * safezoneW + safezoneX;
			y = 0.290476 * safezoneH + safezoneY;
			w = 0.247905 * safezoneW;
			h = 0.396238 * safezoneH;
		};
		class SPAWN_DIALOG_ground: RscButton
		{
			idc = 1600;
			text = "Ground"; //--- ToDo: Localize;
			x = 0.445239 * safezoneW + safezoneX;
			y = 0.625713 * safezoneH + safezoneY;
			w = 0.0398809 * safezoneW;
			h = 0.0404761 * safezoneH;
			action = "closeDialog 0; parachute = false; chosen = true";
		};
		class SPAWN_DIALOG_parachute: RscButton
		{
			idc = 1601;
			text = "Parachute"; //--- ToDo: Localize;
			x = 0.533334 * safezoneW + safezoneX;
			y = 0.625715 * safezoneH + safezoneY;
			w = 0.0398809 * safezoneW;
			h = 0.0404761 * safezoneH;
			action="closeDialog 0; parachute = true; chosen = true";
		};
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT END
		////////////////////////////////////////////////////////
	};
};