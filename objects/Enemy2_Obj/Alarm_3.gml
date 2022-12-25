image_index = 1;

hitbox = instance_create_depth(x, y, 0, Enemy2_Hitbox_Obj);
hitbox.image_angle = direction;
hitbox.DMG = DMG;
hitbox.image_xscale *= image_xscale;
hitbox.image_yscale *= image_yscale;

eff = instance_create_depth(x, y, depth, Enemy2_Attack_eff_Obj);
eff.spawner = self;

// Make effect face right direction
if(direction > 30 && direction <= 90){
	eff.sprite_index = Monster2_ATK_Eff_1_Spr; // Changes nothing lol
}
else if(direction > 90 && direction <= 150){
	eff.sprite_index = Monster2_ATK_Eff_1_Spr;
	eff.image_xscale *= -1;
}
else if(direction > 150 && direction <= 210){
	eff.sprite_index = Monster2_ATK_Eff_2_Spr;
	eff.image_xscale *= -1;
}
else if(direction > 210 && direction <= 270){
	eff.sprite_index = Monster2_ATK_Eff_3_Spr;
	eff.image_xscale *= -1;
}
else if(direction > 270 && direction <= 330){
	eff.sprite_index = Monster2_ATK_Eff_3_Spr;
}
else{
	eff.sprite_index = Monster2_ATK_Eff_2_Spr;
}

eff.image_xscale *= image_xscale;
eff.image_yscale *= image_yscale;

alarm[0] = 30*AS;