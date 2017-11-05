// Civilian Opinion - Good Civilian Interaction
// by: Kinch
// Synopsis: This script determines what kind of response you get out of a "good civ"

_target = _this select 0;  // Object that had the Action (also _target in the addAction command)
_caller = _this select 1;  // Unit that used the Action (also _this in the addAction command)
_action = _this select 2;  // ID of the Action

// Remove the action
removeAllActions _target;

// Have a short introductory conversation
_caller GroupChat "Hi there!";
sleep 2;
_target DisableAI "MOVE"; _target globalChat "Hello there, what can I help you with?";
sleep 2;
_caller GroupChat "Do you know of any nearby CSAT Activity?";
sleep 2;
_target globalChat "Unfortunately this is only an example conversation, so there most likely isn't any activity nearby.";
sleep 2;
_caller GroupChat "Oh, ok. Bye.";
sleep 2;
_target EnableAI "MOVE";