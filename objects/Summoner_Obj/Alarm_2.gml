/// @description move

direction = point_direction(Player_Parent.x, Player_Parent.y, x, y); // Face away from player

xDestination = irandom_range(-1, 1)  * 64;
yDestination = irandom_range(-1, 1)  * 64;

distance = 64;
if(distance_to_object(Player_Parent) > 192){
	distance = -distance;
}

xDestination += lengthdir_x(distance, direction);
yDestination += lengthdir_y(distance, direction);
	
destination = [x + xDestination, y + yDestination];

alarm[2] = 30;
