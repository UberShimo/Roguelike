// Looks if value exists in list. If not it returns -1
if(ds_list_find_index(hitboxList, other) == -1){
	HP -= other.DMG;
		
	// Makes so you cant remove stun duration or be stunned by none stunning moves
	if(alarm[1] < other.stun && other.stun > 0){
		alarm[1] = other.stun;
		MS = 0;
		stunned = true;
	}
		
	// No dmg or stun no blood
	if(other.DMG > 0 && other.stun > 0){
		// Spawn dramatic effects
		repeat(6){
			instance_create_depth(x, y, 0, Blood_Obj);
			instance_create_depth(x, y, 0, Hit_Eff_Obj);
		}
		audio_play_sound(Hit_Snd, 0, false);
	}
	
	// Pushback
	if(other.isDirectionalPushback){
		pushDirection = other.direction;
	}
	else{
		pushDirection = point_direction(other.x, other.y, x, y);
	}
	xPush = lengthdir_x(other.pushback, pushDirection);
	yPush = lengthdir_y(other.pushback, pushDirection);
	
	if(HP <= 0){
		MonsterDies(self);
	}
	
	ds_list_add(hitboxList, other);
}