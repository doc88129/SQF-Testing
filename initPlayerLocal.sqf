//InitPlayerLocal contains an array [Player, isJIP]
//isJIP determines if the player is joining the mission while it is in progress

//params["_unit","_isJIP"] does the same but all in one and makes the variable private. order does matter
_unit = _this select 0;
_isJIP = _this select 1;

if (!_isJIP) then
{
  hint "Welcome to the Mission on Mission Start";
  //Call is unscheduled meaning it will not wait till the "queue" goes to the function 
  //Call does not allow the function to use the sleep function except within loops
  //Call stops the script from continuing until the called function is finished
  [_unit] call Doc_fnc_playerSpawn;
};

if (_isJIP) then
{
  hint "Why are you so late??";
  _handle = [_unit, 0] spawn Doc_fnc_cubeLadder;
  _handle2 = [_unit, 1] spawn Doc_fnc_cubeLadder;
  _handle3 = [_unit, 2] spawn Doc_fnc_cubeLadder;
};