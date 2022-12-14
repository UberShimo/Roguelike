repeat(2){
	eff = instance_create_depth(x, y, depth, Fading_Pixel_Obj);
	eff.image_blend = c_green;
	eff.fade = 0.02;
	// Randomized within a circle
	dir = random_range(0, 360);
	length = random_range(0, 24);
	eff.x += lengthdir_x(length, dir);
	eff.y += lengthdir_y(length, dir);
	scale = irandom_range(0.5, 1);
	eff.image_xscale += scale;
	eff.image_yscale += scale;
}

hspeed += random_range(-0.5, 0.5);
vspeed += random_range(-0.5, 0.5);