savedDirection = direction;
event_inherited();

// Make sure you cant rotate during actions
if(action != noone){
	direction = savedDirection;
}

// Attack
if(mouse_check_button(mb_left) && action == noone && height < 2){
	action = "attack";
	// Fix direction bf4 shooting
	direction = point_direction(x, y, mouse_x, mouse_y);
	
	alarm[3] = 2 * AS;
	alarm[0] = 80 * AS;
}

// Ability
if(mouse_check_button_pressed(mb_right) && abilityReady && height < 2){
	action = "ability";
	abilityReady = false;
	// Fix direction bf4 shooting
	direction = point_direction(x, y, mouse_x, mouse_y);
	
	MS = 0;
	
	alarm[3] = 20;
	alarm[1] = CD;
	alarm[0] = 40;
}