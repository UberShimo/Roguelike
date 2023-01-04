if(controllable){
	event_inherited();

	// Aim
	if(mouse_check_button(mb_left) && action == noone && height < 2){
		action = "aim";
		canJump = false;
	}

	// Shoot
	if(mouse_check_button_released(mb_left) && action == "aim"){
		action = "attack";
	
		alarm[3] = 2 * AS;
		alarm[0] = 30 * AS;
	}

	// Ability
	if(mouse_check_button_pressed(mb_right) && abilityReady && height < 2){
		action = "ability";
		abilityReady = false;
	
		alarm[3] = 2;
		alarm[1] = CD*CDchanger;
		alarm[0] = 4;
	}

	// Aiming n stuff
	if(action == "aim"){
		// Gain focus even while aiming
		if(FO < maxFO){
			FO += maxFO / 180; // Charges in 3 sec
		}
		// Aquiring target
		if(aim > 1){
			aim -= 0.5;
		}
	}
}