params["_buildings"];

//the if statments test if the param is null for the given code and prevents the script from stopping due to no buildings in the area
if (isNil "_buildings") exitWith {false};
//this selects a random building from the array
_building = selectRandom _buildings;

if (isNil "_building") exitWith {false};
//gathers all the building positions into an array from building
_buildingPos = [_building] call BIS_fnc_buildingPositions;

if (isNil "_buildingPos") exitWith {false};
_pos = selectRandom _buildingPos;

if (isNil "_pos") exitWith {false};
_pos