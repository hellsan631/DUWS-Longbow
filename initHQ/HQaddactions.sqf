_hq = _this select 0;


_hq addaction ["<t color='#ffffff'>Player Stats</t>","dialog\info\info.sqf", "", 8, true, true, "", "_this == player"];
_hq addAction ["<t color='#ffffff'>Heal (2CP)</t>", "heal.sqf", "", 16, true, true, "", "_this == player"];
_hq addaction ["<t color='#ffffff'>FOB Teleport</t>","dialog\fob\FOBmanageropen.sqf", "", 11, true, true, "", "_this == player"];
_hq addaction ["<t color='#ffffff'>REQUESTS MENU</t>","dialog\request.sqf", "", 20, true, true, "", "_this == player"];
_hq addaction ["<t color='#ffffff'>Squad Manager</t>","dialog\squad\squadmng.sqf", "", 19, true, true, "", "_this == player"];



if (isServer) then {
_hq addaction ["<t color='#ffffff'>Rest and Save</t>","savegame.sqf", "", 9, true, true, "", "_this == player"];

};
if (!isServer) then {
_hq addaction ["<t color='#ffffff'>Rest</t>","savegameClient.sqf", "", 10, true, true, "", "_this == player"];
};