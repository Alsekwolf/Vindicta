#include "..\..\OOP_Light\OOP_Light.h"

/*
Goal for a group to get in their vehicles as crew.
*/

#define pr private

CLASS("GoalGroupGetInVehiclesAsCrew", "Goal")

	// /* virtual */ STATIC_METHOD("calculateRelevance") {
	// 	params [P_THISCLASS, P_OOP_OBJECT("_AI")];
		
	// 	pr _ws = GETV(_AI, "worldState");
		
	// 	pr _allHaveDrivers = [_ws, WSP_GAR_ALL_VEHICLE_GROUPS_HAVE_DRIVERS, true] call ws_propertyExistsAndEquals;
	// 	pr _enoughHumansToDrive = [_ws, WSP_GAR_ENOUGH_HUMANS_TO_DRIVE_ALL_VEHICLES, true] call ws_propertyExistsAndEquals;
	// 	pr _allHaveTurretOperators = [_ws, WSP_GAR_ALL_VEHICLE_GROUPS_HAVE_TURRET_OPERATORS, true] call ws_propertyExistsAndEquals;
	// 	pr _enoughHumansToTurret = [_ws, WSP_GAR_ENOUGH_HUMANS_TO_TURRET_ALL_VEHICLES, true] call ws_propertyExistsAndEquals;
	// 	//pr _isBalanced = [_ws, WSP_GAR_VEHICLE_GROUPS_BALANCED, true] call ws_propertyExistsAndEquals;

	// 	//OOP_INFO_5(" AI: %1, allHaveDrivers: %2, enoughHumansToDrive: %3, allHaveTurrets: %4, enoughHumansToTurret: %5", _AI, _allHaveDrivers, _enoughHumansToDrive, _allHaveTurretOperators, _enoughHumansToTurret);

	// 	if ( (	(!_allHaveDrivers)			&& _enoughHumansToDrive ) ||
	// 		(	(!_allHaveTurretOperators)	&& _enoughHumansToTurret )) then {
	// 	//if(!_isBalanced) then {
	// 		//OOP_INFO_0("High relevance!");
	// 		GET_STATIC_VAR(_thisClass, "relevance");
	// 	} else {
	// 		//OOP_INFO_0("Low relevance!");
	// 		0
	// 	};
	// } ENDMETHOD;
ENDCLASS;