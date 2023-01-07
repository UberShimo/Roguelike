event_inherited();

other.CDchanger *= 0.60;

if(other.alarm[1] > other.CD*other.CDchanger){
	other.alarm[1] = other.CD*other.CDchanger;
}

text = instance_create_depth(x, y, depth, Upgrade_Text_Obj);
text.text = "COOLDOWN";
text.c = c_yellow;
text.offset = -36;

instance_destroy();