if (isServer) exitWith {

[] spawn {
	sleep 3;
	execVM"HZ\Yelling\HZ_Yelling_init.sqf";
};
 

}; //server