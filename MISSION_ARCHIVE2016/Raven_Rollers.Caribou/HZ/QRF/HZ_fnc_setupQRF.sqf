/*HZ_fnc_setupQRF
 *  Setup nearby QRF to be activated when alerted
 *Takes in:
 *  [[qrfTrig,east]] call HZ_fnc_setupQRF;
 *Returns:
 *  [qrf,groups]
*/

private _params = (_this select 0);
private _trigger = _params select 0;
private _qrfSide = _params select 1;

private _qrfGroups = [];

//collect array of all qrf groups in trigger
{
	if (side _x == _qrfSide) then {	
		if !((group _x) in _qrfGroups) then {
			_qrfGroups = _qrfGroups + [(group _x)];
		};	
	};
} foreach list _trigger;



//hide and disable sim for units while they wait
{
	{
		if (vehicle _x != _x) then { //in vehicle
			(vehicle _x) enableSimulation false;
			(vehicle _x) hideObject true; 
		};
		_x enableSimulation false;
		_x hideObject true; 
		_x setVariable ["VCOM_NOPATHING_Unit",true];
		//_x setVariable ["NOAI",true];
	} foreach units _x;
} foreach _qrfGroups;

_qrfGroups;
