/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if other.tomar_dano==true{
var _dir = point_direction(x,y,other.x, other.y)

with (other){
	empurrar_dir = _dir;
	estado = scr_akim_hit
	alarm[0] = 10
	alarm[1] = 180
	tomar_dano = false
	global.vida -= 10
	}
}
	