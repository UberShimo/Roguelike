// Save class levels
ini_open("save.ini");

#region Save all class levels
ini_write_real("save", "slayerLevel", global.slayerLevel);
ini_write_real("save", "rogueLevel", global.rogueLevel);
ini_write_real("save", "archerLevel", global.archerLevel);
ini_write_real("save", "wizardLevel", global.wizardLevel);
ini_write_real("save", "gladiatorLevel", global.gladiatorLevel);
ini_write_real("save", "samuraiLevel", global.samuraiLevel);
ini_write_real("save", "arbalistLevel", global.arbalistLevel);
ini_write_real("save", "shamanLevel", global.shamanLevel);
ini_write_real("save", "paladinLevel", global.paladinLevel);
ini_write_real("save", "duelistLevel", global.duelistLevel);
ini_write_real("save", "toolistLevel", global.toolistLevel);
ini_write_real("save", "necromancerLevel", global.necromancerLevel);
ini_write_real("save", "heavyweightLevel", global.heavyweightLevel);
ini_write_real("save", "reaperLevel", global.reaperLevel);
ini_write_real("save", "ninjaLevel", global.ninjaLevel);
ini_write_real("save", "chronomancerLevel", global.chronomancerLevel);
ini_write_real("save", "bruteLevel", global.bruteLevel);
ini_write_real("save", "pirateLevel", global.pirateLevel);
ini_write_real("save", "mechanicLevel", global.mechanicLevel);
ini_write_real("save", "bardLevel", global.bardLevel);
ini_write_real("save", "debugManLevel", global.debugManLevel);
#endregion

ini_close();

game_end();