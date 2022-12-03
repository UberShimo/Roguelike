/// @description ACTION!

if(action == "attack"){
	att = instance_create_depth(x, y, 0, Toolist_Attack_Obj);
	att.DMG += att.DMG*FO;
	att.direction = direction;
	att.velocity = 1;
	
	rotation = 2;
	alarm[5] = 8;
	FO = 0; // Never forget
}

if(action == "ability"){
	att = instance_create_depth(x, y, 0, Toolist_Ability_Obj);
	// Puts it in front of you
	att.x += lengthdir_x(16, direction);
	att.y += lengthdir_y(16, direction);
	att.DMG += att.DMG*FO;
}
