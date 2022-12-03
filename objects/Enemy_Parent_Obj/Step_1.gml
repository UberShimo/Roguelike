/// @description Pushback logic
frictionAmount = 0.5;

if(pushSpeed > frictionAmount){
	x += lengthdir_x(pushSpeed, pushDirection);
	y += lengthdir_y(pushSpeed, pushDirection);

	pushSpeed -= frictionAmount;
}
else if(pushSpeed < frictionAmount){
	x += lengthdir_x(pushSpeed, pushDirection);
	y += lengthdir_y(pushSpeed, pushDirection);

	pushSpeed += frictionAmount;
}