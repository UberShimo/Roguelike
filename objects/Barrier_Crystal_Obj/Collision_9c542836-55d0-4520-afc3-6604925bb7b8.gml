// Looks if value exists in list. If not it returns -1
if(ds_list_find_index(hitboxList, other) == -1){
	HP -= other.DMG;
		
	// No actual hit no effects
	if(other.isAnActualHit){
		// Spawn dramatic effects
		repeat(6){
			instance_create_depth(x, y, 0, Blood_Obj);
			instance_create_depth(x, y, 0, Hit_Eff_Obj);
		}
		audio_play_sound(Hit_Snd, 0, false);
	}
	
	// Destroy barrier
	if(HP <= 0){
		if(instance_exists(KillsBarrier_Obj)){
			KillsBarrier_Obj.killGoal = global.monstersSlain;
		}
		
		text = instance_create_depth(x, y-8, depth, Upgrade_Text_Obj);
		text.text = "Barrier broken";
		text.c = c_fuchsia;
		text.offset = -64;
		
		eff = instance_create_depth(x, y, depth, CD_Effect);
		eff.scaleInc = 2;
		
		repeat(6){
			instance_create_depth(x, y, depth, Spark_Pixel_Obj);
		}
		
		audio_play_sound(Mystic_Snd, 0, false);
		audio_play_sound(Shot_Snd, 0, false);
		instance_destroy();
	}
	
	ds_list_add(hitboxList, other);
}