alarm[1]=1
if distance_to_object(obj_par_professores) <=10 and global.vida ==0{
if global.dialogo == false{
	var _npc = instance_nearest(x,y,obj_par_professores);
	var _dialogo = instance_create_layer(x,y,"dialogos", obj_perguntas);
	_dialogo.npc_nome = _npc.nome;
	global.dialogo = true
 }
 
}