event_inherited();

if(distance_to_point(mouse_x, mouse_y) < 1 && global.chronomancerLevel == 0 && global.pickedClass == noone){
	draw_text_transformed_color(Ability_Description_Obj.x+12, Portrait_Obj.y,
	"Defeat summoner without\nrelics to unlock.",
	s, s, 0, c, c, c, c, 1);
}