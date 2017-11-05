


if (commandpointsblu1>=1) exitWith  
{
  commandpointsblu1 = commandpointsblu1 - 1;
  publicVariable "commandpointsblu1";
  Savegame;
  sleep 0.5;
  ["sitrepinfo",["SITREP","Game has been saved"]] call bis_fnc_showNotification;
};

  ["sitrepinfo",["SITREP","Not enough Command Points (1CP)"]] call bis_fnc_showNotification;