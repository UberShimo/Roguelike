//|XX|  |XX|  |XX|  |XX|--|
//|  |  |  |  |  |  |  |--|
//|XX|  |XX|  |XX|  |XX|--|
//|  |  |  |  |  |  |  |--|
//|XX|  |XX|  |XX|  |XX|--|
//|  |  |  |  |  |  |  |--|
//|XX|  |XX|  |XX|  |XX|--|
//|--|--|--|--|--|--|--|--|
// 1  2  3  4  5  6  7  8  

// row and column 8 is never used

event_inherited();

// Spawn da walls!
instance_create_depth(x+xGrid*1, y+yGrid*1, 0, Wall1_Obj);
instance_create_depth(x+xGrid*3, y+yGrid*1, 0, Wall1_Obj);
instance_create_depth(x+xGrid*5, y+yGrid*1, 0, Wall1_Obj);
instance_create_depth(x+xGrid*7, y+yGrid*1, 0, Wall1_Obj);
instance_create_depth(x+xGrid*1, y+yGrid*3, 0, Wall1_Obj);
instance_create_depth(x+xGrid*3, y+yGrid*3, 0, Wall1_Obj);
instance_create_depth(x+xGrid*5, y+yGrid*3, 0, Wall1_Obj);
instance_create_depth(x+xGrid*7, y+yGrid*3, 0, Wall1_Obj);
instance_create_depth(x+xGrid*1, y+yGrid*5, 0, Wall1_Obj);
instance_create_depth(x+xGrid*3, y+yGrid*5, 0, Wall1_Obj);
instance_create_depth(x+xGrid*5, y+yGrid*5, 0, Wall1_Obj);
instance_create_depth(x+xGrid*7, y+yGrid*5, 0, Wall1_Obj);
instance_create_depth(x+xGrid*1, y+yGrid*7, 0, Wall1_Obj);
instance_create_depth(x+xGrid*3, y+yGrid*7, 0, Wall1_Obj);
instance_create_depth(x+xGrid*5, y+yGrid*7, 0, Wall1_Obj);
instance_create_depth(x+xGrid*7, y+yGrid*7, 0, Wall1_Obj);