if(action == noone && !dazzled){
	// Move toward player while trying to dodge walls
	mp_potential_step_object(Player_Parent.x, Player_Parent.y, MS, Collision_Obj);

	if(distance_to_object(Player_Parent) < 16*image_xscale){
		direction = point_direction(x, y, Player_Parent.x, Player_Parent.y); // Face toward player
		
		if(direction > 30 && direction <= 150){ // Up
			sprite_index = Monster2_ATK_U_Spr;
		}
		else if(direction > 150 && direction <= 270){ // Left
			sprite_index = Monster2_ATK_L_Spr;
		}
		else{ // Right
			sprite_index = Monster2_ATK_R_Spr;
		}
		action = "attack";
		warning = instance_create_depth(x, y, depth, Enemy2_Warning_Obj);
		warning.image_angle = direction;
		warning.spawner = self;
		warning.image_xscale *= image_xscale;
		warning.image_yscale *= image_yscale;
		warning.alarm[1] = 40*AS;
		
		alarm[3] = 40*AS;
	}
}