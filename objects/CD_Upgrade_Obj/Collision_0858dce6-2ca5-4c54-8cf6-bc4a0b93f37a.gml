other.CD *= 0.60;

if(other.alarm[1] > other.CD){
	other.alarm[1] = other.CD;
}

instance_destroy();