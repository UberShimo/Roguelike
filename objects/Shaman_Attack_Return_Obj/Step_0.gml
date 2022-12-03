eff = instance_create_depth(x, y, depth, Fading_Pixel_Obj);
eff.image_blend = c_aqua;
eff.image_alpha = 0.5;
eff.fade = 0.02;
eff.x += random_range(-12, 12);
eff.y += random_range(-12, 12);
eff.image_xscale += random_range(1, 4);
eff.image_yscale += random_range(1, 4);

storedDir = direction;
direction = point_direction(x, y, Player_Parent.x, Player_Parent.y);

// Check if attack change direction and should be able to hit enemies again by creating new projectile.
// Since one projectile cant dmg enemies multiple times in my coding....

// angle diff method can become negative... BUT NOT ANYMORE
diff = angle_difference(storedDir, direction);
if(diff < 0){
	diff = -diff;
}

if(diff > 80){
	att = instance_create_depth(x, y, depth, Shaman_Attack_Return_Obj);
	att.speed = speed;
	att.DMG = DMG;
	att.direction = point_direction(x, y, Player_Parent.x, Player_Parent.y);
	
	instance_destroy();
}

speed += 1/60;