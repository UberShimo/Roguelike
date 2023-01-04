spawnCounter -= global.difficultyScaling;

// Spawning time
if(spawnCounter <= 0 && BlackScreen_Controller.nextRoom != Class_Select){
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
		if(instance_exists(obj)){
			obj.isBig = true;
			obj.image_xscale = 1.5;
			obj.image_yscale = 1.5;
			with(obj){
				// Repeat random position until it doesnt collide with wall
				while(place_meeting(x, y, Collision_Obj)){
					x = random_range(Enemy_Spawn_Controller.minX, Enemy_Spawn_Controller.maxX);
					y = random_range(Enemy_Spawn_Controller.minY, Enemy_Spawn_Controller.maxY);
				}
			}
		}
	}
	else{
		repeat(3){
			rngX = random_range(minX, maxX);
			rngY = random_range(minY, maxY);
		
			obj = instance_create_depth(rngX, rngY, depth, Enemy_Spawner);
			with(obj){
				// Repeat random position until it doesnt collide with wall
				while(place_meeting(x, y, Collision_Obj)){
					x = random_range(Enemy_Spawn_Controller.minX, Enemy_Spawn_Controller.maxX);
					y = random_range(Enemy_Spawn_Controller.minY, Enemy_Spawn_Controller.maxY);
				}
			}
		}
	}
	
	// Summoner stuff
	if(instance_exists(Summoner_Obj) && !instance_exists(Bard_Obj)){
		Summoner_Obj.alarm[3] = 1;
	}
	
	global.difficultyScaling += 0.005; // This number is VERY sensitive
	spawnCounter = spawnTimer;
}