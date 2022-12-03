target = instance_nearest(x, y, Enemy_Parent_Obj);

if(!instance_exists(target)){
	target = Player_Parent;
}

if(point_distance(x, y, target.x, target.y) > 8){
	// Move toward target while trying to dodge collision
	mp_potential_step_object(target.x, target.y, MS, Collision_Obj);
}