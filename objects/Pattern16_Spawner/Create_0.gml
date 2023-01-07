//|  |  |  |  |  |  |  |--|
//|  |??|  |  |  |??|  |--|
//|  |  |  |  |  |  |  |--|
//|  |  |  |??|  |  |  |--|
//|  |  |  |  |  |  |  |--|
//|  |??|  |  |  |??|  |--|
//|  |  |  |  |  |  |  |--|
//|--|--|--|--|--|--|--|--|
// 1  2  3  4  5  6  7  8  

// row and column 8 is never used

event_inherited();

// RNJESUS spawns da walls!
repeat(8){
	xRNG = irandom_range(1, 7);
	yRNG = irandom_range(1, 7);
	while(xRNG >= 3 && xRNG <= 5 && yRNG >= 3 && yRNG <= 5){
		xRNG = irandom_range(1, 7);
		yRNG = irandom_range(1, 7);
	}
	instance_create_depth(x+xGrid*xRNG, y+yGrid*yRNG, 0, Wall1_Obj);
}