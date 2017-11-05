_eastCasualty = "MSV" call FNC_CasualtyPercentage; 
_SpecimenCasualty = "Specimen" call FNC_CasualtyPercentage;

_specimenDead = (!alive experiment1) && (!alive experiment2) && (!alive experiment3);
//Good ol time limit
if ((time / 60) >= FW_TimeLimit && FW_TimeLimit != 0) exitWith { //It is recommended that you do not remove the time limit end condition 

	"Russian MSV Forces have run out of time to eliminate the crazed specimen.<br/><br/>SPECIMEN VICTORY<br/>" call FNC_EndMission;

}; // End time limit


if (_eastCasualty >= 95) exitWith {//TOOO many casualties. End mission meow.

	"The MSV have suffered too many casualties and cannot continue the operation<br/><br/>SPECIMEN VICTORY<br/>" call FNC_EndMission;
};


if (_specimenDead) exitWith {//

	"All crazed specimens have been eliminated.<br/><br/>MSV VICTORY<br/>" call FNC_EndMission;
};


sleep (30); //This determines how frequently the end conditions should be checked in seconds