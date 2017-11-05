/*
* ARIGATO JUMPER SCRIPT (v1.2)
* (c) Arigato Software, 2012
*/

swampmonster setvariable ["ARGT_JUMP_POWER", 5.5, true];
swampmonster setvariable ["ARGT_JUMP_READY", true, true];

  _power = (1 - (damage swampmonster)) * (swampmonster getvariable "ARGT_JUMP_POWER");
  _speed = _power / 2;
  _velocity = velocity swampmonster;
  
  //swampmonster switchmove "AsdvPercMstpSnonWnonDnon_godown";
  swampmonster setvariable ["ARGT_JUMP_READY", false, true];
  swampmonster setvelocity [(_velocity select 0) + _speed * sin getdir swampmonster,
                      (_velocity select 1) + _speed * cos getdir swampmonster,
                      (_velocity select 2) + _power];


swampmonster addeventhandler ["AnimDone",
{
  private ["_unit"];
  _unit = _this select 0;
  if ( ! (_unit getvariable "ARGT_JUMP_READY") ) then {_unit setvariable ["ARGT_JUMP_READY", true, true]};
}];
