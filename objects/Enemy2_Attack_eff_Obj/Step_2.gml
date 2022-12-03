/// @description Stay to spawner

if(instance_exists(spawner)){
	x = spawner.x;
	y = spawner.y;
}
else{
	instance_destroy();
}