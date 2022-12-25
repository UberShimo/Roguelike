global.pickedClass = noone;

#region All class levels....
global.slayerLevel = 1;
global.rogueLevel = 1;
global.archerLevel = 1;
global.wizardLevel = 1;
global.gladiatorLevel = 1;
global.samuraiLevel = 1;
global.arbalistLevel = 1;
global.shamanLevel = 1;
global.paladinLevel = 1;
global.duelistLevel = 1;
global.toolistLevel = 1;
global.necromancerLevel = 1;
global.heavyweightLevel = 0;
global.reaperLevel = 0;
global.ninjaLevel = 0;
global.chronomancerLevel = 0;
global.bruteLevel = 0;
global.pirateLevel = 0;
global.mechanicLevel = 0;
global.bardLevel = 0;
global.debugManLevel = 1;
#endregion

global.difficultyScaling = 1;
global.monstersSlain = 0;
global.dungeonDepth = 1;

randomize();

// Fix gui so it matches window size
display_set_gui_size(480, 270);

room_goto(Class_Select);