image = 0;

if(distance_to_point(mouse_x, mouse_y) < 1){
	image = 1;
	draw_sprite_ext(Paper_Spr, 0, PaperSpawn1_Obj.x, PaperSpawn1_Obj.y, 1, 0.6, 0, c_white, 1);
	// Pathetic fucking solution because i cant fucking make a font with ÅÄÖé that gamemaker can use.
	draw_sprite_ext(GameMadeBy_Text, 0, PaperSpawn1_Obj.x+24, PaperSpawn1_Obj.y+32, s, s, 0, c_black, 1);
	// draw_sprite_ext(PlayTesters_Text, 0, PaperSpawn1_Obj.x+24, PaperSpawn1_Obj.y+64, s, s, 0, c_black, 1);
	draw_sprite_ext(SoftwaresUsed_Text, 0, PaperSpawn1_Obj.x+24, PaperSpawn1_Obj.y+64, s, s, 0, c_black, 1);
}
// Draw self
draw_sprite(sprite_index, image, x, y);