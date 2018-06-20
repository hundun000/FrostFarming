///@arg check_grid_x
///@arg check_grid_y
///@arg player_grid_x
///@arg player_grid_y
///@arg player_facing
var check_grid_x=argument0;
var check_grid_y=argument1;
var player_grid_x=argument2;
var player_grid_y=argument3;
var player_facing=argument4;

switch(player_facing){
	case DirectionType.UP:
		return (  (check_grid_y==player_grid_y-1&&abs(check_grid_x-player_grid_x)<=1) //up,up-left,up-right
		   ||(check_grid_y==player_grid_y&&check_grid_x==player_grid_x) )//playerPos
	case DirectionType.DOWN:
		return (  (check_grid_y==player_grid_y+1&&abs(check_grid_x-player_grid_x)<=1) //down,down-left,down-right
		   ||(check_grid_y==player_grid_y&&check_grid_x==player_grid_x) )//playerPos		
	case DirectionType.LEFT:
		return (  (check_grid_x==player_grid_x-1&&abs(check_grid_y-player_grid_y)<=1) //left,left-up,left-down
		   ||(check_grid_y==player_grid_y&&check_grid_x==player_grid_x) )//playerPos
	case DirectionType.RIGHT:
		return (  (check_grid_x==player_grid_x+1&&abs(check_grid_y-player_grid_y)<=1) //right,right-up,right-down
		   ||(check_grid_y==player_grid_y&&check_grid_x==player_grid_x) )//playerPos				
	
}



