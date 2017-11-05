#include "Stations.hpp"
#include "Radios.hpp"
//Calculats ComMatrix
//      S1  S2  S3 
// T1  A11 A12  A13
// T2  A21 A22  A23
// 
// S are Stations T are the Transmitter you can use
// if S1 is off or cant be used you get a reduce Com Matrix A_ij
// if you only have T1 you wont be able to use Channels contained by A_2i 
//this only needs to be calculated once transmitters and stations has been set up
private["_ComMatrix","_ChMatrix","_i"];
_ComMatrix=[];
for[{_i=0},{_i<(count TransmitterArray)},{_i=_i+1}]do{
_TransmitChannelArray=[];
	for[{_j=0},{_j<(count StationArray)},{_j=_j+1}]do{
	_TransmitChannelArray=_TransmitChannelArray+[(get_ST_CHANNELS(_j)-(get_ST_CHANNELS(_j) - get_TM_CHANNELS(_i)))];};
_ComMatrix=_ComMatrix+[_TransmitChannelArray];
};
_ComMatrix