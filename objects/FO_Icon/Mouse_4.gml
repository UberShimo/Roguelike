repeat(6){
	instance_create_depth(x, y, depth-2, Spark_Pixel_Obj);
}

Class_Select_Controller.mechanicUnlock += 1;

if(Class_Select_Controller.mechanicUnlock == 5){
	Class_Select_Controller.alarm[1] = 1;
	instance_create_depth(x, y, depth, CD_Effect);
	audio_play_sound(Shot_Snd, 0, false);
	instance_destroy();
}

audio_play_sound(Click_Snd, 0, false);
