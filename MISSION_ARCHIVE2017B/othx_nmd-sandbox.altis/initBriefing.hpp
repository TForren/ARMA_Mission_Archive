/* 
* @Author:  DnA
* @Profile: http://steamcommunity.com/id/dna_uk
* @Date:    2014-04-24 09:20:06
* @Last Modified by:   DnA
* @Last Modified time: 2014-05-10 16:21:39
*/
 
//--- Skip briefing
[] spawn {

	//--- Exit if mission is already in progress
	if ( getClientState == "BRIEFING READ" ) exitWith {};

	//--- idd of GetReady display
	private "_idd";
	_idd = if( isServer ) then { 52 } else { 53 };

	//--- Wait for briefing
	waitUntil { getClientState == "BRIEFING SHOWN" };

	//--- Check if display is open
	if ( !isNull findDisplay _idd ) then {

		//--- Programatically activate the "continue" button
		ctrlActivate ( ( findDisplay _idd ) displayCtrl 1 );
		( findDisplay _idd ) closeDisplay 1;

	};

};