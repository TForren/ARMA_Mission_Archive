enableSaving [false, false];
ExecVM "briefing.sqf"; 
missionOver = false;
setviewdistance 5000;
// LOADING TEXT

{
        if (side _x == east) then {
                _x unassignItem "NVGoggles_OPFOR";
                _x removeItem "NVGoggles_OPFOR";
				_x unassignItem "NVGoggles";
				_x removeItem "NVGoggles";
				_x addPrimaryWeaponItem "acc_flashlight";
				_x enablegunlights "forceOn";
        };

} foreach allunits;

