/// @description ACTION!
if(action == "attack"){
	att = instance_create_depth(x, y, 0, Ninja_Kunai_Obj);
	att.DMG += att.DMG*FO;
	att.direction = direction;
	att.velocity = 16;
	att.image_xscale = 16;
	
	rotation = 0;
}

FO = 0; // Never forget