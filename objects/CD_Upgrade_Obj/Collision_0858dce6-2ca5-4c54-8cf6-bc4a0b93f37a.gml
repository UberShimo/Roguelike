event_inherited();

other.CDchanger *= 0.60;

if(other.alarm[1] > other.CD*other.CDchanger){
	other.alarm[1] = other.CD*other.CDchanger;
}

instance_destroy();