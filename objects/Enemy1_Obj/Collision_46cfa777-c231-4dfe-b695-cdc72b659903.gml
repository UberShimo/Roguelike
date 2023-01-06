if(distance_to_point(other.x, other.y) < 8){
	alarm[9] = 1;
	// Just because the Collision event and End step event dont cooperate when spawning hitbox.
	// Meaning the spawned hitbox wont hurt zombie...
}
