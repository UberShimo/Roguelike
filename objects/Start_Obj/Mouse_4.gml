BlackScreen_Controller.fade = 0.02;

difficulty = 1;

repeat(level-1){ // 10% inc per level
	difficulty *= 1.1;
}

global.difficultyScaling = difficulty; 