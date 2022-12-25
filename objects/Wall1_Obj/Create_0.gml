depth = -y;

image_xscale = 2;
image_yscale = 2;

// Randomize a wall decoration
rng = irandom_range(1, 100);

wallDecor = 0;

// 4% chance for each decor
if(rng > 96){
	wallDecor = 1;
}
else if(rng > 92){
	wallDecor = 2;
}
else if(rng > 88){
	wallDecor = 3;
}
else if(rng > 84){
	wallDecor = 4;
}
else if(rng > 80){
	wallDecor = 5;
}
else if(rng > 76){
	wallDecor = 6;
}
else if(rng > 72){
	wallDecor = 7;
}