// Params: https://community.bistudio.com/wiki/Arma_3_Mission_Parameters

class TimeOfDay {
	title = "Time";
	texts[] = {"Default (Night)", "Morning", "Noon", "Afternoon", "Dusk", "Dawn", "Random"};
	values[] = {-1, 7, 12, 18, 19.7, 4.5, -10};
	default = -1;
};

 class Weather {
 	title = "Weather";
 	texts[] = {"Mission default (Very cloudy)", "Clear", "Cloudy", "Overcast", "Rain", "Storm", "Random"};
 	values[] = {-1, 1, 3, 5, 7, 9, -10};
 	default = -1;
 };

// class Wind {
// 	title = "Wind";
// 	texts[] = {"Mission default", "No Wind", "Light breeze", "Moderate breeze", "Strong breeze", "Strong gale", "Violent storm"};
// 	values[] = {-1, 0, 2, 4, 6, 8, 10};
// 	default = -1;
// };


class Fog {
title = "Fog";
texts[] = {"Mission default (No fog)", "Slightly Foggy", "Foggy", "Very Foggy", "Random"};
values[] = {-1, 1, 2, 3, -10};
default = -1;
};


 class TimeLimit {
 	title = "Change time limit";
 	texts[] = {"Quicker (45 min)", "Default (60 min)", "Slower (75 min)"};
 	values[] = {-15, 0, 15};
 	default = 0;
};