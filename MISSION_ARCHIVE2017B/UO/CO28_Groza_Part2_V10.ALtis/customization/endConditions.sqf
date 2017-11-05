CASUALTYCHECK("Canadian Armed Forces", _westCasualty); //Stores the casualty percentage of "USMC" in _westCasualty
CASUALTYCHECK("Russian Armed Forces", _eastCasualty); //Stores the casualty percentage of "VDV" in _eastCasualty

AREAAICOUNT(west, 300, TEST, _winning)
if (_winning <= 2) exitWith {
        ENDMISSION("Russian Armed Forces have cleared the Town of Poliakko");
    };
if (_westCasualty >= 89) exitWith 
{
	ENDMISSION("Russian Armed Forces DECISIVE VICTORY<br />Canadian Armed Forces have retreated due to casualties."); 
};

if (_eastCasualty >= 75) exitWith 
{
	ENDMISSION("Canadian Armed Forces DECISIVE VICTORY<br />Russian Armed Forces have retreated due to casualties.");
};

if (time > timeLimit) exitWith 
{ //It is recommended that you do not remove the time limit end condition 
	ENDMISSION("TIME LIMIT REACHED!");
};
sleep (30); //You shouldn't change this unless your absolutely sure what your doing