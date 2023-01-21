draw_self();
draw_sprite(Info_Spr, 0, x-6, y-6);

if(distance_to_point(mouse_x, mouse_y) < 1){
	draw_sprite_ext(Paper_Spr, 0, PaperSpawn2_Obj.x, PaperSpawn2_Obj.y, 0.6, 0.3, 0, c_white, 1);
	draw_text_transformed_color(PaperSpawn2_Obj.x+20, PaperSpawn2_Obj.y+16,
	"Makes you\nattack faster.",
	s, s, 0, c, c, c, c, 1);
	draw_sprite_ext(Circle_Spr, 0, x, y, 0.75, 0.75, 0, c_white, 0.5);
}
