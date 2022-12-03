event_inherited();

// Attack
if(mouse_check_button(mb_left) && action == noone && height < 2){
	action = "attack";
	
	alarm[3] = 2 * AS;
	alarm[0] = 8 * AS;
}

// Ability
if(mouse_check_button_pressed(mb_right) && abilityReady && height < 2){
	action = "ability";
	abilityReady = false;
	
	alarm[3] = 4;
	alarm[1] = CD;
	alarm[0] = 8;
}
