if(action == noone){
	// Move while trying to dodge walls
	mp_potential_step_object(destination[0], destination[1], MS, Collision_Obj);
}

if(action == "summon"){
	eff = instance_create_depth(x, y-8, depth, Spark_Pixel_Obj);
	eff.image_blend = c_red;
}