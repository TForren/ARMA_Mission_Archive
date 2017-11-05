


_targetnumber = _this select 0;
 
switch (_targetnumber) do {
 
 
    case "AA1105": {
 
    [-2,{
 
    if(isServer) then
    {
    if !(WA2_CanFire) exitwith {};
 
    WA2_CanFire = false;
    publicvariable "WA2_CanFire";
   
    [gun1, AA1102, 150, 90, 0] execVM 'customization\fire_linear.sqf';
    [gun3, AA1103, 100, 90, 0] execVM 'customization\fire_linear.sqf';
    [gun5, AA1104, 150, 229, 0] execVM 'customization\fire_linear.sqf';
    [gun7, AA1105, 100, 288, 0] execVM 'customization\fire_linear.sqf';
    sleep 25;
    [gun2, AA1102, 150, 90, 0] execVM 'customization\fire_linear.sqf';
    [gun4, AA1103, 100, 90, 0] execVM 'customization\fire_linear.sqf';
    [gun6, AA1104, 150, 229, 0] execVM 'customization\fire_linear.sqf';
    [gun8, AA1105, 100, 288, 0] execVM 'customization\fire_linear.sqf';
 
    };
 
    }] call CBA_fnc_globalExecute;
 
    };
 
 
 
   
    case "AA1106": {
 
    [-2,{
 
    if(isServer) then
    {
   
    if !(WA1_CanFire) exitwith {};
 
    WA1_CanFire = false;
    publicvariable "WA1_CanFire";
   
    [gun9, AA1106, 300, 60, 2] execVM 'customization\fire_linear.sqf';
    sleep 25;
    [gun10, AA1106, 300, 60, 2] execVM 'customization\fire_linear.sqf';
 
    };
 
    }] call CBA_fnc_globalExecute;
 
    };
 
 
};