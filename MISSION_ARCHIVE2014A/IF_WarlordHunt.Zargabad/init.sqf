enablesaving [false, false];
tf_no_auto_long_range_radio = true;

[8, 500, 4] execVM "MAD_civilians.sqf";
[3, 500, 1000] execVM "MAD_traffic.sqf";

ExecVM "briefing.sqf"; 
ExecVM "scripts\startpos.sqf";

	switch (side player) do {
		case blufor: {
			"Startmkr1" setmarkeralphalocal 0;
			"Startmkr2" setmarkeralphalocal 0;
			"Startmkr3" setmarkeralphalocal 0;
			"Startmkr4" setmarkeralphalocal 0;
		};
		case opfor: {
		};
	};
	
hvt moveInCargo truck;
op1 moveInCargo truck;
op2 moveInCargo truck;
op3 moveInCargo truck;
"opstart" setmarkerpos (getpos truck);


