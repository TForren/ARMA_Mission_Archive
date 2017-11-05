/*
 =======================================================================================================================

	T8 Units Script

	File:		T8_missionEXEC.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

	This file creates the Units, kind of
	

	This work is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License.
	To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/4.0/ or send a letter to 
	Creative Commons, 444 Castro Street, Suite 900, Mountain View, California, 94041, USA.

 =======================================================================================================================
*/

// include the few macros we use ...
#include <T8\MACRO.hpp>

// wait until everything is initalized correctly
waitUntil { !isNil "T8U_var_useHC" };
waitUntil { !isNil "T8U_var_InitDONE" };

// cancel execute if not server / hc
__allowEXEC(__FILE__);


sleep 5;

//////////////////////////////////////  CUSTOM FUNCTION  //////////////////////////////////////
//
//			This function is called for every unit in a group 
//			where it is defined in the groups definiton below
//


Script = 
{
	_this spawn
	{
		_this call FNC_TrackUnit;		
	};
};

ScriptRebel = 
{
	_this spawn
	{
		_this call FNC_TrackUnit;
		[_this, "Rifle"] call FNC_GearScript;
	};
};

ScriptPMC = 
{
	_this spawn
	{
		_this call FNC_TrackUnit;
		[_this, "Combat_Random"] call FNC_GearScript;
	};
};

//////////////////////////////////////  UNIT SETUP  //////////////////////////////////////

// Pre-defined Arrays for Groups ( group setup )
_BanditsSquad = ["O_Soldier_F","O_Soldier_F","O_Soldier_F","O_Soldier_F","O_Soldier_F","O_Soldier_F","O_Soldier_F","O_Soldier_F"];
_BanditsFireTeam = ["O_Soldier_F","O_Soldier_F","O_Soldier_F","O_Soldier_F"];
_BanditsMGTeam = ["O_Soldier_F","O_Soldier_F"];

_Car = ["I_G_Offroad_01_armed_F"];
_Techi = ["rhsgref_nat_uaz_dshkm"];
_Truck = ["rhsgref_nat_ural_open","O_T_Soldier_F","O_T_Soldier_F","O_T_Soldier_F","O_T_Soldier_F","O_T_Soldier_F","O_T_Soldier_F"];

//do not remove
T8U_var_SupportUnitsEAST = [];
T8U_var_SupportUnitsWEST = [];
T8U_var_SupportUnitsRESISTANCE = [];
//

_Drug2 = 
[ 
	[ [ _BanditsFireTeam, "Drug2_Occupy", OPFOR, "ScriptRebel" ], [ "GARRISON" ], [ true, false, false ] ],
	[ [ _BanditsSquad, "Drug2_Garrison", OPFOR, "ScriptRebel" ], [ "GARRISON" ], [ true, true, false ] ],
	[ [ _BanditsFireTeam, "Drug2_Occupy", OPFOR, "ScriptRebel" ], [ "DEFEND" ], [ true, false, false ] ],
	[ [ _BanditsFireTeam, "Drug2_Patrol", OPFOR, "ScriptRebel" ], [ "PATROL_AROUND" ], [ true, true, false ] ],
	[ [ _BanditsSquad, "Drug2_Patrol", OPFOR, "ScriptRebel" ], [ "PATROL" ], [ true, true, true ] ]

];

_Drug1 = 
[	
	[ [ _BanditsFireTeam, "Drug1_Occupy", OPFOR, "ScriptRebel" ], [ "GARRISON" ], [ true, false, false ] ],
	[ [ _BanditsSquad, "Drug1_Garrison", OPFOR, "ScriptRebel" ], [ "GARRISON" ], [ true, true, false ] ],
	[ [ _BanditsFireTeam, "Drug1_Occupy", OPFOR, "ScriptRebel" ], [ "DEFEND" ], [ true, false, false ] ],
	[ [ _BanditsFireTeam, "Drug1_Patrol", OPFOR, "ScriptRebel" ], [ "PATROL_AROUND" ], [ true, true, false ] ],
	[ [ _BanditsSquad, "Drug1_Patrol", OPFOR, "ScriptRebel" ], [ "PATROL" ], [ true, true, true ] ]

];

_Drug3 = 
[ 
	[ [ _BanditsFireTeam, "Drug3_Occupy", OPFOR, "ScriptRebel" ], [ "GARRISON" ], [ true, false, false ] ],
	[ [ _BanditsSquad, "Drug3_Occupy", OPFOR, "ScriptRebel" ], [ "GARRISON" ], [ true, true, false ] ],
	[ [ _BanditsFireTeam, "Drug3_Garrison", OPFOR, "ScriptRebel" ], [ "DEFEND" ], [ true, false, false ] ],
	[ [ _BanditsFireTeam, "Drug3_Patrol", OPFOR, "ScriptRebel" ], [ "PATROL_AROUND" ], [ true, true, false ] ],
	[ [ _BanditsSquad, "Drug3_Patrol", OPFOR, "ScriptRebel" ], [ "PATROL" ], [ true, true, true ] ]

];

_Assasin1 = 
[ 
	[ [ _BanditsSquad, "Assasin1_Occupy", OPFOR, "ScriptRebel" ], [ "PATROL_GARRISON" ], [ true, false, false ] ],
	[ [ _BanditsSquad, "Assasin1_Occupy", OPFOR, "ScriptRebel" ], [ "PATROL_GARRISON" ], [ true, false, false ] ],
	[ [ _BanditsSquad, "Assasin1_Garrison", OPFOR, "ScriptRebel" ], [ "GARRISON" ], [ true, true, false ] ],
	[ [ _BanditsFireTeam, "Assasin1_Patrol2", OPFOR, "ScriptRebel" ], [ "PATROL_AROUND" ], [ true, true, false ] ],
	[ [ _BanditsFireTeam, "Assasin1_Patrol2", OPFOR, "ScriptRebel" ], [ "PATROL_AROUND" ], [ true, true, false ] ],
	[ [ _BanditsFireTeam, "Assasin1_Patrol2", OPFOR, "ScriptRebel" ], [ "PATROL_AROUND" ], [ true, true, false ] ],
	[ [ _BanditsFireTeam, "Assasin1_Patrol1", OPFOR, "ScriptRebel" ], [ "PATROL_AROUND" ], [ true, true, false ] ],
	[ [ _BanditsFireTeam, "Assasin1_Patrol1", OPFOR, "ScriptRebel" ], [ "PATROL" ], [ true, false, false ] ],
	[ [ _BanditsFireTeam, "Assasin1_Patrol1", OPFOR, "ScriptRebel" ], [ "PATROL" ], [ true, false, false ] ],
	[ [ _BanditsFireTeam, "Assasin1_Defend1", OPFOR, "ScriptRebel" ], [ "DEFEND" ], [ true, false, false ] ],
	[ [ _BanditsFireTeam, "Assasin1_Defend2", OPFOR, "ScriptRebel" ], [ "DEFEND" ], [ true, false, false ] ]

];

_Assasin2 = 
[ 
	[ [ _BanditsSquad, "Assasin2_Occupy", OPFOR, "ScriptRebel" ], [ "PATROL_GARRISON" ], [ true, false, false ] ],
	[ [ _BanditsSquad, "Assasin2_Occupy", OPFOR, "ScriptRebel" ], [ "PATROL_GARRISON" ], [ true, false, false ] ],
	[ [ _BanditsSquad, "Assasin2_Garrison", OPFOR, "ScriptRebel" ], [ "GARRISON" ], [ true, true, false ] ],
	[ [ _BanditsFireTeam, "Assasin2_Patrol2", OPFOR, "ScriptRebel" ], [ "PATROL_AROUND" ], [ true, true, false ] ],
	[ [ _BanditsFireTeam, "Assasin2_Patrol2", OPFOR, "ScriptRebel" ], [ "PATROL_AROUND" ], [ true, true, false ] ],
	[ [ _BanditsFireTeam, "Assasin2_Patrol2", OPFOR, "ScriptRebel" ], [ "PATROL_AROUND" ], [ true, true, false ] ],
	[ [ _BanditsFireTeam, "Assasin2_Patrol1", OPFOR, "ScriptRebel" ], [ "PATROL_AROUND" ], [ true, true, false ] ],
	[ [ _BanditsFireTeam, "Assasin2_Patrol1", OPFOR, "ScriptRebel" ], [ "PATROL" ], [ true, false, false ] ],
	[ [ _BanditsFireTeam, "Assasin2_Patrol1", OPFOR, "ScriptRebel" ], [ "PATROL" ], [ true, false, false ] ],
	[ [ _BanditsFireTeam, "Assasin2_Defend1", OPFOR, "ScriptRebel" ], [ "DEFEND" ], [ true, false, false ] ],
	[ [ _BanditsFireTeam, "Assasin2_Defend2", OPFOR, "ScriptRebel" ], [ "DEFEND" ], [ true, false, false ] ]

];

_Assasin3 = 
[ 
	[ [ _BanditsSquad, "Assasin3_Occupy", OPFOR, "ScriptRebel" ], [ "PATROL_GARRISON" ], [ true, false, false ] ],
	[ [ _BanditsSquad, "Assasin3_Occupy", OPFOR, "ScriptRebel" ], [ "PATROL_GARRISON" ], [ true, false, false ] ],
	[ [ _BanditsSquad, "Assasin3_Garrison", OPFOR, "ScriptRebel" ], [ "GARRISON" ], [ true, true, false ] ],
	[ [ _BanditsFireTeam, "Assasin3_Patrol2", OPFOR, "ScriptRebel" ], [ "PATROL_AROUND" ], [ true, true, false ] ],
	[ [ _BanditsFireTeam, "Assasin3_Patrol2", OPFOR, "ScriptRebel" ], [ "PATROL_AROUND" ], [ true, true, false ] ],
	[ [ _BanditsFireTeam, "Assasin3_Patrol2", OPFOR, "ScriptRebel" ], [ "PATROL_AROUND" ], [ true, true, false ] ],
	[ [ _BanditsFireTeam, "Assasin3_Patrol1", OPFOR, "ScriptRebel" ], [ "PATROL_AROUND" ], [ true, true, false ] ],
	[ [ _BanditsFireTeam, "Assasin3_Patrol1", OPFOR, "ScriptRebel" ], [ "PATROL" ], [ true, false, false ] ],
	[ [ _BanditsFireTeam, "Assasin3_Patrol1", OPFOR, "ScriptRebel" ], [ "PATROL" ], [ true, false, false ] ],
	[ [ _BanditsFireTeam, "Assasin3_Defend1", OPFOR, "ScriptRebel" ], [ "DEFEND" ], [ true, false, false ] ],
	[ [ _BanditsFireTeam, "Assasin3_Defend2", OPFOR, "ScriptRebel" ], [ "DEFEND" ], [ true, false, false ] ]

];

_Airport = 
[ 
	[ [ _BanditsFireTeam + _BanditsFireTeam, "Airport_Defence1", OPFOR, "ScriptRebel" ], [ "DEFEND" ], [ true, false, false ] ],
	[ [ _BanditsFireTeam, "Airport_Defence2", OPFOR, "ScriptRebel" ], [ "DEFEND" ], [ true, false, false ] ],
	[ [ _BanditsFireTeam, "Airport_Defence3", OPFOR, "ScriptRebel" ], [ "DEFEND" ], [ false, false, false ] ],
	[ [ _BanditsSquad, "Airport_Occupy1", OPFOR, "ScriptRebel" ], [ "OCCUPY" ], [ true, false, false ] ],
	[ [ _BanditsSquad, "Airport_Occupy1", OPFOR, "ScriptRebel" ], [ "PATROL_GARRISON" ], [ true, false, false ] ],
	[ [ _BanditsSquad, "Airport_Occupy2", OPFOR, "ScriptRebel" ], [ "OCCUPY" ], [ true, false, false ] ],
	[ [ _BanditsSquad, "Airport_Occupy2", OPFOR, "ScriptRebel" ], [ "PATROL_AROUND" ], [ true, false, false ] ],
	[ [ _BanditsSquad, "Airport_Occupy3", OPFOR, "ScriptRebel" ], [ "OCCUPY" ], [ true, false, false ] ],
	[ [ _BanditsFireTeam, "Airport_Occupy4", OPFOR, "ScriptRebel" ], [ "OCCUPY" ], [ false, false, false ] ],
	[ [ _BanditsFireTeam, "Airport_Occupy5", OPFOR, "ScriptRebel" ], [ "OCCUPY" ], [ false, false, false ] ],
	[ [ _BanditsFireTeam, "Airport_Occupy6", OPFOR, "ScriptRebel" ], [ "PATROL_GARRISON" ], [ false, false, false ] ],
	[ [ _BanditsFireTeam, "Airport_Occupy6", OPFOR, "ScriptRebel" ], [ "PATROL_GARRISON" ], [ false, false, false ] ],
	[ [ _BanditsFireTeam, "Airport_Occupy6", OPFOR, "ScriptRebel" ], [ "OCCUPY" ], [ false, false, false ] ],
	[ [ _BanditsFireTeam, "Airport_Patrol1", OPFOR, "ScriptRebel" ], [ "PATROL_GARRISON" ], [ true, false, false ] ],
	[ [ _BanditsFireTeam, "Airport_Patrol2", OPFOR, "ScriptRebel" ], [ "PATROL_AROUND" ], [ true, false, false ] ],
	[ [ _BanditsSquad, "Airport_Patrol2", OPFOR, "ScriptRebel" ], [ "PATROL" ], [ true, false, true ] ], 
	[ [ _BanditsSquad, "Airport_Occupy6", OPFOR, "ScriptRebel" ], [ "PATROL_MARKER" , ["airport_mrk3", "airport_mrk2", "airport_mrk1"]] ]

];

_Radar1 = 
[ 
	
	[ [ _BanditsFireTeam, "Radar1_Patrol", OPFOR, "ScriptRebel" ], [ "PATROL" ], [ true, false, false ] ],
	[ [ _BanditsSquad, "Radar1_Patrol", OPFOR, "ScriptRebel" ], [ "PATROL_AROUND" ], [ true, true, false ] ]

];

_Radar2 = 
[ 
	
	[ [ _BanditsFireTeam, "Radar2_Patrol", OPFOR, "ScriptRebel" ], [ "PATROL" ], [ true, false, false ] ],
	[ [ _BanditsSquad, "Radar2_Patrol", OPFOR, "ScriptRebel" ], [ "PATROL_AROUND" ], [ true, true, false ] ]

];

_Radar3 = 
[ 
	
	[ [ _BanditsFireTeam, "Radar3_Patrol", OPFOR, "ScriptRebel" ], [ "PATROL" ], [ true, false, false ] ],
	[ [ _BanditsSquad, "Radar3_Patrol", OPFOR, "ScriptRebel" ], [ "PATROL_AROUND" ], [ true, true, false ] ]

];

//[ _Airport ] spawn T8U_fnc_Spawn;



_PreSpawn = true;
SpawnLoop = true;
_Drug_Status = false;
_Assasin_Status = false;
_Radar_Status = false;
_Airport_Status = false;
_drugObjective = false;
_AssasinObjective = false;
_RadarObjective = false;
_BoatObjective = false;
_AirportObjective = false;
_posDrug = [0,0,0];


while {SpawnLoop} do {

	if (!_Drug_Status and rnumber==0 and Drug_Trig ) then {
			_posDrug = getMarkerPos "Drug3_Occupy";
			"Drug_Marker" setMarkerPos _posDrug;
			[ _Drug3 ] spawn T8U_fnc_Spawn;
			_handle = execVM "Drug.sqf";
			_Drug_Status = true;
 
	};	
	
	if (!_Drug_Status and rnumber==2 and Drug_Trig ) then {
			_posDrug = getMarkerPos "Drug2_Patrol";
			"Drug_Marker" setMarkerPos _posDrug;
			[ _Drug2 ] spawn T8U_fnc_Spawn;
			_handle = execVM "Drug.sqf";
			_Drug_Status = true;
 
	};	
	if (!_Drug_Status and rnumber==1 and Drug_Trig ) then {
			_posDrug = getMarkerPos "Drug1_Occupy";
			"Drug_Marker" setMarkerPos _posDrug;
			[ _Drug1 ] spawn T8U_fnc_Spawn;
			_handle = execVM "Drug.sqf";
			_Drug_Status = true;
 
	};	
	
	if (!_Assasin_Status and rnumber==0 and Assasin_Trig ) then {
			[ _Assasin3 ] spawn T8U_fnc_Spawn;
			_handle = execVM "Assassin.sqf";
			"Assasin_Marker" setMarkerPos [13917.4,8294.61];
			_Assasin_Status = true;
 
	};	
	
	if (!_Assasin_Status and rnumber==2 and Assasin_Trig ) then {
			"Assasin_Marker" setMarkerPos [10884,6333.55];
			[ _Assasin2 ] spawn T8U_fnc_Spawn;
			_handle = execVM "Assassin.sqf";
			_Assasin_Status = true;
 
	};	
	if (!_Assasin_Status and rnumber==1 and Assasin_Trig ) then {
			"Assasin_Marker" setMarkerPos [5090.77,8674.69];
			[ _Assasin1 ] spawn T8U_fnc_Spawn;
			_handle = execVM "Assassin.sqf";
			_Assasin_Status = true;
 
	};
	if (!_Radar_Status and rnumber==0 and Radar_Trig ) then {
			[ _Radar3 ] spawn T8U_fnc_Spawn;
			_handle = execVM "Radar.sqf";
			"Radar_Marker" setMarkerPos [4080.17,12561.5];
			_Radar_Status = true;
 
	};	
	
	if (!_Radar_Status and rnumber==2 and Radar_Trig ) then {
			[ _Radar2 ] spawn T8U_fnc_Spawn;
			_handle = execVM "Radar.sqf";
			"Radar_Marker" setMarkerPos [14475.5,11253.7];
			_Radar_Status = true;
 
	};	
	if (!_Radar_Status and rnumber==1 and Radar_Trig ) then {
			[ _Radar1 ] spawn T8U_fnc_Spawn;
			_handle = execVM "Radar.sqf";
			"Radar_Marker" setMarkerPos [4697.17,3155.58];
			_Radar_Status = true;
 
	};
	if (!_Airport_Status and Airport_Trig ) then {
			[ _Airport ] spawn T8U_fnc_Spawn;
			_Airport_Status = true;
 
	};	
	
	if ( (!alive crate1) and (!alive crate2) and (!alive crate3) and (!alive crate4) ) then {
			"Drug_Marker" setMarkerColor "ColorGreen";
			_drugObjective = true;
	};	

	if ( (!alive Assasin_Officer) ) then {
			"Assasin_Marker" setMarkerColor "ColorGreen";
			_AssasinObjective = true;
	};	
	
	if ( (!alive radar_generator) ) then {
			"Radar_Marker" setMarkerColor "ColorGreen";
			_RadarObjective = true;
	};
	
	if ( (!alive motorboat1) ) then {
			"MotorBoatMarker" setMarkerColor "ColorGreen";
			_BoatObjective = true;
	};
	if ( (!alive plane1) and (!alive plane2) and (!alive plane3) and Intel_Trig1 and Intel_Trig2 and Intel_Trig3 ) then {
			"Airport_Marker" setMarkerColor "ColorGreen";
			_AirportObjective = true;
	};
	
	if ( _BoatObjective and _RadarObjective and _AssasinObjective and _drugObjective and _AirportObjective ) then {
			ObjectivesComplete = true;
	};
	sleep (100);

};




// ------------------------------------------------ THE END ---------------------------------------------------