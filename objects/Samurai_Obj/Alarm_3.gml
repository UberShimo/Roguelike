/// @description ACTION!
if(action == "attack"){
	att = instance_create_depth(x, y, 0, Samurai_Attack_Obj);
	att.DMG += att.DMG*FO;
	rotation = -2;
}
else if(action == "ability"){
	slashDistance = 0; // Calculate xscale on attack
	att = instance_create_depth(x, y, depth, Samurai_Ability_Obj);
	att.DMG += att.DMG*FO;
	
	// Choose direction
	xDistance = lengthdir_x(4, direction);
	yDistance = lengthdir_y(4, direction);
	
	// Complex step cheking dash excecution
	loops = 32;
	while(loops > 0){
		if(place_meeting(x+xDistance, y+yDistance, Collision_Obj) || 
		(x > mouse_x-2 && x < mouse_x+2) && (y > mouse_y-2 && y < mouse_y+2)){
			break;
		}
		loops -= 1;
		slashDistance += 4; // Because you jump 4 steps every calculation
		
		x += xDistance;
		y += yDistance;
	}
	att.image_xscale = slashDistance;
}

FO = 1; // Never forget