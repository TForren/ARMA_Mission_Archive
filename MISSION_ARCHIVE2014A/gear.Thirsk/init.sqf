sleep .01; 

call compile preprocessFileLineNumbers "dsl_gear_get_lists.sqf";

player addAction [("<t color=""#ffc600"">" + ("Character Customizer") + "</t>"),'dsl_gear_dialog.sqf',["paperdoll"],-100,true,false,'',"_target == player"];