[] execVM "intro.sqf";
[] execVM "seltheonInfoBriefing.sqf";

[{!isNull player}, {
    player allowDamage false;
    [player] execVM "randomLoadout.sqf";
}, []] call CBA_fnc_waitUntilAndExecute;

[grad_lbm_weaponShop,"weaponShop",grad_lbm_weaponShop_cargo,grad_lbm_weaponShop,"Weapon Shop","Buy Weapons",{true},[-0.5,0.4,0],3,[]] call grad_lbm_fnc_addInteraction;
[grad_lbm_equipmentShop,"equipmentShop",grad_lbm_equipmentShop_cargo,grad_lbm_equipmentShop,"Equipment Shop","Buy Equipment",{true},[-0.5,0.4,0],3,[]] call grad_lbm_fnc_addInteraction;


co_seltheon_sniperWeapons = ("true" configClasses (missionConfigFile >> "CfgGradBuymenu" >> "weaponShop" >> "sniper")) apply {configName _x};
co_seltheon_sniperScopes = ("true" configClasses (missionConfigFile >> "CfgGradBuymenu" >> "weaponShop" >> "scopes")) apply {configName _x};
co_seltheon_fnc_handleScopeChange = compile preprocessFileLineNumbers "fn_handleScopeChange.sqf";
player addEventHandler ["Take",{_this call co_seltheon_fnc_handleScopeChange}];
