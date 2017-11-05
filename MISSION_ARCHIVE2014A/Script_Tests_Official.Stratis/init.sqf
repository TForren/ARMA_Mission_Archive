enableSaving[false,false];

execvm "jump.sqf"; // QUICK JUMP SCRIPT

[] execVM "real_weather.sqf"; // WEATHER SYNQ SCRIPT

[] execVM "zlt_fastrope.sqf"; // FAST ROPE SCRIPT

null = [3] execvm "tpwcas\tpwcas_script_init.sqf" // TPWCAS AI SUPRESSION SYSTEM

