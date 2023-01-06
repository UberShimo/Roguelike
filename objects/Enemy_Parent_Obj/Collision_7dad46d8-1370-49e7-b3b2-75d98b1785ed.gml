if(other.deflected){
	HP -= other.DMG;
	
	// Spawn dramatic effects
	repeat(6){
		instance_create_depth(x, y, 0, Blood_Obj);
		instance_create_depth(x, y, 0, Hit_Eff_Obj);
	}
	audio_play_sound(Hit_Snd, 0, false);
	
	if(HP <= 0){
		MonsterDies(self);
	}
}