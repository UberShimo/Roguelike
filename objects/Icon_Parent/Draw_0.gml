draw_self();

if(level > 0){
	draw_sprite_ext(sprite, 6, x, y, 1, 1, 0, c_white, 1);
}

// If class is picked
if(global.pickedClass == classObject){
	draw_sprite_ext(Character_Stand_Hover_Spr, 6, x, y, 1, 1, 0, c_white, 0.5);
	draw_sprite_ext(portrait, 0, Portrait_Obj.x , Portrait_Obj.y, 1, 1, 0, c_white, 1);
	draw_text_transformed_color(Attack_Description_Obj.x+16, Attack_Description_Obj.y-12, attackDescription, s, s, 0, c, c, c, c, 1);
	draw_text_transformed_color(Ability_Description_Obj.x+16, Ability_Description_Obj.y-12, abilityDescription, s, s, 0, c, c, c, c, 1);
	draw_text_transformed_color(Ability_Description_Obj.x+16, Ability_Description_Obj.y+12, bonusDescription, s, s, 0, c, c, c, c, 1);
}
else if(distance_to_point(mouse_x, mouse_y) < 1){
	draw_sprite_ext(Character_Stand_Hover_Spr, 6, x, y, 1, 1, 0, c_white, 0.2);
}