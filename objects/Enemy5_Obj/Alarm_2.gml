/// @description Pick a move

if(distance_to_object(Player_Parent) > 96){ // walk towards player
	destination = [Player_Parent.x, Player_Parent.y];
}
else if(irandom_range(1, 4) == 1){ // 25% chance of Attacking
	action = "attack";
	shake = 1;
	
	sprite_index = Monster5_Attack_Spr;
	
	alarm[3] = 120*AS;
}
else{
	xDestination = irandom_range(-1, 1)  * 32;
	yDestination = irandom_range(-1, 1)  * 32;
	
	destination = [x + xDestination, y + yDestination];
}

if(action == noone){
	alarm[2] = 30*AS;
}