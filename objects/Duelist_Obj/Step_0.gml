if(controllable){
	event_inherited();

	// Attack
	if(mouse_check_button(mb_left) && action == noone && height < 2){
		action = "attack";
		canJump = false;
	
		if(irandom_range(0, 1) == 0){
			rotation = -1;
		}
		else{
			rotation = 1;
		}
		alarm[3] = 8 * AS;
		alarm[0] = 12 * AS;
		alarm[11] = 12 * AS;
	}

	// Dash
	if(mouse_check_button_pressed(mb_right) && dashes > 0 && height < 2){
		if(dashes == 2){
			alarm[1] = CD;
		}
	
		dashes -= 1;
		trippleStrike = true;
	
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
	
		// Complex step cheking dash excecution
		loops = 8;
		while(loops > 0){
			if(place_meeting(x+xDistance, y+yDistance, Collision_Obj) || 
			(x > mouse_x-2 && x < mouse_x+2) && (y > mouse_y-2 && y < mouse_y+2)){
				break;
			}
			loops -= 1;
		
			instance_create_depth(x, y, 10, Duelist_Teleport_Effect);
			x += xDistance;
			y += yDistance;
		}
	}
}