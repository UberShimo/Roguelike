// Needs to be begin step

repeat(velocity){
	x += lengthdir_x(1, direction);
	y += lengthdir_y(1, direction);
		
	if(position_meeting(x, y, Collision_Obj)){
		break;
	}
}