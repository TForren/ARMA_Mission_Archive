HZ_fnc_GarrisonHouse = compile preprocessfilelinenumbers "HZ\HZ_fnc_GarrisonHouse.sqf";

if !(isServer) exitWith {};

garrisonUnits = [];
[_cacheHouse,5,2] call HZ_fnc_GarrisonHouse;

randomNum = floor (random 4);
chosenPos = [0,0,0];
chosenDir = 10;
switch (randomNum) do {
    case 0: { chosenPos = [5156.94,2381.58,0.139] };
    case 1: { chosenPos = [5164.81,2363.76,0.138971] };
    case 2: { chosenPos = [5142.81,2383.78,0.138971] };
    case 3: { chosenPos = [5159.01,2382.99,0.138977] };
};
track1 setpos chosenPos;
switch (randomNum) do {
    case 0: { chosenPos = [5156.2,2377.91,0.139008] };
    case 1: { chosenPos = [5151.42,2383.83,0.138985] };
    case 2: { chosenPos = [5158.13,2382.6,0.138985] };
    case 3: { chosenPos = [5171.77,2376.32,0.138988] };
};
track2 setpos chosenPos;

//ammo crate1
randomNum = floor (random 7);
switch (randomNum) do {
    case 0: { chosenPos = [5125.1,2368.19,0.26] };
    case 1: { chosenPos = [5120.77,2371.25,0.375286] };
    case 2: { chosenPos = [5118.48,2379.62,0.383239] };
    case 3: { chosenPos = [5114.33,2375.49,0.403538] };
    case 4: { chosenPos = [5111.59,2372.54,0.387926] };
    case 5: { chosenPos = [5106.3,2358.22,0.357372] };
    case 6: { chosenPos = [5114.98,2361.26,0.405012] };
};
ammocrate1 setpos chosenPos;

//nsv
randomNum = floor (random 7);
switch (randomNum) do {
    case 0: { chosenPos = [5117.17,2360.3,0.283521] };
    case 1: { chosenPos = [5113.63,2370.78,0.411434] };
    case 2: { chosenPos = [5116.6,2373.77,0.427043] };
    case 3: { chosenPos = [5117.15,2379.25,0.406728] };
    case 4: { chosenPos = [5123.03,2373.03,0.39878] };
    case 5: { chosenPos = [5127.47,2369.66,0.405084] };
};
nsv setpos chosenpos;

//spg9
randomNum = floor (random 7);
switch (randomNum) do {
    case 0: { chosenPos = [5147.31,2376.76,0.375391] };
    case 1: { chosenPos = [5144.91,2378.25,0.375388] };
    case 2: { chosenPos = [5142.57,2379.53,0.375385] };
    case 3: { chosenPos = [5148.43,2387.03,0.375397] };
    case 4: { chosenPos = [5151.17,2385.71,0.375402] };
    case 5: { chosenPos = [5153.78,2384.14,0.375365] };

};
spg setpos chosenPos;
