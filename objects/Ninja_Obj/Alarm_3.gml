/// @description ACTION!
if(action == "attack"){
	att = instance_create_depth(x, y, 0, Ninja_Kunai_Obj);
	att.DMG += att.DMG*FO;
	att.direction = direction;
	att.velocity = 16;
	att.image_xscale = 16;
	
	rotation = 0;
	
	for(i = 0; i < instance_number(Ninja_Clone_Obj); i++){
		
		att = instance_create_depth(x, y, 0, Clone_Kunai_Obj);
		att.direction = direction;
		att.image_angle = direction;
		att.velocity = 16;
		att.image_xscale = 16;
	}
}

FO = 1; // Never forget