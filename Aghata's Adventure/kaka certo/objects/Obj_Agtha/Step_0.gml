

//stars
estamina = clamp(estamina, 0, estamina_max)

//estado
script_execute(estado)

if global.vida1<=0
{
	image_speed=0;
	image_index=5;
	sprite_index=spr_morte
	hspd=0
	vspd=0
	
}
if restart
{
	game_restart()
}