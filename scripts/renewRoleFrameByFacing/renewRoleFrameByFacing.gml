///argument0 role
var role=argument0;

switch(role.movingDirectionType){
	case DirectionType.UP:
		role.m_y_frame=Y_FRAME_MOVE_UP;
		break;
	case DirectionType.DOWN:
		role.m_y_frame=Y_FRAME_MOVE_DOWN;
		break;	
	case DirectionType.LEFT:
		role.m_y_frame=Y_FRAME_MOVE_LEFT;
		break;	
	case DirectionType.RIGHT:
		role.m_y_frame=Y_FRAME_MOVE_RIGHT;
		break;	
	case DirectionType.IDLE:
		role.m_x_frame=0;
		break;		
}