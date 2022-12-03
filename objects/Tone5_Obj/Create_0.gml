event_inherited();

DMG = 5;
velocity = 1;
alarm[0] = 12;

image_alpha = 0.5;
image_blend = c_yellow;

// Randomized within a circle
dir = random_range(0, 360);
length = random_range(0, 12);
x += lengthdir_x(length, dir);
y += lengthdir_y(length, dir);