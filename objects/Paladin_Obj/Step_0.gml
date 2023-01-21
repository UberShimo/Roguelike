if(controllable){
	event_inherited();

	// Attack
	if(mouse_check_button(mb_left) && action == noone && height < 2){
		action = "attack";
		characterShake = 2;
		rotation = -1;
		MS = originalMS/4;
		alarm[3] = 30 * AS;
		alarm[0] = 90 * AS;
	}

	// Ability
	if(mouse_check_button_pressed(mb_right) && abilityReady && height < 2){
		action = "ability";
		abilityReady = false;
		characterShake = 4;
		MS = 0;
	
		alarm[3] = 30;
		alarm[0] = 45;
		alarm[1] = CD*CDchanger;
	}
}