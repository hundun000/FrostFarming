if(!isInsideHouse){
	draw_set_alpha(skyDarkness);
	draw_rectangle_color(0,0,GUI_WIDTH,GUI_HEIGHT,
		skyColor,skyColor,skyColor,skyColor,false);
	draw_set_alpha(1);
}


var c=c_yellow;
var yy=1;
draw_set_font(global.thisGame.FONT_TEXT_16);
draw_text_color(10,(yy++)*20,"sum:"+string(m_sumMinute),c,c,c,c,1);
draw_text_color(10,(yy++)*20,"tine:"+string(timeMinute)+":"+string(timeHour),c,c,c,c,1);
draw_text_color(10,(yy++)*20,"day:"+string(m_day),c,c,c,c,1);
draw_text_color(10,(yy++)*20,"season:"+string(m_season),c,c,c,c,1);
draw_text_color(10,(yy++)*20,"year:"+string(m_year),c,c,c,c,1);