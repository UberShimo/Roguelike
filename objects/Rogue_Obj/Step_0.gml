if(controllable){
	event_inherited();

	// Attack
	if(mouse_check_button(mb_left) && action == noone && height < 2 && !dodging){
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
		alarm[11] = 16 * AS;
		// For safety so alarm 3 cant go to 0
		if(alarm[3] < 1){
			alarm[3] = 1;
		}
	}

	// Ability
	if(mouse_check_button_pressed(mb_right) && abilityReady && height < 2){
		abilityReady = false;
		dodging = true;
		MS = 12;
	
		alarm[1] = CD*CDchanger;
	}
	
	// Dodging
	if(MS > originalMS){
		MS -= 1;
		instance_create_depth(x, y, depth, Rogue_Dodge_Effect);
	}
	else{
		MS = originalMS;
		dodging = false;
	}

	// Charge mechanic
	if(charge < 180){
		charge += 1; // Charges in 3 sec
	}
}