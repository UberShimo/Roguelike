// Draws monster
draw_sprite_ext(sprite_index, image_index, x+irandom_range(-shake, shake), y+irandom_range(-shake, shake), image_xscale, image_yscale, 0, c_white, transparency);
draw_sprite_ext(Monster_HP_Bar_Spr, 0, x-8, y-12, HP/maxHP, 1, 0, c_white, transparency);
