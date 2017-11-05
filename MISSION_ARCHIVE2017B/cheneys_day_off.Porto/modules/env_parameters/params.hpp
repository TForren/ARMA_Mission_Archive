// Params: https://community.bistudio.com/wiki/Arma_3_Mission_Parameters

class TimeOfDay {
	title = "Time";
	texts[] = {"Mission default", "0600", "1200", "1800", "0000", "Early dawn", "Dawn", "Early dusk", "Dusk", "Random"};
	values[] = {-1, 6, 12, 18, 0, -2, -3, -4, -5, -10};
	default = -1;
};

class Weather {
	title = "Weather";
	texts[] = {"Mission default", "Clear", "Cloudy", "Overcast", "Rain", "Storm", "Random"};
	values[] = {-1, 1, 3, 5, 7, 9, -10};
	default = -1;
};

class Wind {
	title = "Wind";
	texts[] = {"Mission default", "No Wind", "Light breeze", "Moderate breeze", "Strong breeze", "Strong gale", "Violent storm", "Random"};
	values[] = {-1, 0, 2, 4, 6, 8, 10, -10};
	default = 0;
};

class Fog {
	title = "Fog";
	texts[] = {"Mission default", "No Fog", "Slightly Foggy", "Foggy", "Very Foggy", "Random"};
	values[] = {-1, 0, 1, 2, 3, -10};
	default = -1;
};

class TimeLimit {
	title = "Change time limit";
	texts[] = {"-10 Min", "-5 Min", "No change", "+5 Min", "+10 Min", "No time limit"};
	values[] = {-10, -5, 0, 5, 10, -1};
	default = 0;
};