event_inherited();

// Start in a corner
x = Dungeon_Creater.x+12;
y = Dungeon_Creater.y+12;
if(irandom_range(1, 2) == 1){
	x += Dungeon_Creater.xGrid * Dungeon_Creater.hTiles;
}
if(irandom_range(1, 2) == 1){
	y += Dungeon_Creater.yGrid * Dungeon_Creater.vTiles;
}

action = "scared";
HP = 300*global.difficultyScaling*global.difficultyScaling;
destination[2] = [x, y]; // 2 coordinate variable
alarm[0] = 60;
alarm[2] = 60;
direction = 90; // Facing up

// Dont ever forget
maxHP = HP;

// Singing time
if(global.pickedClass == Bard_Obj){
	x = Player_Parent.x;
	y = Player_Parent.y+64;
	alarm[0] = 0;
	alarm[2] = 0;
	alarm[4] = 60;
}
