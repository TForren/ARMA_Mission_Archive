HZ_fnc_avgSideLoc = compile preprocessfilelinenumbers "HZ\utility\HZ_fnc_avgSideLoc.sqf";



{
	commandModule addCuratorEditableObjects [[_x],true ];
	commandModule addCuratorEditableObjects [[vehicle _x],true ];
} foreach allunits;

{
	commandModule removeCuratorEditableObjects [[_x],true];
} foreach [bv1,bv2,bv3,bv4,bv5,bv6,bv7,bv8];
