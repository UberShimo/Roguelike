if(controllable){
	event_inherited();

	// Attack
	if(mouse_check_button(mb_left) && action == noone && height < 2){
		action = "attack";
		canJump = false;
	
		alarm[3] = 10 * AS;
		alarm[0] = 60 * AS;
		alarm[11] = 20 * AS;
	
		rotation = -2;
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