image_xscale = velocity;

eff = instance_create_depth(x, y, depth, Fading_Pixel_Obj);
eff.image_xscale = image_xscale;
eff.image_yscale = image_yscale;
eff.image_angle = direction;
eff.image_blend = image_blend;
eff.image_alpha = 0.2;
eff.fade = 0.002;