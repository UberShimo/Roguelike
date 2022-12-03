if(other.deflected){
	HP -= other.DMG;
	
	repeat(6){
		instance_create_depth(x, y, 0, Blood_Obj);
		instance_create_depth(x, y, 0, Hit_Eff_Obj);
	}
	
	if(HP <= 0){
		MonsterDies(self);
	}
}