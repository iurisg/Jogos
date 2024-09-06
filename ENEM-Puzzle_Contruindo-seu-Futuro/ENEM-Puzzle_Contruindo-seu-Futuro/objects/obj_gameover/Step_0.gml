/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if global.vida == 0{
image_alpha += 0.01	
}
if image_alpha==0.01{
		audio_stop_all()
}
if image_alpha==0.02{
		audio_play_sound(snd_morte,1,0)
}