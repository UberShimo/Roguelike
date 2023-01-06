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

// Movement logic
if(hInput != 0 || vInput != 0){
	if(!place_meeting(x+hInput*MS, y, Collision_Obj)){
		x += hInput*MS;
	}
	if(!place_meeting(x, y+vInput*MS, Collision_Obj)){
		y += vInput*MS;
	}
	stepCheck += 1;
}

// Jump
if(keyboard_check(vk_space) && canJump && MS > 0){
	heightSpeed = 3;
	canJump = false;
	alarm[11] = 40;
}

// Abandon mission
if(keyboard_check(vk_escape) && returning < 1){
	returning += 1/60;
}
else if(returning < 1 && returning > 0){
	returning -= 1/60;
}
else if(returning >= 1 && BlackScreen_Controller.fade < 0){
	BlackScreen_Controller.fade = 0.02;
	BlackScreen_Controller.nextRoom = Class_Select;
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
	FO += (maxFO-1) / 120; // Charges in 2 sec
}