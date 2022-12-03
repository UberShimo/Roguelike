event_inherited();

HP = 60;
bullets = 0;
destination[2] = [Player_Parent.x, Player_Parent.y]; // 2 coordinate variable
alarm[2] = 30;

image_speed = 1;

AdjustMonsterStats(self);

// Dont ever forget
maxHP = HP;