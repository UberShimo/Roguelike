global.relicsFound += 1;
depth = -y;

// Unlock da reaper
if(global.relicsFound == 2 && global.minutes < 1 && global.reaperLevel == 0){
	global.reaperLevel = 1;
	global.classUnlocked = true;
}

// Effects
instance_create_depth(x, y, depth, CD_Effect);
repeat(12){
	eff = instance_create_depth(x, y, depth, Spark_Pixel_Obj);
	s = random_range(1, 4);
	eff.image_xscale = s;
	eff.image_yscale = s;
}
audio_play_sound(PickUp_Snd, 0, false);