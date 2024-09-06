/// @description quase disisytindo
// Você pode escrever seu código neste editor
cutscene = true

if cutscene{
if distance_to_object(obj_par_professores) <=10{
if global.dialogo == false{
	var _npc = instance_nearest(x,y,obj_par_professores);
	var _dialogo = instance_create_layer(x,y,"dialogos", obj_perguntas);
	_dialogo.npc_nome = _npc.nome;
	global.dialogo = true
		}
	}
 }
 cutscene = false
 