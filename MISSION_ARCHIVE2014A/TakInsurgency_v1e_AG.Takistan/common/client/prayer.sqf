_gamelogic="logic" createVehicle [8530.73,2392.26,5.0];
_times_to_play = [5, 12, 15, 18, 19];
_played_times = [0, 0, 0, 0, 0];
_i = 0;
while {true} do
{
   _i = 0;
   {
      if (abs (dayTime - _x) < 0.05) then
      {
         if ((_played_times select _i) == 0) then
         {
            _played_times set [_i, 1];
            nul = [_gamelogic,"Adhan"] call mp_Say3D_fnc;
         };
      };
      _i = _i + 1;
   } forEach _times_to_play;  

   if (dayTime > ((_times_to_play select 4) + 0.1)) then
   {
      _played_times = [0, 0, 0, 0, 0];
   };

   Sleep 10;
};