/// @description ACTION!

if(action == "attack"){
	att = instance_create_depth(x, y, 0, Heavyweight_Attack_Obj);
	att.DMG = 1;
	att.DMG *= FO;
	att.direction = direction;
	att.pushback = 16;
}

if(action == "ability"){
	att = instance_create_depth(x, y, 0, Archer_Magic_Arrow_Obj);
	att.DMG *= FO;
	att.direction = direction;
	att.velocity = 16;
}

FO = 1; // Never forget