// Params: https://community.bistudio.com/wiki/Arma_3_Mission_Parameters

class TimeOfDay {
	title = "Time";
	texts[] = {"Mission default", "0600", "1200", "1800", "0000","Random"};
	values[] = {-1, 6, 12, 18, 0,1337};
	default = -1;
};

class Weather {
	title = "Weather";
	texts[] = {"Mission default", "Clear", "Cloudy", "Overcast", "Rain", "Storm","Random"};
	values[] = {-1, 1, 3, 5, 7, 9,1337};
	default = -1;
};

class Wind {
	title = "Wind";
	texts[] = {"Mission default", "No Wind", "Light breeze", "Moderate breeze", "Strong breeze", "Strong gale", "Violent storm"};
	values[] = {-1, 0, 2, 4, 6, 8, 10};
	default = 0;
};

class Fog {
	title = "Fog";
	texts[] = {"Mission default", "No Fog", "Slightly Foggy", "Foggy", "Very Foggy", "No Visibility","Random"};
	values[] = {-1, 0, 2.5, 5, 7.5, 10,1337};
	default = -1;
};

class TimeLimit {
	title = "Change time limit";
	texts[] = {"-30 Min", "-15 Min", "No change", "+15 Min", "+30 Min", "No time limit"};
	values[] = {-30, -15, 0, 15, 30, -1};
	default = 0;
};