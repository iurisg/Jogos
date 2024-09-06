/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

tamanho = sprite_get_width(spr_tansicao)

cols = ceil(room_width / tamanho);

lins = ceil(room_height / tamanho);

img = 150

img_veloc = sprite_get_speed(spr_tansicao) / game_get_speed(gamespeed_fps)

img_num = sprite_get_number(spr_tansicao) - 1




entrando = true
