event_inherited();

eff = instance_create_depth(x, y, depth, Fading_Pixel_Obj);
eff.image_angle = direction;
eff.image_xscale = -effScaling; // Needs to be reversed scaling
eff.image_alpha = 0.2;
eff.fade = 0.01;