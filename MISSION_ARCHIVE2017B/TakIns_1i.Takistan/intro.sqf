if(isDedicated)exitWith{};
if(hasInterface)then{
private["_cam","_camx","_camy","_camz","_object"];
titleText["T A K I S T A N   I N S U R G E N C Y","BLACK IN",9999];
playSound "introMusic";
waitUntil{!(isNull player)};
sleep 0.2;
_object=camObj;
_camx=getPosATL _object select 0;
_camy=getPosATL _object select 1;
_camz=getPosATL _object select 2;
_cam="camera" camCreate[_camx -1,_camy + 0,_camz+0];
_cam camSetTarget _object;
_cam cameraEffect["Internal","Back"];
_cam camCommit 0;
sleep 3.5;
titleText["Eliminate Taliban rebels and find intel to destroy caches in red grid squares.","BLACK IN",10];
sleep 10;
_cam cameraEffect["Terminate","Back"];
camDestroy _cam;};
//hintSilent "TeamSpeak: ATCAG.TS.NFOSERVERS.COM";