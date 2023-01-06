dashes += 1;

if(dashes < 2){
	alarm[1] = CD*CDchanger;
}

eff = instance_create_depth(x, y, depth, CD_Effect);
eff.image_blend = c_yellow;
eff.scaleInc = 1;

audio_play_sound(CD_Snd, 0, false);
