if(controllable){
	event_inherited();

	// Attack
	if(mouse_check_button(mb_left) && action == noone && height < 2){
		action = "attack";
		canJump = false;
	
		if(irandom_range(0, 1) == 0){
			rotation = -2;
		}
		else{
			rotation = 2;
		}
		alarm[3] = 20 * AS;
		alarm[0] = 40 * AS;
		alarm[11] = 40 * AS;
	}

	// Keep
	if(mouse_check_button_pressed(mb_right) && abilityReady && height < 2){
		action = "ability";
		abilityReady = false;
		rolling = true;
		MS = 0;
	
		xVelocity = lengthdir_x(4, direction);
		yVelocity = lengthdir_y(4, direction);
	
		image_speed = 3;
		sprite_index = Heavyweight_Ability_Spr;
	
		alarm[0] = 30;
		alarm[1] = CD;
		alarm[3] = 2;
	}

	// Rolling rolling rolling
	if(rolling){
		x += xVelocity;
		y += yVelocity;
	
		// Wall bounce
		if(place_meeting(x+xVelocity, y, Collision_Obj)){
			xVelocity = -xVelocity;
		}
		if(place_meeting(x, y+yVelocity, Collision_Obj)){
			yVelocity = -yVelocity;
		}
	
		direction = point_direction(0, 0, xVelocity, yVelocity);
	}

	// LANDPAM!
	if(height > 2 && !landPAM){
		landPAM = true;
	}
	else if(height < 2 && landPAM){
		att = instance_create_depth(x, y, 0, Heavyweight_Land_Obj);
		att.DMG += att.DMG*FO;
		landPAM = false;
	}
}