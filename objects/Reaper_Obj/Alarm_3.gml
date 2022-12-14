/// @description ACTION!
if(action == "attack"){
	att = instance_create_depth(x, y, 0, Reaper_Attack_Obj);
	att.DMG *= FO;
	att2 = instance_create_depth(x, y, 0, Reaper_Attack_Tip_Obj);
	att2.DMG *= FO;
	spin = 1;
	MS = originalMS;
	dodging = false;
	transparency = 1;
	xSpeed = 0;
	ySpeed = 0;
	
	alarm[5] = 12*AS;
}
else if(action == "ability"){
	att = instance_create_depth(x, y, 0, Reaper_Ability_Obj);
	att.DMG *= FO;
	att.image_angle = direction;
	
	xDistance = lengthdir_x(4, direction);
	yDistance = lengthdir_y(4, direction);
	
	// Cant put ability too far away
	loops = 96 / 4; // Because distance increase by 4 each loop
	
	distanceToMouse = distance_to_point(mouse_x, mouse_y);
	
	if(distanceToMouse < 96){
		loops = distanceToMouse / 4; // Because distance increase by 4 each loop
	}
	
	repeat(loops){
		att.x += xDistance;
		att.y += yDistance;
	}
}

FO = 1; // Never forget