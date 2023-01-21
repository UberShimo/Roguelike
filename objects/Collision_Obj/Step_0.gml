// Trasparent if someone is behind wall
if(place_meeting(x, y-alphaDist, Player_Parent)
|| place_meeting(x, y-alphaDist, Enemy_Parent_Obj)
|| place_meeting(x, y-alphaDist, HP_Obj)
|| place_meeting(x, y-alphaDist, Upgrade_Parent)
|| place_meeting(x, y-alphaDist, Enemy_Hitbox_Parent)){
	image_alpha = 0.8;
}
else{
	image_alpha = 1;
}
