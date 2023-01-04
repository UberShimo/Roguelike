if(controllable){
	event_inherited();

	// Attack
	if(mouse_check_button(mb_left) && action == noone && height < 2){
		action = "attack";
		canJump = false;
		rotation = -1;
		alarm[3] = 12 * AS;
		alarm[0] = 30 * AS;
		alarm[11] = 30 * AS;
	}

	// Bash
	if(mouse_check_button_pressed(mb_right) && action == noone && abilityReady && height < 2){
		action = "ability";
		canJump = false;
		abilityReady = false;
	
		rotation = -2;
	
		alarm[3] = 12;
		alarm[0] = 24;
		alarm[1] = CD*CDchanger;
		alarm[11] = 24;
	}
}