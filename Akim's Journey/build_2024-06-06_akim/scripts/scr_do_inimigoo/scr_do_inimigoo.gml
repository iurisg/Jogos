// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_inimigo_colisao(){
	
	
if hveloc !=0 or vveloc !=0{
	veloc=0.2

}



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
	
function scr_inimigo_visao(){
	if distance_to_object(obj_Akim) <= vis{
		estado = scr_inimigo_perseguindo
	}
	
}


function scr_inimigo_escolher_estado(){
	scr_inimigo_visao();
	
prox_estado = choose(scr_inimigo_parado,scr_inimigo_andando);

	if prox_estado == scr_inimigo_andando{
		
		estado = scr_inimigo_andando;
		estado = choose(scr_inimigo_andando,scr_inimigo_parado)
		dest_x = irandom_range(0,room_width)
		dest_y = irandom_range(0,room_height)

} if prox_estado == scr_inimigo_parado(){
		estado = scr_inimigo_parado
	}
}



function scr_inimigo_andando(){
	
	scr_inimigo_visao();
		scr_inimigo_colisao()
	
	
	
	image_speed = 1
	
	if distance_to_point(dest_x,dest_y) > veloc {
	var _dir = point_direction(x,y,dest_x,dest_y)
	hveloc = lengthdir_x(veloc, _dir)
	vveloc = lengthdir_y(veloc, _dir)
	

	
	}else{
		x=dest_x
		y=dest_y
	}
}

function scr_inimigo_parado(){
	scr_inimigo_visao();
	image_speed = 0.5;
	
}

function scr_inimigo_perseguindo(){
scr_inimigo_colisao()
 image_speed = 1.5
 
 dest_x = obj_Akim.x
 dest_y = obj_Akim.y
 
 var _dir = point_direction(x,y,dest_x,dest_y);
 
	hveloc = lengthdir_x(veloc_perseg, _dir)
	vveloc = lengthdir_y(veloc_perseg, _dir)
	
	if distance_to_object(obj_Akim) >= sem_vis{
		estado = scr_inimigo_escolher_estado;
		alarm[0] = irandom_range(120,240)
		depth = -y
 }

}

function scr_slime_hit(){
	empurrar_veloc = lerp(empurrar_veloc, 0, 0.2)
	
	hveloc = lengthdir_x(empurrar_veloc, empurrar_dir);
	vveloc = lengthdir_y(empurrar_veloc, empurrar_dir);
	
	scr_inimigo_colisao();
}