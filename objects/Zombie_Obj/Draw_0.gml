imageDirection = (direction + (360/16)) / 45;

imageDirection += rotation;

// Draws monster
draw_sprite_ext(sprite_index, imageDirection, x, y, 1, 1, 0, c_white, transparency);
draw_sprite_ext(Monster_HP_Bar_Spr, 0, x-8, y-12, HP/maxHP, 1, 0, c_white, transparency);
