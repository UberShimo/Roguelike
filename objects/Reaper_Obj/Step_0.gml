event_inherited();

// Attack
if(mouse_check_button(mb_left) && action == noone && height < 2){
	action = "attack";
	rotation = -1;
	MS = 0;
	
	alarm[3] = 20 * AS;
	alarm[0] = 60 * AS;
	alarm[5] = 40 * AS;
	
	// Dash
	xDistance = lengthdir_x(4, direction);
	yDistance = lengthdir_y(4, direction);
	
	// Complex step checking dash execution
	loops = 18;
	while(loops > 0){
		if(place_meeting(x+xDistance, y+yDistance, Collision_Obj) || 
		(x > mouse_x-2 && x < mouse_x+2) && (y > mouse_y-2 && y < mouse_y+2)){
			break;
		}
		loops -= 1;
		
		instance_create_depth(x, y, 10, Reaper_Teleport_Effect);
		x += xDistance;
		y += yDistance;
	}
}

// Ability
if(mouse_check_button_pressed(mb_right) && abilityReady && height < 2){
	action = "ability";
	abilityReady = false;
	
	alarm[3] = 2;
	alarm[0] = 4;
	alarm[1] = CD;
}
