imageDirection = (direction + (360/16)) / 45;

// Draws monster
if(action == noone){
	draw_sprite_ext(sprite_index, imageDirection, x+random_range(-shake, shake), y+random_range(-shake, shake), image_xscale, image_yscale, 0, c_white, transparency);
}
else{
	draw_self();
}

draw_sprite_ext(Monster_HP_Bar_Spr, 0, x-8, y-12, HP/maxHP, 1, 0, c_white, transparency);