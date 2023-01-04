global.relicsFound += 1;

// Unlock da reaper
if(global.relicsFound == 2 && global.minutes < 1 && global.reaperLevel == 0){
	global.reaperLevel = 1;
	global.classUnlocked = true;
}