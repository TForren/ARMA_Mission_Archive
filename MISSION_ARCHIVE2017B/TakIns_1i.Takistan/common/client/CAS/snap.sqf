private "_handled";
_handled=false;
switch(_this select 1)do{
case 30:{if(doSnap)then{
doSnap=false;}else{doSnap=true;};};
case 1:{closeDialog 0;};
_handled;};