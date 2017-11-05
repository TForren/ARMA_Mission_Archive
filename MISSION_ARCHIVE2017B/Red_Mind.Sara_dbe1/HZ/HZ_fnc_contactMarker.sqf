_contact = _this select 0;
_pos = getpos _contact;

//[commandModule,["o_inf",[1,0,0],_pos,1,1,0,"Contact",2],true,true] call BIS_fnc_addCuratorIcon;

_iconParams = ["a3\ui_f\data\map\MapControl\waypointeditor_ca.paa", [1,1,1,1], _pos, 0.5, 0.5, 0, "Guard", 0, 0.025];
_iconID = [commandModule, _iconParams, true, true] call bis_fnc_addCuratorIcon;