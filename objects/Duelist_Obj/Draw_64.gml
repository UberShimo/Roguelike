event_inherited();

// Draw dashes
if(dashes >= 1){
	draw_sprite_ext(Duelist_Dashes_Spr, 0, 4*pixelMultiplier, 20*pixelMultiplier, pixelMultiplier, pixelMultiplier, 0, c_white, 1);
}
if(dashes >= 2){
	draw_sprite_ext(Duelist_Dashes_Spr, 0, 20*pixelMultiplier, 20*pixelMultiplier, pixelMultiplier, pixelMultiplier, 0, c_white, 1);
}