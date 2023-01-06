eff = instance_create_depth(x, y, depth, Fading_Pixel_Obj);
eff.image_blend = c_aqua;
eff.image_alpha = 0.5;
eff.fade = 0.02;
eff.x += random_range(-12, 12);
eff.y += random_range(-12, 12);
eff.image_xscale += random_range(1, 4);
eff.image_yscale += random_range(1, 4);