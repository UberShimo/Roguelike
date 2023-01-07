event_inherited();

other.maxFO *= 1.5;

text = instance_create_depth(x, y, depth, Upgrade_Text_Obj);
text.text = "CHARGE";
text.c = c_blue;
text.offset = -26;

instance_destroy();