event_inherited();

HP = 35;
bullets = 0;
destination[2] = [Player_Parent.x, Player_Parent.y]; // 2 coordinate variable
alarm[2] = 30*AS;

AdjustMonsterStats(self);

// Dont ever forget
maxHP = HP;