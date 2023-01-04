repeat(8){
	instance_create_depth(x, y, depth, Spark_Pixel_Obj);
}

audio_play_sound(Donk_Snd, 0, false);

instance_destroy();
