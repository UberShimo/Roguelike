imageDirection = (direction + (360/16)) / 45;

imageDirection += rotation;

// Draws monster
draw_sprite_ext(sprite_index, imageDirection, x+irandom_range(-shake, shake), y+irandom_range(-shake, shake), image_xscale, image_yscale, 0, c_white, transparency);

// Draws HP bar
draw_set_color(c_orange);
draw_set_alpha(0.5);
draw_rectangle(x-16-2, y-32-1, x+16+1, y-32+1, false);
draw_set_color(c_white);
draw_set_alpha(1);
draw_sprite_ext(Monster_HP_Bar_Spr, 0, x-16, y-32, 2, 1, 0, c_black, transparency);
draw_sprite_ext(Monster_HP_Bar_Spr, 0, x-16, y-32, (HP/maxHP)*2, 1, 0, c_white, transparency);

if(dazzled){
	draw_sprite_ext(Dazzle_Spr, dazzleImageIndex, x, y-20, dazzleScale, dazzleScale, 0, c_white, 1);
	dazzleImageIndex += dazzleImageSpeed;
}

if(action == "scared"){
	draw_sprite_ext(Scary_Sign_Spr, 0, x+random_range(-1, 1), y-32+random_range(-1, 1), 1, 1, 0, c_yellow, 1);
}