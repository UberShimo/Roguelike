alarm[0] = 60*8;

rotation = 0;
attack = false;

repeat(8){
	eff = instance_create_depth(x, y, depth, Fading_Pixel_Obj);
	eff.direction = random_range(0, 360);
	eff.speed = random_range(1, 2);
	eff.friction = 0.1;
	s = random_range(1, 8);
	eff.image_xscale = s;
	eff.image_yscale = s;
	eff.image_alpha = 0.2;
	eff.fade = 0.005;
	eff.movement = 0.5;
}

audio_play_sound(Donk_Snd, 0, false);