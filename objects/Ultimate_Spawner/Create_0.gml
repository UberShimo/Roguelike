startX = x;
startY = y;

// Width and height of the tiles to spawn random things on
xGrid = 256;
yGrid = 192;

image_xscale = xGrid/sprite_width;
image_yscale = yGrid/sprite_height;

// Amount of tiles to spawn random things on vertically and horizontally
hTiles = 7;
vTiles = 7;

// Spawn upper wall
wallWidth = 32;
for(i = 0; i < (xGrid/wallWidth) * hTiles + 1; i++){ // The + 1 is because the dungeon has an extra wall in width & height
	instance_create_depth(x + wallWidth/2 + i*wallWidth, y-24, depth, Wall1_Obj);
}

if(global.dungeonDepth < 3){
	// Spawn stairway. Cant be spawned in centre
	hRng = irandom_range(0, hTiles-1);
	vRng = irandom_range(0, vTiles-1);
	while(hRng > 1 && hRng < 5 && vRng > 1 && vRng < 5){
		hRng = irandom_range(0, hTiles-1);
		vRng = irandom_range(0, vTiles-1);
	}
	xPos =  x + hRng * xGrid + xGrid/2;
	yPos =  y + vRng * yGrid + yGrid/2;
	instance_create_depth(xPos, yPos+24, 0, StairwayDown_Obj);

	// Spawn upgrades
	repeat(2){
		// Random position
		x = irandom_range(0, hTiles) * xGrid;
		y = irandom_range(0, vTiles) * yGrid;
	
		// Redo random position if place not empty
		while(!place_empty(x, y)){
			x = irandom_range(0, hTiles) * xGrid;
			y = irandom_range(0, vTiles) * yGrid;
		}
	
		rng = irandom_range(1, 4);
	
		if(rng == 1){
			obj = DEF_Upgrade_Obj;
		}
		else if(rng == 2){
			obj = FO_Upgrade_Obj;
		}
		else if(rng == 3){
			obj = AS_Upgrade_Obj;
		}
		else{
			obj = CD_Upgrade_Obj;
		}
		// Spawn da upgrade
		instance_create_depth(x+xGrid/2, y+yGrid/2, depth, obj);
	}
	
	// Reset position
	x = startX;
	y = startY;
}
// Spawn summoner
else{
	instance_create_depth(Player_Parent.x, Player_Parent.y+32, 0, Summoner_Obj);
}

// Spawn walls
repeat(vTiles){
	x = startX;
	
	repeat(hTiles){
		if(place_empty(x, y)){
			obj = noone;
		
			rng = irandom_range(0, 16); // 0 -> amount of patterns that exist
		
			if(rng == 1){
				obj = Pattern1_Spawner;
			}
			else if(rng == 2){
				obj = Pattern2_Spawner;
			}
			else if(rng == 3){
				obj = Pattern3_Spawner;
			}
			else if(rng == 4){
				obj = Pattern4_Spawner;
			}
			else if(rng == 5){
				obj = Pattern5_Spawner;
			}
			else if(rng == 6){
				obj = Pattern6_Spawner;
			}
			else if(rng == 7){
				obj = Pattern7_Spawner;
			}
			else if(rng == 8){
				obj = Pattern8_Spawner;
			}
			else if(rng == 9){
				obj = Pattern9_Spawner;
			}
			else if(rng == 10){
				obj = Pattern10_Spawner;
			}
			else if(rng == 11){
				obj = Pattern11_Spawner;
			}
			else if(rng == 12){
				obj = Pattern12_Spawner;
			}
			else if(rng == 13){
				obj = Pattern13_Spawner;
			}
			else if(rng == 14){
				obj = Pattern14_Spawner;
			}
			else if(rng == 15){
				obj = Pattern15_Spawner;
			}
			else if(rng == 16){
				obj = Pattern16_Spawner;
			}
			else{
				continue;
			}
			
			instance_create_depth(x, y, depth, obj);
		}
		x += xGrid;
	}
	y += yGrid;
}