/// @description ACTION!

if(action == "attack"){
	att = instance_create_depth(x, y, 0, Slayer_Attack_Obj);
	att.DMG *= FO;
	rotation = 5;
}
else if(action == "ability"){
	att = instance_create_depth(x, y, 0, Slayer_Ability_Obj);
	att.DMG *= FO;
	spin = 1;
}

FO = 1; // Never forget