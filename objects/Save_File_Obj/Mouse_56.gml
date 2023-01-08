if(grabbed){
	grabbed = false;
	
	// Delete save
	if(position_meeting(mouse_x, mouse_y, Trash_Bin_Obj)){
		global.slayerLevel = 1;
		global.rogueLevel = 1;
		global.archerLevel = 1;
		global.wizardLevel = 1;
		global.gladiatorLevel = 0;
		global.samuraiLevel = 0;
		global.arbalistLevel = 0;
		global.shamanLevel = 0;
		global.paladinLevel = 0;
		global.duelistLevel = 0;
		global.toolistLevel = 0;
		global.necromancerLevel = 0;
		global.heavyweightLevel = 0;
		global.reaperLevel = 0;
		global.ninjaLevel = 0;
		global.chronomancerLevel = 0;
		global.bruteLevel = 0;
		global.pirateLevel = 0;
		global.mechanicLevel = 0;
		global.bardLevel = 0;
		global.debugManLevel = 0;
		
		room_goto(Class_Select);
	}
}