if(controllable){
	event_inherited();

	// Attack
	if(mouse_check_button(mb_left) && action == noone && height < 2){
		if(charge >= 180){
			action = "chargeAttack";
			rotation = 3;
		}
		else{
			action = "attack";
			rotation = -1;
		}
		alarm[3] = 8 * AS;
		alarm[0] = 24 * AS;
		alarm[11] = 24 * AS;
	}

	// Dash
	if(mouse_check_button_pressed(mb_right) && abilityReady && height < 2){
		abilityReady = false;
	
		// Choose direction
		if(keyboard_check(ord("D")) && keyboard_check(ord("W"))){
			xDistance = lengthdir_x(4, 45);
			yDistance = lengthdir_y(4, 45);
		}
		else if(keyboard_check(ord("W")) && keyboard_check(ord("A"))){
			xDistance = lengthdir_x(4, 135);
			yDistance = lengthdir_y(4, 135);
		}
		else if(keyboard_check(ord("A")) && keyboard_check(ord("S"))){
			xDistance = lengthdir_x(4, 225);
			yDistance = lengthdir_y(4, 225);
		}
		else if(keyboard_check(ord("S")) && keyboard_check(ord("D"))){
			xDistance = lengthdir_x(4, 315);
			yDistance = lengthdir_y(4, 315);
		}
		else if(keyboard_check(ord("D"))){
			xDistance = lengthdir_x(4, 0);
			yDistance = lengthdir_y(4, 0);
		}
		else if(keyboard_check(ord("W"))){
			xDistance = lengthdir_x(4, 90);
			yDistance = lengthdir_y(4, 90);
		}
		else if(keyboard_check(ord("A"))){
			xDistance = lengthdir_x(4, 180);
			yDistance = lengthdir_y(4, 180);
		}
		else if(keyboard_check(ord("S"))){
			xDistance = lengthdir_x(4, 270);
			yDistance = lengthdir_y(4, 270);
		}
		else{
			xDistance = lengthdir_x(4, direction);
			yDistance = lengthdir_y(4, direction);
		}
	
		// Complex step checking dash execution
		loops = 12;
		while(loops > 0){
			if(place_meeting(x+xDistance, y+yDistance, Collision_Obj) || 
			(x > mouse_x-2 && x < mouse_x+2) && (y > mouse_y-2 && y < mouse_y+2)){
				break;
			}
			loops -= 1;
		
			instance_create_depth(x, y, 10, Rogue_Teleport_Effect);
			x += xDistance;
			y += yDistance;
		}
	
		alarm[1] = CD;
	}

	// Charge mechanic
	if(charge < 180){
		charge += 1; // Charges in 3 sec
	}
}