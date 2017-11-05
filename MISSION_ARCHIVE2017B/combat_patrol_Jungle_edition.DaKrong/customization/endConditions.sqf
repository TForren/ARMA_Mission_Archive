_westCasualty = "MARSOC" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USA" based off the team names from setting.sqf

_finalMessage = "";
missionComplete = false;

//Egor Malyukov
//vadim Medvedev

if (_westCasualty >= 65) exitWith { //ends when Bluefor deaths above or equal to 75%
	"MARSOC raiders have taken too many casualties to continue operations. <br/><br/>OPFOR VICTORY<br/>" call FNC_EndMission;
};

if ( (time > (10 * 60)) && ([WEST, 650, garrisonArea1] call FNC_AreaCount <= 0)) then {
	switch (true) do {
		case (!alive egor && !alive vadim): { 
			_finalMessage = _finalMessage + "MARSOC has extracted from the AO. Both Egor and Vadim have been eliminated.<br/><br/>MARSOC VICTORY<br/>";
			missionComplete = true;
		};
		case (!alive egor && alive vadim): { 
			_finalMessage = _finalMessage + "MARSOC has extracted from the AO. Egor has been eliminated ";
			if ( ((carrier distance vadim) < 200) || vadim in helo1 || vadim in helo2 || vadim in helo3) then {
				_finalMessage = _finalMessage + "and Vadim has been captured.<br/><br/>MARSOC MAJOR VICTORY<br/>";
			} else {
				_finalMessage = _finalMessage + "but Vadim is still at large.<br/><br/>MARSOC MINOR VICTORY<br/>";
			};
			missionComplete = true;
		};
		case (alive egor && !alive vadim): { 
			_finalMessage = _finalMessage + "MARSOC has extracted from the AO. Vadim has been eliminated ";
			if ( ((carrier distance egor) < 200) || egor in helo1 || egor in helo2 || egor in helo3) then {
				_finalMessage = _finalMessage + "and Egor has been captured.<br/><br/>MARSOC MAJOR VICTORY<br/>";
			} else {
				_finalMessage = _finalMessage + "but Egor is still at large.<br/><br/>MARSOC MINOR VICTORY<br/>";
			};
			missionComplete = true;
		};
		case (alive egor && alive vadim): { 
			_finalMessage = _finalMessage + "MARSOC has extracted from the AO.";
			_egorCaptured = ((carrier distance egor) < 200 || egor in helo1 || egor in helo2 || egor in helo3);
			_vadimCaptured = ((carrier distance vadim) < 200 || vadim in helo1 || vadim in helo2 || vadim in helo3);
			
			if (_egorCaptured && _vadimCaptured) then {
				_finalMessage = _finalMessage + " Both Egor and Vadim have been captured.<br/><br/>MARSOC COMPLETE VICTORY<br/>";
			} else {
				if (_egorCaptured && !(_vadimCaptured)) then {
					_finalMessage = _finalMessage + " Egor has been captured but Vadim is still at large.<br/><br/>MARSOC MINOR VICTORY<br/>";
				} else {
					_finalMessage = _finalMessage + " Vadim has been captured but Egor is still at large.<br/><br/>MARSOC MINOR VICTORY<br/>";
				};
			};
			missionComplete = true;
		};
	};

};

if (missionComplete) exitWith {
	
	_finalMessage call FNC_EndMission;
	
};


//Time limit message/time and moved to settings.sqf

sleep (20); //This determines how frequently the end conditions should be checked in seconds