///@argument0 check_x
///@argument1 check_y
var check_x=argument0;
var check_y=argument1;
var manager=global.thisGame.cropsManager;

if(!position_meeting(check_x,check_y,obj_soil)){
	//show_debug_message("There is not soil.");
	return false;
}

if(manager.gridsOfSoil[# check_x div UNIT,check_y div UNIT]!=0){
	//show_debug_message("There is already plant.");
	return false;
}

return true;