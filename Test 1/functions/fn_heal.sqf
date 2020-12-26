private ["_player"];

_player = _this select 0;

_currentDamage = getDammage _player;
_healAmount = 0.3;

_player setDamage (_currentDamage - _healAmount);