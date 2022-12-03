imageDirection = (direction + (360/16)) / 45;

imageDirection += rotation;

// Draws monster
draw_sprite_ext(sprite_index, imageDirection, x+irandom_range(-shake, shake), y+irandom_range(-shake, shake), 1, 1, 0, c_white, transparency);
draw_sprite_ext(Monster_HP_Bar_Spr, 0, x-8, y-12, HP/maxHP, 1, 0, c_white, transparency);
