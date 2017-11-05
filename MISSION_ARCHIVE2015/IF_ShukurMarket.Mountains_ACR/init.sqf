// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

ExecVM "scripts\market_speaker.sqf"; 


f_script_briefing = [] execVM "briefing.sqf";

player addrating 99999; // because fuck that "player turns hostile" shit 

titleText ["Welcome to Shurkalay Market!\n\n", "BLACK FADED"];

if (!isDedicated) then {		
	player switchmove "AmovPknlMstpSlowWrflDnon";
	//MEDIUM
0 setFog [.7, 0.04, 0];
hndl ppEffectAdjust [.5, 1.0, 0.0, [0.82, 0.69, 0.43, 0.10], [0.8, 0.74, 0.63, 0.10], [0.8, 0.74, 0.63, 0.10]];
};

