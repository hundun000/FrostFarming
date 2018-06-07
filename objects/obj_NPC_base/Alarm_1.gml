/// @description Insert description here
// You can write your code in this editor



input_up=false;
input_down=false;
input_left=false;
input_right=false;
input_walk=false;
input_run=false;

var isIdle=choose(true,false);
if(!isIdle){
	var dir=choose(DirectionType.UP,DirectionType.DOWN,DirectionType.LEFT,DirectionType.RIGHT);
	switch(dir){
		case DirectionType.LEFT:	
			//move_x=-m_speed; 
			input_left=true;
			break;
		case DirectionType.RIGHT:	
			//move_x=m_speed;
			input_right=true;
			break;
		case DirectionType.UP:
			//move_y=-m_speed;
			input_up=true;
			break;	
		case DirectionType.DOWN:	
			//move_y=m_speed; 
			input_down=true;
			break;	
	}
}

alarm[1]=random_range(2.5,4)*GAME_FPS;