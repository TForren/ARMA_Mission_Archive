//invoke.sqf
/*
	Invoker Script
	Allows sending and executions of arma "code" from a client to be propagated to other clients.
	it alsow allows for code to be directed to a specific player.
	it does is never recieved and execute from the originator (ie the sender) machine.
	Example: ["hint 'Hello World'"] call fnc_DSG_Invoke 
*/

//DSG_Invoke_handler
// internal use only
DSG_Invoke_Handler =
{
	private "_variableName";
	private "_packet";

	private "_sender";
	private "_code";
	private "_client";

	_variableName = _this select 0;
	_packet = _this select 1;
	
	_sender = _packet select 0;
	_code = _packet select 1;
	
	_client = owner _sender;
	DSG_Invoke_Return = (call compile _code);
  
	_client publicVariableClient "DSG_Invoke_Return";
};

//DSG_Invoke_handler
// internal use only
DSG_Invoke_ReturnHandler =
{
	DSG_Invoke_Busy = false;
};

//fnc_DSG_Invoke
//	Invokes code on all currently connected clients, 
//  This includes the "__SERVER__" player.
//Parameters:
//	String code
//Returns:
// 	Nothing
fnc_DSG_Invoke = 
{
	private "_code";
	
	_code = _this select 0;
	
	DSG_Invoke_Channel = [player, _code];
	publicVariable "DSG_Invoke_Channel";
};

//fnc_InvokeOnAllClients
//	Invokes code on specified player
//	if the player is not valid then nothing happens.
//Parameters:
//  Object player
//	String code
//Returns:
// 	Nothing
fnc_DSG_DirectedInvoke =
{
	private "_player";
	private "_code";
	private "_client";
	
	_player = _this select 0;
	_code = _this select 1;
	
	if (isPlayer _player) then
	{
		_client = owner _player;
		DSG_Invoke_Channel = [_player , _code];
		_client publicVariableClient "DSG_Invoke_Channel";
	}	
};

//fnc_InvokeServer
//	invoke code only on the server
//Parameters:
//	String code
//Returns:
//	Nothing
fnc_DSG_ServerInvoke =
{
	private "_code";
	
	_code = _this select 0;
	
	DSG_Invoke_Channel = [player, _code];
	publicVariableServer "DSG_Invoke_Channel";
};

//fnc_DSG_DirectedFunction
//	Invokes code on a specific player, 
//  This includes the "__SERVER__" player.
//	then returns the result to the caller.
//Parameters:
//  object player
//	String code
//Returns:
// 	Nothing
fnc_DSG_DirectedFunction = 
{
	private "_player";
	private "_code";
	private "_client";
	
	_player = _this select 0;
	_code = _this select 1;
	
	if (isPlayer _player) then
	{
		_client = owner _player;
		DSG_Invoke_Channel = [_player, _code];
		DSG_Invoke_Busy = true;
		_client publicVariableClient "DSG_Invoke_Channel";
	};
	
    //wait for return to be filled.
    while { DSG_Invoke_Busy } do
	{
		sleep 0.1; 
	};
	DSG_Invoke_Return;
};

//fnc_DSG_ServerFunction
//	Invokes code on a the server,
//	then returns the result to the caller.
//Parameters:
//	String code
//Returns:
// 	Nothing
fnc_DSG_ServerFunction = 
{
	private "_player";
	private "_code";
	private "_client";
	
	_code = _this select 0;
	
	DSG_Invoke_Channel = [player, _code];
	DSG_Invoke_Busy = true;
	publicVariableServer "DSG_Invoke_Channel";
	
    //wait for return to be filled.
    while { DSG_Invoke_Busy } do
	{
		sleep 0.1; 
	};
	DSG_Invoke_Return;
};

//register a event handlers for the variables
DSG_Invoke_Channel = "";
DSG_Invoke_Return = "";
DSG_Invoke_Busy = false;
"DSG_Invoke_Channel" addPublicVariableEventHandler DSG_Invoke_Handler;
"DSG_Invoke_Return" addPublicVariableEventHandler DSG_Invoke_ReturnHandler;