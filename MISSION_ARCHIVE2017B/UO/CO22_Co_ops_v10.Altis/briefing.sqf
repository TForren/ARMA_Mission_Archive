_briefing = [];

#define NEWTAB(NAME) _briefing set [count _briefing, ["Diary",[NAME,"

#define ENDTAB "]]];

#define DISPLAYBRIEFING() \
_size = count _briefing - 1; \
for '_i' from 0 to _size do \
{ \
	player createDiaryRecord (_briefing select _size - _i); \
};

NEWTAB("I. Situation:")
Altis is occupied by Chedaki forces. You are part of US Army unit tasked with eliminating all hostile forces on Altis.
ENDTAB;

NEWTAB("A. Enemy Forces:")
<br/>1. Strength
<br/>Unknown.
<br/>
<br/>2. Locations
<br/>Major settlements on Altis.
<br/>
<br/>3. Weapons
<br/>Most likely soviet era small arms weaponry.
<br/>
<br/>4. Equipment
<br/>Tanks, APCs, SPAAGs, armed technicals, soviet era vehicles.
ENDTAB;

NEWTAB("B. Friendly Forces:")
<br/>1. Disposition:
<br/>n/a
<br/>
<br/>2. Higher Units Mission:
<br/>n/a
<br/>
<br/>3. Composition:
<br/>n/a
<br/>
<br/>4. Strength:
<br/>n/a
<br/>
<br/>5. Supporting fires:
<br/>None.
<br/>
<br/>6. Attachments/Detachments:
<br/>None
<br/>
<br/>7. Civilians
<br/>No civilians in the area.
ENDTAB;

NEWTAB("II. Mission:")
Eliminate all Chedaki forces on Altis.
ENDTAB;

NEWTAB("III. Execution:")
Commander's discretion.
ENDTAB;

NEWTAB("IV. Service Support:")
Equipment and weapons found in base.
ENDTAB;

NEWTAB("V. Command & Signal:")
Long Range 1 - 1st Platoon Net/air net
<br/>Short Range 1 - 1st Squad Net
<br/>Short Range 2 - 2nd Squad Net
<br/>
<br/>Callsigns:
<br/>1 Squad - 1'1
<br/>2 Squad - 1'2
<br/>Pilots - Vortex
ENDTAB;

NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Time depending on parameter, weather random.
<br/>No end conditions.
<br/>ACE revive enabled with 300 second timer.
<br/>Players can respawn and teleport to MHQ.
<br/>
<br/>Players in unconscious state need to be treated with PAK in order to wake up. 300 seconds life timer can be extended by applying CPR.
<br/>
<br/>Paradroping vehicles from C130 is broken, don't use it.
<br/>
<br/>Use of enemy assets and vehicles is allowed.
<br/>
<br/>mission created by alganthe, edited by BlackHawk
ENDTAB;

NEWTAB("Game Mastering") //This is shown for everyone
Game mastering is available for any logged in admin.
ENDTAB;

DISPLAYBRIEFING();