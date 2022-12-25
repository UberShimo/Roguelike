eff = instance_create_depth(x, y, depth, Fading_Pixel_Obj);
eff.fade = 0.01;
eff.image_alpha = 0.5;
// Randomized within a circle
dir = random_range(0, 360);
length = 18; // Outline of circle
eff.x += lengthdir_x(length, dir);
eff.y += lengthdir_y(length, dir);

eff2 = instance_create_depth(x, y, depth, Chronomancer_Orb_Eff_Obj);
eff2.image_xscale = image_xscale;
eff2.image_yscale = image_yscale;

// Rotating around player
x = Player_Parent.x + lengthdir_x(48, rotation);
y = Player_Parent.y + lengthdir_y(48, rotation);

rotation += rotateAmount;