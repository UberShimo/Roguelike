eff = instance_create_depth(x, y, depth, Fading_Pixel_Obj);
eff.image_angle = direction;
eff.image_xscale = velocity;
eff.image_alpha = 0.2;
eff.fade = 0.002;
eff.image_blend =  c_aqua;


eff2 = instance_create_depth(x, y, depth, Fading_Pixel_Obj);
eff2.image_alpha = 0.4;
eff2.fade = 0.002;
eff2.movement = 0.5;
eff2.image_blend =  c_aqua;
eff2.x += random_range(-4, 4);
eff2.y += random_range(-4, 4);