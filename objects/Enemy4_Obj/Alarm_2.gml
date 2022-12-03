/// @description Pick a move

if(distance_to_object(Player_Parent) > 128){ // walk towards player
	destination = [Player_Parent.x, Player_Parent.y];
}
else if(irandom_range(1, 2) == 1){ // 50% chance of Attacking
	action = "attack";
	shake = 1;
	
	repeat(4){
		xSpawn = Player_Parent.x + random_range(-64, 64);
		ySpawn = Player_Parent.y + random_range(-64, 64);
	
		warning = instance_create_depth(xSpawn, ySpawn, -ySpawn, Enemy4_Warning_Obj);
		scale = random_range(1, 2);
		warning.image_xscale = scale;
		warning.image_yscale = scale;
		warning.DMG = DMG;
		warning.spawner = self;
	}
	
	alarm[0] = 120;
	alarm[2] = 120;
	alarm[3] = 60;
}
else{
	xDestination = irandom_range(-1, 1)  * 32;
	yDestination = irandom_range(-1, 1)  * 32;
	
	destination = [x + xDestination, y + yDestination];
}

if(action == noone){
	alarm[2] = 30;
}