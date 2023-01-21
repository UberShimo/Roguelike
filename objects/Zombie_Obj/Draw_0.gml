imageDirection = (direction + (360/16)) / 45;

imageDirection += rotation;

// Draws monster
draw_sprite_ext(sprite_index, imageDirection, x, y, 1, 1, 0, c_white, transparency);
//Draws HP bar
draw_set_color(c_gray);
draw_rectangle(x-9, y-HPheight, x+8, y-HPheight, false);
draw_set_color(c_white);
draw_sprite_ext(Monster_HP_Bar_Spr, 0, x-8, y-HPheight, 1, 1, 0, c_black, transparency);
draw_sprite_ext(Monster_HP_Bar_Spr, 0, x-8, y-HPheight, HP/maxHP, 1, 0, c_white, transparency);
