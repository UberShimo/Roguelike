isBig = false;
timer = 60*2;

image_alpha = 0;

alarm[0] = timer;

dir = point_direction(x, y, Player_Parent.x, Player_Parent.y);

while(place_meeting(x, y, Collision_Obj)){
	x += lengthdir_x(24, dir);
	y += lengthdir_y(24, dir);
}