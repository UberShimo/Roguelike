event_inherited();

// Spawn the yellow line
eff = instance_create_depth(x, y, depth, Fading_Pixel_Obj);
eff.image_angle = direction;
eff.image_xscale = -effScaling; // Needs to be reversed scaling
eff.image_blend = c_yellow;
eff.fade = 0.1;