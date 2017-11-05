Because of some bullshit, these can't be in a switch case anymore. Breaks the ppeffects.
This test mission has the minimum stuff needed for sandstorm. Comment out blocks in weather.sqf
to set light, medium, or heavy sandstorm (or comment all out for no effect)

To add this to any mission, copy weather.sqf to your mission folder and add:

#include "weather.sqf";

in your mission's init.sqf