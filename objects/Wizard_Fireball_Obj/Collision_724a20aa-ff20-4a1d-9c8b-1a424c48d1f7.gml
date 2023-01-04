event_inherited();

if(instance_exists(other)){
	burn = instance_create_depth(x, y, depth, Wizard_Burn_Obj);
	burn.DMG = DMG*3;
	burn.target = other;
}