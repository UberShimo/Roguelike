if(explosionsLeft > 0){
	att = instance_create_depth(x, y, depth, Paladin_Attack_Obj);
	att.x += lengthdir_x(32, direction);
	att.y += lengthdir_y(32, direction);
	att.direction = direction;
	att.DMG = DMG;
	att.explosionsLeft = explosionsLeft-1;
}

instance_destroy();