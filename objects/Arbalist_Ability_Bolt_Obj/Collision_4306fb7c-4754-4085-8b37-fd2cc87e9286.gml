event_inherited();

bolt = instance_create_depth(x, y, depth, Arbalist_Ability_Bolt_Stuck_Obj);
bolt.image_angle = image_angle;

audio_play_sound(Click_Snd, 0, false);

instance_destroy();