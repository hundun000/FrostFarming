if(tansitionAlpha>=0){
	
	if(room!=spawnRoom){
		tansitionAlpha+=0.1;
		if(tansitionAlpha>=1){	
			global.thisPlayer.x=spawnX;
			global.thisPlayer.y=spawnY;
			global.thisPlayer.m_facing=spawnFacing;
			renewRoleFrameByFacing(global.thisPlayer);
			room_goto(spawnRoom);
		}
	}
	else{
		tansitionAlpha-=0.1;
	}
	
	draw_set_alpha(tansitionAlpha);
	draw_rectangle_color(0,0,GUI_WIDTH,GUI_HEIGHT,c_black,c_black,c_black,c_black,false);
	draw_set_alpha(1);
}
