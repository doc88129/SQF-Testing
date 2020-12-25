class Doc_GunShop_Dialog
{
	idd = 9999;
	//Makes it so the player cannot move it around
	movingEnabled = false;

	//Use Shift Crtl S then Shift Alt S to save and copy the code from the GUIEditor 
	//The classes which RscPicture and such are not normally defined. Use Crtl P to copy the base classes from the Editor
	class controls
	{
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT START (by Doc, v1.063, #Lerejo)
		////////////////////////////////////////////////////////

		class Doc_rscPicture: RscPicture
		{
			idc = 1200;
			text = "#(argb,8,8,3)color(0,1,0,0.5)";
			x = 0.407187 * safezoneW + safezoneX;
			y = 0.269 * safezoneH + safezoneY;
			w = 0.185625 * safezoneW;
			h = 0.506 * safezoneH;
		};
		class Doc_rscButton_1: RscButton
		{
			idc = 1600;
			text = "Equip"; //--- ToDo: Localize;
			x = 0.448438 * safezoneW + safezoneX;
			y = 0.599 * safezoneH + safezoneY;
			w = 0.103125 * safezoneW;
			h = 0.055 * safezoneH;
		};
		class Doc_rscButton_2: RscButton
		{
			idc = 1601;
			text = "Close"; //--- ToDo: Localize;
			x = 0.448438 * safezoneW + safezoneX;
			y = 0.676 * safezoneH + safezoneY;
			w = 0.103125 * safezoneW;
			h = 0.055 * safezoneH;

			//closes the shop dialog
			action = "closeDialog 0";
		};
		class Doc_rscListBox: RscListbox
		{
			idc = 1500;
			x = 0.448438 * safezoneW + safezoneX;
			y = 0.313 * safezoneH + safezoneY;
			w = 0.103125 * safezoneW;
			h = 0.264 * safezoneH;
		};
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT END
		////////////////////////////////////////////////////////

	};
};