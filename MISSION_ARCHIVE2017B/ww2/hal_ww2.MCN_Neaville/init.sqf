if (isServer) then {
	//{_x setVariable ["ASR_AI_Exclude", true]} foreach allunits;
	#include "RydParams.sqf";
	nul = [] execVM "RydHQInit.sqf";
	

};