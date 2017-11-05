


if (commandpointsblu1>=1) exitWith  
{
  commandpointsblu1 = commandpointsblu1 - 1;
  publicVariable "commandpointsblu1";
  Savegame;
  sleep 0.5;
  ["sitrepinfo",["SITREP","The game has been saved"]] call bis_fnc_showNotification;
  PAPABEAR sidechat format["SITREP received, we have %1 command points and our army power is at %2",commandpointsblu1,WARCOM_blufor_ap];
};

  ["sitrepinfo",["SITREP","Not enough Command Points (1CP)"]] call bis_fnc_showNotification;