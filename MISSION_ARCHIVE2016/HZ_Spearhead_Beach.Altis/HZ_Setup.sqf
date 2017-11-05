//Hoizen Setup stuff. Contains all the stuff you'd expect a Hoizen misshon to have.
//Handles stuff like intro music, text, effects, the flaire jive.
if (isServer) then
{
	randTime = ((random 16) + 3) - daytime;
	publicVariable "randTime";
};

waitUntil{!isNil "randTime"};
skipTime randTime;

if (!isServer) then { waitUntil {!isNull player}};
player switchMove "AmovPercMstpSlowWrflDnon_AmovPknlMstpSlowWrflDnon"; 

player addAction ["Return to LHD", { 
 [LHD1, player] call CUP_fnc_moveInCargo;},  
"", 1, true, true, "", "'AswmPercMstpSnonWnonDnon' == AnimationState player"];


/*
if ((side player) == blufor ) then //blufor
{

	titleText ["\n\n", "BLACK FADED"];
	sleep 1;
	player switchMove "AmovPercMstpSlowWrflDnon_AmovPknlMstpSlowWrflDnon"; //crouch
	titleText ["Loading DAC", "BLACK FADED"];
	sleep 5;
	titleText ["Loading DAC.", "BLACK FADED"];
	sleep 5;
	titleText ["Loading DAC..", "BLACK FADED"];
	sleep 5;
	titleText ["Loading DAC...", "BLACK FADED"];
	sleep 5;
	titleText ["Loading DAC....", "BLACK FADED"];
	sleep 5;
	titleText ["", "BLACK IN", 8];
	sleep 8;
	titleText ["", "PLAIN"];
	sleep 3;	

};
*/