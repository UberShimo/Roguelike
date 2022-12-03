// Gravity / Height logic
height += heightSpeed;

if(height > 1){
	heightSpeed -= 0.25;
}
else if(height <= 0){
	instance_destroy();
}

// Depth
depth = -y;