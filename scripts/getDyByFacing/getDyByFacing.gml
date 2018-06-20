///@arg directionType
var directionType=argument0;

switch(directionType){
	case DirectionType.UP:
		return -1;
	case DirectionType.DOWN:
		return 1;	
	default:
		return 0;	
}