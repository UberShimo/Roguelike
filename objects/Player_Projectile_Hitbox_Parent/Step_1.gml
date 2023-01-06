// Needs to be begin step

repeat(velocity){
	x += lengthdir_x(1, direction);
	y += lengthdir_y(1, direction);
		
	if(position_meeting(x, y, Collision_Obj) || place_meeting(x, y, Enemy_Parent_Obj)){
		x += lengthdir_x(1, direction);
		y += lengthdir_y(1, direction);
		break;
	}
}