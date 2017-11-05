_object=_this;
_type=typeOf _object;
rearmTime=5;
_object vehicleChat format["Servicing %1... Please stand by...",_type];
_magazines=getArray(configFile>>"CfgVehicles">>_type>>"magazines");
if(count _magazines > 0)then{
_removed=[];
{if(!(_x in _removed))then{
_object removeMagazines _x;
_removed=_removed + [_x];};
}forEach _magazines;
{_object vehicleChat format["Reloading %1", _x];
sleep rearmTime;
_object addMagazine _x;}forEach _magazines;};
_count=count(configFile>>"CfgVehicles">>_type>>"Turrets");
if(_count > 0)then{
for "_i" from 0 to(_count - 1)do{
scopeName "xx_reload2_xx";
_config=(configFile>>"CfgVehicles">>_type>>"Turrets")select _i;
_magazines=getArray(_config>>"magazines");
_removed=[];
{if(!(_x in _removed))then{
_object removeMagazines _x;
_removed=_removed + [_x];};}forEach _magazines;
{_object vehicleChat format["Reloading %1",_x];
sleep rearmTime;
_object addMagazine _x;
sleep rearmTime;}forEach _magazines;
_count_other=count(_config>>"Turrets");
if(_count_other > 0)then{
for "_i" from 0 to(_count_other - 1)do{
_config2=(_config>>"Turrets")select _i;
_magazines=getArray(_config2>>"magazines");
_removed=[];
{if(!(_x in _removed))then{
_object removeMagazines _x;
_removed=_removed + [_x];};}forEach _magazines;
{_object vehicleChat format["Reloading %1",_x];
sleep rearmTime;
_object addMagazine _x;
sleep rearmTime;}forEach _magazines;};
		};
	};
};
//_object setVehicleAmmo 1;
sleep rearmTime;
_object vehicleChat "Repairing...";
while{damage _object > 0}do{
_object setDamage((damage _object - 0.01)min 0);
sleep 0.01;};
sleep rearmTime;
_object vehicleChat "Refueling...";
while{fuel _object < 0.99}do{
_object setFuel((fuel _object + 0.01)min 1);
//_object setFuel((fuel _vehicle + 0.1)min 1);
//_object setFuel 1;
sleep 0.01;};
sleep rearmTime;
_object vehicleChat format["%1 is ready...",_type];
if(true)exitWith{};