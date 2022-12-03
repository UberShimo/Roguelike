// Needs to be begin step

effScaling = 0;

repeat(velocity){
	x += lengthdir_x(1, direction);
	y += lengthdir_y(1, direction);
	effScaling += 1;
		
	if(position_meeting(x, y, Collision_Obj) || place_meeting(x, y, Enemy_Parent_Obj)){
		repeat(8){
			instance_create_depth(x, y, depth, Spark_Pixel_Obj);
		}
		break;
	}
}
