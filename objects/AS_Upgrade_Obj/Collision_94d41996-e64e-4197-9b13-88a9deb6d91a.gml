event_inherited();

other.AS *= 0.70;

text = instance_create_depth(x, y, depth, Upgrade_Text_Obj);
text.text = "ATTACK SPEED";
text.c = c_green;
text.offset = -54;

instance_destroy();