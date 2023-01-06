if(controllable){
	event_inherited();

	// Attack
	if(mouse_check_button(mb_left) && action == noone && height < 2){
		action = "attack";
	
		alarm[3] = 6 * AS;
		alarm[0] = 12 * AS;
		// For safety so alarm 3 cant go to 0
		if(alarm[3] < 1){
			alarm[3] = 1;
		}// For safety so alarm 0 cant go to 0
		if(alarm[0] < 2){
			alarm[0] = 2;
		}
	}

	// Ability
	if(mouse_check_button_pressed(mb_right) && abilityReady && height < 2){
		action = "ability";
		abilityReady = false;
	
		alarm[3] = 4;
		alarm[1] = CD*CDchanger;
		alarm[0] = 8;
	}
}