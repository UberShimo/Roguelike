/// @description Spawn effect
repeat(12){
	eff = instance_create_depth(x, y, depth, Fading_Pixel_Obj);
	eff.image_blend = c_green;
	eff.fade = 0.05;
	eff.x += random_range(-2, 2);
	eff.y += random_range(-2, 2);
	eff.image_xscale += random_range(1, 4);
	eff.image_yscale += random_range(1, 4);
	eff.direction = random_range(0, 360);
	eff.speed = random_range(1, 4);
	eff.friction = 0.1;
}