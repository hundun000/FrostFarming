var draw_x=x-FRAME_WIDTH/2;
var draw_y=y-FRAME_HEIGHT*0.75;

//draw self
draw_sprite_part(spr_crops,0,growthStage*FRAME_WIDTH,m_cropType*FRAME_HEIGHT,
	FRAME_WIDTH,FRAME_HEIGHT,draw_x,draw_y);

//draw sparkle
if(sparkleFrame>=0){
	draw_sprite(spr_sparkle,sparkleFrame,x+2,y-10);
	sparkleFrame+=0.1;
	if(sparkleFrame>=sprite_get_number(spr_sparkle)){
		sparkleFrame=-1;
		alarm[ALARM_INDEX_SPARKLE]=random_range(4,5)*GAME_FPS;
	}
}

draw_rectangle_color(bbox_left,bbox_top,bbox_right,bbox_bottom,c_yellow,c_yellow,c_yellow,c_yellow,true);
draw_rectangle_color(x-1,y-1,x+1,y+1,c_red,c_red,c_red,c_red,false);