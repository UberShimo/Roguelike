// Movement
hInput = 0;
vInput = 0;

if(keyboard_check(ord("D"))){
	hInput = 1;
}
if(keyboard_check(ord("A"))){
	hInput = -1;
}
if(keyboard_check(ord("S"))){
	vInput = 1;
}
if(keyboard_check(ord("W"))){
	vInput = -1;
}

// Diagonal movement reduction
if(hInput != 0 && vInput != 0){
	hInput *= 0.65;
	vInput *= 0.65;
}

if(hInput != 0 || vInput != 0){
	repeat(MS){
		if(!place_meeting(x+hInput, y, Collision_Obj)){
			x += hInput;
		}
		if(!place_meeting(x, y+vInput, Collision_Obj)){
			y += vInput;
		}
	}
	stepCheck += 1;
}

// Jump
if(keyboard_check(vk_space) && canJump && alarm[3] <= 0 && MS > 0){
	heightSpeed = 3;
	canJump = false;
	alarm[11] = 40;
}

// Walking effect
if(stepCheck >= 8 && height < 2){
	stepCheck = 0;
	
	if(height == 0){
		height = 1;
	}
	else{
		height = 0;
	}
}

// Spin thing
rotation += spin;

// Gravity / Height logic
height += heightSpeed;

if(height > 1){
	heightSpeed -= 0.25;
}
else if(height < 0){
	height = 0;
	heightSpeed = 0;
}

// Direction
direction = point_direction(x, y, mouse_x, mouse_y);

// Depth
depth = -y;

// Focus mechanic
if(action == noone && FO < maxFO){
	FO += maxFO / 180; // Charges in 3 sec
}