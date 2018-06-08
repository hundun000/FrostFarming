if(debug){
	
	//draw grid line
	draw_set_alpha(0.4);
	
	var xx=0;
	var c=room_width div UNIT;
	repeat(c){
		draw_line_color(xx,0,xx,room_height,c_black,c_black);	
		xx+=UNIT;
	}
	
	var yy=0;
	var r=room_height div UNIT;
	repeat(r){
		draw_line_color(0,yy,room_width,yy,c_black,c_black);
		yy+=UNIT;
	}
	
	draw_set_alpha(1);
}