#define TransmitterInit TransmitterArray=[]
#define TM_NAME(ID) _Transmitter_##ID##_name
#define TM_CHANNELS(ID) _Transmitter_##ID##_channels
#define TM_OBJECT(ID) _Transmitter_##ID##_object       
#define TM_MAXPORTS(ID) _Transmitter_##ID##_maxports
#define TM_ONESTATION(ID) _Transmitter_##ID##_onestation

#define CreateTransmitter(ID) TransmitterArray=TransmitterArray+[[_Transmitter_##ID##_name,_Transmitter_##ID##_channels,_Transmitter_##ID##_object,_Transmitter_##ID##_maxports,_Transmitter_##ID##_onestation]]

#define get_TM_NAME(ID) ((TransmitterArray select ID) select 0)
#define get_TM_CHANNELS(ID) ((TransmitterArray select ID) select 1)
#define get_TM_OBJECT(ID) ((TransmitterArray select ID) select 2)
#define get_TM_MAXPORTS(ID) ((TransmitterArray select ID) select 3)
#define get_TM_ONESTATION(ID)  ((TransmitterArray select ID) select 4)

#define set_TM_NAME(ID) (TransmitterArray select ID) set[0,_Transmitter_##ID##_name]
#define set_TM_CHANNELS(ID) (TransmitterArray select ID) set[1,_Transmitter_##ID##_channels]
#define set_TM_OBJECT(ID) (TransmitterArray select ID) set[2,_Transmitter_##ID##_object]
#define set_TM_MAXPORTS(ID) (TransmitterArray select ID) set[3,_Transmitter_##ID##_maxports]
#define set_TM_ONESTATION(ID)(TransmitterArray select ID) set[4,_Transmitter_##ID##_onestation]