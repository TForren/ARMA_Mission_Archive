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
player forceAddUniform "U_B_Protagonist_VR";
player addGoggles "G_Goggles_VR";

comment "Add weapons";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
