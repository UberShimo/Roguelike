/// @description Unlock mechanic

if(global.mechanicLevel == 0){
	global.mechanicLevel = 1;
	Mechanic_Icon.level = 1;
	global.pickedClass = Mechanic_Obj;
	global.classUnlocked = true;
}