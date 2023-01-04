/// @description Cooldown

abilityReady = true;
instance_create_depth(x, y, depth, CD_Effect);

audio_play_sound(CD_Snd, 0, false);
