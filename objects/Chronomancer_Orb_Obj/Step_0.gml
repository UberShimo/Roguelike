eff = instance_create_depth(x, y, depth, Fading_Pixel_Obj);
eff.fade = 0.002;
eff.image_alpha = 0.25;
// Randomized within a circle
dir = random_range(0, 360);
length = random_range(0, 16);
eff.x += lengthdir_x(length, dir);
eff.y += lengthdir_y(length, dir);

// Rotating around player
x = Player_Parent.x + lengthdir_x(48, rotation);
y = Player_Parent.y + lengthdir_y(48, rotation);

rotation += rotateAmount;