if(grabbed){
	grabbed = false;
	
	volume = (x - Volume_Slider_Obj.x) / 64;
	
	
	ini_open("save.ini");
	ini_write_real("save", "volume", volume);
	audio_set_master_gain(0, volume);
	ini_close();
}