///@arg directionType
var directionType=argument0;

switch(directionType){
	case DirectionType.LEFT:
		return -1;
	case DirectionType.RIGHT:
		return 1;	
	default:
		return 0;	
}