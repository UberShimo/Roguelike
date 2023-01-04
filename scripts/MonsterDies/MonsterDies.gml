monster = argument0; /// @param Object

// Samurai specific stuff
if(instance_exists(Samurai_Obj)){
	Samurai_Obj.alarm[1] -= 60;
			
	if(Samurai_Obj.alarm[1] < 0){
		Samurai_Obj.alarm[1] = 1;
	}
}
// Much blood
repeat(12){
	instance_create_depth(monster.x, monster.y, 0, Blood_Obj);
}

// Drop health maybe
if(irandom_range(1, 5) == 1){ // 20% chance
	instance_create_depth(monster.x, monster.y, monster.depth, HP_Obj);
}

global.monstersSlain += 1;

// If the summoner dies
if(monster.object_index == Summoner_Obj){
	// Goto class select
	BlackScreen_Controller.alarm[0] = 300;
	BlackScreen_Controller.nextRoom = Class_Select;
	
	// What class?
	if(global.pickedClass == Slayer_Obj){
		global.slayerLevel += 1;
		if(global.gladiatorLevel == 0){ // Unlock class
			global.gladiatorLevel = 1;
			global.classUnlocked = true;
		}
	}
	else if(global.pickedClass == Rogue_Obj){
		global.rogueLevel += 1;
		if(global.samuraiLevel == 0){ // Unlock class
			global.samuraiLevel = 1;
			global.classUnlocked = true;
		}
	}
	else if(global.pickedClass == Archer_Obj){
		global.archerLevel += 1;
		if(global.arbalistLevel == 0){ // Unlock class
			global.arbalistLevel = 1;
			global.classUnlocked = true;
		}
	}
	else if(global.pickedClass == Wizard_Obj){
		global.wizardLevel += 1;
		if(global.shamanLevel == 0){ // Unlock class
			global.shamanLevel = 1;
			global.classUnlocked = true;
		}
	}
	else if(global.pickedClass == Gladiator_Obj){
		global.gladiatorLevel += 1;
		if(global.paladinLevel == 0){ // Unlock class
			global.paladinLevel = 1;
			global.classUnlocked = true;
		}
	}
	else if(global.pickedClass == Samurai_Obj){
		global.samuraiLevel += 1;
		if(global.duelistLevel == 0){ // Unlock class
			global.duelistLevel = 1;
			global.classUnlocked = true;
		}
	}
	else if(global.pickedClass == Arbalist_Obj){
		global.arbalistLevel += 1;
		if(global.toolistLevel == 0){ // Unlock class
			global.toolistLevel = 1;
			global.classUnlocked = true;
		}
	}
	else if(global.pickedClass == Shaman_Obj){
		global.shamanLevel += 1;
		if(global.necromancerLevel == 0){ // Unlock class
			global.necromancerLevel = 1;
			global.classUnlocked = true;
		}
	}
	else if(global.pickedClass == Paladin_Obj){
		global.paladinLevel += 1;
	}
	else if(global.pickedClass == Duelist_Obj){
		global.duelistLevel += 1;
	}
	else if(global.pickedClass == Toolist_Obj){
		global.toolistLevel += 1;
	}
	else if(global.pickedClass == Necromancer_Obj){
		global.necromancerLevel += 1;
	}
	else if(global.pickedClass == Heavyweight_Obj){
		global.heavyweightLevel += 1;
	}
	else if(global.pickedClass == Reaper_Obj){
		global.reaperLevel += 1;
	}
	else if(global.pickedClass == Ninja_Obj){
		global.ninjaLevel += 1;
	}
	else if(global.pickedClass == Chronomancer_Obj){
		global.chronomancerLevel += 1;
	}
	else if(global.pickedClass == Brute_Obj){
		global.bruteLevel += 1;
	}
	else if(global.pickedClass == Pirate_Obj){
		global.pirateLevel += 1;
	}
	else if(global.pickedClass == Mechanic_Obj){
		global.mechanicLevel += 1;
	}
	else if(global.pickedClass == Bard_Obj){
		global.bardLevel += 1;
	}
	else if(global.pickedClass == DebugMan_Obj){
		global.debugManLevel += 1;
	}
	
	// Unlock ninja
	if(!Player_Parent.hasTakenDamage && global.ninjaLevel == 0){
		global.ninjaLevel = 1;
		global.classUnlocked = true;
	}
	
	// Unlock chronomancer
	if(global.relicsFound == 0 && global.chronomancerLevel == 0){
		global.chronomancerLevel = 1;
		global.classUnlocked = true;
	}
	
	// Unlock DebugMan
	if(CheckIfAllClassesAreFinished()){
		global.debugManLevel = 1;
		global.classUnlocked = true;
	}
	
	// Spawn success
	instance_create_depth(x, y, depth, Success_Obj);
	
	// Stop timer
	Player_Parent.alarm[9] = 0;
	
	// Destroy spawners
	instance_destroy(Enemy_Spawner);
	
	// Kill all monsters
	for(i = 0; i < instance_number(Enemy_Parent_Obj); i++){
		obj = instance_find(Enemy_Parent_Obj, i);
		instance_create_depth(obj.x, obj.y, depth, Death_Hitbox);
	}
}

instance_destroy(monster);