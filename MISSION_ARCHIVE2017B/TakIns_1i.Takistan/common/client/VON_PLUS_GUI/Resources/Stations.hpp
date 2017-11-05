/////////////////////////////
// Station function macros //
/////////////////////////////
#define StationsInit StationArray=[]
#define ST_NAME(ID) _Station_##ID##_name
#define ST_CHANNELS(ID) _Station_##ID##_channels
#define ST_FACTION(ID) _Station_##ID##_faction
#define ST_OBJECT(ID) _Station_##ID##_object
#define ST_ACTIVE(ID) _Station_##ID##_active
#define ST_FACONLY(ID) _Station_##ID##_faconly

#define CreateStation(ID) StationArray=StationArray+[[_Station_##ID##_name,_Station_##ID##_channels,_Station_##ID##_faction,_Station_##ID##_object,_Station_##ID##_active,_Station_##ID##_faconly]]

#define get_ST_NAME(ID) ((StationArray select ID) select 0)
#define get_ST_CHANNELS(ID) ((StationArray select ID) select 1)
#define get_ST_FACTION(ID) ((StationArray select ID) select 2)
#define get_ST_OBJECT(ID) ((StationArray select ID) select 3)
#define get_ST_ACTIVE(ID) ((StationArray select ID) select 4)
#define get_ST_FACONLY(ID) ((StationArray select ID) select 5)


#define set_ST_NAME(ID) (StationArray select ID) set[0,_Station_##ID##_name]
#define set_ST_CHANNELS(ID) (StationArray select ID) set[1,_Station_##ID##_channels]
#define set_ST_FACTION(ID) (StationArray select ID) set[2,_Station_##ID##_faction]
#define set_ST_OBJECT(ID) (StationArray select ID) set[3,_Station_##ID##_object]
#define set_ST_ACTIVE(ID) (StationArray select ID) set[4,_Station_##ID##_active]
#define set_ST_FACONLY(ID) (StationArray select ID) set[5,_Station_##ID##_faconly]

