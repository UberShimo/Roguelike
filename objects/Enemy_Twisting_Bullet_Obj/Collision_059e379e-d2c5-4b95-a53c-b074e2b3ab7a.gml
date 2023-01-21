if(!deflected){
	direction = point_direction(other.x, other.y, x, y);
	speed = speed*4;

	deflected = true;
	twist = 0;
}