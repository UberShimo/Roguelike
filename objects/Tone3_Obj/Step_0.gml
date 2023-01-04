eff = instance_create_depth(x, y, depth, Tone_Eff_Obj);
eff.image_xscale = image_xscale;
eff.image_yscale = image_yscale;
eff.image_angle = direction;
eff.image_alpha = image_alpha;
eff.image_blend = image_blend;

image_angle = direction;
direction += curve;
curve = curve*0.98;