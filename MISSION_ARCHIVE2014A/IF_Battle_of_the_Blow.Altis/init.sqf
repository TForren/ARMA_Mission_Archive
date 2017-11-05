
ExecVM "briefing.sqf";
0 setFog [1, .12, 45.8];

// LOADING TEXT

	switch (side player) do {
		case blufor: {
			"opstart" setmarkeralphalocal 0;

		};
		case opfor: {
			"blustart" setmarkeralphalocal 0;

		};
		default {};
	};
