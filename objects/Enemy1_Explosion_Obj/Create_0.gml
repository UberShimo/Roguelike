event_inherited();

projectile = false;

repeat(6){
	eff = instance_create_depth(x, y, 0, Hit_Eff_Obj);
	eff.image_blend = c_green;
	eff.image_xscale = 2;
	eff.image_yscale = 2;
}