#include "core\briefingCore.sqf" //DO NOT REMOVE

NEWTAB("I. Situation:")
The FIA has been using Castle Thronos and Oreokastro as their head quarters. Hitting it will strike a blow to the FIA and will help us reconquer Altis.
ENDTAB;

NEWTAB("A. Enemy Forces:")
I] Composition<br/>
FIA light infantry. They are equipped with a mixture of small arms including TAR21s, F2000s and Mk200.<br/>
They are using armed offroads as static MGs to defend their position.<br/>
<br/>
II] Disposition<br/>
Garrisoning Castle Thronos and Oreokastro.<br/>
<br/>
III] Strength<br/>
1x Platoon<br/>
<br/>
IV] Most Probable Course of Action<br/>
The FIA will hold the castle and the town until combat ineffective.
ENDTAB;

NEWTAB("B. Friendly Forces:")
I] Composition<br/>
AAF platoon equipped with F2000s and MK200s.<br/>
<br/>
II] Disposition<br/>
1 platoon is standing-by <marker name='boats'>North of Castle Thronos</marker>.<br/>
<br/>
III] Attachments<br/>
None.
ENDTAB;

NEWTAB("II. Mission:")
1 platoon will clear <marker name='objA'>OBJ Alpha</marker> and <marker name='objB'>OBJ Bravo</marker> of enemy forces.
ENDTAB;

NEWTAB("III. Execution:")
I] Concept of the Operation<br/>
1 platoon must seize the <marker name='objA'>OBJ Alpha</marker> and <marker name='objB'>OBJ Bravo</marker>.<br/>
<br/>
II] Phases<br/>
A] Phase 1<br/>
Assault the Castle.<br/>
<br/>
B] Phase 2<br/>
Assault the Town.
ENDTAB;

NEWTAB("IV. Service Support:")
I] Transportation<br/>
None.<br/>
<br/>
II] Medical Evacuation<br/>
Casualties will be treated at the designated CCP by the platoon medic.
ENDTAB;

NEWTAB("V. Command & Signal:")
I] Callsigns<br/>
Platoon HQ -> 1'0<br/>
1st Squad -> 1'1<br/>
2nd Squad -> 1'2<br/>
2rd Squad -> 1'3<br/>
<br/>
II] Frequencies<br/>
A)Short Range<br/>
1'0 -> CH4<br/>
1'1 -> CH1<br/>
1'2 -> CH2<br/>
1'3 -> CH3<br/>
<br/>
B) Long Range<br/>
Platoon Net -> CH1<br/>
<br/>
III] Chain of Command:<br/>
1'0 -> 1'1 -> 1'2 -> 1'3
ENDTAB;

NEWTAB("VI. Mission notes:")
Time-limit: 90 minutes.<br/>
<br/>
<font size='18'>End Conditions:</font><br/>
- 75% INDFOR Casualties -> Mission Failure<br/>
- 95% BLUFOR Casualties -> Mission Success<br/>
- Time-limit reached -> Mission Failure<br/>
<br/>
Mission by Starfox64<br/>
Created using Olsen Framework
ENDTAB;

DISPLAYBRIEFING();