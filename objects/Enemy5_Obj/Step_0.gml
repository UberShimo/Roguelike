if(action == noone && !dazzled){
	// Move while trying to dodge walls
	mp_potential_step_object(destination[0], destination[1], MS, Collision_Obj);
}
else if(dazzled){
	sprite_index = Monster5_Walk_Spr;
}