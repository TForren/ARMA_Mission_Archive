//Hoizen Setup stuff. Contains all the stuff you'd expect a Hoizen misshon to have.
//Handles stuff like intro music, text, effects, the flaire jive.

if ( (player distance (getmarkerpos "HQ")) < 15624) then {
	player switchMove "AmovPercMstpSlowWrflDnon_AmovPknlMstpSlowWrflDnon"; 

	player addAction ["Return to LHD", { 
	 [LHD1, player] call CUP_fnc_moveInCargo;},  
	"", 1, true, true, "", "'AswmPercMstpSnonWnonDnon' == AnimationState player"];
	
};



