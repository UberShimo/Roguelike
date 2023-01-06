/// @description ACTION!
if(action == "attack"){
	att1 = instance_create_depth(x, y, 0, Brute_Attack_Obj);
	att1.DMG *= FO;
	att2 = instance_create_depth(x, y, 0, Brute_Attack_Obj);
	att2.DMG *= FO*1.5;
	att2.image_angle = direction+180;
	
	rotation = 2;
	characterShake = 0;
}
else if(action == "ability"){
	att = instance_create_depth(x, y, 0, Brute_Attack_Obj);
	att.DMG = 200;
	att.DMG *= FO;
	att.image_xscale = 1.5;
	att.image_yscale = 1.5;
	audio_play_sound(Explosion_Snd, 0, false);
	
	rotation = -2;
	characterShake = 0;
	MS = originalMS;
}

FO = 1; // Never forget