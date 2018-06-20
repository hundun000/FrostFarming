///argument0 role
var role=argument0;
var facingDirection;

switch(role.m_y_frame){
	case Y_FRAME_MOVE_UP:
		return DirectionType.UP;
	case Y_FRAME_MOVE_DOWN:
		return DirectionType.DOWN;
	case Y_FRAME_MOVE_LEFT:
		return DirectionType.LEFT;
	case Y_FRAME_MOVE_RIGHT:
		return DirectionType.RIGHT;
	default:
		return DirectionType.IDLE;
}
