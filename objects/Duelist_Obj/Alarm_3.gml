/// @description ACTION!
if(action == "attack"){
	if(trippleStrike){
		repeat(2){
			att = instance_create_depth(x, y, 0, Duelist_Attack_Obj);
			att.DMG += att.DMG*FO;
			reposition = random_range(-12, 12);
			att.x += lengthdir_x(reposition, direction+90);
			att.y += lengthdir_y(reposition, direction+90);
		}
		trippleStrike = false;
		att.image_xscale *= 1.5;
	}
	
	att = instance_create_depth(x, y, 0, Duelist_Attack_Obj);
	att.DMG += att.DMG*FO;
	reposition = random_range(-8, 8);
	att.x += lengthdir_x(reposition, direction+90);
	att.y += lengthdir_y(reposition, direction+90);
	
	rotation = -rotation;
}

FO = 1; // Never forget