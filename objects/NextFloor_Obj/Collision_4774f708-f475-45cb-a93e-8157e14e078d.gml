global.dungeonDepth += 1;
global.storedHP = Player_Parent.HP;
global.storedDEF = Player_Parent.DEF;
global.storedAS = Player_Parent.AS;
global.storedFO = Player_Parent.maxFO;
global.storedCD = Player_Parent.CDchanger;
global.statsAreStored = true;

Player_Parent.controllable = false;

BlackScreen_Controller.fade = 0.02;

// Unlock ninja
if(!other.hasTakenDamage && global.ninjaLevel == 0){
	global.ninjaLevel = 1;
	global.classUnlocked = true;
}

instance_destroy();