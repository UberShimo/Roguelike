event_inherited();

HP = 30;
DMG = 5;
destination[2] = [Player_Parent.x, Player_Parent.y]; // 2 coordinate variable
alarm[2] = 30*AS;

image_speed = 1;

AdjustMonsterStats(self);

// Dont ever forget
maxHP = HP;