titleText["","BLACK IN",5];
enableSentences false;player disableConversation true;player setVariable["BIS_noCoreConversations",true];player setSpeaker "NoVoice";player enableMimics false;
removeAllWeapons player;removeGoggles player;removeHeadgear player;removeVest player;removeUniform player;removeAllAssignedItems player;clearAllItemsFromBackpack player;removeBackpack player;
player setUnitLoadout(player getVariable["Saved_Loadout",[]]);
player addItem "FirstAidKit";
if(!isClass(configFile>>"cfgPatches">>"ace_common"))then{execVM "common\client\strobe\strobe.sqf";};
if(vehicleVarName player in CASarray)then{[MaxD,Alock,num]execVM "common\client\CAS\addAction.sqf";};