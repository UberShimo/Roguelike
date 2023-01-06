att = instance_create_depth(x, y, 0, Shaman_Attack_Out_Obj);
att.DMG = DMG;
att.direction = point_direction(other.x, other.y, x, y);
att.speed = speed;

instance_destroy();