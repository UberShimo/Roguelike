if(other.HP > DMG){
	bolt = instance_create_depth(x, y, depth, Arbalist_Ability_Bolt_Stuck_Obj);
	bolt.image_angle = image_angle;
	bolt.poorBastard = other;
	bolt.xDiff = x - other.x;
	bolt.yDiff = y - other.y;
	instance_destroy();
}