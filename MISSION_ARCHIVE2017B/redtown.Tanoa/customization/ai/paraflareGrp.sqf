//Written by beta
//Add to paraflare script


if (isServer) then
{
	private ["_grp"];
	
	if (isNil "paraflareGroups") then {paraflareGroups = []};

	_grp = _this select 0;

	sleep 5; //wait until mission starts

	paraflareGroups = paraflareGroups + [_grp];
};
