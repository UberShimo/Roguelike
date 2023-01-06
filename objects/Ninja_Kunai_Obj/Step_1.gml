// Needs to be begin step

repeat(velocity){
	x += lengthdir_x(1, direction);
	y += lengthdir_y(1, direction);
		
	if(position_meeting(x, y, Collision_Obj)){
		break;
	}
	
	if(position_meeting(x, y, Ninja_Clone_Obj)){
		clone = instance_place(x, y, Ninja_Clone_Obj);
		
		Player_Parent.x = clone.x;
		Player_Parent.y = clone.y;
 
		repeat(8){
			eff = instance_create_depth(x, y, depth, Spark_Pixel_Obj);
			s = random_range(1, 4);
			eff.image_xscale = s;
			eff.image_yscale = s;
		}

		audio_play_sound(Mystic_Snd, 0, false);
		instance_destroy(clone);
		instance_destroy();
	}
}