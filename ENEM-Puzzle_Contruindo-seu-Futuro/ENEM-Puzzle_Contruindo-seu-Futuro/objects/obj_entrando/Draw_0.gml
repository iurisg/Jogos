/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
{
 for (var _i = 0; _i < lins ; _i++)
 {
	for (var _j = 0; _j < cols; _j++)
	 {
		
		var _img = min(max(0, img - _j),img_num);
	
		draw_sprite_ext(spr_tansicao,_img,_j*tamanho,_i*tamanho,1,1,0,c_black,1)
	 }
 }
}
depth -= y