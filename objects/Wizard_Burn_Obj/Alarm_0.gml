hitbox = instance_create_depth(x, y, depth, Wizard_Burn_Hitbox_Obj);
hitbox.DMG = (DMG / 180) * 8; // (dmg / burn duration) * alarm 0 frequency. Makes it so fire DoT is same as fireball DMG
hitbox.stun = 0;

alarm[0] = 8;