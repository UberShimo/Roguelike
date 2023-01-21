att = instance_create_depth(x, y, depth, Shaman_Attack_Wait_Obj);
att.storedSpeed = speed;
att.storedDMG = DMG;
att.image_xscale = image_xscale;
att.image_yscale = image_yscale;
instance_destroy();