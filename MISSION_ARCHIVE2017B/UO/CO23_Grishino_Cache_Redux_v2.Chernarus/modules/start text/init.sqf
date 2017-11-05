#include "settings.sqf"

//The output for example: 17:23 on the 22/02 is:
//1723H, 22nd February
//area
//island

private["_month", "_hour", "_min","_year"];

switch (date select 1) do {
	case 1: {_month = "January"};
	case 2: {_month = "February"};
	case 3: {_month = "March"};
	case 4: {_month = "April"};
	case 5: {_month = "May"};
	case 6: {_month = "June"};
	case 7: {_month = "July"};
	case 8: {_month = "August"};
	case 9: {_month = "September"};
	case 10: {_month = "October"};
	case 11: {_month = "November"};
	case 12: {_month = "December"};
};

_day = format["%1", date select 2];

if (date select 3 < 10) then {
	_hour = "0" + format["%1", date select 3];
}
else {
	_hour = format["%1", date select 3];
};

if (date select 4 < 10) then {
	_min = "0" + format["%1", date select 4];
}
else {
	_min = format["%1", date select 4];
};

_year = format["%1", date select 0];

[format["%1, %2 %3, %4", (_hour + _min), _month, _day, _year], AREA, MAP] spawn BIS_fnc_infoText; //lel murcan dates