#include "settings.sqf"
//Much Defines. Wow.
#define AOWARN\
    hint AOLIMITWARNINGTEXT;\
    player say ["AoLimWarning", 5];\
    sleep AOLIMITGRACEPERIOD
    
#define AOKILL\
    hint AOLIMITDEATHTEXT;\
    player say ["AoLimDeath", 5];\
    sleep 5;\
    player setDamage 1;
    
#define MARKEREXISTS(AOMARKER)\
    if ((getMarkerPos AOMARKER select 0 == 0) && (getMarkerPos AOMARKER select 1 == 0)) exitWith {\
        hint format ["AO Limit Marker not Found: %1.", AOMARKER];\
    }
    
#define CHECKLIMIT(AOMARKER)\
    !([getPos player, AOMARKER] call CBA_fnc_inArea) && !(player getVariable ["frameworkDead", false])
    
#define HANDLEAO(AOMARKER)\
    if (CHECKLIMIT(AOMARKER)) then\
    {\
        AOWARN;\
        if (CHECKLIMIT(AOMARKER)) then\
        {\
            AOKILL;\
        };\
    }

if (!isDedicated) then {
    [] spawn {
        sleep 0.1;
        //Check that any defined markers exist.
        #ifdef AOLIMITALL
        MARKEREXISTS(AOLIMITALL);
        #endif //AOLIMITALL
        
        #ifdef AOLIMITWEST
        MARKEREXISTS(AOLIMITWEST);
        #endif //AOLIMITWEST
        
        #ifdef AOLIMITEAST
        MARKEREXISTS(AOLIMITEAST);
        #endif //AOLIMITEAST
        
        #ifdef AOLIMITGUER
        MARKEREXISTS(AOLIMITGUER);
        #endif //AOLIMITGUER
        
        #ifdef AOLIMITCIV
        MARKEREXISTS(AOLIMITCIV);
        #endif //AOLIMITCIV

        while {true} do
        {
            //Global AO limit.
            #ifdef AOLIMITALL
            HANDLEAO(AOLIMITALL);
            #endif //AOLIMITALL
            
            //WEST AO limit.
            #ifdef AOLIMITWEST
            if (side player == west) then {
                HANDLEAO(AOLIMITWEST);
            };
            #endif //AOLIMITWEST
            
            //EAST AO limit.
            #ifdef AOLIMITEAST
            if (side player == east) then {
                HANDLEAO(AOLIMITEAST);
            };
            #endif //AOLIMITEAST
            
            //GUER AO limit.
            #ifdef AOLIMITGUER
            if (side player == resistance) then {
                HANDLEAO(AOLIMITGUER);
            };
            #endif //AOLIMITGUER
            
            //CIV AO limit.
            #ifdef AOLIMITCIV
            if (side player == civilian) then {
                HANDLEAO(AOLIMITCIV);
            };
            #endif //AOLIMITCIV
            
            sleep AOLIMITCHECKINTERVAL;
        };
    };
};