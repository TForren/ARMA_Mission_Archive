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


switch (side player) do { //Checks what team the player is on

	case east: { //If player is east he receives this message

		_startTextArray = [
			["TITLEQUOTE", "Farewell Altis"],
			["TEXT", "Zaros solar power plant"],
			["DATETIME"]
		];

	}; //End of east case
}; //End of switch