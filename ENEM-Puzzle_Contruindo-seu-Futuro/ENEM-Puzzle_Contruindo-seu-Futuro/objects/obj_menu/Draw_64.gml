

var dist = 50;
var gui_largura = display_get_gui_width();
var gui_altura = display_get_gui_height();
var x1 = gui_largura/2;
var y1 = gui_altura/2;

for(var i=0; i<max_op; i++){
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	
	if(index == i){
		draw_set_color(c_aqua);
	}else{
		draw_set_color(c_white);
	}
	draw_text(x1, y1 + (dist*i), opcoes[i]);
}


