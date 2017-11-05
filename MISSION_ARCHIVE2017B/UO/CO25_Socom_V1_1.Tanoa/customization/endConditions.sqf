if (time > 300) then {



	if (ObjectivesComplete) then {


		"NATO DECISIVE VICTORY<br />All Objective Completed." call FNC_EndMission;

	};

};
// marker change
posMotorBoat = (getpos motorboat1);
"MotorBoatMarker" setMarkerPos posMotorBoat;
sleep (60); //This determines how frequently the end conditions should be checked in seconds