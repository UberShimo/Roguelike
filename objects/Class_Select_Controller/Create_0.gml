global.pickedClass = noone;
global.difficultyScaling = 1;
global.level = 1;
global.monstersSlain = 0;
global.dungeonDepth = 1;
global.seconds = 0;
global.minutes = 0;
global.relicsFound = 0;
global.hasTakenDamage = false;

audio_stop_all();
audio_play_sound(Bard_Mu, 0, false);

alarm[0] = 60*68;

mechanicUnlock = 0;