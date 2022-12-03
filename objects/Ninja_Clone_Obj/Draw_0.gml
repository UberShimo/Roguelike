imageDirection = (direction + (360/16)) / 45;

imageDirection += rotation;

// Draws character
draw_sprite_ext(
	sprite_index,
	imageDirection,
	x,
	y,
	1,
	1,
	0,
	c_white,
	0.5 // Transparent
);