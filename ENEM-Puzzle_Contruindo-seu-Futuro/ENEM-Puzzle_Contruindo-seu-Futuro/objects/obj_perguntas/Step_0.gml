if inicializar == false{
	scr_textos();
	inicializar = true
}


	if caractere < string_length(texto_grid[# INFOS.TEXTO, pagina]){
		if keyboard_check_pressed(ord("F")){
		caractere = string_length(texto_grid[# INFOS.TEXTO, pagina])
		}
	}else{
	if pagina < ds_grid_height(texto_grid)-1{
		if keyboard_check_pressed(ord("F")){
		alarm[0]=1;
		caractere = 0;
		pagina++;
		}
	}else{
		if op_num !=0{
			op_draw = true
		}else{
			if keyboard_check_pressed(ord("F")){
			global.dialogo=false
			instance_destroy();
			
			}
		}
	}
}