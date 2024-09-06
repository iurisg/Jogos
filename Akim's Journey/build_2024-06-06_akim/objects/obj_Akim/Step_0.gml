/// @description Insert description here
script_execute(estado);
if global.vida > max_vida{
	vida=100
}
depth=-y

if keyboard_check(vk_escape){
	game_end();	
}