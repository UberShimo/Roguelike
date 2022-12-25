draw_self();
draw_sprite(Info_Spr, 0, x-6, y-6);

if(distance_to_point(mouse_x, mouse_y) < 1){
	draw_sprite_ext(Character_Stand_Hover_Spr, 0, x, y-2, 1, 1, 0, c_white, 1);
	draw_sprite_ext(Paper_Spr, 0, Relics_Obj.x-86, Relics_Obj.y-16, 0.5, 0.4, 0, c_white, 1);
	draw_text_transformed_color(Relics_Obj.x-72, Relics_Obj.y+16,
	"Makes you\nattack faster.",
	s, s, 0, c, c, c, c, 1);
}
