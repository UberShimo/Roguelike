/// @description ACTION!
if(action == "attack"){
	att = instance_create_depth(x, y, 0, Ninja_Kunai_Obj);
	att.DMG *= FO;
	att.direction = direction;
	att.velocity = 16;
	att.image_xscale = 16;
	
	rotation = 0;
	
	for(i = 0; i < instance_number(Ninja_Clone_Obj); i++){
		clone = instance_find(Ninja_Clone_Obj, i);
		att = instance_create_depth(clone.x, clone.y, clone.depth, Clone_Kunai_Obj);
		att.DMG *= FO;
		dir = point_direction(clone.x, clone.y, mouse_x, mouse_y);
		att.direction = dir;
		att.image_angle = dir;
		att.velocity = 16;
		att.image_xscale = 16;
	}
}

FO = 1; // Never forget