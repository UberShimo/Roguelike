/// @description ACTION!

if(action == "attack"){
	att = instance_create_depth(x, y, 0, Paladin_Attack_Obj);
	att.x += lengthdir_x(32, direction);
	att.y += lengthdir_y(32, direction);
	att.direction = direction;
	att.DMG *= FO;
	att.explosionsLeft = 2; // Attack leaves 2 extra explosions
	characterShake = 0;
	rotation = 1;
	MS = originalMS;
}
else if(action == "ability"){
	instance_create_depth(x, y, depth, Paladin_Ability_Obj);
	att = instance_create_depth(x, y, 0, Paladin_Ability_Push_Obj);
	att.DMG *= FO;
	characterShake = 0;
	rotation = 1;
	MS = originalMS;
}

FO = 1; // Never forget