draw_self();

s = 1;
draw_text_transformed_color(x-5, y+12, Start_Obj.level, s, s, 0, c, c, c, c, 1);

s = 0.5;
if(distance_to_point(mouse_x, mouse_y) < 1){
	draw_text_transformed_color(x-22, y-24, "Difficulty", s, s, 0, c, c, c, c, 1);
}