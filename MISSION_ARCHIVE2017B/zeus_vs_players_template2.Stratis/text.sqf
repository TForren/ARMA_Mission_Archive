disableSerialization;
//Make a dialog
ok = createDialog "RscTestA";

//pause and wait for the resource
sleep 1;

//Get the dialog display (a viewport)
_display = findDisplay 888;

if (str (_display) != "no display") then 
{
	hint "FOUND DISPLAY 888";
	_ChildControl = _display displayCtrl 181;
	sleep 1;
        //Move it
	_ChildControl ctrlSetPosition [0.5, 0.5];

        //You need this to cue animation -- will smoothly animate to new position.  Could use zero here
	_ChildControl ctrlCommit 1;
	
};