// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_akim_colisao(){
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

function scr_personagem_andando(){
	//movimentação
	 scr_akim_colisao()
cima = keyboard_check(ord("W"))
esquerda = keyboard_check(ord("A"))
baixo = keyboard_check(ord("S"))
direita = keyboard_check(ord("D"))

hveloc = (direita-esquerda) 
vveloc = (baixo - cima)

veloc_dir = point_direction(x,y,x + hveloc, y + vveloc)

if hveloc !=0 or vveloc !=0{
	veloc=2
}else{
	veloc=0
}

hveloc = lengthdir_x(veloc, veloc_dir);
vveloc = lengthdir_y(veloc,veloc_dir);


 
//mudar sprites

dir = floor((point_direction(x,y,mouse_x,mouse_y)+ 45)/90);

if hveloc == 0 and vveloc ==0{
switch dir{
	default:
	sprite_index = spr_personagem_parado_direita
	break;
	case 1:
	sprite_index = spr_personagem_parado_cima
	break;
	case 2:
	sprite_index = spr_personagem_parado_esquerda
	break;
	case 3:
	sprite_index = spr_personagem_parado_baixo
	break;
 }
}
/*
else{
switch dir{
	default:
	sprite_index = spr_personagem_correndo_direita_strip6
	break;
	case 1:
	sprite_index = spr_personagem_correndo_cima_strip6
	break;
	case 2:
	sprite_index = spr_personagem_correndo_esquerda_strip6
	break;
	case 3:
	sprite_index = spr_akim_andando_bixo
	break;
 }
}
*/

if (vveloc>0) {
	sprite_index = spr_personagem_andando_baixo
} else if (vveloc<0) {
	sprite_index = spr_personagem_andando_cima
}

if (hveloc > 0) {
	sprite_index = spr_personagem_andando_direita
}

if (hveloc < 0) {
	sprite_index = spr_personagem_andando_esquerda
}


if mouse_check_button_pressed(mb_left){
	image_index = 0
	
	switch dir{
		default:
		sprite_index = spr_personagem_atacando_direita
		
		break;
		case 1:
		sprite_index = spr_personagem_atacando_cima
		
		break;
		case 2:
		sprite_index = spr_personagem_atacando_esquerda
		
		break;
		case 3:
		sprite_index = spr_personagem_atacando_baixo
		
		break;
	}
		
	estado = scr_akim_atacando
}
if global.vida==0
{
	estado=scr_personagem_morreu
	alarm[2]=1
}
}

	

function scr_akim_atacando(){
	if image_index >= 1{
	if atacar == false{
	switch dir{
			default:
		instance_create_layer(x + 10, y, "Instances", obj_akim_hitbox)
		
		break;
		case 1:
		instance_create_layer(x , y - 10, "Instances", obj_akim_hitbox)
		
		break;
		case 2:
		instance_create_layer(x - 10, y, "Instances", obj_akim_hitbox)
		
		break;
		case 3:
		instance_create_layer(x , y + 10, "Instances", obj_akim_hitbox)
		
		break;
		
					}
			atacar = true
				}
			}
		if fim_da_animacao(){
			estado = scr_personagem_andando
			atacar = false
		}
			
	  }

function scr_akim_hit(){
	if alarm[0] > 0{
	hveloc = lengthdir_x(3, empurrar_dir)
	vveloc = lengthdir_y(3, empurrar_dir)
	
	scr_akim_colisao()
	
	}else{
		estado = scr_personagem_andando;
	}
}

function scr_personagem_morreu(){
	
	
	
	sprite_index=spr_personagem_morrendo
	if global.vida<=0
	{
		sprite_index=spr_personagem_morrendo51
		estado = scr_personagem_morreu
	}
	
	
}