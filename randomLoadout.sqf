params ["_unit"];

removeAllWeapons        _unit;
removeAllItems          _unit;
removeAllAssignedItems  _unit;
removeUniform           _unit;
removeVest              _unit;
removeBackpack          _unit;
removeHeadgear          _unit;
removeGoggles           _unit;

_availableUniforms = [missionConfigFile >> "restrictedArsenal","uniforms",[]] call BIS_fnc_returnConfigEntry;
_availableVests = [missionConfigFile >> "restrictedArsenal","vests",[]] call BIS_fnc_returnConfigEntry;

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "tf_anprc152";

_unit forceAddUniform selectRandom _availableUniforms;
_unit addVest selectRandom _availableVests;

_unit addWeapon "rhs_weap_m4a1_carryhandle";
_unit addWeapon "Binocular";

for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing"};
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_morphine"};
for "_i" from 1 to 6 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag"};
