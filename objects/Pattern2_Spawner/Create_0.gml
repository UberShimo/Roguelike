//|  |  |  |  |  |  |  |--|
//|  |XX|XX|XX|XX|XX|  |--|
//|  |  |  |  |  |  |  |--|
//|  |  |  |--|  |  |  |--|
//|  |  |  |  |  |  |  |--|
//|  |XX|XX|XX|XX|XX|  |--|
//|  |  |  |  |  |  |  |--|
//|--|--|--|--|--|--|--|--|
// 1  2  3  4  5  6  7  8  

// row and column 8 is never used

event_inherited();

// Spawn da walls!
instance_create_depth(x+xGrid*2, y+yGrid*2, 0, Wall1_Obj);
instance_create_depth(x+xGrid*3, y+yGrid*2, 0, Wall1_Obj);
instance_create_depth(x+xGrid*4, y+yGrid*2, 0, Wall1_Obj);
instance_create_depth(x+xGrid*5, y+yGrid*2, 0, Wall1_Obj);
instance_create_depth(x+xGrid*6, y+yGrid*2, 0, Wall1_Obj);
instance_create_depth(x+xGrid*2, y+yGrid*6, 0, Wall1_Obj);
instance_create_depth(x+xGrid*3, y+yGrid*6, 0, Wall1_Obj);
instance_create_depth(x+xGrid*4, y+yGrid*6, 0, Wall1_Obj);
instance_create_depth(x+xGrid*5, y+yGrid*6, 0, Wall1_Obj);
instance_create_depth(x+xGrid*6, y+yGrid*6, 0, Wall1_Obj);