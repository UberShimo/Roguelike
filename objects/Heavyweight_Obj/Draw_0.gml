if(rolling){
	draw_self(); // Shadow
	draw_sprite_ext(Heavyweight_Ability_Spr, image_index, x, y, 1, 1, direction, c_white, 1);
}
else{
	event_inherited();
}
