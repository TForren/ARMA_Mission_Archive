private ["_params", "_insertionType"];

_params = _this select 3;
requestedInsertionType = _params select 0;

if (sidePlayer == attackerSide) then
{
	"mrkAZone" setMarkerPosLocal objPos;
	"mrkAZone" setMarkerAlphaLocal 1;
	onMapSingleClick "[_pos] call aPosHandler;";
	hint (format [localize "STR_ClickMapForInsertion", localize (format ["STR_%1", requestedInsertionType])]);
	
}
else
{
	"mrkDZone" setMarkerPosLocal dZonePos;
	"mrkDZone" setMarkerAlphaLocal 1;
	onMapSingleClick "[_pos] call dPosHandler";
	hint ((localize "STR_ClickMapObjectivePosition") + ".");
};