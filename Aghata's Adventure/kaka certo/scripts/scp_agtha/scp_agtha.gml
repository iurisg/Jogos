// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scp_agtha(){
#region//controles
key_rigth= keyboard_check(ord("D"))//direita
key_left= keyboard_check(ord("A"))//esquerda
key_down= keyboard_check(ord("S"))//aguachar
key_jump= keyboard_check(vk_space)//pula
key_atack= keyboard_check(ord("F"))//ataque
key_restart= keyboard_check(ord("R"))
#endregion


 #region//movimentação
var move = key_rigth - key_left

hspd = move*spd

vspd = vspd+grv
 

if (hspd!=0) image_xscale = sign(hspd)

#endregion
 
 #region//colisão horizontal
 if place_meeting(x+hspd,y,obj_muro)
 {
	 while(!place_meeting(x+sign(hspd),y,obj_muro))
	 {
		 x=x+sign(hspd)
	 }
	 hspd=0
 }
	 x = x + hspd
	 
	 
 #endregion
 
  #region//colisão vertical
 if place_meeting(x,y+vspd,obj_muro)
 {
	 while(!place_meeting(x,y+sign(vspd),obj_muro))
	 {
		 y=y+sign(vspd)
	 }
	 vspd=0 
 }
	 y = y + vspd
	  
	 
 #endregion
 
 
       
	   
//pulo

if place_meeting(x,y+1,obj_muro) and key_jump
{
	vspd -=16;
	
}

//
if (hspd !=0)
{
	sprite_index = spr_correr
}
else
{
	sprite_index = spr_parado
}

if (vspd<0)
{
	sprite_index = spr_pulo
}
if (vspd>0)
{
	sprite_index = spr_cair
	//dano no inimigo
	var inimigo_ = instance_place(x,y + 1, obj_esqueleto7)
	
	if(inimigo_)
	{
		vspd-=10
		//dano levado o inimigo
	    inimigo_.dano =true;
		
	}	
}
}