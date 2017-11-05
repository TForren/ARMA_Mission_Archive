// =========================================================================================================
// !!  DO NOT MODIFY THIS FILE  !!
// =========================================================================================================

//class cfgFunctions{
	class PO3 {
		tag = "PO3";
		class Camera {
			file = "fnc\camera";
			class camera_fadein;
			class camera_fadeout;
			class camera_path;
			class camera_Restrict3rdPerson;
			class introsequence;
			class outrosequence;
		};
		class Environment {
			file = "fnc\environment";
			class changeDatetime;
			class changeFogWeather;
			class changeOvercastWeather;
			class changeRainWeather;
			//class changeWindWeather;
			class skipDatetime;
			class syncMPEnv;
			class changeTime;
			class setFog;
			class setOvercast;
			class setRain;
			class setTime;
			//class setWind;
			class skipTime;
			class weatherCycle;
		};
		class EventHandlers {
			file = "fnc\eventhandlers";
			class setContactStartEH_CRV;
			class setDamageEH;
			class setDamageEH_AI;
			class setDamageEH_C4Only;
			class setFiredEH;
			class setHealEH;
			class setKilledEH;
			class setRespawnEH;
		};
		class Injury {
			file = "fnc\injury";
			class aidInjured;
			class carryInjured;
			class dragInjured;
			class dropInjured;
			class injuredIsBeingDragged;
			class injuredIsBeingHealed;
			class injuredIsDraggable;
			class injuredIsDroppable;
			class injuredIsHealable;
			class isMedic;
			class useFirstAidKit;
			class useMedkit;
			class handleInjuryDamage;
			class injuredBloodloss {ext=".fsm";};
			class injuredEffects;
			class unitInAgony;
		};
		class Interactions {
			file = "fnc\interact";
			class checkActionBusy;
			class setActionBusy;
			class interaction_else {ext=".fsm";};
			class interaction_self {ext=".fsm";};
		};
		class Loadout{
			file = "fnc\loadout";
			class createAmmobox;
			class declareAmmobox;
			class fillAmmobox;
			class getLoadout;
			class handleAmmobox;
			class hasARgear;
			class hasFirstAidKit;
			class hasHelmetCamera;
			class hasMedKit;
			class saveLoadout;
			class setLoadout;
		};
		class Logistics {
			file = "fnc\logistics";
			class clearCrater;
			class containerPack;
			class containerUnpack;
			class createChute;
			class createIlluminationFlare;
			class createSupplybox;
			class declareSupplybox;
			class detectLiftable;
			class displayLogisticsFeatures;
			class dragObject;
			class dropObject;
			class fillSupplybox;
			class getAttachPoint;
			class getloadOffset;
			class handleSupplybox;
			class isDraggable;
			class isDragged;
			class isDriver;
			class isLiftable;
			class isLifted;
			class isLoadable;
			class isLoaded;
			class isTowed;
			class liftCamera;
			class liftObject;
			class liftRelease;
			class loadObjectOff;
			class loadObjectOn;
			class loadObject_SelectLoader;
			class loadObject_SelectObject;
			class logisticsCheck;
			class rearmVehicle;
			class refuelVehicle;
			class repairVehicle;
			class resupplyVehicle;
			class setAsAmmobox;
			class setAsCRV;
			class setAsDraggable;
			class setAsLiftable;
			class setAsLiftChopper;
			class setAsLoadable;
			class setAsResupply;
			class setAsTowVeh;
			class slingRope;
			class towObjectAttach;
			class towObjectRelease;
			class towRope;
			class UAVReplaceBatteries;
		};
		class Core {
			file = "fnc\core";
			class animateUnit;
			class boundingBoxLWH;
			class change_direction;
			class checkObjCondition;
			class diary;
			class init;
			class isAdministrator;
			class log;
			class playActionNow;
			class requestOwnership;
			class setOwner;
			class setDir;
			class protector;
			class addToarray;
			class arrayShuffle;
			class consolidateArray;
			class getArrayRandom;
			class processParams;
			class sortBy;
			class getCfgIcon;
			class getCfgPO3;
			class getCfgPO3Loadout;
			class getCfgPicture;
			class getCfgText;
			class getVehicleTypes;
			class hlc_assignOwner;
			class hlc_sendKeepAlive;
		};
		class Creator {
			file = "fnc\creator";
			class cleanup;
			class createGroup;
			class createMinefield;
			class createObjects;
			class createStaticDefense;
			class createVehicle;
			class getpreDefinedSquads;
			class getpreDefinedVehicles;
			class setObjectRespawn;
			class objectrespawn;
			class crewSpawner;
			class squadSpawner;
			class objectSpawner;
			class objectsSpawner;
			class vehicleSpawner;
			class ambientAirPatrols;
			class ambientGroundPatrols;
			class ambientIEDs;
			class groupAmbushPos;
			class groupAttackPos;
			class groupDefendPos;
			class groupPatrolArea;
			class groupMove;
			class groupOccupyVehicle;
			class supportCreateChute;
			class supportCreateHeloReinforcements;
			class supportCreateUAV;
			class supportCreateUGV;
		};
		class Position {
			file = "fnc\position";
			class getflatarea;
			class getNearbyBuildings;
			class getNearbyPlayers;
			class getNearbyUnits;
			class getpos;
			class getSafePos;
			class getNearbylocations;
			class nearestlocation;
			class nearestroad;
			class findclosestposition;
			class getmarkercorners;
			class getmarkershape;
			class getposarray;
			class getposfromcircle;
			class getposfromellipse;
			class getposfromrectangle;
			class getposfromsquare;
			class getposmarker;
			class getposradius;
			class isblacklisted;
			class isincircle;
			class isinellipse;
			class isinrectangle;
			class issameposition;
			class rotateposition;
			class getLocationsOnRoute;
			class getNewPos;
			class registerGridSectors;
			class registerLocations;
			class checkNearEntities;
		};
		class Respawn {
			file = "fnc\respawn";
			class addRespawnPos;
			class addRespawnPosLocal;
			class createRallypoint;
			class dead;
			class getRespawnPositions;
			class GUI_acceptRespawnPos;
			class GUI_respawn;
			class GUI_selectRespawnPos;
			class halo;
			class haloAutoOpen;
			class haloChemlights;
			class haloEffects;
			class haloLoadout;
			class onkilled;
			class onkilled_camera;
			class onkilled_effects;
			class onkilled_sitrep;
			class redeploy;
			class removeRallypoint;
			class removeRespawnPos;
			class removeRespawnPosLocal;
			class redeployByHALO;
		};
		class Intel {
			file = "fnc\intel";
			class chat;
			class hint;
			class progressbar;
			class sendChat;
			class sendHint;
			class sendProgressBar;
			class showTacticalText;
			class text_cursortarget;
			class text_sitrep;
			class text_tactical;
			class drawIcon;
			class getGroupColour;
			class getGroupSizeMarkerType;
			class getObjectMarkerType;
			class getUnitMarkerColour;
			class hideGroupMarker;
			class hideMarkers;
			class worldsize;
			class grpmark_detectGroups;
			class grpmark_detectTeam;
			class grpmark_detectUAV;
			class grpmark_draw;
			class drawIcon3D;
			class hud_getTeamColour;
			class hud_getUnitIcon;
			class hud_assignedTeamWatcher;
			class progressbar_display;
			class roundInterger;
			class world2Screen;
			class crewlist;
			class display_init;
			class GUI_display;
			class GUI_settings;
			class GUI_settings_slider;
			class keypress;
		};
		class Squad {
			file = "fnc\squad";
			class acceptJoinGroup;
			class assignGroupLeader;
			class changeGroupID;
			class createNewGroup;
			class declineJoinGroup;
			class getGroupName;
			class getGroupUnits;
			class inviteJoinGroup;
			class isQualified;
			class isTeamLeader;
			class requestJoinGroup;
			class setAsCrewman;
			class setAsLeader;
			class setAsMedic;
			class setAsPilot;
			class setGroupID;
			class setUnqualified;
			class showChemLight;
			class sqdmodFunctions;
			class unitJoinGroup;
			class unitKickFromGroup;
			class unitLeaveGroup;
			class vehicleRestrict {ext=".fsm";};
		};
		class Tasks {
			file = "fnc\taskmaster";
			class runTaskSequence;
			class runTasksRandom;
			class addTask;
			class getTaskState;
			class hasTaskState;
			class isTaskcompleted;
			class updateTask;
			class addLocalTask;
			class addTaskNote;
			class assignTask;
			class getAssignedTasks;
			class handleTaskEvent;
			class hasLocalTask;
			class hasTask;
			class hasTaskStateChanged;
			class showTaskHint;
			class skipTask;
			class taskmaster;
			class updateLocalTask;
		};
	};
//};
	class tcb_ais {
		tag = "tcb";
		class ais {
			file = "scripts\ais_injury\func";
			class handleDamage;
			class keyUnbind;
			class firstAid;
			class isHealable;
			class progressBar;
			class isMedic;
			class drag;
			class carry;
			class drop;
			class injuredEffects;
			class progressBarInit;
			class sendaihealer;
			class delbody;
			class quote;
			class deadcam;
			class lookingForWoundedMates;
			class checklauncher;
		};
	};