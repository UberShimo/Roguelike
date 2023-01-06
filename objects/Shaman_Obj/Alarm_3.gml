/// @description ACTION!
if(action == "attack"){
	att = instance_create_depth(x, y, 0, Shaman_Attack_Out_Obj);
	att.DMG *= FO;
	att.direction = direction;
	att.speed = 3;
	
	FO = 1; // Never forget
}
else if(action == "ability"){
	
	// Choose direction
	xDistance = lengthdir_x(4, direction);
	yDistance = lengthdir_y(4, direction);
	
	// Complex step checking ability excecution
	loops = 32;
	while(loops > 0){
		if(x > mouse_x-4 && x < mouse_x+4) && (y > mouse_y-4 && y < mouse_y+4){
			break;
		}
		loops -= 1;
		
		x += xDistance;
		y += yDistance;
	}
	
	while(place_meeting(x, y, Collision_Obj)){
		x -= xDistance;
		y -= yDistance;
	}
	
	// Effects
	instance_create_depth(x, y, depth, CD_Effect);
	repeat(12){
		eff = instance_create_depth(x, y, depth, Spark_Pixel_Obj);
		scaling = random_range(1, 4);
		
		eff.image_xscale = scaling;
		eff.image_yscale = scaling;
	}
	// Hitbox
	instance_create_depth(x, y, 0, Shaman_Ability_Hitbox_Obj);
}
