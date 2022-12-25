/// @description ACTION!
if(action == "attack"){
	att = instance_create_depth(x, y, 0, Pirate_Attack_Obj);
	att.DMG += att.DMG*FO;
	
	rotation = -2;
	
	if(combo >= 2){
		att = instance_create_depth(x, y, 0, Pirate_Attack3_Obj);
		att.DMG += att.DMG*FO;
		att.direction = direction;
		spin = -1;
		combo = 0;
		alarm[5] = 16;
	}
	else{
		combo += 1;
	}
	alarm[4] = 120;
}
else if(action == "ability"){
	att = instance_create_depth(x, y, 0, Pirate_Bullet_Obj);
	att.DMG += att.DMG*FO;
	att.velocity = 48;
	att.direction = direction;
	
	repeat(4){
		// Spawn in front
		eff = instance_create_depth(x+lengthdir_x(16, direction), y+lengthdir_y(16, direction), depth, Spark_Pixel_Obj);
		eff.direction = direction + random_range(-8, 8);
	}
}

FO = 1; // Never forget