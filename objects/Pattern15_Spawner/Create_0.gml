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
repeat(3){
	xRNG = irandom_range(1, 7);
	yRNG = irandom_range(1, 7);
	while(xRNG == 4 && yRNG == 4){
		xRNG = irandom_range(1, 7);
		yRNG = irandom_range(1, 7);
	}
	instance_create_depth(x+xGrid*xRNG, y+yGrid*yRNG, 0, Wall1_Obj);
}