//InitPlayerLocal contains an array [Player, isJIP]
//isJIP determines if the player is joining the mission while it is in progress

_unit = _this select 0;
_isJIP = _this select 1;

if (!_isJIP) then
{
  hint "Welcome to the Mission on Mission Start";
  [_unit] call Doc_fnc_playerSpawn
};

if (_isJIP) then
{
  hint "Why are you so late??";
};
