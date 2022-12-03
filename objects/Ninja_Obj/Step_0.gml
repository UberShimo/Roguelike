event_inherited();

// Attack
if(mouse_check_button(mb_left) && action == noone && height < 2){
	action = "attack";
	rotation = 2;
	
	alarm[3] = 8 * AS;
	alarm[0] = 30 * AS;
	
	// Activate clone attack
	if(instance_exists(Ninja_Clone_Obj)){
		Ninja_Clone_Obj.attack = true;
	}
}

// Ability
if(mouse_check_button_pressed(mb_right) && abilityReady && height < 2){
	abilityReady = false;
	
	clone = instance_create_depth(x, y, depth, Ninja_Clone_Obj);
	
	xDistance = lengthdir_x(4, direction);
	yDistance = lengthdir_y(4, direction);
	
	// Cant put ability too far away
	loops = 64 / 4; // Because distance increase by 4 each loop
	
	distanceToMouse = distance_to_point(mouse_x, mouse_y);
	
	if(distanceToMouse < 64){
		loops = distanceToMouse / 4; // Because distance increase by 4 each loop
	}
	
	while(loops > 0){
		clone.x += xDistance;
		clone.y += yDistance;
		
		loops -= 1;
	}
	
	while(place_meeting(clone.x, clone.y, Collision_Obj)){
		clone.x -= xDistance;
		clone.y -= yDistance;
	}
	
	alarm[1] = CD;
}
