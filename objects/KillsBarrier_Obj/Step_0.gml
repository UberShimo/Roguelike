if(global.monstersSlain >= killGoal){
	eff = instance_create_depth(x, y+16, depth, CD_Effect);
	eff.image_blend = c_red;
	instance_destroy();
}

image_alpha += fade;

if((fade < 0 && image_alpha < 0.5) || (fade > 0 && image_alpha > 0.8)){
	fade = -fade;
}

eff = instance_create_depth(x, y, depth, Fading_Pixel_Obj);
eff.x += random_range(-12, 12);
eff.y += random_range(16, 32);
eff.vspeed = -0.2;
eff.image_alpha = 0.5;
eff.image_blend = c_red;