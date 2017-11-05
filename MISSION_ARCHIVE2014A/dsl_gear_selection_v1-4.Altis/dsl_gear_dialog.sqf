createDialog "dsl_gear_dialog";
sleep 0.1;
dsl_SelfCam_FocusOn = "self";

disableSerialization;

// Establish some variables
if (isNil "dsl_UniformIncrementer") then {dsl_UniformIncrementer = 0};
if (isNil "dsl_VestIncrementer") then {dsl_VestIncrementer = 0}; 
if (isNil "dsl_HeadGearIncrementer") then {dsl_HeadGearIncrementer = 0}; 
if (isNil "dsl_OpticIndex") then {dsl_OpticIndex = 0}; 
if (isNil "dsl_AccessoryIndex") then {dsl_AccessoryIndex = 0}; 
if (isNil "dsl_BackpackIncrementer") then {dsl_BackpackIncrementer = 0}; 
if (isNil "dsl_WeaponListPrimaries_ind") then {dsl_WeaponListPrimaries_ind = 0}; 
if (isNil "dsl_WeaponListPistols_ind") then {dsl_WeaponListPistols_ind = 0}; 
if (isNil "dsl_Face_Ind") then {dsl_Face_Ind = 0}; 
if (isNil "dsl_Glasses_ind") then {dsl_Glasses_ind = 0}; 
if (isNil "dsl_Launchers_ind") then {dsl_Launchers_ind = 0}; 
if (isNil "dsl_MuzzleAccessoryInc") then {dsl_MuzzleAccessoryInc = 0}; 
if (isNil "dsl_SelfView_CamUseTiBool") then {dsl_SelfView_CamUseTiBool = false};
if (isNil "dsl_counter") then {dsl_counter = 0};


fn_dsl_CreateCamera = 
{
	dsl_GlobalCam = "CAMERA" camCreate getPos player;
	sleep 0.01; 
	showCinemaBorder false; [] spawn {sleep .5; showCinemaBorder false}; 

	dsl_GlobalCam cameraEffect ["Internal","Back"];
};	

fn_dsl_EndCamera =
{
	dsl_GlobalCam cameraEffect ["TERMINATE","BACK"]; 
	camDestroy dsl_GlobalCam;
	dsl_ShowingSelfCam = false;
	dsl_EndCamera_EndedAt = time; 
}; 


// Dialog stuff. 
#define SLIDER_HEADGEAR ((dsl_gear_dialog select 0) displayCtrl 1900)
#define SLIDER_VEST ((dsl_gear_dialog select 0) displayCtrl 1901)
#define SLIDER_UNIFORM ((dsl_gear_dialog select 0) displayCtrl 1902)
#define SLIDER_BACKPACK ((dsl_gear_dialog select 0) displayCtrl 1903)
#define SLIDER_WEAPON ((dsl_gear_dialog select 0) displayCtrl 1904)
#define SLIDER_ATTACHMENT_OPTIC ((dsl_gear_dialog select 0) displayCtrl 1905)
#define SLIDER_ATTACHMENT_RAIL ((dsl_gear_dialog select 0) displayCtrl 1906)
#define SLIDER_SIDEARM ((dsl_gear_dialog select 0) displayCtrl 1907)
#define SLIDER_FACES ((dsl_gear_dialog select 0) displayCtrl 1908)

#define SLIDER_TIME ((dsl_gear_dialog select 0) displayCtrl 1909)
#define SLIDER_OVERCAST ((dsl_gear_dialog select 0) displayCtrl 1910)
#define SLIDER_DAY_OF_MONTH ((dsl_gear_dialog select 0) displayCtrl 1911)
#define SLIDER_VIEWDISTANCE ((dsl_gear_dialog select 0) displayCtrl 1912)
#define SLIDER_GLASSES ((dsl_gear_dialog select 0) displayCtrl 1913)

#define SLIDER_LAUNCHER ((dsl_gear_dialog select 0) displayCtrl 1914)

#define TEXT_VEST ((dsl_gear_dialog select 0) displayCtrl 1000)
#define TEXT_HEADGEAR ((dsl_gear_dialog select 0) displayCtrl 1001)
#define TEXT_UNIFORM ((dsl_gear_dialog select 0) displayCtrl 1002)
#define TEXT_BACKPACK ((dsl_gear_dialog select 0) displayCtrl 1003)
#define TEXT_WEAPON ((dsl_gear_dialog select 0) displayCtrl 1004)
#define TEXT_OPTIC ((dsl_gear_dialog select 0) displayCtrl 1005)
#define TEXT_RAIL ((dsl_gear_dialog select 0) displayCtrl 1006)
#define TEXT_SIDEARM ((dsl_gear_dialog select 0) displayCtrl 1007)
#define TEXT_FACE ((dsl_gear_dialog select 0) displayCtrl 1008)
#define TEXT_LAUNCHER ((dsl_gear_dialog select 0) displayCtrl 1014)
#define TEXT_VIEWDISTANCE ((dsl_gear_dialog select 0) displayCtrl 1012)
#define TEXT_TIMEOFDAY ((dsl_gear_dialog select 0) displayCtrl 1009)
#define TEXT_GLASSES ((dsl_gear_dialog select 0) displayCtrl 1013)

TEXT_VIEWDISTANCE ctrlSetText "Viewdistance: " + str(round viewDistance);
TEXT_TIMEOFDAY ctrlSetText "Time of Day: " + ([daytime,"HH:MM"] call BIS_fnc_TimeToString);

#define BUTTON_1 ((dsl_gear_dialog select 0) displayCtrl 1600)
#define BUTTON_2 ((dsl_gear_dialog select 0) displayCtrl 1601)
#define BUTTON_3 ((dsl_gear_dialog select 0) displayCtrl 1602)
#define BUTTON_4 ((dsl_gear_dialog select 0) displayCtrl 1603)
#define BUTTON_5 ((dsl_gear_dialog select 0) displayCtrl 1604)
#define BUTTON_6 ((dsl_gear_dialog select 0) displayCtrl 1605)
#define BUTTON_7 ((dsl_gear_dialog select 0) displayCtrl 1606)
#define BUTTON_8 ((dsl_gear_dialog select 0) displayCtrl 1607)
#define BUTTON_9 ((dsl_gear_dialog select 0) displayCtrl 1608)
#define BUTTON_10 ((dsl_gear_dialog select 0) displayCtrl 1609)

#define ESTABLISH_SLIDER(DIALOG_GVAR,CTRL_NUM,RANGEMAX,INCREMENTER)	\
CTRL_NUM sliderSetRange [0,RANGEMAX]; \
CTRL_NUM sliderSetPosition INCREMENTER;\


ESTABLISH_SLIDER(dsl_gear_dialog,SLIDER_HEADGEAR,((count dsl_HatTypes)-1),dsl_HeadGearIncrementer);
ESTABLISH_SLIDER(dsl_gear_dialog,SLIDER_VEST,((count dsl_VestTypes)-1),dsl_VestIncrementer);
ESTABLISH_SLIDER(dsl_gear_dialog,SLIDER_UNIFORM,((count dsl_UniformTypes)-1),dsl_UniformIncrementer);
ESTABLISH_SLIDER(dsl_gear_dialog,SLIDER_BACKPACK,((count dsl_BackpackTypes)-1),dsl_BackpackIncrementer);
ESTABLISH_SLIDER(dsl_gear_dialog,SLIDER_WEAPON,((count dsl_WeaponListPrimaries)-1),dsl_WeaponListPrimaries_ind);
ESTABLISH_SLIDER(dsl_gear_dialog,SLIDER_ATTACHMENT_OPTIC,((count dsl_CurrentOpticTypes)-1),dsl_OpticIndex);
ESTABLISH_SLIDER(dsl_gear_dialog,SLIDER_ATTACHMENT_RAIL,((count dsl_WeaponAccessoryTypes)-1),dsl_AccessoryIndex);
ESTABLISH_SLIDER(dsl_gear_dialog,SLIDER_SIDEARM,((count dsl_WeaponListPistols)-1),dsl_WeaponListPistols_ind);
ESTABLISH_SLIDER(dsl_gear_dialog,SLIDER_GLASSES,((count dsl_Glasses)-1),dsl_Glasses_ind);
ESTABLISH_SLIDER(dsl_gear_dialog,SLIDER_LAUNCHER,((count dsl_Launchers)-1),dsl_Launchers_ind);
ESTABLISH_SLIDER(dsl_gear_dialog,SLIDER_FACES,((count dsl_Heads)-1),dsl_Face_Ind);
ESTABLISH_SLIDER(dsl_gear_dialog,SLIDER_TIME,1439,((date select 3) * 60) + (date select 4));
ESTABLISH_SLIDER(dsl_gear_dialog,SLIDER_DAY_OF_MONTH,30,(date select 2));
ESTABLISH_SLIDER(dsl_gear_dialog,SLIDER_OVERCAST,1,(overcast));
ESTABLISH_SLIDER(dsl_gear_dialog,SLIDER_VIEWDISTANCE,15000,(viewDistance));


SLIDER_HEADGEAR ctrlSetEventHandler ["SliderPosChanged","_this call fn_dsl_Slider_ChangeHeadgear; (_this select 0) sliderSetPosition floor(_this select 1)"];
SLIDER_VEST ctrlSetEventHandler ["SliderPosChanged","_this call fn_dsl_Slider_ChangeVest; (_this select 0) sliderSetPosition floor(_this select 1)"];
SLIDER_UNIFORM ctrlSetEventHandler ["SliderPosChanged","_this call fn_dsl_Slider_ChangeUniform; (_this select 0) sliderSetPosition floor(_this select 1)"];
SLIDER_BACKPACK ctrlSetEventHandler ["SliderPosChanged","_this call fn_dsl_Slider_ChangeBackpack; (_this select 0) sliderSetPosition floor(_this select 1)"];
SLIDER_WEAPON ctrlSetEventHandler ["SliderPosChanged","_this call fn_dsl_Slider_ChangeWeapon; (_this select 0) sliderSetPosition floor(_this select 1)"];
SLIDER_ATTACHMENT_OPTIC ctrlSetEventHandler ["SliderPosChanged","_this call fn_dsl_Slider_ChangeAttachment_Optic; (_this select 0) sliderSetPosition floor(_this select 1)"];
SLIDER_ATTACHMENT_RAIL ctrlSetEventHandler ["SliderPosChanged","_this call fn_dsl_Slider_ChangeAttachment_Accessory; (_this select 0) sliderSetPosition floor(_this select 1)"];
SLIDER_SIDEARM ctrlSetEventHandler ["SliderPosChanged","_this call fn_dsl_Slider_ChangeSidearm; (_this select 0) sliderSetPosition floor(_this select 1)"];
SLIDER_FACES ctrlSetEventHandler ["SliderPosChanged","_this call fn_dsl_Slider_ChangeFace; (_this select 0) sliderSetPosition floor(_this select 1)"];
SLIDER_GLASSES ctrlSetEventHandler ["SliderPosChanged","_this call fn_dsl_Slider_ChangeGlasses; (_this select 0) sliderSetPosition floor(_this select 1)"];
SLIDER_LAUNCHER ctrlSetEventHandler ["SliderPosChanged","_this call fn_dsl_Slider_ChangeLauncher; (_this select 0) sliderSetPosition floor(_this select 1)"];


SLIDER_TIME ctrlSetEventHandler ["SliderPosChanged","_this call fn_dsl_Slider_ChangeTime"];
SLIDER_OVERCAST ctrlSetEventHandler ["SliderPosChanged","_this call fn_dsl_Slider_ChangeOvercast"];
SLIDER_DAY_OF_MONTH ctrlSetEventHandler ["SliderPosChanged","_this call fn_dsl_Slider_ChangeDayOfMonth"];
SLIDER_VIEWDISTANCE ctrlSetEventHandler ["SliderPosChanged","_this call fn_dsl_Slider_ChangeViewDistance"];


BUTTON_1 ctrlSetEventHandler ["ButtonDown","_this call fn_dsl_SelfView_RandomizeGear; call fn_dsl_SelfView_UpdateAllText"];
BUTTON_2 ctrlSetEventHandler ["ButtonDown","_this call fn_dsl_SelfView_CopyLoadoutToClipboard; systemChat 'Copied to clipboard'"];
BUTTON_3 ctrlSetEventHandler ["ButtonDown",""];
BUTTON_4 ctrlSetEventHandler ["ButtonDown","dsl_SelfCam_FocusOn = 'head';"];
BUTTON_5 ctrlSetEventHandler ["ButtonDown","dsl_SelfCam_FocusOn = 'self';"];
BUTTON_6 ctrlSetEventHandler ["ButtonDown","dsl_SelfCam_FocusOn = 'self_back';"];
BUTTON_7 ctrlSetEventHandler ["ButtonDown","dsl_SelfCam_FocusOn = 'weapon';"];
BUTTON_8 ctrlSetEventHandler ["ButtonDown","call fn_dsl_MuzzleButtonPush"];
BUTTON_9 ctrlSetEventHandler ["ButtonDown","call fn_dsl_SelfView_Button_Thermal"];
BUTTON_10 ctrlSetEventHandler ["ButtonDown","call fn_dsl_SelfView_Button_Nightvision"];



fn_dsl_SelfView_Text_Headgear = {TEXT_HEADGEAR ctrlSetText "Headgear: " + getText (configFile >> "cfgWeapons" >> (dsl_HatTypes select dsl_HeadGearIncrementer) >> "displayName")};
fn_dsl_SelfView_Text_Face = {TEXT_FACE ctrlSetText "Face: " + (dsl_Heads select dsl_Face_Ind);};
fn_dsl_SelfView_Text_Vest = {TEXT_VEST ctrlSetText "Vest: " + getText (configFile >> "cfgWeapons" >>(dsl_VestTypes select dsl_VestIncrementer) >> "displayName")};
fn_dsl_SelfView_Text_Uniform = {TEXT_UNIFORM ctrlSetText "Uniform: " + getText (configFile >> "cfgWeapons" >> (dsl_UniformTypes select dsl_UniformIncrementer) >> "displayName")};
fn_dsl_SelfView_Text_Backpack = {TEXT_BACKPACK ctrlSetText "Backpack: " + getText (configFile >> "cfgVehicles" >> (dsl_BackpackTypes select dsl_BackPackIncrementer) >> "displayName")};
fn_dsl_SelfView_Text_Weapon = {TEXT_WEAPON ctrlSetText "Weapon: " + getText (configFile >> "cfgWeapons" >> (dsl_WeaponListPrimaries select dsl_WeaponListPrimaries_ind) >> "displayName")};
fn_dsl_SelfView_Text_Sidearm = {TEXT_SIDEARM ctrlSetText "Sidearm: " + getText (configFile >> "cfgWeapons" >> (dsl_WeaponListPistols select dsl_WeaponListPistols_ind) >> "displayName")};
fn_dsl_SelfView_Text_Optic = {TEXT_OPTIC ctrlSetText "Optic: " + getText (configFile >> "cfgWeapons" >> (dsl_CurrentOpticTypes select dsl_OpticIndex) >> "displayName")};
fn_dsl_SelfView_Text_Rail = {TEXT_RAIL ctrlSetText "Rail: " + getText (configFile >> "cfgWeapons" >> (dsl_WeaponAccessoryTypes select dsl_AccessoryIndex) >> "displayName")};
fn_dsl_SelfView_Text_Launcher = {TEXT_LAUNCHER ctrlSetText "Launcher: " + getText (configFile >> "cfgWeapons" >> (dsl_Launchers select dsl_Launchers_ind) >> "displayName")};
fn_dsl_SelfView_Text_Glasses = {TEXT_GLASSES ctrlSetText "Glasses: " + (dsl_Glasses select dsl_Glasses_ind)};


fn_dsl_SelfView_UpdateAllText =
{
	call fn_dsl_SelfView_Text_Headgear; 
	call fn_dsl_SelfView_Text_Face;
	call fn_dsl_SelfView_Text_Vest;
	call fn_dsl_SelfView_Text_Uniform;
	call fn_dsl_SelfView_Text_Backpack;
	call fn_dsl_SelfView_Text_Weapon;
	call fn_dsl_SelfView_Text_Sidearm;
	call fn_dsl_SelfView_Text_Optic;
	call fn_dsl_SelfView_Text_Rail;
	call fn_dsl_SelfView_Text_Launcher;
	call fn_dsl_SelfView_Text_Glasses;
};


fn_dsl_SelfView_RandomizeGear = 
{
	dsl_HeadGearIncrementer = floor random (count dsl_HatTypes);
	dsl_VestIncrementer = floor random (count dsl_VestTypes);
	dsl_UniformIncrementer = floor random (count dsl_UniformTypes);
	dsl_BackpackIncrementer = floor random (count dsl_BackpackTypes);
	dsl_WeaponListPrimaries_ind = floor random (count dsl_WeaponListPrimaries);
	dsl_OpticIndex = floor random (count dsl_CurrentOpticTypes);
	dsl_AccessoryIndex = floor random (count dsl_WeaponAccessoryTypes);
	dsl_WeaponListPistols_ind = floor random (count dsl_WeaponListPistols);
	dsl_Face_Ind = floor random (count dsl_Heads);
	
	call fn_dsl_SelfView_UpdateHeadgear;
	call fn_dsl_SelfView_UpdateGlasses;
	call fn_dsl_SelfView_UpdateFace;
	call fn_dsl_SelfView_UpdateVest;
	call fn_dsl_SelfView_UpdateUniform;
	call fn_dsl_SelfView_UpdateBackpack;
	dsl_SelfCam_FocusOn = "self";
	call fn_dsl_SelfView_UpdateWeapon;
	call fn_dsl_SelfView_UpdateOptic;
	call fn_dsl_SelfView_UpdateRail;
	dsl_SelfCam_FocusOn = "self";
	[] spawn {sleep 0.1; dsl_SelfCam_FocusOn = "self";}; 
}; 





fn_dsl_SelfView_LoadPreset = 
{
	[(_this select 0)] call fn_dsl_SelfView_UpdateHeadgear;
	[(_this select 1)] call fn_dsl_SelfView_UpdateUniform;
	[(_this select 2)] call fn_dsl_SelfView_UpdateVest;
	[(_this select 3)] call fn_dsl_SelfView_UpdateBackpack;
	dsl_SelfCam_FocusOn = "self";
	[(_this select 4)] call fn_dsl_SelfView_UpdateWeapon;
	dsl_SelfCam_FocusOn = "self";
	//[(_this select 5)] call fn_dsl_SelfView_UpdateOptic;
	//[(_this select 6)] call fn_dsl_SelfView_UpdateRail;
	[(_this select 8)] call fn_dsl_SelfView_UpdateFace;
	
	call fn_dsl_SelfView_UpdateAllText;
}; 



fn_dsl_SelfView_CopyLoadoutToClipboard =
{
        copytoclipboard format ["
        this addHeadgear '%1';
        this addVest '%2';
        this addUniform '%3';
        this addBackPack '%4';
        this addWeapon '%5';
        this addPrimaryWeaponItem '%6';
        this addPrimaryWeaponItem '%7';
        this addWeapon '%8';
        this setFace '%9';
        this addGoggles '%10';
        this addWeapon '%11';",
        dsl_HatTypes select dsl_HeadGearIncrementer,
        dsl_VestTypes select dsl_VestIncrementer,
        dsl_UniformTypes select dsl_UniformIncrementer,
        dsl_BackpackTypes select dsl_BackpackIncrementer,
        dsl_WeaponListPrimaries select dsl_WeaponListPrimaries_ind,
        dsl_CurrentOpticTypes select dsl_OpticIndex,
        dsl_WeaponAccessoryTypes select dsl_AccessoryIndex,
        dsl_WeaponListPistols select dsl_WeaponListPistols_ind,
        dsl_Heads select dsl_Face_Ind,
        dsl_Glasses select dsl_Glasses_Ind,
        dsl_Launchers select dsl_Launchers_ind];
};


fn_dsl_Slider_ChangeTime = {setDate [date select 0,date select 1,date select 2,0,_this select 1]; TEXT_TIMEOFDAY ctrlSetText "Time of Day: " + ([daytime,"HH:MM"] call BIS_fnc_TimeToString);};

fn_dsl_Slider_ChangeOvercast = {0 setOvercast (_this select 1); skiptime .1;SLIDER_TIME sliderSetPosition (((date select 3) * 60) + (date select 4)) };
fn_dsl_Slider_ChangeDayOfMonth = {setDate [date select 0,date select 1,_this select 1,date select 3,date select 4]};



fn_dsl_Slider_ChangeViewDistance =
{
	_val = _this select 1;
	setViewDistance _val;
	TEXT_VIEWDISTANCE ctrlSetText "Viewdistance: " + str(round _val);
};





fn_dsl_SelfView_Button_Thermal =
{
	if (dsl_SelfView_CamUseTiBool) then {dsl_SelfView_CamUseTiBool = false; dsl_SelfView_CamUseTiBool setCamUseTi 0} else {dsl_SelfView_CamUseTiBool = true; dsl_SelfView_CamUseTiBool setCamUseTi 0; }; 
};


// Sometimes this fails. I don't know why. vOv
fn_dsl_SelfView_Button_Nightvision =
{
	if ("NVGoggles" in (assignedItems player)) then {player removeWeapon "NVGoggles"; player unassignItem "NVGoggles"} else {player addWeapon "NVGoggles";player assignItem "NVGoggles"}; 
};





fn_dsl_SelfView_Button_AccTime =
{
	if (isNil "dsl_SelfView_AccTimeActive") then {dsl_SelfView_AccTimeActive = false}; 
	if (dsl_SelfView_AccTimeActive) then {dsl_SelfView_AccTimeActive = false}
	else
	{
		[] spawn 
		{
			dsl_SelfView_AccTimeActive = true; 
			sleep 0.1;
			waitUntil
			{
				skipTime 0.0025; 
				//sleep 0.01; 
				!dsl_SelfView_AccTimeActive
			}; 	
		}; 
	}; 
}; 


fn_dsl_Slider_ChangeHeadgear =
{
	private "_value"; _value = _this select 1; _valueFloor = floor(_value);
	if ((_valueFloor == dsl_HeadGearIncrementer) && (typeName (_this select 0) != "CONTROL")) then {}
	else
	{	dsl_HeadGearIncrementer = _valueFloor; call fn_dsl_SelfView_UpdateHeadgear}; 
	call fn_dsl_SelfView_Text_Headgear;
	dsl_SelfCam_FocusOn = "head";
};

fn_dsl_SelfView_UpdateHeadgear = 
{
	private ["_useClassname","_special"]; 
	_useClassname = false;
	_special = ""; 
	if (typeName (_this select 0) != "CONTROL") then {_useClassname = true; _special = _this select 0; }; 
	if (_useClassname) then {player addHeadgear _special; _res = dsl_HatTypes find _special; dsl_HeadGearIncrementer = _res} else {player addHeadgear (dsl_HatTypes select dsl_HeadGearIncrementer); if ((dsl_HatTypes select dsl_HeadGearIncrementer) == "") then {removeHeadgear player};};
}; 

	
	
	
	
fn_dsl_Slider_ChangeFace =
{
	private "_value"; _value = _this select 1; _valueFloor = floor(_value);
	if ((_valueFloor == dsl_Face_Ind) && (typeName (_this select 0) != "CONTROL")) then {}
	else {dsl_Face_Ind = _valueFloor; call fn_dsl_SelfView_UpdateFace;}; 
	call fn_dsl_SelfView_Text_Face;
	dsl_SelfCam_FocusOn = "head";
};
	
fn_dsl_SelfView_UpdateFace = 
{
	private ["_useClassname","_special"]; 
	_useClassname = false;
	if (typeName (_this select 0) != "CONTROL") then {_useClassname = true; _special = _this select 0; }; 
	if (_useClassname) then {player setFace _special; _res = dsl_Heads find _special; dsl_Face_Ind = _res} else {player setFace (dsl_Heads select dsl_Face_Ind);};
}; 
	
	
	
	
	
	
fn_dsl_Slider_ChangeGlasses =
{
	private "_value"; _value = _this select 1; _valueFloor = floor(_value);
	if ((_valueFloor == dsl_Glasses_Ind) && (typeName (_this select 0) != "CONTROL")) then {}
	else
	{	dsl_Glasses_Ind = _valueFloor; call fn_dsl_SelfView_UpdateGlasses}; 
	call fn_dsl_SelfView_Text_Glasses;
	dsl_SelfCam_FocusOn = "head";
}; 
	
fn_dsl_SelfView_UpdateGlasses = 
{
	private ["_useClassname","_special"]; 
	_useClassname = false;
	if (typeName (_this select 0) != "CONTROL") then {_useClassname = true; _special = _this select 0; }; 
	if (_useClassname) then {player addGoggles _special; _res = dsl_Glasses find _special; dsl_Glasses_Ind = _res} else {player addGoggles (dsl_Glasses select dsl_Glasses_Ind);};
}; 






fn_dsl_Slider_ChangeVest =
{
	private "_value"; _value = _this select 1; _valueFloor = floor(_value);
	
	if ((_valueFloor == dsl_VestIncrementer) && (typeName (_this select 0) != "CONTROL")) then {}
	else {dsl_VestIncrementer = _valueFloor; call fn_dsl_SelfView_UpdateVest;}; 
	call fn_dsl_SelfView_Text_Vest;
	dsl_SelfCam_FocusOn = "self";
}; 

fn_dsl_SelfView_UpdateVest = 
{
	private ["_useClassname","_special"]; 
	_useClassname = false;
	if (typeName (_this select 0) != "CONTROL") then {_useClassname = true; _special = _this select 0; }; 
	if (_useClassname) then {player addVest _special; _res = dsl_VestTypes find _special; dsl_VestIncrementer = _res} else {player addVest (dsl_VestTypes select dsl_VestIncrementer);  if ((dsl_VestTypes select dsl_VestIncrementer) == "") then {removeVest player};};	
}; 








fn_dsl_Slider_ChangeUniform =
{
	private "_value"; _value = _this select 1; _valueFloor = floor(_value);
	if ((_valueFloor == dsl_UniformIncrementer) && (typeName (_this select 0) != "CONTROL"))  then {}
	else {dsl_UniformIncrementer = _valueFloor; call fn_dsl_SelfView_UpdateUniform;}; 
	call fn_dsl_SelfView_Text_Uniform;
	dsl_SelfCam_FocusOn = "self";
}; 

fn_dsl_SelfView_UpdateUniform = 
{
	private ["_useClassname","_special"]; 
	_useClassname = false;
	if (typeName (_this select 0) != "CONTROL") then {_useClassname = true; _special = _this select 0; }; 
	if (_useClassname) then {player addUniform _special; _res = dsl_UniformTypes find _special; dsl_UniformIncrementer = _res} else {player addUniform (dsl_UniformTypes select dsl_UniformIncrementer);   if ((dsl_UniformTypes select dsl_UniformIncrementer) == "") then {removeUniform player};};
}; 








fn_dsl_Slider_ChangeBackpack =
{
	private ["_value","_valueFloor"]; _value = _this select 1; _valueFloor = floor(_value);
	if ((_valueFloor == dsl_BackpackIncrementer) && (typeName (_this select 0) != "CONTROL"))  then {}
	else {dsl_BackpackIncrementer = _valueFloor; call fn_dsl_SelfView_UpdateBackpack;};
	call fn_dsl_SelfView_Text_Backpack;
}; 

fn_dsl_SelfView_UpdateBackpack = 
{
	private ["_useClassname","_specialBackpack"]; 
	_useClassname = false;
	if (typeName (_this select 0) != "CONTROL") then {_useClassname = true; _specialBackpack = _this select 0; }; 
	
	removeBackpack player;

	if (dsl_BackPackIncrementer > 0) then
	{
		if (_useClassname) then {if (_specialBackpack != "") then {player addBackpack _specialBackpack; ; _res = dsl_BackpackTypes find _special; dsl_BackpackIncrementer = _res}}
		else
		{player addBackpack (dsl_BackpackTypes select dsl_BackpackIncrementer);};
		dsl_SelfCam_FocusOn = "self_back";
	}
	else {dsl_SelfCam_FocusOn = "self";}; 
}; 









fn_dsl_ChangeWeapon =
{
	private "_weaponclass"; 
	if (typeName (_this select 0) != "CONTROL") then {_weaponClass = _this select 0} else {_weaponclass = dsl_WeaponListPrimaries select dsl_WeaponListPrimaries_ind;}; 

	{player removeMagazine _x} forEach magazines player;
	player removeWeapon primaryWeapon player;
	{player addMagazine ((getArray (configfile >> "CfgWeapons" >> _weaponclass >> "magazines")) select 0)} forEach [1,2,3,4,5]; 
	player addWeapon _weaponclass; 
	player selectWeapon _weaponclass;
	if ((dsl_WeaponListPrimaries_ind > ((count dsl_WeaponListPrimaries)-1))) then {dsl_WeaponListPrimaries_ind = 0}; 
}; 

fn_dsl_Slider_ChangeWeapon =
{
	private "_value"; _value = _this select 1; _valueFloor = floor(_value);
	if ((_valueFloor == dsl_WeaponListPrimaries_ind) && (typeName (_this select 0) != "CONTROL"))  then {}
	else
	{	
		dsl_WeaponListPrimaries_ind = _valueFloor;
		dsl_SelfCam_FocusOn = "weapon";
		call fn_dsl_SelfView_UpdateWeapon;
	}; 
	call fn_dsl_SelfView_Text_Weapon;
}; 

fn_dsl_SelfView_UpdateWeapon = 
{
	private ["_useClassname","_special","_exit"]; 
	_useClassname = false;
	_exit = false; 
	if (typeName (_this select 0) != "CONTROL") then {_useClassname = true; _special = _this select 0; }; 
	
	if (_useClassname) then {if (_special == "") then {_exit = true}}; 
	
	if (dsl_WeaponListPrimaries_ind > 0 && !_exit) then 
	{
		player switchMove "amovpercmstpslowwrfldnon"; 
		if (_useClassname) then {[_special] call fn_dsl_ChangeWeapon; _res = dsl_WeaponListPrimaries find _special; dsl_WeaponListPrimaries_ind = _res} else {call fn_dsl_ChangeWeapon}; 
		call dsl_RemoveOptic;;
		if (dsl_OpticIndex > 0) then {player addPrimaryWeaponItem (dsl_CurrentOpticTypes select dsl_OpticIndex);};
		call dsl_RemoveAttachment;
		if (dsl_AccessoryIndex > 0) then {player addPrimaryWeaponItem (dsl_WeaponAccessoryTypes select dsl_AccessoryIndex);};
		call fn_dsl_SwapMuzzleAccessory;
	}
	else
	{
		removeAllWeapons player;
		{player removeMagazine _x} forEach (magazines player); 
		player switchMove "amovpercmstpsnonwnondnon";
		dsl_SelfCam_FocusOn = "self";
	};
}; 






// find the pistol!
fn_dsl_FindCarriedPistol = 
{
	private "_selWep"; 
	_selWep = ""; 
	_pistolWep = ""; 
	{
		_selWep = ((weapons player) select _forEachIndex);
		if ((getNumber (configfile >> "CfgWeapons" >> _selWep >> "type")) == 2) then {
		_pistolWep = _selWep};
	} forEach (weapons player); 
	_pistolWep
};

fn_dsl_RemovePistol =
{
	_pistol = call fn_dsl_FindCarriedPistol;
	player removeWeapon _pistol; 
}; 


fn_dsl_ChangePistol =
{
	call fn_dsl_RemovePistol; 
	
	{player addMagazine ((getArray (configfile >> "CfgWeapons" >> (dsl_WeaponListPistols select dsl_WeaponListPistols_ind) >> "magazines")) select 0)} forEach [1,2,3,4,5]; 
	player addWeapon (dsl_WeaponListPistols select dsl_WeaponListPistols_ind); 
	player selectWeapon (dsl_WeaponListPistols select dsl_WeaponListPistols_ind);
	if ((dsl_WeaponListPistols_ind > ((count dsl_WeaponListPistols)-1))) then {dsl_WeaponListPistols_ind = 0}; 
}; 

fn_dsl_Slider_ChangeSidearm =
{
	private "_value"; _value = _this select 1; _valueFloor = floor(_value);
	if ((_valueFloor == dsl_WeaponListPistols_ind) && (typeName (_this select 0) != "CONTROL")) then {}
	else
	{	
		dsl_WeaponListPistols_ind = _valueFloor;
		dsl_SelfCam_FocusOn = "weapon";
		call fn_dsl_SelfView_UpdatePistol;
	}; 
	call fn_dsl_SelfView_Text_Sidearm;
}; 

fn_dsl_SelfView_UpdatePistol = 
{
	if (dsl_WeaponListPistols_ind > 0) then 
	{
		call fn_dsl_ChangePistol;
		player playMove "amovpercmstpslowwpstdnon"; 
	}		
	else
	{
		if (primaryWeapon player != "") then
		{
			player playMove "amovpercmstpslowwrfldnon"; 
			dsl_SelfCam_FocusOn = "self";
		}else
		{
			player playMove "amovpercmstpsnonwnondnon";
			dsl_SelfCam_FocusOn = "self";
		};
	};
};








fn_dsl_Slider_ChangeLauncher =
{
	private "_value"; _value = _this select 1; _valueFloor = floor(_value);
	if ((_valueFloor == dsl_Launchers_ind) && (typeName (_this select 0) != "CONTROL")) then {}
	else
	{	
		dsl_Launchers_ind = _valueFloor;
		dsl_SelfCam_FocusOn = "self_back";
		call fn_dsl_SelfView_UpdateLauncher;
	}; 
	call fn_dsl_SelfView_Text_Launcher;
}; 

fn_dsl_SelfView_UpdateLauncher =
{
	player removeWeapon (secondaryWeapon player); 
	player addWeapon (dsl_Launchers select dsl_Launchers_ind); 
}; 






fn_dsl_Slider_ChangeAttachment_Optic =
{
	private "_value"; _value = _this select 1; _valueFloor = floor(_value);
	if (primaryWeapon player == "") exitWith {}; 
	if ((_valueFloor == dsl_OpticIndex) && (typeName (_this select 0) != "CONTROL")) then {}
	else
	{	
		dsl_OpticIndex = _valueFloor;
		call fn_dsl_SelfView_UpdateOptic;
	}; 
	call fn_dsl_SelfView_Text_Optic;
	dsl_SelfCam_FocusOn = "weapon";
}; 

fn_dsl_SelfView_UpdateOptic =
{
	if (primaryWeapon player != "") then 
	{
		call dsl_RemoveOptic;;
		if (dsl_OpticIndex > 0) then {player addPrimaryWeaponItem (dsl_CurrentOpticTypes select dsl_OpticIndex);};
	};
};










fn_dsl_Slider_ChangeAttachment_Accessory =
{
	private "_value"; _value = _this select 1; _valueFloor = floor(_value);
	if (primaryWeapon player == "") exitWith {}; 
	if ((_valueFloor == dsl_AccessoryIndex) && (typeName (_this select 0) != "CONTROL")) then {}
	else
	{	
		dsl_AccessoryIndex = _valueFloor;
		call fn_dsl_SelfView_UpdateRail;
	}; 
	call fn_dsl_SelfView_Text_Rail;
	dsl_SelfCam_FocusOn = "weapon";
}; 

fn_dsl_SelfView_UpdateRail =
{
	if (primaryWeapon player != "") then 
	{
		call dsl_RemoveAttachment;
		if (dsl_AccessoryIndex > 0) then {player addPrimaryWeaponItem (dsl_WeaponAccessoryTypes select dsl_AccessoryIndex);};
	};
}; 










































fn_dsl_MoveToUniform =
{
	private ["_dir","_desSel"]; 
	_dir = _this select 0;
	_desSel = dsl_UniformIncrementer + _dir;
	if (_desSel < 0) then {_desSel = 0};
	if (_desSel > ((count dsl_UniformTypes)-1)) then {_desSel = ((count dsl_UniformTypes)-1)};
	dsl_UniformIncrementer = _desSel; 
	player addUniform (dsl_UniformTypes select _desSel);
};

fn_dsl_MoveToVest =
{
	private ["_dir","_desSel"]; 
	_dir = _this select 0;
	_desSel = dsl_VestIncrementer + _dir;
	if (_desSel < 0) then {_desSel = 0};
	if (_desSel > ((count dsl_VestTypes)-1)) then {_desSel = ((count dsl_VestTypes)-1)};
	dsl_VestIncrementer = _desSel; 
	player addVest (dsl_VestTypes select _desSel);
};


fn_dsl_MoveToHeadGear =
{
	private ["_dir","_desSel"]; 
	_dir = _this select 0;
	_desSel = dsl_HeadGearIncrementer + _dir;
	if (_desSel < 0) then {_desSel = 0};
	if (_desSel > ((count dsl_HatTypes)-1)) then {_desSel = ((count dsl_HatTypes)-1)};
	dsl_HeadGearIncrementer = _desSel; 	
	player addHeadgear (dsl_HatTypes select _desSel);
};

dsl_RemoveOptic = {player removePrimaryWeaponItem ((player weaponAccessories primaryweapon player) select 2);};
dsl_RemoveAttachment = {player removePrimaryWeaponItem ((player weaponAccessories primaryweapon player) select 1);};
dsl_RemoveMuzzle = {player removePrimaryWeaponItem ((player weaponAccessories primaryweapon player) select 0);};

dsl_SwapAccessory =
{
	call dsl_RemoveAttachment;
	player addPrimaryWeaponItem (dsl_WeaponAccessoryTypes select dsl_AccessoryIndex);
	if (dsl_AccessoryIndex > ((count dsl_WeaponAccessoryTypes)-1)) then {dsl_AccessoryIndex = 0};
}; 

dsl_SwapOptic = {call dsl_RemoveOptic; player addPrimaryWeaponItem (dsl_CurrentOpticTypes select dsl_OpticIndex);};


fn_dsl_MashThatShitOnThere_FlashSup = {
	// pub alpha doesn't have these. 
	//{player addPrimaryWeaponItem _x} forEach ["muzzle_mzls_B","muzzle_mzls_H","muzzle_mzls_L","muzzle_mzls_vector"];
}; 
fn_dsl_MashThatShitOnThere_Suppressor = {{player addPrimaryWeaponItem _x} forEach ["muzzle_snds_B","muzzle_snds_H","muzzle_snds_L","muzzle_snds_H_MG"];}; 


fn_dsl_SwapMuzzleAccessory =
{
	switch dsl_MuzzleAccessoryInc do
	{
		case 0: {call dsl_RemoveMuzzle;};
		case 1: {call fn_dsl_MashThatShitOnThere_FlashSup;};
		case 2: {call fn_dsl_MashThatShitOnThere_Suppressor;};
	}; 
};

 

fn_dsl_MuzzleButtonPush = 
{	
	dsl_MuzzleAccessoryInc = dsl_MuzzleAccessoryInc + 1; 
	
	if (dsl_MuzzleAccessoryInc > 2) then {dsl_MuzzleAccessoryInc = 0};
	call fn_dsl_SwapMuzzleAccessory;
}; 


















["over",dsl_HeadGearIncrementer] call fn_dsl_Slider_ChangeHeadgear;
["over",dsl_VestIncrementer] call fn_dsl_Slider_ChangeVest;
["over",dsl_UniformIncrementer] call fn_dsl_Slider_ChangeUniform;
["over",dsl_BackpackIncrementer] call fn_dsl_Slider_ChangeBackpack;
["over",dsl_WeaponListPrimaries_ind] call fn_dsl_Slider_ChangeWeapon;
["over",dsl_OpticIndex] call fn_dsl_Slider_ChangeAttachment_Optic;
["over",dsl_AccessoryIndex] call fn_dsl_Slider_ChangeAttachment_Accessory;
["over",dsl_WeaponListPistols_ind] call fn_dsl_Slider_ChangeSidearm;
dsl_SelfCam_FocusOn = "self";


fn_dsl_SetUpSelfPortraitCam =
{
	private ["_camTarOffset","_camZoom"]; 
	call fn_dsl_CreateCamera;
	dsl_ShowingSelfCam = true;
	dsl_GlobalCam camSetTarget (player modelToWorld [0,0,1]);
	dsl_GlobalCam camSetPos (player modelToWorld [1,4,1.85]);
	dsl_GlobalCam camSetFOV .33;
	dsl_GlobalCam camSetFocus [50, 0];
	dsl_GlobalCam camCommit 0; 

	dsl_SelfCam_FrontOrBack = 0; // 0 for front, 1 for back
	
	if (primaryWeapon player == "") then {player playMove "amovpercmstpsnonwnondnon"} else {
	player playMove "amovpercmstpslowwrfldnon"; };
	
	_inc = 0; 
	_pdir = getDir player; 
	//_inc = _pdir; 
	
	[] spawn 
	{
		private ["_camZoom","_camtarOffset","_camComTime"]; 
		// handle focus/fov independent of below
		
		
		waitUntil
		{
			switch (dsl_SelfCam_FocusOn) do
			{
				case "self": {_camTarOffset = [0,0,1]; 				_camZoom = .33; dsl_SelfCam_FrontOrBack = 0;	_camComTime = .35};
				case "self_back": {_camTarOffset = [0,-.15,1.3]; 	_camZoom = .33; dsl_SelfCam_FrontOrBack = 1;	_camComTime = .35};
				case "head": {_camTarOffset = [0,0,1.55]; 			_camZoom = .13; dsl_SelfCam_FrontOrBack = 0;	_camComTime = 1};
				case "weapon": {_camTarOffset = [0,.35,1.15]; 		_camZoom = .14; dsl_SelfCam_FrontOrBack = 0;	_camComTime = 1};
			};
			dsl_GlobalCam camSetTarget (player modelToWorld _camTarOffset);
			dsl_GlobalCam camSetFOV _camZoom;
			dsl_GlobalCam camCommit _camComTime; 
			!dsl_ShowingSelfCam	
		};
	};
	
	waitUntil 
	{
		private ["_focusCheck","_focusCheckOriginal","_leftRight","_noExtraSleep"]; 
		
		_delayTime = 0; 
		_distance = 0; 
		
		_modDir = 0; 

		_focusCheck = dsl_SelfCam_FocusOn;
		_focusCheckOriginal = _focusCheck;
		_extraSleep = true;
		 
		// simple set camera positions that are known-good and relative to the player
		if (_inc > 4) then {_inc = 0}; 
		if (_inc == 0) then {_modDir = (_pdir + 10) + (180 * dsl_SelfCam_FrontOrBack); _delayTime = 5; _distance = 1;};
		if (_inc == 1) then {_modDir = (_pdir + 20) + (180 * dsl_SelfCam_FrontOrBack); _delayTime = 5; _distance = .45;};
		if (_inc == 2) then {_modDir = (_pdir + 30) + (180 * dsl_SelfCam_FrontOrBack); if (dsl_SelfCam_FocusOn == "weapon") then {_modDir = (_pdir + 10)}; _delayTime = 2; _distance = .45;};
		if (_inc == 3) then {_modDir = (_pdir - 20) + (180 * dsl_SelfCam_FrontOrBack); _delayTime = 5;_distance = .45;};
		if (_inc == 4) then {_modDir = (_pdir - 20) + (180 * dsl_SelfCam_FrontOrBack);  if (dsl_SelfCam_FocusOn == "weapon") then {_modDir = (_pdir - 10)}; _delayTime = 2;_distance = .45;};
		_inc = _inc + 1; 

		_relPos = [player, 3 + _distance, _modDir] call BIS_fnc_relPos;

		dsl_GlobalCam camSetPos [_relPos select 0, _relpos select 1, 1.5];
		dsl_GlobalCam camCommit 3; 		
		
		for "_i" from 0 to 30 do
		{	
			if (_focusCheck != dsl_SelfCam_FocusOn) then {_extraSleep = false} 
			else {sleep .1; _focusCheck = dsl_SelfCam_FocusOn;};
			if (!dsl_ShowingSelfCam) exitWith {}; 
		};
		
		if (_extraSleep) then
		{
			for "_i" from 0 to 30 do
			{	
				if (_focusCheck != _focusCheckOriginal) then {_extraSleep = false} 
				else {sleep .1; _focusCheck = dsl_SelfCam_FocusOn;};
				if (!dsl_ShowingSelfCam) exitWith {}; 				
			};
		};
	
		!dsl_ShowingSelfCam
	};
	
	call fn_dsl_EndCamera; 
}; 


[] spawn fn_dsl_SetUpSelfPortraitCam; 
 
call fn_dsl_SelfView_UpdateAllText;