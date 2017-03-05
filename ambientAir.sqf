mcd_fnc_randomFlyby = {
    private _center = [4342.89,3817.93,0];
    private _start = _center getPos [1800,random 360];
    private _end = _start getPos [4000,_start getDir (_center getPos [random 500, random 360])];
    private _height = (random 300) + 150;
    private _aircraft = selectRandom [
        "RHS_AH64D",
        "RHS_UH60M_d",
        "RHS_C130J",
        "rhsusf_f22",
        "B_Heli_Light_01_F",
        "B_Heli_Transport_01_F"
    ];

    [_start,_end,_height,"NORMAL",_aircraft,WEST] call BIS_fnc_ambientFlyby;

    private _waitTime = 30 + random 900;
    [{[] call mcd_fnc_randomFlyby}, [], _waitTime] call CBA_fnc_waitAndExecute;
};

[] call mcd_fnc_randomFlyby;
