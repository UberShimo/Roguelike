if(HP < maxHP){
	HP += 2;
	if(decayAmount > originalDecayAmount){
		decayAmount -= originalDecayAmount;
	}
}