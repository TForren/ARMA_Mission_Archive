[player] execVM "anyspectator\specta.sqf";

removeAllWeapons


comment "Exported from Arsenal by Hoizen";

comment "Remove existing items";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

comment "Add containers";
player forceAddUniform "AV_CombatUniform2_UCP";


