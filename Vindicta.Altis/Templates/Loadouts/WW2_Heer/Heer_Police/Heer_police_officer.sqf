comment "Exported from Arsenal by MatrikSky";

removeAllWeapons this;
removeAllItems this;
removeAllAssignedItems this;
removeUniform this;
removeVest this;
removeBackpack this;
removeHeadgear this;
removeGoggles this;

/*Helmet*/
_RandomHeadgear = selectRandom ["H_LIB_GER_Cap_SS", "H_LIB_GER_Helmet_SSbT1", "H_LIB_GER_Helmet_SSb", "H_LIB_GER_CapOfficer_SS", "H_LIB_GER_OfficerCap_SS", "H_LIB_GER_OfficerCap_SS_Uffz"];
this addHeadgear _RandomHeadgear;
/*Uniform*/
_RandomUniform = selectRandom ["U_LIB_GER_Officer_SSUstufsbMP40", "U_LIB_GER_Unterofficer_SSUschaMP40", "U_LIB_GER_Unterofficer_SSStuscharfMP40", "U_LIB_GER_Unterofficer_SSStrmmMP40", "U_LIB_GER_Officer_SSStubafsbM1908", "U_LIB_GER_Officer_SSStafsbM1908", "U_LIB_GER_Unterofficer_SSScharfMP40", "U_LIB_GER_Unterofficer_SSRttfMP40", "U_LIB_GER_Officer_SSOstufsbMP40", "U_LIB_GER_Officer_SSOstubafsbM1908", "U_LIB_GER_Officer_SSObstgrufsbP38", "U_LIB_GER_Unterofficer_SSOschaMP40", "U_LIB_GER_Rifleman_SSOmnnG43", "U_LIB_GER_Officer_SSOgrufsbP08", "U_LIB_GER_Officer_SSOstafsbM1908", "U_LIB_GER_Officer_SSHstufsbMP40", "U_LIB_GER_Unterofficer_SSHschaMP40", "U_LIB_GER_Officer_SSGrufsbP38", "U_LIB_GER_Officer_SSBrifsbP08"];
this forceAddUniform _RandomUniform;
/*Vest*/
_RandomVest = selectRandom ["V_LIB_GER_VestUnterofficer", "V_LIB_GER_FieldOfficer", "V_LIB_GER_OfficerBelt", "V_LIB_GER_PrivateBelt"];
this addVest _RandomVest;
/*Backpack*/

/*Weapon*/
_RandomWeapon = selectRandom ["LIB_MP38", "LIB_MP40"];
this addWeapon _RandomWeapon;
this addWeapon "LIB_P38";
/*WeaponItem*/
this addPrimaryWeaponItem "LIB_32Rnd_9x19";
this addHandgunItem "LIB_8Rnd_9x19";

/*Items*/
this addItemToUniform "FirstAidKit";
for "_i" from 1 to 3 do {this addItemToVest "LIB_32Rnd_9x19";};
for "_i" from 1 to 3 do {this addItemToVest "LIB_8Rnd_9x19";};
for "_i" from 1 to 2 do {this addItemToVest "LIB_Shg24";};
this addItemToVest "LIB_Shg24x7";
this addItemToVest "LIB_NB39";

/*Items*/
this linkItem "ItemMap";
this linkItem "LIB_GER_ItemCompass_deg";
this linkItem "LIB_GER_ItemWatch";
this linkItem "LIB_Binocular_GER";

[this,"Default","male03ger"] call BIS_fnc_setIdentity;
