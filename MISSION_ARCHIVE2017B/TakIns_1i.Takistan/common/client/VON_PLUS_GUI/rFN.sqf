RStart={
if("ItemRadio" in assignedItems player)then{[player,"local_start"]remoteExec["say3D",0];//To Do: Play only for players on same channel
hintSilent "Transmitting...";
waitUntil{!(IsNull(findDisplay 46))};
(findDisplay 46)DisplayRemoveEventHandler["KeyUp",LEnd];
(findDisplay 46)DisplayRemoveEventHandler["KeyDown",LStart];
LEnd=(findDisplay 46)displayAddEventHandler["KeyUp","if(_this select 1==58)then{[player]call REnd}"];
	};
};
//To Do: Increase static volume based on distance between transmitting player/receiving player
/*Static={
if("ItemRadio" in assignedItems player)then{
player say3D "static";
	};
};*/

REnd={
if("ItemRadio" in assignedItems player)then{
[player,"local_end"]remoteExec["say3D",0];hintSilent "";
waitUntil{!(IsNull(findDisplay 46))};
(findDisplay 46)DisplayRemoveEventHandler["KeyUp",LEnd];
(findDisplay 46)DisplayRemoveEventHandler["KeyDown",LStart];
LStart=(findDisplay 46)displayAddEventHandler["KeyDown","if(_this select 1==58)then{[player]call RStart}"];
	};
};

radioInit={
waitUntil{!(IsNull(findDisplay 46))};
LStart=(findDisplay 46)displayAddEventHandler["KeyDown","if(_this select 1==58)then{[player]call RStart}"];
LEnd=(findDisplay 46)displayAddEventHandler["KeyUp","if(_this select 1==58)then{[player]call REnd}"];
//StatOn=(findDisplay 46)displayAddEventHandler["KeyDown","if(_this select 1==58)then{[player]call Static}"];
};