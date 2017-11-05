// F3 - TFR Clientside Initialisation
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// WAIT FOR TFR
// Give TFR some time to initialise

sleep 3;

// ====================================================================================

// CARRY OUT CLEANUP PROCEDURE, FREQUENCY SETUP AND RADIO HANDOUT
// Clear the unit's inventory of any added radios, just in case the defaults change
// or a mistake is made with loadouts. Then, set the frequency network up according
// to the settings in tfr_settings.sqf and assign radios depending on unit loadout.

// Check player is alive
if(alive player) then {

  // Remove all existing radios
//  [] call f_fnc_tfr_removeRadios; // So F3 separates Radios from gear because 1. parameter for different radio systems and
									// 2. TFAR adds radios a few seconds into the mission. Instead of haing people run around naked,
									// F3 opts to do the following in this order: 
									//	Assign Gear(uniform,vest,gear,etc) > Wait for TFAR to init > Remove all radios > Add defined radios. 
									// But fuck that because radio assignment should really be with the gear scripts. 

  // Wait for gear assignation to take place
  waitUntil{(player getVariable ["f_var_assignGear_done", false])};

  // Add radios to each unit
//  [] call f_fnc_tfr_addRadios; - NO Fuck you, This should be done in the gear script. -With love, Hoizen

  // Configure spectator chat
  [] call f_fnc_tfr_configureSpectatorChat;

} else {

  // No need to fix radios, just move into spectator chat
  [] call f_fnc_tfr_configureSpectatorChat;

};

// ====================================================================================
