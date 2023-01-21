// Loose 20 % dmg when hitting enemy (happend before it deals dmg...)
if(ds_list_find_index(other.hitboxList, self) == -1){
	DMG *= 0.8;
}