event_inherited();

repeat(6){
	eff = instance_create_depth(x, y, depth, Spark_Pixel_Obj);
	eff.speed *= 0.5;
}
audio_play_sound(Click_Snd, 0, false);