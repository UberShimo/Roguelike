image = 0;

if(distance_to_point(mouse_x, mouse_y) < 1){
	image = 1;
	draw_sprite_ext(Paper_Spr, 0, PaperSpawn1_Obj.x, PaperSpawn1_Obj.y, 1, 0.3, 0, c_white, 1);
	draw_text_transformed_color(PaperSpawn1_Obj.x+24, PaperSpawn1_Obj.y+16,
	"An evil summoner has hidden\n"+
	"in a dungeon spawning more\n"+
	"and more monsters. Someone\n"+
	"must stop it before it gets\n"+
	"out of hand!",
	s, s, 0, c, c, c, c, 1);
}
// Draw self
draw_sprite(sprite_index, image, x, y);