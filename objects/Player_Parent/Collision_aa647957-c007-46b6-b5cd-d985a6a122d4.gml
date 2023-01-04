if(controllable && !dodging && (!other.projectile || height < 2)){
	HP -= other.DMG * DEF;
	cameraShake = 4;
	alarm[2] = 8;
	hasTakenDamage = true;
	
	repeat(6){
		instance_create_depth(x, y, 0, Blood_Obj);
		instance_create_depth(x, y, 0, Hit_Eff_Obj);
	}
	audio_play_sound(Hurt_Snd, 0, false);
	
	// Die
	if(HP < 1 && controllable){
		// Much blood
		repeat(12){
			blood = instance_create_depth(x, y, 0, Blood_Obj);
			blood.speed *= random_range(1, 4);
			s = blood.image_xscale * random_range(1, 4);
			blood.image_xscale = s;
			blood.image_yscale = s;
			instance_create_depth(x, y, 0, Hit_Eff_Obj);
		}
		HP = 0;
		controllable = false;
		cameraShake = 16;
		alarm[2] = 0;
		
		BlackScreen_Controller.alarm[0] = 60;
		BlackScreen_Controller.nextRoom = Class_Select;
	}
}