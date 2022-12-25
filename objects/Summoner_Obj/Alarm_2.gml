/// @description move

direction = point_direction(Player_Parent.x, Player_Parent.y, x, y); // Face away from player

xDestination = irandom_range(-1, 1)  * 32;
yDestination = irandom_range(-1, 1)  * 32;
xDestination += lengthdir_x(64, direction);
yDestination += lengthdir_y(64, direction);
	
destination = [x + xDestination, y + yDestination];


if(action == noone){
	alarm[2] = 30;
}