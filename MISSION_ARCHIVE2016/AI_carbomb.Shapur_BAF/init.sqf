#include "HZ\HZ_init.sqf"; //Hoizen stuff

{
	[[_x, bluforTrig]] call HZ_fnc_setupCarbomb;
} foreach [carbomb1,carbomb2,carbomb3,carbomb4];
