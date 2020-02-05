if (hasInterface) then
{	
	while {sleep 15.0;(alive player)} do {
		if (player getVariable ["ACE_isUnconscious", false] OR (lifeState player == "INCAPACITATED")) then 
		{
			//hint format ["Player saved"]; //debug code pls remove
			[player, false] call ace_medical_fnc_setUnconscious;
		};
	};
};