enum INFOS{
	TEXTO,
	RETRATO,
	LADO,
	NOME
	
}


global.npc_nome = "";
texto_grid = ds_grid_create(4,0);
pagina = 0

op[0] = "";
op_resposta[0] = "";
op_num = 0;
op_selecionado = 0;
op_draw = false

inicializar = false;
op_selecionada = 0

caractere = 0
alarm[0] = 1
morri = false