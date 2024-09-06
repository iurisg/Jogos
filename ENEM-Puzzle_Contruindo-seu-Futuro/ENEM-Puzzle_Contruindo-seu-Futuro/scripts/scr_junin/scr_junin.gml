 // Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

global.quest=0
global.vida = 5
function scr_junin_colisao(){
if place_meeting(x + hveloc ,y,obj_muro){
	while !place_meeting(x+sign(hveloc), y, obj_muro){
		x += sign(hveloc)
	}
	hveloc = 0
	
}

x += hveloc



if place_meeting(x ,y + vveloc,obj_muro){
	while !place_meeting(x, y + sign(vveloc), obj_muro){
		y += sign(vveloc)
	}
	vveloc = 0
	
}

y += vveloc
	
}

function scr_junin_andando(){
	//movimentação
	 scr_junin_colisao()
cima = keyboard_check(ord("W"))
esquerda = keyboard_check(ord("A"))
baixo = keyboard_check(ord("S"))
direita = keyboard_check(ord("D"))

hveloc = (direita-esquerda) 
vveloc = (baixo - cima)

veloc_dir = point_direction(x,y,x + hveloc, y + vveloc)

if hveloc !=0 or vveloc !=0{
	veloc=3
}else{
	veloc=0
	sprite_index = spr_parado_baixo
}

hveloc = lengthdir_x(veloc, veloc_dir);
vveloc = lengthdir_y(veloc, veloc_dir);


 
//mudar sprites

// dir = floor((point_direction(x,y,mouse_x,mouse_y)+ 45)/90);


/*
else{
switch dir{
	default:
	sprite_index = spr_andando_direita
	break;
	case 1:
	sprite_index = spr_andando_cima
	break;
	case 2:
	sprite_index = spr_andando_esquerda
	break;
	case 3:
	sprite_index = spr_andando_baixo
	break;
 }
}*/


if (vveloc > 0)
{
	sprite_index = spr_andando_baixo
} 
if (vveloc < 0) 
{
	sprite_index = spr_andando_cima
}

if (hveloc < 0) 
{
	sprite_index = spr_andando_esquerda
}

if (hveloc > 0) 
{
	sprite_index = spr_andando_direita
}


function scr_parado(){}

}
if global.quest==2{
	global.vida++
	
}

