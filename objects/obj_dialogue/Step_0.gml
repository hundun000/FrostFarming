if(keyboard_check_pressed(ord("Z"))){
	if(curTextIndex<array_length_1d(DIALOGUE_TEXT)-1){
		curTextIndex++;
		curShowSubTextIndex=0;
	}
	else
		instance_destroy();
	
}
