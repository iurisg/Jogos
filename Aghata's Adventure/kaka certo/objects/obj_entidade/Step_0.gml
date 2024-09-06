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