/*  Displays Gruppe Adler logo and mission name at start of game
*
*   executed on players via init.sqf
*/

waitUntil {time > 3};

_text = (
    "<img size= '5' style='vertical-align:middle' shadow='false' image='data\logo.paa'/>" +
    "<br/>" +
    "<t size='1.2' color='#FFFFFF'>SELTHEON HQ</t>" +
    "<br/>" +
    "<t size='0.5'>Informationen unter:</t>" +
    "<br/>" +
    "<t size='0.5'>Karte >> Briefing >> Seltheon</t>"
);
[_text,0,0,4,2] spawn BIS_fnc_dynamicText;
