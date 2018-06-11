///@argument0 room
enum RoomType{
	HOME,
	TOWN,
	TOWN_HOUSE,
	FARM,
	WILD
	
}

switch(argument0){
	case rm_farm:	return RoomType.FARM;
	case rm_house:	return RoomType.HOME;	
	default:		return RoomType.WILD;	
	
	
}