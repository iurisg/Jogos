/// @description Insert description here
script_execute(estado);
entrar = keyboard_check_pressed(ord("F"))

if keyboard_check(vk_escape){
	game_end();	
}



if distance_to_object(obj_par_professores) <=10 and global.vida > 1{
if keyboard_check_pressed(ord("F")) and global.dialogo == false{
	var _npc = instance_nearest(x,y,obj_par_professores);
	var _dialogo = instance_create_layer(x,y,"dialogos", obj_perguntas);
	_dialogo.npc_nome = _npc.nome;
	global.dialogo = true
 }
 
}
if global.dialogo=true{
	estado=scr_parado	
}else{
	estado=scr_junin_andando
}

if distance_to_object(obj_sala1) <= 10 and entrar{
global.entrando1=true
}
if distance_to_object(obj_sala2) <= 10 and entrar{
global.entrando2=true
}if distance_to_object(obj_sala3) <= 10 and entrar{
global.entrando3=true
}if distance_to_object(obj_sala4) <= 10 and entrar{
global.entrando4=true
}if distance_to_object(obj_sala5) <= 10 and entrar{
global.entrando5=true
}if distance_to_object(obj_sala6) <= 10 and entrar{
global.entrando9=true
}if distance_to_object(obj_sala7) <= 10 and entrar{
global.entrando10=true
}if distance_to_object(obj_sala8) <= 10 and entrar{
global.entrando11=true
}if distance_to_object(obj_s_subindo) <= 10 and entrar{
global.entrando6=true
}if distance_to_object(obj_s_descendo) <= 10 and entrar{
global.entrando7=true
}if distance_to_object(obj_s_info) <= 10 and entrar{
global.entrando8=true
}if distance_to_object(obj_salalobby) <= 10 and entrar{
global.saindo=true
}

if global.vida==0{
spin ++	
if spin == 1{
	global.dialogo=false
instance_destroy(obj_perguntas)
spin++

}
}

if keyboard_check_pressed(ord("Q")){
	global.vida=0
}

