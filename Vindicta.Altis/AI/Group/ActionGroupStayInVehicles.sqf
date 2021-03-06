#include "common.hpp"

/*
Class: ActionGroup.ActionGroupStayInVehicles
Group members will remain inside their current vehicles.
Currently it does nothing, but it could potentially perform monitoring of units to stay inside vehicles.
*/

#define pr private

CLASS("ActionGroupStayInVehicles", "ActionGroup")
	
	// ------------ N E W ------------

	// logic to run when the goal is activated
	METHOD("activate") {
		params [P_THISOBJECT];

		// Return ACTIVE state
		T_SETV("state", ACTION_STATE_ACTIVE);
		ACTION_STATE_ACTIVE
	} ENDMETHOD;

	// logic to run each update-step
	METHOD("process") {
		params [P_THISOBJECT];

		pr _state = T_CALLM0("activateIfInactive");
		if(_state == ACTION_STATE_ACTIVE) then {
			private _hG = T_GETV("hG");
			if((units _hG findIf { vehicle _x == _x }) != NOT_FOUND) then {
				_state = ACTION_STATE_FAILED;
			};
		};
		T_SETV("state", _state);
		_state
	} ENDMETHOD;
	
	// logic to run when the action is satisfied
	METHOD("terminate") {
		params [P_THISOBJECT];
		
	} ENDMETHOD;

ENDCLASS;