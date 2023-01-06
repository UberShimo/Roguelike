if(action == noone && !dazzled){
	// Move while trying to dodge walls
	mp_potential_step_object(destination[0], destination[1], MS, Collision_Obj);
}

if(action == "summon"){
	eff = instance_create_depth(x, y-24, depth, Spark_Pixel_Obj);
	eff.image_blend = c_red;
	eff.image_xscale = 4;
	eff.image_yscale = 4;
	eff.image_alpha = 0.5;
	eff.speed *= 0.5;
}