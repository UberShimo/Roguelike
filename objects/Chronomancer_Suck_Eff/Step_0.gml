image_alpha += 0.1;

if(instance_exists(sucker)){
	if(distance_to_point(sucker.x, sucker.y) < 4){
		instance_destroy();
	}
}
else{
	instance_destroy();
}