// Makes sure to not get stuck on walls
x -= lengthdir_x(pushSpeed*2, pushDirection);
y -= lengthdir_y(pushSpeed*2, pushDirection);

if(pushSpeed > 2 || pushSpeed < -2){
	// Fix negative pushspeed
	if(pushSpeed < 0){
		pushSpeed = -pushSpeed;
	}
	HP -= pushSpeed*2;
	MS = 0;
	stunned = true;
	alarm[1] = 20;
	
	repeat(6){
		instance_create_depth(x, y, 0, Blood_Obj);
		instance_create_depth(x, y, 0, Hit_Eff_Obj);
	}
	
	if(HP <= 0){
		MonsterDies(self);
	}
}

pushSpeed = 0;