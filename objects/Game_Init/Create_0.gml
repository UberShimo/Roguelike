global.pickedClass = noone;
global.classUnlocked = false;

global.storedHP = 0;
global.storedDEF = 0;
global.storedAS = 0;
global.storedFO = 0;
global.storedCD = 0;
global.relicsFound = 0; // Unlock related
global.statsAreStored = false;

global.difficultyScaling = 1;
global.monstersSlain = 0;
global.dungeonDepth = 1;
global.seconds = 0;
global.minutes = 0;

// Randomize da shiiiit for real
randomize();

// Fix gui so it matches window size
display_set_gui_size(480, 270);

#region load save
if(!file_exists("save.ini")){ // If you start the game first time
	ini_open("save.ini");
	ini_write_real("save", "volume", 0.2);
}
else{ // If you have a save
	ini_open("save.ini");
	volume = ini_read_real("save", "volume", 0.2);
}
#region Load all class levels
global.slayerLevel = ini_read_real("save", "slayerLevel", 1);
global.rogueLevel = ini_read_real("save", "rogueLevel", 1);
global.archerLevel = ini_read_real("save", "archerLevel", 1);
global.wizardLevel = ini_read_real("save", "wizardLevel", 1);
global.gladiatorLevel = ini_read_real("save", "gladiatorLevel", 0);
global.samuraiLevel = ini_read_real("save", "samuraiLevel", 0);
global.arbalistLevel = ini_read_real("save", "arbalistLevel", 0);
global.shamanLevel = ini_read_real("save", "shamanLevel", 0);
global.paladinLevel = ini_read_real("save", "paladinLevel", 0);
global.duelistLevel = ini_read_real("save", "duelistLevel", 0);
global.toolistLevel = ini_read_real("save", "toolistLevel", 0);
global.necromancerLevel = ini_read_real("save", "necromancerLevel", 0);
global.heavyweightLevel = ini_read_real("save", "heavyweightLevel", 0);
global.reaperLevel = ini_read_real("save", "reaperLevel", 0);
global.ninjaLevel = ini_read_real("save", "ninjaLevel", 0);
global.chronomancerLevel = ini_read_real("save", "chronomancerLevel", 0);
global.bruteLevel = ini_read_real("save", "bruteLevel", 0);
global.pirateLevel = ini_read_real("save", "pirateLevel", 0);
global.mechanicLevel = ini_read_real("save", "mechanicLevel", 0);
global.bardLevel = ini_read_real("save", "bardLevel", 0);
global.debugManLevel = ini_read_real("save", "debugManLevel", 0);
#endregion

ini_close();
#endregion

// Set volume
audio_set_master_gain(0, volume);

room_goto(Class_Select);