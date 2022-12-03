// Looks if value exists in list. If not it returns -1
if(ds_list_find_index(hitboxList, other) == -1){
	HP -= other.DMG;
	
	// No reaction if no stun or DMG
	if(other.stun > 0){
		MS = 0;
		stunned = true;
		
		// Makes so you cant remove stun duration
		if(alarm[1] < other.stun){
			alarm[1] = other.stun;
		}
		
		if(other.DMG > 0){
			// Spawn dramatic effects
			repeat(6){
				instance_create_depth(x, y, 0, Blood_Obj);
				instance_create_depth(x, y, 0, Hit_Eff_Obj);
			}
		}
	}
	
	// Pushback
	if(other.isDirectionalPushback){
		pushDirection = other.direction;
	}
	else{
		pushDirection = point_direction(other.x, other.y, x, y);
	}
	pushSpeed = other.pushback;
	
	if(HP <= 0){
		MonsterDies(self);
	}
	
	ds_list_add(hitboxList, other);
}