//if(!isServer) then {waitUntil{!isNull player}};
JBOY_say3d =              compile preprocessFileLineNumbers "JBOY\JBOY_say3d.sqf";
//JBOY_isFetchable =        compile preprocessFileLineNumbers "JBOY\JBOY_isFetchable.sqf";
JBOY_turboChicken =       compile preprocessFileLineNumbers "JBOY\JBOY_turboChicken.sqf";
//featherEffect =           compile preprocessFileLineNumbers "JBOY\featherEffect.sqf";

//if jip player then exit
_JIPplayer = not isServer && isNull player;
if (_JIPplayer) exitwith {};
// **************************************************************************
// Create some rabbits and chickens explicitly.  These small animals will run or fly when dog or man approaches.
// **************************************************************************
R1 = createAgent ['Rabbit_F', rabbitPos getRelPos [2,   0], [], 0, "NONE"];
R2 = createAgent ['Rabbit_F', rabbitPos getRelPos [5,  90], [], 0, "NONE"];
R3 = createAgent ['Rabbit_F', rabbitPos getRelPos [4, 180], [], 0, "NONE"];
R4 = createAgent ['Rabbit_F', rabbitPos getRelPos [2, 270], [], 0, "NONE"];
{nul = [_x, false] execVM "JBOY\JBOY_animalScatter.sqf";} foreach [R1,R2,R3,R4]; // rabbits will scatter when dog or man near.
C1 = createAgent ['Cock_random_F', rabbitPos getRelPos [3, 200], [], 0, "NONE"];
C2 = createAgent ['Cock_white_F', rabbitPos getRelPos [2, 100], [], 0, "NONE"];
C3 = createAgent ['Cock_random_F', rabbitPos getRelPos [4, 200], [], 0, "NONE"];
C4 = createAgent ['Cock_white_F', rabbitPos getRelPos [1, 100], [], 0, "NONE"];

// **************************************************************************
// Also look at Animals Module in this mission used to create hens.
// It has the following line of code in the module's init field, which readies
// the birds and rabbits to scatter.
// **************************************************************************
// nul = [this, 20, true] execVM "JBOY\addBirdDamageEHs.sqf";