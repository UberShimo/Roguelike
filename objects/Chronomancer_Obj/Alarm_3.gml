/// @description ACTION!

if(action == "attack"){
	att = instance_create_depth(x, y, 0, Chronomancer_Attack_Obj);
	att.DMG += att.DMG*FO;
	att.direction = direction + random_range(-8, 8);
	att.velocity = random_range(1.5, 2.5);
	att.friction = 0.1;
}

if(action == "ability"){
	att = instance_create_depth(x, y, 0, Chronomancer_Ability_Obj);
	att.DMG += att.DMG*FO;
	att.image_angle = direction;
	
	xDistance = lengthdir_x(4, direction);
	yDistance = lengthdir_y(4, direction);
	
	// Cant put ability too far away
	loops = 128 / 4; // Because distance increase by 4 each loop
	
	distanceToMouse = distance_to_point(mouse_x, mouse_y);
	
	if(distanceToMouse < 128){
		loops = distanceToMouse / 4; // Because distance increase by 4 each loop
	}
	
	repeat(loops){
		att.x += xDistance;
		att.y += yDistance;
	}
}

FO = 0; // Never forget