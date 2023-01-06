if(controllable){
	event_inherited();

	// Attack
	if(mouse_check_button(mb_left) && action == noone && height < 2){
		action = "attack";
		canJump = false;
		rotation = -1;
		alarm[3] = 24 * AS;
		alarm[0] = 48 * AS;
		alarm[11] = 48 * AS;
	}

	// Ability
	if(mouse_check_button_pressed(mb_right) && abilityReady && height < 2){
		action = "ability";
		canJump = false;
		abilityReady = false;
	
		rotation = -2;
	
		alarm[3] = 4;
		alarm[0] = 16;
		alarm[1] = CD*CDchanger;
		alarm[11] = 16;
	}
}
