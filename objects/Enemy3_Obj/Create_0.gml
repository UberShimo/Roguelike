event_inherited();

HP = 50;
bullets = 0;
destination[2] = [Player_Parent.x, Player_Parent.y]; // 2 coordinate variable
alarm[2] = 30;

AdjustMonsterStats(self);

// Dont ever forget
maxHP = HP;