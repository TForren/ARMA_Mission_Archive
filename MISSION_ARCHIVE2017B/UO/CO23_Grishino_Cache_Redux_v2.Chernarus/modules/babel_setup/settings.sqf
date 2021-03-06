//This module allows you to set up the languages present for the mission and to set the languages spoken based on the side.

//This module also has a preinit function called [unit, languages] call FNC_SetLanguages; which allows you to set the languages of an individual unit using his init field.

//Example:
//[this, ["ru"]] call FNC_SetLanguages;
//[this, [ "en", "ru"]] call FNC_SetLanguages;

["en", "English"] call acre_api_fnc_babelAddLanguageType;
["ru", "Russian"] call acre_api_fnc_babelAddLanguageType;


switch (side player) do { //Checks what team the player is on

	case west: { //If player is west he receives these languages
		
		["en"] call acre_api_fnc_babelSetSpokenLanguages;
		
	}; //End of west case
	
	case east: { //If player is east he receives these languages
		
		["ru"] call acre_api_fnc_babelSetSpokenLanguages;
		
	}; //End of east case
}; //End of switch