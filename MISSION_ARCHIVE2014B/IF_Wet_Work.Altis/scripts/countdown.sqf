publicVariable "healed";
curtime = 1300;
healed = 0;

while {(alive hvt)} do {
	curtime = curtime - 1;
	sleep 1;
	//hint format["%1 Seconds Left",curtime];
}; 