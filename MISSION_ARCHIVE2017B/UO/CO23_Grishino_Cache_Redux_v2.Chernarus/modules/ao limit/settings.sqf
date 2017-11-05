//The global AO limit. No player may leave this area without dying. This should be a marker name, complete with quote marks.
//Comment this out to disable the global AO limit.
#define AOLIMITALL "aom"

//Uncomment and edit these lines, as required, to create specific AO limits. Requirements as above.
//#define AOLIMITWEST "westAO"
//#define AOLIMITEAST "eastAO"
//#define AOLIMITGUER "guerAO"
//#define AOLIMITCIV "civAO"


//The grace period between being warned of an AO violation and being killed for it.
#define AOLIMITGRACEPERIOD 10

//The frequency with which players positions are checked. Decrease to make the script more strict.
#define AOLIMITCHECKINTERVAL 5

//Text hinted to the player when this violation occurs. Include quotes.
#define AOLIMITWARNINGTEXT "You have left the Area of Operations. Turn around."

//Text hinted to the player when they are killed. Include quotes.
#define AOLIMITDEATHTEXT "You have died as a result of leaving the AO."