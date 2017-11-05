_eastCasualty = "VDV" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "MSV"
_westCasualty = "MARSOC" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USA" based off the team names from setting.sqf

_finalMessage = " ";

if (missionOver) exitWith {
	_finalMessage = "MARSOC have extracted from the AO.";
	_AADestroyed = !(alive zu1) && !(alive zu2) && !(alive zu3);
	_armorDestroyed = !(alive tank1) && !(alive tank2) && !(alive bmp1) && !(alive bmp2);
	_allDestroyed = _AADestroyed && _armorDestroyed;
	
	if (_allDestroyed) then {
		_finalMessage = _finalMessage + " With all marked objectives destroyed, the USMC should have no problem assaulting the island.<br/><br/>MAJOR SUCCESS<br/>";
	} else {
		if (_AADestroyed) then {
			_finalMessage = _finalMessage + " With the ZSU-23s destroyed, the USMC are now able to conduct an air assault on the island but with the threat of armor. <br/><br/>MISSION COMPLETE<br/>";
		} else {
			if (_armorDestroyed) then {
				_finalMessage = _finalMessage + " Although an air assault is not possible with operational ZSU-23s, the USMC will not have to deal with armor. <br/><br/>MISSION COMPLETE<br/>";
			} else {
				_destroyedAACount = {!alive _x} count [zu1,zu2,zu3];
				_destroyedBMPCount = {!alive _x} count [bmp1,bmp2];
				_destroyedTankCount = {!alive _x} count [tank1,tank2];
				if (_destroyedAACount + _destroyedBMPCount + _destroyedTankCount == 0) then {
					
					_finalMessage = _finalMessage + " No objectives were destroyed.<br/><br/>MISSION FAILURE<br/>";
				} else {
					_finalMessage = _finalMessage + " They were able to destroy " + (str _destroyedAACount)+"x ZSU-23, " + (str _destroyedBMPCount)+"x BMP-3, and " + (str _destroyedAACount)+"x T-80." + "<br/><br/>MISSION COMPLETE<br/>";
				};
			};
		};
	};
	_finalMessage call FNC_EndMission;
};

if (_westCasualty >= 90) exitWith { //ends when Bluefor deaths above or equal to 75%
	"MARSOC has taken too many casualties and must retreat.<br/><br/>MISSION FAILURE<br/>" call FNC_EndMission;
};

//Time limit message/time and moved to settings.sqf

sleep (20); //This determines how frequently the end conditions should be checked in seconds