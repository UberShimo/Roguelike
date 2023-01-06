// Fade blackScreen

if((fade < 1 && blackScreen > 0) || (fade > 0 && blackScreen < 1)){
	blackScreen += fade;
}

// Activate player
if(fade < 0 && blackScreen <= 0 && alarm[0] < 1 && instance_exists(Player_Parent)){
	Player_Parent.controllable = true;
}

// next room
if(fade > 0 && blackScreen >= 1){
	room_goto(nextRoom);
}