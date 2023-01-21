if(controllable){
	event_inherited();

	// DE
	if(mouse_check_button(mb_left) && action == noone && height < 2){
		action = "attack";
		canJump = false;
	
		alarm[3] = 20 * AS;
		alarm[0] = 60 * AS;
		alarm[11] = 40 * AS;
	}

	// BUG
	if(mouse_check_button_pressed(mb_right) && abilityReady && height < 2){
		action = "ability";
		abilityReady = false;
	
		alarm[3] = 2;
		alarm[1] = CD*CDchanger;
		alarm[0] = 4;
	}
}