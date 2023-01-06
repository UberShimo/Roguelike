if(controllable){
	event_inherited();

	// Attack
	if(mouse_check_button(mb_left) && action == noone && height < 2){
		action = "attack";
		rotation = 2;
	
		alarm[3] = 10 * AS;
		alarm[0] = 30 * AS;
	
		// Animate clones
		if(instance_exists(Ninja_Clone_Obj)){
			Ninja_Clone_Obj.attack = true;
		}
	}

	// Ability
	if(mouse_check_button_pressed(mb_right) && abilityReady && height < 2){
		abilityReady = false;
		
		xPos = x;
		yPos = y;
		xDistance = lengthdir_x(4, direction);
		yDistance = lengthdir_y(4, direction);
	
		// Cant put ability too far away
		maxDistance = 96;
		loops = maxDistance / 4; // Because distance increase by 4 each loop
	
		distanceToMouse = distance_to_point(mouse_x, mouse_y);
	
		if(distanceToMouse < maxDistance){
			loops = distanceToMouse / 4; // Because distance increase by 4 each loop
		}
	
		while(loops > 0){
			xPos += xDistance;
			yPos += yDistance;
		
			loops -= 1;
		}
	
		while(place_meeting(xPos, yPos, Collision_Obj)){
			xPos -= xDistance;
			yPos -= yDistance;
		}
		
		instance_create_depth(xPos, yPos, depth, Ninja_Clone_Obj);
	
		alarm[1] = CD*CDchanger;
	}
}