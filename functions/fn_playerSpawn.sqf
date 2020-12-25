private ["_player"];

//param[0] is the same as using _this select 0
_player = param[0]; 

removeAllWeapons _player;

//addAction [Name, Script]
_player addAction ["Do Damage", "(_this select 0) setDamage .7"];

//This type executes a file function instead of a single lined function
//Can harm performance when done multiple times
_player addAction ["Do Heal", "[(_this select 0)] execVM 'heal.sqf';"];

//Does the same as above but instead treats it like a function 
_player addAction ["Do Heal 2","[(_this select 0)] call Doc_fnc_heal;"];

_player addAction ["Gun Shop", "[] spawn Doc_fnc_showGunShopDialog"];

while {countDown > -1} do
{
	hintSilent str(countDown);
};