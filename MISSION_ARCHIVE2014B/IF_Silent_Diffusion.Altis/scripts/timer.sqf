END_TIME = 3600; //When mission should end in seconds.

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