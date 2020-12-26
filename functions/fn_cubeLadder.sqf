params["_unit", "_direction"];

_pos = getPos _unit;
_step = 0;

for "_i" from 0 to 1000 do
{
	_cube = "Land_VR_Shape_01_Cube_1m_f" createVehicle _pos;
	//Turns off phsyics for the object 
	_cube enableSimulation false;
	switch (_direction) do
	{
		case 0: 
		{
			_cube setPosASL
			[
				(_pos select 0) + _i,
				(_pos select 1),
				(_pos select 2) + _step
			];
		};
		case 1: 
		{
			_cube setPosASL
			[
				(_pos select 0),
				(_pos select 1) + _i,
				(_pos select 2) + _step
			];
		};
		case 2: 
		{
			_cube setPosASL
			[
				(_pos select 0),
				(_pos select 1) - _i,
				(_pos select 2) + _step
			];
		};
	};
	_step = _step + 0.25;
};
true