class BRS_dialog
{
   idd = -1;
    movingenable = false;
   onLoad="uiNamespace setVariable ['BRS_RespawnDialog', _this select 0]";
	onUnLoad="uiNamespace setVariable ['BRS_RespawnDialog', nil]";
    
    class Controls
    {
		 class BRS_spawn: BRSbuttonSpawn
        {
          idc = -1;
          text = "SPAWN";
          x = 0.45 * safezoneW + safezoneX;  
          w = 0.08 * safezoneW;
		  colorBackground[] = {0.663,0.663,0.663,0.8};
		  colorBackgroundActive[] = {0.4,0.012,0.012,0.6};
			default=true;
			 toolTip = "'ENTER' hotkey to spawn";
              action = "_nil=[]call squadRespawn_fnc";
        };
        class BRS_cycle_prev: BRSbuttonSpawn
         {
          idc = -1;
			x = (0.45 - 0.21) * safezoneW + safezoneX;
			y = 0.880 * safezoneH + safezoneY;
			w = 0.2 * safezoneW;
			colorBackground[] = {0.663,0.663,0.663,0};
			colorBackgroundActive[] = {0.663,0.663,0.663,0};
			colorFocused[] = {0.663,0.663,0.663,0};			
				action = "_nil=[false]call findSpawn_fnc";
			};			
				class BRS_showprev: BRSnamesDial
				{
				idc = 61500;
				x = (0.45 - 0.21) * safezoneW + safezoneX;
				y = 0.880 * safezoneH + safezoneY;
				w = 0.2 * safezoneW;			
				};
				
        class BRS_cycle_next: BRSbuttonSpawn
        {
          idc = -1;
			x = (0.45 + 0.09) * safezoneW + safezoneX;
			y = 0.880 * safezoneH + safezoneY;
			w = 0.2 * safezoneW;
			colorBackground[] = {0.663,0.663,0.663,0};
			colorBackgroundActive[] = {0.663,0.663,0.663,0};
			colorFocused[] = {0.663,0.663,0.663,0};
              action = "_nil=[true]call findSpawn_fnc";
        };
				class BRS_showNext: BRSnamesDial
				{
				idc = 71500;
				x = (0.45 + 0.09) * safezoneW + safezoneX;
				y = 0.880 * safezoneH + safezoneY;
				w = 0.2 * safezoneW;
				};
				
		class BRS_observing: BRSspectate
        {
         idc = 51500;
        };
        class BRS_button_nvON: BRS_subButton
        {
         idc = 30051;
         text = "Night Vision ON";
         x = (0.46 - 0.45) * safezoneW + safezoneX;
         y = 0.885 * safezoneH + safezoneY;
		 action = "ctrlShow [30052,true]; ctrlShow [30051,false];_nil=[]spawn {if (BRS_nvgON) then {camUseNVG false;BRS_nvgON=false; }else{camUseNVG true;BRS_nvgON=true;};}";
		 toolTip = "'N' hotkey for NV";
        };
        class BRS_button_nvOFF: BRS_subButton
        {
         idc = 30052;
         text = "Night Vision OFF";
         x = (0.46 - 0.45) * safezoneW + safezoneX;
         y = 0.885 * safezoneH + safezoneY;
		 colorBackground[] = {0.18,0.949,0.153,1};
		colorBackgroundActive[] = {0.18,0.949,0.153,1};
		 colorText[] = {0,0,0,1};
		 action = "ctrlShow [30051,true]; ctrlShow [30052,false];_nil=[]spawn {if (BRS_nvgON) then {camUseNVG false;BRS_nvgON=false; }else{camUseNVG true;BRS_nvgON=true;};}";
		 toolTip = "'N' hotkey for NV";
        };
      class BRS_button_OpenMap: BRS_subButton
        {
         idc = 31051;
         text = "Open Map";
		 toolTip = "'M' hotkey for map";
         x = (0.46 - 0.45) * safezoneW + safezoneX;
         y = 0.933 * safezoneH + safezoneY;
		 action = "ctrlShow [31052,true]; ctrlShow [31051,false];_nil=[]spawn {if (BRS_mapClose) then {null = [false] execVM ""BRS\BRS_map\map_close.sqf"";}else{null = [true] execVM ""BRS\BRS_map\map_close.sqf"";};}";
        };
      class BRS_button_CloseMap: BRS_subButton
        {
         idc = 31052;
         text = "Close Map";
		 toolTip = "'M' hotkey for map";
         x = (0.46 - 0.45) * safezoneW + safezoneX;
         y = 0.933 * safezoneH + safezoneY;
		 colorBackground[] =  {0.259,0.706,0.929,1};
		colorBackgroundActive[] =  {0.259,0.706,0.929,1};
		 colorText[] = {0,0,0,1};
		 action = "ctrlShow [31051,true]; ctrlShow [31052,false];_nil=[]spawn {if (BRS_mapClose) then {null = [false] execVM ""BRS\BRS_map\map_close.sqf"";}else{null = [true] execVM ""BRS\BRS_map\map_close.sqf"";};}";
        };		

		class BRS_infoOne: BRSinfoText
        {
         idc = -1;
         text = "Click to cycle spawn points";
         x = 0.422 * safezoneW + safezoneX;
          y = 0.965 * safezoneH + safezoneY;
          w = 0.210 * safezoneW;
          h = 0.045 * safezoneH;
        };
        class BRS_author: BRSnamesDial
        {
         idc = 57805;
		x = 0.8 * safezoneW + safezoneX;
		y = 0.9 * safezoneH + safezoneY;
		w = 0.2 * safezoneW;
		h = 0.09 * safezoneH;
        };
		class BRS_escInfo: BRSinfoText
        {
         idc = 41200;
         text = "Press 'M' to close map";
         x = 0.7 * safezoneW + safezoneX;
          y = 0.09 * safezoneH + safezoneY;
          w = 0.210 * safezoneW;
          h = 0.0454761 * safezoneH;
        };
		class BRS_cover_map: BRSbackground
        {	
          idc = 39650;
		  x = 0.5 * safezoneW + safezoneX;
          y = 0.125 * safezoneH + safezoneY;
          w = 0.5 * safezoneW;
          h = 0.75 * safezoneH;
        };
		class BRS_drag_cam: BRSbackground
        {	
          idc = 37650;
		  x = 0 * safezoneW + safezoneX;
          y = 0.125 * safezoneH + safezoneY;
          w = 0.5 * safezoneW;
          h = 0.75 * safezoneH;
		  colorBackground[] = {1,1,1,0};
        };
		class BRS_OPEN_MAP: BRSopenMap
        {	
          idc = 42500;
		  x = 0.5 * safezoneW + safezoneX;
          y = 0.125 * safezoneH + safezoneY;
          w = 0.5 * safezoneW;
          h = 0.75 * safezoneH;
        };  
};};
