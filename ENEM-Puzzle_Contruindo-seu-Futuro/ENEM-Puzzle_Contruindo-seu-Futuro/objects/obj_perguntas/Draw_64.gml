/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if inicializar = true{
var _guil = display_get_gui_width();
var _guia = display_get_gui_height();

var _xx = 0;
var _yy = _guia -200;
var _c = c_black
var _sprite = texto_grid[# INFOS.RETRATO, pagina]
var _texto = string_copy(texto_grid[# INFOS.TEXTO, pagina], 0, caractere)
draw_set_font(fnt_dialogo);

if texto_grid[# INFOS.LADO, pagina]==0{
draw_sprite_ext(spr_caixa_dilogo ,0, _xx + 200,_yy, 200, 15,0,c_black,1);

draw_text(_xx + 216, _yy -32, texto_grid[# INFOS.NOME, pagina]);
draw_text_ext(_xx + 232, _yy + 32, _texto, 32, _guil - 264)

draw_sprite_ext(_sprite, 0, 100, _guia, 3, 3, 0, c_white, 1);


}if texto_grid[# INFOS.LADO, pagina]==1{
draw_sprite_ext(spr_caixa_dilogo ,0, _xx,_yy, 200, 15,0,c_black,1);


draw_text_ext(_xx + 32, _yy + 32, _texto, 32, _guil - 264)


}


if op_draw == true {
	var _opx = _xx +250;
	var _opy = _yy - 150;
	var _opsep = 48
	var _opborda = 6;
	
	
	op_selecionada += keyboard_check_pressed(ord("W")) - keyboard_check_pressed(ord("S"))
	op_selecionada = clamp(op_selecionada, 0, op_num-1);
	
	for (var _i = 0; _i < op_num; _i++){
		var _stringw = string_width(op[_i])
		draw_sprite_ext(spr_caixa_dilogo,0,_opx, _opy - (_opsep * _i),(_stringw + _opborda*2.5)/25, 2, 0,c_black,1)
		draw_text(_opx +_opborda, _opy - (_opsep * _i),op[_i])
	
		if op_selecionada == _i {
		
		draw_sprite(spr_op_seletor,0,_opx -30, _opy - (_opsep * _i)+ 8)
			
			}
		}
		if keyboard_check_pressed(ord("F")){
		var _dialogo = instance_create_layer(x,y,"dialogos", obj_perguntas);
		_dialogo.npc_nome = op_resposta[op_selecionada];	
		
		instance_destroy()
			}
		}
	}

