/// @description ACTION!

if(action == "attack"){
	att = instance_create_depth(x, y, 0, Wizard_Zap_Obj);
	att.DMG += att.DMG*FO;
	att.direction = direction;
	att.velocity = 64;
	
}

if(action == "ability"){
	// Spawn it in front of you
	att = instance_create_depth(x+lengthdir_x(16, direction), y+lengthdir_y(16, direction), 0, Wizard_Fireball_Obj);
	att.DMG += att.DMG*FO;
	att.direction = direction;
	att.velocity = 2;
}

FO = 0; // Never forget