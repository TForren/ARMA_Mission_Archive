//Hoizen Setup stuff. Contains all the stuff you'd expect a Hoizen misshon to have.
//Handles stuff like intro music, text, effects, the flaire jive.

playerDeaths = 0;
publicVariable "playerDeaths";

player switchMove "AmovPercMstpSlowWrflDnon_AmovPknlMstpSlowWrflDnon"; 

_EHrespawned = player addEventHandler ["Killed", {
	playerDeaths = playerDeaths + 1;
	publicVariable "playerDeaths";
	hint "died";
}];

if (isServer) then
{
	randTime = ((random 15) + 4) - daytime;
	publicVariable "randTime";
};

waitUntil{!isNil "randTime"};
skipTime randTime;
	
