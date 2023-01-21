/// @description Pick a move

if(distance_to_object(Player_Parent) > 128){ // walk towards player
	destination = [Player_Parent.x, Player_Parent.y];
}
else if(irandom_range(1, 2) == 1){ // 50% chance of Attacking
	action = "attack";
	shake = 1;
	
	repeat(6){
		xSpawn = Player_Parent.x + random_range(-64, 64);
		ySpawn = Player_Parent.y + random_range(-64, 64);
	
		warning = instance_create_depth(xSpawn, ySpawn, -ySpawn, Enemy4_Warning_Obj);
		scale = image_xscale * random_range(0.4, 0.8); // Bullets scale with size
		warning.image_xscale = scale;
		warning.image_yscale = scale;
		warning.DMG = DMG;
		warning.spawner = self;
		warning.alarm[1] = 80*AS;
	}
	
	alarm[0] = 120*AS;
	alarm[2] = 120*AS;
	alarm[3] = 80*AS;
}
else{
	xDestination = irandom_range(-1, 1)  * 32;
	yDestination = irandom_range(-1, 1)  * 32;
	
	destination = [x + xDestination, y + yDestination];
}

if(action == noone){
	alarm[2] = 30*AS;
}