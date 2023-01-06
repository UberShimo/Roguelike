/// @description Delayed sweetspot

sweetspot = instance_create_depth(x, y, depth, Heavyweight_Land_Obj);
sweetspot.DMG *= FO;
sweetspot.pushback = 0;
sweetspot.image_xscale = 0.2;
sweetspot.image_yscale = 0.2;
FO = 1; // Never forget