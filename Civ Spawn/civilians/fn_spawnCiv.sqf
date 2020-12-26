params["_pos", "_group"];

_select = (floor random 6) + 1;
_unit = format ["C_Man_casual_%1_F_tanoan", _select];

_unit createUnit [_pos, _group, "0 = [this] execVM 'civilians\fn_civLogic.sqf';"]