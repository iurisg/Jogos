/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

other.vida -= obj_Akim.dano;

var _dir = point_direction(obj_Akim.x, obj_Akim.y, other.x, other.y);
other.empurrar_dir = _dir;
other.empurrar_veloc = 20 
other.estado = scr_slime_hit;

other.alarm[1] = 5;
other.hit = true