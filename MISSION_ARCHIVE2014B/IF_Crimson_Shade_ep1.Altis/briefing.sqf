player createDiaryRecord ["Diary", ["CREDITS", "Creator: Hoizen."]];

player creatediaryrecord ["Diary",["Briefing","

Crimson Shade Episode 1<br/>
Scouts have reported mortar and AA positions stationed on the hills to the North West. It should be pretty obvious the kind of threat these installations pose on FOB Phoenix and logistics. We'll need to clear these positions out
before we can launch any future operations. 
"]];

task1 = player createsimpletask ["mp1"];
task1 setsimpletaskdescription ["Eliminate Mortar Position #1 found <marker name='m1'>here</marker<br/>.","Mortar Position #1", "task1"];
player setcurrenttask task1; 

task2 = player createsimpletask ["mp2"];
task2 setsimpletaskdescription ["Eliminate Mortar Position #2 found <marker name='m2'>here</marker<br/>.","Mortar Position #2", "task2"];

task3 = player createsimpletask ["mp3"];
task3 setsimpletaskdescription ["Eliminate Mortar Position #3 found <marker name='m3'>here</marker<br/>.","Mortar Position #3", "task3"];

task4 = player createsimpletask ["AA"];
task4 setsimpletaskdescription ["Eliminate AA Position found <marker name='aa'>here</marker<br/>.","AA Position", "task4"];

task5 = player createsimpletask ["rtb"];
task5 setsimpletaskdescription ["Extract back to <marker name='fob'>FOB Phoenix</marker<br/>.","Extract", "task5"];

