// Draws monster
draw_sprite_ext(sprite_index, 6, x+irandom_range(-shake, shake), y+irandom_range(-shake, shake), image_xscale, image_yscale, 0, c_white, transparency);
draw_sprite_ext(Monster_HP_Bar_Spr, 0, x-16, y-32, (HP/maxHP)*2, 1, 0, c_white, transparency);

// Draws HP
draw_text(x, y-24, HP);