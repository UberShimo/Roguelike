att = instance_create_depth(x, y, depth, Necromancer_Attack_Hitbox_Obj);
att.DMG = DMG;

audio_play_sound(Nasty_Snd, 0, false);
alarm[0] = 8;