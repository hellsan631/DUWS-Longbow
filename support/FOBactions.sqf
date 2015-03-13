_fob = _this select 0;


_fob addaction ["<t color='#ffffff'>Player Stats</t>","dialog\info\info.sqf", "", 8, true, true, "", "_this == player"];
_fob addAction ["<t color='#ffffff'>Heal (2CP)</t>", "heal.sqf", "", 16, true, true, "", "_this == player"];
if (support_armory_available) then {_fob addaction ["<t color='#ffffff'>Armory 1 (VAS)</t>","VAS\open.sqf", "", 18, true, true, "", "_this == player"];};
if (support_armory_available) then {_fob addaction ["<t color='#ffffff'>Armory 2 (VA)</t>","va.sqf", "", 17, true, true, "", "_this == player"];};
if (support_halo_available) then {_fob addAction ["<t color='#ffffff'>HALO Solo (5CP)</t>", "ATM_airdrop\atm_airdrop.sqf", "", 14, true, true, "", "_this == player"];};
if (support_halo_available) then {_fob addAction ["<t color='#ffffff'>HALO Group (5CP)</t>", "COB_HALO\grphalo.sqf", "", 13, true, true, "", "_this == player"];};
if (support_satcom_available) then {_fob addAction ["<t color='#ffffff'>SATCOM</t>", {call PXS_startSatellite;}, "", 15, true, true, "", "_this == player"];};
_fob addaction ["<t color='#ffffff'>FOB Teleport</t>","dialog\fob\FOBmanageropen.sqf", "", 11, true, true, "", "_this == player"];
_fob addaction ["<t color='#ffffff'>REQUESTS MENU</t>","dialog\request_fob.sqf", "", 20, true, true, "", "_this == player"];
_fob addaction ["<t color='#ffffff'>Squad Manager</t>","dialog\squad\squadmng.sqf", "", 19, true, true, "", "_this == player"];
//_fob addaction ["<t color='#ffffff'>Request ammo box (2CP)</t>","support\fob_ammobox.sqf", "", 12, true, true, "", "_this == player"];
if (isServer) then {
_fob addaction ["<t color='#ffffff'>Rest and Save</t>","savegame.sqf", "", 9, true, true, "", "_this == player"];
};
if (!isServer) then {
_fob addaction ["<t color='#ffffff'>Rest</t>","savegameClient.sqf", "", 10, true, true, "", "_this == player"];
};


