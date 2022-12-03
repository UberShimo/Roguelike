pixelMultiplier = 4;

// Darkness
draw_sprite_ext(Darkness_Spr, 0, 0, 0, 2, 2, 0, c_white, 0.5);

// Draw HP bar
draw_sprite_ext(HP_Bar_Spr, 0, 12*pixelMultiplier, 1 * pixelMultiplier, pixelMultiplier * (HP/100), pixelMultiplier, 0, c_white, 1);
draw_sprite_ext(HP_Frame_Spr, 0, 12*pixelMultiplier, 1 * pixelMultiplier, pixelMultiplier, pixelMultiplier, 0, c_white, 1);

// Draw Coodlown bar
draw_sprite_ext(CD_Bar_Spr, 0, 12*pixelMultiplier, 12 * pixelMultiplier, pixelMultiplier * ((CD-alarm[1]) / CD), pixelMultiplier, 0, c_white, 1);
draw_sprite_ext(CD_Frame_Spr, 0, 12*pixelMultiplier, 12 * pixelMultiplier, pixelMultiplier, pixelMultiplier, 0, c_white, 1);

// Draw focus icon
if(maxFO > 0){
	draw_sprite_ext(FO_Upgrade_Spr, 0, 52*pixelMultiplier, 16 * pixelMultiplier, pixelMultiplier, pixelMultiplier, 0, c_black, 1);
	draw_sprite_ext(FO_Upgrade_Spr, 0, 52*pixelMultiplier, 16 * pixelMultiplier, pixelMultiplier, (FO/maxFO) * pixelMultiplier, 0, c_white, 1);
}