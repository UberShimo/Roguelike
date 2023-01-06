/// @description Stay to spawner

if(instance_exists(spawner)){
	x = spawner.x;
	y = spawner.y;
	
	if(spawner.dazzled){
		instance_destroy();
	}
}
else{
	instance_destroy();
}
