/// @description Singing time!

action = "sing";
rng = irandom_range(1, 5);

if(rng == 1){
	snd = Summoner_Voice1_Snd;
}
else if(rng == 2){
	snd = Summoner_Voice2_Snd;
}
else if(rng == 3){
	snd = Summoner_Voice3_Snd;
}
else if(rng == 4){
	snd = Summoner_Voice4_Snd;
}
else{
	snd = Summoner_Voice5_Snd;
}

rng = irandom_range(1, 3);

if(rng == 1){
	direction = 0;
}
else if(rng == 2){
	direction = 45;
}
else{
	direction = 90;
}

sprite_index = Summoner_Singing_Spr;

audio_play_sound(snd, 0, false);
alarm[4] = irandom_range(30, 120);