/// @description ACTION!

if(action == "attack"){
	att = instance_create_depth(x, y, 0, Necromancer_Attack_Obj);
	att.DMG *= FO;
	att.direction = direction;
	att.speed = 2;
}

if(action == "ability"){
	att = instance_create_depth(x, y, 0, Zombie_Obj);
	// Puts it in front of you
	att.x += lengthdir_x(16, direction);
	att.y += lengthdir_y(16, direction);
	att.DMG *= FO;
}

FO = 1; // Never forget