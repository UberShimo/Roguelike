/// @description ACTION!

if(action == "attack"){
	repeat(8){
		att = instance_create_depth(x, y, 0, Mechanic_Bullet_Obj);
		att.DMG += att.DMG*FO;
		att.direction = direction + random_range(-aim, aim);
		att.velocity = 24;
	}
	aim = 20
	canJump = true;

	audio_play_sound(Shot_Snd, 0, false);
}

if(action == "ability"){
	att = instance_create_depth(x, y, depth, Mechanic_Orb_Obj);
	att.DMG += att.DMG*FO;
	att.direction = direction;
	att.speed = 4;
}

FO = 1; // Never forget