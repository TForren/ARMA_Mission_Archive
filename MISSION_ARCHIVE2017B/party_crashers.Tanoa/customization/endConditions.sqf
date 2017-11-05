//Helper vars if possible to help admin to know when to call
eastCasualty = "MSV" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "MSV"
publicVariable "eastCasualty";

westCasualty = "USA" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USA" based off the team names from setting.sqf
publicVariable "westCasualty";

sleep (10); //This determines how frequently the end conditions should be checked in seconds