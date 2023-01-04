if(controllable){
	event_inherited();

	// Attack
	if(mouse_check_button(mb_left) && action == noone && height < 2){
		action = "attack";
		rotation = -1;
		dodging = true;
		MS = originalMS*2;
	
		alarm[3] = 20 * AS;
		alarm[0] = 60 * AS;
		alarm[5] = 40 * AS;
	}

	// Ability
	if(mouse_check_button_pressed(mb_right) && abilityReady && height < 2){
		action = "ability";
		abilityReady = false;
	
		alarm[3] = 2;
		alarm[0] = 4;
		alarm[1] = CD*CDchanger;
	}
	
	// Dodge effect
	if(dodging){
		instance_create_depth(x, y, depth, Reaper_Dodge_Effect);
		transparency = 0.2;
	}
	else if(MS < originalMS){
		MS += 0.05;
	}
}