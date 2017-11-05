HZ_fnc_wreckRoads = compile preprocessfilelinenumbers "HZ\HZ_fnc_wreckRoads.sqf";
HZ_fnc_handleCivDeath = compile preprocessfilelinenumbers "HZ\HZ_fnc_handleCivDeath.sqf";
HZ_fnc_angryMobYelling = compile preprocessfilelinenumbers "HZ\Yelling\HZ_fnc_angryMobYelling.sqf";

HZ_fnc_spawnBomber = compile preprocessfilelinenumbers "HZ\spawners\HZ_fnc_spawnBomber.sqf";
HZ_fnc_spawnFighters = compile preprocessfilelinenumbers "HZ\spawners\HZ_fnc_spawnFighters.sqf";
HZ_fnc_spawnTechnical = compile preprocessfilelinenumbers "HZ\spawners\HZ_fnc_spawnTechnical.sqf";

/* I hate zeus. So much.
WILL NOT WORK because all AI is forced to zeus's computer, breaking everything that makes sense.
{
	if (side _x == independent) then {
		_x addEventHandler ["killed", "(_this select 1) call HZ_fnc_handleCivDeath"];
	
	};	
} foreach allunits;
*/

if !(isServer) exitWith {};

_angryMob = (group mobLead1) call HZ_fnc_angryMobYelling;
_angryMob = (group mobLead2) call HZ_fnc_angryMobYelling;
_angryMob = (group mobLead3) call HZ_fnc_angryMobYelling;

[] call HZ_fnc_handleCivDeath;

{
	commandModule addCuratorEditableObjects [[_x],true ];
	commandModule addCuratorEditableObjects [[vehicle _x],true ];
} foreach allunits;


[] spawn {
	sleep 3;
	execVM"HZ\Yelling\HZ_Yelling_init.sqf";
}
