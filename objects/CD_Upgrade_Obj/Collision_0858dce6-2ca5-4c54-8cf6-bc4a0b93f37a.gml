other.CD = other.CD * 0.75;

if(other.alarm[1] > other.CD){
	other.alarm[1] = other.CD;
}

instance_destroy();