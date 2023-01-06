if(controllable){
	event_inherited();

	// Attack
	if(mouse_check_button(mb_left) && action == noone && height < 2){
		Reaper_Attack_Stop_Obj.x = mouse_x;
		Reaper_Attack_Stop_Obj.y = mouse_y;
		action = "attack";
		rotation = -1;
		dodging = true;
		MS = 0;
		xSpeed = lengthdir_x(18, direction);
		ySpeed = lengthdir_y(18, direction);
		attackStop = false;
	
		alarm[3] = 20 * AS;
		alarm[0] = 120 * AS;
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
	
	// Attack dash logic
	attackVelocity = sqrt(power(xSpeed, 2) + power(ySpeed, 2));
	attackFriction = 2;
	// Unclean initial break if mouse is really close to Reaper
	if(place_meeting(x, y, Reaper_Attack_Stop_Obj) || distance_to_point(mouse_x, mouse_y) < 8){
		attackStop = true;
		if(attackVelocity > 8){
			xSpeed -= lengthdir_x(8, direction);
			ySpeed -= lengthdir_y(8, direction);
		}
	}
	if(attackVelocity > attackFriction
	&& !place_meeting(x+xSpeed, y+ySpeed, Collision_Obj)){
		// Attack stop
		if(attackStop && attackVelocity > attackFriction*2){
			attackFriction *= 2;
		}
		dir = point_direction(x, y, x+xSpeed, y+ySpeed);
		xSpeed -= lengthdir_x(attackFriction, dir);
		ySpeed -= lengthdir_y(attackFriction, dir);
		
		x += xSpeed;
		y += ySpeed;
	}
	else{
		xSpeed = 0;
		ySpeed = 0;
	}
	
	// Eye glow mechanic
	if(action == "attack"){
		characterSprite = Reaper_Tired_Spr;
	}
	else{
		characterSprite = Reaper_Spr;
	}
}