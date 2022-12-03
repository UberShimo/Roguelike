eff = instance_create_depth(x, y, depth, Tone_Eff_Obj);
eff.image_xscale = image_xscale;
eff.image_yscale = image_yscale;
eff.image_alpha = image_alpha;
eff.image_blend = image_blend;

image_xscale += scaleChange;
image_yscale += scaleChange;

if(image_xscale < 0.25 || image_xscale > 0.5){
	scaleChange = -scaleChange;
}