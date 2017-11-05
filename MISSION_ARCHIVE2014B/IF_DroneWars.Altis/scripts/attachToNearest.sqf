_attached = false;

if (_attached) then 
	{"It's true"} else {"It's false"};

_Nearest = nearestObjects [toilet, ["Car"], 5];
toilet attachTo [(_Nearest select 0),[0,0,1]]; 