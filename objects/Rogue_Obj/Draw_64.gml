event_inherited();

// Draw attach charge
draw_sprite_ext(Rogue_Charge_Spr, 0, 4*pixelMultiplier, 20 * pixelMultiplier, pixelMultiplier, pixelMultiplier, 0, c_black, 1);
draw_sprite_part_ext(
	Rogue_Charge_Spr, 0,
	0,	0,
	0+(charge/180)*16, 16,
	4*pixelMultiplier,
	20*pixelMultiplier,
	pixelMultiplier, pixelMultiplier, c_white, 1
);
