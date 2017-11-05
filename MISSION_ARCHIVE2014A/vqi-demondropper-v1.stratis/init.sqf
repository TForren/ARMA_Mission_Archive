//-W-I-P-------> VQI-DemonDropper-v1 <---------W-I-P-//
//----------by R. Von Quest aka the Goblin-----------//

cutText ["", "BLACK FADED", 999];
sleep 2;
hint "Check Map & Briefing";

if (isServer) then {
    if (random 1 <= 0.98) then {
        myNewTime = 6.5 + random 12; // day
    } else {
        if (random 1 <= 0.66) then {
            myNewTime = random 5.5; // night 
        } else {
            myNewTime = 18.5 + random 5.5; // evening
        };
    };
    publicVariable "myNewTime";
};    
waitUntil{not isNil "myNewTime"};
skipTime myNewTime; 

cutText ["", "BLACK IN", 15];


//Briefing
player createDiaryRecord ["Diary",["H.A.L.O Training","1. Check the computer for today's JUMP POINT.<br/><br/>2. Plan your jump and Gear-Up as required.<br/><br/>3. Exit aircraft and track to the nearest DROPZONE.<br/><br/>-DO NOT Jump too soon! You will be off-course. Wait for the GREEN Light OR the Go! Go! Go!<br/><br/>-Wait for the Bell and the 'on the green' audio before opening the Ramp. The aircraft must de-pressurize first.<br/><br/>Today's practise will NOT be graded. Good Luck!"]];

// Hide helper arrows
{hideObject _x} forEach allMissionObjects "Helper_Base_F";

//Hangar lights & Hangar by cobra4v320
private ["_light","_lightPos"];
{
    _lightPos = _x;
    _light = "#lightpoint" createVehicleLocal (position _lightPos);
    _light setLightAmbient [0/255, 15/255, 15/255];   
    _light setLightColor [255/255, 215/255, 80/255];
    _light setLightBrightness 1.0;
    _light attachTo [_lightPos, [0,0,0]];
    
} foreach [BIS_mrkLight01, BIS_mrkLight02, BIS_mrkLight03, BIS_mrkLight04];


sleep 10;

[[ ["W-I-P<br/>VQI-DemonDropper-v1<br/>","<t align = 'right' shadow = '1' size = '0.7'  font='PuristaBold'>%1</t><br/>"] ],-safezoneX,1.1] spawn BIS_fnc_typeText;
