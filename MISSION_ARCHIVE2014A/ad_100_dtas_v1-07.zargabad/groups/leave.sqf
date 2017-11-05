private ["_leaveHint", "_oldGroup", "_newGroup"];

if ((count (units (group player))) > 1) then
{
	_oldGroup = group player;
	_newGroup = createGroup sidePlayer;
	[player] joinSilent _newGroup;

	isGroupLeader = false;
	player setVariable ["groupKicked", false];
	
	waitUntil {(group player) == _newGroup};
	
	if ((count (units _oldGroup)) == 0) then
	{
		deleteGroup _oldGroup;
	};
};

sleep 1;
[] call fnc_reveal;
[] call fnc_groupRefresh;
