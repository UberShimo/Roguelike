/// @description ACTION!
if(action == "attack"){
	att1 = instance_create_depth(x, y, 0, Brute_Attack_Obj);
	att1.DMG += att1.DMG*FO;
	att1.image_xscale = 1.2;
	att2 = instance_create_depth(x, y, 0, Brute_Attack_Obj);
	att2.DMG += att2.DMG*FO;
	att2.image_xscale = 1.2;
	att2.image_angle = direction+180;
	
	rotation = 2;
	characterShake = 0;
}
else if(action == "ability"){
	att = instance_create_depth(x, y, 0, Brute_Attack_Obj);
	att.DMG = 100;
	att.DMG += att.DMG*FO;
	att.image_xscale = 1.5;
	att.image_yscale = 1.5;
	
	rotation = -2;
	characterShake = 0;
	MS = originalMS;
}

FO = 0; // Never forget