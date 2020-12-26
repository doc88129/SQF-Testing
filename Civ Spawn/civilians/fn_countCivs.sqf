params["_player", "_radius"];
_civs = [];
private _pos = position _player;

_list = _pos nearEntities ["Man", _radius];

for "_i" from 0 to (count _list - 1) do 
{
	//checks if the side of the element is civilian
	if (side(_list select _i) isEqualTo civilian) then 
	{
		//places the element at the back of the list
		_civs pushBack (_list select _i);
	};
};

_civs;