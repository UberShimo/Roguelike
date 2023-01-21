if(controllable){
	event_inherited();

	// Attack
	if(mouse_check_button(mb_left) && action == noone && height < 2){
		action = "attack";
	
		alarm[3] = 2;
		alarm[0] = 90 * AS;
	}

	// Ability
	if(mouse_check_button_pressed(mb_right) && abilityReady && height < 2){
		action = "ability";
		abilityReady = false;
	
		alarm[3] = 2;
		alarm[1] = CD*CDchanger;
		alarm[0] = 4;
	}
	
	// Attack ready effect
	if(action == noone){
		// Spawn in front
		eff = instance_create_depth(x+lengthdir_x(14, direction), y+lengthdir_y(14, direction), depth, Fading_Pixel_Obj);
		eff.image_blend = c_yellow;
		eff.image_alpha = 0.5;
		eff.fade = 0.05;
		eff.speed *= 0.1;
		eff.x += random_range(-4, 4);
		eff.y += random_range(-4, 4);
	}
}