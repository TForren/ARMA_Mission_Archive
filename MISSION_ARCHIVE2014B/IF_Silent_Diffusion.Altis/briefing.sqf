player createDiaryRecord ["Diary", ["CREDITS", "Creator: Hoizen."]];

player creatediaryrecord ["Diary",["Briefing","

Silent Diffusion<br/>
Opfor have set up in the south section of Neri as a staging area. Reports of weapon shipments, Supplies, checkpoint, and possible intel scattered across the area.

BLUFOR: Sneak in and complete at least 3 of the 5 assigned tasks. (HVT can be silently killed with action menu)

OPFOR: Defend the 5 tasks.

"]];

task1 = player createsimpletask ["Intel"];
task1 setsimpletaskdescription ["<br/>OPFOR Intel located <marker name='task1'>here</marker<br/>. Blufor will attempt to steal.","Intel", "task1"];
player setcurrenttask task1; 

task2 = player createsimpletask ["HVT"];
task2 setsimpletaskdescription ["<br/>OPFOR HVT located <marker name='task2'>here</marker<br/>. Blufor will attempt to eliminate.","HVT", "task2"];

task3 = player createsimpletask ["Patrol Boat"];
task3 setsimpletaskdescription ["<br/>Patrol Boat located <marker name='task3'>here</marker<br/>. Blufor will attempt to disable it.","Patrol Boat", "task3"];

task4 = player createsimpletask ["Prototype Vehicle"];
task4 setsimpletaskdescription ["<br/>Prototype Vehicle being held <marker name='task4'>here</marker<br/>. Bluefor will attempt to disable it.","Prototype Vehicle", "task4"];

task5 = player createsimpletask ["Weapons Shipment"];
task5 setsimpletaskdescription ["<br/>Opfor weapons shipment located <marker name='task5'>here</marker<br/>. Bluefor will attempt to plant a tracker.","Weapons Shipment", "task5"];