if(other.height < 2 && !other.dodging){
	alarm[9] = 1;
	// Just because the Collision event and End step event dont cooperate when spawning hitbox.
	// Meaning the spawned hitbox wont hurt player...
}