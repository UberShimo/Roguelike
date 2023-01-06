/// @description ACTION!

if(action == "attack"){
	if(shotsLoaded > 0){
		att = instance_create_depth(x, y, 0, Arbalist_Arrow_Obj);
		att.DMG *= FO;
		att.direction = direction;
		att.velocity = 16;
	
		alarm[3] = 10 * AS;
		shotsLoaded -= 1;
	}
}

if(action == "ability"){
	att = instance_create_depth(x, y, 0, Arbalist_Ability_Bolt_Obj);
	att.DMG *= FO;
	att.direction = direction;
	att.velocity = 32;
	
	speed = -4; // Pushes yourself back
}

FO = 1; // Never forget