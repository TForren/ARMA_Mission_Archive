
//Written by AC
private["_side"]
_side = _this select 0;
if (side player == _side) then {

//Sleep 3;
//_rank=Rank player;
//hint _rank;

sleep 10;
if (Rank player == "PRIVATE") then {
	[player, [0, 0, 1, 0, 1, 0, 0, 0]] call plank_deploy_fnc_init;
	} else {
		if (Rank player == "CORPORAL") then {
		[player, [0, 0, 1, 0, 1, 0, 1, 0]] call plank_deploy_fnc_init;
		} else {
			if (Rank player == "SERGEANT") then {
			[player, [1, 0, 1, 0, 1, 0, 1, 0]] call plank_deploy_fnc_init;
			} else {
				if (Rank player == "LIEUTENANT") then {
				[player, [1, 1, 1, 0, 1, 0, 1, 0]] call plank_deploy_fnc_init;
				} else {};
			};
		};
	};
};