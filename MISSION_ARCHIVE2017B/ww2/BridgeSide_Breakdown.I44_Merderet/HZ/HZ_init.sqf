//Set face to Ironfront equivilent if available
try {
	_newFace = "LIB_" + (face player) + "_Dirt";
	[player, _newFace] remoteExec ["setFace", 0, netId player] ;
} catch {
	//oh well
};