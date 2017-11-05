//For TVT it is recommended to use this module together with the radio scrambler module.

switch (_side) do { //Checks what team the player is on

	case west: { //If the player is on side west, he receives these radio channel names

		[1, "HQ TF Helmand"] call FNC_SetChannelName;
		[2, "3 PARA HQ"] call FNC_SetChannelName;
		[3, "B COY 3 PARA"] call FNC_SetChannelName;
		[4, "1 PL B COY"] call FNC_SetChannelName;
		[5, "2 PL B COY"] call FNC_SetChannelName;
		[6, "3 PL B COY"] call FNC_SetChannelName;
		[7, "C COY 3 PARA"] call FNC_SetChannelName;
		[8, "1 PL C COY"] call FNC_SetChannelName;
		[9, "2 PL C COY"] call FNC_SetChannelName;
		[10, "3 PL C COY"] call FNC_SetChannelName;
		[11, "5 CMBG"] call FNC_SetChannelName;
		[12, "Griffins"] call FNC_SetChannelName;
		[13, "Convoy"] call FNC_SetChannelName;
		[14, "CAS"] call FNC_SetChannelName;
		[15, "FST 1st BAT"] call FNC_SetChannelName;

	}; //End of west case
}; //End of switch