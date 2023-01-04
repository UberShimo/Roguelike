if(controllable){
	event_inherited();

	// Attack
	if(mouse_check_button(mb_left) && action == noone && height < 2){
		action = "attack";
		canJump = false;
		rotation = 2;
	
		alarm[3] = 10 * AS;
		alarm[0] = 40 * AS;
		alarm[11] = 40 * AS;
	}

	// Ability
	if(mouse_check_button_pressed(mb_right) && abilityReady && height < 2){
		action = "ability";
		abilityReady = false;
	
		alarm[0] = 4;
		alarm[1] = CD*CDchanger;
		alarm[3] = 2;
	}
}