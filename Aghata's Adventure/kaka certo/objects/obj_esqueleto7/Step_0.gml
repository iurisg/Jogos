vspd = vspd+grv

if (hspd!=0) image_xscale = sign(hspd) 

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
 
 #region //se ele ta no chão e andar
 
var chao_ = place_meeting(x,y+1,obj_muro)

#endregion

if distance_to_object(Obj_Agtha)<distance and chao_
{
	vir = sign(Obj_Agtha.x-x)
	hspd=vir*0.8
	sprite_index = spr_esqueleto_andar
}

if distance_to_object(Obj_Agtha)<=5 and chao_
{
	hspd=0
	sprite_index = spr_esqueleto_ataque
	
}

 //dano levado
 

if(dano)
{
	sprite_index = spr_esqueleto_dano
	hspd=0

	
}

//morto

if dano && hp==1
{
	sprite_index = spr_teste
	
	alarm[0]=360
	
}
if sprite_index==spr_teste 
{
	image_alpha -= 0.01
}
if image_alpha<=0
{
	instance_destroy()
}
 var danoc_ = image_index==7 and sprite_index==spr_esqueleto_ataque
if danoc_
{
	global.vida1--;
	
}
