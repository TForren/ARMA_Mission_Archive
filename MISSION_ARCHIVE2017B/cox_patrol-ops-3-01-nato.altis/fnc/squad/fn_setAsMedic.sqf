/*
	Author: Eightysix

	Description:
	Enables an array of objects to be loadable

	Syntax:
	<array of Objects> call PO3_fnc_setAsMedic

	Returns: Nothing
*/
private["_objects"];

_objects = _this;

if(typeName _objects != typeName []) then { _objects = [_objects] };

{
	_x setVariable ["PO3_VAR_roleAttribute","Medic",true];
	_x setVariable ["PO3_VAR_crew",true,true];
}forEach _objects;

true;