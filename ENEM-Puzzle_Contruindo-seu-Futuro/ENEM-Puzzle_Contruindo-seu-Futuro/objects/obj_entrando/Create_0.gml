/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor




tamanho = sprite_get_width(spr_tansicao)

cols = ceil(room_width / tamanho);

lins = ceil(room_height / tamanho);

img = 0

img_veloc = sprite_get_speed(spr_tansicao) / game_get_speed(gamespeed_fps)

img_num = sprite_get_number(spr_tansicao) - 1


global.entrando1 = false
global.entrando2 = false
global.entrando3 = false
global.entrando4 = false
global.entrando5 = false
global.entrando6 = false
global.entrando7 = false
global.entrando8 = false
global.entrando9 = false
global.entrando10 = false
global.entrando11 = false
global.entrando12 = false
global.saindo = false

entrar = keyboard_check_pressed(ord("Q"))




