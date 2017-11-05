_ctp=[minaret0,minaret1,minaret2,minaret3,minaret4,minaret5,minaret6,minaret7,minaret8,minaret9,minaret10,minaret11];
//Replace with positions of minarets and create invisHelipads on pos with say3D, then delete after sound is done
if(isDedicated || isServer)then{
if(round(random 2)==1)then{{[_x,"adhan"]remoteExec["say3D",0];}forEach _ctp;};sleep 3600;
{[_x,"adhan"]remoteExec["say3D",0];}forEach _ctp;sleep 3600;
{[_x,"adhan"]remoteExec["say3D",0];}forEach _ctp;sleep 3600;
{[_x,"adhan"]remoteExec["say3D",0];}forEach _ctp;sleep 3600;
{[_x,"adhan"]remoteExec["say3D",0];}forEach _ctp;sleep 3600;
{[_x,"adhan"]remoteExec["say3D",0];}forEach _ctp;sleep 3600;
{[_x,"adhan"]remoteExec["say3D",0];}forEach _ctp;};