event_inherited();

// Draw tripple arrow charge
draw_sprite_ext(Archer_Tripple_Arrow_Spr, 0, 4*pixelMultiplier, 24 * pixelMultiplier, pixelMultiplier, pixelMultiplier, 0, c_gray, 0.5);
draw_sprite_part_ext(
	Archer_Tripple_Arrow_Spr, 0,
	0,	sprite_height - (sprite_height * (trippleArrowCharge / trippleArrowChargeDuration)),
	16, 16,
	4*pixelMultiplier,
	(24 * pixelMultiplier) + (sprite_height * pixelMultiplier * (1 -(trippleArrowCharge / trippleArrowChargeDuration))),
	pixelMultiplier, pixelMultiplier, c_white, 1
);
