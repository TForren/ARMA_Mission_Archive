/* Briefing
 * The briefing can be defined by calling FHQ_TT_addBriefing.
 * The array is built like this.
 * The first element should be a filter (side, group, faction, or a piece of script). All units matching the 
 * filter will see the briefing
 * This is followed by pairs of strings, a head line, and an actual text.
 * Briefings are added in the order in which they appear for any unit that matches
 * the last filter.
 */
[
	west, 
		["Background",
			"The CSAT have a very important document on their next plan on what they are going to do with Stratis as a forward base for the war on Altis. Your task is to sneak inside Camp Tempest, find the documents, and steal them sneakily and stealthily. Try to remain undetected. If enemies shoot their gun, the whole base will be alerted and reinforcement will come. If a guard is alerted, they will call for reinforcements. Be as stealthy as you can be."],    
			
		["Mission",
			"Steal the suitcase inside Camp Tempest and return to the SUV."],
            
        ["Notes on Stealth",
        	"Do not let enemy fire their weapons. It will trigger the alarm.<br/><br/>If foot patrols are alerted for more than 10 seconds, they will call the alarm. If a foot patrol is alerted, kill him before he calls the alarm.<br/><br/>It is best to avoid shooting enemies and simply try to walk around them. Attacking one guard can alert other guards around the area causing you to need to kill all the guards in 10 seconds. The chances of you killing all of those guards before the alarm goes off is unlikely.<br/><br/>You're better spending your ammo on lightbulbs."],
            
        ["Notes on Difficulty",
        	"Easy: You play as a specops with nightvision, more ammo, Nightstalker and SOS optics in the SUV, and a rangefinder.<br/><br/>Medium: You play as guerilla with no nightvision, you have binoculars, you have some ammo, but you have just an SOS optic in the SUV.<br/><br/>Hard: You play as undercover civilians with barely any ammo, no nightvision, binoculars, or GPS. There's only First Aid Kits in the SUV."],

		["Hints",
        	"Try not to shoot people. Even with silenced weapons. Don't even think about going for the stealth kill. It's Arma, everyone will freak out. Most of the time you might just get caught. Just shoot lightbulbs... carefully."],    
									
		["Credits",
			"Mission by Phantom Six.<br/>FHQ Task Tracker by Varanon.<br/>Base Template by Wookie.<br/>Wounding System by TcB Psycho."]
    
] call FHQ_TT_addBriefing;

[
	west,                                                           // Filter
    	["task1",										// Task name
         "Search for the suitcase in Camp Tempest and retrieve it.",				       // Task text in briefing
         "Steal the Suitcase",							// Task title in briefing
         "data",											// Waypoint text
         getmarkerpos "obj"											// Optional: Position or object
														// Optional: Initial state
        ],
       
         ["task2",										// Task name
         "Return and get in the SUV once you retrieve the suitcase.",				       // Task text in briefing
         "Return to the SUV",							// Task title in briefing
         "SUV",											// Waypoint text
         getmarkerpos "fin"											// Optional: Position or object
														// Optional: Initial state
        ],
        
        ["task3",										// Task name
         "It is best if both operators can escape safely and stay alive.",				       // Task text in briefing
         "OPTIONAL: Stay Alive",							// Task title in briefing
         "survive"											// Waypoint text
        ]
        
] call FHQ_TT_addTasks;