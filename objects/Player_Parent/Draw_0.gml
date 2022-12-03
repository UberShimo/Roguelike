// Draws shadow
draw_self();

imageDirection = (direction + (360/16)) / 45;

imageDirection += rotation;

// Draws character
draw_sprite_ext(
	characterSprite,
	imageDirection,
	x+irandom_range(-characterShake, characterShake),
	y+irandom_range(-characterShake, characterShake) -height,
	1,
	1,
	0,
	blendColor,
	transparency
);