HP -= other.DMG;
	
repeat(6){
	instance_create_depth(x, y, 0, Blood_Obj);
	instance_create_depth(x, y, 0, Hit_Eff_Obj);
}

instance_destroy(other);

// Die
if(HP <= 0){
	instance_destroy();
}