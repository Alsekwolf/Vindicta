#include "common.hpp"

// Class: AI.Garrison.GoalGarrisonDefendActive
// Garrison will be in defensive posture.
// High priority action.
// Only allowed when garrison is alerted (known targets).
CLASS("GoalGarrisonDefendActive", "Goal")
	STATIC_METHOD("calculateRelevance") {
		params [P_THISCLASS, P_OOP_OBJECT("_AI")];
		
		// Check if the garrison knows about any enemies
		if (CALLM0(_AI, "isSpawned") && { CALLM0(_AI, "isAlerted") }) then {
			GET_STATIC_VAR(_thisClass, "relevance")
		} else {
			0
		};
	} ENDMETHOD;

ENDCLASS;