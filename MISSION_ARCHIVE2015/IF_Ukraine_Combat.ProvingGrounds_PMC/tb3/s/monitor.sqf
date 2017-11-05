// wait until template is initialized
waitUntil { TB3_INIT };

_initDelay = getNumber(TB3_Settings >> "MissionMonitor" >> "initDelay");
_updateDelay = getNumber(TB3_Settings >> "MissionMonitor" >> "updateDelay");

sleep _initDelay;

// Set Variables
WArray = []; WDeaths = 0; WCasArr = [];
EArray = []; EDeaths = 0; ECasArr = [];
RArray = []; RDeaths = 0; RCasArr = []; 
CArray = []; CDeaths = 0; CCasArr = [];

// populate the arrays
{
	switch (side _x) do
	{
		case WEST:       { WArray set [count WArray, _x] };
		case EAST:       { EArray set [count EArray, _x] };
		case RESISTANCE: { RArray set [count RArray, _x] };
		case CIVILIAN:   { CArray set [count CArray, _x] };
		default { }
	}
} forEach playableUnits;

// save the number of units at start
WStartNum = WEST countSide allUnits; WArrayNum = count(WArray);
EStartNum = (EAST countSide allUnits) - 1; EArrayNum = count(EArray);
RStartNum = (RESISTANCE countSide allUnits) - 1; RArrayNum = count(RArray);
CStartNum = CIVILIAN countSide allUnits; CArrayNum = count(CArray);

// start checking the numbers
while { true } do {
//establish count of casualties per monitored array if there were units at start.
	if ( EStartNum > 0) then { ECasNum = EStartNum - ( (EAST countSide allUnits) - 1; };
	if ( WStartNum > 0) then { WCasNum = WStartNum - (WEST countSide allUnits); };
	if ( RStartNum > 0) then { RCasNum = RStartNum - ( (RESISTANCE countSide allUnits) - 1); };
	if ( CStartNum > 0) then { CCasNum = CStartNum - (CIVILIAN countSide allUnits); };

	// if side had any units, calculate the cas rate and number
	if ( WStartNum > 0) then { WCasRate = ( WCasNum / WStartNum ) * 100; };
	if ( EStartNum > 0) then { ECasRate = ( ECasNum / EStartNum ) * 100; };
	if ( RStartNum > 0) then { RCasRate = ( RCasNum / RStartNum ) * 100; };
	if ( CStartNum > 0) then { CCasRate = ( CCasNum / CStartNum ) * 100; };
	
	if (isNil "TB3_MONITOR_INIT") then 
	{ 
		TB3_MONITOR_INIT = true ;
	};
	
	sleep _updateDelay; 
};
