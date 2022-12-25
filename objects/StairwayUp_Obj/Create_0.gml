depth = -y-14;

image_xscale = 2;
image_yscale = 2;

instance_create_depth(x, y, depth, StairwayRoof_Obj);
instance_create_depth(x-24, y+20, depth, Torch_Obj);
instance_create_depth(x+24, y+20, depth, Torch_Obj);