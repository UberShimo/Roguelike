if(global.pickedClass == noone){
	global.pickedClass = Brute_Obj;
	
	if(global.bruteLevel == 0){
		global.bruteLevel = 1;
		global.classUnlocked = true;
	}
}

instance_create_depth(x, y, depth, global.pickedClass);