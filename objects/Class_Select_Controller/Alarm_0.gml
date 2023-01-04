/// @description Unlock bard

if(global.bardLevel == 0 && audio_get_master_gain(0) > 0.05){
	global.bardLevel = 1;
	Bard_Icon.level = 1;
	global.pickedClass = Bard_Obj;
	global.classUnlocked = true;
}