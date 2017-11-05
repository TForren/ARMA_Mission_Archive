//------------------------------
// Script: talk.sqf
// Writer: Cuel
// Created: 2013-03-10
// Edited: 2013-03-14
//------------------------------
//this addAction["<t color='#A1C7A2'>[- Talk -]</t>","scripts\talk.sqf",0, 100, true, true, "","player distance general < 4 && alive general && player == vip"];

(_this select 0) removeAction (_this select 2);

_unit = general;
_exit = false;
hint "Stay close to the general";

sleep 3;
cutText ["General: Hello good you could make it!.","PLAIN"];
sleep 2;
_sentarr = [
	"The story influences the stereotyped soup.",
	"The night trains the fiction.",
	"The disease localizes the push.",
	"The six existence allocates the love.",
	"The request confers the cagey desire.",
	"Sue will accept the treasure, right?",
	"John attained an apple.",
	"A blarp in the bush is worth two in the hand",
	"A kula loves an exciting ride",
	"We're quite happy to cut a drucken into many small useful pieces",
	"The derts will get that for you",
	"That cashier doesn't have a new belt.",
	"Mark doesn't own a cold pair of scissors.",
	"I don't have a pair of scissors.",
	"This isn't Elizabeth's suitcase.",
	"These motorcycles belong to those managers.",
	"Abraham doesn't own a dry pen.",
	"The politicians don't have any new photographs."
];

for "_i" from 0 to 6 do
{
	if (player distance _unit > 10) exitWith {_exit = true};
	_nr = _sentarr select (floor (random (count _sentarr)));
	cutText [format ["General: %1",_nr],"PLAIN"];
	_sentarr = _sentarr - [_nr];
	sleep 6 + (random 5);
};
if (_exit) exitWith {hint "STAY CLOSE to the general!!"; _unit addAction["<t color='#A1C7A2'>[- Talk -]</t>","scripts\talk.sqf",0, 100, true, true, "","player distance general < 4 && alive general && player == vip"]; };

cutText [ "General: Good to see you. Good bye!!","PLAIN"];

CUL_talked = true; publicVariable "CUL_talked";
