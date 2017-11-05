player createDiaryRecord ["Diary", ["CREDITS", "Creator: Hoizen. Special thanks n' stuff goes to zod for his silent takedown script"]];

player creatediaryrecord ["Diary",["Opfor Briefing","

Wet Work<br/>
We managed to find a snake slithering around behind our lines. During pursuit, we disabled his transport as he fled into a swamp. He's wounded and certainly won't last
long without proper medical treatment. I'd like to believe he'll die out here on his own but we need to make sure of it. Fan out and find the HVT. Shoot on sight. 
"]];

player creatediaryrecord ["Diary",["Blufor Briefing","

Wet Work<br/>
Saggitariut Jefferspin is critically wounded and our only option now is to locate a crate of supplies that were stashed away in this swamp. We know it is within 300m There's a remote smoke grenade attached
to the crate to help us locate it. Problem is, the clacker that activates the smoke was being carried by Richard McScrub. We had to leave his body at the Hunter during the
first attack. We need to find the cache, clacker or not. Once we locate the cache, we can call in evac from nearby Blufor and get Jefferspin out of here. He has no more than 20 minutes to live.

"]];

task1 = player createsimpletask ["OPFOR: Eliminate HVT"];
task1 setsimpletaskdescription ["<br/>Eliminate HVT<br/>","Eliminate HVT", "leave"];
player setcurrenttask task1; 

task3 = player createsimpletask ["BLUFOR: Protect HVT"];
task3 setsimpletaskdescription ["<br/>Protect HVT<br/>","Protect HVT", "leave"];