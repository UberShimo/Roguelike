monster = argument0; /// @param Object

// Samurai specific stuff
if(instance_exists(Samurai_Obj)){
	Samurai_Obj.alarm[1] -= 60;
			
	if(Samurai_Obj.alarm[1] < 0){
		Samurai_Obj.alarm[1] = 1;
	}
}
// Much blood
repeat(12){
	instance_create_depth(monster.x, monster.y, 0, Blood_Obj);
}

// Drop health maybe
if(irandom_range(1, 5) == 1){ // 20% chance
	instance_create_depth(monster.x, monster.y, monster.depth, HP_Obj);
}

instance_destroy(monster);