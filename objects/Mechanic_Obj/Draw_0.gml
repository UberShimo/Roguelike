event_inherited();

if(action == "aim"){
	// Draw aim
	draw_sprite_ext(Pixel_Spr, 0, x, y, 64, 1, direction+aim, c_white, 0.1);
	draw_sprite_ext(Pixel_Spr, 0, x, y, 64, 1, direction-aim, c_white, 0.1);
}