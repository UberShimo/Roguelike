eff = instance_create_depth(x, y, depth, Toolist_Attack_Effect);
eff.image_angle = image_angle;
eff.image_alpha = 0.2;

image_angle += rotationSpeed;
rotationSpeed += 1;

velocity += 0.25;

// The real attack dmg comes here
DMG = initialDMG * velocity * 2;

// Grow right
if(image_xscale < 1){
	image_xscale += 0.01;
	image_yscale += 0.01;
}