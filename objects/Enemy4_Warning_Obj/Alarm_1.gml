/// @description Destroy

hitbox = instance_create_depth(x, y, depth, Enemy4_Hitbox_Obj);
hitbox.DMG = DMG;
hitbox.image_xscale = image_xscale*2;
hitbox.image_yscale = image_yscale*2;

eff = instance_create_depth(x, y, depth, Enemy4_Attack_eff_Obj);
eff.image_xscale = image_xscale*2;
eff.image_yscale = image_yscale*2;

instance_destroy();