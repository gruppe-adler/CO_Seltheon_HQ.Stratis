[] execVM "intro.sqf";

[{!isNull player}, {
    player allowDamage false;
    [player] execVM "randomLoadout.sqf";
}, []] call CBA_fnc_waitUntilAndExecute;

[grad_lbm_weaponShop,"weaponShop",grad_lbm_weaponShop_cargo,grad_lbm_weaponShop,"Weapon Shop","Buy Weapons",{true},[-0.5,0.4,0],3,[]] call grad_lbm_fnc_addInteraction;
[grad_lbm_equipmentShop,"equipmentShop",grad_lbm_equipmentShop_cargo,grad_lbm_equipmentShop,"Equipment Shop","Buy Equipment",{true},[-0.5,0.4,0],3,[]] call grad_lbm_fnc_addInteraction;
