private ["_obj","_caller","_id","_params","_OtherObj"];

_obj = _this select 0;               // E.g. ActionBarrel
_caller = _this select 1;            // E.g. Player
_id = _this select 2;                // ID of action
_param = _this select 3;        

_otherobj = _param select 0;                            


_otherobj setPos (getPos _obj);                                    
_obj setPos [-200,-200];                                         
_obj removeAction _id;                                           

lighthousePower = TRUE;
publicVariable lighthousePower;