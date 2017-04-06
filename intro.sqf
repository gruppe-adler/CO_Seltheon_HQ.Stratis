/*  Displays Gruppe Adler logo and mission name at start of game
*
*   executed on players via init.sqf
*/

waitUntil {time > 3};

hint composeText [
    parseText "<img size='10' image='data\logo.paa'/>",
    lineBreak,
    parseText "<t size='2.4'>Seltheon HQ</t>",
    lineBreak,
    lineBreak,
    "Informationen unter:",
    lineBreak,
    "Karte >> Briefing >> Seltheon",
    lineBreak
];

_text = format ["<img size= '6' style='vertical-align:middle' shadow='false' image='data\gruppe-adler.paa'/><br/><t size='.9' color='#FFFFFF'>%1</t>", toUpper _missionName];
[_text,0,0,2,2] spawn BIS_fnc_dynamicText;
