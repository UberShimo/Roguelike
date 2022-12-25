spawnCounter -= global.difficultyScaling;

// Spawning time
if(spawnCounter <= 0){
	rng = irandom_range(1, 3);
	cam = view_camera[0];
	minX = camera_get_view_x(cam);
	maxX = minX + camera_get_view_width(cam);
	minY = camera_get_view_y(cam);
	maxY = minY + camera_get_view_height(cam);
	
	// Spawn big
	if(rng == 1){
		rngX = random_range(minX, maxX);
		rngY = random_range(minY, maxY);
		
		obj = instance_create_depth(rngX, rngY, depth, Enemy_Spawner);
		obj.isBig = true;
		obj.image_xscale = 1.5;
		obj.image_yscale = 1.5;
	}
	else{
		repeat(3){
			rngX = random_range(minX, maxX);
			rngY = random_range(minY, maxY);
		
			instance_create_depth(rngX, rngY, depth, Enemy_Spawner);
		}
	}
	
	// Summoner stuff
	if(instance_exists(Summoner_Obj)){
		Summoner_Obj.alarm[3] = 1;
	}
	
	global.difficultyScaling += 0.01; // This number is VERY sensitive
	spawnCounter = spawnTimer;
}