/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
draw_self()
var check = keyboard_check(ord("Z"))
if distance_to_object(obj_Akim) <= 5
{
	draw_sprite(spr_z,0,x,y-10)
	
}
if distance_to_object(obj_Akim) <= 5 and check and global.moeda>=3{
	draw_sprite(spr_dialogo,0,x,y-10)	
	global.vida=100
	global.moeda-=3
}
