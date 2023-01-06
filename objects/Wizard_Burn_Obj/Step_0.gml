eff = instance_create_depth(x, y, depth, Fading_Pixel_Obj);
eff.image_blend = c_orange;
eff.fade = 0.05;
eff.x += random_range(-6, 6);
eff.y += random_range(-6, 6);
eff.image_xscale += random_range(1, 4);
eff.image_yscale += random_range(1, 4);

if(instance_exists(target)){
	x = target.x;
	y = target.y;
}
else{
	audio_stop_sound(Rumble_Snd);
	instance_destroy();
}