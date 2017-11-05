player createDiarySubject ["Sari's WF","Sari's WF"];

player createDiaryRecord ["Sari's WF",["Changelog","
Changes made to the stock BECTI mission: <br/><br/>

19/07/2016: <br/>
- Added Zealot's Fast Roping <br/>
- Added Zealot's Field Repair <br/>
- Added SimpleEP earplugs. <br/>
- Fixed Various "no entry" errors throughout the mission (TheCapulet) <br/><br/>

09/08/2015: <br/>
- Added Defense placement collision detection
- Added player alive check to construction cam.
- Fixed building placement collision detection still using player position as a reference. <br/>
- Fixed disabled AI teams showing in various modes and menus. <br/>
- Fixed AI team buy types bypassing current upgrades. <br/>
- Fixed incorrect positions of NV and build defense buttons in defense menu. <br/>
- Fixed Artillery calls not working. <br/>
- Fixed the ability to service enemy vehicles. <br/>
- Various minor code clean-ups. <br/>
- Known Issue: AI teams occasionally respawn at the default respawn area. <br/><br/>

26/04/2015: <br/>
- Added NV mode button to Construction/Defense menus. <br/>
- Added extra values to limit the amount of AI teams. <br/>
- Fixed exceeding base area limits causing construction cam getting stuck. <br/>
- Fixed airlifted vehicles wouldn't restore original mass if airlifer was destroyed. <br/>
- Fixed podless Taru couldn't airlift. <br/>
- Fixed various minor AI commander respawning issues. <br/>
- Fixed AI for static defenses not spawning. <br/>
- Fixed buying units to other groups affected the buyers unit limit. <br/>
- Modified Parameter - AI: Teams (Added 1/4 Slots, 1/2 Slots, 3/4 Slots and All Slots). <br/><br/>

16/04/2015: <br/>
- Added Spotting skill for sniper Slots. <br/>
- Fixed Zafir and Rahim not using updated Magazines. <br/>
- Fixed Construction menu helpers colliding with and destroying objects. <br/>
- Fixed Construction menu helpers rotated incorrectly for Opfor. <br/>
- Fixed Construction menu hint not removing after exiting menu. <br/> 
- Fixed various script errors. <br/>
- Updated Opfor starting loadout with matching backpack. <br/>
- Updated runway light strip helper to be more helpful. <br/></br>

08/04/2015: <br/>
- Added Construction Camera. <br/>
 - Camera spawns when placing a building or defense, despawns when placed or cancelled. <br/>
 - Camera controls are shown if persistent hints are turned on (Scroll menu > Options > video settings). <br/>
 - Camera is also used for removing defenses. <br/>
 - Added new and seperate construction menu helpers. <br/>
 - Removed helpers for buildings that don't have a spawn point. <br/>
- Replaced camo/texture selection button with dropdown menu. <br/>
 - Expanded to all vehicles with multiple Textures. <br/>
 - Removed enemy faction textures from selection. <br/>
 - Removed UH-80 (camo) an Mi48 (black) from purchase menu as they're now obsolete. <br/>
- Added New Marksmen weapons and items to gear menu. <br/>
- Added New Marksmen units to purchase menu, AI buy types and town spawning types. <br/>
- Added Bipod slot to gear menu. <br/>
- Fixed unit/item icons showing black in gear/purchase menus. <br/>
- Fixed AI commander getting stuck in a loop. <br/>
- Fixed AI teams purchasing vehicles with FFV positions manned. <br/>
- Potentially fixed self destructing HQs. <br/>
- Replaced worker models. <br/>
- Updated AI buy type prices to match new supply system/economy. <br/>
- Updated defense menu item prices to match new supply system/economy. <br/>
- Various minor code cleanups. <br/><br/>

08/03/2015: <br/>
- Added slingload simulation to airlift system. <br/>
- Added dynamic repair/refuel/heal prices to service menu (eg more damage = higher cost). <br/>
- Adjusted town and camp bounty values. <br/>
- Fixed camp markers still not showing correct colours under certain circumstances. <br/>
- Fixed missing RPG price for Opfor gear menu causing incorrect gear prices. <br/>
- Fixed exploit in teamswap/teamstack system. <br/>
- Fixed transferring cash will show wrong group in receiving player's chat. <br/>
- Fixed endgame. Again. <br/>
- Fixed a couple of AI team script errors (credits to gabberxxl for pointing them out). <br/>
- Rebalanced town resistance/occupation units. Again. <br/>
- Replaced starting trucks with medical equivalents. <br/>
- Reverted 'Town Occupation 1' Dependency to 'Barracks 1'. <br/>
- Minor camp and depot position changes. <br/>
- Various minor code cleanups. <br/><br/>

01/02/2015: <br/>
- Fixed upgrades deducting $ cost from supply funds. <br/>
- Fixed HQ repair hint showing $ instead of S. <br/>
- Fixed towns being captured instantly. <br/>
- Fixed respawning at camps not working. <br/>
- Fixed town detection range for air untis not working.<br/>
- Rebalanced town resistance/occupation units. <br/>
- Various minor code cleanups. <br/><br/>

31/01/2015: <br/>
- Ported the Supply system from WFBE. <br/>
 - Once again credits to Benny for letting us reuse his scripts. <br/>
 - Secondary 'supply' currency has been added, used only by commander. <br/>
 - Supply can be used to build factories, purchase upgrades and repair the HQ. <br/>
 - Supply is generated by friendly towns. <br/>
 - Maximum amount of supply per cycle a town can produce is shown on map. <br/>
 - Current amount of supply per cycle produced by each friendly town is shown on the map. <br/>
 - All building/unit/gear/upgrade etc. prices rebalanced for supply system. <br/>
 - AI commander will make purchases in supply where necessary. <br/>
 - Town AI units and numbers have been balanced based on town Supply Value. <br/>
- Added HQ repair cost multiplier. <br/>
- Added missing inf. <br/>
- Added missing AI commander upgrades. <br/>
- Added basic AI commander repair HQ functionality. <br/>
- Added supply upgrade. <br/>
- Added town capture mode. <br/>
- Commander now has total control over income percentages. <br/>
- Client AI and AI teams will now attempt to recapture enemy camps in the town they're holding. <br/>
- Fixed camps not showing proper colours on JIP if on different side to town. <br/>
- Fixed player count function not generating income at all in SP. <br/>
- Fixed error related to HQ deployment. <br/>
- Fixed AI commander using the wrong side for some processes. <br/>
- Fixed AI commander not spawning on factories when no hq/CC is present. <br/>
- Fixed commander AI icon offset in purchase menu. <br/>
- Fixed locks not working on purchased vehicles. <br/>
- Fixed highlighting service trucks in purchase menu causing errors. <br/>
- Fixed endgame displaying wrong team as winner with a total towns victory. <br/>
- Known issue - AI commander freezes if spawned into a player built but incomplete base. <br/>
- Known issue - Undeployed HQ displays 2 kill messages when destroyed in SP. <br/>
- Minor camp and depot position changes. <br/>
- Various minor code cleanups. <br/>
- New Parameter - INCOME: Currency (Money and Supply, Money). <br/>
- New Parameter - INCOME: Starting Supply (East) (S1200-S76800). <br/>
- New Parameter - INCOME: Starting Supply (West) (S1200-S76800). <br/>
- New Parameter - TOWNS: Capture Mode (Camps) (Classic, Threshold, All Camps are Required). <br/><br/>

20/11/2014: <br/>
- Added new camo/texture selection button in the purchase menu (used for Taru Black variants). <br/>
- Added service/respawn menu ability to appropriate Huron/Taru pods. <br/>
- Fixed FFV positions being recognised as crewable positions in the purchase menu. <br/>
- Fixed HQ building being able to be sold. <br/>
- Fixed Deployed HQ showing twice in respawn menu. <br/>
- Fixed Taru/Huron pods being recognised as drivable/lockable in the purchase menu. <br/>
- Potentially fixed HQ spontaneously combusting after mobilizing/repairing. <br/>
- Reverted old Ammo Truck fix as its now obsolete. <br/>
- Optimized auto-wall script (should work a bit faster now). <br/>
- Various minor code cleanups. <br/><br/>

14/11/2014: <br/>
- Added 'Get in' bypass to DLC vehicles for whose who don't own DLC content. <br/>
- Added player count check to freeze income when server is empty. <br/>
- Added Mi-290 to Opfor purchase menu and airlift system. <br/>
- Moved Huron choppers to AF1 to match Tarus. <br/>
- Reduced worker build time. <br/>
- Fixed disconnecting commander not giving up commanding powers. <br/>
- Fixed deployed HQ not registering as destroyed correctly. <br/>
- Fixed HQ deploy cost not showing on deploy button in the construction menu. <br/>
- Fixed HQ sometimes not having lock/unlock option (again). <br/>
- Fixed Endgame sequence sometimes displaying the wrong message (again). <br/>
- Fixed Mi-290 Taru (Bench) not being able to airlift. <br/>
- Various minor code cleanups. <br/>
- Known issue: FFV positions in vehicles are detected as turrets in purchase menu. <br/><br/>
- Various minor code cleanups. <br/><br/>

04/11/2014: <br/>
- HQ can now be deployed into a standalone structure: <br/>
 - Base workers, structures and defenses can only be built when HQ is deployed. <br/>
 - HQ costs a configurable amount of money to deploy. <br/>
 - AI commander has basic compatability. <br/>
- Added new content from Helicopters DLC to the respective team purchase menus:
 - CH-67 Huron, CH-67 Huron (black) and Huron pods for Blufor. <br/>
 - Mi-290 Taru Trasport, Mi-290 Bench, Po-30 Orca (Black and White) and Taru pods for Opfor. <br/>
 - Windsock for both teams (found in construction menu). <br/>
 - Removed WY-55 Hellcat and CH-49 Mohawk from both teams. <br/>
 - Hurons, Tarus and pods are all airlift compatible. <br/>
 - Advanced Flight model is now enabled by default. <br/>
- Added new starting locations for Altis, adjusted some existing locations. <br/>
- Fixed ability to use airlift simultaneously with sling loading. <br/>
- Fixed UH-80 Ghosthawk (camo) not being able to airlift. <br/>
- Fixed WY-55 Hellcat spawning with empty rocket pods with no FFAR upgrade <br/>
- Fixed AI commander spawning when AI: Teams is enabled but AI: Commander is disabled. <br/>
- Fixed repaired HQ not having lock/unlock option. <br/>
- Fixed inaccurate worker count preventing max amount of workers from being built. <br/>
- Fixed Endgame sequence sometimes displaying the wrong message. <br/>
- Fixed objects with placeholder picture in purchase menu causing errors. <br/>
- Various minor code cleanups. <br/>
- Modified Parameter - Economy: Income Delay (Added 30 Second option) <br/>
- Modified Parameter - Environment: Starting Hour (Added Daytime and Nighttime options) <br/>
- Modified Parameter - Towns: Amount (Added East and West templates) <br/>
- New Parameter - Base: HQ Deploy Cost ($100-$10000). <br/><br/>

30/09/2014: <br/>
- Added West/East layouts to starting town templates. <br/>
- Fixed town starting mode param not setting starting towns (again). <br/>
- Fixed various Planes and Helicopters ignoring certain weapon upgrades. <br/> 
- Known issue: Hellcat with no FFAR upgrade will spawn with empty rocket pods. Will be fixed in V1.32. <br/><br/>

20/09/2014: <br/>
- Added endgame camera sequence from WFBE. <br/>
- Adjusted town unit spawn probabilities to be less random. <br/>
- Fixed town starting mode param not setting starting towns. <br/>
- Various minor code cleanups. <br/><br/>

23/08/2014: <br/>
- Added UH-80 Ghosthawk Camo to the Blufor purchase menu. <br/>
- Fixed Gear menu not working if certain upgrades were disabled in parameters. <br/>
- Fixed bug with Aircraft sanitization script. <br/><br/>

22/08/2014: <br/>
- Added ability to disband Independent Salvagers through 'Base management' menu. <br/>
- Fixed Opfor using wrong salvage truck model. <br/>
- Various minor infantry and gear price/upgrade level adjustments. <br/>
- Various minor code cleanups. <br/>
- New Parameter - BASE: Worker Limit (5-50). <br/>
- New Parameter - UNITS: Independent Salvager Limit (1-10). <br/><br/>

20/08/2014: <br/>
- Expanded Light, Heavy and Air Factory upgrade trees. <br/>
- Added various missing infantry units to both sides. <br/>
- Added new content from bootcamp package (credits to Tasty for the legwork). <br/>
- Limited various weapon camos to appropriate factions (credits to Tasty for the legwork). <br/>
- New Parameter - UNITS: Aircraft FFAR Rockets (Disabled, Enabled with Upgrade, Enabled). <br/><br/>

08/06/2014: <br/>
- Airlifted vehicles now force lock during transit. Lock reverts to previous state on release. <br/>
- Fixed airlifters being able to lift pairs of vehicles if hooked together. <br/>
- Fixed purchasing independent salvagers causing errors. <br/>
- Fixed AI squads purchasing units caugin errors. <br/>
- Fixed previous commander retaining commander funds if rejoining a match. <br/>
- Fixed double portable light not showing in build menu. <br/>
- Rewrote teamstack kick message for clarity. <br/><br/>

04/06/2014: <br/>
- Added hooking ability to salvage trucks <br/>
- Fixed green flares for starter pistol not showing. <br/>
- Increased town bounty to 5x town value. <br/>
- Increased vehicle spawn height slightly. <br/>
- Removed Covered Tempest from Light factory. <br/>
- Swapped Zamak covered for Tempest covered as Opfor's salvager <br/><br/>

02/06/2014: <br/>
- Added various cart items and Lynx APDS rounds to gear purchase menu (credits to Tasty for the legwork). <br/>
- Added runway light strip for easier runway creation (credits to benny as script is derived from WFBE minefields). <br/><br/>

01/06/2014: <br/>
- Added carts to town depot. <br/>
- Fixed unit limit occasionally not matching displayed maximum. <br/>
- Fixed occasionally not being able to sell buildings. <br/>
- Fixed selling ruins didnt display a message. <br/>
- Fixed typo with portable lights. <br/>
- Base defense auto-manning is now enabled by default. <br/>
- Increased prices of MBTs, reduced prices of Cheetah/Tigris. <br/><br/>

29/05/2014: <br/>
- Added Town Mortars to towns with value of 400 and above. <br/>
- Added 'Town start mode' functionality. <br/>
- Added various lights to the construction menu. <br/>
- Added mini statics to the construction menu. <br/> 
- Unknown towns are now coloured black instead of green. <br/> 
- Fixed town camps now displaying correctly in the respawn menu. <br/>
- Fixed town camp flags defaulting to resistance at round start if town was set to another side. <br/>
- Potential fix for towns sometimes spawning the wrong sides occupation AI. <br/>
- Various minor code cleanups (they're fixed this time!).<br/>
- New Parameter - Towns: Starting Mode (None, Divided Towns, Nearby Towns, Random). <br/><br/>


27/05/2014: <br/>
- Fixed vote menu not showing player in bottom slot correctly. <br/>
- Fixed upgrade descriptions exceeding box size. <br/>
- Mission now starts on the hour, not 55 minutes past. <br/>
- Various minor code cleanups (they're fixed this time!).<br/>
- Rules Updated. <br/><br/>

26/05/2014: <br/>
- Reverted yesterdays 'cleanups' as they caused a few issues. <br/>
- Added foundations for player skill system. <br/>
 - Team Leaders can now recruit up to 6 extra AI. <br/>
 - Skills for Snipers, Officers etc. will come at a later date. <br/>
- Maximum team size is now dependant on Barracks upgrade level. <br/>
- Fixed equipped Laser Designator not showing in gear menu. <br/>
- Fixed queue limits not accounting for cancelled orders. <br/>
- Fixed spamming purchase button allowing maximum team size to be exceeded. <br/>
- Added factory queue and team size limits to purchase menu hints for clarity. <br/>
- Rewrote some upgrade descriptions for clarity. <br/>
- Minor camp and depot position changes. <br/>
- New parameter - AI: Team Size (AI) (2-100). <br/>
- New parameter - AI: Team Size (Player) (2-100). <br/><br/>

25/05/2014: <br/>
- Added factory queue limiting system. <br/>
- Fixed persistent gear equipping wrong loadout if loadout for bought for AI. <br/>
- Potential fix for HQ disappearing if player inside disconnects. <br/>
- Minor camp and depot position changes. <br/>
- Various minor code cleanups. <br/><br/>

24/05/2014: <br/>
Ported the Arma 2 WFBE commander voting system to BECTI:<br/>
 - Once again credits to the legend that is Benny for letting us reuse his scripts.<br/>
 - Top slot in player lobby is no longer the commander. <br>
 - A commander can be elected by pressing the 'voting' button in the command menu. <br/>
 - The current commander is now displayed in the info box of the options menu. <br/>
 - Commander funds will automatically transfer to the new commander if changed. <br/>
 - If enabled, the AI commander can be voted in. <br/>
 - If current commander disconnects, an inert AI commander will take over until a new commander is voted. <br/><br/>
 
General changes:<br/>
 - Fixed town occupation not spawning if a town was captured from a team other than resistance. <br/>
 - Added more gear items (credits to Tasty for the legwork). <br/>
 - New parameter - AI: Commander (Enabled, Disabled). <br/><br/>

19/05/2014: <br/>
- Fixed airlifters not being able to lift air units (when configured to do so). <br/>
- Fixed mine detectors (Again). <br/>
- Fixed issue which allowed some newjoiners to bypass anti-stack. <br/>
- Fixed Blufor Heavy Factory having incorrect build price. <br/>
- Added temporary logging to try and poinpoint occasional selling bug. <br/><br/>

15/05/2014: <br/>
- Added more uniforms and hats (credits to Tasty for the legwork). <br/>
- Reversed Barracks/Gear upgrade dependencies. <br/>
- Rewrote Taxi/Push script. <br/>
- Rewrote airlift script (Again). <br/>
  - Now supports different choppers being able to lift different types of vehicle, feedback appreciated. <br/>
- Various minor code cleanups. <br/><br/>

11/05/2014: <br/>
- Fixed not being able to sell buildings in multiplayer. <br/>
  - Known issue: No message is displayed when ruins are sold/deleted. <br/>
- Fixed mine detector trying to equip to the launcher slot. <br/>
- Fixed some gear items preventing template creation (credits to Tasty for the legwork). <br/><br/>

10/05/2014: <br/>
- Selling buildings now refund 50% of their original value. <br/>
- Selling ruins does not refund anything. <br/>
- Lowered vehicle spawn height to try and prevent vehicles spawning with damage. <br/>
- Added some extra serverside log entries (HQ destroy/repair). <br/><br/>

09/05/2014: <br/>
- Fixed start time/date not syncing properly. <br/>
- Fixed barracks upgrade error. <br/>
- Minor infantry unit upgrade level adjustments. <br/><br/>

08/05/2014: <br/>
- Created Barracks lvl 2/3 upgrades. <br/>
- Linked Gear 2/3 upgrades to new Barracks upgrades. <br/>
- Sorted infantry units into the new Barracks upgrades according to their gear. <br/>
- Various minor code cleanups. <br/>
- New parameter - ENVIRONMENT: Starting Hour (00:00-23:00, Random). <br/>
- New parameter - ENVIRONMENT: Starting Month (Jan-Dec, Random). <br/><br/>

07/05/2014: <br/>
- Fixed empty base areas not getting removed (means more than 2 bases can be built!). <br/>
- Base building ruins are now sellable. <br/>
- Base building ruins are marked on map in black. <br/>
- Reduced HF and AF strength by approx 50%. <br/>
- Added LRPS scope and MX SW suppressor to gear purchase menu. <br/><br/>

05/05/2014: <br/>
- Fixed bug which allowed any unit to be purchased from town depot. <br/>
- Fixed service menu rearm only loading one magazine of each ammo type. <br/>
- Potential fix for town AI sometimes not despawning. <br/>
- Anti-stack now only allows teamswapping on first join. <br/>
- Various minor code cleanups. <br/>
- New parameter - BASE: Areas Limit (0-24). <br/>
- New parameter - BASE: Auto manned Defenses (0-50). <br/>
- New parameter - BASE: Auto Defenses Range (50m-1000m). <br/><br/>

24/04/2014: <br/>
- Fixed Binoculars causing errors on startup. <br/>
- Minor camp and depot position changes. <br/><br/>

23/04/2014: <br/>
- Town static defenses are more aware of their surroundings. <br/>
- Fixed town static defenses not spawning. <br/>
- Fixed upgrade menu not displaying correct levels if upgrades are disabled. <br/>
- Fixed upgrade menu not displaying debug times/prices if debug enabled. <br/>
- New parameter - AI: Keep units on JIP (No, Yes). <br/>
- Minor camp and depot position changes. <br/><br/>

22/04/2014: <br/>
- Fixed not being able to buy gear for AI units from town camps/depots. <br/>
- Fixed Riflemen not being available in Depot purchase menus. <br/><br/>

21/04/2014: <br/>
- Reduced Repair and rearm costs to 10% of unit price. <br/>
- Ammo trucks now contain a lot more 'ammo'. <br/>
- Added Engineers and Medics to the Depot purchase menu. <br/>
- New debug features for easier mission editing. <br/>
- Various service menu fixes. <br/><br/>

17/04/2014: <br/>
- Fixed issue with Anti-Stack not allowing players to join other team.<br/>
- Removed some placeholder items from the equipment purchase menu.<br/><br/>

13/04/2014: <br/>
- Added Anti-stack system. <br/>
- Added more helmets, glasses, backpacks etc (credits to Tasty for the legwork). <br/>
- Added service menu fuelling to fuel trucks. <br/>
- Added service menu healing to medical trucks. <br/>
- Removed service menu fuelling and healing from repair trucks. <br/>
- Town AI difficulty now configurable in parameters. <br/>
- Changed Opfor starting loadout. <br/>
- Fixed depot service menu not working for AI units. <br/>
- Fixed error when disbanding units in vehicles. <br/>
- Minor log cleanups. <br/>
- New parameter - BASE: Start Near towns (Yes, No). <br/>
- New parameter - GAMEPLAY: Kick Team Stackers (Disabled, Enabled).<br/>
- New parameter - GAMEPLAY: Kick Team Swappers (Disabled, Enabled).<br/>
- New parameter - GAMEPLAY: Towns: Amount (Extra Small, Small, Medium, Large, Full). <br/><br/>

04/04/2014: <br/>
- Added new buildable fortifications. <br/>
- Increased CC range to 12.5km. <br/>
- Fixed Infantry not giving a bounty when killed. <br/>
- Fixed A-143 Wipeout and To-199 Neophron ignoring AA/AT/FFAR upgrades. <br/>
- Minor camp and depot position changes. <br/>
- Rules updated. <br/><br/>

28/03/2014: <br/>
- Infantry can now use town service menu. <br/>
- New purchase menu depot icon, courtesy of Benny. <br/> <br/>

27/03/2014: <br/>
- New parameter - TOWNS: Protection Range (0-500m). <br/>
- Friendly Town Depots now allow access to full service menu. <br/>
- New Town and Depot markers. <br/>
- Fixed camp capture bar from resetting when maxxed out. <br/>
- Prevented Resistance AI squads from increasing the camp capture value over the default. <br/>
- Missing item from a template fixed. <br/><br/>

26/03/2014: <br/>
- Fixed depot purchase menu terminating. <br/>
- Fixed error on respawn related to gear penalty when no gear had been purchased. <br/>
- Restored lock icon in purchase menu for depot vehicles. <br/>
- Added check to prevent town depot infantry purchase if all town camps are not held. <br/>
- Rules updated (credits to Onno for the rewrites). <br/><br/>

25/03/2014: <br/>
- Added WIP version of town depot unit purchasing. <br/>
- New parameter - TOWNS: Purchase Infantry (Disabled, Enabled). <br/>
- Minor camp and depot position changes. <br/><br/>

Todo:<br/>
- Add 'use depot' action when in range of depot. <br/><br/>

24/03/2014: <br/>
- Increased prices of Attack choppers and CAS jets. </br>
- Town resistance - overall less infantry and more vehicles should spawn, particlarly in larger towns. <br/>
- Extended static defense placement to towns with a value of 300-400. <br/>
- Minor camp and depot position changes. <br/>
- Added missing chestrig to Blufor equpiment purchase <br/>
- Binoculars replaced by rangefinders and removed from equipment purchase until BIS fixes them. <br/>
- Swapped Opfor UAV terminal for Blufor UAV terminal on Blufor side. <br/>
- Gear penalty now calculates total gear cost instead of just using the last paid price. <br/><br/>

23/03/2014: <br/>
- Camp flags now change to appropriate colours on capture. <br/>
- Tempest Repair/Ammo/Medical have their special abilites restored (service point etc.) <br/><br/>

21/03/2014: <br/>
- Added missing Mk200 mags and Blufor backpack. <br/>
- Stavros town typo corrected. <br/><br/>

20/03/2014: <br/>
Ported the Arma 2 WFBE towns system to BECTI:<br/>
 - All credits to the legend that is Benny for letting us reuse his scripts.<br/>
 - Town flagpoles replaced with depot models.<br/>
 - Town camps added.<br/>
 - Town camps can be captured individually from the towns.<br/>
 - Town static defenses added to towns with a value of 400 and above.<br/>
 - Town static defenses only spawn occupation AI if occupation upgrade is lvl1 or higher.<br/>
 - Town HUD banners added.<br/>
 - Town HUD banners show current town/camp side and capture progress.<br/>
 - Ability to respawn at captured town camps.<br/>
 - All WFBE camp respawn methods included.<br/>
 - Ability to purchase gear from both town camps and depots.<br/>
 - Town capture rates are now dynamic depending on value, number of ai and number of captured camps.<br/>
 - Town AI will patrol to and attempt to recapture camps.<br/>
 - Town AI has a 50% chance of spawning at camps.<br/>
 - Town detection range reduced to 550m.<br/>
 - Town AI groups reduced to 6 units.<br/>
 - Number of town AI squads roughly doubled.<br/>
 - Added various town warning messages (camp captured/lost, town under attack etc.)<br/>
 - Fixed AFV-4 Gorgon and FV-720 Mora not spawning with Town Resistance Squads.<br/><br/>

General changes:<br/>
 - Added Ghost Hotel as a capturable town on Altis.<br/>
 - Added Slammer UP to Blufor purchase menu and Blufor Town Occupation squads.<br/>
 - Added A-164 Wipeout to Blufor purchase menu.<br/>
 - Added To-199 Neophron to Opfor purchase menu.<br/>
 - Added the various Tempest variants to Opfor purchase menu and starting vehicle.<br/>
 - Added all Arma 3 weapons to both factions in an attempt to increase variation (credits to Tasty for the legwork).<br/>
 - Added new clothing, vests, helmets, hats etc to both factions.<br/>
 - Purchased gear now remains persistent through respawns.<br/>
 - Fixed missing scrollbar error (credits to ted23p for the fix).<br/><br/>

New Parameters:<br/>
 - RESPAWN: Camps (Disabled, Classic, Nearby Camps, Occupation Only).<br/>
 - RESPAWN: Enemy Near: (Disabled, West | East, West | East | Resistance).<br/>
 - RESPAWN: Towns range Range (50 - 4000m).<br/>
 - RESPAWN: Penalty (Disabled, Default Gear, Full Gear Price, 1/2 Gear Price, 1/4 Gear Price).<br/>
 - TOWNS: Equipment Purchase (Disabled, Camps, Depot, Camps and Depot).<br/>
 - TOWNS: Vehicle Lock (Disabled, Enabled (Resistance), Enabled (Occupation), Enabled (Resistance and Occupation)).<br/>
 - TOWNS: Resistance (Disabled, Enabled).<br/><br/>
 
Todo:<br/>
 - Various WFBE town capture modes.<br/><br/>
 
Known issues:<br/>
 - Rare occurrence where individually captured camps will not change map marker colour.<br/>
 - Binoculars causing startup error and not being available in purchase menu.<br/><br/>

05/01/2014: <br/>
- Fixed Airlift option not showing. <br/>
- Ch49 Mohawk and unarmed WY-55 Hellcat can now airlift. <br/><br/>

12/12/2013: <br/>
- Added MBT-52 Kuma and FV-720 Mora to Independant Town Resistance Squads. <br/>
- Added Transport and attack variants of the WY-55 Hellcat to both Factions. <br/>
- Added CH-49 Mohawk to both Factions. <br/>
- Reduced numbers of AT soldiers in Town Resistance/Defender Squads. <br/>
- Removed temp chatbug fix. <br/><br/>

02/12/2013: <br/>
- Added Temporary Fix for the V1.06 Chatbug. <br/><br/>

20/11/2013: <br/>
- Restored Hook menu for ships. <br/>
- Used what appears to be Bennys older code to fix ammo truck not rearming some vehicles. <br/><br/>

18/11/2013: <br/>
- Ported a cut down version of the SD A2 Airlift script to replace the menu. <br/>
- Changed 'Taxi Reverse' script to a start/stop operation. <br/><br/>

14/11/2013: <br/>
- Added AA and CAS variants of the A-143 Buzzard to both factions. <br/>
- Added various roles to starting slots (Medic, Engineer etc.)."]];

player createDiaryRecord ["Sari's WF",["About Sari's Edition","
As seasoned Arma 2 Warfare Benny Edition veterans, we loved the depth and gameplay that the CTI gamemode can offer. Whilst Benny has made a tremendous effort so far in Arma 3 with BECTI, the mission still lacks a lot of the features and depth we enjoyed in Arma 2. So we decided, with permission from Benny, to bring some of these features over and integrate them into BECTI. So far, most of our work has focused existing systems, making these systems more fleshed out and a little less frustrating. The main features over the stock 0.97 BECTI mission includes: <br/><br/>

Town Supply Value: The town value is now  based on a secondary 'supply' currency and will generate more and more of both supply and money for the longer that team hold the town. Friendly towns on the map will display 2 values. This first is the amount of supply per cycle that the town will generate for its team and the second is the maximum possible value it can generate per cycle. <br/><br/>
Town Depots: The central flagpole that marks the capture point of the town has been replaced with a bunker like depot. Once the town has been captured, this depot grants access to equipment, basic transport and AI purchase as well as the service menu depending on the parameters set. <br/><br/>
Town Camps: Around the edges of the town are smaller camps which can be captured individually from the main town depot. Once captured these camps can provide a respawn point within that town and grant access to equipment purchase, depending on the parameters set. Be careful though, as the town's AI can patrol to and recapture these camps. <br/><br/>
Town Defenses: In larger towns, static defenses now spawn and are manned by AI. However, you need to research 'Town Occupation' to at least level one before towns on you side with spawn thir defenses. <br/><br/>
Town Banners: Once you are in range of a town (ie, close enough to spawn the town AI), you now get a coloured banner at the top of your HUD showing you which side the town belongs to, as well as the progress of the towns capture. <br/><br/>
Town Capture rates: The time it takes to capture a town now depends on a number of things - town value, number of friendly units in the capture radius, the number of enemy units in the capture radius and the number of camps held. <br/><br/>
Town Templates: The number of towns that can be captured on the map can now be set through templates and the 'Towns: Amount' parameter. This allows for more intense close quarter/PVP fights to be had. If you know some basic scripting then these templates can be easily modified.<br/><br/><br/>

Commander Voting: The top slot in player lobby is no longer the commander by default. A commander can be selected by pressing the 'voting' button in the command menu. Once a vote has started, a menu will pop up and everyone picks who they want to be commander. Once the time is up, the player with the most votes will be selected as commander. <br/><br/>
Commander Funding: The commanders funds are kept completely separate to any player pot. once a player is voted commander, this player then has access to the commanders funds. If the player is voted out, then they will get their previous funds back. <br/><br/>
Commander (AI): Whilst there haven't been any tweaks to the Ai commander cycle itself, the AI commander is now compatible with this new system. If disabled in the parameters, voting for the AI commander will result in nothing happening until a player is voted in. <br/><br/>
Commander: The current commander is now displayed in the info box of the options menu. <br/><br/><br/>

Other main features that aren't related to towns or commanding include: <br/><br/>
Adding a standalone HQ building which is deployed from the mobile HQ. <br/><br/>
Adding a secondary 'supply' currency for the commander to purchase buildings and upgrades with. <br/><br/>
Adding various vehicles, units, weapons, clothing and items to the factory menus that have been introduced since 0.97 was released. <br/><br/>
Adding various player roles such as engineer, medic with the intention of implementing a skills system at a future date. <br/><br/>
Adding an anti stack script system to prevent imbalanced teams. This is configurable to allow some degree of imbalance (so that Joe Bloggs can still play with his friend Jon Smith). <br/><br/>
Adding the option for persistent gear through respawns, with a range of options from free to full gear cost, depending on the parameter. <br/><br/>
Adding the option to change the starting hour and month as well as a feature to randomize these. <br/><br/>
Replacing the Hook system with a more traditional and much easier to use 'Airlift' action for helicopters. <br/><br/>
Various major and minor bug fixes, improvements, refinements etc. <br/><br/>

New parameters that have been added to configure all of these new features: <br/>
- AI: Commander (Enabled, Disabled). <br/>
- AI: Keep units on JIP (No, Yes). <br/>
- AI: Team Size (AI) (2-100). <br/>
- AI: Team Size (Player) (2-100). <br/>
- BASE: Areas Limit (0-24). <br/>
- BASE: Auto manned Defenses (0-50). <br/>
- BASE: Auto Defenses Range (50m-1000m). <br/>
- Base: HQ Deploy Cost ($100-$10000). <br/>
- BASE: Start Near towns (Yes, No). <br/>
- BASE: Worker Limit (5-50). <br/>
- ENVIRONMENT: Starting Hour (00:00-23:00, Daytime, Nighttime, Random). <br/>
- ENVIRONMENT: Starting Month (Jan-Dec, Random). <br/>
- GAMEPLAY: Kick Team Stackers (Disabled, Enabled).<br/>
- GAMEPLAY: Kick Team Swappers (Disabled, Enabled).<br/>
- INCOME: Currency (Money and Supply, Money). <br/>
- INCOME: Starting Supply (East) (S1200-S76800). <br/>
- INCOME: Starting Supply (West) (S1200-S76800). <br/>
- RESPAWN: Camps (Disabled, Classic, Nearby Camps, Occupation Only).<br/>
- RESPAWN: Enemy Near: (Disabled, West | East, West | East | Resistance).<br/>
- RESPAWN: Towns range Range (50 - 4000m).<br/>
- RESPAWN: Penalty (Disabled, Default Gear, Full Gear Price, 1/2 Gear Price, 1/4 Gear Price).<br/>
- Towns: Amount (Extra Small, Small, Medium, Large, West, East, Full). <br/>
- TOWNS: Capture Mode (Camps) (Classic, Threshold, All Camps are Required). <br/>
- TOWNS: Equipment Purchase (Disabled, Camps, Depot, Camps and Depot).<br/>
- TOWNS: Protection Range (0-500m). <br/>
- TOWNS: Purchase Infantry (Disabled, Enabled). <br/>
- TOWNS: Resistance (Disabled, Light, Medium, Hard, Impossible).<br/>
- TOWNS: Starting Mode (None, Divided Towns, Nearby Towns, Random). <br/>
- TOWNS: Vehicle Lock (Disabled, Enabled (Resistance), Enabled (Occupation), Enabled (Resistance and Occupation)). <br/>
- UNITS: Aircraft FFAR Rockets (Disabled, Enabled with Upgrade, Enabled). <br/> 
- UNITS: Independent Salvager Limit (1-10)."]];