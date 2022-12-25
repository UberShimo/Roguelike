eff = instance_create_depth(x, y, depth, Fading_Pixel_Obj);
eff.image_blend = c_orange;
eff.fade = 0.05;
eff.vspeed = -0.1;
eff.x += random_range(-1, 2);
eff.y += random_range(-1, 2);