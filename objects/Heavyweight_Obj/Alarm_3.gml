/// @description ACTION!
if(action == "attack"){
	att = instance_create_depth(x, y, 0, Heavyweight_Attack_Obj);
	att.DMG += att.DMG*FO;
	att.direction = direction;
	reposition = random_range(-8, 8);
	att.x += lengthdir_x(reposition, direction+90);
	att.y += lengthdir_y(reposition, direction+90);
	
	rotation = -rotation;
}
else if(action == "ability"){
	att = instance_create_depth(x, y, 0, Heavyweight_Rolling_Hitbox_Obj);
	att.DMG += att.DMG*FO;
}

FO = 0; // Never forget