image_xscale /= 1.05;
image_yscale /= 1.05;
image_alpha += 0.01;

eff = instance_create_depth(x, y, depth, Chronomancer_Suck_Eff);
// Randomized within a circle
dir = random_range(0, 360);
length = random_range(0, 32);
eff.x += lengthdir_x(length, dir);
eff.y += lengthdir_y(length, dir);
eff.direction = point_direction(eff.x, eff.y, x, y);
eff.speed = 2;
eff.sucker = self;