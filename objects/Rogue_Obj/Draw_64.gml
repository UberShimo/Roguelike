event_inherited();

// Draw attach charge
draw_sprite_ext(Rogue_Charge_Spr, 0, 4*pixelMultiplier, 20 * pixelMultiplier, pixelMultiplier, pixelMultiplier, 0, c_gray, 0.5);
draw_sprite_part_ext(
	Rogue_Charge_Spr, 0,
	0,	0,
	0+(charge/chargeDuration)*16, 16,
	4*pixelMultiplier,
	20*pixelMultiplier,
	pixelMultiplier, pixelMultiplier, c_white, 1
);
