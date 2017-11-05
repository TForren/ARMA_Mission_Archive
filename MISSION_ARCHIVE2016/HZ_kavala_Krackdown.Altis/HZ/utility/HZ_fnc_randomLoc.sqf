/*
By Hoizen
randomLoc
returns a random point in the given trigger
INTPUT: [trigger]
OUTPUT: [x,y,0]
*/

_params = (_this select 0);
_trigger = _params select 0;


_home = getpos _trigger; //get location of trigger
_homeX = (_home select 0);
_homeY = (_home select 1);
_area = triggerArea _trigger; //get area of trigger
_areaX = (_area select 0);
_areaY = (_area select 1);
	
	
//pick random point
_randX = (random (_areaX)*2 - _areaX);
_randY = (random (_areaY)*2 - _areaY);

_finalX = _homeX - _randX;
_finalY = _homeY - _randY;

//return value
[_finalX,_finalY,0];