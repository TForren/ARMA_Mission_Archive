_SCRname = "GoSFAttack";

_unitG = _this select 0;_Spos = _unitG getvariable ("START" + (str _unitG));if (isNil ("_Spos")) then {_unitG setVariable [("START" + (str _unitG)),(getPosATL (vehicle (leader _unitG))),true]}; 
_Trg = _this select 1;
_trgPos = getPosATL _Trg;
_trgG = _this select 2;
_HQ = _this select 3;

if (_unitG in (_HQ getVariable ["RydHQ_Garrison",[]])) exitwith {};
_ammo = [_unitG,(_HQ getVariable ["RydHQ_NCVeh",[]])] call RYD_AmmoCount;

if (_ammo == 0) exitwith {};

_AAO = _HQ getVariable ["RydHQ_ChosenAAO",false];

_unitvar = str (_unitG);
_busy = false;
_busy = _unitG getvariable ("Busy" + _unitvar);
if (isNil ("_busy")) then {_busy = false};

if (_busy) exitwith {};

_obj = _HQ getVariable ["RydHQ_Obj",_ldr];

if (_AAO) then
	{
	_nT = ((_HQ getVariable ["RydHQ_Objectives",[]]) - (_HQ getVariable ["RydHQ_Taken",[]]));
	if ((count _nT) < 1) then {_nT = (_HQ getVariable ["RydHQ_Objectives",[]])};
	_obj = _nT select 0;
	};

_Epos0 = [];
_Epos1 = [];

_default = getPosATL _obj;

if (_AAO) then
	{
	_default = _HQ getVariable ["RydHQ_EyeOfBattle",getPosATL _obj]
	};

if not ((count (_HQ getVariable ["RydHQ_KnEnemies",[]])) == 0) then 
	{
		{
		_Epos0 pushBack ((getPosATL _x) select 0);
		_Epos1 pushBack ((getPosATL _x) select 1)
		}
	foreach (_HQ getVariable ["RydHQ_KnEnemies",[]])
	};

_Epos0Max = _default select 0;
_Epos0Min = _default select 0;
_sel0Max = 0;
_sel0Min = 0;

for [{_a = 0},{_a < (count _Epos0)},{_a = _a + 1}] do 
	{
	_EposA = _Epos0 select _a;
	if (_a == 0) then {_Epos0Min = _EposA;_sel0Min = _a};
	if (_a == 0) then {_Epos0Max = _EposA;_sel0Max = _a};
	if (_Epos0Min >= _EposA) then {_Epos0Min = _EposA;_sel0Min = _a};
	if (_Epos0Max < _EposA) then {_Epos0Max = _EposA;_sel0Max = _a};
	};

_Epos1Max = _default select 1;
_Epos1Min = _default select 1;
_sel1Max = 1;
_sel1Min = 1;

for [{_b = 0},{_b < (count _Epos1)},{_b = _b + 1}] do 
	{
	_EposB = _Epos1 select _b;
	if (_b == 0) then {_Epos1Min = _EposB;_sel1Min = _b};
	if (_b == 0) then {_Epos1Max = _EposB;_sel1Max = _b};
	if (_Epos1Min >= _EposB) then {_Epos1Min = _EposB;_sel1Min = _b};
	if (_Epos1Max < _EposB) then {_Epos1Max = _EposB;_sel1Max = _b};
	};


_max0Enemy = _obj;
_min0Enemy = _obj;

_max1Enemy = _obj;
_min1Enemy = _obj;

if not ((count (_HQ getVariable ["RydHQ_KnEnemies",[]])) == 0) then 
	{
	_max0Enemy = (_HQ getVariable ["RydHQ_KnEnemies",[]]) select _sel0Max;
	_min0Enemy = (_HQ getVariable ["RydHQ_KnEnemies",[]]) select _sel0Min;

	_max1Enemy = (_HQ getVariable ["RydHQ_KnEnemies",[]]) select _sel1Max;
	_min1Enemy = (_HQ getVariable ["RydHQ_KnEnemies",[]]) select _sel1Min
	};

_PosMid0 = (_Epos0Min + _Epos0Max)/2;
_PosMid1 = (_Epos1Min + _Epos1Max)/2;

_dX = (_PosMid0) - ((getPosATL (leader _HQ)) select 0);
_dY = (_Posmid1) - ((getPosATL (leader _HQ)) select 1);

_angle0 = _dX atan2 _dY;

if (_angle0 < 0) then {_angle0 = _angle0 + 360}; 

_BEnemyPosA = [];
_BEnemyPosB = [];
_BEnemyPos = [];

if ((_angle0 <= 45) or ((_angle0 > 135) and (_angle0 <= 225)) or (_angle0 > 315)) then {_BEnemyPosA = getPosATL _min0Enemy;_BEnemyPosB = getPosATL _max0Enemy} else {_BEnemyPosA = getPosATL _min1Enemy;_BEnemyPosB = getPosATL _max1Enemy};

_minF = false;
_maxF = false;

_BEnemyPos = _BEnemyPosA;
_MinSide = true;

_rnd = random 100;

if (_rnd < 50) then
	{
	_BEnemyPos = _BEnemyPosB;
	_MinSide = false
	};

_i1 = "";
_i2 = "";
_i3 = "";
_i4 = "";

_PosMidX = _PosMid0;
_PosMidY = _PosMid1;

_UL = leader _unitG;

_safeX1 = 0;
_safeY1 = 0;

_safeX2 = 0;
_safeY2 = 0;

_GposX = (getPosATL (leader _unitG)) select 0;
_GposY = (getPosATL (leader _unitG)) select 1;

_BEposX = _BEnemyPos select 0;
_BEposY = _BEnemyPos select 1;

_dX = _BEposX - ((getPosATL (leader _HQ)) select 0);
_dY = _BEposY - ((getPosATL (leader _HQ)) select 1);

_angle = _dX atan2 _dY;

if (_angle < 0) then {_angle = _angle + 360};  
_h = 1;
if ((_angle0 > 45) and (_angle0 <= 225)) then {_h = - 1};

_BorHQD = (leader _HQ) distance _BEnemyPos;

_distanceSafe = 1000;

_safeX1 = _h * _distanceSafe * (cos _angle);
_safeY1 = _h * _distanceSafe * (sin _angle);

_safeX2 = _distanceSafe * (sin _angle);
_safeY2 = _distanceSafe * (cos _angle);

if (_MinSide) then {_safeX1 = - _safeX1} else {_safeY1 = - _safeY1};

_FlankPosX = _BorHQD * (sin _angle);
_FlankPosY = _BorHQD * (cos _angle);

_posXWP1 = ((getPosATL (leader _HQ)) select 0) + _FlankPosX + _safeX1 + (random 200) - 100;
_posYWP1 = ((getPosATL (leader _HQ)) select 1) + _FlankPosY + _safeY1 + (random 200) - 100;

_isWater = surfaceIsWater [_posXWP1,_posYWP1];

while {((_isWater) and (([_posXWP1,_posYWP1] distance _BEnemyPos) >= 300))} do
	{
	_posXWP1 = _posXWP1 - _safeX1/20;
	_posYWP1 = _posYWP1 - _safeY1/20;
	_isWater = surfaceIsWater [_posXWP1,_posYWP1];
	};

_isWater = surfaceIsWater [_posXWP1,_posYWP1];

if (_isWater) exitwith {_unitG setVariable [("Busy" + (str _unitG)),false]};

_posXWP2 = _posXWP1 + _safeX2 + (random 200) - 100;
_posYWP2 = _posYWP1 + _safeY2 + (random 200) - 100;

_isWater = surfaceIsWater [_posXWP2,_posYWP2];

while {((_isWater) and (([_posXWP2,_posYWP2] distance _BEnemyPos) >= 300))} do
	{
	_posXWP2 = _posXWP2 - _safeX2/20;
	_posYWP2 = _posYWP2 - _safeY2/20;
	_isWater = surfaceIsWater [_posXWP2,_posYWP2];
	};

_isWater = surfaceIsWater [_posXWP2,_posYWP2];

if (_isWater) exitwith {_unitG setVariable [("Busy" + (str _unitG)),false]};

_posXWP3 = _posXWP2 - (_safeX1/2) + (random 200) - 100;
_posYWP3 = _posYWP2 - (_safeY1/2) + (random 200) - 100;

_isWater = surfaceIsWater [_posXWP3,_posYWP3];

while {((_isWater) and (([_posXWP3,_posYWP3] distance _BEnemyPos) >= 300))} do
	{
	_posXWP3 = (_posXWP3 + (_BEnemyPos select 0))/2;
	_posYWP3 = (_posYWP3 + (_BEnemyPos select 1))/2;
	_isWater = surfaceIsWater [_posXWP3,_posYWP3];
	};

_isWater = surfaceIsWater [_posXWP3,_posYWP3];

if (_isWater) exitwith {_unitG setVariable [("Busy" + (str _unitG)),false]};

_posXWP4 = (_trgPos select 0) + (random 100) - 50;
_posYWP4 = (_trgPos select 1) + (random 100) - 50;

_isWater = surfaceIsWater [_posXWP4,_posYWP4];

while {((_isWater) and (([_posXWP4,_posYWP4] distance _BEnemyPos) >= 50))} do
	{
	_posXWP3 = (_posXWP4 + (_BEnemyPos select 0))/2;
	_posYWP3 = (_posYWP4 + (_BEnemyPos select 1))/2;
	_isWater = surfaceIsWater [_posXWP4,_posYWP4];
	};

_isWater = surfaceIsWater [_posXWP4,_posYWP4];

if (_isWater) exitwith {_unitG setVariable [("Busy" + (str _unitG)),false]};

if (((leader _HQ) distance [_posXWP1,_posYWP1]) > ((leader _HQ) distance [_posXWP2,_posYWP2])) then 
	{
	_posXWP2 = _posXWP1 - _safeX2;
	_posYWP2 = _posYWP1 - _safeY2;

	_isWater = surfaceIsWater [_posXWP2,_posYWP2];

	while {((_isWater) and (([_posXWP2,_posYWP2] distance _BEnemyPos) >= 300))} do
		{
		_posXWP2 = _posXWP2 + _safeX2/20;
		_posYWP2 = _posYWP2 + _safeY2/20;
		_isWater = surfaceIsWater [_posXWP2,_posYWP2];
		};

	_isWater = surfaceIsWater [_posXWP2,_posYWP2];
	};

if (_isWater) exitwith {_unitG setVariable [("Busy" + (str _unitG)),false]};

if (((leader _unitG) distance [_posXWP2,_posYWP2]) < ((leader _unitG) distance [_posXWP1,_posYWP1])) then {_posXWP1 = _GposX;_posYWP1 = _GposY};

_task = taskNull;
if ((_ammo > 0) and not (_busy)) then
	{
	_unitG setVariable [("Deployed" + (str _unitG)),false];_unitG setVariable [("Capt" + (str _unitG)),false];
	_unitG setVariable [("Busy" + (str _unitG)),true];

	_SFTargets = (_HQ getVariable ["RydHQ_SFTargets",[]]);
	_SFTargets pushBack _trgG;
	_HQ setVariable ["RydHQ_SFTargets",_SFTargets];

	[_unitG] call RYD_WPdel;
	
	[_unitG,[_posXWP4,_posYWP4,0],"HQ_ord_SF",_HQ] call RYD_OrderPause;

	if ((isPlayer (leader _unitG)) and (RydxHQ_GPauseActive)) then {hintC "New orders from HQ!";setAccTime 1};

	_UL = leader _unitG;
	 
	if not (isPlayer _UL) then {if ((random 100) < RydxHQ_AIChatDensity) then {[_UL,RydxHQ_AIC_OrdConf,"OrdConf"] call RYD_AIChatter}};

	
	if ((_HQ getVariable ["RydHQ_Debug",false]) or (isPlayer (leader _unitG))) then 
		{
		_signum = _HQ getVariable ["RydHQ_CodeSign","X"];
		_i1 = [[_posXWP1,_posYWP1],_unitG,"markSFFlank1","ColorOrange","ICON","mil_dot","SF1 " + _signum," - SF FLANK 1"] call RYD_Mark;
		_i2 = [[_posXWP2,_posYWP2],_unitG,"markSFFlank2","ColorOrange","ICON","mil_dot","SF2 " + _signum," - SF FLANK 2"] call RYD_Mark;
		_i3 = [[_posXWP3,_posYWP3],_unitG,"markSFFlank3","ColorOrange","ICON","mil_dot","SF3 " + _signum," - SF FLANK 3"] call RYD_Mark;
		_i4 = [[_posXWP4,_posYWP4],_unitG,"markSFFlank4","ColorOrange","ICON","mil_dot","SF4 " + _signum," - SF ATTACK"] call RYD_Mark
		};

	_alive = true;
	_CargoCheck = _unitG getvariable ("CC" + _unitvar);
	if (isNil ("_CargoCheck")) then {_unitG setVariable [("CC" + _unitvar), false]};
	_AV = assignedVehicle _UL;
	if (((_HQ getVariable ["RydHQ_CargoFind",0]) > 0) and (isNull _AV) and (([_posXWP4,_posYWP4] distance (vehicle _UL)) > 1000)) then 
		{
		//[_unitG,_HQ,[_posXWP4,_posYWP4]] spawn HAL_SCargo
		[[_unitG,_HQ,[_posXWP4,_posYWP4]],HAL_SCargo] call RYD_Spawn;
		} 
	else 
		{
		_unitG setVariable [("CC" + _unitvar), true]
		};
		
	if ((_HQ getVariable ["RydHQ_CargoFind",0]) > 0) then 
		{	
		waituntil 
			{
			sleep 0.05;
			switch (true) do
				{
				case (isNull _unitG) : {_alive = false};
				case (({alive _x} count (units _unitG)) < 1) : {_alive = false};
				case ((_this select 0) getVariable ["RydHQ_MIA",false]) : {_alive = false;(_this select 0) setVariable ["RydHQ_MIA",nil]}
				};
				
			_cc = false;
			if (_alive) then
				{
				_cc = (_unitG getvariable ("CC" + _unitvar))
				};
				
			(not (_alive) or (_cc))
			};
			
		if not (isNull _unitG) then {_unitG setVariable [("CC" + _unitvar), false]};
		};

	if not (_alive) exitWith 
		{
		if ((_HQ getVariable ["RydHQ_Debug",false]) or (isPlayer (leader _unitG))) then {{deleteMarker _x} foreach [_i1,_i2,_i3,_i4]}
		};
		
	_AV = assignedVehicle _UL;
	_DAV = assigneddriver _AV;
	_GDV = group _DAV;
	_alive = false;
	_timer = 0;
	
	[_unitG] call RYD_WPdel;

	if (not (isNull _AV) and ((_HQ getVariable ["RydHQ_CargoFind",0]) > 0)) then
		{
		//_task = [(leader _unitG),["Wait and get into vehicle.", "GET IN", ""],(getPosATL (leader _unitG))] call RYD_AddTask;

		_wp = [_unitG,_AV,"GETIN"] call RYD_WPadd;
		_wp waypointAttachVehicle _AV;
		_cause = [_unitG,1,false,0,900,[],true,false,true,false,false,false] call RYD_Wait;
		if (_HQ getVariable ["RydHQ_LZ",false]) then {deleteVehicle (_AV getVariable ["TempLZ",objNull])};
		_timer = _cause select 0
		};

	if ((isPlayer (leader _unitG)) and not (isMultiplayer)) then {(leader _unitG) removeSimpleTask _task};
	if ((isNull (leader (_this select 0))) or (_timer > 900)) exitwith {if ((_HQ getVariable ["RydHQ_Debug",false]) or (isPlayer (leader _unitG))) then {{deleteMarker _x} foreach [_i1,_i2,_i3,_i4]};if not (isNull _GDV) then {[_GDV, (currentWaypoint _GDV)] setWaypointPosition [getPosATL (vehicle (leader _GDV)), 1];_GDV setVariable [("Busy" + _unitvar), false];}};

	_AV = assignedVehicle _UL;
	_DAV = assigneddriver _AV;
	_GDV = group _DAV;
	_wp1 = [];
	_wp2 = [];
	_wp3 = [];

	_task = [(leader _unitG),["Reach designated position. Try to avoid engaging in combat.", "Move", ""],[_posXWP1,_posYWP1]] call RYD_AddTask;

	_Ctask = taskNull;
	if ((isPlayer (leader _GDV)) and not ((leader _GDV) == (leader _unitG))) then
		{
		_Ctask = [(leader _GDV),["Reach designated position. Try to avoid engaging in combat.", "Move", ""],[_posXWP1,_posYWP1]] call RYD_AddTask
		};

	[_unitG] call RYD_WPdel;

	_grp = _unitG;
	if not (isNull _AV) then {_grp = _GDV};
	_beh = "AWARE";
	if (not (isNull _AV) and (_GDV in (_HQ getVariable ["RydHQ_AirG",[]]))) then {_beh = "CARELESS"};
	_TO = [0,0,0];
	if ((isNull _AV) and (([_posXWP1,_posYWP1] distance _UL) > 1000)) then {_TO = [40, 45, 50]};
	_frm = formation _grp;
	if not (isPlayer (leader _grp)) then {_frm = "DIAMOND"};

	_wp1 = [_grp,[_posXWP1,_posYWP1],"MOVE",_beh,"GREEN","NORMAL",["true","deletewaypoint [(group this), 0];"],true,0,_TO,_frm] call RYD_WPadd;

	_DAV = assigneddriver _AV;
	_OtherGroup = false;
	_GDV = group _DAV;
	_enemy = false;

	if not (((group _DAV) == (group _UL)) or (isNull (group _DAV))) then 
		{
		_OtherGroup = true;

		_cause = [_GDV,6,true,300,30,[(_HQ getVariable ["RydHQ_AirG",[]]),(_HQ getVariable ["RydHQ_KnEnemiesG",[]])],true] call RYD_Wait;
		_timer = _cause select 0;
		_alive = _cause select 1;
		_enemy = _cause select 2
		}
	else 
		{
		_cause = [_unitG,6,true,300,30,[(_HQ getVariable ["RydHQ_AirG",[]]),(_HQ getVariable ["RydHQ_KnEnemiesG",[]])],false] call RYD_Wait;
		_timer = _cause select 0;
		_alive = _cause select 1;
		_enemy = _cause select 2
		};

	_DAV = assigneddriver _AV;
	if (((_timer > 30) or (_enemy)) and (_OtherGroup)) then {if not (isNull _GDV) then {[_GDV, (currentWaypoint _GDV)] setWaypointPosition [getPosATL (vehicle _UL), 1]}};
	if (((_timer > 30) or (_enemy)) and not (_OtherGroup)) then {[_unitG, (currentWaypoint _unitG)] setWaypointPosition [getPosATL (vehicle _UL), 1]};
	if (not (_alive) and not (_OtherGroup)) exitwith {if ((_HQ getVariable ["RydHQ_Debug",false]) or (isPlayer (leader _unitG))) then {{deleteMarker _x} foreach [_i1,_i2,_i3,_i4]}};
	if (isNull (leader (_this select 0))) exitwith {if ((_HQ getVariable ["RydHQ_Debug",false]) or (isPlayer (leader _unitG))) then {{deleteMarker _x} foreach [_i1,_i2,_i3,_i4]};if not (isNull _GDV) then {[_GDV, (currentWaypoint _GDV)] setWaypointPosition [getPosATL (vehicle (leader _GDV)), 1];_GDV setVariable [("Busy" + _unitvar), false];}};

	if (isPlayer (leader _unitG)) then
		{
		if not (isMultiplayer) then
			{
			_task setSimpleTaskDescription ["Reach designated position. Try to avoid engaging in combat.", "Move", ""];
			_task setSimpleTaskDestination [_posXWP2,_posYWP2]
			}
		else
			{
			[_task,(leader _unitG),["Reach designated position. Try to avoid engaging in combat.", "Move", ""],[_posXWP2,_posYWP2],"ASSIGNED",0,false,true] call BIS_fnc_SetTask;
			 
			}
		};

	if ((isPlayer (leader _GDV)) and not ((leader _GDV) == (leader _unitG))) then
		{
		if not (isMultiplayer) then
			{
			_Ctask setSimpleTaskDescription ["Reach designated position. Try to avoid engaging in combat.", "Move", ""];
			_Ctask setSimpleTaskDestination [_posXWP2,_posYWP2]
			}
		else
			{
			[_Ctask,(leader _GDV),["Reach designated position. Try to avoid engaging in combat.", "Move", ""],[_posXWP2,_posYWP2],"ASSIGNED",0,false,true] call BIS_fnc_SetTask;
			 
			}
		};

	[_unitG] call RYD_WPdel;

	if ((_HQ getVariable ["RydHQ_Debug",false]) or (isPlayer (leader _unitG))) then {_i1 setMarkerColor "ColorBlue"};

	_grp = _unitG;
	if not (isNull _AV) then {_grp = _GDV};
	_beh = "AWARE";
	if (not (isNull _AV) and (_GDV in (_HQ getVariable ["RydHQ_AirG",[]]))) then {_beh = "CARELESS"};
	_TO = [0,0,0];
	if ((isNull _AV) and (([_posXWP2,_posYWP2] distance _UL) > 1000)) then {_TO = [40, 45, 50]};
	_frm = formation _grp;
	if not (isPlayer (leader _grp)) then {_frm = "DIAMOND"};

	_wp2 = [_grp,[_posXWP2,_posYWP2],"MOVE",_beh,"GREEN","NORMAL",["true","deletewaypoint [(group this), 0];"],true,0,_TO,_frm] call RYD_WPadd;

	_DAV = assigneddriver _AV;
	_OtherGroup = false;
	_GDV = group _DAV;
	_enemy = false;

	if not (((group _DAV) == (group _UL)) or (isNull (group _DAV))) then 
		{
		_OtherGroup = true;

		_cause = [_GDV,6,true,300,30,[(_HQ getVariable ["RydHQ_AirG",[]]),(_HQ getVariable ["RydHQ_KnEnemiesG",[]])],true] call RYD_Wait;
		_timer = _cause select 0;
		_alive = _cause select 1;
		_enemy = _cause select 2
		}
	else 
		{
		_cause = [_unitG,6,true,300,30,[(_HQ getVariable ["RydHQ_AirG",[]]),(_HQ getVariable ["RydHQ_KnEnemiesG",[]])],false] call RYD_Wait;
		_timer = _cause select 0;
		_alive = _cause select 1;
		_enemy = _cause select 2
		};

	_DAV = assigneddriver _AV;
	if (((_timer > 30) or (_enemy)) and (_OtherGroup)) then {if not (isNull _GDV) then {[_GDV, (currentWaypoint _GDV)] setWaypointPosition [getPosATL (vehicle _UL), 1]}};
	if (((_timer > 30) or (_enemy)) and not (_OtherGroup)) then {[_unitG, (currentWaypoint _unitG)] setWaypointPosition [getPosATL (vehicle _UL), 1]};
	if (not (_alive) and not (_OtherGroup)) exitwith {if ((_HQ getVariable ["RydHQ_Debug",false]) or (isPlayer (leader _unitG))) then {{deleteMarker _x} foreach [_i1,_i2,_i3,_i4]}};
	if (isNull (leader (_this select 0))) exitwith {if ((_HQ getVariable ["RydHQ_Debug",false]) or (isPlayer (leader _unitG))) then {{deleteMarker _x} foreach [_i1,_i2,_i3,_i4]};if not (isNull _GDV) then {[_GDV, (currentWaypoint _GDV)] setWaypointPosition [getPosATL (vehicle (leader _GDV)), 1];_GDV setVariable [("Busy" + _unitvar), false];}};

	if (isPlayer (leader _unitG)) then
		{
		if not (isMultiplayer) then
			{
			_task setSimpleTaskDescription ["Reach designated position. Try to avoid engaging in combat.", "Move", ""];
			_task setSimpleTaskDestination [_posXWP3,_posYWP3]
			}
		else
			{
			[_task,(leader _unitG),["Reach designated position. Try to avoid engaging in combat.", "Move", ""],[_posXWP3,_posYWP3],"ASSIGNED",0,false,true] call BIS_fnc_SetTask;
			 
			}
		};

	if ((isPlayer (leader _GDV)) and not ((leader _GDV) == (leader _unitG))) then
		{
		if not (isMultiplayer) then
			{
			_Ctask setSimpleTaskDescription ["Disembark group at designated position.", "Move", ""];
			_Ctask setSimpleTaskDestination [_posXWP3,_posYWP3]
			}
		else
			{
			[_Ctask,(leader _GDV),["Disembark group at designated position.", "Move", ""],[_posXWP3,_posYWP3],"ASSIGNED",0,false,true] call BIS_fnc_SetTask;
			 
			}
		};

	[_unitG] call RYD_WPdel;

	if ((_HQ getVariable ["RydHQ_Debug",false]) or (isPlayer (leader _unitG))) then {_i2 setMarkerColor "ColorBlue"};

	_tp = "MOVE";
	//if (not (isNull _AV) and (_unitG in (_HQ getVariable ["RydHQ_NCrewInfG",[]])) and not ((_GDV == _unitG) or (_GDV in (_HQ getVariable ["RydHQ_AirG",[]])))) then {_tp = "UNLOAD"};
	_grp = _unitG;
	if not (isNull _AV) then {_grp = _GDV};
	_beh = "AWARE";
	_lz = objNull;
	if (not (isNull _AV) and (_GDV in (_HQ getVariable ["RydHQ_AirG",[]]))) then 
		{
		_beh = "CARELESS";
		if (_HQ getVariable ["RydHQ_LZ",false]) then
			{
			_lz = [[_posXWP3,_posYWP3]] call RYD_LZ;
			if not (isNull _lz) then
				{
				_lzPos = getPosATL _lz;
				_posXWP3 = _lzPos select 0;
				_posYWP3 = _lzPos select 1
				}
			}
		};

	_sts = ["true","deletewaypoint [(group this), 0];"];
	if (((group (assigneddriver _AV)) in (_HQ getVariable ["RydHQ_AirG",[]])) and (_unitG in (_HQ getVariable ["RydHQ_NCrewInfG",[]]))) then {_sts = ["true","(vehicle this) land 'GET OUT';deletewaypoint [(group this), 0]"]};
	_TO = [0,0,0];
	if ((isNull _AV) and (([_posXWP3,_posYWP3] distance _UL) > 1000)) then {_TO = [40, 45, 50]};
	_frm = formation _grp;
	if not (isPlayer (leader _grp)) then {_frm = "DIAMOND"};
	
	_EDPos = _GDV getVariable "RydHQ_EDPos";
	_posDis = [_posXWP3,_posYWP3];

	if not (isNil "_EDPos") then
		{
		_EDPos = +_EDPos;
		_GDV setVariable ["RydHQ_EDPos",nil];
		_posDis = _EDPos select 1
		};

	_wp3 = [_grp,_posDis,_tp,_beh,"GREEN","NORMAL",_sts,true,0,_TO,_frm] call RYD_WPadd;

	_DAV = assigneddriver _AV;
	_OtherGroup = false;
	_GDV = group _DAV;
	_enemy = false;

	if not (((group _DAV) == (group _UL)) or (isNull (group _DAV))) then 
		{
		_OtherGroup = true;

		_cause = [_GDV,6,true,400,30,[(_HQ getVariable ["RydHQ_AirG",[]]),(_HQ getVariable ["RydHQ_KnEnemiesG",[]])],false] call RYD_Wait;
		_timer = _cause select 0;
		_alive = _cause select 1;
		_enemy = _cause select 2
		}
	else 
		{
		_cause = [_unitG,6,true,400,30,[(_HQ getVariable ["RydHQ_AirG",[]]),(_HQ getVariable ["RydHQ_KnEnemiesG",[]])],false] call RYD_Wait;
		_timer = _cause select 0;
		_alive = _cause select 1;
		_enemy = _cause select 2
		};

	_DAV = assigneddriver _AV;
	if (((_timer > 30) or (_enemy)) and (_OtherGroup)) then {if not (isNull _GDV) then {[_GDV, (currentWaypoint _GDV)] setWaypointPosition [getPosATL (vehicle (leader _GDV)), 1]}};
	if (((_timer > 30) or (_enemy)) and not (_OtherGroup)) then {[_unitG, (currentWaypoint _unitG)] setWaypointPosition [getPosATL (vehicle _UL), 1]};
	if (not (_alive) and not (_OtherGroup)) exitwith {if ((_HQ getVariable ["RydHQ_Debug",false]) or (isPlayer (leader _unitG))) then {{deleteMarker _x} foreach [_i1,_i2,_i3,_i4]}};
	if (isNull (leader (_this select 0))) exitwith {if ((_HQ getVariable ["RydHQ_Debug",false]) or (isPlayer (leader _unitG))) then {{deleteMarker _x} foreach [_i1,_i2,_i3,_i4]};if not (isNull _GDV) then {[_GDV, (currentWaypoint _GDV)] setWaypointPosition [getPosATL (vehicle (leader _GDV)), 1];_GDV setVariable [("Busy" + _unitvar), false];}};

	_AV = assignedVehicle _UL;
	_pass = assignedCargo _AV;
	_allowed = true;
	if not ((_GDV == _unitG) or (isNull _GDV)) then 
		{
		//{unassignVehicle _x} foreach (units _unitG);
		_pass orderGetIn false;
		_allowed = false;
		(units _unitG) allowGetIn false;//if (player in (units _unitG)) then {diag_log "NOT ALLOW sfatt"};
		}
	else
		{
		if (_unitG in (_HQ getVariable ["RydHQ_NCrewInfG",[]])) then {_pass orderGetIn false};
		};

	_DAV = assigneddriver _AV;
	_GDV = group _DAV;

	if (not (isNull _AV) and ((_HQ getVariable ["RydHQ_CargoFind",0]) > 0) and (_unitG in (_HQ getVariable ["RydHQ_NCrewInfG",[]]))) then
		{	
		_cause = [_unitG,1,false,0,240,[],true,true,false,false,false,false,false,_pass] call RYD_Wait;
		_timer = _cause select 0
		};

	if not (_allowed) then {(units _unitG) allowGetIn true};

	if (_HQ getVariable ["RydHQ_LZ",false]) then {deleteVehicle _lz};

	if not ((_GDV == _unitG) or (isNull _GDV)) then 
		{
		{unassignVehicle _x} foreach (units _unitG);
		};

	if ((isPlayer (leader _GDV)) and not (isMultiplayer)) then {(leader _GDV) removeSimpleTask _Ctask};
	if ((isNull (leader (_this select 0))) or (_timer > 240)) exitwith {if ((_HQ getVariable ["RydHQ_Debug",false]) or (isPlayer (leader _unitG))) then {{deleteMarker _x} foreach [_i1,_i2,_i3,_i4]};if not (isNull _GDV) then {[_GDV, (currentWaypoint _GDV)] setWaypointPosition [getPosATL (vehicle (leader _GDV)), 1];_GDV setVariable [("Busy" + _unitvar), false];_pass orderGetIn true}};

	_unitvar = str _GDV;
	_timer = 0;
	if (not (isNull _GDV) and (_GDV in (_HQ getVariable ["RydHQ_AirG",[]])) and not (isPlayer (leader _GDV))) then
		{
		_wp = [_GDV,[((getPosATL _AV) select 0) + (random 200) - 100,((getPosATL _AV) select 1) + (random 200) - 100,1000],"MOVE","CARELESS","GREEN","NORMAL"] call RYD_WPadd;

		_cause = [_GDV,3,true,0,8,[],false] call RYD_Wait;
		_timer = _cause select 0;

		if (_timer > 8) then {[_GDV, (currentWaypoint _GDV)] setWaypointPosition [getPosATL (vehicle (leader _GDV)), 1]};
		};

	_GDV setVariable [("CargoM" + _unitvar), false];

	if (isPlayer (leader _unitG)) then
		{
		if not (isMultiplayer) then
			{
			_task setSimpleTaskDescription ["Eliminate enemy at designated position.", "Eliminate", ""];
			_task setSimpleTaskDestination [_posXWP4,_posYWP4]
			}
		else
			{
			[_task,(leader _unitG),["Eliminate enemy at designated position.", "Eliminate", ""],[_posXWP4,_posYWP4],"ASSIGNED",0,false,true] call BIS_fnc_SetTask;

			}
		};

	[_unitG] call RYD_WPdel;

	if ((_HQ getVariable ["RydHQ_Debug",false]) or (isPlayer (leader _unitG))) then {_i3 setMarkerColor "ColorBlue"};

	if not (isPlayer (leader _unitG)) then 
		{
		_frm = "WEDGE";

		_posXWP35 = (_posXWP3 + _posXWP4)/2;
		_posYWP35 = (_posYWP3 + _posYWP4)/2;

		_wp35 = [_unitG,[_posXWP35,_posYWP35],"MOVE","STEALTH","GREEN","NORMAL",["true","deletewaypoint [(group this), 0];"],true,50,[50,55,60],_frm] call RYD_WPadd;

		_cause = [_unitG,6,true,0,300,[],false] call RYD_Wait;
		_timer = _cause select 0;
		_alive = _cause select 1;

		if not (_alive) exitwith 
			{
			if ((_HQ getVariable ["RydHQ_Debug",false]) or (isPlayer (leader _unitG))) then 
				{
					{
					deleteMarker _x
					}
				foreach [_i1,_i2,_i3,_i4]
				}
			};

		if (_timer > 300) then {[_unitG, (currentWaypoint _unitG)] setWaypointPosition [getPosATL (vehicle _UL), 0];[_unitG] call RYD_ResetAI};
		};

	_beh = "COMBAT";
	_spd = "NORMAL";

	_frm = formation _unitG;
	if not (isPlayer (leader _unitG)) then {_frm = "WEDGE"};

	_UL = leader _unitG;if not (isPlayer _UL) then {if (_timer <= 300) then {if ((random 100) < RydxHQ_AIChatDensity) then {[_UL,RydxHQ_AIC_OrdFinal,"OrdFinal"] call RYD_AIChatter}}};

	_wp4 = [_unitG,[_posXWP4,_posYWP4],"MOVE",_beh,"RED",_spd,["true","deletewaypoint [(group this), 0];"],true,200,[0,0,0],_frm] call RYD_WPadd;
	_wp4 waypointAttachVehicle _Trg;
	_wp4 setWaypointType "DESTROY";

	_cause = [_unitG,6,true,0,300,[],false] call RYD_Wait;
	_timer = _cause select 0;
	_alive = _cause select 1;

	if not (_alive) exitwith 
		{
		if ((_HQ getVariable ["RydHQ_Debug",false]) or (isPlayer (leader _unitG))) then 
			{
				{
				deleteMarker _x
				}
			foreach [_i1,_i2,_i3,_i4]
			}
		};

	if (_timer > 300) then {[_unitG, (currentWaypoint _unitG)] setWaypointPosition [getPosATL (vehicle _UL), 0];[_unitG] call RYD_ResetAI};

	if ((_HQ getVariable ["RydHQ_Debug",false]) or (isPlayer (leader _unitG))) then 
		{
			{
			deleteMarker _x
			}
		foreach [_i4]
		};

	if (isPlayer (leader _unitG)) then
		{
		if not (isMultiplayer) then
			{
			_task setSimpleTaskDescription ["Return.", "Move", ""];
			_task setSimpleTaskDestination [_posXWP3,_posYWP3]
			}
		else
			{
			[_task,(leader _unitG),["Return.", "Move", ""],[_posXWP3,_posYWP3],"ASSIGNED",0,false,true] call BIS_fnc_SetTask;
			 
			}
		};

	_beh = "AWARE";
	_spd = "NORMAL";

	_frm = formation _unitG;
	if not (isPlayer (leader _unitG)) then {_frm = "DIAMOND"};

	_wp5 = [_unitG,[_posXWP3,_posYWP3],"MOVE",_beh,"GREEN",_spd,["true","deletewaypoint [(group this), 0];"],true,20,[0,0,0],_frm] call RYD_WPadd;

	_cause = [_unitG,6,true,0,30,[],false] call RYD_Wait;
	_timer = _cause select 0;
	_alive = _cause select 1;

	if not (_alive) exitwith 
		{
		if ((_HQ getVariable ["RydHQ_Debug",false]) or (isPlayer (leader _unitG))) then 
			{
				{
				deleteMarker _x
				}
			foreach [_i1,_i2,_i3]
			}
		};

	if ((_HQ getVariable ["RydHQ_Debug",false]) or (isPlayer (leader _unitG))) then 
		{
			{
			deleteMarker _x
			}
		foreach [_i3]
		};

	if (isPlayer (leader _unitG)) then
		{
		if not (isMultiplayer) then
			{
			_task setSimpleTaskDestination [_posXWP2,_posYWP2]
			}
		else
			{
			[_task,(leader _unitG),["Return.", "Move", ""],[_posXWP2,_posYWP2],"ASSIGNED",0,false,true] call BIS_fnc_SetTask;
			}
		};

	_wp6 = [_unitG,[_posXWP2,_posYWP2],"MOVE",_beh,"GREEN",_spd,["true","deletewaypoint [(group this), 0];"],true,20,[0,0,0],_frm] call RYD_WPadd;

	_cause = [_unitG,6,true,0,30,[],false] call RYD_Wait;
	_timer = _cause select 0;
	_alive = _cause select 1;

	if not (_alive) exitwith 
		{
		if ((_HQ getVariable ["RydHQ_Debug",false]) or (isPlayer (leader _unitG))) then 
			{
				{
				deleteMarker _x
				}
			foreach [_i1,_i2]
			}
		};

	if ((_HQ getVariable ["RydHQ_Debug",false]) or (isPlayer (leader _unitG))) then 
		{
			{
			deleteMarker _x
			}
		foreach [_i2]
		};

	if (isPlayer (leader _unitG)) then
		{
		if not (isMultiplayer) then
			{
			_task setSimpleTaskDestination [_posXWP1,_posYWP1]
			}
		else
			{
			[_task,(leader _unitG),["Return.", "Move", ""],[_posXWP1,_posYWP1],"ASSIGNED",0,false,true] call BIS_fnc_SetTask;
			}
		};

	_wp7 = [_unitG,[_posXWP1,_posYWP1],"MOVE",_beh,"GREEN",_spd,["true","deletewaypoint [(group this), 0];"],true,20,[0,0,0],_frm] call RYD_WPadd;

	_cause = [_unitG,6,true,0,30,[],false] call RYD_Wait;
	_timer = _cause select 0;
	_alive = _cause select 1;

	if not (_alive) exitwith 
		{
		if ((_HQ getVariable ["RydHQ_Debug",false]) or (isPlayer (leader _unitG))) then 
			{
				{
				deleteMarker _x
				}
			foreach [_i1]
			}
		};

	if ((_HQ getVariable ["RydHQ_Debug",false]) or (isPlayer (leader _unitG))) then 
		{
			{
			deleteMarker _x
			}
		foreach [_i1]
		};

	if ((isPlayer (leader _unitG)) and not (isMultiplayer)) then {(leader _unitG) removeSimpleTask _task};
	_unitG setVariable [("Busy" + _unitvar), false];

	_UL = leader _unitG;if not (isPlayer _UL) then {if ((random 100) < RydxHQ_AIChatDensity) then {[_UL,RydxHQ_AIC_OrdEnd,"OrdEnd"] call RYD_AIChatter}};
	};	
