/// @description ACTION!

if(action == "attack"){
	att = instance_create_depth(x, y, 0, Archer_Arrow_Obj);
	att.DMG *= FO;
	att.direction = direction;
	att.velocity = 16;
	
	if(trippleArrowCharge >= 120){
		att2 = instance_create_depth(x, y, 0, Archer_Arrow_Obj);
		att.DMG *= FO;
		att2.direction = direction+4;
		att2.velocity = 16;
		att3 = instance_create_depth(x, y, 0, Archer_Arrow_Obj);
		att3.DMG += att.DMG*FO;
		att3.direction = direction-4;
		att3.velocity = 16;
	}
}

if(action == "ability"){
	att = instance_create_depth(x, y, 0, Archer_Magic_Arrow_Obj);
	att.DMG *= FO;
	att.direction = direction;
	att.velocity = 16;
}

trippleArrowCharge = 0;
FO = 1; // Never forget