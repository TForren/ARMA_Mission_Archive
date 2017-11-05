_choppers = [c1chop, c2chop, c3chop];
_trucks = [t1, t2, t3];

_call = _this select 2; 

JTAC removeAction _call;

_c4wp = rangersTrans addWaypoint [getmarkerPos "c4drop", 0]; 
_c4wp setwaypointtype "TR UNLOAD";
_c4wp setWaypointBehaviour "CARELESS";

sleep 35;

_c1wp = c1 addWaypoint [getmarkerPos "c1drop", 0];
_c1wp setWaypointBehaviour "CARELESS";
_c2wp = c2 addWaypoint [getmarkerPos "c2drop", 0];
_c2wp setWaypointBehaviour "CARELESS";
_c3wp = c3 addWaypoint [getmarkerPos "c3drop", 0];
_c3wp setWaypointBehaviour "CARELESS";

sleep 60;

{_x flyinHeight 20} forEach _choppers; 
_rwp = rangers addWaypoint [getmarkerPos "c4drop", 0];
sleep 20;

{detach _x} forEach _trucks;
t1 doMove getmarkerPos "t1end";
t2 doMove getmarkerPos "t2end";
t3 doMove getmarkerPos "t3end";
{_x flyinHeight 200} forEach _choppers; 
{_x doMove getmarkerPos "leave"} forEach _choppers;
c4 doMove getmarkerPos "leave";

truckscalled = true;
