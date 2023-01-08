global.relicsFound += 1;
depth = -y;

// Effects
instance_create_depth(x, y, depth, CD_Effect);
repeat(12){
	eff = instance_create_depth(x, y, depth, Spark_Pixel_Obj);
	s = random_range(1, 4);
	eff.image_xscale = s;
	eff.image_yscale = s;
}
audio_play_sound(PickUp_Snd, 0, false);