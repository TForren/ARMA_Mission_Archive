while {alive hq_blu1} do {
	waitUntil {sleep 2; player distance hq_blu1 < 15};
	onEachFrame {
	drawIcon3D ["\a3\ui_f\data\gui\cfg\hints\Commanding_ca.paa", [0.2,1,0.2,1], [getPos hq_blu1 select 0,getPos hq_blu1 select 1,(getPos hq_blu1 select 2)+2], 1, 1, 0, "Headquarters", 1, 0.025, "TahomaB"];
	};
	sleep 0.1;
	
	waitUntil {sleep 0.2; player distance hq_blu1 > 15};
	onEachFrame {};	
};