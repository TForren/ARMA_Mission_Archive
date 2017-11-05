/* 
* @Author:  DnA
* @Profile: http://steamcommunity.com/id/dna_uk
* @Date:    2014-05-18 19:10:34
* @Last Modified by:   DnA
* @Last Modified time: 2014-09-23 02:38:55
*/

#include "define.inc"

private [ "_mode", "_params" ]; 
_mode = _this select 0;
_params = _this select 1;

switch _mode do {

	case "onLoad": {

		//--- Display
		_display = ( _params select 0 );

		//--- DisplayChild Intel
		_displayChildIntel = _display displayCtrl IDC_RSCDISPLAYCHILDINTEL;
		_displayChildIntel ctrlShow false;

		//---Control SliderTime
		_ctrlSliderTime = _display displayCtrl IDC_RSCDISPLAYCHILDINTEL_SLIDERTIME;
		_ctrlSliderTime sliderSetRange [ 0, ( 60 * 24 ) ];
		_ctrlSliderTime sliderSetSpeed [ 0.5, 2 ];
		_ctrlSliderTime ctrlAddEventHandler [ "SliderPosChanged",  { [ "onChangeTime", [ ctrlParent ( _this select 0 ) ] ] call NMD_RscDisplayChildIntel } ];

		//---Control SliderOvercast
		_ctrlSliderOvercast = _display displayCtrl IDC_RSCDISPLAYCHILDINTEL_SLIDEROVERCAST;
		_ctrlSliderOvercast sliderSetRange [ 0, 1 ];

		//---Control SliderFog
		_ctrlSliderFog = _display displayCtrl IDC_RSCDISPLAYCHILDINTEL_SLIDERFOG;
		_ctrlSliderFog sliderSetRange [ 0, 1 ];

		//---Control SliderWaves
		_ctrlSliderWaves = _display displayCtrl IDC_RSCDISPLAYCHILDINTEL_SLIDERWAVES;
		_ctrlSliderWaves sliderSetRange [ 0, 1 ];

		//---Control ButtonCancel
		_ctrlButtonCancel = _display displayCtrl IDC_RSCDISPLAYCHILDINTEL_BUTTONCANCEL;
		_ctrlButtonCancel ctrlAddEventHandler [ "ButtonClick",  { [ "onClickCancel", [ ctrlParent ( _this select 0 ) ] ] call NMD_RscDisplayChildIntel } ];

		//--- Control ButtonApply
		_ctrlButtonApply = _display displayCtrl IDC_RSCDISPLAYCHILDINTEL_BUTTONAPPLY;
		_ctrlButtonApply ctrlAddEventHandler [ "ButtonClick",  { [ "onClickApply", [ ctrlParent ( _this select 0 ) ] ] call NMD_RscDisplayChildIntel } ];

	};

	/////////////////////////////////////////////////////////////////////////////////

	case "onUnload": {

		

	};

	/////////////////////////////////////////////////////////////////////////////////

	case "onShow": {

		//--- Display
		_display = ( _params select 0 );
		_display displayAddEventHandler [ "KeyDown", { [ "onKeyDown", _this ] call NMD_RscDisplayChildIntel; true } ];

		//--- Show child display
		_displayChildIntel = _display displayCtrl IDC_RSCDISPLAYCHILDINTEL;
		_displayChildIntel ctrlShow true;
		ctrlSetFocus _displayChildIntel;

		//---Control SliderTime
		_ctrlSliderTime = _display displayCtrl IDC_RSCDISPLAYCHILDINTEL_SLIDERTIME;
		_ctrlSliderTime sliderSetPosition ( daytime * 60 );
		[ "onChangeTime", [ _display ] ] call NMD_RscDisplayChildIntel;

		//---Control SliderOvercast
		_ctrlSliderOvercast = _display displayCtrl IDC_RSCDISPLAYCHILDINTEL_SLIDEROVERCAST;
		_ctrlSliderOvercast sliderSetPosition overcast;

		//---Control SliderFog
		_ctrlSliderFog = _display displayCtrl IDC_RSCDISPLAYCHILDINTEL_SLIDERFOG;
		_ctrlSliderFog sliderSetPosition fog;

		//---Control SliderWaves
		_ctrlSliderWaves = _display displayCtrl IDC_RSCDISPLAYCHILDINTEL_SLIDERWAVES;
		_ctrlSliderWaves sliderSetPosition waves;

	};

	/////////////////////////////////////////////////////////////////////////////////

	case "onHide": {

		_display = ( _params select 0 );
		_display displayRemoveAllEventHandlers "KeyDown";

		//--- Hide child display
		_displayChildIntel = _display displayCtrl IDC_RSCDISPLAYCHILDINTEL;
		_displayChildIntel ctrlShow false;

	};

	/////////////////////////////////////////////////////////////////////////////////

	case "onKeyDown": {

		_display = _params select 0;
		_key = _params select 1;

		//--- Esc key override
		if ( _key == 1 ) then {

			//--- Remove the event handler
			_display displayRemoveAllEventHandlers "KeyDown";

			//--- Close the display
			[ "onClickCancel", [ _display ] ] call NMD_RscDisplayChildIntel;

		};

	};

	/////////////////////////////////////////////////////////////////////////////////

	case "onChangeTime": {

		_display = ( _params select 0 );
		_ctrlSliderTime = _display displayCtrl IDC_RSCDISPLAYCHILDINTEL_SLIDERTIME;
		_ctrlValueTime = _display displayCtrl IDC_RSCDISPLAYCHILDINTEL_VALUETIME;
		_value = sliderPosition _ctrlSliderTime;

		//--- Set value
		_ctrlValueTime ctrlSetText ( [ _value / 60 ] call BIS_Fnc_TimeToString );

	};

	/////////////////////////////////////////////////////////////////////////////////

	case "onClickCancel": {

		_display = ( _params select 0 );

		//--- Close intel
		[ "displayChild", [ _display, NMD_RscDisplayChildIntel, false ] ] call NMD_RscDisplayAdmin;

	};

	/////////////////////////////////////////////////////////////////////////////////

	case "onClickApply": {

		_display = ( _params select 0 );
		_ctrlSliderTime = _display displayCtrl IDC_RSCDISPLAYCHILDINTEL_SLIDERTIME;
		_ctrlSliderOvercast = _display displayCtrl IDC_RSCDISPLAYCHILDINTEL_SLIDEROVERCAST;
		_ctrlSliderFog = _display displayCtrl IDC_RSCDISPLAYCHILDINTEL_SLIDERFOG;

		//--- Values
		_time = sliderPosition _ctrlSliderTime / 60;
		_overcast = sliderPosition _ctrlSliderOvercast;
		_fog = sliderPosition _ctrlSliderFog;
		
		//--- Apply time
		_date = date;
		_date set [ 3, floor _time];
		_date set [ 4, ( _time % 1 ) * 60 ];
		[ _date ] call BIS_fnc_setDate;

		//--- Apply overcast
		_overcast spawn BIS_fnc_setOvercast;

		//--- Apply fog
		_fog call BIS_fnc_setFog;

		//--- Close intel
		[ "displayChild", [ _display, NMD_RscDisplayChildIntel, false ] ] call NMD_RscDisplayAdmin;

		//--- Show notification
		[ "showNotification", [ _display, "Time and weather applied" ] ] call NMD_RscDisplayAdmin;

	};

};