//player addbackpack "B_OH_T10_Parachute";
//player setpos (player modelToWorld [0,0,600]);
//player action ["openParachute"];
//player spawn {waitUntil{sleep 1; (getpos _this select 2) < 1};sleep 1;hint "fix legs";[player,player] call ace_medical_fnc_treatmentAdvanced_fullHeal};

//ACE_player setHitPointDamage ["HitLegs", 0]
//this setvariable ["ACE_isUnconscious", true, true];
//_nul = doctor spawn { sleep 1; [doctor, 0.3, "leg_r", "stab"] call ace_medical_fnc_addDamageToUnit};
//_nul = doctor spawn { sleep 1; [doctor, 0.3, "hand_l", "stab"] call ace_medical_fnc_addDamageToUnit};
//_nul = doctor spawn { sleep 1; [doctor, 0.3, "leg_l", "stab"] call ace_medical_fnc_addDamageToUnit};
//_nul = doctor spawn { sleep 1; [doctor, 0.8, "head", "punch"] call ace_medical_fnc_addDamageToUnit};
