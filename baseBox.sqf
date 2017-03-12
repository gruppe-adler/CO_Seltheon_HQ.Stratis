/*  Adds limited virtual arsenal to an object
*
*   Parameters:
*   0:  Object
*/

params [["_box",objNull]];

if (!isServer) exitWith {};
if (isNull _box) exitWith {};

private _availableHeadgear = [missionConfigFile >> "restrictedArsenal","headgear",[]] call BIS_fnc_returnConfigEntry;

{
    _box addItemCargoGlobal [_x,3];
} forEach _availableHeadgear;

_box addItemCargoGlobal ["ACE_fieldDressing",50];
_box addItemCargoGlobal ["ACE_epinephrine",20];
_box addItemCargoGlobal ["ACE_morphine",35];
_box addItemCargoGlobal ["ACE_bloodIV_500",10];
_box addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_Mk318_Stanag",50];
_box addWeaponCargoGlobal ["rhs_weap_m4a1_carryhandle",5];
