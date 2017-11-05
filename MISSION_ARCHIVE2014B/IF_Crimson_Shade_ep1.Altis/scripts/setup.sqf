// setup script that takes params based on the previous mission 
// Hoizen
_truckresult = _this select 0;

switch (_truckresult) do
{
   case 0:
   {
		player createDiaryRecord ["Diary", ["No Trucks Destroyed", "Due to the spectacular performance by SPECTER and KNIGHT during the launch of the operation, we have a fully functional FOB with all benefits"]];
   };
   case 1:
   {
		player createDiaryRecord ["Diary", ["One Truck Destroyed", "Unfortunately we lost a truck during the launch of the operation. After a sitrep, turns out we lost the rearm truck so no vehicle rearming until we can get
			another chopper in. The rearm truck also had our launchers in there so no AA or AT for now."]];
		deleteVehicle paramTruck;
		deleteVehicle launchers;
		deleteVehicle fobChopper1;
  };

};   

