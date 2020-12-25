//Stops the engine from turing it into cache aka save it
disableSerialization;

_shopItems = ["Katiba", "MXM", "MX", "MK1", "MK200"];

createDialog "Doc_GunShop_Dialog";

//the engine waits until the dialog is no longer null
waitUntil 
{
	!isNull (findDisplay 9999);
};

_ctrl = (findDisplay 9999) displayCtrl 1500;

//forEach goes through every item in the array and executes the given code
{
	//_x represents the current item in the array
	_ctrl lbAdd _x;
} forEach _shopItems;