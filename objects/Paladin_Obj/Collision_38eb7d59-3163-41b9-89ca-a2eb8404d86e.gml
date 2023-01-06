
// Reduce dmg taken if hit from front
impactDirection = point_direction(x, y, other.x, other.y);
angleDiff = angle_difference(direction, impactDirection);

if(angleDiff > -90 && angleDiff < 90){
	other.DMG = other.DMG / 2;
	// Effect
	repeat(6){
		eff = instance_create_depth(x, y, depth, Spark_Pixel_Obj);
		eff.direction = random_range(direction-90, direction+90);
		s = random_range(1, 4);
		eff.image_xscale *= s;
		eff.image_yscale *= s;
	}
	audio_play_sound(Click_Snd, 0, false);
}

event_inherited();
