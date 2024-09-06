if (keyboard_check_pressed(ord("W"))){
	index--;
}if (keyboard_check_pressed(ord("S"))){
	index++;
}

if (index>max_op-1){
	index=0;
}if (index<0){
	index=2;
}

if (keyboard_check_pressed(vk_enter)){
	if(index = 0){
		room_goto_next();
	}if(index = 2){
		game_end()
	}
}