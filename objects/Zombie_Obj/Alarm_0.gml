hitbox = instance_create_depth(x, y, 0, Zombie_Hitbox_Obj);
hitbox.DMG = DMG;

if(HP > 0){
	HP -= decayAmount;
	decayAmount += originalDecayAmount;
}
// die
else{
	MonsterDies(self);
}

alarm[0] = 30;