RNF_DEBUG = true;

RNF_Groups = []; //master array for all reinforcement groups

/* Group Format
Groups are similar to arma compositions. Both units and vehicles are arrays that contain
custom unit and vehicle RNF structs.

	groupName = {
		slotCount = INT
		units = [RNF_UNIT,RNF_UNIT2]
		vehicles = [RNF_VEHICLE1,RNF_VEHICLE2]
	}

*/


/* Unit Format
Units are the slottable player slots in a group. 

	varName = {
		description = STRING
		init = STRING
	}
	
*/

/* Vehicle Format
vehicles are any vehicle or object that is considered part of the group
e.g. HMMWV, Bradley, Mortars, Ammo boxes

	varName = {
		classname = STRING
		init = STRING
	}
	
*/


/*
RNF_fnc_ProcessUnit
Processes given unit into RNF-friendly format
Input:   unit
Output:  RNFUnit
*/
RNF_fnc_processUnit = {
	unit = {
		description = roleDescription _x;
		init = 
	} foreach units _this;
	
	unit; //return
};

/*
RNF_fnc_ProcessGroup
Adds the given group to the reinforcement pool.
input: Group
Output: RNFGroup
*/
RNF_fnc_processGroup = {
	//synchronizedObjects unit
	group = [];
	units = [];
	vehicles = [];
	{
		_x call RNF_fnc_processUnit;
	} foreach units _this;
	
	group; //return
};

//main
{
	includeGroup = (leader _x) getVariable "RNF_include";
	
	if (isNil "includeGroup") exitWith {}; if (!includeGroup) exitWith {}; //has to be 2 separate ifs because fuck me apparently
	
	if (RNF_DEBUG) then { diag_log format["%1 is a reinforcement group",_x] };
	
	processedGroup = _x call RNF_fnc_processGroup;
	
	RNF_Groups = RNF_Groups + [processedGroups];
	
} foreach allGroups;