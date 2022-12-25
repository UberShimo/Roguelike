/// @description ACTION!

if(action == "attack"){
	att = instance_create_depth(x, y, 0, Gladiator_Attack_Obj);
	att.DMG += att.DMG*FO;
	rotation = 1;
}
else if(action == "ability"){
	att = instance_create_depth(x, y, 0, Gladiator_Ability_Obj);
	att.DMG += att.DMG*FO;
	rotation = 2;
}

FO = 1; // Never forget