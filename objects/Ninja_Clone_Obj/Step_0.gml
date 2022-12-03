// Direction
direction = point_direction(x, y, mouse_x, mouse_y);

// Depth
depth = -y;

// Attack
if(attack){
	rotation = 2;
	
	alarm[3] = 8 * Player_Parent.AS;
	attack = false;
}
