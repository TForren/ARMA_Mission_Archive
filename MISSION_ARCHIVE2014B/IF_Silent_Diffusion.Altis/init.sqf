
ExecVM "briefing.sqf"; 
0 setFog [0.23, .5, 6.8];

//Count how many objectives are complete:
completed = 0;



// LOADING TEXT

if (time < 15) then
{  
    [] Spawn {
        cutText ["","BLACK FADED",99];
        waitUntil{!(isNil "BIS_fnc_init")};
        [str ("Altis") , "0" + str(date select 1) + "-" + str(date select 2) + "-" + str(date select 0), str("Silent Diffusion")] spawn BIS_fnc_infoText;
        sleep 8; 
        cutText ["","BLACK IN",10];
    };
};

if (isServer) then {
{
_x setDamage 1;
sleep 0.01;
} forEach (getPos generator nearObjects ["Lamps_Base_F", 500]) + (getPos generator nearObjects ["PowerLines_base_F", 500]);
};


//TIMER
END_TIME = 2100; //When mission should end in seconds.

if (isServer) then {
    [] spawn 
    {
                ELAPSED_TIME  = 0;
        START_TIME = diag_tickTime;
        while {ELAPSED_TIME < END_TIME} do 
        {
            ELAPSED_TIME = diag_tickTime - START_TIME;
            publicVariable "ELAPSED_TIME";
            sleep 1;
        };
    };
};


if!(isDedicated) then
{
    [] spawn 
    {
        while{ELAPSED_TIME < END_TIME } do
        {
            _time = END_TIME - ELAPSED_TIME;
            _finish_time_minutes = floor(_time / 60);
            _finish_time_seconds = floor(_time) - (60 * _finish_time_minutes);
            if(_finish_time_seconds < 10) then
            {
                _finish_time_seconds = format ["0%1", _finish_time_seconds];
            };
            if(_finish_time_minutes < 10) then
            {
                _finish_time_minutes = format ["0%1", _finish_time_minutes];
            };
            _formatted_time = format ["%1:%2", _finish_time_minutes, _finish_time_seconds];
            
            hintSilent format ["Time left:\n%1", _formatted_time];
            sleep 1;
        };
    };
};  