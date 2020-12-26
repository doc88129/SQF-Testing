params["_player"];
//Spawning Civs 

//array to store civ info 
private _civs = [];
//array to store building info
private _buildings = [];
//max number of civs 
private _max = 25;
//max distance from player 
private _radius = 200;
private _center = createCenter civilian;
private _group = createGroup civilian;

//compileFinal creates the script and doesnt allow for any more complies making it more secure 
//preprocessFileLineNumbers allows to find errors within specific lines 
fn_getSpawnPos = compileFinal preprocessFileLineNumbers "civilians\fn_getSpawnPos.sqf";
fn_spawnCiv = compileFinal preprocessFileLineNumbers "civilians\fn_spawnCiv.sqf";
fn_countCivs = compileFinal preprocessFileLineNumbers "civilians\fn_countCivs.sqf";

while {(alive _player)} do
{
	//finds the objects within the radius and stores it within the array 
	_buildings = nearestObjects [position _player, ["House", "Building"], _radius];
	if ((count _civs < _max) and (count _civs < count _buildings)) then 
	{
		_pos = [_buildings] call fn_getSpawnPos;
		if (_pos isEqualTo false) then {} else 
		{
			[_pos, _group] call fn_spawnCiv;
		};
	};

	_civs = [_player, _radius] call fn_countCivs;
};