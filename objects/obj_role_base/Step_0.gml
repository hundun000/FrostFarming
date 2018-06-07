
//---------- set speed --------
if(input_walk xor input_run)
	m_speed=input_walk*WALK_SPEED+input_run*RUN_SPEED;
else
	m_speed=DEFAULT_SPEED;
	

//---------- set movement ---------


move_x=(input_right-input_left)*m_speed;
move_y=(input_down-input_up)*m_speed;

if(move_x!=0){
	switch(sign(move_x)){
		case 1: m_facing=DirectionType.RIGHT; break;	
		case -1: m_facing=DirectionType.LEFT; break;	
	}
}
else if(move_y!=0){
	switch(sign(move_y)){
		case 1: m_facing=DirectionType.DOWN; break;	
		case -1: m_facing=DirectionType.UP; break;	
	}
}
else
	m_facing=DirectionType.IDLE;



//---------- collision check ,change movement -------
while(move_x!=0&&place_meeting(x+move_x,y,obj_collision))
	move_x=sign(move_x)*(abs(move_x)-1);
while(move_y!=0&&place_meeting(x,y+move_y,obj_collision))
	move_y=sign(move_y)*(abs(move_y)-1);


//---------- handle movement -------
x+=move_x;
y+=move_y;
