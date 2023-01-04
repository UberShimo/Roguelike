/// @description Pushback logic
// calculate velocity
velocity = sqrt(power(xPush, 2) + power(yPush, 2));

if(velocity > frictionAmount){
	x += xPush;
	y += yPush;

	xPush -= lengthdir_x(frictionAmount, pushDirection);
	yPush -= lengthdir_y(frictionAmount, pushDirection);
}

// Bounce logic when colliding
if(place_meeting(x+xPush, y+yPush, Collision_Obj)){
	// Get hurt
	if(velocity > 2){
		HP -= velocity*2;
		MS = 0;
		stunned = true;
	
		// Makes so you cant remove stun duration
		if(alarm[1] < 20){
			alarm[1] = 20;
		}
	
		repeat(6){
			instance_create_depth(x, y, 0, Blood_Obj);
			instance_create_depth(x, y, 0, Hit_Eff_Obj);
		}
	
		if(HP <= 0){
			MonsterDies(self);
		}
	}
	
	// Bounce
	if(place_meeting(x+xPush, y, Collision_Obj)){ // Horizontal bounce
		xPush = -xPush/2;
	}
	else if(place_meeting(x, y+yPush, Collision_Obj)){ // Vertical bounce
		yPush = -yPush/2;
	}
	else{ // Diagonal bounce
		xPush = -xPush/2;
		yPush = -yPush/2;
	}
	pushDirection = point_direction(x, y, x+xPush, y+yPush);
}