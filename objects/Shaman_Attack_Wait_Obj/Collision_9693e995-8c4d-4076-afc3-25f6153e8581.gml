att = instance_create_depth(x, y, 0, Shaman_Attack_Out_Obj);
att.DMG = storedDMG;
att.direction = point_direction(other.x, other.y, x, y);
att.speed = storedSpeed;

instance_destroy();