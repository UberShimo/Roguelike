att = instance_create_depth(x, y, depth, Shaman_Attack_Return_Obj);
att.speed = storedSpeed;
att.DMG = storedDMG;
att.direction = point_direction(x, y, Player_Parent.x, Player_Parent.y);

instance_destroy();