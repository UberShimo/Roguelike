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
repeat(1){
	instance_create_depth(x+xGrid*irandom_range(1, 7), y+yGrid*irandom_range(1, 7), 0, Wall1_Obj);
}