/// @description ACTION!

if(action == "attack"){
	rng = irandom_range(1, 5);
	
	if(rng == 1){
		att = instance_create_depth(x, y, 0, Tone1_Obj);
		att.DMG += att.DMG*FO;
		att.direction = direction;
		att.velocity = 2;
		audio_play_sound(Tone1_Snd, 1, false);
	}
	else if(rng == 2){
		dir = 0;
		
		repeat(12){
			att = instance_create_depth(x, y, 0, Tone2_Obj);
			att.DMG += att.DMG*FO;
			att.direction = dir;
			att.velocity = 2;
			dir += 30;
		}
		audio_play_sound(Tone2_Snd, 1, false);
	}
	else if(rng == 3){
		dir = direction;
		
		repeat(3){
			att = instance_create_depth(x, y, 0, Tone3_Obj);
			att.DMG += att.DMG*FO;
			att.direction = dir;
			att.velocity = 4;
			att2 = instance_create_depth(x, y, 0, Tone3_Obj);
			att2.DMG += att.DMG*FO;
			att2.direction = dir;
			att2.curve = -att2.curve;
			att2.velocity = 4;
			dir += 120;
		}
		audio_play_sound(Tone3_Snd, 1, false);
	}
	else if(rng == 4){
		repeat(8){
			att = instance_create_depth(x, y, 0, Tone4_Obj);
			att.DMG += att.DMG*FO;
			att.direction = direction+random_range(-40, 40);
			att.velocity = random_range(2, 4);
		}
		audio_play_sound(Tone4_Snd, 1, false);
	}
	else if(rng == 5){
		alarmBonus = 0;
		
		repeat(5){
			att = instance_create_depth(x, y, 0, Tone5_Obj);
			att.DMG += att.DMG*FO;
			att.direction = direction;
			att.alarm[0] += alarmBonus;
			alarmBonus += 12;
		}
		audio_play_sound(Tone5_Snd, 1, false);
	}
}

if(action == "ability"){
	att = instance_create_depth(x, y, 0, Tone1_Obj);
	att.DMG += att.DMG*FO;
	att.direction = direction;
	att.velocity = 2;
	
	dir = 0;
		
	repeat(12){
		att = instance_create_depth(x, y, 0, Tone2_Obj);
		att.DMG += att.DMG*FO;
		att.direction = dir;
		att.velocity = 2;
		dir += 30;
	}
	
	dir = direction;
		
	repeat(3){
		att = instance_create_depth(x, y, 0, Tone3_Obj);
		att.DMG += att.DMG*FO;
		att.direction = dir;
		att.velocity = 4;
		att2 = instance_create_depth(x, y, 0, Tone3_Obj);
		att2.DMG += att.DMG*FO;
		att2.direction = dir;
		att2.curve = -att2.curve;
		att2.velocity = 4;
		dir += 120;
	}
	
	repeat(8){
		att = instance_create_depth(x, y, 0, Tone4_Obj);
		att.DMG += att.DMG*FO;
		att.direction = direction+random_range(-40, 40);
		att.velocity = random_range(2, 4);
	}
	alarmBonus = 0;
		
	repeat(5){
		att = instance_create_depth(x, y, 0, Tone5_Obj);
		att.DMG += att.DMG*FO;
		att.direction = direction;
		att.alarm[0] += alarmBonus;
		alarmBonus += 12;
	}
	audio_play_sound(Chord_Snd, 1, false);
}

FO = 0; // Never forget