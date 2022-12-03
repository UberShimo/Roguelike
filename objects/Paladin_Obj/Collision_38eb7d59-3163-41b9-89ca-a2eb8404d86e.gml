
// Reduce dmg taken if hit from front
impactDirection = point_direction(x, y, other.x, other.y);
angleDiff = angle_difference(direction, impactDirection);

if(angleDiff > -90 && angleDiff < 90){
	other.DMG = other.DMG / 2;
}

event_inherited();
