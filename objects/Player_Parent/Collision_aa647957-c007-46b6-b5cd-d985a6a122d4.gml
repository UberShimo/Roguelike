if(controllable && (!other.projectile || height < 2)){
	HP -= other.DMG * DEF;
	cameraShake = 4;
	alarm[2] = 8;
	
	repeat(6){
		instance_create_depth(x, y, 0, Blood_Obj);
		instance_create_depth(x, y, 0, Hit_Eff_Obj);
	}
}