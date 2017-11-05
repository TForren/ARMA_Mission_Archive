#include "settings.sqf"

if (!isDedicated) then {
	"serverDate" addPublicVariableEventHandler { //Runs only when the "serverDate" public variable is changed
		_hour = (_this select 1) select 0;
		_min = (_this select 1) select 1;
		
		if (_hour != date select 3 || (abs(_min - (date select 4)) > MAXDESYNC)) then { //Compares server hour and min to local with a threshold of MAXDESYNC
			setDate [date select 0, date select 1, date select 2, _hour, _min]; //Local time is set to local date with server hour and min
		};
	};
};