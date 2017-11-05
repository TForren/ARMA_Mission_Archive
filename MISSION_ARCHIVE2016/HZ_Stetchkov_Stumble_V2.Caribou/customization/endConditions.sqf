
_westCasualty = "VDV Forces" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USMC"

_allDestroyed = (!alive grad1) && (!alive grad2) && (!alive grad3);
_twoDestroyed = ( (!alive grad1) && (!alive grad2) && (alive grad3) ) || ( (!alive grad1) && (alive grad2) && (!alive grad3) ) || ( (alive grad1) && (!alive grad2) && (!alive grad3) ) ;
_oneDestroyed = ( (!alive grad1) && (alive grad2) && (alive grad3) ) || ( (alive grad1) && (!alive grad2) && (alive grad3) ) || ( (!alive grad1) && (!alive grad2) && (alive grad3) ) ;


//Good ol time limit
if ((time / 60) >= FW_TimeLimit && FW_TimeLimit != 0) exitWith { //It is recommended that you do not remove the time limit end condition 

	if (_oneDestroyed) exitWith 
	{
	"With no time remaining for the operation to continue, the remaining VDV have been forced to extract.<br/>With only one of the three grads destroyed, the Ultranationalists will continue to shell Novorossiyan Forces.<br/><br/>ULTRANATIONALIST VICTORY<br/>" call FNC_EndMission;
	};
	if (_twoDestroyed) exitWith 
	{
	"With no time remaining for the operation to continue, the remaining VDV have been forced to extract.<br/>With at least two of the grads destroyed, the Ultranationalist will be less effective with their grad barrages.<br/><br/>MINOR VDV VICTORY<br/>" call FNC_EndMission;
	};
	if (_allDestroyed) exitWith 
	{
	"With no time remaining for the operation to continue, the remaining VDV have been forced to extract.<br/>With all grads destroyed, the Ultranationalist will be unable to continue with their grad barrages.<br/><br/>VDV VICTORY<br/>" call FNC_EndMission;
	};


}; // End time limit


if (_westCasualty >= 85) exitWith {//TOOO many casualties. End mission meow.

	if (_oneDestroyed) exitWith 
	{
	"The VDV have suffered too many casualties to continue the operation. The remaining VDV have been forced to extract.<br/>With only one of the three grads destroyed, the Ultranationalists will continue to shell Novorossiyan Forces.<br/><br/>ULTRANATIONALIST VICTORY<br/>" call FNC_EndMission;
	};
	if (_twoDestroyed) exitWith 
	{
	"The VDV have suffered too many casualties to continue the operation. The remaining VDV have been forced to extract.<br/>With two of the three grads destroyed, the Ultranationalists will continue to shell Novorossiyan Forces.<br/><br/>ULTRANATIONALIST VICTORY<br/>" call FNC_EndMission;
	};
	if (_allDestroyed) exitWith 
	{
	"The VDV have suffered too many casualties to continue the operation. The remaining VDV have been forced to extract.<br/>All grads were successfully destroyed but the VDV has suffered heavy losses as well.<br/><br/>MINOR VDV VICTORY<br/>" call FNC_EndMission;
	};
};

if (_allDestroyed && (time > 60)) exitWith { //VDV extracted, cache destroyed

	if (_westCasualty >= 60) exitWith 
	{
	"With all Ultranationalist grads destroyed and the VDV extracted from the AO, The mission was successful. Unfortunately, The VDV have suffered heavy casualties to destroy the grads.<br/><br/>VDV VICTORY<br/>" call FNC_EndMission;
	};
	if (_westCasualty < 60) exitWith 
	{
	"With all Ultranationalist grads destroyed and the VDV extracted from the AO, The mission was successful.<br/><br/>DECISIVE VDV VICTORY<br/>" call FNC_EndMission;
	};
};

sleep (30); //This determines how frequently the end conditions should be checked in seconds