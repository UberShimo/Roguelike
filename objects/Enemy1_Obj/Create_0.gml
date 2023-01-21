event_inherited();

HP = 20;

AdjustMonsterStats(self);

// Dont ever forget
maxHP = HP;
// need to remove original MS to half the MS bonus
MS *= global.difficultyScaling;
newMS = MS -originalMS;
newMS /= 2;
newMS += originalMS;
MS = newMS;
originalMS = MS;