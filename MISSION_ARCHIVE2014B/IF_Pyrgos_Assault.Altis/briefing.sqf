player createDiaryRecord ["Diary", ["CREDITS", "Creator: Hoizen. Special thanks n' stuff goes to Virtual Ammo Box"]];

player creatediaryrecord ["Diary",["Briefing","

Pyrgos Assault<br/>
Intel suggests a pending CSAT assault on FOB IRONSIDE in the coming hours. Scouts have reported the presence of a CSAT FARP <marker name='farp1'>South</marker<br/> of Pyrgos currently 
being used to stage two Mi-48s to be used against FOB IRONSIDE. The pilots were seen around the <marker name='op'>artillery</marker<br/> most likely being briefed for the attack on IRONSIDE while their Mi-48s are
being serviced at the FARP.
 
Specter-2 will be infiltrating before the assault begins to neutralize a known <marker name='task1'>AA position</marker<br/> 
 to allow Helion-1 to operate freely in the area. Once the AA is destroyed, Mire-1 can be flown over to Pyrgos by Helion-1 to eliminate CSAT artillery pieces in the heart of Pyrgos. 
During this time Specter-2 will attempt to intercept the pilot transport or neutralize the Mi-48s to keep them from joining the fight. 
"]];

task1 = player createsimpletask ["Specter-2: Destroy AA"];
task1 setsimpletaskdescription ["<br/>Destroy AA located <marker name='task1'>here</marker<br/>","Destroy AA", "task1"];
player setcurrenttask task1; 

task2 = player createsimpletask ["Specter-2: Neutralize Mi-48s"];
task2 setsimpletaskdescription ["<br/>There are two Mi-48s being serviced at <marker name='farp1'>Chelonisi</marker<br/> while the pilots are being briefed on the upcoming attack on FOB IRONSIDE.<br/>","Neutralize Mi-48s", "farp1"];

task3 = player createsimpletask ["Mire-1: Destroy artillery"];
task3 setsimpletaskdescription ["<br/>There are three self-propelled CSAT <marker name='op'>artillery</marker<br/> pieces in the heart of Pyrgos that we cannot afford to miss.<br/>","Destroy artillery", "op"];

task3 = player createsimpletask ["Extract"];
task3 setsimpletaskdescription ["<br/>Extract<br/>","Leave the AO", "blu"];