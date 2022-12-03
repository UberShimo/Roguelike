eff = instance_create_depth(x, y, depth, Fading_Pixel_Obj);
eff.vspeed = -0.1;
eff.fade = 0.002;
eff.image_alpha = 0.25;
eff.image_blend = c_yellow;

// Randomized within a circle
dir = random_range(0, 360);
length = random_range(0, 32);
eff.x += lengthdir_x(length, dir);
eff.y += lengthdir_y(length, dir);

image_alpha -= fade;