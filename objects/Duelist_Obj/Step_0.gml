if(controllable){
	event_inherited();

	// Attack
	if(mouse_check_button(mb_left) && action == noone && height < 2 && !dodging){
		action = "attack";
		canJump = false;
	
		if(irandom_range(0, 1) == 0){
			rotation = -1;
		}
		else{
			rotation = 1;
		}
		alarm[3] = 8 * AS;
		alarm[0] = 15 * AS;
		alarm[11] = 15 * AS;
		// For safety so alarm 3 cant go to 0
		if(alarm[3] < 1){
			alarm[3] = 1;
		}
	}

	// Ability
	if(mouse_check_button_pressed(mb_right) && dashes > 0 && height < 2){
		if(dashes == 2){
			alarm[1] = CD*CDchanger;
		}
		dodging = true;
		MS = 16;
		dashes -= 1;
		trippleStrike = true;
	}
	
	// Dodging
	if(MS > originalMS){
		MS -= 3;
		instance_create_depth(x, y, depth, Duelist_Dodge_Effect);
	}
	else{
		MS = originalMS;
		dodging = false;
	}
}