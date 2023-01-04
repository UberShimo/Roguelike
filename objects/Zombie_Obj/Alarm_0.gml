hitbox = instance_create_depth(x, y, 0, Zombie_Hitbox_Obj);
hitbox.DMG = DMG;

if(HP > 1){
	HP -= decayAmount;
	decayAmount += originalDecayAmount;
}

alarm[0] = 30;