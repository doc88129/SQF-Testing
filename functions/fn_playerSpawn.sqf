private ["_player"];

//param[0] is the same as using _this select 0
//param[0, objNull] sets the default to Null if param is not avaiable
_player = param[0]; 

removeAllWeapons _player;

//addAction [Name, Script]
_player addAction ["Do Damage", "(_this select 0) setDamage .7"];

//This type executes a file function instead of a single lined function
//Can harm performance when done multiple times
_player addAction ["Do Heal", "[(_this select 0)] execVM 'heal.sqf';"];

//Does the same as above but instead treats it like a function 
_player addAction ["Do Heal 2","[(_this select 0)] call Doc_fnc_heal;"];

//spawn does the same as call but is scheduled instead meaning it must wait for its turn in the queue and can be suspended unlike call
_player addAction ["Gun Shop", "[] spawn Doc_fnc_showGunShopDialog"];

while {countDown > -1} do
{
	hintSilent str(countDown);
};

_markers = allMapMarkers;
_numberOfMarkers = count _markers;

for "_i" from 1 to 20 do 
{
	scopeName "markerMaking";
	private ["_markers"];

	if ((getDammage _player) > 0) then
	{
		//breakOut stops the loop and contiues on with what is outside the scope
		breakOut "markerMaking";
	};

	//%1 is used to change the name which is replaced by the first param that it has which is _i
	_temp = format ["marker_%1", _i];
	_playerPos = position _player;
	//BIS_fnc_findSafePos is a function that randomly generates a position within the given params
	_pos = [_playerPos, 1, 50, 10, 0, 900, 0] call BIS_fnc_findSafePos;
	_marker = createMarker [_temp, _pos];
	_marker setMarkerType "hd_dot";
	_markers = allMapMarkers;

	 //This then goes through each marker once a new marker is created and tells the name in sideChat
	{
		sleep 1;
		_player sideChat str(_x);
	} forEach _markers;
 };

	//Allows you to wait until the script is complete before starting another by utilizing the true
	true