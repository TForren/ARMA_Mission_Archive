//Option 1
if (rnumber == 1) then {

	/////////////////////////DRUG OBJECTIVE //////////////////////////////////////////////
		
		//MotorBoat Waypoints
		WP = MotorBoatGroup addWaypoint [getpos MotorWaypoint1,0];
		WP setWaypointType "move";
		WP setWaypointBehaviour "SAFE";
		
		WP = MotorBoatGroup addWaypoint [getpos MotorWaypoint2,1];
		WP setWaypointType "move";
		WP = MotorBoatGroup addWaypoint [getpos MotorWaypoint3,2];
		WP setWaypointType "move";
		WP = MotorBoatGroup addWaypoint [getpos MotorWaypoint_Halt1,3];
		WP setWaypointType "move";
		WP setWaypointTimeout [300, 300, 300];
		WP = MotorBoatGroup addWaypoint [getpos MotorWaypoint4,4];
		WP setWaypointType "move";
		WP = MotorBoatGroup addWaypoint [getpos MotorWaypointCycle,5];
		WP setWaypointType "CYCLE";

	
};
////////////////////////////////////////////////////////////////////
//Option 2
if (rnumber == 2) then {

	/////////////////////////DRUG OBJECTIVE //////////////////////////////////////////////
		
		//MotorBoat Waypoints
		WP = MotorBoatGroup addWaypoint [getpos MotorWaypoint1,0];
		WP setWaypointType "move";
		WP setWaypointBehaviour "SAFE";
		WP = MotorBoatGroup addWaypoint [getpos MotorWaypoint_Halt2,1];
		WP setWaypointType "move";
		WP setWaypointTimeout [300, 300, 300];
		WP = MotorBoatGroup addWaypoint [getpos MotorWaypoint2,2];
		WP setWaypointType "move";
		WP = MotorBoatGroup addWaypoint [getpos MotorWaypoint3,3];
		WP setWaypointType "move";
		WP = MotorBoatGroup addWaypoint [getpos MotorWaypoint4,4];
		WP setWaypointType "move";
		WP = MotorBoatGroup addWaypoint [getpos MotorWaypointCycle,5];
		WP setWaypointType "CYCLE";
};
///////////////////////////////////////////////////////////////////
//Option 3
if (rnumber == 0) then {

	/////////////////////////DRUG OBJECTIVE //////////////////////////////////////////////
		

		//MotorBoat Waypoints
		WP = MotorBoatGroup addWaypoint [getpos MotorWaypoint1,0];
		WP setWaypointType "move";
		WP setWaypointBehaviour "SAFE";
		
		WP = MotorBoatGroup addWaypoint [getpos MotorWaypoint2,1];
		WP setWaypointType "move";
		WP = MotorBoatGroup addWaypoint [getpos MotorWaypoint3,2];
		WP setWaypointType "move";
		WP = MotorBoatGroup addWaypoint [getpos MotorWaypoint_Halt3,3];
		WP setWaypointType "move";
		WP setWaypointTimeout [300, 300, 300];
		WP = MotorBoatGroup addWaypoint [getpos MotorWaypoint4,4];
		WP setWaypointType "move";
		WP = MotorBoatGroup addWaypoint [getpos MotorWaypointCycle,5];
		WP setWaypointType "CYCLE";
	
};