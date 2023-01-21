other.HP += 10;

// Unlock heavyweight
if(other.HP >= 300 && global.heavyweightLevel == 0){
	global.heavyweightLevel = 1;
	global.classUnlocked = true;
}

audio_play_sound(Slurp_Snd, 0, false);
instance_destroy();