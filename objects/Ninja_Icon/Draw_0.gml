event_inherited();

if(distance_to_point(mouse_x, mouse_y) < 1 && global.ninjaLevel == 0 && global.pickedClass == noone){
	draw_text_transformed_color(Ability_Description_Obj.x+16, Portrait_Obj.y,
	"Defeat summoner without relics\nto unlock.",
	s, s, 0, c, c, c, c, 1);
}