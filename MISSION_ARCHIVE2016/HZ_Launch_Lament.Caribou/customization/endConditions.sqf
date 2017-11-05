
//_westCasualty = "Rangers" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USMC"
//_eastCasualty = "Spetsnaz" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "MSV"

if ({side _x == WEST} count allunits <= 0) exitWith {//TOOO many casualties. End mission meow.

	"The US MARSOC operatives have beep wiped out. <br/><br/>VDV VICTORY<br/>" call FNC_EndMission;
};

if (fired) exitWith {//TOOO many casualties. End mission meow.
	waitUntil{!alive catDuder};
	sleep 5;
	"The Tochka-U has successfully fired the ballistic missile at the US FOB at the old bay.<br/><br/>VDV VICTORY<br/>" call FNC_EndMission;
	
};

if (!alive scarab) exitWith {
	"The Tochka-U has been destroyed before the ballistic missile was fired.<br/><br/>MARSOC VICTORY<br/>" call FNC_EndMission;
};


//hint "loop";

sleep 55; //This determines how frequently the end conditions should be checked in seconds