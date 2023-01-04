if(controllable){
	event_inherited();

	// Attack
	if(mouse_check_button(mb_left) && action == noone && height < 2){
		action = "attack";
		canJump = false;
		characterShake = 2;
	
		alarm[3] = 10 * AS;
		alarm[0] = 30 * AS;
		alarm[11] = 30 * AS;
	}

	// Ability
	if(mouse_check_button_pressed(mb_right) && abilityReady && height < 2){
		action = "ability";
		abilityReady = false;
		MS = 0;
		rotation = 1;
	
		alarm[0] = 90;
		alarm[1] = CD*CDchanger;
		alarm[3] = 60;
	}

	// Dramatic punch charge effect
	if(action == "ability" && alarm[3] > 0){
		characterShake += 0.25;
		eff = instance_create_depth(x, y, depth, Spark_Pixel_Obj);
		eff.speed = characterShake / 3;
		eff.image_blend = c_orange;
		eff.image_xscale = 3;
		eff.image_yscale = 3;
	}
}