target = instance_nearest(x, y, Enemy_Parent_Obj);
distance = 8;

if(!instance_exists(target)){
	target = Player_Parent;
	distance = 16;
}

if(place_meeting(x+lengthdir_x(2, direction), y+lengthdir_y(2, direction), Zombie_Obj)){
	// Move toward target while trying to dodge zombies
	mp_potential_step_object(target.x, target.y, MS, Zombie_Obj);
}
else if(point_distance(x, y, target.x, target.y) > distance){
	// Move toward target while trying to dodge collision
	mp_potential_step_object(target.x, target.y, MS, Collision_Obj);
}