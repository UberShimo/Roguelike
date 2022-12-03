if(firstHit == noone){
	firstHit = other;
}
else if(secondHit == noone && other != firstHit){
	secondHit = other;
}
else if(other != firstHit && other != secondHit){
	instance_destroy();
}