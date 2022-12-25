event_inherited();

HP = 200*global.difficultyScaling;
MS = 1.5;
originalMS = MS;
destination[2] = [x, y]; // 2 coordinate variable
alarm[2] = 30;

AdjustMonsterStats(self);

// Dont ever forget
maxHP = HP;