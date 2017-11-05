
if(isServer) then {

	//HVT start position
	_initialLeaderPos = getPos hvt;
	Number = floor(random 5);
		marker = Switch (Number) do {
			case 0: {"Start0"};
			case 1: {"Start1"};
			case 2: {"Start2"};
			case 3: {"Start3"};
			case 4: {"Start4"};
		};
	pos = getmarkerpos marker;
	//Suitcase 1
		Number = floor(random 6);
		can1 = Switch (Number) do {
			case 0: {c1};
			case 1: {c2};
			case 2: {c3};
			case 3: {c4};
			case 4: {c5};
			case 5: {c6};
		};
	pos1 = getpos can1;
	case1 setpos pos1;

	//Suitcase 2
		Number = floor(random 6);
		can2 = Switch (Number) do {
			case 0: {c7};
			case 1: {c8};
			case 2: {c9};
			case 3: {c10};
			case 4: {c11};
			case 5: {c12};
			case 6: {c13};
		};
	pos = getpos can2;
	case2 setpos pos;
	
	//Suitcase 3
		Number = floor(random 6);
		can3 = Switch (Number) do {
			case 0: {c14};
			case 1: {c15};
			case 2: {c16};
			case 3: {c17};
			case 4: {c18};
			case 5: {c19};
			case 6: {c20};
		};
	pos = getpos can3;
	case3 setpos pos;
};


		
