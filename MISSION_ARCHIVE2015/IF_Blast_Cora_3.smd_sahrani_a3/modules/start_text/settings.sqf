//_startTextArray Format:
//
//["LINE_TYPE", "LINE_TEXT"], <-- remember to put a comma unless this is the last line
//
//Line Types:
//
//TITLEQUOTE -> "MyTitle"
//TITLE -> MyTitle
//TEXT - > MyText
//TIME -> Displays time (no text required)
//DATE -> Displays date (no text required)
//DATETIME -> Displays date and time (no text required)



if (player in [dp1, dp2]) then 
{
	_startTextArray = [
		["TITLEQUOTE", "Afghanistan"],
		["TEXT", "AH-64 Crash Site"],
		["DATETIME"]
	];
};

if (player in [civ1, civ2, civ3]) then 
{
	_startTextArray = [
		["TITLEQUOTE", "Afghanistan"],
		["TEXT", "Zavarak"],
		["DATETIME"]
	];
};

if ( !(player in [dp1, dp2]) && !(player in [civ1,civ2,civ3]) ) then 
{
	_startTextArray = [
		["TITLEQUOTE", "Afghanistan"],
		["TEXT", "Southern Airfield"],
		["DATETIME"]
	];
};
