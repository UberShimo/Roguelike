event_inherited();

other.DEF *= 0.70;

text = instance_create_depth(x, y, depth, Upgrade_Text_Obj);
text.text = "DEFENSE";
text.c = c_red;
text.offset = -30;

instance_destroy();