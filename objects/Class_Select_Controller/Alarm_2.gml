/// @description Unlock pirate

if(global.pirateLevel == 0){
	global.pirateLevel = 1;
	Pirate_Icon.level = 1;
	global.pickedClass = Pirate_Obj;
	global.classUnlocked = true;
}