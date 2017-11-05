// INFANTRY SKILL
_InfskillSet=[
0.1,	// aimingAccuracy
0.3,	// aimingShake
0.3,	// aimingSpeed
0.7,	// spotDistance
0.5,	// spotTime
0.8,	// courage
0.5,	// reloadSpeed
1,		// commanding
0.5		// general
];

// ARMOUR SKILL
_ArmSkillSet=[
0.2,	// aimingAccuracy
0.45,	// aimingShake
0.5,	// aimingSpeed
0.6,	// spotDistance
0.6,	// spotTime
1,		// courage
1,		// reloadSpeed
1,		// commanding
1		// general
];

// LIGHT VEHICLE skill
_LigSkillSet=[
0.15,// aimingAccuracy
0.45,// aimingShake
0.6,// aimingSpeed
0.8,// spotDistance
0.8,// spotTime
1,// courage
1,// reloadSpeed
1,// commanding
1// general
];

// HELICOPTER SKILL
_AIRskillSet=[
0.25,// aimingAccuracy
0.45,// aimingShake
0.6,// aimingSpeed
0.4,// spotDistance
0.4,// spotTime
1,// courage
1,// reloadSpeed
1,// commanding
1// general
];

// STATIC SKILL
_STAskillSet=[
0.20,// aimingAccuracy
0.5,// aimingShake
0.6,// aimingSpeed
0.5,// spotDistance
0.5,// spotTime
1,// courage
1,// reloadSpeed
1,// commanding
1// general
];
server setVariable["INFskill",_InfskillSet];server setVariable["ARMskill",_ArmSkillSet];server setVariable["LIGskill",_LigSkillSet];server setVariable["AIRskill",_AIRskillSet];server setVariable["STAskill",_STAskillSet];