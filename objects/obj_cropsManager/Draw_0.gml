/// @description Insert description here
// You can write your code in this editor
if(debug_isPlanting){
		
	//draw to grid center
	var draw_x=(debug_curX div UNIT)*UNIT+UNIT/2;
	var draw_y=(debug_curY div UNIT)*UNIT+UNIT/2;	
	
	var rec_color;
	if(!canPlantNewCrop(draw_x,draw_y))
		rec_color=c_red;
	else
		rec_color=c_lime;
	
	draw_rectangle_color(draw_x-UNIT/2,draw_y-UNIT/2,draw_x+UNIT/2,draw_y+UNIT/2,
		rec_color,rec_color,rec_color,rec_color,true);
	
	draw_sprite(spr_harvest,debug_curCrop,draw_x,draw_y);
	
}