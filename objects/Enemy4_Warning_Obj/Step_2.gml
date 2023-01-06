/// @description Destroy if spawner dies

if(!instance_exists(spawner)){
	instance_destroy();
}
else if(spawner.dazzled){
	instance_destroy();
}