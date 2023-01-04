event_inherited();

if(distance_to_point(mouse_x, mouse_y) < 1 && global.mechanicLevel == 0 && global.pickedClass == noone){
	draw_sprite_ext(Mechanic_Hint_Spr, 0, Portrait_Obj.x , Portrait_Obj.y, 1, 1, 0, c_white, 1);
}