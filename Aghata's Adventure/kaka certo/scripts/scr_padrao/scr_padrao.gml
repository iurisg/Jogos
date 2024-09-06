function scr_personagem_colisao()
{
vspd = vspd+grv
#region conlição vertical
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
}
#endregion


function scr_padrao(){
#region controle
key_jump = keyboard_check(vk_space)
direita = keyboard_check(ord("D"))
esquerda = keyboard_check(ord("A"))
restart = keyboard_check(ord("R"))

#endregion

#region movimeto x/y

hspd = (direita - esquerda)*spd

vspd = vspd+grv

if place_meeting(x,y+1,obj_muro) and key_jump
{
vspd -=18;

}
#endregion

scr_personagem_colisao()

#region animação

if (hspd!=0) image_xscale = sign(hspd)
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

}

#endregion


//Final da Monvimetação
//dash
if mouse_check_button_pressed(mb_right) and estamina >= 20
{
estamina-=20
alarm[1]=30
dash_dir = point_direction(x, y, mouse_x, mouse_y)
estado = scr_dash
}

//ataque
if mouse_check_button_pressed(mb_left)
{
alarm[2]=8
estado = scr_ataque
}
}

function scr_ataque()
{
if (hspd!=0) image_xscale = sign(hspd)
sprite_index = spr_ataque
scr_personagem_colisao()

}

function scr_dash()
{
sprite_index = spr_correr
hspd = lengthdir_x(dash_spd, dash_dir)

scr_personagem_colisao()

var _inst = instance_create_layer(x, y, "instances", obj_dash)
_inst.sprite_index = sprite_index
}

function scr_ataque1(){
var _dir = point_direction(x, y, mouse_x, mouse_y)
var _xx = lengthdir_x(2, _dir)


var _inst = instance_create_layer(x+_xx, y-8, "instances", obj_tiro)
_inst.direction = _dir
_inst.image_angle = _dir
_inst.speed = 6

scr_personagem_colisao()

estado = scr_padrao
}

