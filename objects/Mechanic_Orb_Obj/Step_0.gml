event_inherited();

eff = instance_create_depth(x, y, depth, Mechanic_Orb_Eff);
eff.image_xscale = image_xscale;
eff.image_yscale = image_yscale;
eff.image_alpha = image_alpha;

// Bounce mechanics
if(place_meeting(x+hspeed, y+vspeed, Collision_Obj)){
	bullet = instance_create_depth(x, y, depth, Mechanic_Orb_Obj);
	bullet.alarm[0] = alarm[0];
	bullet.DMG = DMG;
	bullet.speed = speed;
	bullet.direction = direction;
	
	if(place_meeting(x+hspeed, y, Collision_Obj)){
		bullet.hspeed = -hspeed;
	}
	else if(place_meeting(x, y+vspeed, Collision_Obj)){
		bullet.vspeed = -vspeed;
	}
	else{
		bullet.hspeed = -hspeed;
		bullet.vspeed = -vspeed;
	}
	
	instance_destroy();
}