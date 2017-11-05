// convoyDefend.sqf
// © OCTOBER 2013 - norrin
// Tested with Development Build 1.05111581

readMe

Thanks to W0lle for the idea behind this one

To use: 

1. Add the code from the init.sqf into your mission init.sqf 
2. copy the convoyDefend folder from the test mission into your mission directory.
3. Create a convoy of AI vehicles, not grouped, spaced about 40 metres apart along a road, make sure each vehicle is named in the editor
4. Add markers on the map that you want the convoy to move through.  Note the number of these required depend on the straightness of the road. Tanks in particular are notorious for going cross country so you may need a few more of these if there are tanks in the convoy. You may also want to increase the skill of the AI vehicles as this may help their path finding.  Finally, W0lle tells me that the convoys don't like crossing bridges so you may want to avoid these.

Its also a good idea to fly the convoy route with the convoy to check that you don't need extra moveTo markers

The parameters in the script-call are:

1. An array of moveTo Markers for the convoy eg. ["pos1","pos2","pos3","pos4"]
2. An array that contains the names of the vehicles in the convoy eg. [c1,c2,c3,c4,c5,c6]
3. A boolean var - false if you want the convoy to remain where it is attacked or true if you want it to restart once the encounter is over.

If you destroy any of the vehicles in the convoy, then the other vehicles will stop and all units on board except the gunners will disembark and assume combat behaviour.

Theoretically you can have a convoy of any size you like but its only been checked for a convoy of up to 8 vehicles.

License:  These scripts are not to be altered or used for commercial or military purposes without the author's prior consent.
