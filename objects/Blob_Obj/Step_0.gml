// Gravity / Height logic
height += heightSpeed;

if(height > 1){
	heightSpeed -= 0.1;
}
else if(height <= 0){
	obj = instance_create_depth(x, y, depth, Enemy1_Obj);
	if(isBig){
		obj.image_xscale = 1.5;
		obj.image_yscale = 1.5;
		obj.HP += obj.HP;
		obj.maxHP += obj.maxHP;
		obj.DMG += obj.DMG/2;
	}
	instance_destroy();
}

// Depth
depth = -y;

// Bounce mechanics
if(place_meeting(x+hspeed, y+vspeed, Collision_Obj)){
	if(place_meeting(x+hspeed, y, Collision_Obj)){
		hspeed = -hspeed;
	}
	else if(place_meeting(x, y+vspeed, Collision_Obj)){
		vspeed = -vspeed;
	}
	else{
		hspeed = -hspeed;
		vspeed = -vspeed;
	}
}